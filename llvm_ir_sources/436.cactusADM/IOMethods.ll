; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOMethod = type { i8*, i8*, i32 (%struct.cGH*)*, i32 (%struct.cGH*, i8*, i8*)*, i32 (%struct.cGH*, i32)*, i32 (%struct.cGH*, i32)* }

@IOMethods = internal global %struct.cHandledData* null, align 8
@num_methods = internal unnamed_addr global i32 0, align 4
@CCTK_OutputVarAsByMethod = external global i32 (%struct.cGH*, i8*, i8*, i8*)*
@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [88 x i8] c"CactusDefaultOutputVarAsByMethod: I/O method '%s' not found for output of variable '%s'\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/IO/IOMethods.c,v 1.36 2001/12/30 13:12:06 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_IO_IOMethods_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), !dbg !236
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterIOMethod(i8* %thorn, i8* %name) #1 {
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !73, metadata !237), !dbg !238
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !74, metadata !237), !dbg !239
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !240, !tbaa !241
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !75, metadata !237), !dbg !246
  %3 = icmp slt i32 %2, 0, !dbg !247
  br i1 %3, label %4, label %23, !dbg !249

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @malloc(i64 48) #6, !dbg !250
  %6 = icmp eq i8* %5, null, !dbg !252
  br i1 %6, label %23, label %7, !dbg !254

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @Util_NewHandle(%struct.cHandledData** @IOMethods, i8* %name, i8* %5) #6, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !75, metadata !237), !dbg !246
  %9 = tail call i8* @CCTK_ThornImplementation(i8* %thorn) #6, !dbg !257
  %10 = bitcast i8* %5 to i8**, !dbg !258
  store i8* %9, i8** %10, align 8, !dbg !259, !tbaa !260
  %11 = getelementptr inbounds i8* %5, i64 8, !dbg !262
  %12 = bitcast i8* %11 to i8**, !dbg !262
  store i8* %name, i8** %12, align 8, !dbg !263, !tbaa !264
  %13 = getelementptr inbounds i8* %5, i64 16, !dbg !265
  %14 = bitcast i8* %13 to i32 (%struct.cGH*)**, !dbg !265
  store i32 (%struct.cGH*)* @DummyOutputGH, i32 (%struct.cGH*)** %14, align 8, !dbg !266, !tbaa !267
  %15 = getelementptr inbounds i8* %5, i64 24, !dbg !268
  %16 = bitcast i8* %15 to i32 (%struct.cGH*, i8*, i8*)**, !dbg !268
  store i32 (%struct.cGH*, i8*, i8*)* @DummyOutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %16, align 8, !dbg !269, !tbaa !270
  %17 = getelementptr inbounds i8* %5, i64 32, !dbg !271
  %18 = bitcast i8* %17 to i32 (%struct.cGH*, i32)**, !dbg !271
  store i32 (%struct.cGH*, i32)* @DummyTriggerOutput, i32 (%struct.cGH*, i32)** %18, align 8, !dbg !272, !tbaa !273
  %19 = getelementptr inbounds i8* %5, i64 40, !dbg !274
  %20 = bitcast i8* %19 to i32 (%struct.cGH*, i32)**, !dbg !274
  store i32 (%struct.cGH*, i32)* @DummyTimeToOutput, i32 (%struct.cGH*, i32)** %20, align 8, !dbg !275, !tbaa !276
  %21 = load i32* @num_methods, align 4, !dbg !277, !tbaa !278
  %22 = add nsw i32 %21, 1, !dbg !277
  store i32 %22, i32* @num_methods, align 4, !dbg !277, !tbaa !278
  br label %23, !dbg !280

; <label>:23                                      ; preds = %0, %4, %7
  %handle.0 = phi i32 [ %8, %7 ], [ -2, %4 ], [ -1, %0 ]
  ret i32 %handle.0, !dbg !281
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyOutputGH(%struct.cGH* nocapture readnone %GH) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !199, metadata !237), !dbg !282
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !199, metadata !237), !dbg !282
  ret i32 0, !dbg !283
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyOutputVarAs(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %var, i8* nocapture readnone %alias) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !206, metadata !237), !dbg !284
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !207, metadata !237), !dbg !285
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !208, metadata !237), !dbg !286
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !206, metadata !237), !dbg !284
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !207, metadata !237), !dbg !285
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !208, metadata !237), !dbg !286
  ret i32 0, !dbg !287
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyTriggerOutput(%struct.cGH* nocapture readnone %GH, i32 %var) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !211, metadata !237), !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %var, i64 0, metadata !212, metadata !237), !dbg !289
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !211, metadata !237), !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %var, i64 0, metadata !212, metadata !237), !dbg !289
  ret i32 0, !dbg !290
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyTimeToOutput(%struct.cGH* nocapture readnone %GH, i32 %var) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !202, metadata !237), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %var, i64 0, metadata !203, metadata !237), !dbg !292
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !202, metadata !237), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %var, i64 0, metadata !203, metadata !237), !dbg !292
  ret i32 0, !dbg !293
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodOutputGH(i32 %handle, i32 (%struct.cGH*)* %OutputGH) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !81, metadata !237), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %OutputGH, i64 0, metadata !82, metadata !237), !dbg !295
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !296, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !297
  %3 = icmp ne i8* %2, null, !dbg !298
  br i1 %3, label %4, label %7, !dbg !300

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16, !dbg !301
  %6 = bitcast i8* %5 to i32 (%struct.cGH*)**, !dbg !301
  store i32 (%struct.cGH*)* %OutputGH, i32 (%struct.cGH*)** %6, align 8, !dbg !303, !tbaa !267
  br label %7, !dbg !304

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true, !dbg !305
  %8 = sext i1 %not. to i32, !dbg !305
  ret i32 %8, !dbg !306
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodOutputVarAs(i32 %handle, i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !88, metadata !237), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs, i64 0, metadata !89, metadata !237), !dbg !308
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !309, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !310
  %3 = icmp ne i8* %2, null, !dbg !311
  br i1 %3, label %4, label %7, !dbg !313

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 24, !dbg !314
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i8*, i8*)**, !dbg !314
  store i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %6, align 8, !dbg !316, !tbaa !270
  br label %7, !dbg !317

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true, !dbg !318
  %8 = sext i1 %not. to i32, !dbg !318
  ret i32 %8, !dbg !319
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodTriggerOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TriggerOutput) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !95, metadata !237), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32)* %TriggerOutput, i64 0, metadata !96, metadata !237), !dbg !321
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !322, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !323
  %3 = icmp ne i8* %2, null, !dbg !324
  br i1 %3, label %4, label %7, !dbg !326

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 32, !dbg !327
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i32)**, !dbg !327
  store i32 (%struct.cGH*, i32)* %TriggerOutput, i32 (%struct.cGH*, i32)** %6, align 8, !dbg !329, !tbaa !273
  br label %7, !dbg !330

; <label>:7                                       ; preds = %4, %0
  %8 = zext i1 %3 to i32, !dbg !331
  ret i32 %8, !dbg !332
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodTimeToOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TimeToOutput) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !100, metadata !237), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32)* %TimeToOutput, i64 0, metadata !101, metadata !237), !dbg !334
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !335, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !336
  %3 = icmp ne i8* %2, null, !dbg !337
  br i1 %3, label %4, label %7, !dbg !339

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 40, !dbg !340
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i32)**, !dbg !340
  store i32 (%struct.cGH*, i32)* %TimeToOutput, i32 (%struct.cGH*, i32)** %6, align 8, !dbg !342, !tbaa !276
  br label %7, !dbg !343

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true, !dbg !344
  %8 = sext i1 %not. to i32, !dbg !344
  ret i32 %8, !dbg !345
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %alias) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !105, metadata !237), !dbg !346
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !106, metadata !237), !dbg !347
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !107, metadata !237), !dbg !348
  %1 = load i32* @num_methods, align 4, !dbg !349, !tbaa !278
  %2 = icmp sgt i32 %1, 0, !dbg !351
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !352

.lr.ph:                                           ; preds = %0, %13
  %handle.02 = phi i32 [ %14, %13 ], [ 0, %0 ]
  %retval.01 = phi i32 [ %retval.1, %13 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !dbg !353, !tbaa !241
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #6, !dbg !358
  %5 = icmp eq i8* %4, null, !dbg !359
  br i1 %5, label %13, label %6, !dbg !361

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 24, !dbg !362
  %8 = bitcast i8* %7 to i32 (%struct.cGH*, i8*, i8*)**, !dbg !362
  %9 = load i32 (%struct.cGH*, i8*, i8*)** %8, align 8, !dbg !362, !tbaa !270
  %10 = tail call i32 %9(%struct.cGH* %GH, i8* %var, i8* %alias) #6, !dbg !363
  %11 = icmp eq i32 %10, 0, !dbg !364
  %12 = zext i1 %11 to i32, !dbg !365
  %.retval.0 = add nsw i32 %12, %retval.01, !dbg !365
  br label %13, !dbg !365

; <label>:13                                      ; preds = %6, %.lr.ph
  %retval.1 = phi i32 [ %retval.01, %.lr.ph ], [ %.retval.0, %6 ]
  %14 = add nuw nsw i32 %handle.02, 1, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !108, metadata !237), !dbg !367
  %15 = load i32* @num_methods, align 4, !dbg !368, !tbaa !278
  %16 = icmp slt i32 %14, %15, !dbg !369
  br i1 %16, label %.lr.ph, label %.loopexit, !dbg !370

.loopexit:                                        ; preds = %13, %0
  %retval.2 = phi i32 [ -1, %0 ], [ %retval.1, %13 ]
  ret i32 %retval.2, !dbg !371
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVar(%struct.cGH* %GH, i8* %var) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !115, metadata !237), !dbg !372
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !116, metadata !237), !dbg !373
  %1 = tail call i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %var) #7, !dbg !374
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !117, metadata !237), !dbg !375
  ret i32 %1, !dbg !376
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVarByMethod(%struct.cGH* %GH, i8* %var, i8* %method) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !120, metadata !237), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !121, metadata !237), !dbg !378
  tail call void @llvm.dbg.value(metadata i8* %method, i64 0, metadata !122, metadata !237), !dbg !379
  %1 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !380, !tbaa !241
  %2 = tail call i32 %1(%struct.cGH* %GH, i8* %var, i8* %method, i8* %var) #6, !dbg !380
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !123, metadata !237), !dbg !381
  ret i32 %2, !dbg !382
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_outputvarbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !130, metadata !237), !dbg !383
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !131, metadata !237), !dbg !384
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !132, metadata !237), !dbg !385
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !133, metadata !237), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !134, metadata !237), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !135, metadata !237), !dbg !385
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !136, metadata !237), !dbg !386
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !386
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !137, metadata !237), !dbg !386
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !120, metadata !237) #8, !dbg !387
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !121, metadata !237) #8, !dbg !389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !122, metadata !237) #8, !dbg !390
  %3 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !391, !tbaa !241
  %4 = tail call i32 %3(%struct.cGH* %GH, i8* %1, i8* %2, i8* %1) #6, !dbg !391
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !123, metadata !237) #8, !dbg !392
  store i32 %4, i32* %ierr, align 4, !dbg !393, !tbaa !278
  tail call void @free(i8* %1) #7, !dbg !394
  tail call void @free(i8* %2) #7, !dbg !395
  ret void, !dbg !396
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumIOMethods() #4 {
  %1 = load i32* @num_methods, align 4, !dbg !397, !tbaa !278
  ret i32 %1, !dbg !398
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_IOMethodImplementation(i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !145, metadata !237), !dbg !399
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !400, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !401
  %3 = icmp eq i8* %2, null, !dbg !402
  br i1 %3, label %7, label %4, !dbg !402

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**, !dbg !403
  %6 = load i8** %5, align 8, !dbg !403, !tbaa !260
  br label %7, !dbg !402

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ], !dbg !402
  ret i8* %8, !dbg !404
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_IOMethod(i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !149, metadata !237), !dbg !405
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !406, !tbaa !241
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !407
  %3 = icmp eq i8* %2, null, !dbg !408
  br i1 %3, label %8, label %4, !dbg !408

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 8, !dbg !409
  %6 = bitcast i8* %5 to i8**, !dbg !409
  %7 = load i8** %6, align 8, !dbg !409, !tbaa !264
  br label %8, !dbg !408

; <label>:8                                       ; preds = %0, %4
  %9 = phi i8* [ %7, %4 ], [ null, %0 ], !dbg !408
  ret i8* %9, !dbg !410
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultOutputGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !153, metadata !237), !dbg !411
  %1 = load i32* @num_methods, align 4, !dbg !412, !tbaa !278
  %2 = icmp sgt i32 %1, 0, !dbg !414
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !415

.lr.ph:                                           ; preds = %0, %12
  %handle.02 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %retval.01 = phi i32 [ %retval.1, %12 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !dbg !416, !tbaa !241
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #6, !dbg !421
  %5 = icmp eq i8* %4, null, !dbg !422
  br i1 %5, label %12, label %6, !dbg !424

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 16, !dbg !425
  %8 = bitcast i8* %7 to i32 (%struct.cGH*)**, !dbg !425
  %9 = load i32 (%struct.cGH*)** %8, align 8, !dbg !425, !tbaa !267
  %10 = tail call i32 %9(%struct.cGH* %GH) #6, !dbg !427
  %11 = add nsw i32 %10, %retval.01, !dbg !428
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !155, metadata !237), !dbg !429
  br label %12, !dbg !430

; <label>:12                                      ; preds = %.lr.ph, %6
  %retval.1 = phi i32 [ %11, %6 ], [ %retval.01, %.lr.ph ]
  %13 = add nuw nsw i32 %handle.02, 1, !dbg !431
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !154, metadata !237), !dbg !432
  %14 = load i32* @num_methods, align 4, !dbg !433, !tbaa !278
  %15 = icmp slt i32 %13, %14, !dbg !434
  br i1 %15, label %.lr.ph, label %.loopexit, !dbg !435

.loopexit:                                        ; preds = %12, %0
  %retval.2 = phi i32 [ -1, %0 ], [ %retval.1, %12 ]
  ret i32 %retval.2, !dbg !436
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH* %GH, i8* %var, i8* %methodname, i8* %alias) #1 {
  %method = alloca %struct.IOMethod*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !161, metadata !237), !dbg !437
  tail call void @llvm.dbg.value(metadata i8* %var, i64 0, metadata !162, metadata !237), !dbg !438
  tail call void @llvm.dbg.value(metadata i8* %methodname, i64 0, metadata !163, metadata !237), !dbg !439
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !164, metadata !237), !dbg !440
  %1 = load %struct.cHandledData** @IOMethods, align 8, !dbg !441, !tbaa !241
  %2 = bitcast %struct.IOMethod** %method to i8**, !dbg !442
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %methodname, i8** %2) #6, !dbg !443
  call void @llvm.dbg.value(metadata %struct.IOMethod** %method, i64 0, metadata !166, metadata !237), !dbg !444
  %4 = load %struct.IOMethod** %method, align 8, !dbg !445, !tbaa !241
  %5 = icmp eq %struct.IOMethod* %4, null, !dbg !445
  br i1 %5, label %10, label %6, !dbg !447

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.IOMethod* %4, i64 0, i32 3, !dbg !448
  %8 = load i32 (%struct.cGH*, i8*, i8*)** %7, align 8, !dbg !448, !tbaa !270
  %9 = call i32 %8(%struct.cGH* %GH, i8* %var, i8* %alias) #6, !dbg !450
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !165, metadata !237), !dbg !451
  br label %12, !dbg !452

; <label>:10                                      ; preds = %0
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 730, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8]* @.str2, i64 0, i64 0), i8* %methodname, i8* %var) #6, !dbg !453
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !165, metadata !237), !dbg !451
  br label %12

; <label>:12                                      ; preds = %10, %6
  %retval.0 = phi i32 [ %9, %6 ], [ -1, %10 ]
  ret i32 %retval.0, !dbg !455
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_outputvarasbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !171, metadata !237), !dbg !456
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !172, metadata !237), !dbg !457
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !173, metadata !237), !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !174, metadata !237), !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %cctk_str3, i64 0, metadata !175, metadata !237), !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !176, metadata !237), !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !177, metadata !237), !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen3, i64 0, metadata !178, metadata !237), !dbg !458
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !459
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !179, metadata !237), !dbg !459
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !180, metadata !237), !dbg !459
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #6, !dbg !459
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !181, metadata !237), !dbg !459
  %4 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !460, !tbaa !241
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1, i8* %2, i8* %3) #6, !dbg !460
  store i32 %5, i32* %ierr, align 4, !dbg !461, !tbaa !278
  tail call void @free(i8* %1) #7, !dbg !462
  tail call void @free(i8* %2) #7, !dbg !463
  tail call void @free(i8* %3) #7, !dbg !464
  ret void, !dbg !465
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_TriggerSaysGo(%struct.cGH* %GH, i32 %variable) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !184, metadata !237), !dbg !466
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !185, metadata !237), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !186, metadata !237), !dbg !468
  %1 = load i32* @num_methods, align 4, !dbg !469, !tbaa !278
  %2 = icmp sgt i32 %1, 0, !dbg !472
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !473

.lr.ph:                                           ; preds = %0, %12
  %handle.01 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !dbg !474, !tbaa !241
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.01) #6, !dbg !476
  %5 = icmp eq i8* %4, null, !dbg !477
  br i1 %5, label %12, label %6, !dbg !479

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 40, !dbg !480
  %8 = bitcast i8* %7 to i32 (%struct.cGH*, i32)**, !dbg !480
  %9 = load i32 (%struct.cGH*, i32)** %8, align 8, !dbg !480, !tbaa !276
  %10 = tail call i32 %9(%struct.cGH* %GH, i32 %variable) #6, !dbg !481
  %11 = icmp eq i32 %10, 0, !dbg !481
  br i1 %11, label %12, label %._crit_edge, !dbg !482

; <label>:12                                      ; preds = %6, %.lr.ph
  %13 = add nuw nsw i32 %handle.01, 1, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !186, metadata !237), !dbg !468
  %14 = load i32* @num_methods, align 4, !dbg !469, !tbaa !278
  %15 = icmp slt i32 %13, %14, !dbg !472
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !473

._crit_edge:                                      ; preds = %6, %12, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %6 ], [ 0, %12 ]
  ret i32 %.0, !dbg !484
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_TriggerAction(i8* %GH, i32 %variable) #1 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !192, metadata !237), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !193, metadata !237), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !195, metadata !237), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !194, metadata !237), !dbg !488
  %1 = load i32* @num_methods, align 4, !dbg !489, !tbaa !278
  %2 = icmp sgt i32 %1, 0, !dbg !492
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !493

.lr.ph:                                           ; preds = %0
  %3 = bitcast i8* %GH to %struct.cGH*, !dbg !494
  br label %4, !dbg !493

; <label>:4                                       ; preds = %.lr.ph, %20
  %handle.02 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %nmethods.01 = phi i32 [ 0, %.lr.ph ], [ %nmethods.1, %20 ]
  %5 = load %struct.cHandledData** @IOMethods, align 8, !dbg !497, !tbaa !241
  %6 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %5, i32 %handle.02) #6, !dbg !498
  %7 = icmp eq i8* %6, null, !dbg !499
  br i1 %7, label %20, label %8, !dbg !500

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds i8* %6, i64 40, !dbg !501
  %10 = bitcast i8* %9 to i32 (%struct.cGH*, i32)**, !dbg !501
  %11 = load i32 (%struct.cGH*, i32)** %10, align 8, !dbg !501, !tbaa !276
  %12 = tail call i32 %11(%struct.cGH* %3, i32 %variable) #6, !dbg !502
  %13 = icmp eq i32 %12, 0, !dbg !502
  br i1 %13, label %20, label %14, !dbg !503

; <label>:14                                      ; preds = %8
  %15 = getelementptr inbounds i8* %6, i64 32, !dbg !504
  %16 = bitcast i8* %15 to i32 (%struct.cGH*, i32)**, !dbg !504
  %17 = load i32 (%struct.cGH*, i32)** %16, align 8, !dbg !504, !tbaa !273
  %18 = tail call i32 %17(%struct.cGH* %3, i32 %variable) #6, !dbg !506
  %19 = add nsw i32 %nmethods.01, 1, !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !195, metadata !237), !dbg !487
  br label %20, !dbg !508

; <label>:20                                      ; preds = %8, %4, %14
  %nmethods.1 = phi i32 [ %19, %14 ], [ %nmethods.01, %8 ], [ %nmethods.01, %4 ]
  %21 = add nuw nsw i32 %handle.02, 1, !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !194, metadata !237), !dbg !488
  %22 = load i32* @num_methods, align 4, !dbg !489, !tbaa !278
  %23 = icmp slt i32 %21, %22, !dbg !492
  br i1 %23, label %4, label %._crit_edge, !dbg !493

._crit_edge:                                      ; preds = %20, %0
  %nmethods.0.lcssa = phi i32 [ 0, %0 ], [ %nmethods.1, %20 ]
  ret i32 %nmethods.0.lcssa, !dbg !510
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!232, !233, !234}
!llvm.ident = !{!235}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !65, globals: !213, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !47, !46}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOMethod", file: !6, line: 18, size: 384, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_IOMethods.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !12, !13, !56, !60, !64}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !5, file: !6, line: 20, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !6, line: 21, baseType: !9, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "OutputGH", scope: !5, file: !6, line: 22, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18}
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !21, line: 75, baseType: !22)
!21 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 24, size: 1216, align: 64, elements: !23)
!23 = !{!24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !44, !48, !49}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !22, file: !21, line: 26, baseType: !17, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !22, file: !21, line: 27, baseType: !17, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !22, file: !21, line: 30, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !22, file: !21, line: 31, baseType: !27, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !22, file: !21, line: 32, baseType: !27, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !22, file: !21, line: 33, baseType: !27, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !22, file: !21, line: 36, baseType: !27, size: 64, align: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !22, file: !21, line: 39, baseType: !27, size: 64, align: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !22, file: !21, line: 40, baseType: !27, size: 64, align: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !22, file: !21, line: 43, baseType: !35, size: 64, align: 64, offset: 512)
!35 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !22, file: !21, line: 44, baseType: !37, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !22, file: !21, line: 47, baseType: !37, size: 64, align: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !22, file: !21, line: 51, baseType: !27, size: 64, align: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !22, file: !21, line: 54, baseType: !27, size: 64, align: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !22, file: !21, line: 57, baseType: !17, size: 32, align: 32, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !22, file: !21, line: 60, baseType: !27, size: 64, align: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !22, file: !21, line: 63, baseType: !35, size: 64, align: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 67, baseType: !45, size: 64, align: 64, offset: 1024)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !22, file: !21, line: 70, baseType: !46, size: 64, align: 64, offset: 1088)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !22, file: !21, line: 73, baseType: !50, size: 64, align: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !21, line: 22, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 18, size: 16, align: 8, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !52, file: !21, line: 20, baseType: !11, size: 8, align: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !52, file: !21, line: 21, baseType: !11, size: 8, align: 8, offset: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "OutputVarAs", scope: !5, file: !6, line: 23, baseType: !57, size: 64, align: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!17, !18, !9, !9}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "TriggerOutput", scope: !5, file: !6, line: 24, baseType: !61, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!17, !18, !17}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "TimeToOutput", scope: !5, file: !6, line: 25, baseType: !61, size: 64, align: 64, offset: 320)
!65 = !{!66, !69, !77, !84, !91, !98, !103, !111, !118, !124, !138, !141, !147, !151, !157, !167, !182, !188, !197, !200, !204, !209}
!66 = !DISubprogram(name: "CCTKi_version_IO_IOMethods_c", scope: !1, file: !1, line: 30, type: !67, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_IO_IOMethods_c, variables: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{!9}
!69 = !DISubprogram(name: "CCTKi_RegisterIOMethod", scope: !1, file: !1, line: 103, type: !70, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTKi_RegisterIOMethod, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!17, !9, !9}
!72 = !{!73, !74, !75, !76}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 1, scope: !69, file: !1, line: 103, type: !9)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !69, file: !1, line: 103, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !69, file: !1, line: 105, type: !17)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_method", scope: !69, file: !1, line: 106, type: !4)
!77 = !DISubprogram(name: "CCTK_RegisterIOMethodOutputGH", scope: !1, file: !1, line: 175, type: !78, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 (%struct.cGH*)*)* @CCTK_RegisterIOMethodOutputGH, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!17, !17, !14}
!80 = !{!81, !82, !83}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !77, file: !1, line: 175, type: !17)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputGH", arg: 2, scope: !77, file: !1, line: 175, type: !14)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !77, file: !1, line: 177, type: !4)
!84 = !DISubprogram(name: "CCTK_RegisterIOMethodOutputVarAs", scope: !1, file: !1, line: 217, type: !85, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 (%struct.cGH*, i8*, i8*)*)* @CCTK_RegisterIOMethodOutputVarAs, variables: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!17, !17, !57}
!87 = !{!88, !89, !90}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !84, file: !1, line: 217, type: !17)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputVarAs", arg: 2, scope: !84, file: !1, line: 218, type: !57)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !84, file: !1, line: 222, type: !4)
!91 = !DISubprogram(name: "CCTK_RegisterIOMethodTriggerOutput", scope: !1, file: !1, line: 262, type: !92, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 (%struct.cGH*, i32)*)* @CCTK_RegisterIOMethodTriggerOutput, variables: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!17, !17, !61}
!94 = !{!95, !96, !97}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !91, file: !1, line: 262, type: !17)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TriggerOutput", arg: 2, scope: !91, file: !1, line: 263, type: !61)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !91, file: !1, line: 266, type: !4)
!98 = !DISubprogram(name: "CCTK_RegisterIOMethodTimeToOutput", scope: !1, file: !1, line: 306, type: !92, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 (%struct.cGH*, i32)*)* @CCTK_RegisterIOMethodTimeToOutput, variables: !99)
!99 = !{!100, !101, !102}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !98, file: !1, line: 306, type: !17)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TimeToOutput", arg: 2, scope: !98, file: !1, line: 307, type: !61)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !98, file: !1, line: 310, type: !4)
!103 = !DISubprogram(name: "CCTK_OutputVarAs", scope: !1, file: !1, line: 365, type: !58, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @CCTK_OutputVarAs, variables: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !103, file: !1, line: 365, type: !18)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !103, file: !1, line: 365, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !103, file: !1, line: 365, type: !9)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !103, file: !1, line: 367, type: !17)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !103, file: !1, line: 367, type: !17)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !103, file: !1, line: 368, type: !4)
!111 = !DISubprogram(name: "CCTK_OutputVar", scope: !1, file: !1, line: 416, type: !112, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTK_OutputVar, variables: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!17, !18, !9}
!114 = !{!115, !116, !117}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !111, file: !1, line: 416, type: !18)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !111, file: !1, line: 416, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !111, file: !1, line: 418, type: !17)
!118 = !DISubprogram(name: "CCTK_OutputVarByMethod", scope: !1, file: !1, line: 458, type: !58, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @CCTK_OutputVarByMethod, variables: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !118, file: !1, line: 458, type: !18)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !118, file: !1, line: 458, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 3, scope: !118, file: !1, line: 458, type: !9)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !118, file: !1, line: 460, type: !17)
!124 = !DISubprogram(name: "cctk_outputvarbymethod_", scope: !1, file: !1, line: 468, type: !125, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i8*, i32, i32)* @cctk_outputvarbymethod_, variables: !129)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !27, !18, !127, !127, !128, !128}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!128 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !124, file: !1, line: 469, type: !27)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !124, file: !1, line: 469, type: !18)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !124, file: !1, line: 469, type: !127)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !124, file: !1, line: 469, type: !127)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 5, scope: !124, file: !1, line: 469, type: !128)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 6, scope: !124, file: !1, line: 469, type: !128)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !124, file: !1, line: 471, type: !127)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !124, file: !1, line: 471, type: !127)
!138 = !DISubprogram(name: "CCTK_NumIOMethods", scope: !1, file: !1, line: 492, type: !139, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_NumIOMethods, variables: !2)
!139 = !DISubroutineType(types: !140)
!140 = !{!17}
!141 = !DISubprogram(name: "CCTK_IOMethodImplementation", scope: !1, file: !1, line: 516, type: !142, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_IOMethodImplementation, variables: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!9, !17}
!144 = !{!145, !146}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !141, file: !1, line: 516, type: !17)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !141, file: !1, line: 518, type: !4)
!147 = !DISubprogram(name: "CCTK_IOMethod", scope: !1, file: !1, line: 545, type: !142, isLocal: false, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_IOMethod, variables: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !147, file: !1, line: 545, type: !17)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !147, file: !1, line: 547, type: !4)
!151 = !DISubprogram(name: "CactusDefaultOutputGH", scope: !1, file: !1, line: 652, type: !15, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CactusDefaultOutputGH, variables: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !151, file: !1, line: 652, type: !18)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !151, file: !1, line: 654, type: !17)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !151, file: !1, line: 654, type: !17)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !151, file: !1, line: 655, type: !4)
!157 = !DISubprogram(name: "CactusDefaultOutputVarAsByMethod", scope: !1, file: !1, line: 714, type: !158, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*, i8*)* @CactusDefaultOutputVarAsByMethod, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!17, !18, !9, !9, !9}
!160 = !{!161, !162, !163, !164, !165, !166}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !157, file: !1, line: 714, type: !18)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !157, file: !1, line: 715, type: !9)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "methodname", arg: 3, scope: !157, file: !1, line: 716, type: !9)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 4, scope: !157, file: !1, line: 717, type: !9)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !157, file: !1, line: 719, type: !17)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !157, file: !1, line: 720, type: !4)
!167 = !DISubprogram(name: "cctk_outputvarasbymethod_", scope: !1, file: !1, line: 739, type: !168, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i8*, i8*, i32, i32, i32)* @cctk_outputvarasbymethod_, variables: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !27, !18, !127, !127, !127, !128, !128, !128}
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !167, file: !1, line: 740, type: !27)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !167, file: !1, line: 740, type: !18)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !167, file: !1, line: 740, type: !127)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !167, file: !1, line: 740, type: !127)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str3", arg: 5, scope: !167, file: !1, line: 740, type: !127)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 6, scope: !167, file: !1, line: 740, type: !128)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 7, scope: !167, file: !1, line: 740, type: !128)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen3", arg: 8, scope: !167, file: !1, line: 740, type: !128)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !167, file: !1, line: 742, type: !127)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "methodname", scope: !167, file: !1, line: 742, type: !127)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alias", scope: !167, file: !1, line: 742, type: !127)
!182 = !DISubprogram(name: "CCTKi_TriggerSaysGo", scope: !1, file: !1, line: 787, type: !62, isLocal: false, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CCTKi_TriggerSaysGo, variables: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !182, file: !1, line: 787, type: !18)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "variable", arg: 2, scope: !182, file: !1, line: 787, type: !17)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !182, file: !1, line: 789, type: !17)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !182, file: !1, line: 790, type: !4)
!188 = !DISubprogram(name: "CCTKi_TriggerAction", scope: !1, file: !1, line: 842, type: !189, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_TriggerAction, variables: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!17, !47, !17}
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !188, file: !1, line: 842, type: !47)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "variable", arg: 2, scope: !188, file: !1, line: 842, type: !17)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !188, file: !1, line: 844, type: !17)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmethods", scope: !188, file: !1, line: 845, type: !17)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !188, file: !1, line: 846, type: !4)
!197 = !DISubprogram(name: "DummyOutputGH", scope: !1, file: !1, line: 573, type: !15, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @DummyOutputGH, variables: !198)
!198 = !{!199}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !197, file: !1, line: 573, type: !18)
!200 = !DISubprogram(name: "DummyTimeToOutput", scope: !1, file: !1, line: 588, type: !62, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @DummyTimeToOutput, variables: !201)
!201 = !{!202, !203}
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !200, file: !1, line: 588, type: !18)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !200, file: !1, line: 588, type: !17)
!204 = !DISubprogram(name: "DummyOutputVarAs", scope: !1, file: !1, line: 604, type: !58, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @DummyOutputVarAs, variables: !205)
!205 = !{!206, !207, !208}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !204, file: !1, line: 604, type: !18)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !204, file: !1, line: 605, type: !9)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !204, file: !1, line: 606, type: !9)
!209 = !DISubprogram(name: "DummyTriggerOutput", scope: !1, file: !1, line: 615, type: !62, isLocal: true, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @DummyTriggerOutput, variables: !210)
!210 = !{!211, !212}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !209, file: !1, line: 615, type: !18)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !209, file: !1, line: 615, type: !17)
!213 = !{!214, !215, !231}
!214 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 28, type: !9, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariable(name: "IOMethods", scope: !0, file: !1, line: 67, type: !216, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @IOMethods)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !218, line: 28, baseType: !219)
!218 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!219 = !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 23, size: 128, align: 64, elements: !220)
!220 = !{!221, !229, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !219, file: !218, line: 25, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !218, line: 21, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 16, size: 192, align: 64, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !224, file: !218, line: 18, baseType: !128, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !218, line: 19, baseType: !127, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !224, file: !218, line: 20, baseType: !47, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !219, file: !218, line: 26, baseType: !128, size: 32, align: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !219, file: !218, line: 27, baseType: !128, size: 32, align: 32, offset: 96)
!231 = !DIGlobalVariable(name: "num_methods", scope: !0, file: !1, line: 68, type: !17, isLocal: true, isDefinition: true, variable: i32* @num_methods)
!232 = !{i32 2, !"Dwarf Version", i32 2}
!233 = !{i32 2, !"Debug Info Version", i32 700000003}
!234 = !{i32 1, !"PIC Level", i32 2}
!235 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!236 = !DILocation(line: 30, column: 1, scope: !66)
!237 = !DIExpression()
!238 = !DILocation(line: 103, column: 41, scope: !69)
!239 = !DILocation(line: 103, column: 60, scope: !69)
!240 = !DILocation(line: 110, column: 28, scope: !69)
!241 = !{!242, !242, i64 0}
!242 = !{!"any pointer", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !DILocation(line: 110, column: 12, scope: !69)
!246 = !DILocation(line: 105, column: 7, scope: !69)
!247 = !DILocation(line: 112, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !69, file: !1, line: 112, column: 7)
!249 = !DILocation(line: 112, column: 7, scope: !69)
!250 = !DILocation(line: 115, column: 38, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 113, column: 3)
!252 = !DILocation(line: 117, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !1, line: 117, column: 9)
!254 = !DILocation(line: 117, column: 9, scope: !251)
!255 = !DILocation(line: 120, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 118, column: 5)
!257 = !DILocation(line: 123, column: 36, scope: !256)
!258 = !DILocation(line: 123, column: 19, scope: !256)
!259 = !DILocation(line: 123, column: 34, scope: !256)
!260 = !{!261, !242, i64 0}
!261 = !{!"IOMethod", !242, i64 0, !242, i64 8, !242, i64 16, !242, i64 24, !242, i64 32, !242, i64 40}
!262 = !DILocation(line: 124, column: 19, scope: !256)
!263 = !DILocation(line: 124, column: 34, scope: !256)
!264 = !{!261, !242, i64 8}
!265 = !DILocation(line: 125, column: 19, scope: !256)
!266 = !DILocation(line: 125, column: 34, scope: !256)
!267 = !{!261, !242, i64 16}
!268 = !DILocation(line: 126, column: 19, scope: !256)
!269 = !DILocation(line: 126, column: 34, scope: !256)
!270 = !{!261, !242, i64 24}
!271 = !DILocation(line: 127, column: 19, scope: !256)
!272 = !DILocation(line: 127, column: 34, scope: !256)
!273 = !{!261, !242, i64 32}
!274 = !DILocation(line: 128, column: 19, scope: !256)
!275 = !DILocation(line: 128, column: 34, scope: !256)
!276 = !{!261, !242, i64 40}
!277 = !DILocation(line: 131, column: 18, scope: !256)
!278 = !{!279, !279, i64 0}
!279 = !{!"int", !243, i64 0}
!280 = !DILocation(line: 132, column: 5, scope: !256)
!281 = !DILocation(line: 145, column: 3, scope: !69)
!282 = !DILocation(line: 573, column: 38, scope: !197)
!283 = !DILocation(line: 576, column: 3, scope: !197)
!284 = !DILocation(line: 604, column: 41, scope: !204)
!285 = !DILocation(line: 605, column: 42, scope: !204)
!286 = !DILocation(line: 606, column: 42, scope: !204)
!287 = !DILocation(line: 611, column: 3, scope: !204)
!288 = !DILocation(line: 615, column: 43, scope: !209)
!289 = !DILocation(line: 615, column: 51, scope: !209)
!290 = !DILocation(line: 619, column: 3, scope: !209)
!291 = !DILocation(line: 588, column: 42, scope: !200)
!292 = !DILocation(line: 588, column: 50, scope: !200)
!293 = !DILocation(line: 592, column: 3, scope: !200)
!294 = !DILocation(line: 175, column: 40, scope: !77)
!295 = !DILocation(line: 175, column: 54, scope: !77)
!296 = !DILocation(line: 181, column: 33, scope: !77)
!297 = !DILocation(line: 181, column: 12, scope: !77)
!298 = !DILocation(line: 182, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !77, file: !1, line: 182, column: 7)
!300 = !DILocation(line: 182, column: 7, scope: !77)
!301 = !DILocation(line: 184, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !1, line: 183, column: 3)
!303 = !DILocation(line: 184, column: 22, scope: !302)
!304 = !DILocation(line: 185, column: 3, scope: !302)
!305 = !DILocation(line: 187, column: 11, scope: !77)
!306 = !DILocation(line: 187, column: 3, scope: !77)
!307 = !DILocation(line: 217, column: 43, scope: !84)
!308 = !DILocation(line: 218, column: 45, scope: !84)
!309 = !DILocation(line: 226, column: 33, scope: !84)
!310 = !DILocation(line: 226, column: 12, scope: !84)
!311 = !DILocation(line: 227, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !84, file: !1, line: 227, column: 7)
!313 = !DILocation(line: 227, column: 7, scope: !84)
!314 = !DILocation(line: 229, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 228, column: 3)
!316 = !DILocation(line: 229, column: 25, scope: !315)
!317 = !DILocation(line: 230, column: 3, scope: !315)
!318 = !DILocation(line: 232, column: 11, scope: !84)
!319 = !DILocation(line: 232, column: 3, scope: !84)
!320 = !DILocation(line: 262, column: 45, scope: !91)
!321 = !DILocation(line: 263, column: 47, scope: !91)
!322 = !DILocation(line: 270, column: 33, scope: !91)
!323 = !DILocation(line: 270, column: 12, scope: !91)
!324 = !DILocation(line: 271, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !91, file: !1, line: 271, column: 7)
!326 = !DILocation(line: 271, column: 7, scope: !91)
!327 = !DILocation(line: 273, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 272, column: 3)
!329 = !DILocation(line: 273, column: 27, scope: !328)
!330 = !DILocation(line: 274, column: 3, scope: !328)
!331 = !DILocation(line: 276, column: 18, scope: !91)
!332 = !DILocation(line: 276, column: 3, scope: !91)
!333 = !DILocation(line: 306, column: 44, scope: !98)
!334 = !DILocation(line: 307, column: 46, scope: !98)
!335 = !DILocation(line: 314, column: 33, scope: !98)
!336 = !DILocation(line: 314, column: 12, scope: !98)
!337 = !DILocation(line: 315, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !98, file: !1, line: 315, column: 7)
!339 = !DILocation(line: 315, column: 7, scope: !98)
!340 = !DILocation(line: 317, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 316, column: 3)
!342 = !DILocation(line: 317, column: 26, scope: !341)
!343 = !DILocation(line: 318, column: 3, scope: !341)
!344 = !DILocation(line: 320, column: 11, scope: !98)
!345 = !DILocation(line: 320, column: 3, scope: !98)
!346 = !DILocation(line: 365, column: 34, scope: !103)
!347 = !DILocation(line: 365, column: 50, scope: !103)
!348 = !DILocation(line: 365, column: 67, scope: !103)
!349 = !DILocation(line: 371, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !103, file: !1, line: 371, column: 7)
!351 = !DILocation(line: 371, column: 19, scope: !350)
!352 = !DILocation(line: 371, column: 7, scope: !103)
!353 = !DILocation(line: 375, column: 57, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 374, column: 5)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 373, column: 5)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 373, column: 5)
!357 = distinct !DILexicalBlock(scope: !350, file: !1, line: 372, column: 3)
!358 = !DILocation(line: 375, column: 36, scope: !354)
!359 = !DILocation(line: 376, column: 11, scope: !360)
!360 = distinct !DILexicalBlock(scope: !354, file: !1, line: 376, column: 11)
!361 = !DILocation(line: 376, column: 18, scope: !360)
!362 = !DILocation(line: 376, column: 29, scope: !360)
!363 = !DILocation(line: 376, column: 21, scope: !360)
!364 = !DILocation(line: 376, column: 58, scope: !360)
!365 = !DILocation(line: 376, column: 11, scope: !354)
!366 = !DILocation(line: 373, column: 59, scope: !355)
!367 = !DILocation(line: 367, column: 7, scope: !103)
!368 = !DILocation(line: 373, column: 40, scope: !355)
!369 = !DILocation(line: 373, column: 38, scope: !355)
!370 = !DILocation(line: 373, column: 5, scope: !356)
!371 = !DILocation(line: 387, column: 3, scope: !103)
!372 = !DILocation(line: 416, column: 32, scope: !111)
!373 = !DILocation(line: 416, column: 48, scope: !111)
!374 = !DILocation(line: 421, column: 12, scope: !111)
!375 = !DILocation(line: 418, column: 7, scope: !111)
!376 = !DILocation(line: 423, column: 3, scope: !111)
!377 = !DILocation(line: 458, column: 40, scope: !118)
!378 = !DILocation(line: 458, column: 56, scope: !118)
!379 = !DILocation(line: 458, column: 73, scope: !118)
!380 = !DILocation(line: 463, column: 12, scope: !118)
!381 = !DILocation(line: 460, column: 7, scope: !118)
!382 = !DILocation(line: 465, column: 3, scope: !118)
!383 = !DILocation(line: 469, column: 34, scope: !124)
!384 = !DILocation(line: 469, column: 51, scope: !124)
!385 = !DILocation(line: 469, column: 55, scope: !124)
!386 = !DILocation(line: 471, column: 3, scope: !124)
!387 = !DILocation(line: 458, column: 40, scope: !118, inlinedAt: !388)
!388 = distinct !DILocation(line: 472, column: 11, scope: !124)
!389 = !DILocation(line: 458, column: 56, scope: !118, inlinedAt: !388)
!390 = !DILocation(line: 458, column: 73, scope: !118, inlinedAt: !388)
!391 = !DILocation(line: 463, column: 12, scope: !118, inlinedAt: !388)
!392 = !DILocation(line: 460, column: 7, scope: !118, inlinedAt: !388)
!393 = !DILocation(line: 472, column: 9, scope: !124)
!394 = !DILocation(line: 473, column: 3, scope: !124)
!395 = !DILocation(line: 474, column: 3, scope: !124)
!396 = !DILocation(line: 475, column: 1, scope: !124)
!397 = !DILocation(line: 494, column: 11, scope: !138)
!398 = !DILocation(line: 494, column: 3, scope: !138)
!399 = !DILocation(line: 516, column: 46, scope: !141)
!400 = !DILocation(line: 521, column: 53, scope: !141)
!401 = !DILocation(line: 521, column: 32, scope: !141)
!402 = !DILocation(line: 523, column: 11, scope: !141)
!403 = !DILocation(line: 523, column: 28, scope: !141)
!404 = !DILocation(line: 523, column: 3, scope: !141)
!405 = !DILocation(line: 545, column: 32, scope: !147)
!406 = !DILocation(line: 549, column: 53, scope: !147)
!407 = !DILocation(line: 549, column: 32, scope: !147)
!408 = !DILocation(line: 551, column: 11, scope: !147)
!409 = !DILocation(line: 551, column: 28, scope: !147)
!410 = !DILocation(line: 551, column: 3, scope: !147)
!411 = !DILocation(line: 652, column: 39, scope: !151)
!412 = !DILocation(line: 658, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !151, file: !1, line: 658, column: 7)
!414 = !DILocation(line: 658, column: 19, scope: !413)
!415 = !DILocation(line: 658, column: 7, scope: !151)
!416 = !DILocation(line: 662, column: 57, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 661, column: 5)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 660, column: 5)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 660, column: 5)
!420 = distinct !DILexicalBlock(scope: !413, file: !1, line: 659, column: 3)
!421 = !DILocation(line: 662, column: 36, scope: !417)
!422 = !DILocation(line: 663, column: 11, scope: !423)
!423 = distinct !DILexicalBlock(scope: !417, file: !1, line: 663, column: 11)
!424 = !DILocation(line: 663, column: 11, scope: !417)
!425 = !DILocation(line: 665, column: 27, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !1, line: 664, column: 7)
!427 = !DILocation(line: 665, column: 19, scope: !426)
!428 = !DILocation(line: 665, column: 16, scope: !426)
!429 = !DILocation(line: 654, column: 15, scope: !151)
!430 = !DILocation(line: 666, column: 7, scope: !426)
!431 = !DILocation(line: 660, column: 59, scope: !418)
!432 = !DILocation(line: 654, column: 7, scope: !151)
!433 = !DILocation(line: 660, column: 40, scope: !418)
!434 = !DILocation(line: 660, column: 38, scope: !418)
!435 = !DILocation(line: 660, column: 5, scope: !419)
!436 = !DILocation(line: 674, column: 3, scope: !151)
!437 = !DILocation(line: 714, column: 50, scope: !157)
!438 = !DILocation(line: 715, column: 51, scope: !157)
!439 = !DILocation(line: 716, column: 51, scope: !157)
!440 = !DILocation(line: 717, column: 51, scope: !157)
!441 = !DILocation(line: 723, column: 19, scope: !157)
!442 = !DILocation(line: 723, column: 42, scope: !157)
!443 = !DILocation(line: 723, column: 3, scope: !157)
!444 = !DILocation(line: 720, column: 20, scope: !157)
!445 = !DILocation(line: 724, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !157, file: !1, line: 724, column: 7)
!447 = !DILocation(line: 724, column: 7, scope: !157)
!448 = !DILocation(line: 726, column: 22, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 725, column: 3)
!450 = !DILocation(line: 726, column: 14, scope: !449)
!451 = !DILocation(line: 719, column: 7, scope: !157)
!452 = !DILocation(line: 727, column: 3, scope: !449)
!453 = !DILocation(line: 730, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !1, line: 729, column: 3)
!455 = !DILocation(line: 736, column: 3, scope: !157)
!456 = !DILocation(line: 740, column: 34, scope: !167)
!457 = !DILocation(line: 740, column: 51, scope: !167)
!458 = !DILocation(line: 740, column: 55, scope: !167)
!459 = !DILocation(line: 742, column: 3, scope: !167)
!460 = !DILocation(line: 744, column: 11, scope: !167)
!461 = !DILocation(line: 744, column: 9, scope: !167)
!462 = !DILocation(line: 746, column: 3, scope: !167)
!463 = !DILocation(line: 747, column: 3, scope: !167)
!464 = !DILocation(line: 748, column: 3, scope: !167)
!465 = !DILocation(line: 749, column: 1, scope: !167)
!466 = !DILocation(line: 787, column: 37, scope: !182)
!467 = !DILocation(line: 787, column: 45, scope: !182)
!468 = !DILocation(line: 789, column: 7, scope: !182)
!469 = !DILocation(line: 794, column: 29, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 794, column: 3)
!471 = distinct !DILexicalBlock(scope: !182, file: !1, line: 794, column: 3)
!472 = !DILocation(line: 794, column: 27, scope: !470)
!473 = !DILocation(line: 794, column: 3, scope: !471)
!474 = !DILocation(line: 797, column: 55, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !1, line: 795, column: 3)
!476 = !DILocation(line: 797, column: 34, scope: !475)
!477 = !DILocation(line: 798, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 798, column: 9)
!479 = !DILocation(line: 798, column: 16, scope: !478)
!480 = !DILocation(line: 798, column: 27, scope: !478)
!481 = !DILocation(line: 798, column: 19, scope: !478)
!482 = !DILocation(line: 798, column: 9, scope: !475)
!483 = !DILocation(line: 794, column: 48, scope: !470)
!484 = !DILocation(line: 804, column: 1, scope: !182)
!485 = !DILocation(line: 842, column: 32, scope: !188)
!486 = !DILocation(line: 842, column: 40, scope: !188)
!487 = !DILocation(line: 845, column: 7, scope: !188)
!488 = !DILocation(line: 844, column: 7, scope: !188)
!489 = !DILocation(line: 853, column: 29, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 853, column: 3)
!491 = distinct !DILexicalBlock(scope: !188, file: !1, line: 853, column: 3)
!492 = !DILocation(line: 853, column: 27, scope: !490)
!493 = !DILocation(line: 853, column: 3, scope: !491)
!494 = !DILocation(line: 857, column: 41, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 857, column: 9)
!496 = distinct !DILexicalBlock(scope: !490, file: !1, line: 854, column: 3)
!497 = !DILocation(line: 856, column: 55, scope: !496)
!498 = !DILocation(line: 856, column: 34, scope: !496)
!499 = !DILocation(line: 857, column: 9, scope: !495)
!500 = !DILocation(line: 857, column: 16, scope: !495)
!501 = !DILocation(line: 857, column: 27, scope: !495)
!502 = !DILocation(line: 857, column: 19, scope: !495)
!503 = !DILocation(line: 857, column: 9, scope: !496)
!504 = !DILocation(line: 860, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !495, file: !1, line: 858, column: 5)
!506 = !DILocation(line: 860, column: 7, scope: !505)
!507 = !DILocation(line: 861, column: 15, scope: !505)
!508 = !DILocation(line: 862, column: 5, scope: !505)
!509 = !DILocation(line: 853, column: 48, scope: !490)
!510 = !DILocation(line: 865, column: 3, scope: !188)
