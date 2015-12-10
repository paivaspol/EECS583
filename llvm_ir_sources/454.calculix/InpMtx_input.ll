; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_inputEntry(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"\0A fatal error in InpMtx_inputEntry(%p,%d,%d)\0A bad coordType = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [84 x i8] c"\0A fatal error in InpMtx_inputEntry(%p,%d,%d)\0A inputMode is not INPMTX_INDICES_ONLY\0A\00", align 1
@.str3 = private unnamed_addr constant [68 x i8] c"\0A fatal error in InpMtx_inputRealEntry(%p,%d,%d,%e)\0A bad inputReal\0A\00", align 1
@.str4 = private unnamed_addr constant [73 x i8] c"\0A fatal error in InpMtx_inputRealEntry(%p,%d,%d,%e)\0A bad coordType = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [84 x i8] c"\0A fatal error in InpMtx_inputRealEntry(%p,%d,%d,%e)\0A inputMode is not SPOOLES_REAL\0A\00", align 1
@.str6 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_inputComplexEntry(%p,%d,%d,%e,%e)\0A bad inputComplex\0A\00", align 1
@.str7 = private unnamed_addr constant [79 x i8] c"\0A fatal error in InpMtx_inputComplexEntry(%p,%d,%d,%e,%e)\0A bad coordType = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [93 x i8] c"\0A fatal error in InpMtx_inputComplexEntry(%p,%d,%d,%e,%e)\0A inputMode is not SPOOLES_COMPLEX\0A\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_inputRow(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [85 x i8] c"\0A fatal error in InpMtx_inputRow(%p,%d,%d,%p)\0A inputMode is not INPMTX_INDICES_ONLY\0A\00", align 1
@.str11 = private unnamed_addr constant [65 x i8] c"\0A fatal error in InpMtx_inputRealRow(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"\0A fatal error in InpMtx_inputRealRow(%p,%d,%d,%p,%p)\0A inputMode is not SPOOLES_REAL\0A\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"\0A fatal error in InpMtx_inputComplexRow(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [91 x i8] c"\0A fatal error in InpMtx_inputComplexRow(%p,%d,%d,%p,%p)\0A inputMode is not SPOOLES_COMPLEX\0A\00", align 1
@.str15 = private unnamed_addr constant [65 x i8] c"\0A fatal error in InpMtx_inputRealColumn(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_inputColumn(%p,%d,%d,%p)\0A inputMode must be INPMTX_INDICES_ONLY\0A\00", align 1
@.str17 = private unnamed_addr constant [68 x i8] c"\0A fatal error in InpMtx_inputRealColumn(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_inputRealColumn(%p,%d,%d,%p,%p)\0A inputMode must be SPOOLES_REAL\0A\00", align 1
@.str19 = private unnamed_addr constant [71 x i8] c"\0A fatal error in InpMtx_inputComplexColumn(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [95 x i8] c"\0A fatal error in InpMtx_inputComplexColumn(%p,%d,%d,%p,%p)\0A inputMode must be SPOOLES_COMPLEX\0A\00", align 1
@.str21 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_inputChevron(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [90 x i8] c"\0A fatal error in InpMtx_inputChevron(%p,%d,%d,%p)\0A inputMode must be INPMTX_INDICES_ONLY\0A\00", align 1
@.str23 = private unnamed_addr constant [69 x i8] c"\0A fatal error in InpMtx_inputRealChevron(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [90 x i8] c"\0A fatal error in InpMtx_inputRealChevron(%p,%d,%d,%p,%p)\0A inputMode must be SPOOLES_REAL\0A\00", align 1
@.str25 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_inputComplexChevron(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [96 x i8] c"\0A fatal error in InpMtx_inputComplexChevron(%p,%d,%d,%p,%p)\0A inputMode must be SPOOLES_COMPLEX\0A\00", align 1
@.str27 = private unnamed_addr constant [70 x i8] c"\0A fatal error in InpMtx_inputMatrix(%p,%d,%d,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [105 x i8] c"\0A fatal error in InpMtx_inputMatrix(%p,%d,%d,%d,%d,%p,%p)\0A inputComplexMode must be INPMTX_INDICES_ONLY\0A\00", align 1
@.str29 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_inputRealMatrix(%p,%d,%d,%d,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str30 = private unnamed_addr constant [98 x i8] c"\0A fatal error in InpMtx_inputRealMatrix(%p,%d,%d,%d,%d,%p,%p,%p)\0A inputMode must be SPOOLES_REAL\0A\00", align 1
@.str31 = private unnamed_addr constant [80 x i8] c"\0A fatal error in InpMtx_inputComplexMatrix(%p,%d,%d,%d,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str32 = private unnamed_addr constant [104 x i8] c"\0A fatal error in InpMtx_inputComplexMatrix(%p,%d,%d,%d,%d,%p,%p,%p)\0A inputMode must be SPOOLES_COMPLEX\0A\00", align 1
@.str33 = private unnamed_addr constant [69 x i8] c"\0A fatal error in InpMtx_inputTriples(%p,%d,%p,%p)\0A bad inputComplex\0A\00", align 1
@.str34 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_inputEntry(%p,%d,%p,%p)\0A coordType must be INPMTX_INDICES_ONLY\0A\00", align 1
@.str35 = private unnamed_addr constant [69 x i8] c"\0A fatal error in InpMtx_inputRealTriples(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str36 = private unnamed_addr constant [96 x i8] c"\0A fatal error in InpMtx_inputRealEntry(%p,%d,%p,%p,%p)\0A coordType must be COMPLEX_REAL_ENTRIES\0A\00", align 1
@.str37 = private unnamed_addr constant [79 x i8] c"\0A fatal error in InpMtx_inputComplexTriples(%p,%d,%p,%p,%p)\0A bad inputComplex\0A\00", align 1
@.str38 = private unnamed_addr constant [94 x i8] c"\0A fatal error in InpMtx_inputComplexEntry(%p,%d,%p,%p,%p)\0A inputMode must be SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !48), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !49), !dbg !303
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !50), !dbg !304
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !305
  %cmp1 = icmp slt i32 %row, 0, !dbg !305
  %or.cond = or i1 %cmp, %cmp1, !dbg !305
  %cmp3 = icmp slt i32 %col, 0, !dbg !305
  %or.cond36 = or i1 %or.cond, %cmp3, !dbg !305
  br i1 %or.cond36, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col) #5, !dbg !306
  tail call void @exit(i32 -1) #6, !dbg !311
  unreachable, !dbg !311

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !312
  %1 = load i32* %coordType, align 4, !dbg !312, !tbaa !313
  %.off = add i32 %1, -1, !dbg !312
  %switch = icmp ult i32 %.off, 3, !dbg !312
  br i1 %switch, label %if.end14, label %if.then11, !dbg !312

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !314, !tbaa !308
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, i32 %1) #5, !dbg !314
  tail call void @exit(i32 -1) #6, !dbg !316
  unreachable, !dbg !316

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !317
  %3 = load i32* %inputMode, align 4, !dbg !317, !tbaa !313
  %cmp15 = icmp eq i32 %3, 0, !dbg !317
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !317

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !318, !tbaa !308
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col) #5, !dbg !318
  tail call void @exit(i32 -1) #6, !dbg !320
  unreachable, !dbg !320

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double 0.000000e+00, double 0.000000e+00) #7, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !290), !dbg !323
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !291), !dbg !324
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !292), !dbg !325
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !293), !dbg !326
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !294), !dbg !327
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 1) #7, !dbg !328
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !329
  %0 = load i32* %nent1, align 4, !dbg !329, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !295), !dbg !329
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !330
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !330
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !296), !dbg !330
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !331
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !297), !dbg !331
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !332
  %1 = load i32* %coordType, align 4, !dbg !332, !tbaa !313
  switch i32 %1, label %if.end30 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %if.then15
  ], !dbg !332

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %0 to i64, !dbg !333
  %arrayidx = getelementptr inbounds i32* %call, i64 %idxprom, !dbg !333
  store i32 %row, i32* %arrayidx, align 4, !dbg !333, !tbaa !313
  %arrayidx4 = getelementptr inbounds i32* %call2, i64 %idxprom, !dbg !335
  store i32 %col, i32* %arrayidx4, align 4, !dbg !335, !tbaa !313
  br label %if.end30, !dbg !336

if.then7:                                         ; preds = %entry
  %idxprom8 = sext i32 %0 to i64, !dbg !337
  %arrayidx9 = getelementptr inbounds i32* %call, i64 %idxprom8, !dbg !337
  store i32 %col, i32* %arrayidx9, align 4, !dbg !337, !tbaa !313
  %arrayidx11 = getelementptr inbounds i32* %call2, i64 %idxprom8, !dbg !339
  store i32 %row, i32* %arrayidx11, align 4, !dbg !339, !tbaa !313
  br label %if.end30, !dbg !340

if.then15:                                        ; preds = %entry
  %cmp16 = icmp sgt i32 %row, %col, !dbg !341
  %idxprom23 = sext i32 %0 to i64, !dbg !343
  %arrayidx24 = getelementptr inbounds i32* %call, i64 %idxprom23, !dbg !343
  br i1 %cmp16, label %if.else22, label %if.then17, !dbg !341

if.then17:                                        ; preds = %if.then15
  store i32 %row, i32* %arrayidx24, align 4, !dbg !345, !tbaa !313
  %sub = sub nsw i32 %col, %row, !dbg !347
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %idxprom23, !dbg !347
  store i32 %sub, i32* %arrayidx21, align 4, !dbg !347, !tbaa !313
  br label %if.end30, !dbg !348

if.else22:                                        ; preds = %if.then15
  store i32 %col, i32* %arrayidx24, align 4, !dbg !343, !tbaa !313
  %sub25 = sub nsw i32 %col, %row, !dbg !349
  %arrayidx27 = getelementptr inbounds i32* %call2, i64 %idxprom23, !dbg !349
  store i32 %sub25, i32* %arrayidx27, align 4, !dbg !349, !tbaa !313
  br label %if.end30

if.end30:                                         ; preds = %entry, %if.then7, %if.then17, %if.else22, %if.then
  %add = add nsw i32 %0, 1, !dbg !350
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #5, !dbg !350
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #5, !dbg !351
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !352
  %2 = load i32* %inputMode, align 4, !dbg !352, !tbaa !313
  switch i32 %2, label %if.end58 [
    i32 1, label %if.then35
    i32 2, label %if.then44
  ], !dbg !352

if.then35:                                        ; preds = %if.end30
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !353
  %call36 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !353
  tail call void @llvm.dbg.value(metadata !{double* %call36}, i64 0, metadata !298), !dbg !353
  %idxprom37 = sext i32 %0 to i64, !dbg !354
  %arrayidx38 = getelementptr inbounds double* %call36, i64 %idxprom37, !dbg !354
  store double %real, double* %arrayidx38, align 8, !dbg !354, !tbaa !355
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #5, !dbg !356
  br label %if.end58, !dbg !357

if.then44:                                        ; preds = %if.end30
  %dvecDV46 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !358
  %call47 = tail call double* @DV_entries(%struct._DV* %dvecDV46) #5, !dbg !358
  tail call void @llvm.dbg.value(metadata !{double* %call47}, i64 0, metadata !300), !dbg !358
  %mul = shl nsw i32 %0, 1, !dbg !359
  %idxprom48 = sext i32 %mul to i64, !dbg !359
  %arrayidx49 = getelementptr inbounds double* %call47, i64 %idxprom48, !dbg !359
  store double %real, double* %arrayidx49, align 8, !dbg !359, !tbaa !355
  %add51107 = or i32 %mul, 1, !dbg !360
  %idxprom52 = sext i32 %add51107 to i64, !dbg !360
  %arrayidx53 = getelementptr inbounds double* %call47, i64 %idxprom52, !dbg !360
  store double %imag, double* %arrayidx53, align 8, !dbg !360, !tbaa !355
  %mul56 = shl nsw i32 %add, 1, !dbg !361
  tail call void @DV_setSize(%struct._DV* %dvecDV46, i32 %mul56) #5, !dbg !361
  br label %if.end58, !dbg !362

if.end58:                                         ; preds = %if.end30, %if.then44, %if.then35
  %3 = load i32* %nent1, align 4, !dbg !363, !tbaa !313
  %inc = add nsw i32 %3, 1, !dbg !363
  store i32 %inc, i32* %nent1, align 4, !dbg !363, !tbaa !313
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !364
  store i32 1, i32* %storageMode, align 4, !dbg !364, !tbaa !313
  ret void, !dbg !365
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !55), !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !56), !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !57), !dbg !368
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !58), !dbg !369
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !370
  %cmp1 = icmp slt i32 %row, 0, !dbg !370
  %or.cond = or i1 %cmp, %cmp1, !dbg !370
  %cmp3 = icmp slt i32 %col, 0, !dbg !370
  %or.cond39 = or i1 %or.cond, %cmp3, !dbg !370
  br i1 %or.cond39, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !371, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #5, !dbg !371
  tail call void @exit(i32 -1) #6, !dbg !373
  unreachable, !dbg !373

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !374
  %1 = load i32* %coordType, align 4, !dbg !374, !tbaa !313
  %.off = add i32 %1, -1, !dbg !374
  %switch = icmp ult i32 %.off, 3, !dbg !374
  br i1 %switch, label %if.end14, label %if.then11, !dbg !374

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !375, !tbaa !308
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([73 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value, i32 %1) #5, !dbg !375
  tail call void @exit(i32 -1) #6, !dbg !377
  unreachable, !dbg !377

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !378
  %3 = load i32* %inputMode, align 4, !dbg !378, !tbaa !313
  %cmp15 = icmp eq i32 %3, 1, !dbg !378
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !378

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !379, !tbaa !308
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #5, !dbg !379
  tail call void @exit(i32 -1) #6, !dbg !381
  unreachable, !dbg !381

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value, double 0.000000e+00) #7, !dbg !382
  ret void, !dbg !383
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !63), !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !64), !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !65), !dbg !386
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !66), !dbg !387
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !67), !dbg !388
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !389
  %cmp1 = icmp slt i32 %row, 0, !dbg !389
  %or.cond = or i1 %cmp, %cmp1, !dbg !389
  %cmp3 = icmp slt i32 %col, 0, !dbg !389
  %or.cond42 = or i1 %or.cond, %cmp3, !dbg !389
  br i1 %or.cond42, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !390, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([77 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #5, !dbg !390
  tail call void @exit(i32 -1) #6, !dbg !392
  unreachable, !dbg !392

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !393
  %1 = load i32* %coordType, align 4, !dbg !393, !tbaa !313
  %.off = add i32 %1, -1, !dbg !393
  %switch = icmp ult i32 %.off, 3, !dbg !393
  br i1 %switch, label %if.end14, label %if.then11, !dbg !393

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !394, !tbaa !308
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag, i32 %1) #5, !dbg !394
  tail call void @exit(i32 -1) #6, !dbg !396
  unreachable, !dbg !396

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !397
  %3 = load i32* %inputMode, align 4, !dbg !397, !tbaa !313
  %cmp15 = icmp eq i32 %3, 2, !dbg !397
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !397

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !398, !tbaa !308
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #5, !dbg !398
  tail call void @exit(i32 -1) #6, !dbg !400
  unreachable, !dbg !400

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #7, !dbg !401
  ret void, !dbg !402
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !72), !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !73), !dbg !404
  tail call void @llvm.dbg.value(metadata !{i32 %rowsize}, i64 0, metadata !74), !dbg !405
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !75), !dbg !406
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !407
  %cmp1 = icmp slt i32 %row, 0, !dbg !407
  %or.cond = or i1 %cmp, %cmp1, !dbg !407
  %cmp3 = icmp slt i32 %rowsize, 0, !dbg !407
  %or.cond23 = or i1 %or.cond, %cmp3, !dbg !407
  %cmp5 = icmp eq i32* %rowind, null, !dbg !407
  %or.cond24 = or i1 %or.cond23, %cmp5, !dbg !407
  br i1 %or.cond24, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !408, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #5, !dbg !408
  tail call void @exit(i32 -1) #6, !dbg !410
  unreachable, !dbg !410

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !411
  %1 = load i32* %inputMode, align 4, !dbg !411, !tbaa !313
  %cmp6 = icmp eq i32 %1, 0, !dbg !411
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !411

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !412, !tbaa !308
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #5, !dbg !412
  tail call void @exit(i32 -1) #6, !dbg !414
  unreachable, !dbg !414

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* null) #7, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !273), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !274), !dbg !418
  tail call void @llvm.dbg.value(metadata !{i32 %rowsize}, i64 0, metadata !275), !dbg !419
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !276), !dbg !420
  tail call void @llvm.dbg.value(metadata !{double* %rowent}, i64 0, metadata !277), !dbg !421
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %rowsize) #7, !dbg !422
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !423
  %0 = load i32* %nent1, align 4, !dbg !423, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !281), !dbg !423
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !424
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !424
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !282), !dbg !424
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !425
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !425
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !283), !dbg !425
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !426
  %1 = load i32* %coordType, align 4, !dbg !426, !tbaa !313
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %for.cond.preheader
  ], !dbg !426

for.cond.preheader:                               ; preds = %entry
  %cmp16105 = icmp sgt i32 %rowsize, 0, !dbg !427
  br i1 %cmp16105, label %for.body, label %if.end24, !dbg !427

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %0 to i64, !dbg !430
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext, !dbg !430
  tail call void @IVfill(i32 %rowsize, i32* %add.ptr, i32 %row) #5, !dbg !430
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext, !dbg !432
  tail call void @IVcopy(i32 %rowsize, i32* %add.ptr4, i32* %rowind) #5, !dbg !432
  br label %if.end24, !dbg !433

if.then7:                                         ; preds = %entry
  %idx.ext8 = sext i32 %0 to i64, !dbg !434
  %add.ptr9 = getelementptr inbounds i32* %call2, i64 %idx.ext8, !dbg !434
  tail call void @IVfill(i32 %rowsize, i32* %add.ptr9, i32 %row) #5, !dbg !434
  %add.ptr11 = getelementptr inbounds i32* %call, i64 %idx.ext8, !dbg !436
  tail call void @IVcopy(i32 %rowsize, i32* %add.ptr11, i32* %rowind) #5, !dbg !436
  br label %if.end24, !dbg !437

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %rowind, i64 %indvars.iv, !dbg !438
  %2 = load i32* %arrayidx, align 4, !dbg !438, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !278), !dbg !438
  %cmp17 = icmp sge i32 %2, %row, !dbg !440
  %cond = select i1 %cmp17, i32 %row, i32 %2, !dbg !440
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %indvars.iv, !dbg !440
  store i32 %cond, i32* %arrayidx19, align 4, !dbg !440, !tbaa !313
  %sub = sub nsw i32 %2, %row, !dbg !441
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %indvars.iv, !dbg !441
  store i32 %sub, i32* %arrayidx21, align 4, !dbg !441, !tbaa !313
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !427
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !427
  %exitcond = icmp eq i32 %lftr.wideiv, %rowsize, !dbg !427
  br i1 %exitcond, label %if.end24, label %for.body, !dbg !427

if.end24:                                         ; preds = %for.cond.preheader, %for.body, %entry, %if.then7, %if.then
  %add = add nsw i32 %0, %rowsize, !dbg !442
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #5, !dbg !442
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #5, !dbg !443
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !444
  %3 = load i32* %inputMode, align 4, !dbg !444, !tbaa !313
  switch i32 %3, label %if.end48 [
    i32 1, label %if.then29
    i32 2, label %if.then38
  ], !dbg !444

if.then29:                                        ; preds = %if.end24
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !445
  %call30 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !445
  tail call void @llvm.dbg.value(metadata !{double* %call30}, i64 0, metadata !284), !dbg !445
  %idx.ext31 = sext i32 %0 to i64, !dbg !446
  %add.ptr32 = getelementptr inbounds double* %call30, i64 %idx.ext31, !dbg !446
  tail call void @DVcopy(i32 %rowsize, double* %add.ptr32, double* %rowent) #5, !dbg !446
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #5, !dbg !447
  br label %if.end48, !dbg !448

if.then38:                                        ; preds = %if.end24
  %dvecDV40 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !449
  %call41 = tail call double* @DV_entries(%struct._DV* %dvecDV40) #5, !dbg !449
  tail call void @llvm.dbg.value(metadata !{double* %call41}, i64 0, metadata !286), !dbg !449
  %mul = shl nsw i32 %0, 1, !dbg !450
  %idx.ext42 = sext i32 %mul to i64, !dbg !450
  %add.ptr43 = getelementptr inbounds double* %call41, i64 %idx.ext42, !dbg !450
  tail call void @ZVcopy(i32 %rowsize, double* %add.ptr43, double* %rowent) #5, !dbg !450
  %mul46 = shl nsw i32 %add, 1, !dbg !451
  tail call void @DV_setSize(%struct._DV* %dvecDV40, i32 %mul46) #5, !dbg !451
  br label %if.end48, !dbg !452

if.end48:                                         ; preds = %if.end24, %if.then38, %if.then29
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !453
  store i32 1, i32* %storageMode, align 4, !dbg !453, !tbaa !313
  %4 = load i32* %nent1, align 4, !dbg !454, !tbaa !313
  %add50 = add nsw i32 %4, %rowsize, !dbg !454
  store i32 %add50, i32* %nent1, align 4, !dbg !454, !tbaa !313
  ret void, !dbg !455
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !80), !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !81), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %rowsize}, i64 0, metadata !82), !dbg !458
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !83), !dbg !459
  tail call void @llvm.dbg.value(metadata !{double* %rowent}, i64 0, metadata !84), !dbg !460
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !461
  %cmp1 = icmp slt i32 %row, 0, !dbg !461
  %or.cond = or i1 %cmp, %cmp1, !dbg !461
  %cmp3 = icmp slt i32 %rowsize, 0, !dbg !461
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !461
  %cmp5 = icmp eq i32* %rowind, null, !dbg !461
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !461
  %cmp7 = icmp eq double* %rowent, null, !dbg !461
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !461
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !461

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !462, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #5, !dbg !462
  tail call void @exit(i32 -1) #6, !dbg !464
  unreachable, !dbg !464

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !465
  %1 = load i32* %inputMode, align 4, !dbg !465, !tbaa !313
  %cmp8 = icmp eq i32 %1, 1, !dbg !465
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !465

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !466, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #5, !dbg !466
  tail call void @exit(i32 -1) #6, !dbg !468
  unreachable, !dbg !468

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #7, !dbg !469
  ret void, !dbg !470
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !87), !dbg !471
  tail call void @llvm.dbg.value(metadata !{i32 %row}, i64 0, metadata !88), !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %rowsize}, i64 0, metadata !89), !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !90), !dbg !474
  tail call void @llvm.dbg.value(metadata !{double* %rowent}, i64 0, metadata !91), !dbg !475
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !476
  %cmp1 = icmp slt i32 %row, 0, !dbg !476
  %or.cond = or i1 %cmp, %cmp1, !dbg !476
  %cmp3 = icmp slt i32 %rowsize, 0, !dbg !476
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !476
  %cmp5 = icmp eq i32* %rowind, null, !dbg !476
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !476
  %cmp7 = icmp eq double* %rowent, null, !dbg !476
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !476
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !476

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !477, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #5, !dbg !477
  tail call void @exit(i32 -1) #6, !dbg !479
  unreachable, !dbg !479

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !480
  %1 = load i32* %inputMode, align 4, !dbg !480, !tbaa !313
  %cmp8 = icmp eq i32 %1, 2, !dbg !480
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !480

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #5, !dbg !481
  tail call void @exit(i32 -1) #6, !dbg !483
  unreachable, !dbg !483

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #7, !dbg !484
  ret void, !dbg !485
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !94), !dbg !486
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !95), !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %colsize}, i64 0, metadata !96), !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !97), !dbg !489
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !490
  %cmp1 = icmp slt i32 %col, 0, !dbg !490
  %or.cond = or i1 %cmp, %cmp1, !dbg !490
  %cmp3 = icmp slt i32 %colsize, 0, !dbg !490
  %or.cond23 = or i1 %or.cond, %cmp3, !dbg !490
  %cmp5 = icmp eq i32* %colind, null, !dbg !490
  %or.cond24 = or i1 %or.cond23, %cmp5, !dbg !490
  br i1 %or.cond24, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !491, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str15, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #5, !dbg !491
  tail call void @exit(i32 -1) #6, !dbg !493
  unreachable, !dbg !493

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !494
  %1 = load i32* %inputMode, align 4, !dbg !494, !tbaa !313
  %cmp6 = icmp eq i32 %1, 0, !dbg !494
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !494

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !495, !tbaa !308
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #5, !dbg !495
  tail call void @exit(i32 -1) #6, !dbg !497
  unreachable, !dbg !497

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* null) #7, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !256), !dbg !500
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !257), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %colsize}, i64 0, metadata !258), !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !259), !dbg !503
  tail call void @llvm.dbg.value(metadata !{double* %colent}, i64 0, metadata !260), !dbg !504
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %colsize) #7, !dbg !505
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !506
  %0 = load i32* %nent1, align 4, !dbg !506, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !263), !dbg !506
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !507
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !507
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !265), !dbg !507
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !508
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !508
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !266), !dbg !508
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !509
  %1 = load i32* %coordType, align 4, !dbg !509, !tbaa !313
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %for.cond.preheader
  ], !dbg !509

for.cond.preheader:                               ; preds = %entry
  %cmp16106 = icmp sgt i32 %colsize, 0, !dbg !510
  br i1 %cmp16106, label %for.body.lr.ph, label %if.end24, !dbg !510

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = sext i32 %0 to i64
  br label %for.body, !dbg !510

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %0 to i64, !dbg !513
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext, !dbg !513
  tail call void @IVcopy(i32 %colsize, i32* %add.ptr, i32* %colind) #5, !dbg !513
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext, !dbg !515
  tail call void @IVfill(i32 %colsize, i32* %add.ptr4, i32 %col) #5, !dbg !515
  br label %if.end24, !dbg !516

if.then7:                                         ; preds = %entry
  %idx.ext8 = sext i32 %0 to i64, !dbg !517
  %add.ptr9 = getelementptr inbounds i32* %call, i64 %idx.ext8, !dbg !517
  tail call void @IVfill(i32 %colsize, i32* %add.ptr9, i32 %col) #5, !dbg !517
  %add.ptr11 = getelementptr inbounds i32* %call2, i64 %idx.ext8, !dbg !519
  tail call void @IVcopy(i32 %colsize, i32* %add.ptr11, i32* %colind) #5, !dbg !519
  br label %if.end24, !dbg !520

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %colind, i64 %indvars.iv, !dbg !521
  %3 = load i32* %arrayidx, align 4, !dbg !521, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !264), !dbg !521
  %cmp17 = icmp sle i32 %3, %col, !dbg !523
  %cond = select i1 %cmp17, i32 %3, i32 %col, !dbg !523
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %indvars.iv, !dbg !523
  store i32 %cond, i32* %arrayidx19, align 4, !dbg !523, !tbaa !313
  %sub = sub nsw i32 %col, %3, !dbg !524
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %indvars.iv, !dbg !524
  store i32 %sub, i32* %arrayidx21, align 4, !dbg !524, !tbaa !313
  %inc = add nsw i32 %ii.0108, 1, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !261), !dbg !510
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !510
  %exitcond = icmp eq i32 %inc, %colsize, !dbg !510
  br i1 %exitcond, label %if.end24, label %for.body, !dbg !510

if.end24:                                         ; preds = %for.cond.preheader, %for.body, %entry, %if.then7, %if.then
  %add = add nsw i32 %0, %colsize, !dbg !525
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #5, !dbg !525
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #5, !dbg !526
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !527
  %4 = load i32* %inputMode, align 4, !dbg !527, !tbaa !313
  switch i32 %4, label %if.end48 [
    i32 1, label %if.then29
    i32 2, label %if.then38
  ], !dbg !527

if.then29:                                        ; preds = %if.end24
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !528
  %call30 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !528
  %idx.ext31 = sext i32 %0 to i64, !dbg !528
  %add.ptr32 = getelementptr inbounds double* %call30, i64 %idx.ext31, !dbg !528
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr32}, i64 0, metadata !267), !dbg !528
  tail call void @DVcopy(i32 %colsize, double* %add.ptr32, double* %colent) #5, !dbg !529
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #5, !dbg !530
  br label %if.end48, !dbg !531

if.then38:                                        ; preds = %if.end24
  %dvecDV40 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !532
  %call41 = tail call double* @DV_entries(%struct._DV* %dvecDV40) #5, !dbg !532
  %mul = shl nsw i32 %0, 1, !dbg !532
  %idx.ext42 = sext i32 %mul to i64, !dbg !532
  %add.ptr43 = getelementptr inbounds double* %call41, i64 %idx.ext42, !dbg !532
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr43}, i64 0, metadata !269), !dbg !532
  tail call void @ZVcopy(i32 %colsize, double* %add.ptr43, double* %colent) #5, !dbg !533
  %mul46 = shl nsw i32 %add, 1, !dbg !534
  tail call void @DV_setSize(%struct._DV* %dvecDV40, i32 %mul46) #5, !dbg !534
  br label %if.end48, !dbg !535

if.end48:                                         ; preds = %if.end24, %if.then38, %if.then29
  store i32 %add, i32* %nent1, align 4, !dbg !536, !tbaa !313
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !537
  store i32 1, i32* %storageMode, align 4, !dbg !537, !tbaa !313
  ret void, !dbg !538
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !100), !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !101), !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32 %colsize}, i64 0, metadata !102), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !103), !dbg !542
  tail call void @llvm.dbg.value(metadata !{double* %colent}, i64 0, metadata !104), !dbg !543
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !544
  %cmp1 = icmp slt i32 %col, 0, !dbg !544
  %or.cond = or i1 %cmp, %cmp1, !dbg !544
  %cmp3 = icmp slt i32 %colsize, 0, !dbg !544
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !544
  %cmp5 = icmp eq i32* %colind, null, !dbg !544
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !544
  %cmp7 = icmp eq double* %colent, null, !dbg !544
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !544
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !544

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !545, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #5, !dbg !545
  tail call void @exit(i32 -1) #6, !dbg !547
  unreachable, !dbg !547

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !548
  %1 = load i32* %inputMode, align 4, !dbg !548, !tbaa !313
  %cmp8 = icmp eq i32 %1, 1, !dbg !548
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !548

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !549, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #5, !dbg !549
  tail call void @exit(i32 -1) #6, !dbg !551
  unreachable, !dbg !551

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #7, !dbg !552
  ret void, !dbg !553
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !107), !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !108), !dbg !555
  tail call void @llvm.dbg.value(metadata !{i32 %colsize}, i64 0, metadata !109), !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !110), !dbg !557
  tail call void @llvm.dbg.value(metadata !{double* %colent}, i64 0, metadata !111), !dbg !558
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !559
  %cmp1 = icmp slt i32 %col, 0, !dbg !559
  %or.cond = or i1 %cmp, %cmp1, !dbg !559
  %cmp3 = icmp slt i32 %colsize, 0, !dbg !559
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !559
  %cmp5 = icmp eq i32* %colind, null, !dbg !559
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !559
  %cmp7 = icmp eq double* %colent, null, !dbg !559
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !559
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !559

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !560, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #5, !dbg !560
  tail call void @exit(i32 -1) #6, !dbg !562
  unreachable, !dbg !562

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !563
  %1 = load i32* %inputMode, align 4, !dbg !563, !tbaa !313
  %cmp8 = icmp eq i32 %1, 2, !dbg !563
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !563

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !564, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #5, !dbg !564
  tail call void @exit(i32 -1) #6, !dbg !566
  unreachable, !dbg !566

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #7, !dbg !567
  ret void, !dbg !568
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !114), !dbg !569
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !115), !dbg !570
  tail call void @llvm.dbg.value(metadata !{i32 %chvsize}, i64 0, metadata !116), !dbg !571
  tail call void @llvm.dbg.value(metadata !{i32* %chvind}, i64 0, metadata !117), !dbg !572
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !573
  %cmp1 = icmp slt i32 %chv, 0, !dbg !573
  %or.cond = or i1 %cmp, %cmp1, !dbg !573
  %cmp3 = icmp slt i32 %chvsize, 0, !dbg !573
  %or.cond23 = or i1 %or.cond, %cmp3, !dbg !573
  %cmp5 = icmp eq i32* %chvind, null, !dbg !573
  %or.cond24 = or i1 %or.cond23, %cmp5, !dbg !573
  br i1 %or.cond24, label %if.then, label %if.end, !dbg !573

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !574, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #5, !dbg !574
  tail call void @exit(i32 -1) #6, !dbg !576
  unreachable, !dbg !576

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !577
  %1 = load i32* %inputMode, align 4, !dbg !577, !tbaa !313
  %cmp6 = icmp eq i32 %1, 0, !dbg !577
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !577

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !578, !tbaa !308
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #5, !dbg !578
  tail call void @exit(i32 -1) #6, !dbg !580
  unreachable, !dbg !580

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* null) #7, !dbg !581
  ret void, !dbg !582
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !237), !dbg !583
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !238), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %chvsize}, i64 0, metadata !239), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32* %chvind}, i64 0, metadata !240), !dbg !586
  tail call void @llvm.dbg.value(metadata !{double* %chvent}, i64 0, metadata !241), !dbg !587
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %chvsize) #7, !dbg !588
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !589
  %0 = load i32* %nent1, align 4, !dbg !589, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !245), !dbg !589
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !590
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !248), !dbg !590
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !591
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !591
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !249), !dbg !591
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !592
  %1 = load i32* %coordType, align 4, !dbg !592, !tbaa !313
  switch i32 %1, label %if.end42 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond15.preheader
    i32 3, label %if.then37
  ], !dbg !592

for.cond15.preheader:                             ; preds = %entry
  %cmp16137 = icmp sgt i32 %chvsize, 0, !dbg !593
  br i1 %cmp16137, label %for.body17.lr.ph, label %if.end42, !dbg !593

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %2 = sext i32 %0 to i64, !dbg !593
  br label %for.body17, !dbg !593

for.cond.preheader:                               ; preds = %entry
  %cmp3133 = icmp sgt i32 %chvsize, 0, !dbg !596
  br i1 %cmp3133, label %for.body.lr.ph, label %if.end42, !dbg !596

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = sext i32 %0 to i64, !dbg !596
  br label %for.body, !dbg !596

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv140 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next141, %for.body ], !dbg !596
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %chvind, i64 %indvars.iv, !dbg !599
  %4 = load i32* %arrayidx, align 4, !dbg !599, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !246), !dbg !599
  %cmp4 = icmp sgt i32 %4, -1, !dbg !599
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !247), !dbg !601
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !242), !dbg !603
  %sub = select i1 %cmp4, i32 0, i32 %4, !dbg !599
  %row.0 = sub nsw i32 %chv, %sub, !dbg !599
  %add = select i1 %cmp4, i32 %4, i32 0, !dbg !599
  %col.0 = add nsw i32 %add, %chv, !dbg !599
  %arrayidx7 = getelementptr inbounds i32* %call, i64 %indvars.iv140, !dbg !605
  store i32 %row.0, i32* %arrayidx7, align 4, !dbg !605, !tbaa !313
  %arrayidx9 = getelementptr inbounds i32* %call2, i64 %indvars.iv140, !dbg !606
  store i32 %col.0, i32* %arrayidx9, align 4, !dbg !606, !tbaa !313
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !596
  %indvars.iv.next141 = add i64 %indvars.iv140, 1, !dbg !596
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !596
  %exitcond = icmp eq i32 %lftr.wideiv, %chvsize, !dbg !596
  br i1 %exitcond, label %if.end42, label %for.body, !dbg !596

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv144 = phi i64 [ %2, %for.body17.lr.ph ], [ %indvars.iv.next145, %for.body17 ], !dbg !593
  %indvars.iv142 = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next143, %for.body17 ]
  %arrayidx19 = getelementptr inbounds i32* %chvind, i64 %indvars.iv142, !dbg !607
  %5 = load i32* %arrayidx19, align 4, !dbg !607, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !246), !dbg !607
  %cmp20 = icmp sgt i32 %5, -1, !dbg !607
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !247), !dbg !609
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !242), !dbg !611
  %sub24 = select i1 %cmp20, i32 0, i32 %5, !dbg !607
  %row.1 = sub nsw i32 %chv, %sub24, !dbg !607
  %add22 = select i1 %cmp20, i32 %5, i32 0, !dbg !607
  %col.1 = add nsw i32 %add22, %chv, !dbg !607
  %arrayidx27 = getelementptr inbounds i32* %call, i64 %indvars.iv144, !dbg !613
  store i32 %col.1, i32* %arrayidx27, align 4, !dbg !613, !tbaa !313
  %arrayidx29 = getelementptr inbounds i32* %call2, i64 %indvars.iv144, !dbg !614
  store i32 %row.1, i32* %arrayidx29, align 4, !dbg !614, !tbaa !313
  %indvars.iv.next143 = add i64 %indvars.iv142, 1, !dbg !593
  %indvars.iv.next145 = add i64 %indvars.iv144, 1, !dbg !593
  %lftr.wideiv146 = trunc i64 %indvars.iv.next143 to i32, !dbg !593
  %exitcond147 = icmp eq i32 %lftr.wideiv146, %chvsize, !dbg !593
  br i1 %exitcond147, label %if.end42, label %for.body17, !dbg !593

if.then37:                                        ; preds = %entry
  %idx.ext = sext i32 %0 to i64, !dbg !615
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext, !dbg !615
  tail call void @IVfill(i32 %chvsize, i32* %add.ptr, i32 %chv) #5, !dbg !615
  %add.ptr39 = getelementptr inbounds i32* %call2, i64 %idx.ext, !dbg !617
  tail call void @IVcopy(i32 %chvsize, i32* %add.ptr39, i32* %chvind) #5, !dbg !617
  br label %if.end42, !dbg !618

if.end42:                                         ; preds = %for.cond15.preheader, %for.body17, %for.cond.preheader, %for.body, %entry, %if.then37
  %add44 = add nsw i32 %0, %chvsize, !dbg !619
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add44) #5, !dbg !619
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add44) #5, !dbg !620
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !621
  %6 = load i32* %inputMode, align 4, !dbg !621, !tbaa !313
  %cmp47 = icmp eq i32 %6, 1, !dbg !621
  br i1 %cmp47, label %if.then48, label %if.end67, !dbg !621

if.then48:                                        ; preds = %if.end42
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !622
  %call49 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !622
  %idx.ext50 = sext i32 %0 to i64, !dbg !622
  %add.ptr51 = getelementptr inbounds double* %call49, i64 %idx.ext50, !dbg !622
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr51}, i64 0, metadata !250), !dbg !622
  tail call void @DVcopy(i32 %chvsize, double* %add.ptr51, double* %chvent) #5, !dbg !623
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add44) #5, !dbg !624
  br label %if.end67, !dbg !625

if.end67:                                         ; preds = %if.end42, %if.then48
  %7 = load i32* %nent1, align 4, !dbg !626, !tbaa !313
  %add69 = add nsw i32 %7, %chvsize, !dbg !626
  store i32 %add69, i32* %nent1, align 4, !dbg !626, !tbaa !313
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !627
  store i32 1, i32* %storageMode, align 4, !dbg !627, !tbaa !313
  ret void, !dbg !628
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !120), !dbg !629
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !121), !dbg !630
  tail call void @llvm.dbg.value(metadata !{i32 %chvsize}, i64 0, metadata !122), !dbg !631
  tail call void @llvm.dbg.value(metadata !{i32* %chvind}, i64 0, metadata !123), !dbg !632
  tail call void @llvm.dbg.value(metadata !{double* %chvent}, i64 0, metadata !124), !dbg !633
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !634
  %cmp1 = icmp slt i32 %chv, 0, !dbg !634
  %or.cond = or i1 %cmp, %cmp1, !dbg !634
  %cmp3 = icmp slt i32 %chvsize, 0, !dbg !634
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !634
  %cmp5 = icmp eq i32* %chvind, null, !dbg !634
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !634
  %cmp7 = icmp eq double* %chvent, null, !dbg !634
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !634
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !635, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #5, !dbg !635
  tail call void @exit(i32 -1) #6, !dbg !637
  unreachable, !dbg !637

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !638
  %1 = load i32* %inputMode, align 4, !dbg !638, !tbaa !313
  %cmp8 = icmp eq i32 %1, 1, !dbg !638
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !638

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !639, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #5, !dbg !639
  tail call void @exit(i32 -1) #6, !dbg !641
  unreachable, !dbg !641

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #7, !dbg !642
  ret void, !dbg !643
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !127), !dbg !644
  tail call void @llvm.dbg.value(metadata !{i32 %chv}, i64 0, metadata !128), !dbg !645
  tail call void @llvm.dbg.value(metadata !{i32 %chvsize}, i64 0, metadata !129), !dbg !646
  tail call void @llvm.dbg.value(metadata !{i32* %chvind}, i64 0, metadata !130), !dbg !647
  tail call void @llvm.dbg.value(metadata !{double* %chvent}, i64 0, metadata !131), !dbg !648
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !649
  %cmp1 = icmp slt i32 %chv, 0, !dbg !649
  %or.cond = or i1 %cmp, %cmp1, !dbg !649
  %cmp3 = icmp slt i32 %chvsize, 0, !dbg !649
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !649
  %cmp5 = icmp eq i32* %chvind, null, !dbg !649
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !649
  %cmp7 = icmp eq double* %chvent, null, !dbg !649
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !649
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !649

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !650, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #5, !dbg !650
  tail call void @exit(i32 -1) #6, !dbg !652
  unreachable, !dbg !652

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !653
  %1 = load i32* %inputMode, align 4, !dbg !653, !tbaa !313
  %cmp8 = icmp eq i32 %1, 2, !dbg !653
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !653

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !654, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([96 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #5, !dbg !654
  tail call void @exit(i32 -1) #6, !dbg !656
  unreachable, !dbg !656

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #7, !dbg !657
  ret void, !dbg !658
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !136), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !137), !dbg !660
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !138), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %rowstride}, i64 0, metadata !139), !dbg !662
  tail call void @llvm.dbg.value(metadata !{i32 %colstride}, i64 0, metadata !140), !dbg !663
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !141), !dbg !664
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !142), !dbg !665
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !666
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !666
  %or.cond = or i1 %cmp, %cmp1, !dbg !666
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !666
  %or.cond45 = or i1 %or.cond, %cmp3, !dbg !666
  %cmp5 = icmp slt i32 %rowstride, 1, !dbg !666
  %or.cond46 = or i1 %or.cond45, %cmp5, !dbg !666
  %cmp7 = icmp slt i32 %colstride, 1, !dbg !666
  %or.cond47 = or i1 %or.cond46, %cmp7, !dbg !666
  %cmp9 = icmp eq i32* %rowind, null, !dbg !666
  %or.cond48 = or i1 %or.cond47, %cmp9, !dbg !666
  %cmp11 = icmp eq i32* %colind, null, !dbg !666
  %or.cond49 = or i1 %or.cond48, %cmp11, !dbg !666
  br i1 %or.cond49, label %if.then, label %if.end, !dbg !666

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !667, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #5, !dbg !667
  tail call void @exit(i32 -1) #6, !dbg !669
  unreachable, !dbg !669

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !670
  %1 = load i32* %inputMode, align 4, !dbg !670, !tbaa !313
  %cmp12 = icmp eq i32 %1, 0, !dbg !670
  br i1 %cmp12, label %if.end15, label %if.then13, !dbg !670

if.then13:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !671, !tbaa !308
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([105 x i8]* @.str28, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #5, !dbg !671
  tail call void @exit(i32 -1) #6, !dbg !673
  unreachable, !dbg !673

if.end15:                                         ; preds = %if.end
  %cmp16 = icmp eq i32 %nrow, 0, !dbg !674
  %cmp18 = icmp eq i32 %ncol, 0, !dbg !674
  %or.cond50 = or i1 %cmp16, %cmp18, !dbg !674
  br i1 %or.cond50, label %return, label %if.end20, !dbg !674

if.end20:                                         ; preds = %if.end15
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* null) #7, !dbg !675
  br label %return, !dbg !676

return:                                           ; preds = %if.end15, %if.end20
  ret void, !dbg !676
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* nocapture %rowind, i32* nocapture %colind, double* nocapture %mtxent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !213), !dbg !677
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !214), !dbg !678
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !215), !dbg !679
  tail call void @llvm.dbg.value(metadata !{i32 %rowstride}, i64 0, metadata !216), !dbg !680
  tail call void @llvm.dbg.value(metadata !{i32 %colstride}, i64 0, metadata !217), !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !218), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !219), !dbg !683
  tail call void @llvm.dbg.value(metadata !{double* %mtxent}, i64 0, metadata !220), !dbg !684
  %mul = mul nsw i32 %ncol, %nrow, !dbg !685
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %mul) #7, !dbg !685
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !686
  %0 = load i32* %nent1, align 4, !dbg !686, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !225), !dbg !686
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !687
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !227), !dbg !687
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !688
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !228), !dbg !688
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !689
  %1 = load i32* %coordType, align 4, !dbg !689, !tbaa !313
  switch i32 %1, label %if.end73 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond20.preheader
    i32 3, label %for.cond45.preheader
  ], !dbg !689

for.cond45.preheader:                             ; preds = %entry
  %cmp46295 = icmp sgt i32 %ncol, 0, !dbg !690
  br i1 %cmp46295, label %for.body47.lr.ph, label %if.end73, !dbg !690

for.body47.lr.ph:                                 ; preds = %for.cond45.preheader
  %cmp51290 = icmp sgt i32 %nrow, 0, !dbg !693
  br label %for.body47, !dbg !690

for.cond20.preheader:                             ; preds = %entry
  %cmp21287 = icmp sgt i32 %ncol, 0, !dbg !696
  br i1 %cmp21287, label %for.body22.lr.ph, label %if.end73, !dbg !696

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %cmp26282 = icmp sgt i32 %nrow, 0, !dbg !699
  br label %for.body22, !dbg !696

for.cond.preheader:                               ; preds = %entry
  %cmp3279 = icmp sgt i32 %ncol, 0, !dbg !702
  br i1 %cmp3279, label %for.body.lr.ph, label %if.end73, !dbg !702

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp5275 = icmp sgt i32 %nrow, 0, !dbg !705
  br label %for.body, !dbg !702

for.body:                                         ; preds = %for.inc14, %for.body.lr.ph
  %indvars.iv315 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next316, %for.inc14 ]
  %kk.0280 = phi i32 [ %0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc14 ]
  %arrayidx = getelementptr inbounds i32* %colind, i64 %indvars.iv315, !dbg !708
  %2 = load i32* %arrayidx, align 4, !dbg !708, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !221), !dbg !708
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !222), !dbg !705
  br i1 %cmp5275, label %for.body6.lr.ph, label %for.inc14, !dbg !705

for.body6.lr.ph:                                  ; preds = %for.body
  %3 = sext i32 %kk.0280 to i64, !dbg !705
  br label %for.body6, !dbg !705

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv310 = phi i64 [ %3, %for.body6.lr.ph ], [ %indvars.iv.next311, %for.body6 ], !dbg !705
  %indvars.iv308 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next309, %for.body6 ]
  %arrayidx8 = getelementptr inbounds i32* %rowind, i64 %indvars.iv308, !dbg !709
  %4 = load i32* %arrayidx8, align 4, !dbg !709, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !226), !dbg !709
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %indvars.iv310, !dbg !711
  store i32 %4, i32* %arrayidx10, align 4, !dbg !711, !tbaa !313
  %arrayidx12 = getelementptr inbounds i32* %call2, i64 %indvars.iv310, !dbg !712
  store i32 %2, i32* %arrayidx12, align 4, !dbg !712, !tbaa !313
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !705
  %indvars.iv.next311 = add i64 %indvars.iv310, 1, !dbg !705
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !224), !dbg !705
  %lftr.wideiv312 = trunc i64 %indvars.iv.next309 to i32, !dbg !705
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %nrow, !dbg !705
  br i1 %exitcond313, label %for.cond4.for.inc14_crit_edge, label %for.body6, !dbg !705

for.cond4.for.inc14_crit_edge:                    ; preds = %for.body6
  %5 = add i32 %kk.0280, %nrow, !dbg !705
  br label %for.inc14, !dbg !705

for.inc14:                                        ; preds = %for.cond4.for.inc14_crit_edge, %for.body
  %kk.1.lcssa = phi i32 [ %5, %for.cond4.for.inc14_crit_edge ], [ %kk.0280, %for.body ]
  %indvars.iv.next316 = add i64 %indvars.iv315, 1, !dbg !702
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32, !dbg !702
  %exitcond318 = icmp eq i32 %lftr.wideiv317, %ncol, !dbg !702
  br i1 %exitcond318, label %if.end73, label %for.body, !dbg !702

for.body22:                                       ; preds = %for.inc38, %for.body22.lr.ph
  %indvars.iv326 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next327, %for.inc38 ]
  %kk.2288 = phi i32 [ %0, %for.body22.lr.ph ], [ %kk.3.lcssa, %for.inc38 ]
  %arrayidx24 = getelementptr inbounds i32* %colind, i64 %indvars.iv326, !dbg !713
  %6 = load i32* %arrayidx24, align 4, !dbg !713, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !221), !dbg !713
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !222), !dbg !699
  br i1 %cmp26282, label %for.body27.lr.ph, label %for.inc38, !dbg !699

for.body27.lr.ph:                                 ; preds = %for.body22
  %7 = sext i32 %kk.2288 to i64, !dbg !699
  br label %for.body27, !dbg !699

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv321 = phi i64 [ %7, %for.body27.lr.ph ], [ %indvars.iv.next322, %for.body27 ], !dbg !699
  %indvars.iv319 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next320, %for.body27 ]
  %arrayidx29 = getelementptr inbounds i32* %rowind, i64 %indvars.iv319, !dbg !714
  %8 = load i32* %arrayidx29, align 4, !dbg !714, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !226), !dbg !714
  %arrayidx31 = getelementptr inbounds i32* %call, i64 %indvars.iv321, !dbg !716
  store i32 %6, i32* %arrayidx31, align 4, !dbg !716, !tbaa !313
  %arrayidx33 = getelementptr inbounds i32* %call2, i64 %indvars.iv321, !dbg !717
  store i32 %8, i32* %arrayidx33, align 4, !dbg !717, !tbaa !313
  %indvars.iv.next320 = add i64 %indvars.iv319, 1, !dbg !699
  %indvars.iv.next322 = add i64 %indvars.iv321, 1, !dbg !699
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !224), !dbg !699
  %lftr.wideiv323 = trunc i64 %indvars.iv.next320 to i32, !dbg !699
  %exitcond324 = icmp eq i32 %lftr.wideiv323, %nrow, !dbg !699
  br i1 %exitcond324, label %for.cond25.for.inc38_crit_edge, label %for.body27, !dbg !699

for.cond25.for.inc38_crit_edge:                   ; preds = %for.body27
  %9 = add i32 %kk.2288, %nrow, !dbg !699
  br label %for.inc38, !dbg !699

for.inc38:                                        ; preds = %for.cond25.for.inc38_crit_edge, %for.body22
  %kk.3.lcssa = phi i32 [ %9, %for.cond25.for.inc38_crit_edge ], [ %kk.2288, %for.body22 ]
  %indvars.iv.next327 = add i64 %indvars.iv326, 1, !dbg !696
  %lftr.wideiv328 = trunc i64 %indvars.iv.next327 to i32, !dbg !696
  %exitcond329 = icmp eq i32 %lftr.wideiv328, %ncol, !dbg !696
  br i1 %exitcond329, label %if.end73, label %for.body22, !dbg !696

for.body47:                                       ; preds = %for.inc68, %for.body47.lr.ph
  %indvars.iv336 = phi i64 [ 0, %for.body47.lr.ph ], [ %indvars.iv.next337, %for.inc68 ]
  %kk.4296 = phi i32 [ %0, %for.body47.lr.ph ], [ %kk.5.lcssa, %for.inc68 ]
  %arrayidx49 = getelementptr inbounds i32* %colind, i64 %indvars.iv336, !dbg !718
  %10 = load i32* %arrayidx49, align 4, !dbg !718, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !221), !dbg !718
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !222), !dbg !693
  br i1 %cmp51290, label %for.body52.lr.ph, label %for.inc68, !dbg !693

for.body52.lr.ph:                                 ; preds = %for.body47
  %11 = sext i32 %kk.4296 to i64, !dbg !693
  br label %for.body52, !dbg !693

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv332 = phi i64 [ %11, %for.body52.lr.ph ], [ %indvars.iv.next333, %for.body52 ], !dbg !693
  %indvars.iv330 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next331, %for.body52 ]
  %arrayidx54 = getelementptr inbounds i32* %rowind, i64 %indvars.iv330, !dbg !719
  %12 = load i32* %arrayidx54, align 4, !dbg !719, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !226), !dbg !719
  %cmp55 = icmp sgt i32 %12, %10, !dbg !721
  %arrayidx61 = getelementptr inbounds i32* %call, i64 %indvars.iv332, !dbg !722
  %. = select i1 %cmp55, i32 %10, i32 %12
  store i32 %., i32* %arrayidx61, align 4, !dbg !722, !tbaa !313
  %sub = sub nsw i32 %10, %12, !dbg !724
  %arrayidx63 = getelementptr inbounds i32* %call2, i64 %indvars.iv332, !dbg !724
  store i32 %sub, i32* %arrayidx63, align 4, !dbg !724, !tbaa !313
  %indvars.iv.next331 = add i64 %indvars.iv330, 1, !dbg !693
  %indvars.iv.next333 = add i64 %indvars.iv332, 1, !dbg !693
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !224), !dbg !693
  %lftr.wideiv334 = trunc i64 %indvars.iv.next331 to i32, !dbg !693
  %exitcond335 = icmp eq i32 %lftr.wideiv334, %nrow, !dbg !693
  br i1 %exitcond335, label %for.cond50.for.inc68_crit_edge, label %for.body52, !dbg !693

for.cond50.for.inc68_crit_edge:                   ; preds = %for.body52
  %13 = add i32 %kk.4296, %nrow, !dbg !693
  br label %for.inc68, !dbg !693

for.inc68:                                        ; preds = %for.cond50.for.inc68_crit_edge, %for.body47
  %kk.5.lcssa = phi i32 [ %13, %for.cond50.for.inc68_crit_edge ], [ %kk.4296, %for.body47 ]
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !690
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32, !dbg !690
  %exitcond339 = icmp eq i32 %lftr.wideiv338, %ncol, !dbg !690
  br i1 %exitcond339, label %if.end73, label %for.body47, !dbg !690

if.end73:                                         ; preds = %for.cond45.preheader, %for.inc68, %for.cond20.preheader, %for.inc38, %for.cond.preheader, %for.inc14, %entry
  %add = add nsw i32 %0, %mul, !dbg !725
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #5, !dbg !725
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #5, !dbg !726
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !727
  %14 = load i32* %inputMode, align 4, !dbg !727, !tbaa !313
  %cmp79 = icmp eq i32 %14, 1, !dbg !727
  br i1 %cmp79, label %if.then80, label %if.end105, !dbg !727

if.then80:                                        ; preds = %if.end73
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !728
  %call81 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !728
  tail call void @llvm.dbg.value(metadata !{double* %call81}, i64 0, metadata !229), !dbg !728
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !224), !dbg !729
  %cmp83272 = icmp sgt i32 %ncol, 0, !dbg !729
  br i1 %cmp83272, label %for.cond85.preheader.lr.ph, label %for.end101, !dbg !729

for.cond85.preheader.lr.ph:                       ; preds = %if.then80
  %cmp86268 = icmp sgt i32 %nrow, 0, !dbg !731
  br label %for.cond85.preheader, !dbg !729

for.cond85.preheader:                             ; preds = %for.inc99, %for.cond85.preheader.lr.ph
  %jj.3274 = phi i32 [ 0, %for.cond85.preheader.lr.ph ], [ %inc100, %for.inc99 ]
  %kk.6273 = phi i32 [ %0, %for.cond85.preheader.lr.ph ], [ %kk.7.lcssa, %for.inc99 ]
  br i1 %cmp86268, label %for.body87.lr.ph, label %for.inc99, !dbg !731

for.body87.lr.ph:                                 ; preds = %for.cond85.preheader
  %mul89 = mul nsw i32 %jj.3274, %colstride, !dbg !734
  %15 = sext i32 %kk.6273 to i64, !dbg !731
  br label %for.body87, !dbg !731

for.body87:                                       ; preds = %for.body87, %for.body87.lr.ph
  %indvars.iv303 = phi i64 [ %15, %for.body87.lr.ph ], [ %indvars.iv.next304, %for.body87 ], !dbg !731
  %indvars.iv301 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next302, %for.body87 ]
  %16 = trunc i64 %indvars.iv301 to i32, !dbg !734
  %mul88 = mul nsw i32 %16, %rowstride, !dbg !734
  %add90 = add nsw i32 %mul88, %mul89, !dbg !734
  tail call void @llvm.dbg.value(metadata !{i32 %add90}, i64 0, metadata !231), !dbg !734
  %idxprom91 = sext i32 %add90 to i64, !dbg !736
  %arrayidx92 = getelementptr inbounds double* %mtxent, i64 %idxprom91, !dbg !736
  %17 = load double* %arrayidx92, align 8, !dbg !736, !tbaa !355
  %arrayidx94 = getelementptr inbounds double* %call81, i64 %indvars.iv303, !dbg !736
  store double %17, double* %arrayidx94, align 8, !dbg !736, !tbaa !355
  %indvars.iv.next302 = add i64 %indvars.iv301, 1, !dbg !731
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !731
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !224), !dbg !731
  %lftr.wideiv305 = trunc i64 %indvars.iv.next302 to i32, !dbg !731
  %exitcond306 = icmp eq i32 %lftr.wideiv305, %nrow, !dbg !731
  br i1 %exitcond306, label %for.cond85.for.inc99_crit_edge, label %for.body87, !dbg !731

for.cond85.for.inc99_crit_edge:                   ; preds = %for.body87
  %18 = add i32 %kk.6273, %nrow, !dbg !731
  br label %for.inc99, !dbg !731

for.inc99:                                        ; preds = %for.cond85.for.inc99_crit_edge, %for.cond85.preheader
  %kk.7.lcssa = phi i32 [ %18, %for.cond85.for.inc99_crit_edge ], [ %kk.6273, %for.cond85.preheader ]
  %inc100 = add nsw i32 %jj.3274, 1, !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %inc100}, i64 0, metadata !223), !dbg !729
  %exitcond307 = icmp eq i32 %inc100, %ncol, !dbg !729
  br i1 %exitcond307, label %for.end101, label %for.cond85.preheader, !dbg !729

for.end101:                                       ; preds = %for.inc99, %if.then80
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #5, !dbg !737
  %.pr = load i32* %inputMode, align 4, !dbg !738, !tbaa !313
  br label %if.end105, !dbg !739

if.end105:                                        ; preds = %for.end101, %if.end73
  %19 = phi i32 [ %.pr, %for.end101 ], [ %14, %if.end73 ], !dbg !738
  %cmp107 = icmp eq i32 %19, 2, !dbg !738
  br i1 %cmp107, label %if.then108, label %if.end147, !dbg !738

if.then108:                                       ; preds = %if.end105
  %dvecDV110 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !740
  %call111 = tail call double* @DV_entries(%struct._DV* %dvecDV110) #5, !dbg !740
  tail call void @llvm.dbg.value(metadata !{double* %call111}, i64 0, metadata !232), !dbg !740
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !224), !dbg !741
  %cmp114265 = icmp sgt i32 %ncol, 0, !dbg !741
  br i1 %cmp114265, label %for.cond116.preheader.lr.ph, label %for.end142, !dbg !741

for.cond116.preheader.lr.ph:                      ; preds = %if.then108
  %cmp117262 = icmp sgt i32 %nrow, 0, !dbg !743
  br label %for.cond116.preheader, !dbg !741

for.cond116.preheader:                            ; preds = %for.inc140, %for.cond116.preheader.lr.ph
  %jj.4267 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc141, %for.inc140 ]
  %kk.8266 = phi i32 [ %0, %for.cond116.preheader.lr.ph ], [ %kk.9.lcssa, %for.inc140 ]
  br i1 %cmp117262, label %for.body118.lr.ph, label %for.inc140, !dbg !743

for.body118.lr.ph:                                ; preds = %for.cond116.preheader
  %mul120 = mul nsw i32 %jj.4267, %colstride, !dbg !746
  %20 = sext i32 %kk.8266 to i64, !dbg !743
  br label %for.body118, !dbg !743

for.body118:                                      ; preds = %for.body118, %for.body118.lr.ph
  %indvars.iv298 = phi i64 [ %20, %for.body118.lr.ph ], [ %indvars.iv.next299, %for.body118 ], !dbg !743
  %indvars.iv = phi i64 [ 0, %for.body118.lr.ph ], [ %indvars.iv.next, %for.body118 ]
  %21 = trunc i64 %indvars.iv to i32, !dbg !746
  %mul119 = mul nsw i32 %21, %rowstride, !dbg !746
  %add121 = add nsw i32 %mul119, %mul120, !dbg !746
  tail call void @llvm.dbg.value(metadata !{i32 %add121}, i64 0, metadata !234), !dbg !746
  %mul122 = shl nsw i32 %add121, 1, !dbg !748
  %idxprom123 = sext i32 %mul122 to i64, !dbg !748
  %arrayidx124 = getelementptr inbounds double* %mtxent, i64 %idxprom123, !dbg !748
  %22 = load double* %arrayidx124, align 8, !dbg !748, !tbaa !355
  %23 = trunc i64 %indvars.iv298 to i32, !dbg !748
  %mul125 = shl nsw i32 %23, 1, !dbg !748
  %idxprom126 = sext i32 %mul125 to i64, !dbg !748
  %arrayidx127 = getelementptr inbounds double* %call111, i64 %idxprom126, !dbg !748
  store double %22, double* %arrayidx127, align 8, !dbg !748, !tbaa !355
  %add129260 = or i32 %mul122, 1, !dbg !749
  %idxprom130 = sext i32 %add129260 to i64, !dbg !749
  %arrayidx131 = getelementptr inbounds double* %mtxent, i64 %idxprom130, !dbg !749
  %24 = load double* %arrayidx131, align 8, !dbg !749, !tbaa !355
  %add133261 = or i32 %mul125, 1, !dbg !749
  %idxprom134 = sext i32 %add133261 to i64, !dbg !749
  %arrayidx135 = getelementptr inbounds double* %call111, i64 %idxprom134, !dbg !749
  store double %24, double* %arrayidx135, align 8, !dbg !749, !tbaa !355
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !743
  %indvars.iv.next299 = add i64 %indvars.iv298, 1, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !224), !dbg !743
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !743
  %exitcond = icmp eq i32 %lftr.wideiv, %nrow, !dbg !743
  br i1 %exitcond, label %for.cond116.for.inc140_crit_edge, label %for.body118, !dbg !743

for.cond116.for.inc140_crit_edge:                 ; preds = %for.body118
  %25 = add i32 %kk.8266, %nrow, !dbg !743
  br label %for.inc140, !dbg !743

for.inc140:                                       ; preds = %for.cond116.for.inc140_crit_edge, %for.cond116.preheader
  %kk.9.lcssa = phi i32 [ %25, %for.cond116.for.inc140_crit_edge ], [ %kk.8266, %for.cond116.preheader ]
  %inc141 = add nsw i32 %jj.4267, 1, !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %inc141}, i64 0, metadata !223), !dbg !741
  %exitcond300 = icmp eq i32 %inc141, %ncol, !dbg !741
  br i1 %exitcond300, label %for.end142, label %for.cond116.preheader, !dbg !741

for.end142:                                       ; preds = %for.inc140, %if.then108
  %mul146 = shl nsw i32 %add, 1, !dbg !750
  tail call void @DV_setSize(%struct._DV* %dvecDV110, i32 %mul146) #5, !dbg !750
  br label %if.end147, !dbg !751

if.end147:                                        ; preds = %for.end142, %if.end105
  %26 = load i32* %nent1, align 4, !dbg !752, !tbaa !313
  %add150 = add nsw i32 %26, %mul, !dbg !752
  store i32 %add150, i32* %nent1, align 4, !dbg !752, !tbaa !313
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !753
  store i32 1, i32* %storageMode, align 4, !dbg !753, !tbaa !313
  ret void, !dbg !754
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !147), !dbg !755
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !148), !dbg !756
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !149), !dbg !757
  tail call void @llvm.dbg.value(metadata !{i32 %rowstride}, i64 0, metadata !150), !dbg !758
  tail call void @llvm.dbg.value(metadata !{i32 %colstride}, i64 0, metadata !151), !dbg !759
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !152), !dbg !760
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !153), !dbg !761
  tail call void @llvm.dbg.value(metadata !{double* %mtxent}, i64 0, metadata !154), !dbg !762
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !763
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !763
  %or.cond = or i1 %cmp, %cmp1, !dbg !763
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !763
  %or.cond50 = or i1 %or.cond, %cmp3, !dbg !763
  %cmp5 = icmp slt i32 %rowstride, 1, !dbg !763
  %or.cond51 = or i1 %or.cond50, %cmp5, !dbg !763
  %cmp7 = icmp slt i32 %colstride, 1, !dbg !763
  %or.cond52 = or i1 %or.cond51, %cmp7, !dbg !763
  %cmp9 = icmp eq i32* %rowind, null, !dbg !763
  %or.cond53 = or i1 %or.cond52, %cmp9, !dbg !763
  %cmp11 = icmp eq i32* %colind, null, !dbg !763
  %or.cond54 = or i1 %or.cond53, %cmp11, !dbg !763
  %cmp13 = icmp eq double* %mtxent, null, !dbg !763
  %or.cond55 = or i1 %or.cond54, %cmp13, !dbg !763
  br i1 %or.cond55, label %if.then, label %if.end, !dbg !763

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !764, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([77 x i8]* @.str29, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #5, !dbg !764
  tail call void @exit(i32 -1) #6, !dbg !766
  unreachable, !dbg !766

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !767
  %1 = load i32* %inputMode, align 4, !dbg !767, !tbaa !313
  %cmp14 = icmp eq i32 %1, 1, !dbg !767
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !767

if.then15:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !768, !tbaa !308
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([98 x i8]* @.str30, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #5, !dbg !768
  tail call void @exit(i32 -1) #6, !dbg !770
  unreachable, !dbg !770

if.end17:                                         ; preds = %if.end
  %cmp18 = icmp eq i32 %nrow, 0, !dbg !771
  %cmp20 = icmp eq i32 %ncol, 0, !dbg !771
  %or.cond56 = or i1 %cmp18, %cmp20, !dbg !771
  br i1 %or.cond56, label %return, label %if.end22, !dbg !771

if.end22:                                         ; preds = %if.end17
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #7, !dbg !772
  br label %return, !dbg !773

return:                                           ; preds = %if.end17, %if.end22
  ret void, !dbg !773
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !157), !dbg !774
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !158), !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !159), !dbg !776
  tail call void @llvm.dbg.value(metadata !{i32 %rowstride}, i64 0, metadata !160), !dbg !777
  tail call void @llvm.dbg.value(metadata !{i32 %colstride}, i64 0, metadata !161), !dbg !778
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !162), !dbg !779
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !163), !dbg !780
  tail call void @llvm.dbg.value(metadata !{double* %mtxent}, i64 0, metadata !164), !dbg !781
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !782
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !782
  %or.cond = or i1 %cmp, %cmp1, !dbg !782
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !782
  %or.cond50 = or i1 %or.cond, %cmp3, !dbg !782
  %cmp5 = icmp slt i32 %rowstride, 1, !dbg !782
  %or.cond51 = or i1 %or.cond50, %cmp5, !dbg !782
  %cmp7 = icmp slt i32 %colstride, 1, !dbg !782
  %or.cond52 = or i1 %or.cond51, %cmp7, !dbg !782
  %cmp9 = icmp eq i32* %rowind, null, !dbg !782
  %or.cond53 = or i1 %or.cond52, %cmp9, !dbg !782
  %cmp11 = icmp eq i32* %colind, null, !dbg !782
  %or.cond54 = or i1 %or.cond53, %cmp11, !dbg !782
  %cmp13 = icmp eq double* %mtxent, null, !dbg !782
  %or.cond55 = or i1 %or.cond54, %cmp13, !dbg !782
  br i1 %or.cond55, label %if.then, label %if.end, !dbg !782

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !783, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str31, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #5, !dbg !783
  tail call void @exit(i32 -1) #6, !dbg !785
  unreachable, !dbg !785

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !786
  %1 = load i32* %inputMode, align 4, !dbg !786, !tbaa !313
  %cmp14 = icmp eq i32 %1, 2, !dbg !786
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !786

if.then15:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !787, !tbaa !308
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([104 x i8]* @.str32, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #5, !dbg !787
  tail call void @exit(i32 -1) #6, !dbg !789
  unreachable, !dbg !789

if.end17:                                         ; preds = %if.end
  %cmp18 = icmp eq i32 %nrow, 0, !dbg !790
  %cmp20 = icmp eq i32 %ncol, 0, !dbg !790
  %or.cond56 = or i1 %cmp18, %cmp20, !dbg !790
  br i1 %or.cond56, label %return, label %if.end22, !dbg !790

if.end22:                                         ; preds = %if.end17
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #7, !dbg !791
  br label %return, !dbg !792

return:                                           ; preds = %if.end17, %if.end22
  ret void, !dbg !792
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !169), !dbg !793
  tail call void @llvm.dbg.value(metadata !{i32 %ntriples}, i64 0, metadata !170), !dbg !794
  tail call void @llvm.dbg.value(metadata !{i32* %rowids}, i64 0, metadata !171), !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32* %colids}, i64 0, metadata !172), !dbg !796
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !797
  %cmp1 = icmp slt i32 %ntriples, 0, !dbg !797
  %or.cond = or i1 %cmp, %cmp1, !dbg !797
  %cmp3 = icmp eq i32* %rowids, null, !dbg !797
  %or.cond23 = or i1 %or.cond, %cmp3, !dbg !797
  %cmp5 = icmp eq i32* %colids, null, !dbg !797
  %or.cond24 = or i1 %or.cond23, %cmp5, !dbg !797
  br i1 %or.cond24, label %if.then, label %if.end, !dbg !797

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !798, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str33, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #5, !dbg !798
  tail call void @exit(i32 -1) #6, !dbg !800
  unreachable, !dbg !800

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !801
  %1 = load i32* %inputMode, align 4, !dbg !801, !tbaa !313
  %cmp6 = icmp eq i32 %1, 0, !dbg !801
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !801

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !802, !tbaa !308
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str34, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #5, !dbg !802
  tail call void @exit(i32 -1) #6, !dbg !804
  unreachable, !dbg !804

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* null) #7, !dbg !805
  ret void, !dbg !806
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !191), !dbg !807
  tail call void @llvm.dbg.value(metadata !{i32 %ntriples}, i64 0, metadata !192), !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32* %rowids}, i64 0, metadata !193), !dbg !809
  tail call void @llvm.dbg.value(metadata !{i32* %colids}, i64 0, metadata !194), !dbg !810
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !195), !dbg !811
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %ntriples) #7, !dbg !812
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !813
  %0 = load i32* %nent1, align 4, !dbg !813, !tbaa !313
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !196), !dbg !813
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !814
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !814
  tail call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !197), !dbg !814
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !815
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !198), !dbg !815
  %idx.ext = sext i32 %0 to i64, !dbg !816
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext, !dbg !816
  tail call void @IVcopy(i32 %ntriples, i32* %add.ptr, i32* %rowids) #5, !dbg !816
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext, !dbg !817
  tail call void @IVcopy(i32 %ntriples, i32* %add.ptr4, i32* %colids) #5, !dbg !817
  %add = add nsw i32 %0, %ntriples, !dbg !818
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #5, !dbg !818
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #5, !dbg !819
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !820
  %1 = load i32* %inputMode, align 4, !dbg !820, !tbaa !313
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then15
  ], !dbg !820

if.then:                                          ; preds = %entry
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !821
  %call8 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !821
  tail call void @llvm.dbg.value(metadata !{double* %call8}, i64 0, metadata !199), !dbg !821
  %add.ptr10 = getelementptr inbounds double* %call8, i64 %idx.ext, !dbg !822
  tail call void @DVcopy(i32 %ntriples, double* %add.ptr10, double* %entries) #5, !dbg !822
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #5, !dbg !823
  br label %if.end24, !dbg !824

if.then15:                                        ; preds = %entry
  %dvecDV17 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !825
  %call18 = tail call double* @DV_entries(%struct._DV* %dvecDV17) #5, !dbg !825
  tail call void @llvm.dbg.value(metadata !{double* %call18}, i64 0, metadata !201), !dbg !825
  %mul = shl nsw i32 %0, 1, !dbg !826
  %idx.ext19 = sext i32 %mul to i64, !dbg !826
  %add.ptr20 = getelementptr inbounds double* %call18, i64 %idx.ext19, !dbg !826
  tail call void @ZVcopy(i32 %ntriples, double* %add.ptr20, double* %entries) #5, !dbg !826
  %mul23 = shl nsw i32 %add, 1, !dbg !827
  tail call void @DV_setSize(%struct._DV* %dvecDV17, i32 %mul23) #5, !dbg !827
  br label %if.end24, !dbg !828

if.end24:                                         ; preds = %entry, %if.then15, %if.then
  %2 = load i32* %nent1, align 4, !dbg !829, !tbaa !313
  %add26 = add nsw i32 %2, %ntriples, !dbg !829
  store i32 %add26, i32* %nent1, align 4, !dbg !829, !tbaa !313
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !830
  store i32 1, i32* %storageMode, align 4, !dbg !830, !tbaa !313
  ret void, !dbg !831
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !177), !dbg !832
  tail call void @llvm.dbg.value(metadata !{i32 %ntriples}, i64 0, metadata !178), !dbg !833
  tail call void @llvm.dbg.value(metadata !{i32* %rowids}, i64 0, metadata !179), !dbg !834
  tail call void @llvm.dbg.value(metadata !{i32* %colids}, i64 0, metadata !180), !dbg !835
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !181), !dbg !836
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !837
  %cmp1 = icmp slt i32 %ntriples, 0, !dbg !837
  %or.cond = or i1 %cmp, %cmp1, !dbg !837
  %cmp3 = icmp eq i32* %rowids, null, !dbg !837
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !837
  %cmp5 = icmp eq i32* %colids, null, !dbg !837
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !837
  %cmp7 = icmp eq double* %entries, null, !dbg !837
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !837
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !837

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !838, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str35, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #5, !dbg !838
  tail call void @exit(i32 -1) #6, !dbg !840
  unreachable, !dbg !840

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !841
  %1 = load i32* %inputMode, align 4, !dbg !841, !tbaa !313
  %cmp8 = icmp eq i32 %1, 1, !dbg !841
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !841

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !842, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([96 x i8]* @.str36, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #5, !dbg !842
  tail call void @exit(i32 -1) #6, !dbg !844
  unreachable, !dbg !844

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #7, !dbg !845
  ret void, !dbg !846
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !184), !dbg !847
  tail call void @llvm.dbg.value(metadata !{i32 %ntriples}, i64 0, metadata !185), !dbg !848
  tail call void @llvm.dbg.value(metadata !{i32* %rowids}, i64 0, metadata !186), !dbg !849
  tail call void @llvm.dbg.value(metadata !{i32* %colids}, i64 0, metadata !187), !dbg !850
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !188), !dbg !851
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !852
  %cmp1 = icmp slt i32 %ntriples, 0, !dbg !852
  %or.cond = or i1 %cmp, %cmp1, !dbg !852
  %cmp3 = icmp eq i32* %rowids, null, !dbg !852
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !852
  %cmp5 = icmp eq i32* %colids, null, !dbg !852
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !852
  %cmp7 = icmp eq double* %entries, null, !dbg !852
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !852
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !852

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !853, !tbaa !308
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str37, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #5, !dbg !853
  tail call void @exit(i32 -1) #6, !dbg !855
  unreachable, !dbg !855

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !856
  %1 = load i32* %inputMode, align 4, !dbg !856, !tbaa !313
  %cmp8 = icmp eq i32 %1, 2, !dbg !856
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !856

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !857, !tbaa !308
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str38, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #5, !dbg !857
  tail call void @exit(i32 -1) #6, !dbg !859
  unreachable, !dbg !859

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #7, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %nnewent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !207), !dbg !862
  tail call void @llvm.dbg.value(metadata !{i32 %nnewent}, i64 0, metadata !208), !dbg !863
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !864
  %0 = load i32* %nent, align 4, !dbg !864, !tbaa !313
  %add = add nsw i32 %0, %nnewent, !dbg !864
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !864
  %1 = load i32* %maxnent, align 4, !dbg !864, !tbaa !313
  %cmp = icmp sgt i32 %add, %1, !dbg !864
  br i1 %cmp, label %if.then, label %if.end, !dbg !864

if.then:                                          ; preds = %entry
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #5, !dbg !865
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !867
  store i32 2, i32* %storageMode, align 4, !dbg !867, !tbaa !313
  %.pre = load i32* %nent, align 4, !dbg !868, !tbaa !313
  %.pre31 = load i32* %maxnent, align 4, !dbg !868, !tbaa !313
  br label %if.end, !dbg !869

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre31, %if.then ], [ %1, %entry ]
  %3 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %add2 = add nsw i32 %3, %nnewent, !dbg !868
  %cmp4 = icmp sgt i32 %add2, %2, !dbg !868
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !868

if.then5:                                         ; preds = %if.end
  %conv = sitofp i32 %2 to double, !dbg !870
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !870
  %4 = load double* %resizeMultiple, align 8, !dbg !870, !tbaa !355
  %mul = fmul double %conv, %4, !dbg !870
  %conv7 = fptosi double %mul to i32, !dbg !870
  tail call void @llvm.dbg.value(metadata !{i32 %conv7}, i64 0, metadata !209), !dbg !870
  %cmp10 = icmp slt i32 %conv7, %add2, !dbg !871
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !209), !dbg !872
  %add2.conv7 = select i1 %cmp10, i32 %add2, i32 %conv7, !dbg !871
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %add2.conv7) #5, !dbg !874
  br label %if.end16, !dbg !875

if.end16:                                         ; preds = %if.then5, %if.end
  ret void, !dbg !876
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @ZVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @InpMtx_sortAndCompress(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !51, metadata !59, metadata !68, metadata !76, metadata !85, metadata !92, metadata !98, metadata !105, metadata !112, metadata !118, metadata !125, metadata !132, metadata !143, metadata !155, metadata !165, metadata !173, metadata !182, metadata !189, metadata !203, metadata !211, metadata !235, metadata !254, metadata !271, metadata !288}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputEntry", metadata !"InpMtx_inputEntry", metadata !"", i32 106, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32)* @InpMtx_inputEntry, null, null, metadata !47, i32 110} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 110] [InpMtx_inputEntry]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777323, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 107]
!49 = metadata !{i32 786689, metadata !4, metadata !"row", metadata !5, i32 33554540, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 108]
!50 = metadata !{i32 786689, metadata !4, metadata !"col", metadata !5, i32 50331757, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 109]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealEntry", metadata !"InpMtx_inputRealEntry", metadata !"", i32 151, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, double)* @InpMtx_inputRealEntry, null, null, metadata !54, i32 156} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 156] [InpMtx_inputRealEntry]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !20}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58}
!55 = metadata !{i32 786689, metadata !51, metadata !"inpmtx", metadata !5, i32 16777368, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 152]
!56 = metadata !{i32 786689, metadata !51, metadata !"row", metadata !5, i32 33554585, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 153]
!57 = metadata !{i32 786689, metadata !51, metadata !"col", metadata !5, i32 50331802, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 154]
!58 = metadata !{i32 786689, metadata !51, metadata !"value", metadata !5, i32 67109019, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 155]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexEntry", metadata !"InpMtx_inputComplexEntry", metadata !"", i32 197, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, double, double)* @InpMtx_inputComplexEntry, null, null, metadata !62, i32 203} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 203] [InpMtx_inputComplexEntry]
!60 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !20, metadata !20}
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!63 = metadata !{i32 786689, metadata !59, metadata !"inpmtx", metadata !5, i32 16777414, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 198]
!64 = metadata !{i32 786689, metadata !59, metadata !"row", metadata !5, i32 33554631, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 199]
!65 = metadata !{i32 786689, metadata !59, metadata !"col", metadata !5, i32 50331848, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 200]
!66 = metadata !{i32 786689, metadata !59, metadata !"real", metadata !5, i32 67109065, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 201]
!67 = metadata !{i32 786689, metadata !59, metadata !"imag", metadata !5, i32 83886282, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 202]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRow", metadata !"InpMtx_inputRow", metadata !"", i32 301, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*)* @InpMtx_inputRow, null, null, metadata !71, i32 306} ; [ DW_TAG_subprogram ] [line 301] [def] [scope 306] [InpMtx_inputRow]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !30}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75}
!72 = metadata !{i32 786689, metadata !68, metadata !"inpmtx", metadata !5, i32 16777518, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 302]
!73 = metadata !{i32 786689, metadata !68, metadata !"row", metadata !5, i32 33554735, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 303]
!74 = metadata !{i32 786689, metadata !68, metadata !"rowsize", metadata !5, i32 50331952, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowsize] [line 304]
!75 = metadata !{i32 786689, metadata !68, metadata !"rowind", metadata !5, i32 67109169, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 305]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealRow", metadata !"InpMtx_inputRealRow", metadata !"", i32 338, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputRealRow, null, null, metadata !79, i32 344} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 344] [InpMtx_inputRealRow]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !30, metadata !41}
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!80 = metadata !{i32 786689, metadata !76, metadata !"inpmtx", metadata !5, i32 16777555, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 339]
!81 = metadata !{i32 786689, metadata !76, metadata !"row", metadata !5, i32 33554772, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 340]
!82 = metadata !{i32 786689, metadata !76, metadata !"rowsize", metadata !5, i32 50331989, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowsize] [line 341]
!83 = metadata !{i32 786689, metadata !76, metadata !"rowind", metadata !5, i32 67109206, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 342]
!84 = metadata !{i32 786689, metadata !76, metadata !"rowent", metadata !5, i32 83886423, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowent] [line 343]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexRow", metadata !"InpMtx_inputComplexRow", metadata !"", i32 377, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputComplexRow, null, null, metadata !86, i32 383} ; [ DW_TAG_subprogram ] [line 377] [def] [scope 383] [InpMtx_inputComplexRow]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!87 = metadata !{i32 786689, metadata !85, metadata !"inpmtx", metadata !5, i32 16777594, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 378]
!88 = metadata !{i32 786689, metadata !85, metadata !"row", metadata !5, i32 33554811, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 379]
!89 = metadata !{i32 786689, metadata !85, metadata !"rowsize", metadata !5, i32 50332028, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowsize] [line 380]
!90 = metadata !{i32 786689, metadata !85, metadata !"rowind", metadata !5, i32 67109245, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 381]
!91 = metadata !{i32 786689, metadata !85, metadata !"rowent", metadata !5, i32 83886462, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowent] [line 382]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputColumn", metadata !"InpMtx_inputColumn", metadata !"", i32 468, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*)* @InpMtx_inputColumn, null, null, metadata !93, i32 473} ; [ DW_TAG_subprogram ] [line 468] [def] [scope 473] [InpMtx_inputColumn]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97}
!94 = metadata !{i32 786689, metadata !92, metadata !"inpmtx", metadata !5, i32 16777685, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 469]
!95 = metadata !{i32 786689, metadata !92, metadata !"col", metadata !5, i32 33554902, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 470]
!96 = metadata !{i32 786689, metadata !92, metadata !"colsize", metadata !5, i32 50332119, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colsize] [line 471]
!97 = metadata !{i32 786689, metadata !92, metadata !"colind", metadata !5, i32 67109336, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 472]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealColumn", metadata !"InpMtx_inputRealColumn", metadata !"", i32 505, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputRealColumn, null, null, metadata !99, i32 511} ; [ DW_TAG_subprogram ] [line 505] [def] [scope 511] [InpMtx_inputRealColumn]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!100 = metadata !{i32 786689, metadata !98, metadata !"inpmtx", metadata !5, i32 16777722, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 506]
!101 = metadata !{i32 786689, metadata !98, metadata !"col", metadata !5, i32 33554939, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 507]
!102 = metadata !{i32 786689, metadata !98, metadata !"colsize", metadata !5, i32 50332156, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colsize] [line 508]
!103 = metadata !{i32 786689, metadata !98, metadata !"colind", metadata !5, i32 67109373, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 509]
!104 = metadata !{i32 786689, metadata !98, metadata !"colent", metadata !5, i32 83886590, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colent] [line 510]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexColumn", metadata !"InpMtx_inputComplexColumn", metadata !"", i32 544, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputComplexColumn, null, null, metadata !106, i32 550} ; [ DW_TAG_subprogram ] [line 544] [def] [scope 550] [InpMtx_inputComplexColumn]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!107 = metadata !{i32 786689, metadata !105, metadata !"inpmtx", metadata !5, i32 16777761, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 545]
!108 = metadata !{i32 786689, metadata !105, metadata !"col", metadata !5, i32 33554978, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 546]
!109 = metadata !{i32 786689, metadata !105, metadata !"colsize", metadata !5, i32 50332195, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colsize] [line 547]
!110 = metadata !{i32 786689, metadata !105, metadata !"colind", metadata !5, i32 67109412, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 548]
!111 = metadata !{i32 786689, metadata !105, metadata !"colent", metadata !5, i32 83886629, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colent] [line 549]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputChevron", metadata !"InpMtx_inputChevron", metadata !"", i32 650, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*)* @InpMtx_inputChevron, null, null, metadata !113, i32 655} ; [ DW_TAG_subprogram ] [line 650] [def] [scope 655] [InpMtx_inputChevron]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117}
!114 = metadata !{i32 786689, metadata !112, metadata !"inpmtx", metadata !5, i32 16777867, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 651]
!115 = metadata !{i32 786689, metadata !112, metadata !"chv", metadata !5, i32 33555084, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 652]
!116 = metadata !{i32 786689, metadata !112, metadata !"chvsize", metadata !5, i32 50332301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvsize] [line 653]
!117 = metadata !{i32 786689, metadata !112, metadata !"chvind", metadata !5, i32 67109518, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvind] [line 654]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealChevron", metadata !"InpMtx_inputRealChevron", metadata !"", i32 687, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputRealChevron, null, null, metadata !119, i32 693} ; [ DW_TAG_subprogram ] [line 687] [def] [scope 693] [InpMtx_inputRealChevron]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!120 = metadata !{i32 786689, metadata !118, metadata !"inpmtx", metadata !5, i32 16777904, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 688]
!121 = metadata !{i32 786689, metadata !118, metadata !"chv", metadata !5, i32 33555121, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 689]
!122 = metadata !{i32 786689, metadata !118, metadata !"chvsize", metadata !5, i32 50332338, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvsize] [line 690]
!123 = metadata !{i32 786689, metadata !118, metadata !"chvind", metadata !5, i32 67109555, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvind] [line 691]
!124 = metadata !{i32 786689, metadata !118, metadata !"chvent", metadata !5, i32 83886772, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvent] [line 692]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexChevron", metadata !"InpMtx_inputComplexChevron", metadata !"", i32 726, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @InpMtx_inputComplexChevron, null, null, metadata !126, i32 732} ; [ DW_TAG_subprogram ] [line 726] [def] [scope 732] [InpMtx_inputComplexChevron]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!127 = metadata !{i32 786689, metadata !125, metadata !"inpmtx", metadata !5, i32 16777943, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 727]
!128 = metadata !{i32 786689, metadata !125, metadata !"chv", metadata !5, i32 33555160, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 728]
!129 = metadata !{i32 786689, metadata !125, metadata !"chvsize", metadata !5, i32 50332377, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvsize] [line 729]
!130 = metadata !{i32 786689, metadata !125, metadata !"chvind", metadata !5, i32 67109594, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvind] [line 730]
!131 = metadata !{i32 786689, metadata !125, metadata !"chvent", metadata !5, i32 83886811, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvent] [line 731]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputMatrix", metadata !"InpMtx_inputMatrix", metadata !"", i32 852, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32, i32, i32*, i32*)* @InpMtx_inputMatrix, null, null, metadata !135, i32 860} ; [ DW_TAG_subprogram ] [line 852] [def] [scope 860] [InpMtx_inputMatrix]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !30, metadata !30}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!136 = metadata !{i32 786689, metadata !132, metadata !"inpmtx", metadata !5, i32 16778069, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 853]
!137 = metadata !{i32 786689, metadata !132, metadata !"nrow", metadata !5, i32 33555286, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 854]
!138 = metadata !{i32 786689, metadata !132, metadata !"ncol", metadata !5, i32 50332503, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 855]
!139 = metadata !{i32 786689, metadata !132, metadata !"rowstride", metadata !5, i32 67109720, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowstride] [line 856]
!140 = metadata !{i32 786689, metadata !132, metadata !"colstride", metadata !5, i32 83886937, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colstride] [line 857]
!141 = metadata !{i32 786689, metadata !132, metadata !"rowind", metadata !5, i32 100664154, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 858]
!142 = metadata !{i32 786689, metadata !132, metadata !"colind", metadata !5, i32 117441371, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 859]
!143 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealMatrix", metadata !"InpMtx_inputRealMatrix", metadata !"", i32 899, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32, i32, i32*, i32*, double*)* @InpMtx_inputRealMatrix, null, null, metadata !146, i32 908} ; [ DW_TAG_subprogram ] [line 899] [def] [scope 908] [InpMtx_inputRealMatrix]
!144 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !30, metadata !30, metadata !41}
!146 = metadata !{metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!147 = metadata !{i32 786689, metadata !143, metadata !"inpmtx", metadata !5, i32 16778116, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 900]
!148 = metadata !{i32 786689, metadata !143, metadata !"nrow", metadata !5, i32 33555333, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 901]
!149 = metadata !{i32 786689, metadata !143, metadata !"ncol", metadata !5, i32 50332550, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 902]
!150 = metadata !{i32 786689, metadata !143, metadata !"rowstride", metadata !5, i32 67109767, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowstride] [line 903]
!151 = metadata !{i32 786689, metadata !143, metadata !"colstride", metadata !5, i32 83886984, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colstride] [line 904]
!152 = metadata !{i32 786689, metadata !143, metadata !"rowind", metadata !5, i32 100664201, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 905]
!153 = metadata !{i32 786689, metadata !143, metadata !"colind", metadata !5, i32 117441418, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 906]
!154 = metadata !{i32 786689, metadata !143, metadata !"mtxent", metadata !5, i32 134218635, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxent] [line 907]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexMatrix", metadata !"InpMtx_inputComplexMatrix", metadata !"", i32 948, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32, i32, i32*, i32*, double*)* @InpMtx_inputComplexMatrix, null, null, metadata !156, i32 957} ; [ DW_TAG_subprogram ] [line 948] [def] [scope 957] [InpMtx_inputComplexMatrix]
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164}
!157 = metadata !{i32 786689, metadata !155, metadata !"inpmtx", metadata !5, i32 16778165, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 949]
!158 = metadata !{i32 786689, metadata !155, metadata !"nrow", metadata !5, i32 33555382, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 950]
!159 = metadata !{i32 786689, metadata !155, metadata !"ncol", metadata !5, i32 50332599, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 951]
!160 = metadata !{i32 786689, metadata !155, metadata !"rowstride", metadata !5, i32 67109816, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowstride] [line 952]
!161 = metadata !{i32 786689, metadata !155, metadata !"colstride", metadata !5, i32 83887033, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colstride] [line 953]
!162 = metadata !{i32 786689, metadata !155, metadata !"rowind", metadata !5, i32 100664250, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 954]
!163 = metadata !{i32 786689, metadata !155, metadata !"colind", metadata !5, i32 117441467, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 955]
!164 = metadata !{i32 786689, metadata !155, metadata !"mtxent", metadata !5, i32 134218684, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxent] [line 956]
!165 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputTriples", metadata !"InpMtx_inputTriples", metadata !"", i32 1038, metadata !166, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32*)* @InpMtx_inputTriples, null, null, metadata !168, i32 1043} ; [ DW_TAG_subprogram ] [line 1038] [def] [scope 1043] [InpMtx_inputTriples]
!166 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!167 = metadata !{null, metadata !8, metadata !14, metadata !30, metadata !30}
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172}
!169 = metadata !{i32 786689, metadata !165, metadata !"inpmtx", metadata !5, i32 16778255, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 1039]
!170 = metadata !{i32 786689, metadata !165, metadata !"ntriples", metadata !5, i32 33555472, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntriples] [line 1040]
!171 = metadata !{i32 786689, metadata !165, metadata !"rowids", metadata !5, i32 50332689, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowids] [line 1041]
!172 = metadata !{i32 786689, metadata !165, metadata !"colids", metadata !5, i32 67109906, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colids] [line 1042]
!173 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputRealTriples", metadata !"InpMtx_inputRealTriples", metadata !"", i32 1077, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32*, double*)* @InpMtx_inputRealTriples, null, null, metadata !176, i32 1083} ; [ DW_TAG_subprogram ] [line 1077] [def] [scope 1083] [InpMtx_inputRealTriples]
!174 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{null, metadata !8, metadata !14, metadata !30, metadata !30, metadata !41}
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!177 = metadata !{i32 786689, metadata !173, metadata !"inpmtx", metadata !5, i32 16778294, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 1078]
!178 = metadata !{i32 786689, metadata !173, metadata !"ntriples", metadata !5, i32 33555511, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntriples] [line 1079]
!179 = metadata !{i32 786689, metadata !173, metadata !"rowids", metadata !5, i32 50332728, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowids] [line 1080]
!180 = metadata !{i32 786689, metadata !173, metadata !"colids", metadata !5, i32 67109945, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colids] [line 1081]
!181 = metadata !{i32 786689, metadata !173, metadata !"entries", metadata !5, i32 83887162, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 1082]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputComplexTriples", metadata !"InpMtx_inputComplexTriples", metadata !"", i32 1117, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32*, double*)* @InpMtx_inputComplexTriples, null, null, metadata !183, i32 1123} ; [ DW_TAG_subprogram ] [line 1117] [def] [scope 1123] [InpMtx_inputComplexTriples]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!184 = metadata !{i32 786689, metadata !182, metadata !"inpmtx", metadata !5, i32 16778334, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 1118]
!185 = metadata !{i32 786689, metadata !182, metadata !"ntriples", metadata !5, i32 33555551, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntriples] [line 1119]
!186 = metadata !{i32 786689, metadata !182, metadata !"rowids", metadata !5, i32 50332768, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowids] [line 1120]
!187 = metadata !{i32 786689, metadata !182, metadata !"colids", metadata !5, i32 67109985, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colids] [line 1121]
!188 = metadata !{i32 786689, metadata !182, metadata !"entries", metadata !5, i32 83887202, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 1122]
!189 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputTriples", metadata !"inputTriples", metadata !"", i32 997, metadata !174, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32*, double*)* @inputTriples, null, null, metadata !190, i32 1003} ; [ DW_TAG_subprogram ] [line 997] [local] [def] [scope 1003] [inputTriples]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !201}
!191 = metadata !{i32 786689, metadata !189, metadata !"inpmtx", metadata !5, i32 16778214, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 998]
!192 = metadata !{i32 786689, metadata !189, metadata !"ntriples", metadata !5, i32 33555431, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntriples] [line 999]
!193 = metadata !{i32 786689, metadata !189, metadata !"rowids", metadata !5, i32 50332648, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowids] [line 1000]
!194 = metadata !{i32 786689, metadata !189, metadata !"colids", metadata !5, i32 67109865, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colids] [line 1001]
!195 = metadata !{i32 786689, metadata !189, metadata !"entries", metadata !5, i32 83887082, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 1002]
!196 = metadata !{i32 786688, metadata !189, metadata !"nent", metadata !5, i32 1004, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1004]
!197 = metadata !{i32 786688, metadata !189, metadata !"ivec1", metadata !5, i32 1005, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 1005]
!198 = metadata !{i32 786688, metadata !189, metadata !"ivec2", metadata !5, i32 1005, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 1005]
!199 = metadata !{i32 786688, metadata !200, metadata !"dvec", metadata !5, i32 1016, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 1016]
!200 = metadata !{i32 786443, metadata !1, metadata !189, i32 1015, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!201 = metadata !{i32 786688, metadata !202, metadata !"dvec", metadata !5, i32 1020, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 1020]
!202 = metadata !{i32 786443, metadata !1, metadata !189, i32 1019, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"prepareToAddNewEntries", metadata !"prepareToAddNewEntries", metadata !"", i32 15, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @prepareToAddNewEntries, null, null, metadata !206, i32 18} ; [ DW_TAG_subprogram ] [line 15] [local] [def] [scope 18] [prepareToAddNewEntries]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{null, metadata !8, metadata !14}
!206 = metadata !{metadata !207, metadata !208, metadata !209}
!207 = metadata !{i32 786689, metadata !203, metadata !"inpmtx", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 16]
!208 = metadata !{i32 786689, metadata !203, metadata !"nnewent", metadata !5, i32 33554449, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnewent] [line 17]
!209 = metadata !{i32 786688, metadata !210, metadata !"newmaxnent", metadata !5, i32 34, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmaxnent] [line 34]
!210 = metadata !{i32 786443, metadata !1, metadata !203, i32 28, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!211 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputMatrix", metadata !"inputMatrix", metadata !"", i32 765, metadata !144, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32, i32, i32*, i32*, double*)* @inputMatrix, null, null, metadata !212, i32 774} ; [ DW_TAG_subprogram ] [line 765] [local] [def] [scope 774] [inputMatrix]
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !231, metadata !232, metadata !234}
!213 = metadata !{i32 786689, metadata !211, metadata !"inpmtx", metadata !5, i32 16777982, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 766]
!214 = metadata !{i32 786689, metadata !211, metadata !"nrow", metadata !5, i32 33555199, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 767]
!215 = metadata !{i32 786689, metadata !211, metadata !"ncol", metadata !5, i32 50332416, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 768]
!216 = metadata !{i32 786689, metadata !211, metadata !"rowstride", metadata !5, i32 67109633, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowstride] [line 769]
!217 = metadata !{i32 786689, metadata !211, metadata !"colstride", metadata !5, i32 83886850, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colstride] [line 770]
!218 = metadata !{i32 786689, metadata !211, metadata !"rowind", metadata !5, i32 100664067, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 771]
!219 = metadata !{i32 786689, metadata !211, metadata !"colind", metadata !5, i32 117441284, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 772]
!220 = metadata !{i32 786689, metadata !211, metadata !"mtxent", metadata !5, i32 134218501, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxent] [line 773]
!221 = metadata !{i32 786688, metadata !211, metadata !"col", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 775]
!222 = metadata !{i32 786688, metadata !211, metadata !"ii", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 775]
!223 = metadata !{i32 786688, metadata !211, metadata !"jj", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 775]
!224 = metadata !{i32 786688, metadata !211, metadata !"kk", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 775]
!225 = metadata !{i32 786688, metadata !211, metadata !"nent", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 775]
!226 = metadata !{i32 786688, metadata !211, metadata !"row", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 775]
!227 = metadata !{i32 786688, metadata !211, metadata !"ivec1", metadata !5, i32 776, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 776]
!228 = metadata !{i32 786688, metadata !211, metadata !"ivec2", metadata !5, i32 776, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 776]
!229 = metadata !{i32 786688, metadata !230, metadata !"dvec", metadata !5, i32 817, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 817]
!230 = metadata !{i32 786443, metadata !1, metadata !211, i32 816, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!231 = metadata !{i32 786688, metadata !230, metadata !"ij", metadata !5, i32 818, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ij] [line 818]
!232 = metadata !{i32 786688, metadata !233, metadata !"dvec", metadata !5, i32 827, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 827]
!233 = metadata !{i32 786443, metadata !1, metadata !211, i32 826, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!234 = metadata !{i32 786688, metadata !233, metadata !"ij", metadata !5, i32 828, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ij] [line 828]
!235 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputChevron", metadata !"inputChevron", metadata !"", i32 583, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @inputChevron, null, null, metadata !236, i32 589} ; [ DW_TAG_subprogram ] [line 583] [local] [def] [scope 589] [inputChevron]
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !252}
!237 = metadata !{i32 786689, metadata !235, metadata !"inpmtx", metadata !5, i32 16777800, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 584]
!238 = metadata !{i32 786689, metadata !235, metadata !"chv", metadata !5, i32 33555017, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 585]
!239 = metadata !{i32 786689, metadata !235, metadata !"chvsize", metadata !5, i32 50332234, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvsize] [line 586]
!240 = metadata !{i32 786689, metadata !235, metadata !"chvind", metadata !5, i32 67109451, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvind] [line 587]
!241 = metadata !{i32 786689, metadata !235, metadata !"chvent", metadata !5, i32 83886668, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvent] [line 588]
!242 = metadata !{i32 786688, metadata !235, metadata !"col", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 590]
!243 = metadata !{i32 786688, metadata !235, metadata !"ii", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 590]
!244 = metadata !{i32 786688, metadata !235, metadata !"jj", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 590]
!245 = metadata !{i32 786688, metadata !235, metadata !"nent", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 590]
!246 = metadata !{i32 786688, metadata !235, metadata !"offset", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 590]
!247 = metadata !{i32 786688, metadata !235, metadata !"row", metadata !5, i32 590, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 590]
!248 = metadata !{i32 786688, metadata !235, metadata !"ivec1", metadata !5, i32 591, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 591]
!249 = metadata !{i32 786688, metadata !235, metadata !"ivec2", metadata !5, i32 591, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 591]
!250 = metadata !{i32 786688, metadata !251, metadata !"dvec", metadata !5, i32 628, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 628]
!251 = metadata !{i32 786443, metadata !1, metadata !235, i32 627, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!252 = metadata !{i32 786688, metadata !253, metadata !"dvec", metadata !5, i32 632, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 632]
!253 = metadata !{i32 786443, metadata !1, metadata !235, i32 631, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!254 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputColumn", metadata !"inputColumn", metadata !"", i32 416, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @inputColumn, null, null, metadata !255, i32 422} ; [ DW_TAG_subprogram ] [line 416] [local] [def] [scope 422] [inputColumn]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !269}
!256 = metadata !{i32 786689, metadata !254, metadata !"inpmtx", metadata !5, i32 16777633, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 417]
!257 = metadata !{i32 786689, metadata !254, metadata !"col", metadata !5, i32 33554850, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 418]
!258 = metadata !{i32 786689, metadata !254, metadata !"colsize", metadata !5, i32 50332067, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colsize] [line 419]
!259 = metadata !{i32 786689, metadata !254, metadata !"colind", metadata !5, i32 67109284, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 420]
!260 = metadata !{i32 786689, metadata !254, metadata !"colent", metadata !5, i32 83886501, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colent] [line 421]
!261 = metadata !{i32 786688, metadata !254, metadata !"ii", metadata !5, i32 423, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 423]
!262 = metadata !{i32 786688, metadata !254, metadata !"jj", metadata !5, i32 423, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 423]
!263 = metadata !{i32 786688, metadata !254, metadata !"nent", metadata !5, i32 423, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 423]
!264 = metadata !{i32 786688, metadata !254, metadata !"row", metadata !5, i32 423, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 423]
!265 = metadata !{i32 786688, metadata !254, metadata !"ivec1", metadata !5, i32 424, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 424]
!266 = metadata !{i32 786688, metadata !254, metadata !"ivec2", metadata !5, i32 424, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 424]
!267 = metadata !{i32 786688, metadata !268, metadata !"dvec", metadata !5, i32 446, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 446]
!268 = metadata !{i32 786443, metadata !1, metadata !254, i32 445, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!269 = metadata !{i32 786688, metadata !270, metadata !"dvec", metadata !5, i32 450, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 450]
!270 = metadata !{i32 786443, metadata !1, metadata !254, i32 449, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!271 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputRow", metadata !"inputRow", metadata !"", i32 244, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32*, double*)* @inputRow, null, null, metadata !272, i32 250} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 250] [inputRow]
!272 = metadata !{metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !286}
!273 = metadata !{i32 786689, metadata !271, metadata !"inpmtx", metadata !5, i32 16777461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 245]
!274 = metadata !{i32 786689, metadata !271, metadata !"row", metadata !5, i32 33554678, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 246]
!275 = metadata !{i32 786689, metadata !271, metadata !"rowsize", metadata !5, i32 50331895, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowsize] [line 247]
!276 = metadata !{i32 786689, metadata !271, metadata !"rowind", metadata !5, i32 67109112, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 248]
!277 = metadata !{i32 786689, metadata !271, metadata !"rowent", metadata !5, i32 83886329, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowent] [line 249]
!278 = metadata !{i32 786688, metadata !271, metadata !"col", metadata !5, i32 251, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 251]
!279 = metadata !{i32 786688, metadata !271, metadata !"ii", metadata !5, i32 251, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 251]
!280 = metadata !{i32 786688, metadata !271, metadata !"jj", metadata !5, i32 251, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 251]
!281 = metadata !{i32 786688, metadata !271, metadata !"nent", metadata !5, i32 251, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 251]
!282 = metadata !{i32 786688, metadata !271, metadata !"ivec1", metadata !5, i32 252, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 252]
!283 = metadata !{i32 786688, metadata !271, metadata !"ivec2", metadata !5, i32 252, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 252]
!284 = metadata !{i32 786688, metadata !285, metadata !"dvec", metadata !5, i32 279, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 279]
!285 = metadata !{i32 786443, metadata !1, metadata !271, i32 278, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!286 = metadata !{i32 786688, metadata !287, metadata !"dvec", metadata !5, i32 283, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 283]
!287 = metadata !{i32 786443, metadata !1, metadata !271, i32 282, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!288 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inputEntry", metadata !"inputEntry", metadata !"", i32 51, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, double, double)* @inputEntry, null, null, metadata !289, i32 57} ; [ DW_TAG_subprogram ] [line 51] [local] [def] [scope 57] [inputEntry]
!289 = metadata !{metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !300}
!290 = metadata !{i32 786689, metadata !288, metadata !"inpmtx", metadata !5, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 52]
!291 = metadata !{i32 786689, metadata !288, metadata !"row", metadata !5, i32 33554485, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 53]
!292 = metadata !{i32 786689, metadata !288, metadata !"col", metadata !5, i32 50331702, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 54]
!293 = metadata !{i32 786689, metadata !288, metadata !"real", metadata !5, i32 67108919, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 55]
!294 = metadata !{i32 786689, metadata !288, metadata !"imag", metadata !5, i32 83886136, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 56]
!295 = metadata !{i32 786688, metadata !288, metadata !"nent", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 58]
!296 = metadata !{i32 786688, metadata !288, metadata !"ivec1", metadata !5, i32 59, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 59]
!297 = metadata !{i32 786688, metadata !288, metadata !"ivec2", metadata !5, i32 59, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 59]
!298 = metadata !{i32 786688, metadata !299, metadata !"dvec", metadata !5, i32 83, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 83]
!299 = metadata !{i32 786443, metadata !1, metadata !288, i32 82, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!300 = metadata !{i32 786688, metadata !301, metadata !"dvec", metadata !5, i32 87, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 87]
!301 = metadata !{i32 786443, metadata !1, metadata !288, i32 86, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!302 = metadata !{i32 107, i32 0, metadata !4, null}
!303 = metadata !{i32 108, i32 0, metadata !4, null}
!304 = metadata !{i32 109, i32 0, metadata !4, null}
!305 = metadata !{i32 116, i32 0, metadata !4, null}
!306 = metadata !{i32 117, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !4, i32 116, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!308 = metadata !{metadata !"any pointer", metadata !309}
!309 = metadata !{metadata !"omnipotent char", metadata !310}
!310 = metadata !{metadata !"Simple C/C++ TBAA"}
!311 = metadata !{i32 120, i32 0, metadata !307, null}
!312 = metadata !{i32 122, i32 0, metadata !4, null}
!313 = metadata !{metadata !"int", metadata !309}
!314 = metadata !{i32 125, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !4, i32 124, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!316 = metadata !{i32 129, i32 0, metadata !315, null}
!317 = metadata !{i32 131, i32 0, metadata !4, null}
!318 = metadata !{i32 132, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !4, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!320 = metadata !{i32 136, i32 0, metadata !319, null}
!321 = metadata !{i32 138, i32 0, metadata !4, null}
!322 = metadata !{i32 140, i32 0, metadata !4, null}
!323 = metadata !{i32 52, i32 0, metadata !288, null}
!324 = metadata !{i32 53, i32 0, metadata !288, null}
!325 = metadata !{i32 54, i32 0, metadata !288, null}
!326 = metadata !{i32 55, i32 0, metadata !288, null}
!327 = metadata !{i32 56, i32 0, metadata !288, null}
!328 = metadata !{i32 61, i32 0, metadata !288, null}
!329 = metadata !{i32 62, i32 0, metadata !288, null}
!330 = metadata !{i32 63, i32 0, metadata !288, null}
!331 = metadata !{i32 64, i32 0, metadata !288, null}
!332 = metadata !{i32 65, i32 0, metadata !288, null}
!333 = metadata !{i32 66, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !288, i32 65, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!335 = metadata !{i32 67, i32 0, metadata !334, null}
!336 = metadata !{i32 68, i32 0, metadata !334, null}
!337 = metadata !{i32 69, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !288, i32 68, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!339 = metadata !{i32 70, i32 0, metadata !338, null}
!340 = metadata !{i32 71, i32 0, metadata !338, null}
!341 = metadata !{i32 72, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !288, i32 71, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!343 = metadata !{i32 76, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !342, i32 75, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!345 = metadata !{i32 73, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !342, i32 72, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!347 = metadata !{i32 74, i32 0, metadata !346, null}
!348 = metadata !{i32 75, i32 0, metadata !346, null}
!349 = metadata !{i32 77, i32 0, metadata !344, null}
!350 = metadata !{i32 80, i32 0, metadata !288, null}
!351 = metadata !{i32 81, i32 0, metadata !288, null}
!352 = metadata !{i32 82, i32 0, metadata !288, null}
!353 = metadata !{i32 83, i32 0, metadata !299, null}
!354 = metadata !{i32 84, i32 0, metadata !299, null}
!355 = metadata !{metadata !"double", metadata !309}
!356 = metadata !{i32 85, i32 0, metadata !299, null}
!357 = metadata !{i32 86, i32 0, metadata !299, null}
!358 = metadata !{i32 87, i32 0, metadata !301, null}
!359 = metadata !{i32 88, i32 0, metadata !301, null}
!360 = metadata !{i32 89, i32 0, metadata !301, null}
!361 = metadata !{i32 90, i32 0, metadata !301, null}
!362 = metadata !{i32 91, i32 0, metadata !301, null}
!363 = metadata !{i32 92, i32 0, metadata !288, null}
!364 = metadata !{i32 93, i32 0, metadata !288, null}
!365 = metadata !{i32 95, i32 0, metadata !288, null}
!366 = metadata !{i32 152, i32 0, metadata !51, null}
!367 = metadata !{i32 153, i32 0, metadata !51, null}
!368 = metadata !{i32 154, i32 0, metadata !51, null}
!369 = metadata !{i32 155, i32 0, metadata !51, null}
!370 = metadata !{i32 162, i32 0, metadata !51, null}
!371 = metadata !{i32 163, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !51, i32 162, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!373 = metadata !{i32 166, i32 0, metadata !372, null}
!374 = metadata !{i32 168, i32 0, metadata !51, null}
!375 = metadata !{i32 171, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !51, i32 170, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!377 = metadata !{i32 175, i32 0, metadata !376, null}
!378 = metadata !{i32 177, i32 0, metadata !51, null}
!379 = metadata !{i32 178, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !51, i32 177, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!381 = metadata !{i32 182, i32 0, metadata !380, null}
!382 = metadata !{i32 184, i32 0, metadata !51, null}
!383 = metadata !{i32 186, i32 0, metadata !51, null}
!384 = metadata !{i32 198, i32 0, metadata !59, null}
!385 = metadata !{i32 199, i32 0, metadata !59, null}
!386 = metadata !{i32 200, i32 0, metadata !59, null}
!387 = metadata !{i32 201, i32 0, metadata !59, null}
!388 = metadata !{i32 202, i32 0, metadata !59, null}
!389 = metadata !{i32 209, i32 0, metadata !59, null}
!390 = metadata !{i32 210, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !59, i32 209, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!392 = metadata !{i32 213, i32 0, metadata !391, null}
!393 = metadata !{i32 215, i32 0, metadata !59, null}
!394 = metadata !{i32 218, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !59, i32 217, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!396 = metadata !{i32 222, i32 0, metadata !395, null}
!397 = metadata !{i32 224, i32 0, metadata !59, null}
!398 = metadata !{i32 225, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !59, i32 224, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!400 = metadata !{i32 229, i32 0, metadata !399, null}
!401 = metadata !{i32 231, i32 0, metadata !59, null}
!402 = metadata !{i32 233, i32 0, metadata !59, null}
!403 = metadata !{i32 302, i32 0, metadata !68, null}
!404 = metadata !{i32 303, i32 0, metadata !68, null}
!405 = metadata !{i32 304, i32 0, metadata !68, null}
!406 = metadata !{i32 305, i32 0, metadata !68, null}
!407 = metadata !{i32 312, i32 0, metadata !68, null}
!408 = metadata !{i32 313, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !68, i32 312, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!410 = metadata !{i32 316, i32 0, metadata !409, null}
!411 = metadata !{i32 318, i32 0, metadata !68, null}
!412 = metadata !{i32 319, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !68, i32 318, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!414 = metadata !{i32 323, i32 0, metadata !413, null}
!415 = metadata !{i32 325, i32 0, metadata !68, null}
!416 = metadata !{i32 327, i32 0, metadata !68, null}
!417 = metadata !{i32 245, i32 0, metadata !271, null}
!418 = metadata !{i32 246, i32 0, metadata !271, null}
!419 = metadata !{i32 247, i32 0, metadata !271, null}
!420 = metadata !{i32 248, i32 0, metadata !271, null}
!421 = metadata !{i32 249, i32 0, metadata !271, null}
!422 = metadata !{i32 254, i32 0, metadata !271, null}
!423 = metadata !{i32 255, i32 0, metadata !271, null}
!424 = metadata !{i32 256, i32 0, metadata !271, null}
!425 = metadata !{i32 257, i32 0, metadata !271, null}
!426 = metadata !{i32 258, i32 0, metadata !271, null}
!427 = metadata !{i32 265, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !429, i32 265, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!429 = metadata !{i32 786443, metadata !1, metadata !271, i32 264, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!430 = metadata !{i32 259, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !271, i32 258, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!432 = metadata !{i32 260, i32 0, metadata !431, null}
!433 = metadata !{i32 261, i32 0, metadata !431, null}
!434 = metadata !{i32 262, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !271, i32 261, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!436 = metadata !{i32 263, i32 0, metadata !435, null}
!437 = metadata !{i32 264, i32 0, metadata !435, null}
!438 = metadata !{i32 266, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !428, i32 265, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!440 = metadata !{i32 267, i32 0, metadata !439, null}
!441 = metadata !{i32 268, i32 0, metadata !439, null}
!442 = metadata !{i32 271, i32 0, metadata !271, null}
!443 = metadata !{i32 272, i32 0, metadata !271, null}
!444 = metadata !{i32 278, i32 0, metadata !271, null}
!445 = metadata !{i32 279, i32 0, metadata !285, null}
!446 = metadata !{i32 280, i32 0, metadata !285, null}
!447 = metadata !{i32 281, i32 0, metadata !285, null}
!448 = metadata !{i32 282, i32 0, metadata !285, null}
!449 = metadata !{i32 283, i32 0, metadata !287, null}
!450 = metadata !{i32 284, i32 0, metadata !287, null}
!451 = metadata !{i32 285, i32 0, metadata !287, null}
!452 = metadata !{i32 286, i32 0, metadata !287, null}
!453 = metadata !{i32 287, i32 0, metadata !271, null}
!454 = metadata !{i32 288, i32 0, metadata !271, null}
!455 = metadata !{i32 290, i32 0, metadata !271, null}
!456 = metadata !{i32 339, i32 0, metadata !76, null}
!457 = metadata !{i32 340, i32 0, metadata !76, null}
!458 = metadata !{i32 341, i32 0, metadata !76, null}
!459 = metadata !{i32 342, i32 0, metadata !76, null}
!460 = metadata !{i32 343, i32 0, metadata !76, null}
!461 = metadata !{i32 350, i32 0, metadata !76, null}
!462 = metadata !{i32 352, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !76, i32 351, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!464 = metadata !{i32 355, i32 0, metadata !463, null}
!465 = metadata !{i32 357, i32 0, metadata !76, null}
!466 = metadata !{i32 358, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !76, i32 357, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!468 = metadata !{i32 362, i32 0, metadata !467, null}
!469 = metadata !{i32 364, i32 0, metadata !76, null}
!470 = metadata !{i32 366, i32 0, metadata !76, null}
!471 = metadata !{i32 378, i32 0, metadata !85, null}
!472 = metadata !{i32 379, i32 0, metadata !85, null}
!473 = metadata !{i32 380, i32 0, metadata !85, null}
!474 = metadata !{i32 381, i32 0, metadata !85, null}
!475 = metadata !{i32 382, i32 0, metadata !85, null}
!476 = metadata !{i32 389, i32 0, metadata !85, null}
!477 = metadata !{i32 391, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !85, i32 390, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!479 = metadata !{i32 394, i32 0, metadata !478, null}
!480 = metadata !{i32 396, i32 0, metadata !85, null}
!481 = metadata !{i32 397, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !85, i32 396, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!483 = metadata !{i32 401, i32 0, metadata !482, null}
!484 = metadata !{i32 403, i32 0, metadata !85, null}
!485 = metadata !{i32 405, i32 0, metadata !85, null}
!486 = metadata !{i32 469, i32 0, metadata !92, null}
!487 = metadata !{i32 470, i32 0, metadata !92, null}
!488 = metadata !{i32 471, i32 0, metadata !92, null}
!489 = metadata !{i32 472, i32 0, metadata !92, null}
!490 = metadata !{i32 479, i32 0, metadata !92, null}
!491 = metadata !{i32 480, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !92, i32 479, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!493 = metadata !{i32 483, i32 0, metadata !492, null}
!494 = metadata !{i32 485, i32 0, metadata !92, null}
!495 = metadata !{i32 486, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !92, i32 485, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!497 = metadata !{i32 490, i32 0, metadata !496, null}
!498 = metadata !{i32 492, i32 0, metadata !92, null}
!499 = metadata !{i32 494, i32 0, metadata !92, null}
!500 = metadata !{i32 417, i32 0, metadata !254, null}
!501 = metadata !{i32 418, i32 0, metadata !254, null}
!502 = metadata !{i32 419, i32 0, metadata !254, null}
!503 = metadata !{i32 420, i32 0, metadata !254, null}
!504 = metadata !{i32 421, i32 0, metadata !254, null}
!505 = metadata !{i32 426, i32 0, metadata !254, null}
!506 = metadata !{i32 427, i32 0, metadata !254, null}
!507 = metadata !{i32 428, i32 0, metadata !254, null}
!508 = metadata !{i32 429, i32 0, metadata !254, null}
!509 = metadata !{i32 430, i32 0, metadata !254, null}
!510 = metadata !{i32 437, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 437, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!512 = metadata !{i32 786443, metadata !1, metadata !254, i32 436, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!513 = metadata !{i32 431, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !254, i32 430, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!515 = metadata !{i32 432, i32 0, metadata !514, null}
!516 = metadata !{i32 433, i32 0, metadata !514, null}
!517 = metadata !{i32 434, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !254, i32 433, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!519 = metadata !{i32 435, i32 0, metadata !518, null}
!520 = metadata !{i32 436, i32 0, metadata !518, null}
!521 = metadata !{i32 438, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !511, i32 437, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!523 = metadata !{i32 439, i32 0, metadata !522, null}
!524 = metadata !{i32 440, i32 0, metadata !522, null}
!525 = metadata !{i32 443, i32 0, metadata !254, null}
!526 = metadata !{i32 444, i32 0, metadata !254, null}
!527 = metadata !{i32 445, i32 0, metadata !254, null}
!528 = metadata !{i32 446, i32 0, metadata !268, null}
!529 = metadata !{i32 447, i32 0, metadata !268, null}
!530 = metadata !{i32 448, i32 0, metadata !268, null}
!531 = metadata !{i32 449, i32 0, metadata !268, null}
!532 = metadata !{i32 450, i32 0, metadata !270, null}
!533 = metadata !{i32 451, i32 0, metadata !270, null}
!534 = metadata !{i32 452, i32 0, metadata !270, null}
!535 = metadata !{i32 453, i32 0, metadata !270, null}
!536 = metadata !{i32 454, i32 0, metadata !254, null}
!537 = metadata !{i32 455, i32 0, metadata !254, null}
!538 = metadata !{i32 457, i32 0, metadata !254, null}
!539 = metadata !{i32 506, i32 0, metadata !98, null}
!540 = metadata !{i32 507, i32 0, metadata !98, null}
!541 = metadata !{i32 508, i32 0, metadata !98, null}
!542 = metadata !{i32 509, i32 0, metadata !98, null}
!543 = metadata !{i32 510, i32 0, metadata !98, null}
!544 = metadata !{i32 517, i32 0, metadata !98, null}
!545 = metadata !{i32 519, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !98, i32 518, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!547 = metadata !{i32 522, i32 0, metadata !546, null}
!548 = metadata !{i32 524, i32 0, metadata !98, null}
!549 = metadata !{i32 525, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !98, i32 524, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!551 = metadata !{i32 529, i32 0, metadata !550, null}
!552 = metadata !{i32 531, i32 0, metadata !98, null}
!553 = metadata !{i32 533, i32 0, metadata !98, null}
!554 = metadata !{i32 545, i32 0, metadata !105, null}
!555 = metadata !{i32 546, i32 0, metadata !105, null}
!556 = metadata !{i32 547, i32 0, metadata !105, null}
!557 = metadata !{i32 548, i32 0, metadata !105, null}
!558 = metadata !{i32 549, i32 0, metadata !105, null}
!559 = metadata !{i32 556, i32 0, metadata !105, null}
!560 = metadata !{i32 558, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !105, i32 557, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!562 = metadata !{i32 561, i32 0, metadata !561, null}
!563 = metadata !{i32 563, i32 0, metadata !105, null}
!564 = metadata !{i32 564, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !105, i32 563, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!566 = metadata !{i32 568, i32 0, metadata !565, null}
!567 = metadata !{i32 570, i32 0, metadata !105, null}
!568 = metadata !{i32 572, i32 0, metadata !105, null}
!569 = metadata !{i32 651, i32 0, metadata !112, null}
!570 = metadata !{i32 652, i32 0, metadata !112, null}
!571 = metadata !{i32 653, i32 0, metadata !112, null}
!572 = metadata !{i32 654, i32 0, metadata !112, null}
!573 = metadata !{i32 661, i32 0, metadata !112, null}
!574 = metadata !{i32 662, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !112, i32 661, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!576 = metadata !{i32 665, i32 0, metadata !575, null}
!577 = metadata !{i32 667, i32 0, metadata !112, null}
!578 = metadata !{i32 668, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !112, i32 667, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!580 = metadata !{i32 672, i32 0, metadata !579, null}
!581 = metadata !{i32 674, i32 0, metadata !112, null}
!582 = metadata !{i32 676, i32 0, metadata !112, null}
!583 = metadata !{i32 584, i32 0, metadata !235, null}
!584 = metadata !{i32 585, i32 0, metadata !235, null}
!585 = metadata !{i32 586, i32 0, metadata !235, null}
!586 = metadata !{i32 587, i32 0, metadata !235, null}
!587 = metadata !{i32 588, i32 0, metadata !235, null}
!588 = metadata !{i32 593, i32 0, metadata !235, null}
!589 = metadata !{i32 594, i32 0, metadata !235, null}
!590 = metadata !{i32 595, i32 0, metadata !235, null}
!591 = metadata !{i32 596, i32 0, metadata !235, null}
!592 = metadata !{i32 597, i32 0, metadata !235, null}
!593 = metadata !{i32 610, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !595, i32 610, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!595 = metadata !{i32 786443, metadata !1, metadata !235, i32 609, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!596 = metadata !{i32 598, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 598, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!598 = metadata !{i32 786443, metadata !1, metadata !235, i32 597, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!599 = metadata !{i32 599, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !597, i32 598, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!601 = metadata !{i32 600, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !600, i32 599, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!603 = metadata !{i32 603, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !600, i32 602, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!605 = metadata !{i32 606, i32 0, metadata !600, null}
!606 = metadata !{i32 607, i32 0, metadata !600, null}
!607 = metadata !{i32 611, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !594, i32 610, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!609 = metadata !{i32 612, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !608, i32 611, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!611 = metadata !{i32 615, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !608, i32 614, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!613 = metadata !{i32 618, i32 0, metadata !608, null}
!614 = metadata !{i32 619, i32 0, metadata !608, null}
!615 = metadata !{i32 622, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !235, i32 621, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!617 = metadata !{i32 623, i32 0, metadata !616, null}
!618 = metadata !{i32 624, i32 0, metadata !616, null}
!619 = metadata !{i32 625, i32 0, metadata !235, null}
!620 = metadata !{i32 626, i32 0, metadata !235, null}
!621 = metadata !{i32 627, i32 0, metadata !235, null}
!622 = metadata !{i32 628, i32 0, metadata !251, null}
!623 = metadata !{i32 629, i32 0, metadata !251, null}
!624 = metadata !{i32 630, i32 0, metadata !251, null}
!625 = metadata !{i32 631, i32 0, metadata !251, null}
!626 = metadata !{i32 636, i32 0, metadata !235, null}
!627 = metadata !{i32 637, i32 0, metadata !235, null}
!628 = metadata !{i32 639, i32 0, metadata !235, null}
!629 = metadata !{i32 688, i32 0, metadata !118, null}
!630 = metadata !{i32 689, i32 0, metadata !118, null}
!631 = metadata !{i32 690, i32 0, metadata !118, null}
!632 = metadata !{i32 691, i32 0, metadata !118, null}
!633 = metadata !{i32 692, i32 0, metadata !118, null}
!634 = metadata !{i32 699, i32 0, metadata !118, null}
!635 = metadata !{i32 701, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !118, i32 700, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!637 = metadata !{i32 704, i32 0, metadata !636, null}
!638 = metadata !{i32 706, i32 0, metadata !118, null}
!639 = metadata !{i32 707, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !118, i32 706, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!641 = metadata !{i32 711, i32 0, metadata !640, null}
!642 = metadata !{i32 713, i32 0, metadata !118, null}
!643 = metadata !{i32 715, i32 0, metadata !118, null}
!644 = metadata !{i32 727, i32 0, metadata !125, null}
!645 = metadata !{i32 728, i32 0, metadata !125, null}
!646 = metadata !{i32 729, i32 0, metadata !125, null}
!647 = metadata !{i32 730, i32 0, metadata !125, null}
!648 = metadata !{i32 731, i32 0, metadata !125, null}
!649 = metadata !{i32 738, i32 0, metadata !125, null}
!650 = metadata !{i32 740, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !125, i32 739, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!652 = metadata !{i32 743, i32 0, metadata !651, null}
!653 = metadata !{i32 745, i32 0, metadata !125, null}
!654 = metadata !{i32 746, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !125, i32 745, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!656 = metadata !{i32 750, i32 0, metadata !655, null}
!657 = metadata !{i32 752, i32 0, metadata !125, null}
!658 = metadata !{i32 754, i32 0, metadata !125, null}
!659 = metadata !{i32 853, i32 0, metadata !132, null}
!660 = metadata !{i32 854, i32 0, metadata !132, null}
!661 = metadata !{i32 855, i32 0, metadata !132, null}
!662 = metadata !{i32 856, i32 0, metadata !132, null}
!663 = metadata !{i32 857, i32 0, metadata !132, null}
!664 = metadata !{i32 858, i32 0, metadata !132, null}
!665 = metadata !{i32 859, i32 0, metadata !132, null}
!666 = metadata !{i32 866, i32 0, metadata !132, null}
!667 = metadata !{i32 869, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !132, i32 868, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!669 = metadata !{i32 873, i32 0, metadata !668, null}
!670 = metadata !{i32 875, i32 0, metadata !132, null}
!671 = metadata !{i32 876, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !132, i32 875, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!673 = metadata !{i32 880, i32 0, metadata !672, null}
!674 = metadata !{i32 882, i32 0, metadata !132, null}
!675 = metadata !{i32 885, i32 0, metadata !132, null}
!676 = metadata !{i32 888, i32 0, metadata !132, null}
!677 = metadata !{i32 766, i32 0, metadata !211, null}
!678 = metadata !{i32 767, i32 0, metadata !211, null}
!679 = metadata !{i32 768, i32 0, metadata !211, null}
!680 = metadata !{i32 769, i32 0, metadata !211, null}
!681 = metadata !{i32 770, i32 0, metadata !211, null}
!682 = metadata !{i32 771, i32 0, metadata !211, null}
!683 = metadata !{i32 772, i32 0, metadata !211, null}
!684 = metadata !{i32 773, i32 0, metadata !211, null}
!685 = metadata !{i32 778, i32 0, metadata !211, null}
!686 = metadata !{i32 779, i32 0, metadata !211, null}
!687 = metadata !{i32 780, i32 0, metadata !211, null}
!688 = metadata !{i32 781, i32 0, metadata !211, null}
!689 = metadata !{i32 782, i32 0, metadata !211, null}
!690 = metadata !{i32 801, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !692, i32 801, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!692 = metadata !{i32 786443, metadata !1, metadata !211, i32 800, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!693 = metadata !{i32 803, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !695, i32 803, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!695 = metadata !{i32 786443, metadata !1, metadata !691, i32 801, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!696 = metadata !{i32 792, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !698, i32 792, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!698 = metadata !{i32 786443, metadata !1, metadata !211, i32 791, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!699 = metadata !{i32 794, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !701, i32 794, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!701 = metadata !{i32 786443, metadata !1, metadata !697, i32 792, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!702 = metadata !{i32 783, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !704, i32 783, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!704 = metadata !{i32 786443, metadata !1, metadata !211, i32 782, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!705 = metadata !{i32 785, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !707, i32 785, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!707 = metadata !{i32 786443, metadata !1, metadata !703, i32 783, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!708 = metadata !{i32 784, i32 0, metadata !707, null}
!709 = metadata !{i32 786, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !706, i32 785, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!711 = metadata !{i32 787, i32 0, metadata !710, null}
!712 = metadata !{i32 788, i32 0, metadata !710, null}
!713 = metadata !{i32 793, i32 0, metadata !701, null}
!714 = metadata !{i32 795, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !700, i32 794, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!716 = metadata !{i32 796, i32 0, metadata !715, null}
!717 = metadata !{i32 797, i32 0, metadata !715, null}
!718 = metadata !{i32 802, i32 0, metadata !695, null}
!719 = metadata !{i32 804, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !694, i32 803, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!721 = metadata !{i32 805, i32 0, metadata !720, null}
!722 = metadata !{i32 808, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !720, i32 807, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!724 = metadata !{i32 810, i32 0, metadata !720, null}
!725 = metadata !{i32 814, i32 0, metadata !211, null}
!726 = metadata !{i32 815, i32 0, metadata !211, null}
!727 = metadata !{i32 816, i32 0, metadata !211, null}
!728 = metadata !{i32 817, i32 0, metadata !230, null}
!729 = metadata !{i32 819, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !230, i32 819, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!731 = metadata !{i32 820, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !733, i32 820, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!733 = metadata !{i32 786443, metadata !1, metadata !730, i32 819, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!734 = metadata !{i32 821, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !732, i32 820, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!736 = metadata !{i32 822, i32 0, metadata !735, null}
!737 = metadata !{i32 825, i32 0, metadata !230, null}
!738 = metadata !{i32 826, i32 0, metadata !211, null}
!739 = metadata !{i32 826, i32 0, metadata !230, null}
!740 = metadata !{i32 827, i32 0, metadata !233, null}
!741 = metadata !{i32 829, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !233, i32 829, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!743 = metadata !{i32 830, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !745, i32 830, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!745 = metadata !{i32 786443, metadata !1, metadata !742, i32 829, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!746 = metadata !{i32 831, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !744, i32 830, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!748 = metadata !{i32 832, i32 0, metadata !747, null}
!749 = metadata !{i32 833, i32 0, metadata !747, null}
!750 = metadata !{i32 836, i32 0, metadata !233, null}
!751 = metadata !{i32 837, i32 0, metadata !233, null}
!752 = metadata !{i32 838, i32 0, metadata !211, null}
!753 = metadata !{i32 839, i32 0, metadata !211, null}
!754 = metadata !{i32 841, i32 0, metadata !211, null}
!755 = metadata !{i32 900, i32 0, metadata !143, null}
!756 = metadata !{i32 901, i32 0, metadata !143, null}
!757 = metadata !{i32 902, i32 0, metadata !143, null}
!758 = metadata !{i32 903, i32 0, metadata !143, null}
!759 = metadata !{i32 904, i32 0, metadata !143, null}
!760 = metadata !{i32 905, i32 0, metadata !143, null}
!761 = metadata !{i32 906, i32 0, metadata !143, null}
!762 = metadata !{i32 907, i32 0, metadata !143, null}
!763 = metadata !{i32 914, i32 0, metadata !143, null}
!764 = metadata !{i32 917, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !143, i32 916, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!766 = metadata !{i32 921, i32 0, metadata !765, null}
!767 = metadata !{i32 923, i32 0, metadata !143, null}
!768 = metadata !{i32 924, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !143, i32 923, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!770 = metadata !{i32 929, i32 0, metadata !769, null}
!771 = metadata !{i32 931, i32 0, metadata !143, null}
!772 = metadata !{i32 934, i32 0, metadata !143, null}
!773 = metadata !{i32 937, i32 0, metadata !143, null}
!774 = metadata !{i32 949, i32 0, metadata !155, null}
!775 = metadata !{i32 950, i32 0, metadata !155, null}
!776 = metadata !{i32 951, i32 0, metadata !155, null}
!777 = metadata !{i32 952, i32 0, metadata !155, null}
!778 = metadata !{i32 953, i32 0, metadata !155, null}
!779 = metadata !{i32 954, i32 0, metadata !155, null}
!780 = metadata !{i32 955, i32 0, metadata !155, null}
!781 = metadata !{i32 956, i32 0, metadata !155, null}
!782 = metadata !{i32 963, i32 0, metadata !155, null}
!783 = metadata !{i32 966, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !155, i32 965, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!785 = metadata !{i32 970, i32 0, metadata !784, null}
!786 = metadata !{i32 972, i32 0, metadata !155, null}
!787 = metadata !{i32 973, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !155, i32 972, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!789 = metadata !{i32 978, i32 0, metadata !788, null}
!790 = metadata !{i32 980, i32 0, metadata !155, null}
!791 = metadata !{i32 983, i32 0, metadata !155, null}
!792 = metadata !{i32 986, i32 0, metadata !155, null}
!793 = metadata !{i32 1039, i32 0, metadata !165, null}
!794 = metadata !{i32 1040, i32 0, metadata !165, null}
!795 = metadata !{i32 1041, i32 0, metadata !165, null}
!796 = metadata !{i32 1042, i32 0, metadata !165, null}
!797 = metadata !{i32 1049, i32 0, metadata !165, null}
!798 = metadata !{i32 1051, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !165, i32 1050, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!800 = metadata !{i32 1055, i32 0, metadata !799, null}
!801 = metadata !{i32 1057, i32 0, metadata !165, null}
!802 = metadata !{i32 1058, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !165, i32 1057, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!804 = metadata !{i32 1062, i32 0, metadata !803, null}
!805 = metadata !{i32 1064, i32 0, metadata !165, null}
!806 = metadata !{i32 1066, i32 0, metadata !165, null}
!807 = metadata !{i32 998, i32 0, metadata !189, null}
!808 = metadata !{i32 999, i32 0, metadata !189, null}
!809 = metadata !{i32 1000, i32 0, metadata !189, null}
!810 = metadata !{i32 1001, i32 0, metadata !189, null}
!811 = metadata !{i32 1002, i32 0, metadata !189, null}
!812 = metadata !{i32 1007, i32 0, metadata !189, null}
!813 = metadata !{i32 1008, i32 0, metadata !189, null}
!814 = metadata !{i32 1009, i32 0, metadata !189, null}
!815 = metadata !{i32 1010, i32 0, metadata !189, null}
!816 = metadata !{i32 1011, i32 0, metadata !189, null}
!817 = metadata !{i32 1012, i32 0, metadata !189, null}
!818 = metadata !{i32 1013, i32 0, metadata !189, null}
!819 = metadata !{i32 1014, i32 0, metadata !189, null}
!820 = metadata !{i32 1015, i32 0, metadata !189, null}
!821 = metadata !{i32 1016, i32 0, metadata !200, null}
!822 = metadata !{i32 1017, i32 0, metadata !200, null}
!823 = metadata !{i32 1018, i32 0, metadata !200, null}
!824 = metadata !{i32 1019, i32 0, metadata !200, null}
!825 = metadata !{i32 1020, i32 0, metadata !202, null}
!826 = metadata !{i32 1021, i32 0, metadata !202, null}
!827 = metadata !{i32 1022, i32 0, metadata !202, null}
!828 = metadata !{i32 1023, i32 0, metadata !202, null}
!829 = metadata !{i32 1024, i32 0, metadata !189, null}
!830 = metadata !{i32 1025, i32 0, metadata !189, null}
!831 = metadata !{i32 1027, i32 0, metadata !189, null}
!832 = metadata !{i32 1078, i32 0, metadata !173, null}
!833 = metadata !{i32 1079, i32 0, metadata !173, null}
!834 = metadata !{i32 1080, i32 0, metadata !173, null}
!835 = metadata !{i32 1081, i32 0, metadata !173, null}
!836 = metadata !{i32 1082, i32 0, metadata !173, null}
!837 = metadata !{i32 1089, i32 0, metadata !173, null}
!838 = metadata !{i32 1091, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !173, i32 1090, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!840 = metadata !{i32 1095, i32 0, metadata !839, null}
!841 = metadata !{i32 1097, i32 0, metadata !173, null}
!842 = metadata !{i32 1098, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !173, i32 1097, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!844 = metadata !{i32 1102, i32 0, metadata !843, null}
!845 = metadata !{i32 1104, i32 0, metadata !173, null}
!846 = metadata !{i32 1106, i32 0, metadata !173, null}
!847 = metadata !{i32 1118, i32 0, metadata !182, null}
!848 = metadata !{i32 1119, i32 0, metadata !182, null}
!849 = metadata !{i32 1120, i32 0, metadata !182, null}
!850 = metadata !{i32 1121, i32 0, metadata !182, null}
!851 = metadata !{i32 1122, i32 0, metadata !182, null}
!852 = metadata !{i32 1129, i32 0, metadata !182, null}
!853 = metadata !{i32 1131, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !182, i32 1130, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!855 = metadata !{i32 1135, i32 0, metadata !854, null}
!856 = metadata !{i32 1137, i32 0, metadata !182, null}
!857 = metadata !{i32 1138, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !182, i32 1137, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!859 = metadata !{i32 1142, i32 0, metadata !858, null}
!860 = metadata !{i32 1144, i32 0, metadata !182, null}
!861 = metadata !{i32 1146, i32 0, metadata !182, null}
!862 = metadata !{i32 16, i32 0, metadata !203, null}
!863 = metadata !{i32 17, i32 0, metadata !203, null}
!864 = metadata !{i32 19, i32 0, metadata !203, null}
!865 = metadata !{i32 25, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !203, i32 19, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!867 = metadata !{i32 26, i32 0, metadata !866, null}
!868 = metadata !{i32 28, i32 0, metadata !203, null}
!869 = metadata !{i32 27, i32 0, metadata !866, null}
!870 = metadata !{i32 34, i32 0, metadata !210, null}
!871 = metadata !{i32 35, i32 0, metadata !210, null}
!872 = metadata !{i32 36, i32 0, metadata !873, null}
!873 = metadata !{i32 786443, metadata !1, metadata !210, i32 35, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_input.c]
!874 = metadata !{i32 38, i32 0, metadata !210, null}
!875 = metadata !{i32 39, i32 0, metadata !210, null}
!876 = metadata !{i32 40, i32 0, metadata !203, null}
