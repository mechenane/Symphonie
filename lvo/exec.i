; ASM-One - exec_lib.i
; (Release 3.0)
;
; by SCHWARZENEGGER/R.A.F

	IFND	LVO_EXEC_I
LVO_EXEC_I	SET	1

_LVOSupervisor	EQU	-30
_LVOInitCode	EQU	-72
_LVOInitStruct	EQU	-78
_LVOMakeLibrary	EQU	-84
_LVOMakeFunctions	EQU	-90
_LVOFindResident	EQU	-96
_LVOInitResident	EQU	-102
_LVOAlert	EQU	-108
_LVODebug	EQU	-114
_LVODisable	EQU	-120
_LVOEnable	EQU	-126
_LVOForbid	EQU	-132
_LVOPermit	EQU	-138
_LVOSetSR	EQU	-144
_LVOSuperState	EQU	-150
_LVOUserState	EQU	-156
_LVOSetIntVector	EQU	-162
_LVOAddIntServer	EQU	-168
_LVORemIntServer	EQU	-174
_LVOCause	EQU	-180
_LVOAllocate	EQU	-186
_LVODeallocate	EQU	-192
_LVOAllocMem	EQU	-198
_LVOAllocAbs	EQU	-204
_LVOFreeMem	EQU	-210
_LVOAvailMem	EQU	-216
_LVOAllocEntry	EQU	-222
_LVOFreeEntry	EQU	-228
_LVOInsert	EQU	-234
_LVOAddHead	EQU	-240
_LVOAddTail	EQU	-246
_LVORemove	EQU	-252
_LVORemHead	EQU	-258
_LVORemTail	EQU	-264
_LVOEnqueue	EQU	-270
_LVOFindName	EQU	-276
_LVOAddTask	EQU	-282
_LVORemTask	EQU	-288
_LVOFindTask	EQU	-294
_LVOSetTaskPri	EQU	-300
_LVOSetSignal	EQU	-306
_LVOSetExcept	EQU	-312
_LVOWait	EQU	-318
_LVOSignal	EQU	-324
_LVOAllocSignal	EQU	-330
_LVOFreeSignal	EQU	-336
_LVOAllocTrap	EQU	-342
_LVOFreeTrap	EQU	-348
_LVOAddPort	EQU	-354
_LVORemPort	EQU	-360
_LVOPutMsg	EQU	-366
_LVOGetMsg	EQU	-372
_LVOReplyMsg	EQU	-378
_LVOWaitPort	EQU	-384
_LVOFindPort	EQU	-390
_LVOAddLibrary	EQU	-396
_LVORemLibrary	EQU	-402
_LVOOldOpenLibrary	EQU	-408
_LVOCloseLibrary	EQU	-414
_LVOSetFunction	EQU	-420
_LVOSumLibrary	EQU	-426
_LVOAddDevice	EQU	-432
_LVORemDevice	EQU	-438
_LVOOpenDevice	EQU	-444
_LVOCloseDevice	EQU	-450
_LVODoIO	EQU	-456
_LVOSendIO	EQU	-462
_LVOCheckIO	EQU	-468
_LVOWaitIO	EQU	-474
_LVOAbortIO	EQU	-480
_LVOAddResource	EQU	-486
_LVORemResource	EQU	-492
_LVOOpenResource	EQU	-498
_LVORawDoFmt	EQU	-522
_LVOGetCC	EQU	-528
_LVOTypeOfMem	EQU	-534
_LVOProcure	EQU	-540
_LVOVacate	EQU	-546
_LVOOpenLibrary	EQU	-552
_LVOInitSemaphore	EQU	-558
_LVOObtainSemaphore	EQU	-564
_LVOReleaseSemaphore	EQU	-570
_LVOAttemptSemaphore	EQU	-576
_LVOObtainSemaphoreList	EQU	-582
_LVOReleaseSemaphoreList	EQU	-588
_LVOFindSemaphore	EQU	-594
_LVOAddSemaphore	EQU	-600
_LVORemSemaphore	EQU	-606
_LVOSumKickData	EQU	-612
_LVOAddMemList	EQU	-618
_LVOCopyMem	EQU	-624
_LVOCopyMemQuick	EQU	-630
_LVOCacheClearU	EQU	-636
_LVOCacheClearE	EQU	-642
_LVOCacheControl	EQU	-648
_LVOCreateIORequest	EQU	-654
_LVODeleteIORequest	EQU	-660
_LVOCreateMsgPort	EQU	-666
_LVODeleteMsgPort	EQU	-672
_LVOObtainSemaphoreShared	EQU	-678
_LVOAllocVec	EQU	-684
_LVOFreeVec	EQU	-690
_LVOCreatePool	EQU	-696
_LVODeletePool	EQU	-702
_LVOAllocPooled	EQU	-708
_LVOFreePooled	EQU	-714
_LVOAttemptSemaphoreShared	EQU	-720
_LVOColdReboot	EQU	-726
_LVOStackSwap	EQU	-732
_LVOChildFree	EQU	-738
_LVOChildOrphan	EQU	-744
_LVOChildStatus	EQU	-750
_LVOChildWait	EQU	-756
_LVOCachePreDMA	EQU	-762
_LVOCachePostDMA	EQU	-768
_LVOAddMemHandler	EQU	-774
_LVORemMemHandler	EQU	-780

CALLEXEC	MACRO
	move.l	4.w,a6
	jsr	_LVO\1(a6)
	ENDM

EXECNAME	MACRO
	dc.b	'exec.library',0
	ENDM

	ENDC	; LVO_EXEC_I
