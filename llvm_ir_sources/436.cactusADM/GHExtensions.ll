; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }

@GHExtensions = internal global %struct.cHandledData* null, align 8
@num_extensions = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"GH Extension '%s' has not registered a SetupGH routine\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"GH Extension '%s' has not registered a InitGH routine\00", align 1
@.str4 = private unnamed_addr constant [64 x i8] c"GH Extension '%s' has not registered a ScheduleTraverse routine\00", align 1
@.str5 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/main/GHExtensions.c,v 1.27 2001/07/04 13:20:29 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_GHExtensions_c() #0 {
entry:
  ret i8* getelementptr inbounds ([88 x i8]* @.str5, i64 0, i64 0), !dbg !192
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterGHExtension(i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !16), !dbg !193
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !194, !tbaa !195
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** null) #6, !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !17), !dbg !194
  %cmp = icmp slt i32 %call, 0, !dbg !198
  br i1 %cmp, label %if.then, label %if.end5, !dbg !198

if.then:                                          ; preds = %entry
  %call1 = tail call noalias i8* @malloc(i64 24) #6, !dbg !199
  %tobool = icmp eq i8* %call1, null, !dbg !201
  br i1 %tobool, label %if.end5, label %if.then2, !dbg !201

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @Util_NewHandle(%struct.cHandledData** @GHExtensions, i8* %name, i8* %call1) #6, !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !17), !dbg !202
  call void @llvm.memset.p0i8.i64(i8* %call1, i8 0, i64 24, i32 8, i1 false), !dbg !204
  %1 = load i32* @num_extensions, align 4, !dbg !205, !tbaa !206
  %inc = add nsw i32 %1, 1, !dbg !205
  store i32 %inc, i32* @num_extensions, align 4, !dbg !205, !tbaa !206
  br label %if.end5, !dbg !207

if.end5:                                          ; preds = %entry, %if.then, %if.then2
  %handle.0 = phi i32 [ %call3, %if.then2 ], [ -2, %if.then ], [ -1, %entry ]
  ret i32 %handle.0, !dbg !208
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_UnregisterGHExtension(i8* %name) #1 {
entry:
  %extension = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !84), !dbg !209
  call void @llvm.dbg.value(metadata !210, i64 0, metadata !86), !dbg !211
  call void @llvm.dbg.declare(metadata !{i8** %extension}, metadata !87), !dbg !212
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !213, !tbaa !195
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** %extension) #6, !dbg !213
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !85), !dbg !213
  %cmp = icmp sgt i32 %call, -1, !dbg !214
  br i1 %cmp, label %if.then, label %if.end4, !dbg !214

if.then:                                          ; preds = %entry
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !215, !tbaa !195
  %call1 = call i32 @Util_DeleteHandle(%struct.cHandledData* %1, i32 %call) #6, !dbg !215
  %cmp2 = icmp eq i32 %call1, 0, !dbg !215
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !215

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata !{i8** %extension}, i64 0, metadata !87), !dbg !217
  %2 = load i8** %extension, align 8, !dbg !217, !tbaa !195
  call void @free(i8* %2) #6, !dbg !217
  %3 = load i32* @num_extensions, align 4, !dbg !219, !tbaa !206
  %dec = add nsw i32 %3, -1, !dbg !219
  store i32 %dec, i32* @num_extensions, align 4, !dbg !219, !tbaa !206
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !86), !dbg !220
  br label %if.end4, !dbg !221

if.end4:                                          ; preds = %if.then, %if.then3, %entry
  %ret_val.0 = phi i32 [ 0, %if.then3 ], [ -1, %if.then ], [ -1, %entry ]
  ret i32 %ret_val.0, !dbg !222
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterGHExtensionSetupGH(i32 %handle, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !92), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %func}, i64 0, metadata !93), !dbg !224
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !225, !tbaa !195
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !225
  %tobool = icmp eq i8* %call, null, !dbg !226
  br i1 %tobool, label %if.end, label %if.then, !dbg !226

if.then:                                          ; preds = %entry
  %SetupGH = bitcast i8* %call to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**, !dbg !227
  store i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %func, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %SetupGH, align 8, !dbg !227, !tbaa !195
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !94), !dbg !230
  br label %if.end, !dbg !231

if.end:                                           ; preds = %entry, %if.then
  %return_code.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %return_code.0, !dbg !232
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterGHExtensionInitGH(i32 %handle, i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !100), !dbg !233
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !101), !dbg !234
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !235, !tbaa !195
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !235
  %tobool = icmp eq i8* %call, null, !dbg !236
  br i1 %tobool, label %if.end, label %if.then, !dbg !236

if.then:                                          ; preds = %entry
  %InitGH = getelementptr inbounds i8* %call, i64 8, !dbg !237
  %1 = bitcast i8* %InitGH to i32 (%struct.cGH*)**, !dbg !237
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** %1, align 8, !dbg !237, !tbaa !195
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !102), !dbg !239
  br label %if.end, !dbg !240

if.end:                                           ; preds = %entry, %if.then
  %return_code.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %return_code.0, !dbg !241
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterGHExtensionScheduleTraverseGH(i32 %handle, i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !108), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !109), !dbg !243
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !244, !tbaa !195
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !244
  %tobool = icmp eq i8* %call, null, !dbg !245
  br i1 %tobool, label %if.end, label %if.then, !dbg !245

if.then:                                          ; preds = %entry
  %ScheduleTraverseGH = getelementptr inbounds i8* %call, i64 16, !dbg !246
  %1 = bitcast i8* %ScheduleTraverseGH to i32 (%struct.cGH*, i8*)**, !dbg !246
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** %1, align 8, !dbg !246, !tbaa !195
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !110), !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %entry, %if.then
  %return_code.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %return_code.0, !dbg !250
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !116), !dbg !251
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !117), !dbg !252
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !118), !dbg !253
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !254) #5, !dbg !256
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !257) #5, !dbg !258
  %0 = load i32* @num_extensions, align 4, !dbg !258, !tbaa !206
  %cmp1.i = icmp sgt i32 %0, 0, !dbg !258
  br i1 %cmp1.i, label %for.body.i, label %CheckAllExtensionsSetup.exit, !dbg !258

for.body.i:                                       ; preds = %entry, %for.inc.i
  %handle.02.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !260, !tbaa !195
  %call.i = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.02.i) #6, !dbg !260
  %tobool.i = icmp eq i8* %call.i, null, !dbg !262
  br i1 %tobool.i, label %for.inc.i, label %if.then.i, !dbg !262

if.then.i:                                        ; preds = %for.body.i
  %SetupGH.i = bitcast i8* %call.i to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**, !dbg !263
  %2 = load i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %SetupGH.i, align 8, !dbg !263, !tbaa !195
  %tobool1.i = icmp eq i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %2, null, !dbg !263
  br i1 %tobool1.i, label %if.then2.i, label %if.end.i, !dbg !263

if.then2.i:                                       ; preds = %if.then.i
  %3 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !265, !tbaa !195
  %call3.i = tail call i8* @Util_GetHandleName(%struct.cHandledData* %3, i32 %handle.02.i) #6, !dbg !265
  %call4.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 728, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %call3.i) #6, !dbg !265
  store i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @DummySetupGH, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %SetupGH.i, align 8, !dbg !267, !tbaa !195
  br label %if.end.i, !dbg !268

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %InitGH.i = getelementptr inbounds i8* %call.i, i64 8, !dbg !269
  %4 = bitcast i8* %InitGH.i to i32 (%struct.cGH*)**, !dbg !269
  %5 = load i32 (%struct.cGH*)** %4, align 8, !dbg !269, !tbaa !195
  %tobool6.i = icmp eq i32 (%struct.cGH*)* %5, null, !dbg !269
  br i1 %tobool6.i, label %if.then7.i, label %if.end11.i, !dbg !269

if.then7.i:                                       ; preds = %if.end.i
  %6 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !270, !tbaa !195
  %call8.i = tail call i8* @Util_GetHandleName(%struct.cHandledData* %6, i32 %handle.02.i) #6, !dbg !270
  %call9.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 737, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i8* %call8.i) #6, !dbg !270
  store i32 (%struct.cGH*)* @DummyInitGH, i32 (%struct.cGH*)** %4, align 8, !dbg !272, !tbaa !195
  br label %if.end11.i, !dbg !273

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i
  %ScheduleTraverseGH.i = getelementptr inbounds i8* %call.i, i64 16, !dbg !274
  %7 = bitcast i8* %ScheduleTraverseGH.i to i32 (%struct.cGH*, i8*)**, !dbg !274
  %8 = load i32 (%struct.cGH*, i8*)** %7, align 8, !dbg !274, !tbaa !195
  %tobool12.i = icmp eq i32 (%struct.cGH*, i8*)* %8, null, !dbg !274
  br i1 %tobool12.i, label %if.then13.i, label %for.inc.i, !dbg !274

if.then13.i:                                      ; preds = %if.end11.i
  %9 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !275, !tbaa !195
  %call14.i = tail call i8* @Util_GetHandleName(%struct.cHandledData* %9, i32 %handle.02.i) #6, !dbg !275
  %call15.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 746, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i8* %call14.i) #6, !dbg !275
  store i32 (%struct.cGH*, i8*)* @DummyScheduleTraverseGH, i32 (%struct.cGH*, i8*)** %7, align 8, !dbg !277, !tbaa !195
  br label %for.inc.i, !dbg !278

for.inc.i:                                        ; preds = %if.then13.i, %if.end11.i, %for.body.i
  %inc.i = add nsw i32 %handle.02.i, 1, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !257) #5, !dbg !258
  %10 = load i32* @num_extensions, align 4, !dbg !258, !tbaa !206
  %cmp.i = icmp slt i32 %inc.i, %10, !dbg !258
  br i1 %cmp.i, label %for.body.i, label %CheckAllExtensionsSetup.exit, !dbg !258

CheckAllExtensionsSetup.exit:                     ; preds = %for.inc.i, %entry
  %11 = phi i32 [ %0, %entry ], [ %10, %for.inc.i ]
  %tobool1 = icmp eq i32 %11, 0, !dbg !279
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !279

if.then2:                                         ; preds = %CheckAllExtensionsSetup.exit
  %conv = sext i32 %11 to i64, !dbg !281
  %mul = shl nsw i64 %conv, 3, !dbg !281
  %call3 = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !281
  %12 = bitcast i8* %call3 to i8**, !dbg !281
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !281
  store i8** %12, i8*** %extensions, align 8, !dbg !281, !tbaa !195
  %phitmp = icmp eq i8* %call3, null, !dbg !283
  br label %if.end, !dbg !283

if.else:                                          ; preds = %CheckAllExtensionsSetup.exit
  %extensions4 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !284
  store i8** null, i8*** %extensions4, align 8, !dbg !284, !tbaa !195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %13 = phi i1 [ true, %if.else ], [ %phitmp, %if.then2 ]
  %extensions5 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !286
  %tobool7 = icmp ne i32 %11, 0, !dbg !286
  %or.cond = and i1 %13, %tobool7, !dbg !286
  br i1 %or.cond, label %if.end16, label %for.cond.preheader, !dbg !286

for.cond.preheader:                               ; preds = %if.end
  %cmp24 = icmp sgt i32 %11, 0, !dbg !287
  br i1 %cmp24, label %for.body, label %if.end16, !dbg !287

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %14 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !290, !tbaa !195
  %15 = trunc i64 %indvars.iv to i32, !dbg !290
  %call10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %14, i32 %15) #6, !dbg !290
  %SetupGH = bitcast i8* %call10 to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**, !dbg !292
  %16 = load i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %SetupGH, align 8, !dbg !292, !tbaa !195
  %call11 = tail call i8* %16(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %GH) #6, !dbg !292
  %17 = load i8*** %extensions5, align 8, !dbg !292, !tbaa !195
  %arrayidx = getelementptr inbounds i8** %17, i64 %indvars.iv, !dbg !292
  store i8* %call11, i8** %arrayidx, align 8, !dbg !292, !tbaa !195
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !287
  %18 = load i32* @num_extensions, align 4, !dbg !287, !tbaa !206
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !287
  %cmp = icmp slt i32 %19, %18, !dbg !287
  br i1 %cmp, label %for.body, label %if.end16, !dbg !287

if.end16:                                         ; preds = %for.cond.preheader, %for.body, %if.end
  %return_code.0 = phi i32 [ 1, %if.end ], [ 0, %for.body ], [ 0, %for.cond.preheader ]
  ret i32 %return_code.0, !dbg !293
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_InitGHExtensions(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !124), !dbg !294
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !125), !dbg !295
  %0 = load i32* @num_extensions, align 4, !dbg !295, !tbaa !206
  %cmp5 = icmp sgt i32 %0, 0, !dbg !295
  br i1 %cmp5, label %for.body, label %for.end, !dbg !295

for.body:                                         ; preds = %entry, %for.inc
  %handle.06 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !297, !tbaa !195
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.06) #6, !dbg !297
  %tobool = icmp eq i8* %call, null, !dbg !299
  br i1 %tobool, label %for.inc, label %if.then, !dbg !299

if.then:                                          ; preds = %for.body
  %InitGH = getelementptr inbounds i8* %call, i64 8, !dbg !300
  %2 = bitcast i8* %InitGH to i32 (%struct.cGH*)**, !dbg !300
  %3 = load i32 (%struct.cGH*)** %2, align 8, !dbg !300, !tbaa !195
  %call1 = tail call i32 %3(%struct.cGH* %GH) #6, !dbg !300
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nsw i32 %handle.06, 1, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !125), !dbg !295
  %4 = load i32* @num_extensions, align 4, !dbg !295, !tbaa !206
  %cmp = icmp slt i32 %inc, %4, !dbg !295
  br i1 %cmp, label %for.body, label %for.end, !dbg !295

for.end:                                          ; preds = %for.inc, %entry
  ret i32 0, !dbg !303
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ScheduleTraverseGHExtensions(%struct.cGH* %GH, i8* %where) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !129), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i8* %where}, i64 0, metadata !130), !dbg !305
  %0 = load i32* @num_extensions, align 4, !dbg !306, !tbaa !206
  %cmp = icmp slt i32 %0, 1, !dbg !306
  br i1 %cmp, label %if.then, label %for.body, !dbg !306

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cGH* %GH to i8*, !dbg !307
  %call = tail call i32 @CCTK_ScheduleTraverse(i8* %where, i8* %1, i32 (i8*, %struct.cFunctionData*, i8*)* null) #6, !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !132), !dbg !307
  br label %if.end6, !dbg !309

for.body:                                         ; preds = %entry, %for.inc
  %handle.013 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %2 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !310, !tbaa !195
  %call3 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %handle.013) #6, !dbg !310
  %tobool = icmp eq i8* %call3, null, !dbg !314
  br i1 %tobool, label %for.inc, label %if.then4, !dbg !314

if.then4:                                         ; preds = %for.body
  %ScheduleTraverseGH = getelementptr inbounds i8* %call3, i64 16, !dbg !315
  %3 = bitcast i8* %ScheduleTraverseGH to i32 (%struct.cGH*, i8*)**, !dbg !315
  %4 = load i32 (%struct.cGH*, i8*)** %3, align 8, !dbg !315, !tbaa !195
  %call5 = tail call i32 %4(%struct.cGH* %GH, i8* %where) #6, !dbg !315
  br label %for.inc, !dbg !317

for.inc:                                          ; preds = %for.body, %if.then4
  %inc = add nsw i32 %handle.013, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !131), !dbg !318
  %5 = load i32* @num_extensions, align 4, !dbg !318, !tbaa !206
  %cmp2 = icmp slt i32 %inc, %5, !dbg !318
  br i1 %cmp2, label %for.body, label %if.end6, !dbg !318

if.end6:                                          ; preds = %for.inc, %if.then
  %retval1.0 = phi i32 [ %call, %if.then ], [ 0, %for.inc ]
  ret i32 %retval1.0, !dbg !319
}

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GHExtensionHandle(i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !136), !dbg !320
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !321, !tbaa !195
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** null) #6, !dbg !321
  ret i32 %call, !dbg !321
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_ghextensionhandle_(i32* nocapture %handle, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %handle}, i64 0, metadata !141), !dbg !322
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !142), !dbg !322
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !143), !dbg !322
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !323
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !144), !dbg !323
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !324) #5, !dbg !326
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !327, !tbaa !195
  %call.i = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %call, i8** null) #6, !dbg !327
  store i32 %call.i, i32* %handle, align 4, !dbg !325, !tbaa !206
  tail call void @free(i8* %call) #6, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_GHExtension(%struct.cGH* nocapture %GH, i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !151), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !152), !dbg !330
  %0 = load %struct.cHandledData** @GHExtensions, align 8, !dbg !331, !tbaa !195
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** null) #6, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !153), !dbg !331
  %cmp = icmp sgt i32 %call, -1, !dbg !332
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !332

land.lhs.true:                                    ; preds = %entry
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !332
  %1 = load i8*** %extensions, align 8, !dbg !332, !tbaa !195
  %tobool = icmp eq i8** %1, null, !dbg !332
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !332

cond.true:                                        ; preds = %land.lhs.true
  %idxprom = sext i32 %call to i64, !dbg !332
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !332
  %2 = load i8** %arrayidx, align 8, !dbg !332, !tbaa !195
  br label %cond.end, !dbg !332

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !332
  ret i8* %cond, !dbg !332
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i8* @Util_GetHandleName(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize readnone uwtable
define internal noalias i8* @DummySetupGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level, %struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !170), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !171), !dbg !334
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !172), !dbg !335
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !170), !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !171), !dbg !337
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !172), !dbg !338
  ret i8* null, !dbg !339
}

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyInitGH(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !167), !dbg !340
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !167), !dbg !341
  ret i32 0, !dbg !342
}

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyScheduleTraverseGH(%struct.cGH* nocapture %GH, i8* nocapture %where) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !163), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %where}, i64 0, metadata !164), !dbg !344
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !163), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i8* %where}, i64 0, metadata !164), !dbg !346
  ret i32 0, !dbg !347
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !173, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !82, metadata !88, metadata !96, metadata !104, metadata !112, metadata !122, metadata !127, metadata !134, metadata !137, metadata !145, metadata !154, metadata !161, metadata !165, metadata !168}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_GHExtensions_c", metadata !"CCTKi_version_main_GHExtensions_c", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_GHExtensions_c, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [CCTKi_version_main_GHExtensions_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterGHExtension", metadata !"CCTK_RegisterGHExtension", metadata !"", i32 127, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_RegisterGHExtension, null, null, metadata !15, i32 128} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 128] [CCTK_RegisterGHExtension]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !11, metadata !"name", metadata !5, i32 16777343, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 127]
!17 = metadata !{i32 786688, metadata !11, metadata !"handle", metadata !5, i32 130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 130]
!18 = metadata !{i32 786688, metadata !11, metadata !"new_extension", metadata !5, i32 132, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_extension] [line 132]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GHExtension]
!20 = metadata !{i32 786451, metadata !1, null, metadata !"GHExtension", i32 47, i64 192, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [GHExtension] [line 47, size 192, align 64, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !74, metadata !78}
!22 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"SetupGH", i32 49, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [SetupGH] [line 49, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !27, metadata !14, metadata !36}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !34, metadata !72}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!37 = metadata !{i32 786454, metadata !30, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !53, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !64, metadata !65}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!48 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!49 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!50 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!51 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!52 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!53 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!55 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !54} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!56 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!57 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!58 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!59 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!60 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!61 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!65 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !66} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!67 = metadata !{i32 786454, metadata !39, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !39, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786445, metadata !39, metadata !68, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!71 = metadata !{i32 786445, metadata !39, metadata !68, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!72 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!73 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"InitGH", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [InitGH] [line 50, size 64, align 64, offset 64] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !14, metadata !36}
!78 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"ScheduleTraverseGH", i32 51, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [ScheduleTraverseGH] [line 51, size 64, align 64, offset 128] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !14, metadata !36, metadata !8}
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_UnregisterGHExtension", metadata !"CCTK_UnregisterGHExtension", metadata !"", i32 200, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_UnregisterGHExtension, null, null, metadata !83, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [CCTK_UnregisterGHExtension]
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87}
!84 = metadata !{i32 786689, metadata !82, metadata !"name", metadata !5, i32 16777416, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 200]
!85 = metadata !{i32 786688, metadata !82, metadata !"handle", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 202]
!86 = metadata !{i32 786688, metadata !82, metadata !"ret_val", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret_val] [line 202]
!87 = metadata !{i32 786688, metadata !82, metadata !"extension", metadata !5, i32 203, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 203]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterGHExtensionSetupGH", metadata !"CCTK_RegisterGHExtensionSetupGH", metadata !"", i32 269, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)*)* @CCTK_RegisterGHExtensionSetupGH, null, null, metadata !91, i32 271} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 271] [CCTK_RegisterGHExtensionSetupGH]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !14, metadata !14, metadata !23}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95}
!92 = metadata !{i32 786689, metadata !88, metadata !"handle", metadata !5, i32 16777485, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 269]
!93 = metadata !{i32 786689, metadata !88, metadata !"func", metadata !5, i32 33554702, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 270]
!94 = metadata !{i32 786688, metadata !88, metadata !"return_code", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 272]
!95 = metadata !{i32 786688, metadata !88, metadata !"extension", metadata !5, i32 273, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 273]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterGHExtensionInitGH", metadata !"CCTK_RegisterGHExtensionInitGH", metadata !"", i32 324, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*)*)* @CCTK_RegisterGHExtensionInitGH, null, null, metadata !99, i32 326} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 326] [CCTK_RegisterGHExtensionInitGH]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !14, metadata !14, metadata !75}
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103}
!100 = metadata !{i32 786689, metadata !96, metadata !"handle", metadata !5, i32 16777540, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 324]
!101 = metadata !{i32 786689, metadata !96, metadata !"func", metadata !5, i32 33554757, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 325]
!102 = metadata !{i32 786688, metadata !96, metadata !"return_code", metadata !5, i32 327, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 327]
!103 = metadata !{i32 786688, metadata !96, metadata !"extension", metadata !5, i32 328, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 328]
!104 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterGHExtensionScheduleTraverseGH", metadata !"CCTK_RegisterGHExtensionScheduleTraverseGH", metadata !"", i32 379, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*, i8*)*)* @CCTK_RegisterGHExtensionScheduleTraverseGH, null, null, metadata !107, i32 381} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 381] [CCTK_RegisterGHExtensionScheduleTraverseGH]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !14, metadata !14, metadata !79}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111}
!108 = metadata !{i32 786689, metadata !104, metadata !"handle", metadata !5, i32 16777595, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 379]
!109 = metadata !{i32 786689, metadata !104, metadata !"func", metadata !5, i32 33554812, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 380]
!110 = metadata !{i32 786688, metadata !104, metadata !"return_code", metadata !5, i32 382, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 382]
!111 = metadata !{i32 786688, metadata !104, metadata !"extension", metadata !5, i32 383, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 383]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetupGHExtensions", metadata !"CCTKi_SetupGHExtensions", metadata !"", i32 449, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*, i32, %struct.cGH*)* @CCTKi_SetupGHExtensions, null, null, metadata !115, i32 452} ; [ DW_TAG_subprogram ] [line 449] [def] [scope 452] [CCTKi_SetupGHExtensions]
!113 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{metadata !14, metadata !27, metadata !14, metadata !36}
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!116 = metadata !{i32 786689, metadata !112, metadata !"config", metadata !5, i32 16777665, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 449]
!117 = metadata !{i32 786689, metadata !112, metadata !"convergence_level", metadata !5, i32 33554882, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 450]
!118 = metadata !{i32 786689, metadata !112, metadata !"GH", metadata !5, i32 50332099, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 451]
!119 = metadata !{i32 786688, metadata !112, metadata !"return_code", metadata !5, i32 453, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 453]
!120 = metadata !{i32 786688, metadata !112, metadata !"handle", metadata !5, i32 454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 454]
!121 = metadata !{i32 786688, metadata !112, metadata !"extension", metadata !5, i32 455, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 455]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_InitGHExtensions", metadata !"CCTKi_InitGHExtensions", metadata !"", i32 523, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CCTKi_InitGHExtensions, null, null, metadata !123, i32 524} ; [ DW_TAG_subprogram ] [line 523] [def] [scope 524] [CCTKi_InitGHExtensions]
!123 = metadata !{metadata !124, metadata !125, metadata !126}
!124 = metadata !{i32 786689, metadata !122, metadata !"GH", metadata !5, i32 16777739, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 523]
!125 = metadata !{i32 786688, metadata !122, metadata !"handle", metadata !5, i32 525, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 525]
!126 = metadata !{i32 786688, metadata !122, metadata !"extension", metadata !5, i32 526, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 526]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleTraverseGHExtensions", metadata !"CCTKi_ScheduleTraverseGHExtensions", metadata !"", i32 573, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_ScheduleTraverseGHExtensions, null, null, metadata !128, i32 575} ; [ DW_TAG_subprogram ] [line 573] [def] [scope 575] [CCTKi_ScheduleTraverseGHExtensions]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786689, metadata !127, metadata !"GH", metadata !5, i32 16777789, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 573]
!130 = metadata !{i32 786689, metadata !127, metadata !"where", metadata !5, i32 33555006, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [where] [line 574]
!131 = metadata !{i32 786688, metadata !127, metadata !"handle", metadata !5, i32 576, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 576]
!132 = metadata !{i32 786688, metadata !127, metadata !"retval", metadata !5, i32 576, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 576]
!133 = metadata !{i32 786688, metadata !127, metadata !"extension", metadata !5, i32 577, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 577]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_GHExtensionHandle", metadata !"CCTK_GHExtensionHandle", metadata !"", i32 630, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GHExtensionHandle, null, null, metadata !135, i32 631} ; [ DW_TAG_subprogram ] [line 630] [def] [scope 631] [CCTK_GHExtensionHandle]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786689, metadata !134, metadata !"name", metadata !5, i32 16777846, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 630]
!137 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_ghextensionhandle_", metadata !"cctk_ghextensionhandle_", metadata !"", i32 635, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_ghextensionhandle_, null, null, metadata !140, i32 637} ; [ DW_TAG_subprogram ] [line 635] [def] [scope 637] [cctk_ghextensionhandle_]
!138 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{null, metadata !44, metadata !33, metadata !73}
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144}
!141 = metadata !{i32 786689, metadata !137, metadata !"handle", metadata !5, i32 16777852, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 636]
!142 = metadata !{i32 786689, metadata !137, metadata !"cctk_str1", metadata !5, i32 33555068, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 636]
!143 = metadata !{i32 786689, metadata !137, metadata !"cctk_strlen1", metadata !5, i32 50332284, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 636]
!144 = metadata !{i32 786688, metadata !137, metadata !"name", metadata !5, i32 638, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 638]
!145 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_GHExtension", metadata !"CCTK_GHExtension", metadata !"", i32 670, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.cGH*, i8*)* @CCTK_GHExtension, null, null, metadata !150, i32 671} ; [ DW_TAG_subprogram ] [line 670] [def] [scope 671] [CCTK_GHExtension]
!146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !26, metadata !148, metadata !8}
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!150 = metadata !{metadata !151, metadata !152, metadata !153}
!151 = metadata !{i32 786689, metadata !145, metadata !"GH", metadata !5, i32 16777886, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 670]
!152 = metadata !{i32 786689, metadata !145, metadata !"name", metadata !5, i32 33555102, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 670]
!153 = metadata !{i32 786688, metadata !145, metadata !"handle", metadata !5, i32 672, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 672]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CheckAllExtensionsSetup", metadata !"CheckAllExtensionsSetup", metadata !"", i32 707, metadata !155, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !157, i32 708} ; [ DW_TAG_subprogram ] [line 707] [local] [def] [scope 708] [CheckAllExtensionsSetup]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !14}
!157 = metadata !{metadata !158, metadata !159, metadata !160}
!158 = metadata !{i32 786688, metadata !154, metadata !"return_code", metadata !5, i32 709, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 709]
!159 = metadata !{i32 786688, metadata !154, metadata !"handle", metadata !5, i32 710, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 710]
!160 = metadata !{i32 786688, metadata !154, metadata !"extension", metadata !5, i32 711, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extension] [line 711]
!161 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyScheduleTraverseGH", metadata !"DummyScheduleTraverseGH", metadata !"", i32 881, metadata !80, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @DummyScheduleTraverseGH, null, null, metadata !162, i32 883} ; [ DW_TAG_subprogram ] [line 881] [local] [def] [scope 883] [DummyScheduleTraverseGH]
!162 = metadata !{metadata !163, metadata !164}
!163 = metadata !{i32 786689, metadata !161, metadata !"GH", metadata !5, i32 16778097, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 881]
!164 = metadata !{i32 786689, metadata !161, metadata !"where", metadata !5, i32 33555314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [where] [line 882]
!165 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyInitGH", metadata !"DummyInitGH", metadata !"", i32 842, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @DummyInitGH, null, null, metadata !166, i32 843} ; [ DW_TAG_subprogram ] [line 842] [local] [def] [scope 843] [DummyInitGH]
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786689, metadata !165, metadata !"GH", metadata !5, i32 16778058, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 842]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummySetupGH", metadata !"DummySetupGH", metadata !"", i32 806, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @DummySetupGH, null, null, metadata !169, i32 809} ; [ DW_TAG_subprogram ] [line 806] [local] [def] [scope 809] [DummySetupGH]
!169 = metadata !{metadata !170, metadata !171, metadata !172}
!170 = metadata !{i32 786689, metadata !168, metadata !"config", metadata !5, i32 16778022, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 806]
!171 = metadata !{i32 786689, metadata !168, metadata !"convergence_level", metadata !5, i32 33555239, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 807]
!172 = metadata !{i32 786689, metadata !168, metadata !"GH", metadata !5, i32 50332456, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 808]
!173 = metadata !{metadata !174, metadata !175, metadata !191}
!174 = metadata !{i32 786484, i32 0, null, metadata !"num_extensions", metadata !"num_extensions", metadata !"", metadata !5, i32 87, metadata !14, i32 1, i32 1, i32* @num_extensions, null} ; [ DW_TAG_variable ] [num_extensions] [line 87] [local] [def]
!175 = metadata !{i32 786484, i32 0, null, metadata !"GHExtensions", metadata !"GHExtensions", metadata !"", metadata !5, i32 86, metadata !176, i32 1, i32 1, %struct.cHandledData** @GHExtensions, null} ; [ DW_TAG_variable ] [GHExtensions] [line 86] [local] [def]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!177 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!178 = metadata !{i32 786451, metadata !179, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !180, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!179 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!180 = metadata !{metadata !181, metadata !189, metadata !190}
!181 = metadata !{i32 786445, metadata !179, metadata !178, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!183 = metadata !{i32 786454, metadata !179, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !179, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !187, metadata !188}
!186 = metadata !{i32 786445, metadata !179, metadata !184, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!187 = metadata !{i32 786445, metadata !179, metadata !184, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!188 = metadata !{i32 786445, metadata !179, metadata !184, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!189 = metadata !{i32 786445, metadata !179, metadata !178, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!190 = metadata !{i32 786445, metadata !179, metadata !178, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !73} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!191 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 27, metadata !8, i32 1, i32 1, null, null}
!192 = metadata !{i32 29, i32 0, metadata !4, null}
!193 = metadata !{i32 127, i32 0, metadata !11, null}
!194 = metadata !{i32 135, i32 0, metadata !11, null}
!195 = metadata !{metadata !"any pointer", metadata !196}
!196 = metadata !{metadata !"omnipotent char", metadata !197}
!197 = metadata !{metadata !"Simple C/C++ TBAA"}
!198 = metadata !{i32 137, i32 0, metadata !11, null}
!199 = metadata !{i32 140, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !11, i32 138, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!201 = metadata !{i32 142, i32 0, metadata !200, null}
!202 = metadata !{i32 145, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !200, i32 143, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!204 = metadata !{i32 153, i32 0, metadata !203, null}
!205 = metadata !{i32 157, i32 0, metadata !203, null}
!206 = metadata !{metadata !"int", metadata !196}
!207 = metadata !{i32 158, i32 0, metadata !203, null}
!208 = metadata !{i32 171, i32 0, metadata !11, null}
!209 = metadata !{i32 200, i32 0, metadata !82, null}
!210 = metadata !{i32 -1}
!211 = metadata !{i32 202, i32 0, metadata !82, null}
!212 = metadata !{i32 203, i32 0, metadata !82, null}
!213 = metadata !{i32 206, i32 0, metadata !82, null}
!214 = metadata !{i32 208, i32 0, metadata !82, null}
!215 = metadata !{i32 211, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !82, i32 209, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!217 = metadata !{i32 213, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !216, i32 212, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!219 = metadata !{i32 215, i32 0, metadata !218, null}
!220 = metadata !{i32 216, i32 0, metadata !218, null}
!221 = metadata !{i32 223, i32 0, metadata !218, null}
!222 = metadata !{i32 226, i32 0, metadata !82, null}
!223 = metadata !{i32 269, i32 0, metadata !88, null}
!224 = metadata !{i32 270, i32 0, metadata !88, null}
!225 = metadata !{i32 276, i32 0, metadata !88, null}
!226 = metadata !{i32 278, i32 0, metadata !88, null}
!227 = metadata !{i32 280, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !88, i32 279, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!229 = metadata !{i32 1}
!230 = metadata !{i32 281, i32 0, metadata !228, null}
!231 = metadata !{i32 282, i32 0, metadata !228, null}
!232 = metadata !{i32 288, i32 0, metadata !88, null}
!233 = metadata !{i32 324, i32 0, metadata !96, null}
!234 = metadata !{i32 325, i32 0, metadata !96, null}
!235 = metadata !{i32 331, i32 0, metadata !96, null}
!236 = metadata !{i32 333, i32 0, metadata !96, null}
!237 = metadata !{i32 335, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !96, i32 334, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!239 = metadata !{i32 336, i32 0, metadata !238, null}
!240 = metadata !{i32 337, i32 0, metadata !238, null}
!241 = metadata !{i32 343, i32 0, metadata !96, null}
!242 = metadata !{i32 379, i32 0, metadata !104, null}
!243 = metadata !{i32 380, i32 0, metadata !104, null}
!244 = metadata !{i32 386, i32 0, metadata !104, null}
!245 = metadata !{i32 388, i32 0, metadata !104, null}
!246 = metadata !{i32 390, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !104, i32 389, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!248 = metadata !{i32 391, i32 0, metadata !247, null}
!249 = metadata !{i32 392, i32 0, metadata !247, null}
!250 = metadata !{i32 398, i32 0, metadata !104, null}
!251 = metadata !{i32 449, i32 0, metadata !112, null}
!252 = metadata !{i32 450, i32 0, metadata !112, null}
!253 = metadata !{i32 451, i32 0, metadata !112, null}
!254 = metadata !{i32 786688, metadata !154, metadata !"return_code", metadata !5, i32 709, metadata !14, i32 0, metadata !255} ; [ DW_TAG_auto_variable ] [return_code] [line 709]
!255 = metadata !{i32 457, i32 0, metadata !112, null}
!256 = metadata !{i32 713, i32 0, metadata !154, metadata !255}
!257 = metadata !{i32 786688, metadata !154, metadata !"handle", metadata !5, i32 710, metadata !14, i32 0, metadata !255} ; [ DW_TAG_auto_variable ] [handle] [line 710]
!258 = metadata !{i32 716, i32 0, metadata !259, metadata !255}
!259 = metadata !{i32 786443, metadata !1, metadata !154, i32 716, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!260 = metadata !{i32 718, i32 0, metadata !261, metadata !255}
!261 = metadata !{i32 786443, metadata !1, metadata !259, i32 717, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!262 = metadata !{i32 719, i32 0, metadata !261, metadata !255}
!263 = metadata !{i32 726, i32 0, metadata !264, metadata !255}
!264 = metadata !{i32 786443, metadata !1, metadata !261, i32 720, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!265 = metadata !{i32 730, i32 0, metadata !266, metadata !255}
!266 = metadata !{i32 786443, metadata !1, metadata !264, i32 727, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!267 = metadata !{i32 731, i32 0, metadata !266, metadata !255}
!268 = metadata !{i32 732, i32 0, metadata !266, metadata !255}
!269 = metadata !{i32 735, i32 0, metadata !264, metadata !255}
!270 = metadata !{i32 739, i32 0, metadata !271, metadata !255}
!271 = metadata !{i32 786443, metadata !1, metadata !264, i32 736, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!272 = metadata !{i32 740, i32 0, metadata !271, metadata !255}
!273 = metadata !{i32 741, i32 0, metadata !271, metadata !255}
!274 = metadata !{i32 744, i32 0, metadata !264, metadata !255}
!275 = metadata !{i32 748, i32 0, metadata !276, metadata !255}
!276 = metadata !{i32 786443, metadata !1, metadata !264, i32 745, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!277 = metadata !{i32 749, i32 0, metadata !276, metadata !255}
!278 = metadata !{i32 750, i32 0, metadata !276, metadata !255}
!279 = metadata !{i32 461, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !112, i32 458, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!281 = metadata !{i32 463, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !280, i32 462, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!283 = metadata !{i32 464, i32 0, metadata !282, null}
!284 = metadata !{i32 467, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !280, i32 466, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!286 = metadata !{i32 470, i32 0, metadata !280, null}
!287 = metadata !{i32 472, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !289, i32 472, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!289 = metadata !{i32 786443, metadata !1, metadata !280, i32 471, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!290 = metadata !{i32 475, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 473, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!292 = metadata !{i32 476, i32 0, metadata !291, null}
!293 = metadata !{i32 495, i32 0, metadata !112, null}
!294 = metadata !{i32 523, i32 0, metadata !122, null}
!295 = metadata !{i32 528, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !122, i32 528, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!297 = metadata !{i32 530, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !296, i32 529, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!299 = metadata !{i32 531, i32 0, metadata !298, null}
!300 = metadata !{i32 533, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !298, i32 532, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!302 = metadata !{i32 534, i32 0, metadata !301, null}
!303 = metadata !{i32 537, i32 0, metadata !122, null}
!304 = metadata !{i32 573, i32 0, metadata !127, null}
!305 = metadata !{i32 574, i32 0, metadata !127, null}
!306 = metadata !{i32 579, i32 0, metadata !127, null}
!307 = metadata !{i32 581, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !127, i32 580, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!309 = metadata !{i32 582, i32 0, metadata !308, null}
!310 = metadata !{i32 587, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !312, i32 586, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!312 = metadata !{i32 786443, metadata !1, metadata !313, i32 585, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!313 = metadata !{i32 786443, metadata !1, metadata !127, i32 584, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!314 = metadata !{i32 588, i32 0, metadata !311, null}
!315 = metadata !{i32 590, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !311, i32 589, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c]
!317 = metadata !{i32 591, i32 0, metadata !316, null}
!318 = metadata !{i32 585, i32 0, metadata !312, null}
!319 = metadata !{i32 596, i32 0, metadata !127, null}
!320 = metadata !{i32 630, i32 0, metadata !134, null}
!321 = metadata !{i32 632, i32 0, metadata !134, null}
!322 = metadata !{i32 636, i32 0, metadata !137, null}
!323 = metadata !{i32 638, i32 0, metadata !137, null}
!324 = metadata !{i32 786689, metadata !134, metadata !"name", metadata !5, i32 16777846, metadata !8, i32 0, metadata !325} ; [ DW_TAG_arg_variable ] [name] [line 630]
!325 = metadata !{i32 639, i32 0, metadata !137, null}
!326 = metadata !{i32 630, i32 0, metadata !134, metadata !325}
!327 = metadata !{i32 632, i32 0, metadata !134, metadata !325}
!328 = metadata !{i32 640, i32 0, metadata !137, null}
!329 = metadata !{i32 641, i32 0, metadata !137, null}
!330 = metadata !{i32 670, i32 0, metadata !145, null}
!331 = metadata !{i32 674, i32 0, metadata !145, null}
!332 = metadata !{i32 676, i32 0, metadata !145, null}
!333 = metadata !{i32 806, i32 0, metadata !168, null}
!334 = metadata !{i32 807, i32 0, metadata !168, null}
!335 = metadata !{i32 808, i32 0, metadata !168, null}
!336 = metadata !{i32 810, i32 0, metadata !168, null}
!337 = metadata !{i32 811, i32 0, metadata !168, null}
!338 = metadata !{i32 812, i32 0, metadata !168, null}
!339 = metadata !{i32 813, i32 0, metadata !168, null}
!340 = metadata !{i32 842, i32 0, metadata !165, null}
!341 = metadata !{i32 844, i32 0, metadata !165, null}
!342 = metadata !{i32 845, i32 0, metadata !165, null}
!343 = metadata !{i32 881, i32 0, metadata !161, null}
!344 = metadata !{i32 882, i32 0, metadata !161, null}
!345 = metadata !{i32 884, i32 0, metadata !161, null}
!346 = metadata !{i32 885, i32 0, metadata !161, null}
!347 = metadata !{i32 886, i32 0, metadata !161, null}
