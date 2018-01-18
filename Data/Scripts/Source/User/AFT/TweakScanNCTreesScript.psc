Scriptname AFT:TweakScanNCTreesScript extends Quest

; import AFT

Quest Property TweakScrapScanMaster Auto Const
FormList Property TweakNonConstructed_Trees Auto Const

GlobalVariable   Property pTweakSettlementSnap Auto Const

GlobalVariable   Property pTweakScanThreadsDone Auto
GlobalVariable[] Property ResultArray Auto
GlobalVariable   Property pTweakScrapAll Auto Const

Struct ComponentData
	int formid    = 0
	int mask    = 0
	int counts  = 0
	string name = ""
EndStruct

ComponentData[] Property ComponentLookup Auto

bool Function Trace(string asTextToPrint, int aiSeverity = 0) debugOnly
	string logName = "TweakScanNCTreesScript"
	debug.OpenUserLog(logName)
	RETURN debug.TraceUser(logName, asTextToPrint, aiSeverity)
EndFunction

Event OnInit()
	initialize_ResultArray()
	allocate_ComponentData()
	initialize_ComponentData()
	
	; PASTE python generated component data without form ids in initialize_ComponentData
	; Uncomment out this loop. Start up game and load mod. Then quit and copy code
	; WITH form ids from log file back into the initialize_ComponentData method
	; below. Recomment this loop. Walla...
	
		
	; string code = "\n"
	; int i = 0
	; while i < 40
		; code += "    ComponentLookup[" + i + "].formid = " + TweakNonConstructed_Trees.GetAt(i).GetFormID() + "\n"
		; code += "    ComponentLookup[" + i + "].mask = "   + ComponentLookup[i].mask + "\n"
		; code += "    ComponentLookup[" + i + "].counts = " + ComponentLookup[i].counts + "\n"
		; code += "    ComponentLookup[" + i + "].name = \"" + ComponentLookup[i].name + "\"\n"
		; i += 1
	; endWhile
	; Trace(code)
	
EndEvent

ObjectReference center
float radius

Function Scan(ObjectReference p_center, float p_radius)
	Trace("Scan Called, Starting Timer")
	center = p_center
	radius = p_radius 
	startTimer(0.0) ; Basically this is the same thing as FORK....
EndFunction

Event OnTimer(int aiTimerID)
	Trace("Timer Fired. Calling ScanHelper")
	ScanHelper()
EndEvent

Function ScanHelper()
	Trace("ScanHelper Called")
	
	ObjectReference[] results
	ObjectReference result
	ComponentData lookupResult
	
	Trace("Scanning...")
	results = center.FindAllReferencesOfType(TweakNonConstructed_Trees, radius)			
	int numresults = results.length
	
	Trace("Scanning Complete: [" + numresults + "] objects found")
	center = None	
	if (0 == numresults)
		pTweakScanThreadsDone.mod(-1.0)
		return
	endif
	
	; Tracking:
	int lookupsuccess     = 0
	int lookupindex       = 0
	int[] scrapdata = new int[31]	
	int i = 0
	while (i < 31)
		scrapdata[i] = 0
		i += 1
	endwhile
	
	ComponentData lookup
	
	; mask   : There are 31 component types. So we use a 32bit bitmask 
	;          to identify up to 5 components. (Max of 5)
	;          This bits correspond to the index of the formlist TweakScrapComponents.
	;          The formlist is optimized so that the most frequent components appear
	;          first. This helps minimize the number of mod operations we have to 
	;          perform to isolate the last bit. 
	int mask
	
	; counts : We store five 6 bit numbers (max value = 64) using the first 30
	;          bits of the 32 bit int. These correspond to the elements
	;          found in the mask from first to last...  
	int counts
	
	Form rbase	
	int bit
	int offset
	int rid
	int count
	bool keepgoing = true
	
	bool snapshot = (1.0 == pTweakSettlementSnap.GetValue())
	bool scrapall = (1.0 == pTweakScrapAll.Getvalue())
	Var[] params = new Var[10]
	AFT:TweakScrapScanScript ScrapScanMaster = TweakScrapScanMaster as AFT:TweakScrapScanScript
	
	i = 0
	while (i != numresults && keepgoing)
		result = results[i]
		if scrapall
			result.SetPosition(0,0,10)
			result.Disable()
			result.Delete()
		elseif (!result.IsDisabled())
			rbase = result.GetBaseObject()
			rid   = rbase.GetFormID()
			lookupindex = ComponentLookup.FindStruct("formid",rid)
			if (lookupindex > -1)
				lookup = ComponentLookup[lookupindex]
		
				lookupsuccess += 1
				if snapshot
			
					params[0] = lookup.name
					params[1] = rid
					params[2] = result.GetPositionX()
					params[3] = result.GetPositionY()
					params[4] = result.GetPositionZ()
					params[5] = result.GetAngleX()
					params[6] = result.GetAngleY()
					params[7] = result.GetAngleZ()
					params[8] = result.GetScale()
					params[9] = -1
					Trace("Adding Components [" + lookup.name + "] to scrapdata")
					ScrapScanMaster.CallFunctionNoWait("TweakBuildInfo", params)
				
				else			
					result.SetPosition(0,0,10)
					result.Disable()
					result.Delete()
					Trace("Adding Scrap [" + lookup.name + "] to scrapdata")
				endif
			
				mask   = lookup.mask
				counts = lookup.counts
				bit    = 0
				offset = 0
				count  = 0

				while (mask > 0 && offset < 31)
					bit  = mask % 2                     ; isolate least significant bit
					mask = ((mask / 2) as Int)          ; shift right 1
					if (bit == 1)
						count = counts % 64             ; isolate last 6 bits
						counts = ((counts / 64) as Int) ; shift right 6 (64 = 2^6)
						scrapdata[offset] += count
					endif
					offset += 1
				endWhile
			endif
		endif	
	
		i += 1
		if (0 == (i % 30))
			keepgoing = (pTweakScanThreadsDone.GetValue() > 0.0)
		endif
	endwhile
	if (0 == lookupsuccess)
		pTweakScanThreadsDone.mod(-1.0)
		return
	endif
	pTweakScanObjectsFound.mod(lookupsuccess)
	
	i = 0
	while (i < 31)
		if scrapdata[i] != 0
			Trace("Adding [" + scrapdata[i] + "] to ResultArray [" + i + "]")
			ResultArray[i].mod(scrapdata[i])
		endif
		i += 1
	endwhile

	pTweakScanThreadsDone.mod(-1.0)
		
EndFunction

Function initialize_ResultArray()
	ResultArray = new GlobalVariable[31]

	ResultArray[0]  = pTweakScanSteelFound
	ResultArray[1]  = pTweakScanWoodFound
	ResultArray[2]  = pTweakScanRubberFound
	ResultArray[3]  = pTweakScanClothFound
	ResultArray[4]  = pTweakScanPlasticFound
	ResultArray[5]  = pTweakScanCopperFound
	ResultArray[6]  = pTweakScanScrewsFound
	ResultArray[7]  = pTweakScanGlassFound
	ResultArray[8]  = pTweakScanAluminumFound
	ResultArray[9]  = pTweakScanCeramicFound
	ResultArray[10] = pTweakScanCircuitryFound
	ResultArray[11] = pTweakScanConcreteFound
	ResultArray[12] = pTweakScanGearsFound
	ResultArray[13] = pTweakScanOilFound
	ResultArray[14] = pTweakScanAdhesiveFound
	ResultArray[15] = pTweakScanSpringsFound
	ResultArray[16] = pTweakScanNuclearMaterialFound
	ResultArray[17] = pTweakScanFertilizerFound
	ResultArray[18] = pTweakScanFiberOpticsFound
	ResultArray[19] = pTweakScanFiberglassFound
	ResultArray[20] = pTweakScanBoneFound
	ResultArray[21] = pTweakScanAcidFound
	ResultArray[22] = pTweakScanAsbestosFound
	ResultArray[23] = pTweakScanCrystalFound
	ResultArray[24] = pTweakScanLeadFound
	ResultArray[25] = pTweakScanLeatherFound
	ResultArray[26] = pTweakScanAntiBallisticFiberFound
	ResultArray[27] = pTweakScanAntisepticFound
	ResultArray[28] = pTweakScanCorkFound
	ResultArray[29] = pTweakScanSilverFound
	ResultArray[30] = pTweakScanGoldFound
EndFunction

Function allocate_ComponentData()
	ComponentLookup = new ComponentData[40]
	int i = 0
	while (i < ComponentLookup.length)
		ComponentLookup[i] = new ComponentData
		i += 1
	endWhile
EndFunction

Function initialize_ComponentData()

    ; Array co-insides with FORMLIST. This was generated using Python.
	
    ComponentLookup[0].formid = 236529
    ComponentLookup[0].mask = 2
    ComponentLookup[0].counts = 12
    ComponentLookup[0].name = "TreeBlasted03"
    ComponentLookup[1].formid = 1185104
    ComponentLookup[1].mask = 2
    ComponentLookup[1].counts = 12
    ComponentLookup[1].name = "TreeBlastedForestBurntUpright02"
    ComponentLookup[2].formid = 219271
    ComponentLookup[2].mask = 2
    ComponentLookup[2].counts = 30
    ComponentLookup[2].name = "TreeCluster01"
    ComponentLookup[3].formid = 219345
    ComponentLookup[3].mask = 2
    ComponentLookup[3].counts = 30
    ComponentLookup[3].name = "TreeCluster02"
    ComponentLookup[4].formid = 219249
    ComponentLookup[4].mask = 2
    ComponentLookup[4].counts = 30
    ComponentLookup[4].name = "TreeCluster03"
    ComponentLookup[5].formid = 219155
    ComponentLookup[5].mask = 2
    ComponentLookup[5].counts = 30
    ComponentLookup[5].name = "TreeCluster04"
    ComponentLookup[6].formid = 219162
    ComponentLookup[6].mask = 2
    ComponentLookup[6].counts = 30
    ComponentLookup[6].name = "TreeCluster05"
    ComponentLookup[7].formid = 219350
    ComponentLookup[7].mask = 2
    ComponentLookup[7].counts = 30
    ComponentLookup[7].name = "TreeCluster06"
    ComponentLookup[8].formid = 219295
    ComponentLookup[8].mask = 2
    ComponentLookup[8].counts = 30
    ComponentLookup[8].name = "TreeCluster07"
    ComponentLookup[9].formid = 253952
    ComponentLookup[9].mask = 2
    ComponentLookup[9].counts = 30
    ComponentLookup[9].name = "TreeCluster08"
    ComponentLookup[10].formid = 290406
    ComponentLookup[10].mask = 2
    ComponentLookup[10].counts = 30
    ComponentLookup[10].name = "TreeCluster09"
    ComponentLookup[11].formid = 235273
    ComponentLookup[11].mask = 2
    ComponentLookup[11].counts = 30
    ComponentLookup[11].name = "TreeClusterTall01"
    ComponentLookup[12].formid = 182191
    ComponentLookup[12].mask = 2
    ComponentLookup[12].counts = 30
    ComponentLookup[12].name = "TreeClusterVines01"
    ComponentLookup[13].formid = 892072
    ComponentLookup[13].mask = 2
    ComponentLookup[13].counts = 20
    ComponentLookup[13].name = "TreeElmForest01Static"
    ComponentLookup[14].formid = 892073
    ComponentLookup[14].mask = 2
    ComponentLookup[14].counts = 20
    ComponentLookup[14].name = "TreeElmForest02Static"
    ComponentLookup[15].formid = 182188
    ComponentLookup[15].mask = 2
    ComponentLookup[15].counts = 30
    ComponentLookup[15].name = "TreeLeanCluster01"
    ComponentLookup[16].formid = 219164
    ComponentLookup[16].mask = 2
    ComponentLookup[16].counts = 30
    ComponentLookup[16].name = "TreeLeanCluster02"
    ComponentLookup[17].formid = 160110
    ComponentLookup[17].mask = 2
    ComponentLookup[17].counts = 30
    ComponentLookup[17].name = "TreeLeanScrub01"
    ComponentLookup[18].formid = 182280
    ComponentLookup[18].mask = 2
    ComponentLookup[18].counts = 30
    ComponentLookup[18].name = "TreeLeanScrub02"
    ComponentLookup[19].formid = 205230
    ComponentLookup[19].mask = 2
    ComponentLookup[19].counts = 30
    ComponentLookup[19].name = "TreeLeanScrub08"
    ComponentLookup[20].formid = 303219
    ComponentLookup[20].mask = 2
    ComponentLookup[20].counts = 20
    ComponentLookup[20].name = "TreeMapleForest1"
    ComponentLookup[21].formid = 303220
    ComponentLookup[21].mask = 2
    ComponentLookup[21].counts = 20
    ComponentLookup[21].name = "TreeMapleForest2"
    ComponentLookup[22].formid = 303221
    ComponentLookup[22].mask = 2
    ComponentLookup[22].counts = 20
    ComponentLookup[22].name = "TreeMapleForest3"
    ComponentLookup[23].formid = 303222
    ComponentLookup[23].mask = 2
    ComponentLookup[23].counts = 20
    ComponentLookup[23].name = "TreeMapleForest4"
    ComponentLookup[24].formid = 303217
    ComponentLookup[24].mask = 2
    ComponentLookup[24].counts = 20
    ComponentLookup[24].name = "TreeMapleForest5"
    ComponentLookup[25].formid = 303218
    ComponentLookup[25].mask = 2
    ComponentLookup[25].counts = 20
    ComponentLookup[25].name = "TreeMapleForest6"
    ComponentLookup[26].formid = 444112
    ComponentLookup[26].mask = 2
    ComponentLookup[26].counts = 12
    ComponentLookup[26].name = "TreeMapleForestsmall1"
    ComponentLookup[27].formid = 444114
    ComponentLookup[27].mask = 2
    ComponentLookup[27].counts = 12
    ComponentLookup[27].name = "TreeMapleForestsmall2"
    ComponentLookup[28].formid = 444116
    ComponentLookup[28].mask = 2
    ComponentLookup[28].counts = 12
    ComponentLookup[28].name = "TreeMapleForestsmall3"
    ComponentLookup[29].formid = 317755
    ComponentLookup[29].mask = 2
    ComponentLookup[29].counts = 12
    ComponentLookup[29].name = "TreeMapleblasted01"
    ComponentLookup[30].formid = 328630
    ComponentLookup[30].mask = 2
    ComponentLookup[30].counts = 12
    ComponentLookup[30].name = "TreeMapleblasted02"
    ComponentLookup[31].formid = 685061
    ComponentLookup[31].mask = 2
    ComponentLookup[31].counts = 12
    ComponentLookup[31].name = "TreeMapleblasted02Lichen"
    ComponentLookup[32].formid = 336315
    ComponentLookup[32].mask = 2
    ComponentLookup[32].counts = 12
    ComponentLookup[32].name = "TreeMapleblasted03"
    ComponentLookup[33].formid = 340398
    ComponentLookup[33].mask = 2
    ComponentLookup[33].counts = 12
    ComponentLookup[33].name = "TreeMapleblasted04"
    ComponentLookup[34].formid = 340412
    ComponentLookup[34].mask = 2
    ComponentLookup[34].counts = 12
    ComponentLookup[34].name = "TreeMapleblasted06"
    ComponentLookup[35].formid = 203280
    ComponentLookup[35].mask = 2
    ComponentLookup[35].counts = 30
    ComponentLookup[35].name = "TreeScrubVines01"
    ComponentLookup[36].formid = 203281
    ComponentLookup[36].mask = 2
    ComponentLookup[36].counts = 30
    ComponentLookup[36].name = "TreeScrubVines02"
    ComponentLookup[37].formid = 159722
    ComponentLookup[37].mask = 2
    ComponentLookup[37].counts = 30
    ComponentLookup[37].name = "TreeScrubVines03"
    ComponentLookup[38].formid = 204840
    ComponentLookup[38].mask = 2
    ComponentLookup[38].counts = 30
    ComponentLookup[38].name = "TreeScrubVines04"
    ComponentLookup[39].formid = 685059
    ComponentLookup[39].mask = 2
    ComponentLookup[39].counts = 12
    ComponentLookup[39].name = "TreeblastedM04Lichen"
	
EndFunction


; OLD IMPL : Binary search against sorted list (OnInit), however
; found that Array.FindStruct performed just as fast, at least 
; up to 100 elements. 

;ComponentData Function GetComponents(Form item)
;
;	int formid = item.GetFormID()
;	int left  = 0
;	int right = 99  ; ComponentLookup.length
;	int mid
;	
;	while (left < right)
;		mid = left + (((right - left)/2) as Int)
;		if (formid < ComponentLookup[mid].formid)
;			right = mid
;		elseif (formid == ComponentLookup[mid].formid)
;			return ComponentLookup[mid]
;		else
;			left = mid + 1
;		endif
;	endwhile
;	
;	; if (formid == ComponentLookup[left].formid)
;	; 	return ComponentLookup[left]
;	; endif
;	
;	return ComponentLookup[left]
;	
;EndFunction

; Insert Sort with header offset if the front is already sorted ( Usefull if you use the new ARRAY.Add()
; method. You dont have to resort the whole list from scratch... )

;Function BinSort(ComponentData[] data, int start = 0)
;
;	Trace("BinSort()")
;
;	int len = data.length
;	if (0 == start)
;		start = 1
;	endif
;	if (start > len)
;		return
;	endif
;	int mid
;	while (start < len)
;		ComponentData pivot = data[start];
;		int left  = 0;
;		int right = start;
;		while (left < right)
;			mid = left + (((right - left)/2) as Int)
;			if (pivot.formid < data[mid].formid)
;				right = mid
;			else
;				left = mid + 1
;			endif
;		endwhile
;		
;		; BinSort([1,4,6,7,2],4):
;		;
;		; [1,4,6,7,2]
;		;    ^     ^
;		;    |     |-- start
;		;    |--------left
;		
;		right = start
;		while right > left
;			data[right] = data[right - 1]
;			right -= 1
;		endwhile
;		data[right] = pivot
;		start += 1
;	endWhile
;
;endFunction

GlobalVariable Property pTweakScanAcidFound Auto
GlobalVariable Property pTweakScanAdhesiveFound Auto
GlobalVariable Property pTweakScanRubberFound Auto
GlobalVariable Property pTweakScanScrewsFound Auto
GlobalVariable Property pTweakScanAluminumFound Auto
GlobalVariable Property pTweakScanAntiBallisticFiberFound Auto
GlobalVariable Property pTweakScanAntisepticFound Auto
GlobalVariable Property pTweakScanAsbestosFound Auto
GlobalVariable Property pTweakScanBoneFound Auto
GlobalVariable Property pTweakScanCeramicFound Auto
GlobalVariable Property pTweakScanCircuitryFound Auto
GlobalVariable Property pTweakScanClothFound Auto
GlobalVariable Property pTweakScanConcreteFound Auto
GlobalVariable Property pTweakScanCopperFound Auto
GlobalVariable Property pTweakScanCorkFound Auto
GlobalVariable Property pTweakScanCrystalFound Auto
GlobalVariable Property pTweakScanFertilizerFound Auto
GlobalVariable Property pTweakScanFiberglassFound Auto
GlobalVariable Property pTweakScanFiberOpticsFound Auto
GlobalVariable Property pTweakScanSteelFound Auto
GlobalVariable Property pTweakScanSilverFound Auto
GlobalVariable Property pTweakScanGearsFound Auto
GlobalVariable Property pTweakScanGlassFound Auto
GlobalVariable Property pTweakScanGoldFound Auto
GlobalVariable Property pTweakScanSpringsFound Auto
GlobalVariable Property pTweakScanLeadFound Auto
GlobalVariable Property pTweakScanLeatherFound Auto
GlobalVariable Property pTweakScanWoodFound Auto
GlobalVariable Property pTweakScanPlasticFound Auto
GlobalVariable Property pTweakScanNuclearMaterialFound Auto
GlobalVariable Property pTweakScanOilFound Auto
GlobalVariable Property pTweakScanObjectsFound Auto Const