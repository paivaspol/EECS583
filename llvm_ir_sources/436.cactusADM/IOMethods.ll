; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOMethod = type { i8*, i8*, i32 (%struct.cGH*)*, i32 (%struct.cGH*, i8*, i8*)*, i32 (%struct.cGH*, i32)*, i32 (%struct.cGH*, i32)* }

@IOMethods = internal global %struct.cHandledData* null, align 8
@num_methods = internal unnamed_addr global i32 0, align 4
@CCTK_OutputVarAsByMethod = external global i32 (%struct.cGH*, i8*, i8*, i8*)*
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [88 x i8] c"CactusDefaultOutputVarAsByMethod: I/O method '%s' not found for output of variable '%s'\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/IO/IOMethods.c,v 1.36 2001/12/30 13:12:06 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_IO_IOMethods_c() #0 {
entry:
  ret i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), !dbg !232
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_RegisterIOMethod(i8* %thorn, i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !16), !dbg !233
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !17), !dbg !233
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !234, !tbaa !235
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** null) #6, !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !18), !dbg !234
  %cmp = icmp slt i32 %call, 0, !dbg !238
  br i1 %cmp, label %if.then, label %if.end7, !dbg !238

if.then:                                          ; preds = %entry
  %call1 = tail call noalias i8* @malloc(i64 48) #6, !dbg !239
  %tobool = icmp eq i8* %call1, null, !dbg !241
  br i1 %tobool, label %if.end7, label %if.then2, !dbg !241

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @Util_NewHandle(%struct.cHandledData** @IOMethods, i8* %name, i8* %call1) #6, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !18), !dbg !242
  %call4 = tail call i8* @CCTK_ThornImplementation(i8* %thorn) #6, !dbg !244
  %implementation = bitcast i8* %call1 to i8**, !dbg !244
  store i8* %call4, i8** %implementation, align 8, !dbg !244, !tbaa !235
  %name5 = getelementptr inbounds i8* %call1, i64 8, !dbg !245
  %1 = bitcast i8* %name5 to i8**, !dbg !245
  store i8* %name, i8** %1, align 8, !dbg !245, !tbaa !235
  %OutputGH = getelementptr inbounds i8* %call1, i64 16, !dbg !246
  %2 = bitcast i8* %OutputGH to i32 (%struct.cGH*)**, !dbg !246
  store i32 (%struct.cGH*)* @DummyOutputGH, i32 (%struct.cGH*)** %2, align 8, !dbg !246, !tbaa !235
  %OutputVarAs = getelementptr inbounds i8* %call1, i64 24, !dbg !247
  %3 = bitcast i8* %OutputVarAs to i32 (%struct.cGH*, i8*, i8*)**, !dbg !247
  store i32 (%struct.cGH*, i8*, i8*)* @DummyOutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %3, align 8, !dbg !247, !tbaa !235
  %TriggerOutput = getelementptr inbounds i8* %call1, i64 32, !dbg !248
  %4 = bitcast i8* %TriggerOutput to i32 (%struct.cGH*, i32)**, !dbg !248
  store i32 (%struct.cGH*, i32)* @DummyTriggerOutput, i32 (%struct.cGH*, i32)** %4, align 8, !dbg !248, !tbaa !235
  %TimeToOutput = getelementptr inbounds i8* %call1, i64 40, !dbg !249
  %5 = bitcast i8* %TimeToOutput to i32 (%struct.cGH*, i32)**, !dbg !249
  store i32 (%struct.cGH*, i32)* @DummyTimeToOutput, i32 (%struct.cGH*, i32)** %5, align 8, !dbg !249, !tbaa !235
  %6 = load i32* @num_methods, align 4, !dbg !250, !tbaa !251
  %inc = add nsw i32 %6, 1, !dbg !250
  store i32 %inc, i32* @num_methods, align 4, !dbg !250, !tbaa !251
  br label %if.end7, !dbg !252

if.end7:                                          ; preds = %entry, %if.then, %if.then2
  %handle.0 = phi i32 [ %call3, %if.then2 ], [ -2, %if.then ], [ -1, %entry ]
  ret i32 %handle.0, !dbg !253
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #3

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyOutputGH(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !212), !dbg !254
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !212), !dbg !255
  ret i32 0, !dbg !256
}

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyOutputVarAs(%struct.cGH* nocapture %GH, i8* nocapture %var, i8* nocapture %alias) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !203), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !204), !dbg !258
  tail call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !205), !dbg !259
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !203), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !204), !dbg !261
  tail call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !205), !dbg !262
  ret i32 0, !dbg !263
}

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyTriggerOutput(%struct.cGH* nocapture %GH, i32 %var) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !199), !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !200), !dbg !264
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !199), !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !200), !dbg !266
  ret i32 0, !dbg !267
}

; Function Attrs: nounwind optsize readnone uwtable
define internal i32 @DummyTimeToOutput(%struct.cGH* nocapture %GH, i32 %var) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !208), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !209), !dbg !268
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !208), !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !209), !dbg !270
  ret i32 0, !dbg !271
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterIOMethodOutputGH(i32 %handle, i32 (%struct.cGH*)* %OutputGH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !81), !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %OutputGH}, i64 0, metadata !82), !dbg !272
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !273, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !273
  %tobool = icmp ne i8* %call, null, !dbg !274
  br i1 %tobool, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  %OutputGH1 = getelementptr inbounds i8* %call, i64 16, !dbg !275
  %1 = bitcast i8* %OutputGH1 to i32 (%struct.cGH*)**, !dbg !275
  store i32 (%struct.cGH*)* %OutputGH, i32 (%struct.cGH*)** %1, align 8, !dbg !275, !tbaa !235
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  %not.tobool = xor i1 %tobool, true, !dbg !278
  %cond = sext i1 %not.tobool to i32, !dbg !278
  ret i32 %cond, !dbg !278
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterIOMethodOutputVarAs(i32 %handle, i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !88), !dbg !279
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs}, i64 0, metadata !89), !dbg !280
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !281, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !281
  %tobool = icmp ne i8* %call, null, !dbg !282
  br i1 %tobool, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  %OutputVarAs1 = getelementptr inbounds i8* %call, i64 24, !dbg !283
  %1 = bitcast i8* %OutputVarAs1 to i32 (%struct.cGH*, i8*, i8*)**, !dbg !283
  store i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %1, align 8, !dbg !283, !tbaa !235
  br label %if.end, !dbg !285

if.end:                                           ; preds = %if.then, %entry
  %not.tobool = xor i1 %tobool, true, !dbg !286
  %cond = sext i1 %not.tobool to i32, !dbg !286
  ret i32 %cond, !dbg !286
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterIOMethodTriggerOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TriggerOutput) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !95), !dbg !287
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32)* %TriggerOutput}, i64 0, metadata !96), !dbg !288
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !289, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !289
  %tobool = icmp ne i8* %call, null, !dbg !290
  br i1 %tobool, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %entry
  %TriggerOutput1 = getelementptr inbounds i8* %call, i64 32, !dbg !291
  %1 = bitcast i8* %TriggerOutput1 to i32 (%struct.cGH*, i32)**, !dbg !291
  store i32 (%struct.cGH*, i32)* %TriggerOutput, i32 (%struct.cGH*, i32)** %1, align 8, !dbg !291, !tbaa !235
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %tobool to i32, !dbg !294
  ret i32 %conv, !dbg !294
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterIOMethodTimeToOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TimeToOutput) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !100), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32)* %TimeToOutput}, i64 0, metadata !101), !dbg !296
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !297, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !297
  %tobool = icmp ne i8* %call, null, !dbg !298
  br i1 %tobool, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  %TimeToOutput1 = getelementptr inbounds i8* %call, i64 40, !dbg !299
  %1 = bitcast i8* %TimeToOutput1 to i32 (%struct.cGH*, i32)**, !dbg !299
  store i32 (%struct.cGH*, i32)* %TimeToOutput, i32 (%struct.cGH*, i32)** %1, align 8, !dbg !299, !tbaa !235
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %entry
  %not.tobool = xor i1 %tobool, true, !dbg !302
  %cond = sext i1 %not.tobool to i32, !dbg !302
  ret i32 %cond, !dbg !302
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %alias) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !105), !dbg !303
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !106), !dbg !303
  tail call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !107), !dbg !303
  %0 = load i32* @num_methods, align 4, !dbg !304, !tbaa !251
  %cmp = icmp sgt i32 %0, 0, !dbg !304
  br i1 %cmp, label %for.body, label %if.end7, !dbg !304

for.body:                                         ; preds = %entry, %for.inc
  %handle.014 = phi i32 [ %inc6, %for.inc ], [ 0, %entry ]
  %retval1.013 = phi i32 [ %retval1.1, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !305, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.014) #6, !dbg !305
  %tobool = icmp eq i8* %call, null, !dbg !309
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !309

land.lhs.true:                                    ; preds = %for.body
  %OutputVarAs = getelementptr inbounds i8* %call, i64 24, !dbg !309
  %2 = bitcast i8* %OutputVarAs to i32 (%struct.cGH*, i8*, i8*)**, !dbg !309
  %3 = load i32 (%struct.cGH*, i8*, i8*)** %2, align 8, !dbg !309, !tbaa !235
  %call3 = tail call i32 %3(%struct.cGH* %GH, i8* %var, i8* %alias) #6, !dbg !309
  %cmp4 = icmp eq i32 %call3, 0, !dbg !309
  %inc = zext i1 %cmp4 to i32, !dbg !309
  %inc.retval1.0 = add nsw i32 %inc, %retval1.013, !dbg !309
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %retval1.1 = phi i32 [ %retval1.013, %for.body ], [ %inc.retval1.0, %land.lhs.true ]
  %inc6 = add nsw i32 %handle.014, 1, !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %inc6}, i64 0, metadata !108), !dbg !310
  %4 = load i32* @num_methods, align 4, !dbg !310, !tbaa !251
  %cmp2 = icmp slt i32 %inc6, %4, !dbg !310
  br i1 %cmp2, label %for.body, label %if.end7, !dbg !310

if.end7:                                          ; preds = %for.inc, %entry
  %retval1.2 = phi i32 [ -1, %entry ], [ %retval1.1, %for.inc ]
  ret i32 %retval1.2, !dbg !311
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OutputVar(%struct.cGH* %GH, i8* %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !115), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !116), !dbg !312
  %call = tail call i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %var) #7, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !117), !dbg !313
  ret i32 %call, !dbg !314
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OutputVarByMethod(%struct.cGH* %GH, i8* %var, i8* %method) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !120), !dbg !315
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !121), !dbg !315
  tail call void @llvm.dbg.value(metadata !{i8* %method}, i64 0, metadata !122), !dbg !315
  %0 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !316, !tbaa !235
  %call = tail call i32 %0(%struct.cGH* %GH, i8* %var, i8* %method, i8* %var) #6, !dbg !316
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !123), !dbg !316
  ret i32 %call, !dbg !317
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_outputvarbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !130), !dbg !318
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !131), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !132), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !133), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !134), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !135), !dbg !318
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !136), !dbg !319
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !137), !dbg !319
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !320) #8, !dbg !322
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !323) #8, !dbg !322
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !324) #8, !dbg !322
  %0 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !325, !tbaa !235
  %call.i = tail call i32 %0(%struct.cGH* %GH, i8* %call, i8* %call1, i8* %call) #6, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !326) #8, !dbg !325
  store i32 %call.i, i32* %ierr, align 4, !dbg !321, !tbaa !251
  tail call void @free(i8* %call) #6, !dbg !327
  tail call void @free(i8* %call1) #6, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumIOMethods() #5 {
entry:
  %0 = load i32* @num_methods, align 4, !dbg !330, !tbaa !251
  ret i32 %0, !dbg !330
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_IOMethodImplementation(i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !145), !dbg !331
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !332, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !332
  %tobool = icmp eq i8* %call, null, !dbg !333
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !333

cond.true:                                        ; preds = %entry
  %implementation = bitcast i8* %call to i8**, !dbg !333
  %1 = load i8** %implementation, align 8, !dbg !333, !tbaa !235
  br label %cond.end, !dbg !333

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ], !dbg !333
  ret i8* %cond, !dbg !333
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_IOMethod(i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !149), !dbg !334
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !335, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !335
  %tobool = icmp eq i8* %call, null, !dbg !336
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !336

cond.true:                                        ; preds = %entry
  %name = getelementptr inbounds i8* %call, i64 8, !dbg !336
  %1 = bitcast i8* %name to i8**, !dbg !336
  %2 = load i8** %1, align 8, !dbg !336, !tbaa !235
  br label %cond.end, !dbg !336

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %entry ], !dbg !336
  ret i8* %cond, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultOutputGH(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !153), !dbg !337
  %0 = load i32* @num_methods, align 4, !dbg !338, !tbaa !251
  %cmp = icmp sgt i32 %0, 0, !dbg !338
  br i1 %cmp, label %for.body, label %if.end5, !dbg !338

for.body:                                         ; preds = %entry, %for.inc
  %handle.012 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %retval1.011 = phi i32 [ %retval1.1, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !339, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.012) #6, !dbg !339
  %tobool = icmp eq i8* %call, null, !dbg !343
  br i1 %tobool, label %for.inc, label %if.then3, !dbg !343

if.then3:                                         ; preds = %for.body
  %OutputGH = getelementptr inbounds i8* %call, i64 16, !dbg !344
  %2 = bitcast i8* %OutputGH to i32 (%struct.cGH*)**, !dbg !344
  %3 = load i32 (%struct.cGH*)** %2, align 8, !dbg !344, !tbaa !235
  %call4 = tail call i32 %3(%struct.cGH* %GH) #6, !dbg !344
  %add = add nsw i32 %call4, %retval1.011, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !155), !dbg !344
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body, %if.then3
  %retval1.1 = phi i32 [ %add, %if.then3 ], [ %retval1.011, %for.body ]
  %inc = add nsw i32 %handle.012, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !154), !dbg !347
  %4 = load i32* @num_methods, align 4, !dbg !347, !tbaa !251
  %cmp2 = icmp slt i32 %inc, %4, !dbg !347
  br i1 %cmp2, label %for.body, label %if.end5, !dbg !347

if.end5:                                          ; preds = %for.inc, %entry
  %retval1.2 = phi i32 [ -1, %entry ], [ %retval1.1, %for.inc ]
  ret i32 %retval1.2, !dbg !348
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH* %GH, i8* %var, i8* %methodname, i8* %alias) #1 {
entry:
  %method = alloca %struct.IOMethod*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !161), !dbg !349
  call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !162), !dbg !350
  call void @llvm.dbg.value(metadata !{i8* %methodname}, i64 0, metadata !163), !dbg !351
  call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !164), !dbg !352
  call void @llvm.dbg.declare(metadata !{%struct.IOMethod** %method}, metadata !166), !dbg !353
  %0 = load %struct.cHandledData** @IOMethods, align 8, !dbg !354, !tbaa !235
  %1 = bitcast %struct.IOMethod** %method to i8**, !dbg !354
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %methodname, i8** %1) #6, !dbg !354
  call void @llvm.dbg.value(metadata !{%struct.IOMethod** %method}, i64 0, metadata !166), !dbg !355
  %2 = load %struct.IOMethod** %method, align 8, !dbg !355, !tbaa !235
  %tobool = icmp eq %struct.IOMethod* %2, null, !dbg !355
  br i1 %tobool, label %if.else, label %if.then, !dbg !355

if.then:                                          ; preds = %entry
  %OutputVarAs = getelementptr inbounds %struct.IOMethod* %2, i64 0, i32 3, !dbg !356
  %3 = load i32 (%struct.cGH*, i8*, i8*)** %OutputVarAs, align 8, !dbg !356, !tbaa !235
  %call2 = call i32 %3(%struct.cGH* %GH, i8* %var, i8* %alias) #6, !dbg !356
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !165), !dbg !356
  br label %if.end, !dbg !358

if.else:                                          ; preds = %entry
  %call3 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 730, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8]* @.str2, i64 0, i64 0), i8* %methodname, i8* %var) #6, !dbg !359
  call void @llvm.dbg.value(metadata !361, i64 0, metadata !165), !dbg !362
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !363
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_outputvarasbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !171), !dbg !364
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !172), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !173), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !174), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str3}, i64 0, metadata !175), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !176), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !177), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen3}, i64 0, metadata !178), !dbg !364
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !365
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !179), !dbg !365
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !365
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !180), !dbg !365
  %call2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #6, !dbg !365
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !181), !dbg !365
  %0 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !366, !tbaa !235
  %call3 = tail call i32 %0(%struct.cGH* %GH, i8* %call, i8* %call1, i8* %call2) #6, !dbg !366
  store i32 %call3, i32* %ierr, align 4, !dbg !366, !tbaa !251
  tail call void @free(i8* %call) #6, !dbg !367
  tail call void @free(i8* %call1) #6, !dbg !368
  tail call void @free(i8* %call2) #6, !dbg !369
  ret void, !dbg !370
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_TriggerSaysGo(%struct.cGH* %GH, i32 %variable) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !184), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !185), !dbg !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !186), !dbg !372
  %0 = load i32* @num_methods, align 4, !dbg !372, !tbaa !251
  %cmp6 = icmp sgt i32 %0, 0, !dbg !372
  br i1 %cmp6, label %for.body, label %return, !dbg !372

for.body:                                         ; preds = %entry, %for.inc
  %handle.07 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !374, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle.07) #6, !dbg !374
  %tobool = icmp eq i8* %call, null, !dbg !376
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !376

land.lhs.true:                                    ; preds = %for.body
  %TimeToOutput = getelementptr inbounds i8* %call, i64 40, !dbg !376
  %2 = bitcast i8* %TimeToOutput to i32 (%struct.cGH*, i32)**, !dbg !376
  %3 = load i32 (%struct.cGH*, i32)** %2, align 8, !dbg !376, !tbaa !235
  %call1 = tail call i32 %3(%struct.cGH* %GH, i32 %variable) #6, !dbg !376
  %tobool2 = icmp eq i32 %call1, 0, !dbg !376
  br i1 %tobool2, label %for.inc, label %return, !dbg !376

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %inc = add nsw i32 %handle.07, 1, !dbg !372
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !186), !dbg !372
  %4 = load i32* @num_methods, align 4, !dbg !372, !tbaa !251
  %cmp = icmp slt i32 %inc, %4, !dbg !372
  br i1 %cmp, label %for.body, label %return, !dbg !372

return:                                           ; preds = %for.inc, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %for.inc ]
  ret i32 %retval.0, !dbg !377
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_TriggerAction(i8* %GH, i32 %variable) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !192), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !193), !dbg !378
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !380
  %0 = load i32* @num_methods, align 4, !dbg !380, !tbaa !251
  %cmp12 = icmp sgt i32 %0, 0, !dbg !380
  br i1 %cmp12, label %for.body.lr.ph, label %for.end, !dbg !380

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast i8* %GH to %struct.cGH*, !dbg !382
  br label %for.body, !dbg !380

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %handle.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc4, %for.inc ]
  %nmethods.013 = phi i32 [ 0, %for.body.lr.ph ], [ %nmethods.1, %for.inc ]
  %2 = load %struct.cHandledData** @IOMethods, align 8, !dbg !384, !tbaa !235
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %handle.014) #6, !dbg !384
  %tobool = icmp eq i8* %call, null, !dbg !382
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !382

land.lhs.true:                                    ; preds = %for.body
  %TimeToOutput = getelementptr inbounds i8* %call, i64 40, !dbg !382
  %3 = bitcast i8* %TimeToOutput to i32 (%struct.cGH*, i32)**, !dbg !382
  %4 = load i32 (%struct.cGH*, i32)** %3, align 8, !dbg !382, !tbaa !235
  %call1 = tail call i32 %4(%struct.cGH* %1, i32 %variable) #6, !dbg !382
  %tobool2 = icmp eq i32 %call1, 0, !dbg !382
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !382

if.then:                                          ; preds = %land.lhs.true
  %TriggerOutput = getelementptr inbounds i8* %call, i64 32, !dbg !385
  %5 = bitcast i8* %TriggerOutput to i32 (%struct.cGH*, i32)**, !dbg !385
  %6 = load i32 (%struct.cGH*, i32)** %5, align 8, !dbg !385, !tbaa !235
  %call3 = tail call i32 %6(%struct.cGH* %1, i32 %variable) #6, !dbg !385
  %inc = add nsw i32 %nmethods.013, 1, !dbg !387
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !195), !dbg !387
  br label %for.inc, !dbg !388

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %nmethods.1 = phi i32 [ %inc, %if.then ], [ %nmethods.013, %land.lhs.true ], [ %nmethods.013, %for.body ]
  %inc4 = add nsw i32 %handle.014, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i32 %inc4}, i64 0, metadata !194), !dbg !380
  %7 = load i32* @num_methods, align 4, !dbg !380, !tbaa !251
  %cmp = icmp slt i32 %inc4, %7, !dbg !380
  br i1 %cmp, label %for.body, label %for.end, !dbg !380

for.end:                                          ; preds = %for.inc, %entry
  %nmethods.0.lcssa = phi i32 [ 0, %entry ], [ %nmethods.1, %for.inc ]
  ret i32 %nmethods.0.lcssa, !dbg !389
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !213, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !77, metadata !84, metadata !91, metadata !98, metadata !103, metadata !111, metadata !118, metadata !124, metadata !138, metadata !141, metadata !147, metadata !151, metadata !157, metadata !167, metadata !182, metadata !188, metadata !197, metadata !201, metadata !206, metadata !210}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_IO_IOMethods_c", metadata !"CCTKi_version_IO_IOMethods_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_IO_IOMethods_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_IO_IOMethods_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_RegisterIOMethod", metadata !"CCTKi_RegisterIOMethod", metadata !"", i32 103, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTKi_RegisterIOMethod, null, null, metadata !15, i32 104} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 104] [CCTKi_RegisterIOMethod]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19}
!16 = metadata !{i32 786689, metadata !11, metadata !"thorn", metadata !5, i32 16777319, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 103]
!17 = metadata !{i32 786689, metadata !11, metadata !"name", metadata !5, i32 33554535, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 103]
!18 = metadata !{i32 786688, metadata !11, metadata !"handle", metadata !5, i32 105, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 105]
!19 = metadata !{i32 786688, metadata !11, metadata !"new_method", metadata !5, i32 106, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_method] [line 106]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IOMethod]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"IOMethod", i32 18, i64 384, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOMethod] [line 18, size 384, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_IOMethods.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !68, metadata !72, metadata !76}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"implementation", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [implementation] [line 20, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"name", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [name] [line 21, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"OutputGH", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [OutputGH] [line 22, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !14, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!32 = metadata !{i32 786454, metadata !22, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786451, metadata !34, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !35, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!34 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !48, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !60, metadata !61}
!36 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!37 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!38 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!42 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!45 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!46 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!47 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!48 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !49} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!50 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !49} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!51 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!52 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!53 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!54 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!55 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!56 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !57} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !58} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!61 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !62} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!63 = metadata !{i32 786454, metadata !34, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, metadata !34, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786445, metadata !34, metadata !64, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!67 = metadata !{i32 786445, metadata !34, metadata !64, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!68 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"OutputVarAs", i32 23, i64 64, i64 64, i64 192, i32 0, metadata !69} ; [ DW_TAG_member ] [OutputVarAs] [line 23, size 64, align 64, offset 192] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!70 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !14, metadata !30, metadata !8, metadata !8}
!72 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"TriggerOutput", i32 24, i64 64, i64 64, i64 256, i32 0, metadata !73} ; [ DW_TAG_member ] [TriggerOutput] [line 24, size 64, align 64, offset 256] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !14, metadata !30, metadata !14}
!76 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"TimeToOutput", i32 25, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [TimeToOutput] [line 25, size 64, align 64, offset 320] [from ]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterIOMethodOutputGH", metadata !"CCTK_RegisterIOMethodOutputGH", metadata !"", i32 175, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*)*)* @CCTK_RegisterIOMethodOutputGH, null, null, metadata !80, i32 176} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 176] [CCTK_RegisterIOMethodOutputGH]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !14, metadata !14, metadata !27}
!80 = metadata !{metadata !81, metadata !82, metadata !83}
!81 = metadata !{i32 786689, metadata !77, metadata !"handle", metadata !5, i32 16777391, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 175]
!82 = metadata !{i32 786689, metadata !77, metadata !"OutputGH", metadata !5, i32 33554607, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [OutputGH] [line 175]
!83 = metadata !{i32 786688, metadata !77, metadata !"method", metadata !5, i32 177, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 177]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterIOMethodOutputVarAs", metadata !"CCTK_RegisterIOMethodOutputVarAs", metadata !"", i32 217, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*, i8*, i8*)*)* @CCTK_RegisterIOMethodOutputVarAs, null, null, metadata !87, i32 221} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 221] [CCTK_RegisterIOMethodOutputVarAs]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !14, metadata !14, metadata !69}
!87 = metadata !{metadata !88, metadata !89, metadata !90}
!88 = metadata !{i32 786689, metadata !84, metadata !"handle", metadata !5, i32 16777433, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 217]
!89 = metadata !{i32 786689, metadata !84, metadata !"OutputVarAs", metadata !5, i32 33554650, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [OutputVarAs] [line 218]
!90 = metadata !{i32 786688, metadata !84, metadata !"method", metadata !5, i32 222, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 222]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterIOMethodTriggerOutput", metadata !"CCTK_RegisterIOMethodTriggerOutput", metadata !"", i32 262, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*, i32)*)* @CCTK_RegisterIOMethodTriggerOutput, null, null, metadata !94, i32 265} ; [ DW_TAG_subprogram ] [line 262] [def] [scope 265] [CCTK_RegisterIOMethodTriggerOutput]
!92 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !14, metadata !14, metadata !73}
!94 = metadata !{metadata !95, metadata !96, metadata !97}
!95 = metadata !{i32 786689, metadata !91, metadata !"handle", metadata !5, i32 16777478, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 262]
!96 = metadata !{i32 786689, metadata !91, metadata !"TriggerOutput", metadata !5, i32 33554695, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TriggerOutput] [line 263]
!97 = metadata !{i32 786688, metadata !91, metadata !"method", metadata !5, i32 266, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 266]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterIOMethodTimeToOutput", metadata !"CCTK_RegisterIOMethodTimeToOutput", metadata !"", i32 306, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*, i32)*)* @CCTK_RegisterIOMethodTimeToOutput, null, null, metadata !99, i32 309} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 309] [CCTK_RegisterIOMethodTimeToOutput]
!99 = metadata !{metadata !100, metadata !101, metadata !102}
!100 = metadata !{i32 786689, metadata !98, metadata !"handle", metadata !5, i32 16777522, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 306]
!101 = metadata !{i32 786689, metadata !98, metadata !"TimeToOutput", metadata !5, i32 33554739, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimeToOutput] [line 307]
!102 = metadata !{i32 786688, metadata !98, metadata !"method", metadata !5, i32 310, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 310]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_OutputVarAs", metadata !"CCTK_OutputVarAs", metadata !"", i32 365, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*)* @CCTK_OutputVarAs, null, null, metadata !104, i32 366} ; [ DW_TAG_subprogram ] [line 365] [def] [scope 366] [CCTK_OutputVarAs]
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110}
!105 = metadata !{i32 786689, metadata !103, metadata !"GH", metadata !5, i32 16777581, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 365]
!106 = metadata !{i32 786689, metadata !103, metadata !"var", metadata !5, i32 33554797, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 365]
!107 = metadata !{i32 786689, metadata !103, metadata !"alias", metadata !5, i32 50332013, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 365]
!108 = metadata !{i32 786688, metadata !103, metadata !"handle", metadata !5, i32 367, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 367]
!109 = metadata !{i32 786688, metadata !103, metadata !"retval", metadata !5, i32 367, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 367]
!110 = metadata !{i32 786688, metadata !103, metadata !"method", metadata !5, i32 368, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 368]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_OutputVar", metadata !"CCTK_OutputVar", metadata !"", i32 416, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTK_OutputVar, null, null, metadata !114, i32 417} ; [ DW_TAG_subprogram ] [line 416] [def] [scope 417] [CCTK_OutputVar]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !14, metadata !30, metadata !8}
!114 = metadata !{metadata !115, metadata !116, metadata !117}
!115 = metadata !{i32 786689, metadata !111, metadata !"GH", metadata !5, i32 16777632, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 416]
!116 = metadata !{i32 786689, metadata !111, metadata !"var", metadata !5, i32 33554848, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 416]
!117 = metadata !{i32 786688, metadata !111, metadata !"retval", metadata !5, i32 418, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 418]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_OutputVarByMethod", metadata !"CCTK_OutputVarByMethod", metadata !"", i32 458, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*)* @CCTK_OutputVarByMethod, null, null, metadata !119, i32 459} ; [ DW_TAG_subprogram ] [line 458] [def] [scope 459] [CCTK_OutputVarByMethod]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123}
!120 = metadata !{i32 786689, metadata !118, metadata !"GH", metadata !5, i32 16777674, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 458]
!121 = metadata !{i32 786689, metadata !118, metadata !"var", metadata !5, i32 33554890, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 458]
!122 = metadata !{i32 786689, metadata !118, metadata !"method", metadata !5, i32 50332106, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [method] [line 458]
!123 = metadata !{i32 786688, metadata !118, metadata !"retval", metadata !5, i32 460, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 460]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_outputvarbymethod_", metadata !"cctk_outputvarbymethod_", metadata !"", i32 468, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i8*, i32, i32)* @cctk_outputvarbymethod_, null, null, metadata !129, i32 470} ; [ DW_TAG_subprogram ] [line 468] [def] [scope 470] [cctk_outputvarbymethod_]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{null, metadata !39, metadata !30, metadata !127, metadata !127, metadata !128, metadata !128}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!128 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!130 = metadata !{i32 786689, metadata !124, metadata !"ierr", metadata !5, i32 16777685, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 469]
!131 = metadata !{i32 786689, metadata !124, metadata !"GH", metadata !5, i32 33554901, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 469]
!132 = metadata !{i32 786689, metadata !124, metadata !"cctk_str1", metadata !5, i32 50332117, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 469]
!133 = metadata !{i32 786689, metadata !124, metadata !"cctk_str2", metadata !5, i32 67109333, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 469]
!134 = metadata !{i32 786689, metadata !124, metadata !"cctk_strlen1", metadata !5, i32 83886549, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 469]
!135 = metadata !{i32 786689, metadata !124, metadata !"cctk_strlen2", metadata !5, i32 100663765, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 469]
!136 = metadata !{i32 786688, metadata !124, metadata !"var", metadata !5, i32 471, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 471]
!137 = metadata !{i32 786688, metadata !124, metadata !"method", metadata !5, i32 471, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 471]
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_NumIOMethods", metadata !"CCTK_NumIOMethods", metadata !"", i32 492, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumIOMethods, null, null, metadata !2, i32 493} ; [ DW_TAG_subprogram ] [line 492] [def] [scope 493] [CCTK_NumIOMethods]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !14}
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_IOMethodImplementation", metadata !"CCTK_IOMethodImplementation", metadata !"", i32 516, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_IOMethodImplementation, null, null, metadata !144, i32 517} ; [ DW_TAG_subprogram ] [line 516] [def] [scope 517] [CCTK_IOMethodImplementation]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !8, metadata !14}
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786689, metadata !141, metadata !"handle", metadata !5, i32 16777732, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 516]
!146 = metadata !{i32 786688, metadata !141, metadata !"method", metadata !5, i32 518, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 518]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_IOMethod", metadata !"CCTK_IOMethod", metadata !"", i32 545, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_IOMethod, null, null, metadata !148, i32 546} ; [ DW_TAG_subprogram ] [line 545] [def] [scope 546] [CCTK_IOMethod]
!148 = metadata !{metadata !149, metadata !150}
!149 = metadata !{i32 786689, metadata !147, metadata !"handle", metadata !5, i32 16777761, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 545]
!150 = metadata !{i32 786688, metadata !147, metadata !"method", metadata !5, i32 547, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 547]
!151 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultOutputGH", metadata !"CactusDefaultOutputGH", metadata !"", i32 652, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CactusDefaultOutputGH, null, null, metadata !152, i32 653} ; [ DW_TAG_subprogram ] [line 652] [def] [scope 653] [CactusDefaultOutputGH]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156}
!153 = metadata !{i32 786689, metadata !151, metadata !"GH", metadata !5, i32 16777868, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 652]
!154 = metadata !{i32 786688, metadata !151, metadata !"handle", metadata !5, i32 654, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 654]
!155 = metadata !{i32 786688, metadata !151, metadata !"retval", metadata !5, i32 654, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 654]
!156 = metadata !{i32 786688, metadata !151, metadata !"method", metadata !5, i32 655, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 655]
!157 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultOutputVarAsByMethod", metadata !"CactusDefaultOutputVarAsByMethod", metadata !"", i32 714, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*, i8*)* @CactusDefaultOutputVarAsByMethod, null, null, metadata !160, i32 718} ; [ DW_TAG_subprogram ] [line 714] [def] [scope 718] [CactusDefaultOutputVarAsByMethod]
!158 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{metadata !14, metadata !30, metadata !8, metadata !8, metadata !8}
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!161 = metadata !{i32 786689, metadata !157, metadata !"GH", metadata !5, i32 16777930, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 714]
!162 = metadata !{i32 786689, metadata !157, metadata !"var", metadata !5, i32 33555147, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 715]
!163 = metadata !{i32 786689, metadata !157, metadata !"methodname", metadata !5, i32 50332364, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [methodname] [line 716]
!164 = metadata !{i32 786689, metadata !157, metadata !"alias", metadata !5, i32 67109581, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 717]
!165 = metadata !{i32 786688, metadata !157, metadata !"retval", metadata !5, i32 719, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 719]
!166 = metadata !{i32 786688, metadata !157, metadata !"method", metadata !5, i32 720, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 720]
!167 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_outputvarasbymethod_", metadata !"cctk_outputvarasbymethod_", metadata !"", i32 739, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i8*, i8*, i32, i32, i32)* @cctk_outputvarasbymethod_, null, null, metadata !170, i32 741} ; [ DW_TAG_subprogram ] [line 739] [def] [scope 741] [cctk_outputvarasbymethod_]
!168 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{null, metadata !39, metadata !30, metadata !127, metadata !127, metadata !127, metadata !128, metadata !128, metadata !128}
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!171 = metadata !{i32 786689, metadata !167, metadata !"ierr", metadata !5, i32 16777956, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 740]
!172 = metadata !{i32 786689, metadata !167, metadata !"GH", metadata !5, i32 33555172, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 740]
!173 = metadata !{i32 786689, metadata !167, metadata !"cctk_str1", metadata !5, i32 50332388, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 740]
!174 = metadata !{i32 786689, metadata !167, metadata !"cctk_str2", metadata !5, i32 67109604, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 740]
!175 = metadata !{i32 786689, metadata !167, metadata !"cctk_str3", metadata !5, i32 83886820, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str3] [line 740]
!176 = metadata !{i32 786689, metadata !167, metadata !"cctk_strlen1", metadata !5, i32 100664036, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 740]
!177 = metadata !{i32 786689, metadata !167, metadata !"cctk_strlen2", metadata !5, i32 117441252, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 740]
!178 = metadata !{i32 786689, metadata !167, metadata !"cctk_strlen3", metadata !5, i32 134218468, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen3] [line 740]
!179 = metadata !{i32 786688, metadata !167, metadata !"var", metadata !5, i32 742, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 742]
!180 = metadata !{i32 786688, metadata !167, metadata !"methodname", metadata !5, i32 742, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [methodname] [line 742]
!181 = metadata !{i32 786688, metadata !167, metadata !"alias", metadata !5, i32 742, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alias] [line 742]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_TriggerSaysGo", metadata !"CCTKi_TriggerSaysGo", metadata !"", i32 787, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CCTKi_TriggerSaysGo, null, null, metadata !183, i32 788} ; [ DW_TAG_subprogram ] [line 787] [def] [scope 788] [CCTKi_TriggerSaysGo]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187}
!184 = metadata !{i32 786689, metadata !182, metadata !"GH", metadata !5, i32 16778003, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 787]
!185 = metadata !{i32 786689, metadata !182, metadata !"variable", metadata !5, i32 33555219, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [variable] [line 787]
!186 = metadata !{i32 786688, metadata !182, metadata !"handle", metadata !5, i32 789, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 789]
!187 = metadata !{i32 786688, metadata !182, metadata !"method", metadata !5, i32 790, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 790]
!188 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_TriggerAction", metadata !"CCTKi_TriggerAction", metadata !"", i32 842, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_TriggerAction, null, null, metadata !191, i32 843} ; [ DW_TAG_subprogram ] [line 842] [def] [scope 843] [CCTKi_TriggerAction]
!189 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!190 = metadata !{metadata !14, metadata !59, metadata !14}
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!192 = metadata !{i32 786689, metadata !188, metadata !"GH", metadata !5, i32 16778058, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 842]
!193 = metadata !{i32 786689, metadata !188, metadata !"variable", metadata !5, i32 33555274, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [variable] [line 842]
!194 = metadata !{i32 786688, metadata !188, metadata !"handle", metadata !5, i32 844, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 844]
!195 = metadata !{i32 786688, metadata !188, metadata !"nmethods", metadata !5, i32 845, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmethods] [line 845]
!196 = metadata !{i32 786688, metadata !188, metadata !"method", metadata !5, i32 846, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 846]
!197 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyTriggerOutput", metadata !"DummyTriggerOutput", metadata !"", i32 615, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @DummyTriggerOutput, null, null, metadata !198, i32 616} ; [ DW_TAG_subprogram ] [line 615] [local] [def] [scope 616] [DummyTriggerOutput]
!198 = metadata !{metadata !199, metadata !200}
!199 = metadata !{i32 786689, metadata !197, metadata !"GH", metadata !5, i32 16777831, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 615]
!200 = metadata !{i32 786689, metadata !197, metadata !"var", metadata !5, i32 33555047, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 615]
!201 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyOutputVarAs", metadata !"DummyOutputVarAs", metadata !"", i32 604, metadata !70, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*)* @DummyOutputVarAs, null, null, metadata !202, i32 607} ; [ DW_TAG_subprogram ] [line 604] [local] [def] [scope 607] [DummyOutputVarAs]
!202 = metadata !{metadata !203, metadata !204, metadata !205}
!203 = metadata !{i32 786689, metadata !201, metadata !"GH", metadata !5, i32 16777820, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 604]
!204 = metadata !{i32 786689, metadata !201, metadata !"var", metadata !5, i32 33555037, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 605]
!205 = metadata !{i32 786689, metadata !201, metadata !"alias", metadata !5, i32 50332254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 606]
!206 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyTimeToOutput", metadata !"DummyTimeToOutput", metadata !"", i32 588, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @DummyTimeToOutput, null, null, metadata !207, i32 589} ; [ DW_TAG_subprogram ] [line 588] [local] [def] [scope 589] [DummyTimeToOutput]
!207 = metadata !{metadata !208, metadata !209}
!208 = metadata !{i32 786689, metadata !206, metadata !"GH", metadata !5, i32 16777804, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 588]
!209 = metadata !{i32 786689, metadata !206, metadata !"var", metadata !5, i32 33555020, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 588]
!210 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DummyOutputGH", metadata !"DummyOutputGH", metadata !"", i32 573, metadata !28, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @DummyOutputGH, null, null, metadata !211, i32 574} ; [ DW_TAG_subprogram ] [line 573] [local] [def] [scope 574] [DummyOutputGH]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786689, metadata !210, metadata !"GH", metadata !5, i32 16777789, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 573]
!213 = metadata !{metadata !214, metadata !215, metadata !231}
!214 = metadata !{i32 786484, i32 0, null, metadata !"num_methods", metadata !"num_methods", metadata !"", metadata !5, i32 68, metadata !14, i32 1, i32 1, i32* @num_methods, null} ; [ DW_TAG_variable ] [num_methods] [line 68] [local] [def]
!215 = metadata !{i32 786484, i32 0, null, metadata !"IOMethods", metadata !"IOMethods", metadata !"", metadata !5, i32 67, metadata !216, i32 1, i32 1, %struct.cHandledData** @IOMethods, null} ; [ DW_TAG_variable ] [IOMethods] [line 67] [local] [def]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!217 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!218 = metadata !{i32 786451, metadata !219, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!219 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!220 = metadata !{metadata !221, metadata !229, metadata !230}
!221 = metadata !{i32 786445, metadata !219, metadata !218, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!223 = metadata !{i32 786454, metadata !219, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!224 = metadata !{i32 786451, metadata !219, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !225, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !227, metadata !228}
!226 = metadata !{i32 786445, metadata !219, metadata !224, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!227 = metadata !{i32 786445, metadata !219, metadata !224, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !127} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!228 = metadata !{i32 786445, metadata !219, metadata !224, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!229 = metadata !{i32 786445, metadata !219, metadata !218, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !128} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!230 = metadata !{i32 786445, metadata !219, metadata !218, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !128} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!231 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 28, metadata !8, i32 1, i32 1, null, null}
!232 = metadata !{i32 30, i32 0, metadata !4, null}
!233 = metadata !{i32 103, i32 0, metadata !11, null}
!234 = metadata !{i32 110, i32 0, metadata !11, null}
!235 = metadata !{metadata !"any pointer", metadata !236}
!236 = metadata !{metadata !"omnipotent char", metadata !237}
!237 = metadata !{metadata !"Simple C/C++ TBAA"}
!238 = metadata !{i32 112, i32 0, metadata !11, null}
!239 = metadata !{i32 115, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !11, i32 113, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!241 = metadata !{i32 117, i32 0, metadata !240, null}
!242 = metadata !{i32 120, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !240, i32 118, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!244 = metadata !{i32 123, i32 0, metadata !243, null}
!245 = metadata !{i32 124, i32 0, metadata !243, null}
!246 = metadata !{i32 125, i32 0, metadata !243, null}
!247 = metadata !{i32 126, i32 0, metadata !243, null}
!248 = metadata !{i32 127, i32 0, metadata !243, null}
!249 = metadata !{i32 128, i32 0, metadata !243, null}
!250 = metadata !{i32 131, i32 0, metadata !243, null}
!251 = metadata !{metadata !"int", metadata !236}
!252 = metadata !{i32 132, i32 0, metadata !243, null}
!253 = metadata !{i32 145, i32 0, metadata !11, null}
!254 = metadata !{i32 573, i32 0, metadata !210, null}
!255 = metadata !{i32 575, i32 0, metadata !210, null}
!256 = metadata !{i32 576, i32 0, metadata !210, null}
!257 = metadata !{i32 604, i32 0, metadata !201, null}
!258 = metadata !{i32 605, i32 0, metadata !201, null}
!259 = metadata !{i32 606, i32 0, metadata !201, null}
!260 = metadata !{i32 608, i32 0, metadata !201, null}
!261 = metadata !{i32 609, i32 0, metadata !201, null}
!262 = metadata !{i32 610, i32 0, metadata !201, null}
!263 = metadata !{i32 611, i32 0, metadata !201, null}
!264 = metadata !{i32 615, i32 0, metadata !197, null}
!265 = metadata !{i32 617, i32 0, metadata !197, null}
!266 = metadata !{i32 618, i32 0, metadata !197, null}
!267 = metadata !{i32 619, i32 0, metadata !197, null}
!268 = metadata !{i32 588, i32 0, metadata !206, null}
!269 = metadata !{i32 590, i32 0, metadata !206, null}
!270 = metadata !{i32 591, i32 0, metadata !206, null}
!271 = metadata !{i32 592, i32 0, metadata !206, null}
!272 = metadata !{i32 175, i32 0, metadata !77, null}
!273 = metadata !{i32 181, i32 0, metadata !77, null}
!274 = metadata !{i32 182, i32 0, metadata !77, null}
!275 = metadata !{i32 184, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !77, i32 183, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!277 = metadata !{i32 185, i32 0, metadata !276, null}
!278 = metadata !{i32 187, i32 0, metadata !77, null}
!279 = metadata !{i32 217, i32 0, metadata !84, null}
!280 = metadata !{i32 218, i32 0, metadata !84, null}
!281 = metadata !{i32 226, i32 0, metadata !84, null}
!282 = metadata !{i32 227, i32 0, metadata !84, null}
!283 = metadata !{i32 229, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !84, i32 228, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!285 = metadata !{i32 230, i32 0, metadata !284, null}
!286 = metadata !{i32 232, i32 0, metadata !84, null}
!287 = metadata !{i32 262, i32 0, metadata !91, null}
!288 = metadata !{i32 263, i32 0, metadata !91, null}
!289 = metadata !{i32 270, i32 0, metadata !91, null}
!290 = metadata !{i32 271, i32 0, metadata !91, null}
!291 = metadata !{i32 273, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !91, i32 272, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!293 = metadata !{i32 274, i32 0, metadata !292, null}
!294 = metadata !{i32 276, i32 0, metadata !91, null}
!295 = metadata !{i32 306, i32 0, metadata !98, null}
!296 = metadata !{i32 307, i32 0, metadata !98, null}
!297 = metadata !{i32 314, i32 0, metadata !98, null}
!298 = metadata !{i32 315, i32 0, metadata !98, null}
!299 = metadata !{i32 317, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !98, i32 316, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!301 = metadata !{i32 318, i32 0, metadata !300, null}
!302 = metadata !{i32 320, i32 0, metadata !98, null}
!303 = metadata !{i32 365, i32 0, metadata !103, null}
!304 = metadata !{i32 371, i32 0, metadata !103, null}
!305 = metadata !{i32 375, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !307, i32 374, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 373, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!308 = metadata !{i32 786443, metadata !1, metadata !103, i32 372, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!309 = metadata !{i32 376, i32 0, metadata !306, null}
!310 = metadata !{i32 373, i32 0, metadata !307, null}
!311 = metadata !{i32 387, i32 0, metadata !103, null}
!312 = metadata !{i32 416, i32 0, metadata !111, null}
!313 = metadata !{i32 421, i32 0, metadata !111, null}
!314 = metadata !{i32 423, i32 0, metadata !111, null}
!315 = metadata !{i32 458, i32 0, metadata !118, null}
!316 = metadata !{i32 463, i32 0, metadata !118, null}
!317 = metadata !{i32 465, i32 0, metadata !118, null}
!318 = metadata !{i32 469, i32 0, metadata !124, null}
!319 = metadata !{i32 471, i32 0, metadata !124, null}
!320 = metadata !{i32 786689, metadata !118, metadata !"GH", metadata !5, i32 16777674, metadata !30, i32 0, metadata !321} ; [ DW_TAG_arg_variable ] [GH] [line 458]
!321 = metadata !{i32 472, i32 0, metadata !124, null}
!322 = metadata !{i32 458, i32 0, metadata !118, metadata !321}
!323 = metadata !{i32 786689, metadata !118, metadata !"var", metadata !5, i32 33554890, metadata !8, i32 0, metadata !321} ; [ DW_TAG_arg_variable ] [var] [line 458]
!324 = metadata !{i32 786689, metadata !118, metadata !"method", metadata !5, i32 50332106, metadata !8, i32 0, metadata !321} ; [ DW_TAG_arg_variable ] [method] [line 458]
!325 = metadata !{i32 463, i32 0, metadata !118, metadata !321}
!326 = metadata !{i32 786688, metadata !118, metadata !"retval", metadata !5, i32 460, metadata !14, i32 0, metadata !321} ; [ DW_TAG_auto_variable ] [retval] [line 460]
!327 = metadata !{i32 473, i32 0, metadata !124, null}
!328 = metadata !{i32 474, i32 0, metadata !124, null}
!329 = metadata !{i32 475, i32 0, metadata !124, null}
!330 = metadata !{i32 494, i32 0, metadata !138, null}
!331 = metadata !{i32 516, i32 0, metadata !141, null}
!332 = metadata !{i32 521, i32 0, metadata !141, null}
!333 = metadata !{i32 523, i32 0, metadata !141, null}
!334 = metadata !{i32 545, i32 0, metadata !147, null}
!335 = metadata !{i32 549, i32 0, metadata !147, null}
!336 = metadata !{i32 551, i32 0, metadata !147, null}
!337 = metadata !{i32 652, i32 0, metadata !151, null}
!338 = metadata !{i32 658, i32 0, metadata !151, null}
!339 = metadata !{i32 662, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 661, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!341 = metadata !{i32 786443, metadata !1, metadata !342, i32 660, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!342 = metadata !{i32 786443, metadata !1, metadata !151, i32 659, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!343 = metadata !{i32 663, i32 0, metadata !340, null}
!344 = metadata !{i32 665, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !340, i32 664, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!346 = metadata !{i32 666, i32 0, metadata !345, null}
!347 = metadata !{i32 660, i32 0, metadata !341, null}
!348 = metadata !{i32 674, i32 0, metadata !151, null}
!349 = metadata !{i32 714, i32 0, metadata !157, null}
!350 = metadata !{i32 715, i32 0, metadata !157, null}
!351 = metadata !{i32 716, i32 0, metadata !157, null}
!352 = metadata !{i32 717, i32 0, metadata !157, null}
!353 = metadata !{i32 720, i32 0, metadata !157, null}
!354 = metadata !{i32 723, i32 0, metadata !157, null}
!355 = metadata !{i32 724, i32 0, metadata !157, null}
!356 = metadata !{i32 726, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !157, i32 725, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!358 = metadata !{i32 727, i32 0, metadata !357, null}
!359 = metadata !{i32 730, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !157, i32 729, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!361 = metadata !{i32 -1}
!362 = metadata !{i32 733, i32 0, metadata !360, null}
!363 = metadata !{i32 736, i32 0, metadata !157, null}
!364 = metadata !{i32 740, i32 0, metadata !167, null}
!365 = metadata !{i32 742, i32 0, metadata !167, null}
!366 = metadata !{i32 744, i32 0, metadata !167, null}
!367 = metadata !{i32 746, i32 0, metadata !167, null}
!368 = metadata !{i32 747, i32 0, metadata !167, null}
!369 = metadata !{i32 748, i32 0, metadata !167, null}
!370 = metadata !{i32 749, i32 0, metadata !167, null}
!371 = metadata !{i32 787, i32 0, metadata !182, null}
!372 = metadata !{i32 794, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !182, i32 794, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!374 = metadata !{i32 797, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !373, i32 795, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!376 = metadata !{i32 798, i32 0, metadata !375, null}
!377 = metadata !{i32 803, i32 0, metadata !182, null}
!378 = metadata !{i32 842, i32 0, metadata !188, null}
!379 = metadata !{i32 850, i32 0, metadata !188, null}
!380 = metadata !{i32 853, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !188, i32 853, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!382 = metadata !{i32 857, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !381, i32 854, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!384 = metadata !{i32 856, i32 0, metadata !383, null}
!385 = metadata !{i32 860, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !383, i32 858, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c]
!387 = metadata !{i32 861, i32 0, metadata !386, null}
!388 = metadata !{i32 862, i32 0, metadata !386, null}
!389 = metadata !{i32 865, i32 0, metadata !188, null}
