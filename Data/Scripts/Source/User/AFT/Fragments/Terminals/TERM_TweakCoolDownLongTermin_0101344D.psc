;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname AFT:Fragments:Terminals:TERM_TweakCoolDownLongTermin_0101344D Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(10)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(5)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(4)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_04
Function Fragment_Terminal_04(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(2)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(1)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_06
Function Fragment_Terminal_06(ObjectReference akTerminalRef)
;BEGIN CODE
AFT:TweakPipBoyScript pTweakPipBoyScript = (pTweakPipBoy As AFT:TweakPipBoyScript)
if (pTweakPipBoyScript)
        pTweakPipBoyScript.UpdateCoolDownDaysLong(0)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property pTweak_CoolDownDays_Long Auto Const

Quest Property pTweakPipBoy Auto Const
