; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"Driver provided by PUGH\00", align 1
@.str2 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Startup.c,v 1.27 2001/09/16 07:02:12 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Startup_c() #0 {
entry:
  ret i8* getelementptr inbounds ([86 x i8]* @.str2, i64 0, i64 0), !dbg !86
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_Startup() #1 {
entry:
  %0 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 17) to i64*), align 8, !dbg !87
  %1 = trunc i64 %0 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !47), !dbg !87
  %2 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 19) to i64*), align 8, !dbg !87
  %3 = trunc i64 %2 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !49), !dbg !87
  %4 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 21) to i64*), align 8, !dbg !87
  %5 = trunc i64 %4 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !51), !dbg !87
  %6 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 23) to i64*), align 8, !dbg !87
  %7 = trunc i64 %6 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !53), !dbg !87
  %8 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 25) to i64*), align 8, !dbg !87
  %9 = trunc i64 %8 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !55), !dbg !87
  %10 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 27) to i64*), align 8, !dbg !87
  %11 = trunc i64 %10 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !57), !dbg !87
  %12 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 29) to i64*), align 8, !dbg !87
  %13 = trunc i64 %12 to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !59), !dbg !87
  %14 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 31), align 8, !dbg !87, !tbaa !88
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !61), !dbg !87
  %call = tail call i32 @CCTK_RegisterGHExtension(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !16), !dbg !91
  %call1 = tail call i32 @CCTK_RegisterGHExtensionSetupGH(i32 %call, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @PUGH_SetupGH) #4, !dbg !92
  %call2 = tail call i32 @CCTK_RegisterGHExtensionInitGH(i32 %call, i32 (%struct.cGH*)* @PUGH_InitGH) #4, !dbg !93
  %call3 = tail call i32 @CCTK_RegisterGHExtensionScheduleTraverseGH(i32 %call, i32 (%struct.cGH*, i8*)* @PUGH_ScheduleTraverseGH) #4, !dbg !94
  %tobool = icmp ult i64 %6, 4294967296, !dbg !95
  br i1 %tobool, label %if.end, label %if.then, !dbg !95

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)* @PUGH_Evolve) #4, !dbg !96
  br label %if.end, !dbg !98

if.end:                                           ; preds = %entry, %if.then
  %tobool5 = icmp eq i32 %14, 0, !dbg !99
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !99

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* @PUGH_SyncGroup) #4, !dbg !100
  br label %if.end8, !dbg !102

if.end8:                                          ; preds = %if.end, %if.then6
  %tobool9 = icmp eq i32 %7, 0, !dbg !103
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !103

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* @PUGH_EnableGroupStorage) #4, !dbg !104
  br label %if.end12, !dbg !106

if.end12:                                         ; preds = %if.end8, %if.then10
  %tobool13 = icmp eq i32 %5, 0, !dbg !107
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !107

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* @PUGH_DisableGroupStorage) #4, !dbg !108
  br label %if.end16, !dbg !110

if.end16:                                         ; preds = %if.end12, %if.then14
  %tobool17 = icmp ult i64 %4, 4294967296, !dbg !111
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !111

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* @PUGH_EnableGroupComm) #4, !dbg !112
  br label %if.end20, !dbg !114

if.end20:                                         ; preds = %if.end16, %if.then18
  %tobool21 = icmp ult i64 %2, 4294967296, !dbg !115
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !115

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* @PUGH_DisableGroupComm) #4, !dbg !116
  br label %if.end24, !dbg !118

if.end24:                                         ; preds = %if.end20, %if.then22
  %tobool25 = icmp eq i32 %3, 0, !dbg !119
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !119

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* @PUGH_Barrier) #4, !dbg !120
  br label %if.end28, !dbg !122

if.end28:                                         ; preds = %if.end24, %if.then26
  %tobool29 = icmp eq i32 %13, 0, !dbg !123
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !123

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* @PUGH_ParallelInit) #4, !dbg !124
  br label %if.end32, !dbg !126

if.end32:                                         ; preds = %if.end28, %if.then30
  %tobool33 = icmp eq i32 %9, 0, !dbg !127
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !127

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* @PUGH_Exit) #4, !dbg !128
  br label %if.end36, !dbg !130

if.end36:                                         ; preds = %if.end32, %if.then34
  %tobool37 = icmp eq i32 %1, 0, !dbg !131
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !131

if.then38:                                        ; preds = %if.end36
  %call39 = tail call i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* @PUGH_Abort) #4, !dbg !132
  br label %if.end40, !dbg !134

if.end40:                                         ; preds = %if.end36, %if.then38
  %tobool41 = icmp eq i32 %11, 0, !dbg !135
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !135

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* @PUGH_MyProc) #4, !dbg !136
  br label %if.end44, !dbg !138

if.end44:                                         ; preds = %if.end40, %if.then42
  %tobool45 = icmp ult i64 %10, 4294967296, !dbg !139
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !139

if.then46:                                        ; preds = %if.end44
  %call47 = tail call i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* @PUGH_nProcs) #4, !dbg !140
  br label %if.end48, !dbg !142

if.end48:                                         ; preds = %if.end44, %if.then46
  %tobool49 = icmp ult i64 %0, 4294967296, !dbg !143
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !143

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* @PUGH_ArrayGroupSize) #4, !dbg !144
  br label %if.end52, !dbg !146

if.end52:                                         ; preds = %if.end48, %if.then50
  %tobool53 = icmp ult i64 %12, 4294967296, !dbg !147
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !147

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* @PUGH_QueryGroupStorage) #4, !dbg !148
  br label %if.end56, !dbg !150

if.end56:                                         ; preds = %if.end52, %if.then54
  %tobool57 = icmp ult i64 %8, 4294967296, !dbg !151
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !151

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @PUGH_GroupDynamicData) #4, !dbg !152
  br label %if.end60, !dbg !154

if.end60:                                         ; preds = %if.end56, %if.then58
  %call61 = tail call i32 @CCTK_RegisterBanner(i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !155
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  tail call void @llvm.dbg.value(metadata !156, i64 0, metadata !81), !dbg !157
  ret i32 0, !dbg !157
}

; Function Attrs: optsize
declare i32 @CCTK_RegisterGHExtension(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterGHExtensionSetupGH(i32, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)*) #2

; Function Attrs: optsize
declare i8* @PUGH_SetupGH(%struct.tFleshConfig*, i32, %struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterGHExtensionInitGH(i32, i32 (%struct.cGH*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_InitGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterGHExtensionScheduleTraverseGH(i32, i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_ScheduleTraverseGH(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_Evolve(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_SyncGroup(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_EnableGroupStorage(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_DisableGroupStorage(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_EnableGroupComm(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_DisableGroupComm(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_Barrier(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_ParallelInit(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)*) #2

; Function Attrs: optsize
declare i32 @PUGH_Exit(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)*) #2

; Function Attrs: optsize
declare i32 @PUGH_Abort(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_MyProc(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_nProcs(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)*) #2

; Function Attrs: optsize
declare i32* @PUGH_ArrayGroupSize(%struct.cGH*, i32, i32, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_QueryGroupStorage(%struct.cGH*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)*) #2

; Function Attrs: optsize
declare i32 @PUGH_GroupDynamicData(%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterBanner(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !84, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_Startup_c", metadata !"CCTKi_version_CactusPUGH_PUGH_Startup_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_Startup_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_CactusPUGH_PUGH_Startup_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Startup", metadata !"PUGH_Startup", metadata !"", i32 41, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @PUGH_Startup, null, null, metadata !15, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [PUGH_Startup]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !78, metadata !79, metadata !80, metadata !81}
!16 = metadata !{i32 786688, metadata !11, metadata !"pugh_GHExtension", metadata !5, i32 43, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pugh_GHExtension] [line 43]
!17 = metadata !{i32 786688, metadata !11, metadata !"ghost_size", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 45]
!18 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!19 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_x", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 45]
!20 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_y", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 45]
!21 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_z", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 45]
!22 = metadata !{i32 786688, metadata !11, metadata !"global_nsize", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 45]
!23 = metadata !{i32 786688, metadata !11, metadata !"global_nx", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 45]
!24 = metadata !{i32 786688, metadata !11, metadata !"global_ny", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 45]
!25 = metadata !{i32 786688, metadata !11, metadata !"global_nz", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 45]
!26 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 45]
!27 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 45]
!28 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 45]
!29 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 45]
!30 = metadata !{i32 786688, metadata !11, metadata !"info", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 45]
!31 = metadata !{i32 786688, metadata !11, metadata !"initialize_memory", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 45]
!32 = metadata !{i32 786688, metadata !11, metadata !"partition", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 45]
!33 = metadata !{i32 786688, metadata !11, metadata !"partition_1d_x", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 45]
!34 = metadata !{i32 786688, metadata !11, metadata !"partition_2d_x", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 45]
!35 = metadata !{i32 786688, metadata !11, metadata !"partition_2d_y", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 45]
!36 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_x", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 45]
!37 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_y", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 45]
!38 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_z", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 45]
!39 = metadata !{i32 786688, metadata !11, metadata !"processor_topology", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 45]
!40 = metadata !{i32 786688, metadata !11, metadata !"storage_verbose", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 45]
!41 = metadata !{i32 786688, metadata !11, metadata !"cacheline_mult", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 45]
!42 = metadata !{i32 786688, metadata !11, metadata !"enable_all_storage", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 45]
!43 = metadata !{i32 786688, metadata !11, metadata !"local_nsize", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 45]
!44 = metadata !{i32 786688, metadata !11, metadata !"local_nx", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 45]
!45 = metadata !{i32 786688, metadata !11, metadata !"local_ny", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 45]
!46 = metadata !{i32 786688, metadata !11, metadata !"local_nz", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 45]
!47 = metadata !{i32 786688, metadata !11, metadata !"overloadabort", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 45]
!48 = metadata !{i32 786688, metadata !11, metadata !"overloadarraygroupsizeb", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 45]
!49 = metadata !{i32 786688, metadata !11, metadata !"overloadbarrier", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 45]
!50 = metadata !{i32 786688, metadata !11, metadata !"overloaddisablegroupcomm", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 45]
!51 = metadata !{i32 786688, metadata !11, metadata !"overloaddisablegroupstorage", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 45]
!52 = metadata !{i32 786688, metadata !11, metadata !"overloadenablegroupcomm", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 45]
!53 = metadata !{i32 786688, metadata !11, metadata !"overloadenablegroupstorage", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 45]
!54 = metadata !{i32 786688, metadata !11, metadata !"overloadevolve", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 45]
!55 = metadata !{i32 786688, metadata !11, metadata !"overloadexit", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 45]
!56 = metadata !{i32 786688, metadata !11, metadata !"overloadgroupdynamicdata", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 45]
!57 = metadata !{i32 786688, metadata !11, metadata !"overloadmyproc", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 45]
!58 = metadata !{i32 786688, metadata !11, metadata !"overloadnprocs", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 45]
!59 = metadata !{i32 786688, metadata !11, metadata !"overloadparallelinit", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 45]
!60 = metadata !{i32 786688, metadata !11, metadata !"overloadquerygroupstorageb", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 45]
!61 = metadata !{i32 786688, metadata !11, metadata !"overloadsyncgroup", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 45]
!62 = metadata !{i32 786688, metadata !11, metadata !"padding_active", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 45]
!63 = metadata !{i32 786688, metadata !11, metadata !"padding_address_spacing", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 45]
!64 = metadata !{i32 786688, metadata !11, metadata !"padding_cacheline_bits", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 45]
!65 = metadata !{i32 786688, metadata !11, metadata !"padding_size", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 45]
!66 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_1d_x", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 45]
!67 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_2d_x", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 45]
!68 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_2d_y", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 45]
!69 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_x", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 45]
!70 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_y", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 45]
!71 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_z", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 45]
!72 = metadata !{i32 786688, metadata !11, metadata !"storage_report_every", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 45]
!73 = metadata !{i32 786688, metadata !11, metadata !"timer_output", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 45]
!74 = metadata !{i32 786688, metadata !11, metadata !"terminate", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 45]
!75 = metadata !{i32 786688, metadata !11, metadata !"cctk_initial_time", metadata !5, i32 45, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 45]
!76 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!77 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!78 = metadata !{i32 786688, metadata !11, metadata !"cctk_final_time", metadata !5, i32 45, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 45]
!79 = metadata !{i32 786688, metadata !11, metadata !"cctk_itlast", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 45]
!80 = metadata !{i32 786688, metadata !11, metadata !"terminate_next", metadata !5, i32 45, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 45]
!81 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 45, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 45]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!86 = metadata !{i32 23, i32 0, metadata !4, null}
!87 = metadata !{i32 45, i32 0, metadata !11, null}
!88 = metadata !{metadata !"int", metadata !89}
!89 = metadata !{metadata !"omnipotent char", metadata !90}
!90 = metadata !{metadata !"Simple C/C++ TBAA"}
!91 = metadata !{i32 48, i32 0, metadata !11, null}
!92 = metadata !{i32 50, i32 0, metadata !11, null}
!93 = metadata !{i32 52, i32 0, metadata !11, null}
!94 = metadata !{i32 54, i32 0, metadata !11, null}
!95 = metadata !{i32 57, i32 0, metadata !11, null}
!96 = metadata !{i32 59, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !11, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!98 = metadata !{i32 60, i32 0, metadata !97, null}
!99 = metadata !{i32 61, i32 0, metadata !11, null}
!100 = metadata !{i32 63, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !11, i32 62, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!102 = metadata !{i32 64, i32 0, metadata !101, null}
!103 = metadata !{i32 65, i32 0, metadata !11, null}
!104 = metadata !{i32 67, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !11, i32 66, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!106 = metadata !{i32 68, i32 0, metadata !105, null}
!107 = metadata !{i32 69, i32 0, metadata !11, null}
!108 = metadata !{i32 71, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !11, i32 70, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!110 = metadata !{i32 72, i32 0, metadata !109, null}
!111 = metadata !{i32 73, i32 0, metadata !11, null}
!112 = metadata !{i32 75, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !11, i32 74, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!114 = metadata !{i32 76, i32 0, metadata !113, null}
!115 = metadata !{i32 77, i32 0, metadata !11, null}
!116 = metadata !{i32 79, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !11, i32 78, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!118 = metadata !{i32 80, i32 0, metadata !117, null}
!119 = metadata !{i32 81, i32 0, metadata !11, null}
!120 = metadata !{i32 83, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !11, i32 82, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!122 = metadata !{i32 84, i32 0, metadata !121, null}
!123 = metadata !{i32 85, i32 0, metadata !11, null}
!124 = metadata !{i32 87, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !11, i32 86, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!126 = metadata !{i32 88, i32 0, metadata !125, null}
!127 = metadata !{i32 89, i32 0, metadata !11, null}
!128 = metadata !{i32 91, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !11, i32 90, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!130 = metadata !{i32 92, i32 0, metadata !129, null}
!131 = metadata !{i32 93, i32 0, metadata !11, null}
!132 = metadata !{i32 95, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !11, i32 94, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!134 = metadata !{i32 96, i32 0, metadata !133, null}
!135 = metadata !{i32 97, i32 0, metadata !11, null}
!136 = metadata !{i32 99, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !11, i32 98, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!138 = metadata !{i32 100, i32 0, metadata !137, null}
!139 = metadata !{i32 101, i32 0, metadata !11, null}
!140 = metadata !{i32 103, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !11, i32 102, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!142 = metadata !{i32 104, i32 0, metadata !141, null}
!143 = metadata !{i32 105, i32 0, metadata !11, null}
!144 = metadata !{i32 107, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !11, i32 106, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!146 = metadata !{i32 108, i32 0, metadata !145, null}
!147 = metadata !{i32 109, i32 0, metadata !11, null}
!148 = metadata !{i32 111, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !11, i32 110, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!150 = metadata !{i32 112, i32 0, metadata !149, null}
!151 = metadata !{i32 113, i32 0, metadata !11, null}
!152 = metadata !{i32 115, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !11, i32 114, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Startup.c]
!154 = metadata !{i32 116, i32 0, metadata !153, null}
!155 = metadata !{i32 119, i32 0, metadata !11, null}
!156 = metadata !{i8* undef}
!157 = metadata !{i32 121, i32 0, metadata !11, null}
