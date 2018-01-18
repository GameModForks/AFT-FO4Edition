Scriptname AFT:TweakDFScript extends Quest

Quest			Property pTutorial				Auto Const
ReferenceAlias	Property pCompanion				Auto Const
ReferenceAlias	Property pCompanion1			Auto Const
ReferenceAlias	Property pCompanion2			Auto Const
ReferenceAlias	Property pCompanion3			Auto Const
ReferenceAlias	Property pCompanion4			Auto Const
ReferenceAlias	Property pCompanion5			Auto Const
ReferenceAlias	Property pDogmeatCompanion		Auto Const
ReferenceAlias	Property pSleepCompanion		Auto Const
ReferenceAlias	Property pSleepCompanion2		Auto Const
ReferenceAlias	Property pSleepCompanionBed		Auto Const
RefCollectionAlias Property pActiveCompanions	Auto Const
spell 			Property LoversEmbracePerkSpell Auto Const

Faction property pCurrentCompanionFaction    Auto Const
Faction property pHasBeenCompanionFaction    Auto Const
Faction property pDisallowedCompanionFaction Auto Const
Faction property pTweakFollowerFaction       Auto Const
Faction property pTweakNamesFaction			 Auto Const
Faction property pTweakPosedFaction			 Auto Const
Faction property HasBeenCompanionFaction	 Auto Const
Perk	property crNoFallDamage				 Auto Const
Faction property pDanversFaction             Auto Const

; MQ106 Piper Fix
ObjectReference Property FortHagenMapMarker  Auto Const
ObjectReference Property MQ201BPiperTravelMarker02 Auto Const

; MQ305 Teleport Fix
ObjectReference Property MQ302MassFusionDogmeatMarker Auto Const
ActorValue		Property MQ302Companion				  Auto Const

; Affinity Settings
Faction			property pTweakNoDisapprove			Auto Const
Faction			property pTweakNoApprove			Auto Const
Faction			property pTweakNoCommentGeneral		Auto Const
Faction			property pTweakNoCommentApprove		Auto Const
Faction			property pTweakNoCommentDisapprove	Auto Const
Faction			property pTweakConvNegToPos			Auto Const
Faction			property pTweakConvPosToNeg			Auto Const

FormList		property pTweakLikeMessages			Auto Const
FormList		property pTweakLoveMessages			Auto Const
FormList		property pTweakHateMessages			Auto Const
FormList		property pTweakDislikeMessages		Auto Const

Quest 			Property Tutorial 					Auto Const
GlobalVariable	property pTweakCommentLimit 		Auto Const

Keyword Property pworkshopItemKeyword        			Auto Const
Keyword Property FollowersCompanionSleepNearPlayerFlag	Auto Const
Keyword Property pArmorTypePower         	Auto Const
Keyword	Property pTeammateReadyWeapon_DO		Auto Const

GlobalVariable Property iFollower_Com_Follow              Auto Const
GlobalVariable Property iFollower_Com_Wait                Auto Const
GlobalVariable Property pPlayerHasActiveCompanion         Auto Const
GlobalVariable Property pPlayerHasActiveDogmeatCompanion  Auto Const
GlobalVariable Property pPlayerKnowsDogmeatName           Auto Const
GlobalVariable Property pTweakMutexCompanions             Auto Const
GlobalVariable Property pTweakFollowerLimit               Auto Const
GlobalVariable Property pTweakIgnoreMurder                Auto Const

GlobalVariable Property CA_CoolDownDays_Immediate         Auto Const
GlobalVariable Property CA_CoolDownDays_Long              Auto Const
GlobalVariable Property CA_CoolDownDays_Medium            Auto Const
GlobalVariable Property CA_CoolDownDays_Short             Auto Const
GlobalVariable Property pTweak_CoolDownDays_Immediate     Auto Const
GlobalVariable Property pTweak_CoolDownDays_Long          Auto Const
GlobalVariable Property pTweak_CoolDownDays_Medium        Auto Const
GlobalVariable Property pTweak_CoolDownDays_Short         Auto Const

GlobalVariable Property pTweakIdleCooldownActiveMin		  Auto Const
GlobalVariable Property pTweakIdleCooldownActiveMax		  Auto Const
GlobalVariable Property pTweakIdleCooldownDismissedMin	  Auto Const
GlobalVariable Property pTweakIdleCooldownDismissedMax	  Auto Const

FollowersScript Property pFollowers      Auto Const
Quest           Property pTweakFollower  Auto Const

WorkshopParentScript Property pWorkshopParent      Auto
LocationAlias Property pDismissMessageLocation     Auto Const

Message Property pFollowersCompanionDismissMessage                   Auto Const 
Message Property pFollowersDogmeatCompanionDismissMessage            Auto Const
Message Property pFollowersDogmeatCompanionDismissMessageNameUnknown Auto Const

Message Property pTweakUpdateProgress10      Auto Const
Message Property pTweakUpdateProgress20      Auto Const
Message Property pTweakUpdateProgress30      Auto Const
Message Property pTweakUpdateProgress40      Auto Const
Message Property pTweakUpdateProgress50      Auto Const
Message Property pTweakUpdateProgress60      Auto Const
Message Property pTweakUpdateProgress70      Auto Const
Message Property pTweakUpdateProgress80      Auto Const
Message Property pTweakUpdateProgress90      Auto Const
Message Property pTweakUpdateProgress100     Auto Const

Message Property pTweakSetCompanionFail      Auto Const
Message Property pTweakSetCompanionAlreadyManaged Auto Const

Message Property pTweakPiperRemoved			 Auto Const
Message Property pTweakPiperBack			 Auto Const
Message Property pTweakPiperNickBack		 Auto Const

Quest   Property pMQ102                      Auto Const
Quest 	Property pTweakDismiss 				 Auto Const

Keyword  Property AO_Type_Bar                Auto Const
Keyword  Property AO_Type_Comment_1024       Auto Const
Keyword  Property AO_Type_Comment_128        Auto Const
Keyword  Property AO_Type_Comment_256        Auto Const
Keyword  Property AO_Type_Comment_512        Auto Const

Keyword	 Property CA_Event_LootCorpse		 Auto Const
Keyword	 Property CA_Event_LootEpicItem		 Auto Const
Keyword	 Property CA_Event_LootJunk			 Auto Const
Keyword	 Property CA_Event_LootPrewarItem	 Auto Const
GlobalVariable Property pTweakLimitLootComments Auto Const

FormList Property pTweakHumanoidKeywords     Auto Const

Faction    Property pTweakCombatOutFitFaction 	Auto Const
Faction    Property pTweakCampOutFitFaction   	Auto Const
Faction    Property pTweakCityOutFaction      	Auto Const
Faction    Property pTweakStandardOutFitFaction	Auto Const
Faction    Property pTweakHangoutFaction		Auto Const

ActorBase  Property CompanionDeacon				Auto Const
ActorBase  Property BoSPaladinDanse				Auto Const

; CommentSync Control:
GlobalVariable	Property pTweakCommentSynch		Auto Const
Bool CommentSynchronous_var = true
Bool property CommentSynchronous hidden
  Bool function get()
    return CommentSynchronous_var
  endFunction
  function set(bool value)
  endFunction
endProperty

ReferenceAlias[] companions

; DLC Support
TweakDLC01Script	Property pTweakDLC01Script	Auto Const
TweakDLC03Script	Property pTweakDLC03Script	Auto Const
TweakDLC04Script	Property pTweakDLC04Script	Auto Const

; LOCAL VARIABLES

float CompanionIdleChatterTimeMin = 240.0
float CompanionIdleChatterTimeMax = 300.0
bool  LockSendAffinityEvent
bool  RotationAllowed = true
int   import_processed = 0
int   import_max_time  = 20
int   TIMER_ROTATE_COMPANION = 1 const
int   TIMER_MONITOR_IMPORT   = 2 const
int   TIMER_PLAYER_WAKEUP    = 3 const

bool Function Trace(string asTextToPrint, int aiSeverity = 0) debugOnly
	string logName = "TweakDFScript"
	debug.OpenUserLog(logName) 
	RETURN debug.TraceUser(logName, asTextToPrint, aiSeverity)
EndFunction

bool Function Trace_(string asTextToPrint, int aiSeverity = 0) global debugOnly
	;we are sending callingObject so we can in the future route traces to different logs based on who is calling the function
	string logName = "TweakDFScript"
	debug.OpenUserLog(logName) 
	RETURN debug.TraceUser(logName, asTextToPrint, aiSeverity)
	
EndFunction

; UTILITY
;
; SpinLock - Simple Mutex using thread-safe add-and-retrieve. (Mutex objects must be globalvariables)
;            Essentially the number of attempts is equivlent to a priority and how long you are willing 
;            to wait.  -1 means wait forever... dont do that. There is almost no scenario in a video 
;            game that is worth risking deadlock. 
;
; Examples:
;
;            if (GetSpinLock(flood_protection))
;              ;do something sparingly that normally floods like handling OnHit or OnMagicEffect events.
;              ReleaseSpinLock(flood_protection)
;            endif
;
;            bool gotlock = GetSpinLock(shared_data_update, 30)
;            ; The line above will wait up to 3 seconds, but then continue on anyway.
;            ; If it is really important (like updating referenceAliases), be nice by asking, but 
;            ; ultimately do it whether you got the lock or not. Probably want to log something
;            ; if you didn't get the lock, so if things start breaking you know it is a mutex 
;            ; issue. 
;            ReleaseSpinLock(flood_protection, gotlock)


;bool Function GetSpinLock(GlobalVariable mutex, int attempts = 0, string sourcehint = "")
;	if (1.0 == mutex.mod(1))
;		trace("Giving SpinLock to [" + sourcehint + "]")
;		return true
;	endif
;	while (attempts != 0)
;		Utility.wait(0.1)
;		if (0.0 == mutex.GetValue() && 1.0 == mutex.mod(1))
;			trace("Giving SpinLock to [" + sourcehint + "] (" + attempts + " attempts left)")
;			return true
;		endif
;		attempts -= 1
;	endwhile
;	trace("[" + sourcehint + "] Failed to get SpinLock")
;	return false
;endFunction

;Function ReleaseSpinLock(GlobalVariable mutex, bool gotLock = true, string sourcehint = "")
;	if gotLock
;		trace("[" + sourcehint + "] Releasing SpinLock")
;		mutex.SetValue(0.0)
;	else
;		trace("Ignoring Spinlock Release Request from [" + sourcehint + "]")		
;	endif
;endFunction

Event OnInit()

	trace("OnInit() Called")
	RotationAllowed = true
	LockSendAffinityEvent = false
	companions = new ReferenceAlias[5]
	trace("OnInit() finished.")
	
EndEvent

; Each Time a Save Game is Loaded 
Function OnGameLoaded(bool firstTime=false)
	trace("OnGameLoaded() Called. FirstTime = [" + firstTime + "]")
	
	if firstTime
		companions[0] = pCompanion1
		companions[1] = pCompanion2
		companions[2] = pCompanion3
		companions[3] = pCompanion4
		companions[4] = pCompanion5	
		RegisterForPlayerSleep()
	endif
	
	LockSendAffinityEvent = false	
	FollowersScript pFollowersScript = (self as Quest) as FollowersScript
	if pFollowersScript
	
		; Fix potential Affinity Stall issues with the vanilla game...

		; If a papyrus crash leaves FollowersScript in a funky
		; state, it can lead to affinity stalling. So Release
		; on game load.
		pFollowersScript.ReleaseLockSendAffinityEvent()
		

		; If a papyrus crash leaves CompanionActorScript in a funky
		; state, it can lead to affinity stalling. So Release
		; on game load.
		
		int clen = companions.length
		int c = 0
		while (c < clen)
			Actor npc = companions[c].GetActorReference()
			if npc	
				CompanionActorScript CAS = npc as CompanionActorScript
				if CAS
					; In case the timer got cancelled, fire the allowaffinitytimer event
					CAS.OnTimer(10)
				endif
			endif
			c += 1
		endwhile
		
	elseif (pFollowers)
	
		pFollowers.ReleaseLockSendAffinityEvent()		
		int clen = companions.length
		int c = 0
		while (c < clen)
			Actor npc = companions[c].GetActorReference()
			if npc	
				CompanionActorScript CAS = npc as CompanionActorScript
				if CAS
					; In case the timer got cancelled, fire the allowaffinitytimer event
					CAS.OnTimer(10)
				endif
			endif
			c += 1
		endwhile
	else
		Trace("Unable to Get/Set State for FollowersScript")
	endif	

	; Release Spin lock incase script VM crashes caused it 
	; to get out of sync:
	; ReleaseSpinLock(pTweakMutexCompanions, true, "OnGameLoaded")
	
	if (firstTime)
		if (pCompanion.GetActorReference())
			; Make sure pCompanion is in the followers list (Bails fast if that is the case)
			trace("OnInit : Calling SetCompanion")
			SetCompanion(pCompanion.GetActorReference())
		endif
	else
		; RotateCompanion() fixes pCompanion/Follower list sync issues as well as rotating 
		; the companion pointer...
		trace("Rotating Companion Pointer")
		RotateCompanion()
	endif

	; DLC Support : Least expensive solution for DLC is to register for 
	; locationChange so we can take action when entering DLC areas and 
	; set simple flags to hault companion rotation:
	RegisterForRemoteEvent(Game.GetPlayer(),"OnLocationChange")
	
	trace("Starting Timers")
	CancelTimer(TIMER_ROTATE_COMPANION)
	StartTimer(15.0,TIMER_ROTATE_COMPANION)

	; Any version upgrade functions like "v10Update()" will be fired by the main
	; quest script (TweakFollowerScript)
	trace("OnGameLoaded() Finished")
	
EndFunction


int Function v10Update()

	Trace ("v10Update()")
	
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if (pTweakFollowerScript == None)
		Game.Warning("AFT v10Update Failure. Unable to cast to TweakFollowerScript")
		Trace ("AFT v10Update Failure. Unable to cast to TweakFollowerScript")
		return 0
	endIf
	
	int imported     = 0
	if (pActiveCompanions.GetCount() == 0)
		if (pMQ102.GetStage() > 54) ; Auto import Dog after Player has been to Concord..
			Trace("Calling Import for dogmeat")
			if (pTweakFollowerScript.ImportFollower(Game.GetCommonProperties().DogmeatRef, true))
				imported += 1
			endif
		else
			Trace("Skipping dogmeat. Player has not reached Concord")
		endif		
		pTweakUpdateProgress100.show()
		Utility.wait(1.0)
		return imported
	endIf
	
	import_processed = 0
	import_max_time  = 20
	
	StartTimer(2.0, TIMER_MONITOR_IMPORT)
	while (import_processed < pActiveCompanions.GetCount())
		Actor npc = pActiveCompanions.GetAt(import_processed) as Actor
		if !npc.IsInFaction(pTweakFollowerFaction) && !npc.IsInFaction(pDisallowedCompanionFaction)
			Trace("Calling Import [" + npc + "]")
			if (pTweakFollowerScript.ImportFollower(npc, true))
				imported += 1
			endif
		endif
		import_processed += 1
		Trace("v10Update : import_processed [" + import_processed + "]")
	endwhile
		
	; DogMeat is not stored in the Active Companions bin...	
	if (pMQ102.GetStage() > 54) ; Auto import Dog after Player has been to Concord..
		Trace("Calling Import for dogmeat")
		if (pTweakFollowerScript.ImportFollower(Game.GetCommonProperties().DogmeatRef, true))
			imported += 1
		endif
	else
		Trace("Skipping dogmeat. Player has not reached Concord")
	endif		
	import_processed += 1

	int max_wait = 6
	while (import_processed != 0 && max_wait > 0)
		Utility.wait(0.5)
		max_wait -= 1
	endwhile
		
	return imported
		
EndFunction

Function AftReset()
	trace("============= AftReset() ================")
	
	CancelTimer(TIMER_ROTATE_COMPANION)
	CancelTimer(TIMER_MONITOR_IMPORT)
	CancelTimer(TIMER_PLAYER_WAKEUP)

	Actor player = Game.GetPlayer()
	Actor npc
	npc = pCompanion.GetActorReference()
	if npc
		pCompanion.Clear()
	endif
	npc = pCompanion1.GetActorReference()	
	if npc
		RemoveKeywords(npc)
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)
		CompanionDataToggle(pCompanion1, false, false)
		npc.StopCombatAlarm()
		if npc.IsInFaction(pCurrentCompanionFaction)
			; UnManaged NPC support
			npc.RemoveFromFaction(pCurrentCompanionFaction)
		endif
		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)								
		pCompanion1.Clear()		
	endif
	npc = pCompanion2.GetActorReference()	
	if npc
		RemoveKeywords(npc)
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)
		CompanionDataToggle(pCompanion2, false, false)
		npc.StopCombatAlarm()
		if npc.IsInFaction(pCurrentCompanionFaction)
			; UnManaged NPC support
			npc.RemoveFromFaction(pCurrentCompanionFaction)
		endif
		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)								
		pCompanion2.Clear()
	endif
	npc = pCompanion3.GetActorReference()	
	if npc
		RemoveKeywords(npc)
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)
		CompanionDataToggle(pCompanion3, false, false)
		npc.StopCombatAlarm()
		if npc.IsInFaction(pCurrentCompanionFaction)
			; UnManaged NPC support
			npc.RemoveFromFaction(pCurrentCompanionFaction)
		endif
		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)								
		pCompanion3.Clear()
	endif
	npc = pCompanion4.GetActorReference()	
	if npc
		RemoveKeywords(npc)
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)
		CompanionDataToggle(pCompanion4, false, false)
		npc.StopCombatAlarm()
		if npc.IsInFaction(pCurrentCompanionFaction)
			; UnManaged NPC support
			npc.RemoveFromFaction(pCurrentCompanionFaction)
		endif
		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)								
		pCompanion4.Clear()
	endif
	npc = pCompanion5.GetActorReference()	
	if npc
		RemoveKeywords(npc)
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)
		CompanionDataToggle(pCompanion5, false, false)
		npc.StopCombatAlarm()
		if npc.IsInFaction(pCurrentCompanionFaction)
			; UnManaged NPC support
			npc.RemoveFromFaction(pCurrentCompanionFaction)
		endif
		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)								
		pCompanion5.Clear()
	endif
	npc = pDogmeatCompanion.GetActorReference()	
	if npc
		; DAS.RemoveFromFaction(pTweakWaitingFaction)			
		npc.SetValue(Game.GetCommonProperties().FollowerState, 0)

		CompanionDataToggle(pDogmeatCompanion, false, false)
		npc.StopCombatAlarm()

		pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)			
		pDogmeatCompanion.Clear()		
	endif
	pPlayerHasActiveDogmeatCompanion.SetValue(0)
	pPlayerHasActiveCompanion.SetValue(0)
	
		
	UnRegisterForPlayerSleep()
	UnRegisterForHitEvent(player)
	UnregisterForRemoteEvent(player,"OnLocationChange")
	
	companions[0] = None
	companions[1] = None
	companions[2] = None
	companions[3] = None
	companions[4] = None
	
	; Reset Globals to defaults:
	pTweakIgnoreMurder.SetValue(0.0)
	pTweakCommentSynch.SetValue(1.0)
	pTweakCommentLimit.SetValue(2.0)
	pTweakFollowerLimit.SetValue(3.0)
	
EndFunction


Event OnTimer(int aiTimerID)
	Trace ("OnTimer [" + aiTimerID + "]")

	if  (TIMER_PLAYER_WAKEUP == aiTimerID)
		OnPlayerSleepEnd()
		return
	endIf
	if (TIMER_ROTATE_COMPANION == aiTimerID)
		; Rotate Companon:

		; Start                       | 15 sec later 
		;                             |
		; pCompanion----->pCompanion1 | pCompanion-|    pCompanion1
		;                 pCompanion2 |            ---->pCompanion2
		;                 pCompanion3 |                 pCompanion3
		;                 pCompanion4 |                 pCompanion4
		;                 pCompanion5 |                 pCompanion5  etc...
			
		if (Utility.IsInMenuMode() || !RotationAllowed)
			trace("Skipping Rotate : Menu is Open or Rotation is not allowed")
		else
			Actor PlayerRef = Game.GetPlayer()
			if (PlayerRef.IsInCombat())
				trace("Skipping Rotate : Player in Combat")
			else
				Actor oCompanion = pCompanion.GetActorReference()
				if (None == oCompanion)
					trace("No Assigned pCompanion. Calling RotateCOmpanion")												
					; If pCompanion is None because someone cleared it and 
					; there are other companions in the list, this will 
					; fix it. 
					RotateCompanion()
				elseif (oCompanion.IsInCombat())
					trace("Skipping Rotate : pCompanion [" + oCompanion.GetActorBase() + "] in Combat")
				elseif (oCompanion.IsInDialogueWithPlayer())
				
					; I dont fully understand why. But when testing against your current companon, if talking to an NPC
					; who was previously a companion, IsInDialogueWithPlayer will return true. IE: If Piper is your companion and you 
					; start talking to Codsworth, who was previously a companion, and test Piper if she is IsInDialogueWithPlayer(), 
					; this will return true even though the player is talking to Codsworth. We take advantage of this bug as it 
					; prevents rotations 95% of the time when talking to someone you are getting ready to ask to follow you again.
				
					trace("Skipping Rotate : pCompanion [" + oCompanion.GetActorBase() + "] talking to player")
				elseif (PlayerRef.IsInScene())
					trace("Skipping Rotate : Player is in scene [" + PlayerRef.GetCurrentScene() + "] of quest [" + PlayerRef.GetCurrentScene().GetOwningQuest() + "]")
				else ; if GetSpinLock(pTweakMutexCompanions, 0, "OnTimer (Rotate Companion)")
					RotateCompanion()
					; ReleaseSpinLock(pTweakMutexCompanions, true, "OnTimer (Rotate Companion)")
				;else
				;	trace("Skipping Rotate : Someone else has SpinLock!")
				endif
			endif
		endIf				
		StartTimer(15.0,aiTimerID)
		return
	endif
	
	
	
	if (TIMER_MONITOR_IMPORT == aiTimerID)
		Trace ("OnTimer MONITOR_IMPORT import_max_time[" + import_max_time + "] import_processed [" + import_processed + "]")

		import_max_time -= 2
		int import_expected = (pActiveCompanions.GetCount() + 1)

		if ((import_max_time > 0) && (import_processed != import_expected))
		
			int done = Math.Floor( 10 * import_processed / import_expected )
			Trace ("done = ( 10 * " + import_processed + " / " + import_expected + ") = [" + done + "]")

			if (1 == done)
				pTweakUpdateProgress10.Show()			
			elseif (2 == done)
				pTweakUpdateProgress20.Show()			
			elseif (3 == done)
				pTweakUpdateProgress30.Show()			
			elseif (4 == done)
				pTweakUpdateProgress40.Show()			
			elseif (5 == done)
				pTweakUpdateProgress50.Show()			
			elseif (6 == done)
				pTweakUpdateProgress60.Show()			
			elseif (7 == done)
				pTweakUpdateProgress70.Show()			
			elseif (8 == done)
				pTweakUpdateProgress80.Show()			
			elseif (9 == done)
				pTweakUpdateProgress90.Show()
			else
				Trace ("Bad Value for done [" + done + "]")
			endIf
			
			Trace ("Restarting TIMER_MONITOR_IMPORT, Not Done Yet!")
			StartTimer(2,TIMER_MONITOR_IMPORT)
			
		else
		
			pTweakUpdateProgress100.show()
			Utility.wait(1.0)
			import_processed = 0
			
		endif
		
	endif
		
endEvent

Event Actor.OnLocationChange(Actor player, Location akOldLoc, Location akNewLoc)
	trace("OnLocationChange")
	
	; Cheap check to avoid costly script jumps...
	if !akNewLoc
		trace("New Location is None. Skipping Rotation assignement")	
		return
	endif
	
	int akNewLocID = akNewLoc.GetFormID()
	if (akNewLocID < 0x01000000) 
		trace("New Location Vanilla. Allowing Rotation.")	
		RotationAllowed = true
		return
	endif
	
	trace("New Location Not Vanilla. RotationAllowed = false")	
	
	RotationAllowed = false
		
	if (pTweakDLC01Script.Installed)
		; Automatron
		if (GetPluginID(akNewLocID) == pTweakDLC01Script.resourceID)
		
			trace("Automatron Location detected")
			
			; If ADA is in the party, make sure she is in slot 1
			
			Actor Ada = pTweakDLC01Script.Ada
			Actor current = pCompanion.GetActorRef()
			if (current == Ada)
				trace("Ada Already current Companion...")
				return
			endif
		
			; Is Ada even in the party?
			ReferenceAlias AdaRef = FindAlias(Ada)
			if AdaRef
				trace("Ada in party but not current companion. Fixing")
				if (!current)
					pCompanion.ForceRefTo(Ada)
					AddKeywords(Ada)
				else ; if (current != Ada)
					Utility.waitmenumode(1.0) ; In case we just missed a rotation
					RemoveKeywords(current)
					pCompanion.ForceRefTo(Ada)
					AddKeywords(Ada)
				endif
			endif
			return
		endif
	endif		

	if (pTweakDLC03Script.Installed)
	
		; Far Harbor
		if (GetPluginID(akNewLocID) == pTweakDLC03Script.resourceID)

			trace("FarHarbor Location detected")

			; If Nick or Longfellow are in the party, make sure they
			; are in slot 1. (If both, then Nick trumps)

			Actor Nick = (Game.GetForm(0x00002F24) as ActorBase).GetUniqueActor()
			Actor current = pCompanion.GetActorRef()
			if (current == Nick)
				trace("Nick Already current Companion...")
				return
			endif
			
			; Is Nick even in the party?
			ReferenceAlias NickRef = FindAlias(Nick)
			if NickRef
				trace("Nick in party but not current companion. Fixing")
				if (!current)
					pCompanion.ForceRefTo(Nick)
					AddKeywords(Nick)
				else ; if (current != Nick)
					Utility.waitmenumode(1.0) ; In case we just missed a rotation
					RemoveKeywords(current)
					pCompanion.ForceRefTo(Nick)
					AddKeywords(Nick)
				endif
				return
			endif

			Actor LongFellow = pTweakDLC03Script.OldLongfellow
			if (current == LongFellow)
				trace("LongFellow already current companion.")
				return
			endif

			; Is LongFellow even in the party?
			ReferenceAlias LongFellowRef = FindAlias(LongFellow)
			if LongFellowRef
				trace("LongFellow in party but not current companions. Fixing")
				if (!current)
					pCompanion.ForceRefTo(LongFellow)
					AddKeywords(LongFellow)
				else ; if (current != LongFellow)
					Utility.waitmenumode(1.0) ; In case we just missed a rotation
					RemoveKeywords(current)
					pCompanion.ForceRefTo(LongFellow)
					AddKeywords(LongFellow)
				endif
			endif
			return
		endif
	endif
	
	if (pTweakDLC04Script.Installed)
	
		; Nuka World
		if (GetPluginID(akNewLocID) == pTweakDLC04Script.resourceID)

			trace("Nuka World Location detected")

			; If PorterGage is in the party, make sure he is in slot 1

			Actor Gage = pTweakDLC04Script.PorterGage
			Actor current = pCompanion.GetActorRef()
			if (current == Gage)
				trace("Gage already current companion.")
				return
			endif

			; Is Gage even in the party?
			ReferenceAlias GageRef = FindAlias(Gage)
			if GageRef
				trace("Gage in party but not current companions. Fixing")
				if (!current)
					pCompanion.ForceRefTo(Gage)
					AddKeywords(Gage)
				else ; if (current != Gage)
					Utility.waitmenumode(1.0) ; In case we just missed a rotation
					RemoveKeywords(current)
					pCompanion.ForceRefTo(Gage)
					AddKeywords(Gage)
				endif
			endif
			return
		endif
	endif	
	
EndEvent


Function SetCommentSynchronous(bool value)
	CommentSynchronous_var = value
	if CommentSynchronous_var
		pTweakCommentSynch.SetValue(1.0)
	else
		pTweakCommentSynch.SetValue(0.0)
	endif	
EndFunction

;==================================================================
; AFFINITE SYSTEM NOTES:
;==================================================================
;The Affinity system supports 4 types of events:
;
;1) Trait Based (No commentary/invisible)
;2) NPC Specific Affinity Change events 
;3) Keyword based Affinity events
;4) Time Based
;	
; 1) Trait Based
;    Game supports 6 generic traits : CA_Trait_Generous, 
;    CA_Trait_Mean, CA_Trait_Nice, CA_Trait_Peaceful, 
;    CA_Trait_Selfish, CA_Trait_Violent. 
; 
;    Many conversations publish events that evoke the affinity 
;    system with a TRAIT based ActorValue. These traits are 
;    used in several places. One is the CompanionActorScript, which
;    only applies to the original NPCs that support companionship.
;    The second is the Follower Quest followerscript. This quest
;    level script subscribes to all trait events, but because
;    it is on the quest that manages the followers, it only 
;    cares about the NPCs currently following the player. 
;
;    The CompanionActorScript has a list of Traits Properties 
;    that are are marked as Like or Dislike. (Neutral Traits are 
;    ommited). When it receives the trait event, it silently 
;    adjusts the affinity of the NPC. 
;
;    The FollowerScript records any traits on the NPC instance
;    of any followers at the time the event fires. So If CAIT
;    is with you when CA_TRAIT_GENEROUS fires, her actor value
;    "CA_Trait_Generous" will be incremented by 1, whether she
;    likes it or not. So the Follower script creates a record 
;    of what the player has done in front of the NPC. This can 
;    be used by conversation conditions to provide commentary 
;    that reflects the PC's personality from the NPC's 
;    perspective.
;
;    Pretty smart, unfortunately, the event counts are not used 
;    by the original game. Instead, the assumption is that your 
;    threshhold with an NPC reflects if you are the type of person
;    they like/dislike (which is really a reflection of the NPC's 
;    own personality). So broad assumptions are made based solelyI
;    on threshold what is appropriate for each NPC to say. I don't
;    see these traits referenced by conversation trees outside 
;    the ones added by this mod. 
;
; 2) NPC Specific
;
;    Game also supports specific Like/Dislike/Hate/Love events for each NPC.
;    Implementation: On the CompanionActorScript, there are 4 properties called : 
;    DislikesEvent, HatesEvent, LikesEvent and LovesEvent. Unqiue actors
;    have their own unique KEYWORD entered into these arrays.
;
;       EX: CA_CustomEvent_CaitLikes
;
;    Conversations/Actions in the game then publish events with those specific keywords. 
;    So for example, you may attack the Railroad. The Faction Change event may published
;    a series of events for each unique NPC: CA_CustomEvent_CaitLikes, CA_CustomEvent_CurieHates, 
;    etc... If those NPCs are near the player when the event is received, they react. If not, 
;    the event is ignored. These types of events often cause vocal commentary. Normally
;    they also cause an npc-specific message Notification to appear letting you know that a 
;    specific NPC has been affected by your choices/actions. (MessageBox mapping is 
;    handled by NPC's Affinity Data array)
;
; 3) Keyword based 
;
;    The NPC Specific events mentioned above are not the only keyword events. There
;    are also generic events for things like... moding your powerarmor. Keyward events 
;    cover a broad range of scenarios. 
;
;    Affinity events are mostly FIRED from the Followers::FollowersScript. Each event
;    has a keyword. They are then HANDLED by Actor::companionactorscript. All that matters 
;    is when a CAS based NPC gets the event, that they have a record in their AffinityData 
;    array with a matching keyword. (The keyword is used as a key). So for example, when 
;    you get into PowerArmor, The FollowerScript has subscribed to the event. So it gets it 
;    and then broadcasts a generalized KEYWORD event with the "CA_Event_EnterPowerArmor" 
;    keyword To every NPC with a CompanionactorScript attached.  Most NPCs will have a key 
;    for the event, however many will not reward you with affinity bonus. Most will just 
;    make a comment. 
;
;    The CompanionActorScripts do not store commentary. They ONLY store affinity data. 
;    Commentary is the responsibility of the calling object. Lets talk about that for 
;    a minute:
; 
;    Comments (audio) are stored/owned by quests. Many are stored on the Followers quest 
;    and each one has a keyword associated with it. Typically a condition also ensures only
;    1 NPC will speak the comment.  For example, the PowerArmor comment has the keyword
;    CAT_Event_EnterPowerArmor_Topic. The comment data (keywords) are pulled from 
;    an AffinityEvents Array on the FollowersScript. But not all. Just ones related to 
;    events that the FollowerScript deals with. (radiation damage, fall damage, lock picking, 
;    etc...) 
;
;    So if CompanionActorScript subscibes to Follower Quest::FollowersScript:AffinityEvent, 
;    how do other quest alter affinity?
;
;    The FollowerScript script on the Follower quest exposes the global method 
;    "SendAffinityEvent" which relays the provided data to the local script and then gets 
;    published to all the subscribers. This system allows pretty much any script from 
;    anywhere to fire affinity events. This is how NPC specific quests (Or main quests, etc..)
;    use the affinity system to push their NPCaffinity specific affinity changes that fall 
;    outside the broadscope of events that the FollowerScript handles. Commentary simply 
;    requires a a keyword mapped to a topic. 
;
; 4) Time Based:
;
;    Each Companion is attached to a CompanionActorScript. THese scripts automatically add
;    a certain amount of affinity every 10 minutes (real time) the NPC travels with the 
;    player. When the timer fires, the NPC receives a positive affinity boost. So if you 
;    stand there and do nothing, your relationship will still grow: The timers are kicked 
;    of by companion change events (When you ask someone to join or leave)
;
;    Affinitity                            Minutes
;    40     + (40 - (0.033 * 0))           10
;    78.68  + (40 - (0.033 * 78.68))       20
;    116.08 + (40 - (0.033 * 116.08))      30
;    152.24 + (40 - (0.033 * 152.24))      40
;    187.21 + (40 - (0.033 * 187.21))      50
;    221.03 + (40 - (0.033 * 221.03))      60
;    253.73 + (40 - (0.033 * 253.73))      70 ** Friendship
;    285.35 + (40 - (0.033 * 285.35))      80
;    315.93 + (40 - (0.033 * 315.93))      90
;    345.50 + (40 - (0.033 * 345.50))      100
;    374.09 + (40 - (0.033 * 374.09))      110
;    401.74 + (40 - (0.033 * 401.74))      120
;    428.48 + (40 - (0.033 * 428.48))      130
;    454.34 + (40 - (0.033 * 454.34))      140
;    479.34 + (40 - (0.033 * 479.34))      150
;    503.52                                160 ** Admiration
;
;    Technically, the boost isn't suppose to happen unless the player has gained
;    XP. However by default, XP sharing it turned on and followers also get an XP
;    boost based on time with player. So it is rare that the affinity boost doesn't
;    happen even when the player is standing still.
;
;    Even if that bug is fixed, I've personally spent 14 hours tweaking just a single 
;    settlement layout. You get XP for every piece you build. So if people take the 
;    time to create even 2 settlements on their own, most NPCs will adore them.


;==================================================================
; COMMENTARY NOTES:
;==================================================================
;    The game has at least 3 general systems that support commentary and then there are quest-specific
;    scenes. 
;
;    The Companion Affinity System (CA_) (mentioned above)
;    The "Attraction Object" System (AO_)
;    The "Companion Interaction System" (CIS_)
;
;    The affinity system is really about opinons and relationship status. But sometimes affinity changes
;    come with commentary and even scenes. As discussed above, the affinity system also handles a number
;    of player events and in that sense it tends to be more about PLAYERMONITORING than anything else. 
;
;    the AO_ system is driven by StoryManager Attraction Object Events. StoryManager kicks off the AO_COMMENT
;    Quest which uses a scene to make your follower potentially say something.  If the actor has an 
;    AO_TYPE keyword that matches the keyword of the attraction object, scripts will send a KEYWORD 
;    event to the actor. These events may get translated into actions (like Curie going to scan something)
;    or commentary.  These monitors run in parallel, so there is no way to coordinate the commentary... 
;    other than adding and removing the keywords from the actors, which is exactly what AFT does in the 
;    ROTATE Companion function below. However even that doesn't address AOT keywords (AO Comment UNIQUE), 
;    which are fired from some 170+ specific locations in the commonwealth. The AO_COMMENT_DIALOGUE quest 
;    subscribes to all of those events and relays them defines player dialogue handlers for all of them 
;
;    The Companion interaction system is probably the most advanced of the 3. It mostly deals with 
;    Story events, or more specificially, events you can't get from a player monitor. For example, 
;    the player will fire a location change event, but you dont know if it is a NEW location. Only
;    the story manager knows that. SM events are used to get your companions to talk and interaction
;    with other NPCs that are not the player. Finally, there are unusual events that fall under the
;    CIS umbrella because there is no where else to put them. For example, there is a CIS_ perk
;    added to the player that informs the CIS system when the player hovers over an item to 
;    interact (as there is no other way to catch that event). Technically not a storymanager
;    event, but something that falls out of the scope of the first two systems. 
;
;    Most CIS events are more memory efficient. The manager MOSTLY works off of story events and 
;    thus a quest fires, the commentary is made and then the quest stops. (Audio unloaded from 
;    memory). Unfortunately, there is no easy way to prevent NPCs from blurting out commentary
;    all at once... shy of registering for the quest startup and muting everyone but 1 NPC.
;    Which I would do... except most of the lines are SAY_ONCE... 
;
;    NOTE: if the quest  defines/provides the commentary, the QUEST must be loaded and 
;    running when the keyword is sent to the NPC (and the voicetype and all conditions must 
;    align, etc... ) or the commentary will not be spoken. There is lots of commentary in the 
;    game that is only valid while a specific;  quest is running. For example, all the comments 
;    between the husband and wife in the prologue are purged once the prologue quest completes. 
;    Sending those keywords to the player post-prlogue wont do anything.
;
;    The only way to MUTE someone is to make a custom voicetype and assign them to the voicetype. 
;    That will cause the commentary to fire but fail to make any noise as the voice type doesn't
;    match. Problem is, not all lines are repeating lines. This can lead to user frustration if 
;    important lines are missed because you had someone muted.  
;==================================================================

bool Function LocalSendAffinityEvent(scriptobject Sender, keyword EventKeyword, objectReference Target = None, \
                                     GlobalVariable EventSizeOverride = None, bool CheckCompanionProximity = true, \
									 bool ShouldSuppressComment = false, bool IsDialogueBump = false, float ResponseDelay = 1.0)
	Trace("LocalSendAffinityEvent")

	; The original game had a lock with no maxwait (infinite). I'm not confortable with that. The chosen limit
	; reflects an estimate of how long it will take all followers (max) to speak their lines. Most lines
	; are 3 to 5 seconds. So with 5 followers, you are looking at a 25 second buffer to allow the previous
	; affinity event to be spoken in sequence. If you get 3 affinity events at once, you need 50 seconds to let 5
	; followers speak 2 lines each (approx). 3 Simultaneous affinity events is all I handle (Common when 
	; taking everything from a WorkshopBench) 
	
	if ResponseDelay < 0
		ResponseDelay = 0
	elseif ResponseDelay > 30
		ResponseDelay = 30
	endif

	int maxwait = 125 + ((5.0 * ResponseDelay) as Int)
	while LockSendAffinityEvent	&& maxwait > 0
		utility.wait(0.2)
		maxwait -= 1
	endwhile	
	LockSendAffinityEvent = true
	if (0 == maxwait)
		Trace("LocalSendAffinityEvent lock timed out (safety)")
	endif	
	FollowersScript:AffinityEventData CurrentAffinityEventData
	CurrentAffinityEventData = FollowersScript.GetAffinityEventData(EventKeyword)
	if !CurrentAffinityEventData
		Trace("No AffinityEventData found for [" + EventKeyword + "]")
		LockSendAffinityEvent = false
		RETURN false
	endif
	if CurrentAffinityEventData.NextDayAllowed > Utility.GetCurrentGameTime()
		Trace("NOT sending event as CheckAffinityEventCooldown() == False. NextDayAllowed: " + CurrentAffinityEventData.NextDayAllowed + ". Current GameDaysPassed:" + Utility.GetCurrentGameTime())
		LockSendAffinityEvent = false
		RETURN false
	endif
	
	GlobalVariable CoolDown = CurrentAffinityEventData.CoolDownDays
	if CoolDown == CA_CoolDownDays_Immediate
		CoolDown = pTweak_CoolDownDays_Immediate
	elseif CoolDown == CA_CoolDownDays_Long
		CoolDown = pTweak_CoolDownDays_Long
	elseif CoolDown == CA_CoolDownDays_Medium
		CoolDown = pTweak_CoolDownDays_Medium
	elseif CoolDown == CA_CoolDownDays_Short
		CoolDown = pTweak_CoolDownDays_Short
	elseif (None == CoolDown)
		Trace("Warning: Cooldown is None. Using pTweak_CoolDownDays_Immediate")
		CoolDown = pTweak_CoolDownDays_Immediate
	else
		Trace("Warning: Cooldown is unrecognized (Modded value?) Bugs are possible.")
	endif
	
	if (EventKeyword == CA_Event_LootCorpse || EventKeyword == CA_Event_LootJunk || EventKeyword == CA_Event_LootPrewarItem || EventKeyword == CA_Event_LootEpicItem)
		; The condition above is big, but accessing local variables is 10X cheaper than globals. 
		if (1.0 == pTweakLimitLootComments.GetValue())
			Trace("Loot Event Detected and TweakLimitLootComments is True. Using Medium Cooldown timer")
			CoolDown = pTweak_CoolDownDays_Medium
		endif
	endif
	
	float NextDayAllowed = CoolDown.GetValue() + Utility.GetCurrentGameTime()
	Trace("NextDayAllowed for event = " + NextDayAllowed)
	CurrentAffinityEventData.NextDayAllowed = NextDayAllowed
	globalvariable EventSize
	if EventSizeOverride
		EventSize = EventSizeOverride
	else
		EventSize = CurrentAffinityEventData.EventSize
	endif
	ActorValue acupdate = CurrentAffinityEventData.AssociatedActorValue
	keyword    customTopic = None
	if ShouldSuppressComment == false
		customTopic = CurrentAffinityEventData.TopicSubType
	endif

	AffinityTalkManager(EventKeyword, EventSize, CheckCompanionProximity, acupdate, customTopic, IsDialogueBump, ResponseDelay, Target)
	LockSendAffinityEvent = false
	RETURN TRUE
EndFunction

int talkLimitTracker
Function AffinityTalkManager(keyword EventKeyword, GlobalVariable  EventSize, bool CheckCompanionProximity, \
                               actorvalue acupdate, keyword customTopic, Bool IsDialogueBump, \
                               float ResponseDelay, objectReference Target)
	
	Trace("AffinityTalkManager()")		
	Trace("Synchronous   : [" + CommentSynchronous_var + "]")
	
	; This code does two things.
	;
	; 1) It randomizes the starting position of our search for NPCs so
	;    that the same NPC doesn't aways begin the commentary chain
	;
	; 2) During our search for NPCs with comments, NPCs with nothing to 
	;    say dont count against the comment limit. So if your comment
	;    limit is 1, and the random NPC we happen to start searching
	;    on is not filled or has nothing to say, we keep searching 
	;    until all slots are checked or we reach the comment limit.
		
	Actor npc
	int limit = pTweakCommentLimit.GetValueInt()
	if limit < 1 || limit > 5
		limit = 5
	endIf
	talkLimitTracker = limit
	
	; int found = 0
	int slice = Utility.RandomInt(0, 4)	
	int i = slice
	
	while (i < 5)
		npc = companions[i].GetActorRef()
		if npc
			AffinityTalkHelper(npc, EventKeyword, EventSize, CheckCompanionProximity, acupdate, customTopic, IsDialogueBump, ResponseDelay, Target)		
		endIf
		i += 1
	endwhile
	int j = 0
	while (j < slice)
		npc = companions[j].GetActorRef()
		if npc
			AffinityTalkHelper(npc, EventKeyword, EventSize, CheckCompanionProximity, acupdate, customTopic, IsDialogueBump, ResponseDelay, Target)		
		endIf
		j += 1
	endWhile
	
EndFunction

Function AffinityTalkHelper(Actor npc, keyword EventKeyword, GlobalVariable  EventSize, \
                              Bool CheckCompanionProximity, actorvalue associatedActorValue, keyword CustomTopicKeyword, \ 
							  Bool IsDialogueBump, float ResponseDelay, objectReference Target)
	
	Trace("AffinityThreadHelper()")
	
	CompanionActorScript CAS = npc as CompanionActorScript
	if !CAS
		Trace("NPC is not CAS. Bailing...")
		; return false
		return
	endif

	bool NoDisapprove       = npc.IsInFaction(pTweakNoDisapprove)
	bool NoApprove          = npc.IsInFaction(pTweakNoApprove)
	bool NoNeutralComments  = npc.IsInFaction(pTweakNoCommentGeneral)
	bool NoPositiveComments = npc.IsInFaction(pTweakNoCommentApprove)
	bool NoNegativeComments = npc.IsInFaction(pTweakNoCommentDisapprove)
	bool ConvNegToPos 		= npc.IsInFaction(pTweakConvNegToPos)
	bool ConvPosToNeg 		= npc.IsInFaction(pTweakConvPosToNeg)
	
	Trace("  npc                     : [" + npc + "]")
	Trace("    NoDisapprove          : [" + NoDisapprove + "]")
	Trace("    NoApprove             : [" + NoApprove + "]")
	Trace("    NoNeutralComments     : [" + NoNeutralComments + "]")
	Trace("    NoPositiveComments    : [" + NoPositiveComments + "]")
	Trace("    NoNegativeComments    : [" + NoNegativeComments + "]")
	Trace("    ConvNegToPos          : [" + ConvNegToPos + "]")
	Trace("    ConvPosToNeg          : [" + ConvPosToNeg + "]")
	Trace("  EventKeyword            : [" + EventKeyword + "]")
	Trace("  EventSize               : [" + EventSize + "]")
	Trace("  CheckCompanionProximity : [" + CheckCompanionProximity + "]")
	Trace("  associatedActorValue    : [" + associatedActorValue + "]")
	Trace("  CustomTopicKeyword      : [" + CustomTopicKeyword + "]")
	Trace("  IsDialogueBump          : [" + IsDialogueBump + "]")
	Trace("  ResponseDelay           : [" + ResponseDelay + "]")
	Trace("  Target                  : [" + Target + "]")

	if npc.IsDead() ;just in case the event comes in after companion dies but before it's unregistered
		Trace("CasAffinityEvent() Companion is DEAD -- IGNORING EVENT")
		; return false
		return
	endif

	if !npc.IsInFaction(HasBeenCompanionFaction)
		Trace("CasAffinityEvent() Companion isn't in HasBeenCompanionFaction, IGNORING EVENT")
		; return false
		return
	endif


	if CheckCompanionProximity == true && npc.GetDistance(Game.GetPlayer()) > 2500
		Trace("CasAffinityEvent() Companion isn't nearby, IGNORING EVENT")
		; return false
		return
	endif

	float adjusted_reaction = 0 ; 0 = neutral. reaction > 0 = positive. reaction < 0 = negative
	bool  keywordchanged = false

	if NoDisapprove
		if EventKeyword == CAS.DislikesEvent
			adjusted_reaction          = -1.0
		endif 
		if EventKeyword == CAS.HatesEvent
			adjusted_reaction = -1.0
		endif
	endif
	if NoApprove
		if EventKeyword == CAS.LikesEvent
			adjusted_reaction = 1.0
		endif 
		if EventKeyword == CAS.LovesEvent
			adjusted_reaction = 1.0
		endif
	endif
	
	float original_reaction = adjusted_reaction

	; For these 4 special cases, we flip the Keyword...
	
	if EventKeyword == CAS.DislikesEvent
		if ConvNegToPos
			EventKeyword = CAS.LikesEvent
			keywordchanged = true
		endIf
	elseif EventKeyword == CAS.HatesEvent
		if ConvNegToPos
			EventKeyword = CAS.LovesEvent
			keywordchanged = true
		endIf
	elseif EventKeyword == CAS.LikesEvent
		if ConvPosToNeg
			EventKeyword = CAS.DislikesEvent
			keywordchanged = true
		endIf
	elseif EventKeyword == CAS.LovesEvent
		if ConvPosToNeg
			EventKeyword = CAS.HatesEvent
			keywordchanged = true
		endIf
	endif
	
	if IsDialogueBump					
		;set data for this Companion:		
		if EventKeyword == CAS.DislikesEvent
			if !NoNegativeComments
				CAS.SetLastDialogueBump(pFollowers.CA_DialogueBump_Dislike)
			endif
		elseif EventKeyword == CAS.HatesEvent
			if !NoNegativeComments
				CAS.SetLastDialogueBump(pFollowers.CA_DialogueBump_Hate)
			endif
		elseif EventKeyword == CAS.LikesEvent
			if !NoPositiveComments
				CAS.SetLastDialogueBump(pFollowers.CA_DialogueBump_Like)
			endif
		elseif EventKeyword == CAS.LovesEvent
			if !NoPositiveComments
				CAS.SetLastDialogueBump(pFollowers.CA_DialogueBump_Love)
			endif
		endif
	endif
	
	CompanionActorScript:EventData AffinityEventData = CAS.GetEventDataByKeyword(CAS.EventData_Array, EventKeyword)
	
	if !AffinityEventData ;not found
		Trace("CasAffinityEvent() did not find event keyword: " + EventKeyword + " this might be a 'comment only' type event")
		
		if NoDisapprove || NoApprove
			int i = CAS.TraitPreference_Array.FindStruct("Trait", associatedActorValue)
			if (i > -1)
				if CAS.TraitPreference_Array[i].Likes
					adjusted_reaction = 1
				else
					adjusted_reaction = -1
				endif
			else
				adjusted_reaction = 0
			endif
			original_reaction = adjusted_reaction
			Trace("Reaction to Trait [" + original_reaction + "]")		
		endif
		
		if (adjusted_reaction < 0)
			if ConvNegToPos
				if NoApprove
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = false")
					TryToSetTraitValuesInverse(CAS, associatedActorValue, EventSize, ShouldAlsoSetAffinity = false)
				else
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = true")
					TryToSetTraitValuesInverse(CAS, associatedActorValue, EventSize, ShouldAlsoSetAffinity = true)
				endif
			else
				if NoDisapprove
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = false")
					CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = false)
				else
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = true")
					CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = true)
				endif
			endif
		elseif (adjusted_reaction > 0)
			if ConvPosToNeg
				if NoDisapprove
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = false")
					TryToSetTraitValuesInverse(CAS, associatedActorValue, EventSize, ShouldAlsoSetAffinity = false)
				else
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = true")
					TryToSetTraitValuesInverse(CAS, associatedActorValue, EventSize, ShouldAlsoSetAffinity = true)
				endif			
			else
				if NoApprove
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = false")
					CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = false)
				else
					Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = true")
					CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = true)
				endif
			endif
		else ; 0 == adjusted_reaction
			Trace("Calling TryToSetTraitValues with ShouldAlsoSetAffinity = true")
			CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = true)
		endif
	else
	
		adjusted_reaction = CAS.GetAffinityModifyValue(AffinityEventData, EventSize)
						
		if (adjusted_reaction < 0)
		
			if !keywordchanged
				original_reaction = adjusted_reaction			
				if (ConvNegToPos)
					if NoApprove
						Trace("Appears to be positive (ConvNegToPos). Not allowing Affinity Change.")
					else
						Trace("Appears to be positive (ConvNegToPos). Allowing Affinity Change.")
						TryToModAffinityInverse(CAS, AffinityEventData, EventSize)
					endif
				else ; ConvPosToNeg does not apply to adjusted_reaction < 0
					if NoDisapprove
						Trace("Appears to be negative. Not allowing Affinity Change.")
					else
						Trace("Appears to be negative. Allowing Affinity Change.")
						CAS.TryToModAffinity(AffinityEventData, EventSize)
					endif
				endIf
			else ; implies ConvPosToNeg
				original_reaction = (adjusted_reaction * -1.0)
				if NoDisapprove
					Trace("Appears to be negative (ConvPosToNeg). Not allowing Affinity Change.")
				else
					Trace("Appears to be negative (ConvPosToNeg). Allowing Affinity Change.")
					; We dont use inverse functions here because the keyword was changed. Thus
					; the retrieved AffinityEventData should already have the correct settings
					CAS.TryToModAffinity(AffinityEventData, EventSize)
				endif
			endIf
			
			; OPTIMIZED, but also confusing...
			; if !keywordchanged && ConvNegToPos
			; 	if NoApprove
			; 		Trace("Appears to be positive (ConvNegToPos). Not allowing Affinity Change.")
			; 	else
			; 		Trace("Appears to be positive (ConvNegToPos). Allowing Affinity Change.")
			; 		TryToModAffinityInverse(CAS, AffinityEventData, EventSize)
			; 	endif
			; else
			;	if NoDisapprove
			; 		Trace("Appears to be negative. Not allowing Affinity Change.")
			; 	else
			; 		Trace("Appears to be negative. Allowing Affinity Change.")
			; 		CAS.TryToModAffinity(AffinityEventData, EventSize)
			; 	endif
			; endIf
								
		elseif (adjusted_reaction > 0)
		
			if !keywordchanged
				original_reaction = adjusted_reaction			
				if ConvPosToNeg
					if NoDisapprove
						Trace("Appears to be negative (ConvPosToNeg). Not allowing Affinity Change.")
					else
						Trace("Appears to be negative (ConvPosToNeg). Allowing Affinity Change.")
						TryToModAffinityInverse(CAS, AffinityEventData, EventSize)
					endif				
				else ; (!ConvPosToNeg && (ConvNegToPos || !ConvNegToPos)) = (!ConvPosToNeg && TRUE) = (!ConvPosToNeg)
					if NoApprove
						Trace("Appears to be positive. Not allowing Affinity Change.")
					else
						Trace("Appears to be positive. Allowing Affinity Change.")
						CAS.TryToModAffinity(AffinityEventData, EventSize)
					endif
				endif
			else ; keywordchanged ConvNegToPos {since adjusted_reaction is positive} = keywordchanged && ConvNegToPos
				original_reaction = (adjusted_reaction * -1.0)			
				if NoApprove
					Trace("Appears to be positive (ConvNegToPos). Not allowing Affinity Change.")
				else
					Trace("Appears to be positive (ConvNegToPos). Allowing Affinity Change.")
					; We dont use inverse functions here because the keyword was changed. Thus
					; the retrieved AffinityEventData should already have the correct settings
					CAS.TryToModAffinity(AffinityEventData, EventSize)
				endif
			endif

			; OPTIMIZED, but also confusing...
			; if !keywordchanged && ConvPosToNeg
			; 	if NoDisapprove
			; 		Trace("Appears to be negative (ConvPosToNeg). Not allowing Affinity Change.")
			; 	else
			; 		Trace("Appears to be negative (ConvPosToNeg). Allowing Affinity Change.")
			; 		TryToModAffinityInverse(CAS, AffinityEventData, EventSize)
			; 	endif				
			; else 
			;   ; Value is positive, so ConvNegToPos only factors into outcomes involving keywordchanged true
			;   ; (keywordchanged && ConvNegToPos) || (!keywordchanged && !ConvPosToNeg)
			;   ; NOT possible : keywordchanged && ConvPosToNeg (adjusted_reaction would be < 0)
			;   ; Duplicate    : keywordchanged && !ConvPosToNeg (Implies ConvNegToPos else keywordchanged would be false)
			; 	if NoApprove
			; 		Trace("Appears to be positive. Not allowing Affinity Change.")
			; 	else
			; 		Trace("Appears to be positive. Allowing Affinity Change.")
			; 		CAS.TryToModAffinity(AffinityEventData, EventSize)
			; 	endif
			; endif

			
		else ; 0 == adjusted_reaction
			original_reaction = adjusted_reaction
			Trace("Appears to be neutral (comment?) Allowing Affinity change attempt (incase we are wrong)")
			CAS.TryToModAffinity(AffinityEventData, EventSize)		
		endif
		
		; Event though this is less efficient, we stick with the original methods as much as possible
		; to limit conflicts
		CAS.TryToSetTraitValues(associatedActorValue, EventSize, ShouldAlsoSetAffinity = false)

		Utility.wait(ResponseDelay)
		
		if (adjusted_reaction < 0)
			if !keywordchanged
				original_reaction = adjusted_reaction
				if ConvNegToPos
					; When keywordchanged is false and Conversion flag raised, use inverse functions. 
					if NoApprove			
						Trace("Suppressing message as reaction is positive (ConvNegToPos)")
					else
						Trace("Showing positive (inverse negative) message (ConvNegToPos)")
						TryToShowMessageInverse(AffinityEventData)
					endIf
				else
					if NoDisapprove			
						Trace("Suppressing message as reaction is negative")
					else
						Trace("Showing negative message.")
						CAS.TryToShowMessage(AffinityEventData)
					endIf
				endIf
			else ; Implies ConvPosToNeg
				original_reaction = (adjusted_reaction * -1.0)
				if NoDisapprove			
					Trace("Suppressing message as reaction is negative (ConvPosToNeg)")
				else
					Trace("Showing negative message (ConvPosToNeg + keyword change).")
					CAS.TryToShowMessage(AffinityEventData)
				endIf
			endif
		elseif (adjusted_reaction > 0)
			if !keywordchanged
				original_reaction = adjusted_reaction
				if ConvPosToNeg
					; When keywordchanged is false and Conversion flag raised, use inverse functions. 
					if NoDisapprove			
						Trace("Suppressing message as reaction is negative (ConvPosToNeg)")
					else
						Trace("Showing negative (inverse positive) message (ConvPosToNeg)")
						TryToShowMessageInverse(AffinityEventData)
					endIf	
				else
					if NoApprove			
						Trace("Suppressing message as reaction is positive")
					else
						Trace("Showing positive message")
						CAS.TryToShowMessage(AffinityEventData)
					endIf
				endif				
			else ; implies ConvNegToPos
				original_reaction = (adjusted_reaction * -1.0)
				if NoApprove			
					Trace("Suppressing message as reaction is positive (ConvNegToPos)")
				else
					Trace("Showing positive message (ConvNegToPos + keyword change).")
					CAS.TryToShowMessage(AffinityEventData)
				endIf
			endif
		else ; 0 == reaction
			original_reaction = adjusted_reaction
			Trace("Showing neutral message (Will this ever happen?)")
			CAS.TryToShowMessage(AffinityEventData)			
		endif
	endif

	; Since we can't change the spoken audio, chat settings are based
	; original_reaction.  We automatically check settings to disable
	; "opposite" commentary when you turn on Conversion. Note that
	; when keyword changes occure, they are for 4 specific event
	; types that generally dont have spoken audio. 
	
	bool AttemptLine = true
	; bool SpokeLine   = true
	
	if (original_reaction < 0)
		if NoNegativeComments
			Trace("Skipping Spoken Line. Reaction is Neg and NoNegComments is toggled")
			AttemptLine = false
		endif
	elseif (original_reaction > 0)
		if (NoPositiveComments)
			Trace("Skipping Spoken Line. Reaction is Pos and NoPosComments is toggled")
			AttemptLine = false
		endif
	else ; 0 == original_reaction
		if (NoNeutralComments)
			Trace("Skipping Spoken Line. Reaction is Nuetral and NoNeutralComments is toggled")
			AttemptLine = false
		endif		
	endif
	
	if AttemptLine 
		if CustomTopicKeyword
			if npc.IsTalking() == false 
				if npc.IsInScene() == false
					if talkLimitTracker > 0
						talkLimitTracker -= 1
						Trace("Attempting to speak Line")
						CAS.TryToSayCustomTopic(CustomTopicKeyword, Target)
						; SpokeLine = true
						if (CommentSynchronous_var)
							Trace("Checking if NPC is talking")
							Utility.wait(1.0)
							if npc.IsTalking()
								Trace("Waiting for npc to stop talking")
								int maxwait = 20 ; 10 seconds
								while (npc.IsTalking() && maxwait > 0)
									Utility.wait(0.5)
									Trace("...")
									maxwait -= 1
								endwhile
							endif
							Trace("NPC Not talking. Returning.")
						endif
					else
						Trace("Skipping Spoken line: Comment Limit reached")														
					endif
				else
					Trace("Skipping Spoken line: NPC is in Scene")									
				endif
			else
				Trace("Skipping Spoken line: NPC is already Talking")				
			endif
		else
			Trace("Skipping Spoken line: CustomTopicKeyword is None")	
		endif
	else
		Trace("Skipping Spoken line: AttemptLine is false")
	endif
	
	; return SpokeLine
	
EndFunction

bool Function IsActorInLocationWhereMurderShouldBeIgnored(actor ActorToTest, Location[] LocationsToIgnoreMurderIn)

	Trace("IsActorInLocationWhereMurderShouldBeIgnored()")

	; A way to allow murder ignoring. We support this at a global level. Considered supporting
	; as an individual setting, but decided it was too unlikely that someone would want different
	; settings for different NPCs. If someone enables this setting, they probably want it across
	; the board so that no one complains when they do what they want. 
	
	if (1.0 == pTweakIgnoreMurder.GetValue())
		Trace("TweakIgnoreMurder murder enabled. Returning true")
		return true
	endIf
	
	Trace("TweakIgnoreMurder murder not enabled. Checking location")
	
	; Default implementation:
	int i = 0
	while (i < LocationsToIgnoreMurderIn.Length)
		if ActorToTest.IsInLocation(LocationsToIgnoreMurderIn[i])
			Trace("Actor is in location where murder should be ignored: " + ActorToTest + ", " + LocationsToIgnoreMurderIn[i])
			RETURN true
		endif
		i += 1
	endwhile
	RETURN false
		
EndFunction

float TraitPreferenceScaler = 1.0 ; Copy of variable from CompanionActorScript.psc
Function TryToSetTraitValuesInverse(CompanionActorScript CAS, actorValue TraitToFind, Globalvariable EventSize, bool ShouldAlsoSetAffinity = false) 
	Trace("TryToSetTraitValuesInverse()")
	Actor npc = CAS as Actor
	actorvalue Trait
	bool Likes
	int i = CAS.TraitPreference_Array.FindStruct("Trait", TraitToFind)
	if i > -1
		Trait = CAS.TraitPreference_Array[i].Trait
		Likes = CAS.TraitPreference_Array[i].Likes
		if Trait
			float Size = EventSize.GetValue()
			float newValue = npc.GetValue(Trait) + Size
			npc.SetValue(Trait, newValue)
			; Inverse implementation awards positive affinity for disliked traits and the reverse.
			if ShouldAlsoSetAffinity && Likes == false
				CAS.ModAffinity(Size * TraitPreferenceScaler)
			elseif ShouldAlsoSetAffinity && Likes == true
				CAS.ModAffinity( -Size * TraitPreferenceScaler)
			endif
		endif
	endif
EndFunction

Function TryToModAffinityInverse(CompanionActorScript CAS, CompanionActorScript:EventData EventDataToUse, Globalvariable EventSize)
	Trace("TryToModAffinityInverse()")
	
	;EventSize:
	;  CA_Size_Large (1.5)
	;  CA_Size_Normal (1) - this is the default
	;  CA_Size_Small (0.5)
	;  CA_Size_CommentOnly(0.0)

	float Modify_Value = CAS.GetAffinityModifyValue(EventDataToUse, EventSize)
		
	;assume 0.0 means don't mod affinity
	if Modify_Value == 0
		Trace("TryToModAffinityInverse() NOT modding affinity because Modify_Value == 0.0")
		return
	endif

	; inverse
	Modify_Value = (Modify_Value * -1.0)
	
	Trace("TryToModAffinityInverse():")
	Trace("Will ModAffinity() by: " + Modify_Value )
	
	CAS.ModAffinity(Modify_Value)

EndFunction

Function TryToShowMessageInverse(CompanionActorScript:EventData EventDataToUse)
	Trace("TryToShowMessageInverse()")

	Message RelatedMessage = EventDataToUse.Message_to_Display
	Message InverseMessage = None
		
	if RelatedMessage
		int index = pTweakLikeMessages.Find(RelatedMessage)
		if (index > -1)
			InverseMessage = pTweakDislikeMessages.GetAt(index) as Message
		endif
		if (index < 0)
			index = pTweakDislikeMessages.Find(RelatedMessage)
			if (index > -1)
				InverseMessage = pTweakLikeMessages.GetAt(index) as Message
			endIf
		endIf
		if (index < 0)
			index = pTweakLoveMessages.Find(RelatedMessage)
			if (index > -1)
				InverseMessage = pTweakHateMessages.GetAt(index) as Message
			endIf
		endIf
		if (index < 0)
			index = pTweakHateMessages.Find(RelatedMessage)
			if (index > -1)
				InverseMessage = pTweakLoveMessages.GetAt(index) as Message
			endIf
		endif
			
		if InverseMessage
			Trace("will call show() on: " + InverseMessage)
			InverseMessage.show()
				
			;If Companion Affinity Tutorial hasn't shown yet, show it
			if !Tutorial.GetStageDone(640)
				Tutorial.SetStage(640)
			endif				
		else
			Trace("Related message unsupported. No Inverse Found:" + EventDataToUse)
		endif			
	else
		Trace("No related Message in EventDataToUse:" + EventDataToUse)
	endif
endFunction


; If pSpinLock is true, let calling method release it. 
Function SetCompanion(Actor ActorToMakeCompanion, bool SetCompanion = true, bool FillCompanionAlias = true, bool SuppressDismissMessage = false, bool pSpinLock = false)

	trace("SetCompanion Called for [" + ActorToMakeCompanion + "]  (setcompanion = [" + SetCompanion + "])")
	
	if !ActorToMakeCompanion
		trace("SetCompanion Bailing : ActorToMakeCompanion is None")
		return
	endif

	if ActorToMakeCompanion.IsInFaction(pDisallowedCompanionFaction) == true
	
		; There is a bug/race condition in the original game where Curie is set to
		; follower after the operation.. but before the disallowed companion flag is 
		; removed.(Stage 600, COMCurieQuest). So... if the actor is Curie and that
		; quest is running and at stage 500, then we allow it through, even though
		; Curie is still technically disallowed.
		
		bool IgnoreSetCompanion = true
		if (ActorToMakeCompanion.GetActorBase() == Game.GetForm(0x00027686) as ActorBase)
			Quest ComCurieQuest = Game.GetForm(0x0016454E) as Quest
			if (ComCurieQuest && ComCurieQuest.IsRunning() && ComCurieQuest.GetStageDone(500))
				IgnoreSetCompanion = false
				AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
				if (pTweakFollowerScript != None)
					trace("Calling ImportTopicsForCompanion")
					pTweakFollowerScript.ImportTopicsForCompanion(ActorToMakeCompanion)
				else
					trace("Unable to cast TweakFollower to pTweakFollowerScript. Hello Restoration Failed.")
				endIf
			endif
		endif
		if IgnoreSetCompanion
			trace("SetCompanion Bailing : ActorToMakeCompanion is in faction DisallowedCompanionFaction")
			pTweakSetCompanionFail.Show()
			return
		else
			trace("Allowing DisallowedCompanion (Conditions appear correct)")			
		endif
	endif
	
	; Check for Dogmeat
	if (ActorToMakeCompanion.GetActorBase() == Game.GetForm(0x0001D15C) as ActorBase)
		trace("SetCompanion ActorToMakeCompanion is Dogmeat. Redirecting")
		SetDogmeatCompanion(ActorToMakeCompanion)
		return
	endif
	
	;bool bGotLock = false
	;if !pSpinLock
	;	; We ask nicely for the lock, but not getting it isn't going to stop us...
	;	trace("Requesting Spin Lock")
	;	bGotLock = GetSpinLock(pTweakMutexCompanions,5, "SetCompanion")
	;	trace("bGotLock [" + bGotLock + "]")
	;else
	;	trace("Not requesting spinlock as pSpinLock is already true: pSpinLock [" + pSpinLock + "] bGotLock [" + bGotLock + "]")		
	;endif
		
	if SetCompanion == false  
		if (FindAlias(ActorToMakeCompanion))
			;DismissCompanion(ActorToMakeCompanion, true, SuppressDismissMessage, (pSpinLock || bGotLock) )
			DismissCompanion(ActorToMakeCompanion, true, SuppressDismissMessage )
		endif
		; trace("Releasing SpinLock [" + bGotLock + "]")		
		; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "SetCompanion")
		return
	endIf

	; Check if we are already managing them:
	if (FindAlias(ActorToMakeCompanion))
		pTweakSetCompanionAlreadyManaged.Show()
		; trace("Releasing SpinLock [" + bGotLock + "]")		
		; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "SetCompanion")
		return
	endIf
	
	if !pTutorial.getStageDone(600)
		pTutorial.setStage(600)
	endif

	; Fix relationship if NPC hates player. (Forced to follow through AFT controller)
	CompanionActorScript CompanionActor = ActorToMakeCompanion as CompanionActorScript
	if CompanionActor
		float current_affinity = CompanionActor.GetValue(pFollowers.CA_Affinity)
		if current_affinity < 0
			;Reminder:ThresholdData_Array is ordered Highest to Lowest, and contains globalVariables
			int i = CompanionActor.ThresholdData_Array.length - 1  
			if current_affinity <= CompanionActor.ThresholdData_Array[i].Threshold_Global.GetValue()
				; TODO : Prompt
				trace("Resetting Affinity to Neutral. AFT does not allow companions to leave player based on affinity")
				float neutral_affinity = CompanionActor.StartingThreshold.getValue()
				CompanionActor.UnsetHasLeftPlayerPermanently()
				CompanionActor.SetValue(pFollowers.CA_Affinity, neutral_affinity)
			endif
		endif
	endif
	
	
	; NOTE: CurrentCompanionFaction managed by TweakSettings
	
	ReferenceAlias ref = FindFreeAlias()
	Actor pCompActorRef = pCompanion.GetActorReference()
	if (!ref)
		if (pCompActorRef)
			; Use pCompanion as the dismiss scene will use this NPC (before SetCompanion is fired)
			ref = FindAlias(pCompActorRef)
			Trace("Using pCompanion [" + pCompActorRef + "]")
		else
			ref = FindFilledAlias()
		endif
		if (!ref)
			Trace("Can not locate free or filled alias. Abandoning operation")
			; trace("Releasing SpinLock [" + bGotLock + "]")		
			; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "SetCompanion")
			return
		endIf
		; DismissCompanion(ref.GetActorReference(), true, false, (pSpinLock || bGotLock))
		DismissCompanion(ref.GetActorReference(), true, false)
	endIf

	; Known: Ref is pointing at an cleared/available slot
	
	; Test if Companion1 Slot Required:
	ActorBase ab = ActorToMakeCompanion.GetActorBase()
	if (ab == CompanionDeacon || ab == BoSPaladinDanse)
		; This is a companion that needs to be in Companion1 slot as to not
		; break Vertibird cutscenes...
		if (ref != pCompanion1)
			Actor c1 = pCompanion1.GetActorReference()
			if c1
				pCompanion1.Clear()
				ref.ForceRefTo(c1)
			endif
			ref = pCompanion1
		endif			
	endif
	
	ref.ForceRefTo(ActorToMakeCompanion)
	
	; v1.09 : Only change pCompanion if all previous followers were vanilla.
	if !pCompActorRef
		pCompanion.ForceRefTo(ActorToMakeCompanion)
	elseif (pCompActorRef.GetActorBase().GetFormID() < 0x01000000)
		pCompanion.ForceRefTo(ActorToMakeCompanion)			
	endif
			
	; trace("Releasing SpinLock [" + bGotLock + "]")
	; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "SetCompanion")
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)

	if ActorToMakeCompanion.IsInFaction(pDanversFaction)
		Trace("Adding As Non-Managed NPC")	
		ActorToMakeCompanion.AddToFaction(pCurrentCompanionFaction)
		if !ActorToMakeCompanion.HasKeyword(pTeammateReadyWeapon_DO)
			ActorToMakeCompanion.AddKeyword(pTeammateReadyWeapon_DO)
		endif
	elseif pTweakFollowerScript
		Trace("Attempting to Managed NPC")	
		; This should add them to the TweakFollowerFaction and add all of AFT's goodies.
		pTweakFollowerScript.EventFollowerRecruited(ActorToMakeCompanion)
		pTweakFollowerScript.EvaluateSynergy()		
	else
		Trace("Issue Casting TweakFollower Quest to TweakFollowerScript")	
	endif

	; UnManaged NPC support
	if !ActorToMakeCompanion.IsInFaction(pCurrentCompanionFaction)
		ActorToMakeCompanion.AddToFaction(pCurrentCompanionFaction)
	endif
	
	; I believe this is a relic from when they once were planning on supporting multiple 
	; followers. I say that because it is never cleaned up or used. Basically just acts
	; as a record of anyone who has EVER been a companion. It might also server to keep 
	; the NPC data persistent in memory.
	
	if pActiveCompanions.find(ActorToMakeCompanion) < 0
		pActiveCompanions.addRef(ActorToMakeCompanion)
	endif
	
	; This should Make Teammate, NPC not show up on VATS, etc...
	CompanionDataToggle(ref, true, canDoFavor = true) ;canDoFavor is param that forces the no-dialogue command mode
	
	;used primarily to conditionalize dialogue
	ActorToMakeCompanion.addToFaction(pHasBeenCompanionFaction)
	
	pFollowers.FollowerSetDistanceMedium(ActorToMakeCompanion)
	
	; Update actor values to trigger AI (See packages on Reference Aliases)
	FollowerFollow(ActorToMakeCompanion)
		
	; #Situational Awareness (Note: OnHitEVents not sent if Player is using GodMode)
	RegisterForHitEvent(Game.GetPlayer())
	pFollowers.SendCompanionChangeEvent(ActorToMakeCompanion, IsNowCompanion = True)
	
	; TODO : Make TWEAKSUPPORT Quest with scenes and dialogue to to handle Welcome Aboard conversations
	; and then send out the custom event for the follower change. 
	
	; Used by some quests/dialgoues to see if you have (at least 1) companion or not.
	pPlayerHasActiveCompanion.SetValue(1)
	
	; CompanionActorScript CompanionActor = ActorToMakeCompanion as CompanionActorScript
	; CAS Compatible NPCs only:
	if CompanionActor
		if CompanionActor.ShouldGivePlayerItems
			CompanionActor.StartHasItemTimer() 
		endif
	endif
	
	Utility.WaitMenuMode(2.0)
	
	WorkshopNPCScript    WNS = ActorToMakeCompanion as WorkshopNPCScript
	if WNS
		Actor npc = ActorToMakeCompanion
		Keyword workshopAllowCommand = Game.GetForm(0x0012818F) as Keyword
		Keyword workshopallowMove    = Game.GetForm(0x00128190) as Keyword
		Keyword workshopallowCaravan = Game.GetForm(0x0012818E) as Keyword
		npc.ResetKeyword(workshopAllowCommand)
		npc.ResetKeyword(workshopallowMove)
		npc.ResetKeyword(workshopallowCaravan)
		WNS.SetWorkshopStatus(false)

		Utility.WaitMenuMode(1.0)
		if npc.HasKeyword(workshopAllowCommand)
			trace("Has workshopAllowCommand. Removing")
			npc.RemoveKeyword(workshopAllowCommand)
		else
			trace("No workshopAllowCommand confirmed")
		endif
		if npc.HasKeyword(workshopallowMove)
			trace("Has workshopallowMove. Removing")
			npc.RemoveKeyword(workshopallowMove)
		else
			trace("No workshopallowMove confirmed")
		endif
		if npc.HasKeyword(workshopallowCaravan)
			trace("Has workshopallowCaravan. Removing")
			npc.RemoveKeyword(workshopallowCaravan)
		else
			trace("No workshopallowCaravan confirmed")
		endif
		if 0.0 != WNS.bCommandable
			trace("WNS.bCommandable incorrect. Setting to 0.0")
			WNS.bCommandable  = 0.0
		else
			trace("WNS.bCommandable is already 0.0")
		endif
		if 0.0 != WNS.bAllowCaravan
			trace("WNS.bAllowCaravan incorrect. Setting to 0.0")
			WNS.bAllowCaravan  = 0.0
		else
			trace("WNS.bAllowCaravan is already 0.0")
		endif
		if 0.0 != WNS.bAllowMove
			trace("WNS.bAllowMove incorrect. Setting to 0.0")
			WNS.bAllowMove  = 0.0
		else
			trace("WNS.bAllowMove is already 0.0")
		endif
		
		; Faction WorkshopNPCFaction   = Game.GetForm(0x000337F3) as Faction
		; if WorkshopNPCFaction
			; if npc.IsInFaction(WorkshopNPCFaction)
				; npc.RemoveFromFaction(WorkshopNPCFaction)
			; endif
		; endif
	endif
	
	
EndFunction

function SetDogmeatCompanion(Actor ActorToMakeCompanion = None)

	trace("SetDogmeatCompanion Called for [" + ActorToMakeCompanion + "]")

	if ActorToMakeCompanion == none
		ActorToMakeCompanion = Game.GetCommonProperties().DogmeatRef
	endif

	if ActorToMakeCompanion.IsInFaction(pDisallowedCompanionFaction) == true
		; TODO : Create release message
		pTweakSetCompanionFail.Show()
		return
	endif
	
	; Hi Joel! 
	if !pTutorial.getStageDone(602)
		pTutorial.setStage(602)
	endif
	
	; NOTE: CurrentCompanionFaction is managed by TweakSettings
	pDogmeatCompanion.ForceRefTo(ActorToMakeCompanion)
	
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if pTweakFollowerScript
		; This should add them to the TweakFollowerFaction and add all of AFT's goodies.
		pTweakFollowerScript.EventFollowerRecruited(ActorToMakeCompanion)
	else
		Trace("Issue Casting TweakFollower Quest to TweakFollowerScript")	
	endif

	; I believe this is a relic from when they once were planning on supporting multiple 
	; followers. I say that because it is never cleaned up or used. Basically just acts
	; as a record of anyone who has EVER been a companion. It might also server to keep 
	; the NPC data persistent in memory.
	
	if pActiveCompanions.find(ActorToMakeCompanion) < 0
		pActiveCompanions.addRef(ActorToMakeCompanion)
	endif
	
	; This should Make Teammate, NPC not show up on VATS, ignore friendly fire, etc...
	CompanionDataToggle(pDogmeatCompanion, true, canDoFavor = true, givePlayerXP = true) ;canDoFavor is param that forces the no-dialogue command mode
	
	;used primarily to conditionalize dialogue
	ActorToMakeCompanion.addToFaction(pHasBeenCompanionFaction)
	
	pFollowers.FollowerSetDistanceMedium(ActorToMakeCompanion)
	FollowerFollow(ActorToMakeCompanion)
	
	; Affinity and Situational awareness don't apply to dog since all it can do is bark.
	
	;start the AO dogmeat find story manager ping
	AOScript.GetScript().DogmeatLoading()

	;ADDED FOR SURVIVAL MODE - though it probably should have been in for the base game, no one apparently needed it until now
	pFollowers.SendCompanionChangeEvent(ActorToMakeCompanion, IsNowCompanion = True)

	; TODO : Make TWEAKSUPPORT Quest with scenes and dialogue to to handle Welcome Aboard conversations
	; and then send out the custom event for the follower change. 

	pPlayerHasActiveDogmeatCompanion.SetValue(1)

EndFunction

Function DismissCompanion(Actor CompanionToDismiss, bool ShowLocationAssignmentListIfAvailable = true, bool SuppressDismissMessage = false, bool pGotLock = false)

	Trace("DismissCompanion called for [" + CompanionToDismiss + "]")

	; Check for Dogmeat
	if CompanionToDismiss && CompanionToDismiss.GetActorBase() == Game.GetForm(0x0001D15C) as ActorBase ; Dogmeat Check
		DismissDogmeatCompanion(ShowLocationAssignmentListIfAvailable, SuppressDismissMessage)
		return
	endif
	
	; bool bGotLock = false
	; if (!pGotLock)
	;	bGotLock = GetSpinLock(pTweakMutexCompanions,20, "DismissCompanion")
	; endIf

	ReferenceAlias ref
	if (!CompanionToDismiss)
		trace("DismissCompanion - No Companion Specified. Picking Random")
		ref = FindFilledAlias()
		if ref
			CompanionToDismiss = ref.GetActorReference()
		else
			trace("DismissCompanion - No Companions found. Ignoring Call")
			; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "DismissCompanion")
			return
		endif				
	else
		ref = FindAlias(CompanionToDismiss) ; Doesn't check pCompanion
		if (!ref)
			if (CompanionToDismiss == pCompanion.GetActorReference())
				ref = pCompanion
			else
				trace("Specified Companion [" + CompanionToDismiss + "] not follower. Ignoring Call")
				; ReleaseSpinLock(pTweakMutexCompanions,bGotLock, "DismissCompanion")
				return
			endif
		endIf
	endif
	
	; Known : ref points to ReferenceAlias holding CompanionToDismiss	
		
	Actor npc = CompanionToDismiss
	RemoveKeywords(npc)

	; TODO : Should this come after pTweakFollowerScript.EventFollowerDismissed(npc). IE: Will that script
	;        deal with home assignement and CAS.HomeLocation? If so, the next block could be much smaller.
	
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if !pTweakFollowerScript
		Trace("Issue Casting TweakFollower Quest to TweakFollowerScript")
	endif
		
	location HomeLoc = None
	if pTweakFollowerScript
		HomeLoc = pTweakFollowerScript.GetHomeLoc(npc) ; May return NONE
	endif
		
	CompanionActorScript CAS = npc as CompanionActorScript
	if SuppressDismissMessage == false	
		if HomeLoc == NONE && ShowLocationAssignmentListIfAvailable
		
			; The only way this will happen is if AFT is uninstalled/Disabled as pTweakFollowerScript.GetHomeLoc() WILL Return
			; a LOCATION value...
			
			; New Verision (1.7.x) remembers your previous location and auto-hilights...yeah...
			if (CAS.AllowDismissToSettlements && (CAS.AllowDismissToSettlements.GetValue() > 0) && CAS.DismissCompanionSettlementKeywordList)
				Location previousLocation = NONE
				int previousWorkshopID = (CompanionToDismiss as WorkshopNPCScript).GetWorkshopID()
				if previousWorkshopID > -1
					WorkshopScript previousWorkshop = pWorkshopParent.GetWorkshop(previousWorkshopID)
					if previousWorkshop
						previousLocation = previousWorkshop.myLocation
					endif
				endif
				HomeLoc = CompanionToDismiss.OpenWorkshopSettlementMenuEx(akActionKW=pWorkshopParent.WorkshopAssignHomePermanentActor, aLocToHighlight=previousLocation, akIncludeKeywordList=CAS.DismissCompanionSettlementKeywordList)
			elseif pWorkshopParent.PlayerOwnsAWorkshop && (npc is WorkShopNPCScript)
				; Show location choice menu
				HomeLoc = pWorkshopParent.AddPermanentActorToWorkshopPlayerChoice(npc) ; May return NONE if player hits cancel
			endif
		endif
				
		if pTweakFollowerScript && HomeLoc == NONE
			HomeLoc = pTweakFollowerScript.GetHomeLoc(npc,1)
		endif
				
		; Scenarios : NPC is member of DanversFaction (Ignored by AFT), or AFT was at 
		; capacity and follower was imported as an "Unmanaged" follower. 
		
		if CAS && HomeLoc == NONE
			; This should never happen after AFT Default above is implemented
			HomeLoc = CAS.HomeLocation
		endif
				
		if HomeLoc
			AFT:TweakDismissScript pTweakDismissScript = pTweakDismiss as AFT:TweakDismissScript
			if pTweakDismissScript
				pTweakDismissScript.ShowDismiss(npc, HomeLoc)
			else
				pDismissMessageLocation.ForceLocationTo(HomeLoc)
				pFollowersCompanionDismissMessage.Show()
			endif			
		endif
				
	elseif (pTweakFollowerScript && HomeLoc == NONE)
	
		int previousWorkshopID = -1
		WorkshopNPCScript pWorkshopNPCScript = (CompanionToDismiss as WorkshopNPCScript)
		if (pWorkshopNPCScript)
			previousWorkshopID = pWorkshopNPCScript.GetWorkshopID()
		endif
		if (previousWorkshopID < 0)
			HomeLoc = pTweakFollowerScript.GetHomeLoc(npc,1)
		endif
		
	endif
	
	; Even if message was suppressed, it may have gotten picked up by AFT...
	if CAS && HomeLoc != None
		CAS.HomeLocation = HomeLoc
	endif
	
	; TODO : If sleeping, stop AI. 
	; if npc.IsUnconscious()
	;	npc.SetUnconscious(false)
	; endif
	
	; npc.RemoveFromFaction(pTweakWaitingFaction)			
	npc.SetValue(Game.GetCommonProperties().FollowerState, 0)

	; TODO : Inform TweakFollowerScript of the event
	;        I would do this with custom events, but I worry about events colliding from other mods.
	if pTweakFollowerScript
		pTweakFollowerScript.EventFollowerDismissed(npc)
	endif
			
	CompanionDataToggle(ref, false, false)
	npc.StopCombatAlarm()

	; Do compare before clear to avoid thread/mutex timing issues. 
	bool was_companion = false
	if pCompanion && pCompanion.GetActorReference()
		was_companion = (pCompanion.GetActorReference() == npc)
	endif
			
	ref.Clear()
	ref = FindFilledAlias()
	if (ref)
		; At least 1 companion is left...
		if (was_companion)
			pCompanion.ForceRefTo(ref.GetActorReference())
		endif
	else
		; No more companions left...
		pPlayerHasActiveCompanion.SetValue(0)
		if pCompanion
			pCompanion.Clear()
		endif
	endif	
	
	if npc.IsInFaction(pCurrentCompanionFaction)
		; UnManaged NPC support
		npc.RemoveFromFaction(pCurrentCompanionFaction)
	endif

	if npc.HasKeyword(pTeammateReadyWeapon_DO)
		; UnManaged NPC support
		npc.RemoveKeyword(pTeammateReadyWeapon_DO)
	endif
	
	if pTweakFollowerScript
		pTweakFollowerScript.EvaluateSynergy()
	endif
	
	
	; ReleaseSpinLock(pTweakMutexCompanions,bGotLock,"DismissCompanion")
	pFollowers.SendCompanionChangeEvent(npc, IsNowCompanion = False)						

	Utility.WaitMenuMode(2.0)
	
	WorkshopNPCScript    WNS = npc as WorkshopNPCScript
	if WNS	
		Keyword workshopAllowCommand = Game.GetForm(0x0012818F) as Keyword
		Keyword workshopallowMove    = Game.GetForm(0x00128190) as Keyword
		Keyword workshopallowCaravan = Game.GetForm(0x0012818E) as Keyword
		npc.ResetKeyword(workshopAllowCommand)
		npc.ResetKeyword(workshopallowMove)
		npc.ResetKeyword(workshopallowCaravan)
		WNS.SetWorkshopStatus(false)

		Utility.WaitMenuMode(1.0)
		if !npc.HasKeyword(workshopAllowCommand)
			trace("Missing workshopAllowCommand. Adding")
			npc.AddKeyword(workshopAllowCommand)
		else
			trace("Already has keyword workshopAllowCommand")
		endif
		if !npc.HasKeyword(workshopallowMove)
			trace("AMissing workshopallowMove. Adding")
			npc.AddKeyword(workshopallowMove)
		else
			trace("Already has keyword workshopallowMove")
		endif
		if !npc.HasKeyword(workshopallowCaravan)
			trace("Missing workshopallowCaravan. Adding")
			npc.AddKeyword(workshopallowCaravan)
		else
			trace("Already has keyword workshopallowCaravan")
		endif
		if 1.0 != WNS.bCommandable
			trace("WNS.bCommandable incorrect. Setting to 1.0")
			WNS.bCommandable  = 1.0
		else
			trace("WNS.bCommandable is already 1.0")
		endif
		if 1.0 != WNS.bAllowCaravan
			trace("WNS.bAllowCaravan incorrect. Setting to 1.0")
			WNS.bAllowCaravan  = 1.0
		else
			trace("WNS.bAllowCaravan is already 1.0")
		endif
		if 1.0 != WNS.bAllowMove
			trace("WNS.bAllowMove incorrect. Setting to 1.0")
			WNS.bAllowMove  = 1.0
		else
			trace("WNS.bAllowMove is already 1.0")
		endif
		
		; Faction WorkshopNPCFaction   = Game.GetForm(0x000337F3) as Faction
		; if WorkshopNPCFaction
			; trace("Adding to WorkshopNPCFaction")
			; if !npc.IsInFaction(WorkshopNPCFaction)
				; npc.AddToFaction(WorkshopNPCFaction)
			; endif
		; endif
		
	endif
			
endFunction

Function DismissDogmeatCompanion(bool ShowLocationAssignmentListIfAvailable = true, bool SuppressDismissMessage = false)

	Trace("DismissCompanion called()")
	Actor npc =  pDogmeatCompanion.GetActorReference()
	DogmeatActorScript DAS = npc as DogmeatActorScript

	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if !pTweakFollowerScript
		Trace("Issue Casting TweakFollower Quest to TweakFollowerScript")
	endif
	
	if DAS

		; TODO : Should this come after pTweakFollowerScript.EventFollowerDismissed(npc). IE: Will that script
		;        deal with home assignement and CAS.HomeLocation? If so, the next block could be much smaller.
		
		location HomeLoc = None
		if pTweakFollowerScript
			HomeLoc = pTweakFollowerScript.GetHomeLoc(npc) ; May return NONE
		endif

		if SuppressDismissMessage == false
		
			; See Developer Blog Day 11 issues: Main change is when you cancel on a settlement assignment
			; prompt, it will send companions to thier ORIGINAL home. (DogMeat = Red Rocket )

			if HomeLoc == NONE && showLocationAssignmentListIfAvailable && pWorkshopParent.PlayerOwnsAWorkshop
				; Show location choice menu
				HomeLoc = pWorkshopParent.AddPermanentActorToWorkshopPlayerChoice(npc) ; May return NONE if player hits cancel
			endif
				
			if pTweakFollowerScript && HomeLoc == NONE
				HomeLoc = pTweakFollowerScript.GetHomeLoc(npc,1)
			endif
				
			; This is a curtesy script incase of unexpected uninstall/decactivation. Make sure 
			; the CAS.HomeLocation is kept in sync with AFT's Homeloc
			if DAS && HomeLoc == NONE
				; This should never happen after AFT Default above is implemented
				HomeLoc = DAS.HomeLocation
			endif
				
			if HomeLoc
				pDismissMessageLocation.ForceLocationTo(HomeLoc)
				pFollowersDogmeatCompanionDismissMessage.Show()
			endif
			
		elseif (pTweakFollowerScript && HomeLoc == NONE)
			HomeLoc = pTweakFollowerScript.GetHomeLoc(npc,1)
		endif		
		
		if DAS && HomeLoc != None
			DAS.HomeLocation = HomeLoc
		endif

		
		; DAS.RemoveFromFaction(pTweakWaitingFaction)			
		DAS.SetValue(Game.GetCommonProperties().FollowerState, 0)

		pTweakFollowerScript.EventFollowerDismissed(DAS)			                 
		CompanionDataToggle(pDogmeatCompanion, false, false)
		DAS.StopCombatAlarm()

		pFollowers.SendCompanionChangeEvent((DAS as Actor), IsNowCompanion = False)			
		pPlayerHasActiveDogmeatCompanion.SetValue(0)
		pDogmeatCompanion.Clear()
		
	endif

EndFunction

Function TryToTeleportCompanion(ObjectReference TeleportDestinationRef, bool ShouldPlayTeleportInEffect = true, bool ShouldPlayTeleportOutEffect = true)
	
	; NOTES: This is mostly used by the final Fight sequence to teleport your companion around with you through the institute and onto the roof of that 
    ; high building. It is called TRY because the game realizes you may not actually have a companion. Typically both TryToTeleportCompanion and
	; TryToTeleportDogmeat are called with the  assumption that at least one will fail.
	
	; This will be the basis for AFT's own teleport script. Though Aft will decide whether to use the Effect and place companions in front of or behind
	; the played based on if the TeleportDestinationRef is NONE and the players relationship with the institute. 

	; TODO : Move this to pTweakFollowerScript.GetFollowersHelper(TeleportDestinationRef) and simply relay the message
	
	; TeleportActorScript : Extends Actor, adds OnLoad event handler that plays FX (Though spell cast on self) when model is loaded. 
	; The assumption was that the companion was not loaded and that MoveTo would cause the model to get loaded. This was incorrect and in fact
    ; the teleportOut below now includes an Is3DLoaded() check and only waits 5 seconds if that is the case.
	
	; 1.05 BUG FIX: 
	; With AFT, it is possible that the Actor does not have TeleportActorScript attached. So it is best not to rely on it.
	
	if (MQ302MassFusionDogmeatMarker == TeleportDestinationRef)
		Trace("Ignoring TryToTeleportCompanion as destination is DogMarker...()")
		ReferenceAlias[] followers = GetAllFollowers()
		int i = 0
		while (i != followers.length)
			Actor npc = followers[i].GetActorReference()
			npc.SetValue(MQ302Companion, 1)
			i += 1
		endwhile
		; Intentional. All 302 Stage handlers call TryToTeleportCompanion twice. 
		; Once with Dogmeat Marker and a second time with a Companion Marker.
		return 
	endif	
	
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	ReferenceAlias[] followers = GetAllFollowers()
	int i = 0
	while (i != followers.length)
	
		; GetAllFollowers will only return valid, safe values... No need for checks. 
		
		Actor npc = followers[i].GetActorReference()

		; If we try to move a follower too far away from the 
		; player while following, AI will cause them to 
		; teleport back to the player. So we must set them
		; to Wait....
		
		
		if (ShouldPlayTeleportOutEffect && npc.Is3DLoaded())
			FollowerWait(npc)
			TeleportActorScript TeleportActor = npc as TeleportActorScript
			if TeleportActor
				; Original implement did not use teleportOut(). Apparently is is/was buggy.
				TeleportActor.teleportIn()
			elseif pTweakFollowerScript
				pTweakFollowerScript.TeleportToHere(npc)
			else			
				game.Warning("FollowerScript: TeleportFollowers() actor doesn't have TeleportActorScript attached, can't play fx! " + TeleportDestinationRef)
			endif
			utility.wait(5)
		endif
		
		Trace("TryToTeleportCompanion: calling MoveTo()")
		npc.MoveTo(TeleportDestinationRef)
		
		if ShouldPlayTeleportInEffect
			TeleportActorScript TeleportActor = npc as TeleportActorScript
			if TeleportActor
				TeleportActor.teleportIn()
			elseif pTweakFollowerScript
				pTweakFollowerScript.TeleportToHere(npc)
			else
				game.Warning("FollowerScript: TeleportFollowers() actor doesn't have TeleportActorScript attached, can't play fx! " + TeleportDestinationRef)
			endif
		endif
		i += 1
	endwhile
	
endFunction

Function TryToTeleportDogmeat(ObjectReference TeleportDestinationRef, bool ShouldPlayTeleportInEffect = true, bool ShouldPlayTeleportOutEffect = true)
	; Ignored since TryToTeleportCompanion and TryToTeleportDogmeat are always used in pairs.
EndFunction


Function CompanionDataToggle(ReferenceAlias ref, bool toggleOn = true, bool canDoFavor = true, bool givePlayerXP = true, bool SetNotShowOnStealthMeter  = true)
	
	Trace("CompanionDataToggle Called()")
	
	Actor npc = ref.GetActorReference()
	if !npc
		Trace("TweakDFSCript : CompanionDataToggle : reference is None. Ignoring")
		return
	endIf
	
	; Now Handled By TweakFollower Alias TweakSettings script. 
	; We dont want to do it here so the script can take a snapshot of the original value
	; npc.IgnoreFriendlyHits(toggleOn) ; AFT Setting? (For Hardcore?)					
	
	npc.SetPlayerTeammate(toggleOn, canDoFavor, true)
	;cache the idle timer actor values
	ActorValue IdleChatterTimeMin = Game.GetCommonProperties().IdleChatterTimeMin
	ActorValue IdleChatterTimeMax = Game.GetCommonProperties().IdleChatterTimeMax

	CompanionActorScript CAS = npc as CompanionActorScript

	if toggleOn
		Trace("CompanionDataToggle : ToggleOn")
		if SetNotShowOnStealthMeter 
			npc.SetNotShowOnStealthMeter(true)
		endif

		;IDLE CHATTER - cache and set them
		; pFollowers.CachedIdleChatterTimeMin = npc.GetValue(IdleChatterTimeMin)
		; pFollowers.CachedIdleChatterTimeMax = npc.GetValue(IdleChatterTimeMax)
		; npc.SetValue(IdleChatterTimeMin, CompanionIdleChatterTimeMin)
		; npc.SetValue(IdleChatterTimeMax, CompanionIdleChatterTimeMax)
		
		npc.SetValue(IdleChatterTimeMin, pTweakIdleCooldownActiveMin.GetValue())
		npc.SetValue(IdleChatterTimeMax, pTweakIdleCooldownActiveMax.GetValue())


		if CAS
			;ADD KEYWORDS
			;we also add keywords directly on the Companion alias
			;this is for keywords that some but all companions should have
			;Example: playerCanStimpak should be added to human companions, but not robot ones 
			int i = 0
			while (i < CAS.KeywordsToAddWhileCurrentCompanion.length)
				npc.AddKeyword(CAS.KeywordsToAddWhileCurrentCompanion[i])			
				i += 1
			endwhile
		endif

		; TODO : OnHit should be handled by ReferenceAlias scripts. OnCombatStateChanged may need to move 
		; there as well IE: there is ONE CompanionActorScript. I dont know if all 5 companion events may 
		; get funnelled to the one instance causing threading issues. Not sure how the kernal divies it 
		; up or if My reference aliases will need uniquely named scripts as well. 

		if CAS
			RegisterForRemoteEvent(CAS, "OnCombatStateChanged")
		endif
		RegisterForHitEvent(ref)
		
		; We Prevent Fall Damage because we allow follower death and it sucks to 
		; lose a follower because they catchup on weapon draw and fall to their
		; death...
		if !npc.HasPerk(crNoFallDamage)
			npc.AddPerk(crNoFallDamage)
		endif
	else
		Trace("CompanionDataToggle : ToggleOff")
		npc.SetNotShowOnStealthMeter (false)

		;IDLE CHATTER - set them back
		
		; AFT: Enforce minimum range to prevent overtalking...
		; float CachedIdleChatterTimeMin = pFollowers.CachedIdleChatterTimeMin
		; float CachedIdleChatterTimeMax = pFollowers.CachedIdleChatterTimeMax
					
		npc.SetValue(IdleChatterTimeMin, pTweakIdleCooldownDismissedMin.GetValue())
		npc.SetValue(IdleChatterTimeMax, pTweakIdleCooldownDismissedMax.GetValue())

		if CAS
			;REMOVE KEYWORDS
			int i = 0
			while (i < CAS.KeywordsToAddWhileCurrentCompanion.length)
				npc.RemoveKeyword(CAS.KeywordsToAddWhileCurrentCompanion[i])			
				i += 1
			endwhile
		endif

		; TODO : Hit and Combat state management probably need to be re-worked. OnHit should
		; be handled by ReferenceAlias scripts. OnCombatStateChanged probably needs to move 
		; there as well and send a fake event to the actors CAS. IE: there is ONE CompanionActorScript
		; in the game. So all 5 companions events may get funnelled to the one instance causing 
		; threading issues. Not sure how the kernal divies it up or if My reference aliases will
		; need uniquely named scripts as well. 
		
		if CAS
			UnRegisterForRemoteEvent(CAS, "OnCombatStateChanged")
		endif
		UnregisterForAllHitEvents(ref)
		
		if npc.HasPerk(crNoFallDamage)
			npc.RemovePerk(crNoFallDamage)
		endif

	endif

EndFunction

Function FollowerFollow(Actor Follower)

	Trace("FollowerFollow called()")

	; TODO : If sleeping, stop AI. 
	; if npc.IsInFaction(pTweakForceSleep)
	;	npc.RemoveFromFaction(pTweakForceSleep)
	;	ObjectReference bedRoll = Game.FindClosestReferenceOfTypeFromRef(BedRollGround, npc, 100.0)
	;	if (bedroll)
	;		bedroll.DeleteWhenAble()
	;	endif			
	; endif

	if Follower.IsInFaction(pTweakHangoutFaction)
		Follower.RemoveFromFaction(pTweakHangoutFaction)
	endif
	Follower.SetValue(Game.GetCommonProperties().FollowerState, iFollower_Com_Follow.GetValue())

	; If the User as double enforce this by talking to the NPC and telling them to stay, the 
	; stay is enforced by a package that is linked to from areas we can't access. However, 
	; we can reset the AI...
		
	Follower.EvaluatePackage(abResetAI=true)

	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if pTweakFollowerScript
		pTweakFollowerScript.EventFollowerFollow(Follower)
	endif	
		
	Follower.EvaluatePackage()

EndFunction

Function FollowerWait(Actor Follower)

	Trace("FollowerWait called()")

	if Follower.IsInFaction(pTweakHangoutFaction)
		Follower.RemoveFromFaction(pTweakHangoutFaction)
	endif
	Follower.SetValue(Game.GetCommonProperties().FollowerState, iFollower_Com_Wait.GetValue())

	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if (pTweakFollowerScript)
		pTweakFollowerScript.EventFollowerWait(Follower)
	endif

	Follower.EvaluatePackage()
EndFunction

Function FollowerHangout(Actor Follower)

	; Hangout looks exactly like wait, except an extra faction is tacked on
	; to let the npc(s) idle...
	
	Trace("FollowerHangout called()")

	Follower.SetValue(Game.GetCommonProperties().FollowerState, iFollower_Com_Wait.GetValue())

	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	if (pTweakFollowerScript)
		pTweakFollowerScript.EventFollowerWait(Follower)
	endif
	
	Follower.AddToFaction(pTweakHangoutFaction)
	Follower.EvaluatePackage()
	
EndFunction

Function AddKeywords(Actor npc)
	if npc.IsInFaction(pTweakNoCommentGeneral)
		return
	endif
	if npc.HasKeywordInFormList(pTweakHumanoidKeywords)
		npc.AddKeyword(AO_Type_Bar)
	endif
	npc.AddKeyword(AO_Type_Comment_128)
	npc.AddKeyword(AO_Type_Comment_256)
	npc.AddKeyword(AO_Type_Comment_512)
	npc.AddKeyword(AO_Type_Comment_1024)
EndFunction

Function RemoveKeywords(Actor npc)
	if npc.HasKeywordInFormList(pTweakHumanoidKeywords)
		npc.RemoveKeyword(AO_Type_Bar)
	endif
	npc.RemoveKeyword(AO_Type_Comment_128)
	npc.RemoveKeyword(AO_Type_Comment_256)
	npc.RemoveKeyword(AO_Type_Comment_512)
	npc.RemoveKeyword(AO_Type_Comment_1024)
EndFunction

; FUN....
; static markerToDrop = Game.GetFormFromFile(0x0003180C, "Fallout4.esm") as Static ; Red Flag
; playerRef.placeAtMe(markerToDrop)

; ********************************************************************************
; ************************        ALIAS MANAGEMENT     ***************************
; ********************************************************************************

Function RotateCompanion()

	Trace("RotateCompanion Called")

	; This gets called every 15 seconds or so to make sure the COMPANION alias
	; isn't always the same (Adds scene/discussion/comment diversity). I would
	; protect companion assignment with a mutex, but this is the only method
	; that changes it. 
	
	; We make no assumption. pCompanion may be empty even though the companion
    ; aliases have values. 	
		
	bool  next_hit     = false
	Actor first_filled = None
	Actor current      = pCompanion.GetActorReference()
	
	Actor p1 = pCompanion1.GetActorReference()
	if (p1)
		if !current
			Trace("p1 [" + p1.GetFactionRank(pTweakFollowerFaction) + "][" + p1.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p1)
			AddKeywords(p1)
			return
		endIf
		first_filled = p1
		if (p1 == current)
			next_hit = true
		endif		
	endIf

	Actor p2 = pCompanion2.GetActorReference()
	if (p2)
		if !current
			Trace("p2 [" + p2.GetFactionRank(pTweakFollowerFaction) + "][" + p2.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p2)
			AddKeywords(p2)
			return
		endIf
		if next_hit
			RemoveKeywords(current)
			Trace("p2 [" + p2.GetFactionRank(pTweakFollowerFaction) + "][" + p2.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p2)
			AddKeywords(p2)
			return
		endif
		if !first_filled
			first_filled = p2
		endif
		if (p2 == current)
			next_hit = true
		endif
	endif
	
	Actor p3 = pCompanion3.GetActorReference()
	if (p3)
		if !current
			Trace("p3 [" + p3.GetFactionRank(pTweakFollowerFaction) + "][" + p3.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p3)
			AddKeywords(p3)
			return
		endIf
		if next_hit
			RemoveKeywords(current)
			Trace("p3 [" + p3.GetFactionRank(pTweakFollowerFaction) + "][" + p3.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p3)
			AddKeywords(p3)
			return
		endif
		if !first_filled
			first_filled = p3
		endif
		if (p3 == current)
			next_hit = true
		endif
	endif

	Actor p4 = pCompanion4.GetActorReference()
	if (p4)
		if !current
			Trace("p4 [" + p4.GetFactionRank(pTweakFollowerFaction) + "][" + p4.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p4)
			AddKeywords(p4)
			return
		endIf
		if next_hit
			RemoveKeywords(current)
			Trace("p4 [" + p4.GetFactionRank(pTweakFollowerFaction) + "][" + p4.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p4)
			AddKeywords(p4)
			return
		endif
		if !first_filled
			first_filled = p4
		endif
		if (p4 == current)
			next_hit = true
		endif
	endif

	Actor p5 = pCompanion5.GetActorReference()
	if (p5)
		if !current
			Trace("p5 [" + p5.GetFactionRank(pTweakFollowerFaction) + "][" + p5.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p5)
			AddKeywords(p5)
			return
		endIf
		if next_hit
			RemoveKeywords(current)
			Trace("p5 [" + p5.GetFactionRank(pTweakFollowerFaction) + "][" + p5.GetFactionRank(pTweakNamesFaction) + "]")
			pCompanion.ForceRefTo(p5)
			AddKeywords(p5)
			return
		endif
		if !first_filled
			first_filled = p5
		endif
		if (p5 == current)
			next_hit = true
		endif
	endif
	
	if !current
		; Scenario : All aliases AND pCompanion are empty
		return
	endif

	; Assertion : first_filled should have a value. If current was not empty, then pCompanion 
	;             should be at least 1 of the filled aliases...
	; Assertion : next_hit should be true. If it was false that would mean that 
	;             the companion pointer is pointing at someone not in our list of
	;             5 companions.
	
	if (!first_filled || !next_hit)
		Trace("p? [None]")	
		pCompanion.Clear()
		return
	endif
	
	; If we get here (next_hit is true), it means the Companion alias is pointing
	; at the last item in the list. If it is also the first_filled alias, then you
	; can deduce the list has only 1 alias and pCompanion is already pointing at it
	; (Nothing to rotate to)
	
	if (first_filled == current)
		Trace("pF: NoOp")	
		return
	endif

	Trace("pF [" + first_filled.GetFactionRank(pTweakFollowerFaction) + "][" + first_filled.GetFactionRank(pTweakNamesFaction) + "]")	
	pCompanion.ForceRefTo(first_filled)
	
EndFunction


;Function SwapAlias(int offset1, int offset2)
;
;	ReferenceAlias[] all    = new ReferenceAlias[5]
;
;	all[0] = pCompanion1
;	all[1] = pCompanion2
;	all[2] = pCompanion3
;	all[3] = pCompanion4
;	all[4] = pCompanion5
;	
;	if !(all[offset1] && all[offset1].GetActorRef())
;		if (all[offset2] && all[offset2].GetActorRef())
;			Actor swap2 = all[offset2].GetActorRef()
;			all[offset1].ForceRefTo(swap2)
;			all[offset2].Clear()
;		; else
;		;   do nothing
;		endif
;	elseif !(all[offset2] && all[offset2].GetActorRef())
;		Actor swap1 = all[offset1].GetActorRef()
;		all[offset2].ForceRefTo(swap1)
;		all[offset1].Clear()
;	else
;		Actor swap1 = all[offset1].GetActorRef()
;		Actor swap2 = all[offset2].GetActorRef()
;		all[offset1].Clear()
;		all[offset1].ForceRefTo(swap2)
;		all[offset2].Clear()
;		all[offset2].ForceRefTo(swap1)
;	endif	
;
;endFunction

; Remove gaps and return total count of filled aliases
;int Function CompactAliases()
;
;	ReferenceAlias[] all = new ReferenceAlias[5]
;
;	all[0] = pCompanion1
;	all[1] = pCompanion2
;	all[2] = pCompanion3
;	all[3] = pCompanion4
;	all[4] = pCompanion5
;
;	int count       = 0
;	int i           = 0
;	
;	while (i != all.length)
;		if (all[i] && all[i].GetActorRef())
;			if (count != i)
;				; Confirm empty alias
;				if !(all[count] && all[count].GetActorRef())
;					Actor swap = all[i].GetActorRef()
;					all[i].Clear()
;					all[count].ForceRefTo(swap)
;				endIf
;			endif
;			count += 1
;		endif
;		i = i + 1
;	endWhile
;	
;	return count
;	
;endFunction

ReferenceAlias Function FindAliasByFormID(int id)
	return FindAliasByActorBase(Game.GetForm(id) as ActorBase)
endFunction

ReferenceAlias Function FindAliasByActorBase(ActorBase base)
	if !base
		return None
	endif
	Actor npc = pCompanion1.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pCompanion1
	endIf
	npc = pCompanion2.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pCompanion2
	endIf
	npc = pCompanion3.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pCompanion3
	endIf
	npc = pCompanion4.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pCompanion4
	endIf
	npc = pCompanion5.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pCompanion5
	endIf
	npc = pDogmeatCompanion.GetActorRef()
	if (npc && npc.GetActorBase() == base)
		return pDogmeatCompanion
	endIf
	return None
endFunction

ReferenceAlias Function FindAlias(Actor npc)
	if (!npc)
		return None
	endif
	if (pCompanion1.GetActorRef() == npc)
		return pCompanion1
	elseif (pCompanion2.GetActorRef() == npc)
		return pCompanion2
	elseif (pCompanion3.GetActorRef() == npc)
		return pCompanion3
	elseif (pCompanion4.GetActorRef() == npc)
		return pCompanion4
	elseif (pCompanion5.GetActorRef() == npc)
		return pCompanion5
	elseif (pDogmeatCompanion.GetActorRef() == npc)
		return pDogmeatCompanion
	endif
	return None
endFunction

int Function CountFilledAliases()
	int ret = 0
	if (pCompanion1.GetActorRef())
		ret += 1
	endIf
	if (pCompanion2.GetActorRef())
		ret += 1
	endIf
	if (pCompanion3.GetActorRef())
		ret += 1
	endIf
	if (pCompanion4.GetActorRef())
		ret += 1
	endIf
	if (pCompanion5.GetActorRef())
		ret += 1
	endif
	return ret
endFunction

ReferenceAlias Function FindFreeAlias()
	; Need to find this many free aliases before we can return...
	int min_needed = (5 - pTweakFollowerLimit.GetValueInt())
	int free_found = 0

	if (!pCompanion1.GetReference())
		if (free_found == min_needed)
			return pCompanion1
		endif
		free_found += 1
	endIf
	if (!pCompanion2.GetReference())
		if (free_found == min_needed)
			return pCompanion2
		endif
		free_found += 1
	endIf
	if (!pCompanion3.GetReference())
		if (free_found == min_needed)
			return pCompanion3
		endif
		free_found += 1
	endIf
	if (!pCompanion4.GetReference())
		if (free_found == min_needed)
			return pCompanion4
		endif
		free_found += 1
	endIf
	if (!pCompanion5.GetReference())
		if (free_found == min_needed)
			return pCompanion5
		endif
	endIf
	return None	
endFunction

ReferenceAlias Function FindFilledAlias()
	if (pCompanion1.GetReference())
		return pCompanion1
	elseif (pCompanion2.GetReference())
		return pCompanion2
	elseif (pCompanion3.GetReference())
		return pCompanion3
	elseif (pCompanion4.GetReference())
		return pCompanion4
	elseif (pCompanion5.GetReference())
		return pCompanion5
	endIf
	return None	
endFunction

; Used locally only (for now)
ReferenceAlias[] Function GetAllFollowers(Bool raw = False, Bool excludeDog=False, Bool onlyNotWaiting=False)

	ReferenceAlias[] all = new ReferenceAlias[0]
	all.Add(pCompanion1)
	all.Add(pCompanion2)
	all.Add(pCompanion3)
	all.Add(pCompanion4)
	all.Add(pCompanion5)
	all.Add(pDogmeatCompanion)

	if (raw)
		return all
	endif

	ReferenceAlias[] ret = new ReferenceAlias[0]
	int count = 0

	int i = 0
	while (i != all.length)
		if (all[i].GetActorRef() && !all[i].GetActorRef().IsDead())
			if (!excludeDog || ( all[i] != pDogmeatCompanion))
				if (!onlyNotWaiting || ( all[i].GetActorRef().GetValue(Game.GetCommonProperties().FollowerState) == iFollower_Com_Wait.GetValue()))
					ret.Add(all[i])
				endif
			endif
		endif
		i = i + 1
	endWhile
	return ret
	
endFunction

; NOTE: OnPlayerSleepStart always reliably fires. However OnPlayerSleepStop does not always reliably 
; fire. If OnPlayerSleepStart has not returned by the time OnPlayerSleepStop is ready to fire, the
; event never arrives. So we have to be efficient AND we need a backup...
Event OnPlayerSleepStart(float afSleepStartTime, float afDesiredSleepEndTime, ObjectReference akBed)
	Trace("OnPlayerSleepStart()")	
	
	Actor[] InfatuatedFollowers = GetInfatuatedFollowers()
	if (!InfatuatedFollowers)
		return
	endIf
		
	Actor RomanticOne = InfatuatedFollowers[0]
	Trace("OnPlayerSleepStart : Using " + RomanticOne)
	
	RomanticOne.AddKeyword(FollowersCompanionSleepNearPlayerFlag)
	pSleepCompanionBed.ForceRefTo(akBed)
	pSleepCompanion.ForceRefTo(RomanticOne)
	RomanticOne.SetPosition(akBed.X,akBed.Y,akBed.Z)

	if (RomanticOne.IsInFaction(pTweakCombatOutFitFaction) || RomanticOne.IsInFaction(pTweakCampOutFitFaction) || RomanticOne.IsInFaction(pTweakCityOutFaction) || RomanticOne.IsInFaction(pTweakStandardOutFitFaction))
		RomanticOne.UnequipAll()
	endif
		
	RomanticOne.SnapIntoInteraction(akBed)	
	RomanticOne.EvaluatePackage()
	
	if (1 == InfatuatedFollowers.length)
		StartTimer(24,TIMER_PLAYER_WAKEUP)
		return
	endif
	
	Actor RomanticTwo = InfatuatedFollowers[1]
	Trace("OnPlayerSleepStart : Using " + RomanticTwo)
			
	RomanticTwo.AddKeyword(FollowersCompanionSleepNearPlayerFlag)
	pSleepCompanion2.ForceRefTo(RomanticTwo)
	RomanticTwo.SetPosition(akBed.X,akBed.Y,akBed.Z)

	if (RomanticTwo.IsInFaction(pTweakCombatOutFitFaction) || RomanticTwo.IsInFaction(pTweakCampOutFitFaction) || RomanticTwo.IsInFaction(pTweakCityOutFaction) || RomanticTwo.IsInFaction(pTweakStandardOutFitFaction))
		RomanticTwo.UnequipAll()
	endif
	
	Keyword AnimFurnNPC2        = Game.GetForm(0x0019EDD9) as Keyword
	RomanticTwo.AddKeyword(AnimFurnNPC2)	
	; Utility.WaitMenuMode(0.03)
	; RomanticOne.SnapIntoInteraction(akBed)	
	RomanticTwo.EvaluatePackage()
	StartTimer(24,TIMER_PLAYER_WAKEUP)
EndEvent

Event OnPlayerSleepStop(bool abInterrupted, ObjectReference akBed)
	StartTimer(0,TIMER_PLAYER_WAKEUP)
EndEvent

Function OnPlayerSleepEnd()
	Actor PlayerRef = Game.GetPlayer()
	Actor RomanticOne = pSleepCompanion.GetActorReference()
	AFT:TweakFollowerScript pTweakFollowerScript = (pTweakFollower as AFT:TweakFollowerScript)
	
	bool alreadycast = false
	if (RomanticOne)
		Trace("OnPlayerSleepStop : Using " + RomanticOne)
		LoversEmbracePerkSpell.Cast(PlayerRef, PlayerRef)
		alreadycast = true
		RomanticOne.RemoveKeyword(FollowersCompanionSleepNearPlayerFlag)
	endif
	pSleepCompanion.Clear()		;make the actor "wake up" (if assigned)
	if (RomanticOne)
		Utility.wait(3.5) ; Give them time to start talking
		if RomanticOne.IsTalking()
			int maxwait = 20
			while (RomanticOne.IsTalking() && maxwait > 0)
				Trace("Waiting for companion to stop talking...")
				Utility.wait(0.5)
				maxwait -= 1
			endwhile
		endif
		if (pTweakFollowerScript)
			pTweakFollowerScript.RestoreTweakOutfit(RomanticOne)
		endif
		RomanticOne.EvaluatePackage() ; So they don't crawl back into bed...
	endif	
	Actor RomanticTwo = pSleepCompanion2.GetActorReference()
	if (RomanticTwo)
		Trace("OnPlayerSleepStop : Using " + RomanticTwo)
		if (!alreadycast)
			LoversEmbracePerkSpell.Cast(PlayerRef, PlayerRef)
		endif
		RomanticTwo.RemoveKeyword(FollowersCompanionSleepNearPlayerFlag)
		Keyword AnimFurnNPC2        = Game.GetForm(0x0019EDD9) as Keyword
		RomanticTwo.RemoveKeyword(AnimFurnNPC2)			
	endIf
	pSleepCompanion2.Clear()		;make the actor "wake up" (if assigned)
	if (RomanticTwo)
		Utility.wait(3.5) ; Give them time to start talking
		if RomanticTwo.IsTalking()
			int maxwait = 20
			while (RomanticTwo.IsTalking() && maxwait > 0)
				Trace("Waiting for companion to stop talking...")
				Utility.wait(0.5)
				maxwait -= 1
			endwhile
		endif
		if (pTweakFollowerScript)
			pTweakFollowerScript.RestoreTweakOutfit(RomanticTwo)
		endif
		RomanticTwo.EvaluatePackage()  ; So they don't crawl back into bed...
	endIf
	pSleepCompanionBed.clear()
EndFunction

actor[] Function GetInfatuatedFollowers()
	Trace("GetInfatuatedFollowers()")
	
	Actor[] InfatuatedFollowers = new Actor[0]
	int limit = 2
	CompanionActorScript CompanionActor	
	Actor npc
	
	int found = 0
	int startSearch = Utility.RandomInt(0, 4)	
	int i = startSearch
	
	while (i < 5 && limit != found)
		npc = companions[i].GetActorRef()
		if npc
			CompanionActor = (npc as CompanionActorScript)
			if (CompanionActor && CompanionActor.IsInfatuated() && CompanionActor.IsRomantic() && npc.Is3DLoaded() && !npc.IsInfaction(pTweakPosedFaction) && !npc.WornHasKeyword(pArmorTypePower))
				InfatuatedFollowers.Add(npc)
				found += 1
			endIf
		endIf
		i += 1
	endwhile
	if (limit == found)
		return InfatuatedFollowers
	endif
	i = 0
	while (i < startSearch && limit != found)
		npc = companions[i].GetActorRef()
		if npc
			CompanionActor = (npc as CompanionActorScript)
			if (CompanionActor && CompanionActor.IsInfatuated() && CompanionActor.IsRomantic() && npc.Is3DLoaded() && !npc.IsInfaction(pTweakPosedFaction) && !npc.WornHasKeyword(pArmorTypePower))
				InfatuatedFollowers.Add(npc)
				found += 1
			endIf
		endIf
		i += 1
	endWhile	
	return InfatuatedFollowers
	
EndFunction

Function FlagCompanionChatEventOverride(actorvalue ActorValueRepresentingEvent) global
			
	trace_("FlagCompanionChatEventOverride() - Called")
	Quest selfQuest = Game.GetFormFromFile(0x000289E4, "Fallout4.esm") as Quest	
	if selfQuest	
		AFT:TweakDFScript this = (selfQuest as AFT:TweakDFScript)
		if this
		
			; ============================================================
			; HANDLE EVENT INTERCEPTS FOR BUGS AND CLEANUP:
			; ============================================================
			
			int acreID = ActorValueRepresentingEvent.GetFormID()		
			if (0x002488CC == acreID )
			
				; ==== COMQC_MQ106KelloggDeadAV (Kellog Just Died)
				;  PIPERNICK BUGFIX P1: If both Piper and Nick are following the player, 
				;  need to dismiss Piper As talking to her within FortHagen after talking 
				;  to Nick can break BOS arrival.

				trace_("FlagCompanionChatEventOverride() - COMQC_MQ106KelloggDeadAV Detected")
				ReferenceAlias NickRef = this.FindAliasByFormID(0x00002F24)
				if NickRef
					ReferenceAlias PiperRef = this.FindAliasByFormID(0x00002F1E)
					if PiperRef
						trace_("FlagCompanionChatEventOverride - Nick and Piper detected.")
						Actor Piper = PiperRef.GetActorReference()
						trace_("FlagCompanionChatEventOverride - Dismissing Piper")
						this.DismissCompanion(Piper, false, true)
						trace_("FlagCompanionChatEventOverride - Moving Piper")					
						Piper.MoveTo(this.MQ201BPiperTravelMarker02)
						Piper.EvaluatePackage()
						; Remember what we did:
						Piper.SetValue(ActorValueRepresentingEvent, 10)
						this.pTweakPiperRemoved.Show()
						Utility.wait(0.1)
					endIf
					Utility.wait(0.1)
				endIf
				
				Quest TweakCOMSpouse = Game.GetFormFromFile(0x0104529E,"AmazingFollowerTweaks.esp") as Quest
				if TweakCOMSpouse
					ReferenceAlias Spouse = (TweakCOMSpouse.GetAlias(8) as ReferenceAlias)
					if Spouse
						Actor theSpouse = Spouse.GetActorReference()
						if theSpouse && !theSpouse.IsDead()
							ReferenceAlias SpouseRef = this.FindAliasByActorBase(theSpouse.GetActorBase())
							if (SpouseRef)
								; Have them speak line:
								if (1 == theSpouse.GetActorBase().GetSex())
									; Female
									Topic theTopic = Game.GetForm(0x001364BF) as Topic
									if theTopic
										Utility.wait(2.5)
										trace_("Saying: Good Riddance")
										theSpouse.Say(theTopic, theSpouse, false, None)
									else
										trace_("Topic Cast failure for Good Riddance Line")
									endif
								else
									; Male
									Topic theTopic = Game.GetForm(0x00136475) as Topic
									if theTopic
										Utility.wait(2.5)
										trace_("Saying: Good Riddance")
										theSpouse.Say(theTopic, theSpouse, false, None)
									else
										trace_("Topic Cast failure for Good Riddance Line")
									endif									
								endif
							endif
						endif
					endif
				endif
			elseif (0x002488CD == acreID)
			
				; ==== COMQC_MQ201PrydwenArrivedAV    (See Prydwen Arrive)
				; PIPERNICK BUGFIX P2: If both Piper and Nick are following the player
				; when kellog is killed, we dismissed Piper to prevent a bug. To make
				; life easier for players (So they dont have to return to D-CITY), 
				; we add her back when they exit Fort Hagen. We also re-add Nick 
				; if the player chose to dismiss him in Fort Hagen so that the conv 
				; between Piper and Nick can proceed.				
								
				ActorBase PiperBase = Game.GetForm(0x00002F1E) as ActorBase
				Actor Piper = PiperBase.GetUniqueActor()
				if Piper.IsInFaction(this.pCurrentCompanionFaction) == False
					ActorValue KellogDeathAV = Game.GetForm(0x002488CC) as ActorValue
					if (10 == Piper.GetValue(KellogDeathAV))
						; Fix Her
						Piper.SetValue(KellogDeathAV, 1)
						Piper.MoveToIfUnloaded(this.FortHagenMapMarker)
						if (this.FindFreeAlias())
							this.AllowCompanion(Piper)
							Float[] posdata = this.TraceCircle(Game.GetPlayer(), 150.0, 165)
							Piper.SetPosition(posdata[0],posdata[1],posdata[2])
						endif
						
						ActorBase NickBase = Game.GetForm(0x00002F24) as ActorBase
						Actor Nick = NickBase.GetUniqueActor()
						; Fix Him
						if Nick.IsInFaction(this.pCurrentCompanionFaction) == False
							if (this.FindFreeAlias())
								this.AllowCompanion(Nick)
								this.pTweakPiperNickBack.Show()
							endif
						else
							this.pTweakPiperBack.Show()
						endif
						Nick.MoveToIfUnloaded(this.FortHagenMapMarker)
						Float[] posdata = this.TraceCircle(Game.GetPlayer(), 150.0, 180)
						Nick.SetPosition(posdata[0],posdata[1],posdata[2])
						this.pPlayerHasActiveCompanion.SetValue(0)
					endif
				endif
			
			elseif (0x002488E4 == acreID) 
			
				; ==== COMQC_BoS302DanseIsSynthAV
				; We just learned Danse is a Synth. Problem is, he keeps barking BOS
				; propoganda even if we let him live. So when this fires, disable his
				; idle chatter

				ActorBase DanseBase = Game.GetForm(0x00027683) as ActorBase
				Actor Danse = DanseBase.GetUniqueActor()
				if Danse
					; Fix Him
					Faction TweakNoIdleChatter = Game.GetFormFromFile(0x0104FB5C,"AmazingFollowerTweaks.esp") as Faction
					if TweakNoIdleChatter
						Danse.AddToFaction(TweakNoIdleChatter)
					endif
					; Faction TweakNoCommentGeneral = Game.GetFormFromFile(0x01041593,"AmazingFollowerTweaks.esp") as Faction
					; if TweakNoCommentGeneral
					; 	Danse.AddToFaction(TweakNoCommentGeneral)
					; endif
				endif
				
			elseif (0x002488D0 == acreID)
				; ==== COMQC_MQ204VirgilAV
				; Fires when you exit memory chair (means you KNOW ABOUT Virgil)
			
			elseif (0x002488CF == acreID)
				; ==== COMQC_MQ204DenDoneAV           (Back from Memory Den Journey...)
				; Fires when you talk to Dr. Amari after memory sequence.  (A few seconds after virgil)
				
			elseif (0x002488D3 == acreID)
				
				; ==== COMQC_MQ206BackFromInstituteAV (Back from Journey to Institute)
				
				; Fires when you return from Institute. We consider it safe to disable the
				; GoHome fix on Nick at this point.
				
				; ActorBase NickBase = Game.GetForm(0x00002F24) as ActorBase
				; Actor Nick = NickBase.GetUniqueActor()
				;; Fix Him
				; Faction TweakSkipGoHomeFaction = Game.GetFormFromFile(0x0105AD9A,"AmazingFollowerTweaks.esp") as Faction
				; if TweakSkipGoHomeFaction
					; Nick.RemoveFromFaction(TweakSkipGoHomeFaction)
				; endif
			
			; elseif (0x002488E1 == acreID)
				; ==== COMQC_BoS200JoinedBoSAV        (Joined BrotherHood)
			
			; elseif (0x002488DA == acreID)
				; ==== COMQC_RR102JoinedRRAV          (Joined RailRoad)
				
			endif
		
			; ============================================================
			; HANDLE NORMAL FLAG (EXPANDED TO INCLUDE ANY NEARBY FOLLOWERS:
			; ============================================================
			
			ReferenceAlias[] followers = this.GetAllFollowers()
			int i = 0
			while (i != followers.length)
				Actor follower = followers[i].GetActorReference()
				if (0 == follower.GetValue(ActorValueRepresentingEvent))
					trace_("FlagCompanionChatEventOverride(" + ActorValueRepresentingEvent + ") => " + follower )
					if follower.Is3DLoaded()
						trace_("Follower is nearby, setting ActorValue to 1: " + ActorValueRepresentingEvent + ", " + follower)
						follower.SetValue(ActorValueRepresentingEvent, 1)
					endif
					Utility.wait(0.1)
				else
					trace_("FlagCompanionChatEventOverride(" + ActorValueRepresentingEvent + ") => Skipping Follower " + i + "Value not 0")
				endif
				i += 1
			endWhile
			
		else
			trace_("Unable to cast global selfQuest to TweakDFScript (this instance)")
		endif
	else
		trace_("Unable to retrieve Followers Quest from Fallout4.esm")
	endIf
	
endFunction

;Reminder this is primarily called via function on Actor script
Function AllowCompanion(Actor ActorToAllow, bool MakeCompanionIfNoneCurrently = true, bool ForceCompanion = false)
	trace("AllowCompanion(" + ActorToAllow + "," + MakeCompanionIfNoneCurrently + "," + ForceCompanion + ")")
	ActorToAllow.RemoveFromFaction(pDisallowedCompanionFaction)
	if MakeCompanionIfNoneCurrently || ForceCompanion
		if ActorToAllow.GetRace() == Game.GetCommonProperties().DogmeatRace
			SetDogmeatCompanion(ActorToAllow)
		else
			SetCompanion(ActorToAllow, true, true, true)
		endif
	endif
EndFunction

Int Function GetPluginID(int formid)
	int fullid = formid
	if fullid > 0x80000000
		fullid -= 0x80000000
	endif
	int lastsix = fullid % 0x01000000
	return (((formid - lastsix)/0x01000000) as Int)
EndFunction 


; AngleOffset:
;  -90     = Players left. 
;   90     = Players right, 
; 180/-180 = behind player
Float[] Function TraceCircle(ObjectReference n, Float radius = 500.0, Float angleOffset = 0.0)
	
    float azimuth = ConvertToSinCosCompatibleAngle(n.GetAngleZ(), angleOffset)

    Float xoffset = radius * Math.cos(azimuth)
    Float yoffset = radius * Math.sin(azimuth)

    Float[] r = new Float[3]
    r[0] =  (n.GetPositionX() + xoffset)
    r[1] =  (n.GetPositionY() + yoffset)
    r[2] =   n.GetPositionZ()
    return r

endFunction

Float Function ConvertToSinCosCompatibleAngle(Float original, Float angleOffset = 0.0)

	return Enforce360Bounds(450 - original + angleOffset)
	
EndFunction

Float Function Enforce360Bounds(float a)
    if (a < 0) 
        a = a + 360
    endif
    if (a >= 360)
        a = a - 360
    endif 
	return a
EndFunction