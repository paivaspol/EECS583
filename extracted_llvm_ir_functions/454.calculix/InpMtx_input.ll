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
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %col, 0
  %or.cond36 = or i1 %or.cond, %cmp3
  br i1 %or.cond36, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double 0.000000e+00, double 0.000000e+00) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #0 {
entry:
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 1) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %1, label %if.end30 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %if.then15
  ]

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i32* %call, i64 %idxprom
  store i32 %row, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %call2, i64 %idxprom
  store i32 %col, i32* %arrayidx4, align 4, !tbaa !3
  br label %if.end30

if.then7:                                         ; preds = %entry
  %idxprom8 = sext i32 %0 to i64
  %arrayidx9 = getelementptr inbounds i32* %call, i64 %idxprom8
  store i32 %col, i32* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %call2, i64 %idxprom8
  store i32 %row, i32* %arrayidx11, align 4, !tbaa !3
  br label %if.end30

if.then15:                                        ; preds = %entry
  %cmp16 = icmp sgt i32 %row, %col
  %idxprom23 = sext i32 %0 to i64
  %arrayidx24 = getelementptr inbounds i32* %call, i64 %idxprom23
  br i1 %cmp16, label %if.else22, label %if.then17

if.then17:                                        ; preds = %if.then15
  store i32 %row, i32* %arrayidx24, align 4, !tbaa !3
  %sub = sub nsw i32 %col, %row
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %idxprom23
  store i32 %sub, i32* %arrayidx21, align 4, !tbaa !3
  br label %if.end30

if.else22:                                        ; preds = %if.then15
  store i32 %col, i32* %arrayidx24, align 4, !tbaa !3
  %sub25 = sub nsw i32 %col, %row
  %arrayidx27 = getelementptr inbounds i32* %call2, i64 %idxprom23
  store i32 %sub25, i32* %arrayidx27, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %entry, %if.then7, %if.then17, %if.else22, %if.then
  %add = add nsw i32 %0, 1
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %2 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %2, label %if.end58 [
    i32 1, label %if.then35
    i32 2, label %if.then44
  ]

if.then35:                                        ; preds = %if.end30
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call36 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %idxprom37 = sext i32 %0 to i64
  %arrayidx38 = getelementptr inbounds double* %call36, i64 %idxprom37
  store double %real, double* %arrayidx38, align 8, !tbaa !4
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #4
  br label %if.end58

if.then44:                                        ; preds = %if.end30
  %dvecDV46 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call47 = tail call double* @DV_entries(%struct._DV* %dvecDV46) #4
  %mul = shl nsw i32 %0, 1
  %idxprom48 = sext i32 %mul to i64
  %arrayidx49 = getelementptr inbounds double* %call47, i64 %idxprom48
  store double %real, double* %arrayidx49, align 8, !tbaa !4
  %add51107 = or i32 %mul, 1
  %idxprom52 = sext i32 %add51107 to i64
  %arrayidx53 = getelementptr inbounds double* %call47, i64 %idxprom52
  store double %imag, double* %arrayidx53, align 8, !tbaa !4
  %mul56 = shl nsw i32 %add, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV46, i32 %mul56) #4
  br label %if.end58

if.end58:                                         ; preds = %if.end30, %if.then44, %if.then35
  %3 = load i32* %nent1, align 4, !tbaa !3
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %nent1, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %col, 0
  %or.cond39 = or i1 %or.cond, %cmp3
  br i1 %or.cond39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([73 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %3, 1
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %value, double 0.000000e+00) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %col, 0
  %or.cond42 = or i1 %or.cond, %cmp3
  br i1 %or.cond42, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([77 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %3, 2
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @inputEntry(%struct._InpMtx* %inpmtx, i32 %row, i32 %col, double %real, double %imag) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %rowsize, 0
  %or.cond23 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %rowind, null
  %or.cond24 = or i1 %or.cond23, %cmp5
  br i1 %or.cond24, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* null) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %rowsize) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %entry
  %cmp16105 = icmp sgt i32 %rowsize, 0
  br i1 %cmp16105, label %for.body, label %if.end24

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext
  tail call void @IVfill(i32 %rowsize, i32* %add.ptr, i32 %row) #4
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext
  tail call void @IVcopy(i32 %rowsize, i32* %add.ptr4, i32* %rowind) #4
  br label %if.end24

if.then7:                                         ; preds = %entry
  %idx.ext8 = sext i32 %0 to i64
  %add.ptr9 = getelementptr inbounds i32* %call2, i64 %idx.ext8
  tail call void @IVfill(i32 %rowsize, i32* %add.ptr9, i32 %row) #4
  %add.ptr11 = getelementptr inbounds i32* %call, i64 %idx.ext8
  tail call void @IVcopy(i32 %rowsize, i32* %add.ptr11, i32* %rowind) #4
  br label %if.end24

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %rowind, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp17 = icmp sge i32 %2, %row
  %cond = select i1 %cmp17, i32 %row, i32 %2
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx19, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %row
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx21, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rowsize
  br i1 %exitcond, label %if.end24, label %for.body

if.end24:                                         ; preds = %for.cond.preheader, %for.body, %entry, %if.then7, %if.then
  %add = add nsw i32 %0, %rowsize
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %3, label %if.end48 [
    i32 1, label %if.then29
    i32 2, label %if.then38
  ]

if.then29:                                        ; preds = %if.end24
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call30 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %idx.ext31 = sext i32 %0 to i64
  %add.ptr32 = getelementptr inbounds double* %call30, i64 %idx.ext31
  tail call void @DVcopy(i32 %rowsize, double* %add.ptr32, double* %rowent) #4
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #4
  br label %if.end48

if.then38:                                        ; preds = %if.end24
  %dvecDV40 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call41 = tail call double* @DV_entries(%struct._DV* %dvecDV40) #4
  %mul = shl nsw i32 %0, 1
  %idx.ext42 = sext i32 %mul to i64
  %add.ptr43 = getelementptr inbounds double* %call41, i64 %idx.ext42
  tail call void @ZVcopy(i32 %rowsize, double* %add.ptr43, double* %rowent) #4
  %mul46 = shl nsw i32 %add, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV40, i32 %mul46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end24, %if.then38, %if.then29
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  %4 = load i32* %nent1, align 4, !tbaa !3
  %add50 = add nsw i32 %4, %rowsize
  store i32 %add50, i32* %nent1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %rowsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %rowind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %rowent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %row, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %rowsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %rowind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %rowent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputRow(%struct._InpMtx* %inpmtx, i32 %row, i32 %rowsize, i32* %rowind, double* %rowent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %col, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %colsize, 0
  %or.cond23 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colind, null
  %or.cond24 = or i1 %or.cond23, %cmp5
  br i1 %or.cond24, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str15, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* null) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %colsize) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then7
    i32 3, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %entry
  %cmp16106 = icmp sgt i32 %colsize, 0
  br i1 %cmp16106, label %for.body.lr.ph, label %if.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = sext i32 %0 to i64
  br label %for.body

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext
  tail call void @IVcopy(i32 %colsize, i32* %add.ptr, i32* %colind) #4
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext
  tail call void @IVfill(i32 %colsize, i32* %add.ptr4, i32 %col) #4
  br label %if.end24

if.then7:                                         ; preds = %entry
  %idx.ext8 = sext i32 %0 to i64
  %add.ptr9 = getelementptr inbounds i32* %call, i64 %idx.ext8
  tail call void @IVfill(i32 %colsize, i32* %add.ptr9, i32 %col) #4
  %add.ptr11 = getelementptr inbounds i32* %call2, i64 %idx.ext8
  tail call void @IVcopy(i32 %colsize, i32* %add.ptr11, i32* %colind) #4
  br label %if.end24

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %colind, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp17 = icmp sle i32 %3, %col
  %cond = select i1 %cmp17, i32 %3, i32 %col
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx19, align 4, !tbaa !3
  %sub = sub nsw i32 %col, %3
  %arrayidx21 = getelementptr inbounds i32* %call2, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx21, align 4, !tbaa !3
  %inc = add nsw i32 %ii.0108, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %inc, %colsize
  br i1 %exitcond, label %if.end24, label %for.body

if.end24:                                         ; preds = %for.cond.preheader, %for.body, %entry, %if.then7, %if.then
  %add = add nsw i32 %0, %colsize
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %4 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %4, label %if.end48 [
    i32 1, label %if.then29
    i32 2, label %if.then38
  ]

if.then29:                                        ; preds = %if.end24
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call30 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %idx.ext31 = sext i32 %0 to i64
  %add.ptr32 = getelementptr inbounds double* %call30, i64 %idx.ext31
  tail call void @DVcopy(i32 %colsize, double* %add.ptr32, double* %colent) #4
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #4
  br label %if.end48

if.then38:                                        ; preds = %if.end24
  %dvecDV40 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call41 = tail call double* @DV_entries(%struct._DV* %dvecDV40) #4
  %mul = shl nsw i32 %0, 1
  %idx.ext42 = sext i32 %mul to i64
  %add.ptr43 = getelementptr inbounds double* %call41, i64 %idx.ext42
  tail call void @ZVcopy(i32 %colsize, double* %add.ptr43, double* %colent) #4
  %mul46 = shl nsw i32 %add, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV40, i32 %mul46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end24, %if.then38, %if.then29
  store i32 %add, i32* %nent1, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %col, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %colsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %colent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %col, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %colsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %colent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputColumn(%struct._InpMtx* %inpmtx, i32 %col, i32 %colsize, i32* %colind, double* %colent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %chv, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %chvsize, 0
  %or.cond23 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %chvind, null
  %or.cond24 = or i1 %or.cond23, %cmp5
  br i1 %or.cond24, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* null) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %chvsize) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %1, label %if.end42 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond15.preheader
    i32 3, label %if.then37
  ]

for.cond15.preheader:                             ; preds = %entry
  %cmp16137 = icmp sgt i32 %chvsize, 0
  br i1 %cmp16137, label %for.body17.lr.ph, label %if.end42

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %2 = sext i32 %0 to i64
  br label %for.body17

for.cond.preheader:                               ; preds = %entry
  %cmp3133 = icmp sgt i32 %chvsize, 0
  br i1 %cmp3133, label %for.body.lr.ph, label %if.end42

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv140 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next141, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %chvind, i64 %indvars.iv
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %4, -1
  %sub = select i1 %cmp4, i32 0, i32 %4
  %row.0 = sub nsw i32 %chv, %sub
  %add = select i1 %cmp4, i32 %4, i32 0
  %col.0 = add nsw i32 %add, %chv
  %arrayidx7 = getelementptr inbounds i32* %call, i64 %indvars.iv140
  store i32 %row.0, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %call2, i64 %indvars.iv140
  store i32 %col.0, i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next141 = add i64 %indvars.iv140, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %chvsize
  br i1 %exitcond, label %if.end42, label %for.body

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv144 = phi i64 [ %2, %for.body17.lr.ph ], [ %indvars.iv.next145, %for.body17 ]
  %indvars.iv142 = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next143, %for.body17 ]
  %arrayidx19 = getelementptr inbounds i32* %chvind, i64 %indvars.iv142
  %5 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %5, -1
  %sub24 = select i1 %cmp20, i32 0, i32 %5
  %row.1 = sub nsw i32 %chv, %sub24
  %add22 = select i1 %cmp20, i32 %5, i32 0
  %col.1 = add nsw i32 %add22, %chv
  %arrayidx27 = getelementptr inbounds i32* %call, i64 %indvars.iv144
  store i32 %col.1, i32* %arrayidx27, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %call2, i64 %indvars.iv144
  store i32 %row.1, i32* %arrayidx29, align 4, !tbaa !3
  %indvars.iv.next143 = add i64 %indvars.iv142, 1
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv146 = trunc i64 %indvars.iv.next143 to i32
  %exitcond147 = icmp eq i32 %lftr.wideiv146, %chvsize
  br i1 %exitcond147, label %if.end42, label %for.body17

if.then37:                                        ; preds = %entry
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext
  tail call void @IVfill(i32 %chvsize, i32* %add.ptr, i32 %chv) #4
  %add.ptr39 = getelementptr inbounds i32* %call2, i64 %idx.ext
  tail call void @IVcopy(i32 %chvsize, i32* %add.ptr39, i32* %chvind) #4
  br label %if.end42

if.end42:                                         ; preds = %for.cond15.preheader, %for.body17, %for.cond.preheader, %for.body, %entry, %if.then37
  %add44 = add nsw i32 %0, %chvsize
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add44) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add44) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %6 = load i32* %inputMode, align 4, !tbaa !3
  %cmp47 = icmp eq i32 %6, 1
  br i1 %cmp47, label %if.then48, label %if.end67

if.then48:                                        ; preds = %if.end42
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call49 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %idx.ext50 = sext i32 %0 to i64
  %add.ptr51 = getelementptr inbounds double* %call49, i64 %idx.ext50
  tail call void @DVcopy(i32 %chvsize, double* %add.ptr51, double* %chvent) #4
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add44) #4
  br label %if.end67

if.end67:                                         ; preds = %if.end42, %if.then48
  %7 = load i32* %nent1, align 4, !tbaa !3
  %add69 = add nsw i32 %7, %chvsize
  store i32 %add69, i32* %nent1, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %chv, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %chvsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %chvind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %chvent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %chv, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %chvsize, 0
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %chvind, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %chvent, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([96 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputChevron(%struct._InpMtx* %inpmtx, i32 %chv, i32 %chvsize, i32* %chvind, double* %chvent) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond45 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %rowstride, 1
  %or.cond46 = or i1 %or.cond45, %cmp5
  %cmp7 = icmp slt i32 %colstride, 1
  %or.cond47 = or i1 %or.cond46, %cmp7
  %cmp9 = icmp eq i32* %rowind, null
  %or.cond48 = or i1 %or.cond47, %cmp9
  %cmp11 = icmp eq i32* %colind, null
  %or.cond49 = or i1 %or.cond48, %cmp11
  br i1 %or.cond49, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %1, 0
  br i1 %cmp12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([105 x i8]* @.str28, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %if.end
  %cmp16 = icmp eq i32 %nrow, 0
  %cmp18 = icmp eq i32 %ncol, 0
  %or.cond50 = or i1 %cmp16, %cmp18
  br i1 %or.cond50, label %return, label %if.end20

if.end20:                                         ; preds = %if.end15
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* null) #6
  br label %return

return:                                           ; preds = %if.end15, %if.end20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* nocapture %rowind, i32* nocapture %colind, double* nocapture %mtxent) #0 {
entry:
  %mul = mul nsw i32 %ncol, %nrow
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %mul) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %1, label %if.end73 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond20.preheader
    i32 3, label %for.cond45.preheader
  ]

for.cond45.preheader:                             ; preds = %entry
  %cmp46295 = icmp sgt i32 %ncol, 0
  br i1 %cmp46295, label %for.body47.lr.ph, label %if.end73

for.body47.lr.ph:                                 ; preds = %for.cond45.preheader
  %cmp51290 = icmp sgt i32 %nrow, 0
  br label %for.body47

for.cond20.preheader:                             ; preds = %entry
  %cmp21287 = icmp sgt i32 %ncol, 0
  br i1 %cmp21287, label %for.body22.lr.ph, label %if.end73

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %cmp26282 = icmp sgt i32 %nrow, 0
  br label %for.body22

for.cond.preheader:                               ; preds = %entry
  %cmp3279 = icmp sgt i32 %ncol, 0
  br i1 %cmp3279, label %for.body.lr.ph, label %if.end73

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp5275 = icmp sgt i32 %nrow, 0
  br label %for.body

for.body:                                         ; preds = %for.inc14, %for.body.lr.ph
  %indvars.iv315 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next316, %for.inc14 ]
  %kk.0280 = phi i32 [ %0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc14 ]
  %arrayidx = getelementptr inbounds i32* %colind, i64 %indvars.iv315
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  br i1 %cmp5275, label %for.body6.lr.ph, label %for.inc14

for.body6.lr.ph:                                  ; preds = %for.body
  %3 = sext i32 %kk.0280 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv310 = phi i64 [ %3, %for.body6.lr.ph ], [ %indvars.iv.next311, %for.body6 ]
  %indvars.iv308 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next309, %for.body6 ]
  %arrayidx8 = getelementptr inbounds i32* %rowind, i64 %indvars.iv308
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %indvars.iv310
  store i32 %4, i32* %arrayidx10, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32* %call2, i64 %indvars.iv310
  store i32 %2, i32* %arrayidx12, align 4, !tbaa !3
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %lftr.wideiv312 = trunc i64 %indvars.iv.next309 to i32
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %nrow
  br i1 %exitcond313, label %for.cond4.for.inc14_crit_edge, label %for.body6

for.cond4.for.inc14_crit_edge:                    ; preds = %for.body6
  %5 = add i32 %kk.0280, %nrow
  br label %for.inc14

for.inc14:                                        ; preds = %for.cond4.for.inc14_crit_edge, %for.body
  %kk.1.lcssa = phi i32 [ %5, %for.cond4.for.inc14_crit_edge ], [ %kk.0280, %for.body ]
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32
  %exitcond318 = icmp eq i32 %lftr.wideiv317, %ncol
  br i1 %exitcond318, label %if.end73, label %for.body

for.body22:                                       ; preds = %for.inc38, %for.body22.lr.ph
  %indvars.iv326 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next327, %for.inc38 ]
  %kk.2288 = phi i32 [ %0, %for.body22.lr.ph ], [ %kk.3.lcssa, %for.inc38 ]
  %arrayidx24 = getelementptr inbounds i32* %colind, i64 %indvars.iv326
  %6 = load i32* %arrayidx24, align 4, !tbaa !3
  br i1 %cmp26282, label %for.body27.lr.ph, label %for.inc38

for.body27.lr.ph:                                 ; preds = %for.body22
  %7 = sext i32 %kk.2288 to i64
  br label %for.body27

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv321 = phi i64 [ %7, %for.body27.lr.ph ], [ %indvars.iv.next322, %for.body27 ]
  %indvars.iv319 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next320, %for.body27 ]
  %arrayidx29 = getelementptr inbounds i32* %rowind, i64 %indvars.iv319
  %8 = load i32* %arrayidx29, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32* %call, i64 %indvars.iv321
  store i32 %6, i32* %arrayidx31, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %call2, i64 %indvars.iv321
  store i32 %8, i32* %arrayidx33, align 4, !tbaa !3
  %indvars.iv.next320 = add i64 %indvars.iv319, 1
  %indvars.iv.next322 = add i64 %indvars.iv321, 1
  %lftr.wideiv323 = trunc i64 %indvars.iv.next320 to i32
  %exitcond324 = icmp eq i32 %lftr.wideiv323, %nrow
  br i1 %exitcond324, label %for.cond25.for.inc38_crit_edge, label %for.body27

for.cond25.for.inc38_crit_edge:                   ; preds = %for.body27
  %9 = add i32 %kk.2288, %nrow
  br label %for.inc38

for.inc38:                                        ; preds = %for.cond25.for.inc38_crit_edge, %for.body22
  %kk.3.lcssa = phi i32 [ %9, %for.cond25.for.inc38_crit_edge ], [ %kk.2288, %for.body22 ]
  %indvars.iv.next327 = add i64 %indvars.iv326, 1
  %lftr.wideiv328 = trunc i64 %indvars.iv.next327 to i32
  %exitcond329 = icmp eq i32 %lftr.wideiv328, %ncol
  br i1 %exitcond329, label %if.end73, label %for.body22

for.body47:                                       ; preds = %for.inc68, %for.body47.lr.ph
  %indvars.iv336 = phi i64 [ 0, %for.body47.lr.ph ], [ %indvars.iv.next337, %for.inc68 ]
  %kk.4296 = phi i32 [ %0, %for.body47.lr.ph ], [ %kk.5.lcssa, %for.inc68 ]
  %arrayidx49 = getelementptr inbounds i32* %colind, i64 %indvars.iv336
  %10 = load i32* %arrayidx49, align 4, !tbaa !3
  br i1 %cmp51290, label %for.body52.lr.ph, label %for.inc68

for.body52.lr.ph:                                 ; preds = %for.body47
  %11 = sext i32 %kk.4296 to i64
  br label %for.body52

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv332 = phi i64 [ %11, %for.body52.lr.ph ], [ %indvars.iv.next333, %for.body52 ]
  %indvars.iv330 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next331, %for.body52 ]
  %arrayidx54 = getelementptr inbounds i32* %rowind, i64 %indvars.iv330
  %12 = load i32* %arrayidx54, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %12, %10
  %arrayidx61 = getelementptr inbounds i32* %call, i64 %indvars.iv332
  %. = select i1 %cmp55, i32 %10, i32 %12
  store i32 %., i32* %arrayidx61, align 4, !tbaa !3
  %sub = sub nsw i32 %10, %12
  %arrayidx63 = getelementptr inbounds i32* %call2, i64 %indvars.iv332
  store i32 %sub, i32* %arrayidx63, align 4, !tbaa !3
  %indvars.iv.next331 = add i64 %indvars.iv330, 1
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %lftr.wideiv334 = trunc i64 %indvars.iv.next331 to i32
  %exitcond335 = icmp eq i32 %lftr.wideiv334, %nrow
  br i1 %exitcond335, label %for.cond50.for.inc68_crit_edge, label %for.body52

for.cond50.for.inc68_crit_edge:                   ; preds = %for.body52
  %13 = add i32 %kk.4296, %nrow
  br label %for.inc68

for.inc68:                                        ; preds = %for.cond50.for.inc68_crit_edge, %for.body47
  %kk.5.lcssa = phi i32 [ %13, %for.cond50.for.inc68_crit_edge ], [ %kk.4296, %for.body47 ]
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32
  %exitcond339 = icmp eq i32 %lftr.wideiv338, %ncol
  br i1 %exitcond339, label %if.end73, label %for.body47

if.end73:                                         ; preds = %for.cond45.preheader, %for.inc68, %for.cond20.preheader, %for.inc38, %for.cond.preheader, %for.inc14, %entry
  %add = add nsw i32 %0, %mul
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %14 = load i32* %inputMode, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %14, 1
  br i1 %cmp79, label %if.then80, label %if.end105

if.then80:                                        ; preds = %if.end73
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call81 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %cmp83272 = icmp sgt i32 %ncol, 0
  br i1 %cmp83272, label %for.cond85.preheader.lr.ph, label %for.end101

for.cond85.preheader.lr.ph:                       ; preds = %if.then80
  %cmp86268 = icmp sgt i32 %nrow, 0
  br label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.inc99, %for.cond85.preheader.lr.ph
  %jj.3274 = phi i32 [ 0, %for.cond85.preheader.lr.ph ], [ %inc100, %for.inc99 ]
  %kk.6273 = phi i32 [ %0, %for.cond85.preheader.lr.ph ], [ %kk.7.lcssa, %for.inc99 ]
  br i1 %cmp86268, label %for.body87.lr.ph, label %for.inc99

for.body87.lr.ph:                                 ; preds = %for.cond85.preheader
  %mul89 = mul nsw i32 %jj.3274, %colstride
  %15 = sext i32 %kk.6273 to i64
  br label %for.body87

for.body87:                                       ; preds = %for.body87, %for.body87.lr.ph
  %indvars.iv303 = phi i64 [ %15, %for.body87.lr.ph ], [ %indvars.iv.next304, %for.body87 ]
  %indvars.iv301 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next302, %for.body87 ]
  %16 = trunc i64 %indvars.iv301 to i32
  %mul88 = mul nsw i32 %16, %rowstride
  %add90 = add nsw i32 %mul88, %mul89
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double* %mtxent, i64 %idxprom91
  %17 = load double* %arrayidx92, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds double* %call81, i64 %indvars.iv303
  store double %17, double* %arrayidx94, align 8, !tbaa !4
  %indvars.iv.next302 = add i64 %indvars.iv301, 1
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %lftr.wideiv305 = trunc i64 %indvars.iv.next302 to i32
  %exitcond306 = icmp eq i32 %lftr.wideiv305, %nrow
  br i1 %exitcond306, label %for.cond85.for.inc99_crit_edge, label %for.body87

for.cond85.for.inc99_crit_edge:                   ; preds = %for.body87
  %18 = add i32 %kk.6273, %nrow
  br label %for.inc99

for.inc99:                                        ; preds = %for.cond85.for.inc99_crit_edge, %for.cond85.preheader
  %kk.7.lcssa = phi i32 [ %18, %for.cond85.for.inc99_crit_edge ], [ %kk.6273, %for.cond85.preheader ]
  %inc100 = add nsw i32 %jj.3274, 1
  %exitcond307 = icmp eq i32 %inc100, %ncol
  br i1 %exitcond307, label %for.end101, label %for.cond85.preheader

for.end101:                                       ; preds = %for.inc99, %if.then80
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #4
  %.pr = load i32* %inputMode, align 4, !tbaa !3
  br label %if.end105

if.end105:                                        ; preds = %for.end101, %if.end73
  %19 = phi i32 [ %.pr, %for.end101 ], [ %14, %if.end73 ]
  %cmp107 = icmp eq i32 %19, 2
  br i1 %cmp107, label %if.then108, label %if.end147

if.then108:                                       ; preds = %if.end105
  %dvecDV110 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call111 = tail call double* @DV_entries(%struct._DV* %dvecDV110) #4
  %cmp114265 = icmp sgt i32 %ncol, 0
  br i1 %cmp114265, label %for.cond116.preheader.lr.ph, label %for.end142

for.cond116.preheader.lr.ph:                      ; preds = %if.then108
  %cmp117262 = icmp sgt i32 %nrow, 0
  br label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.inc140, %for.cond116.preheader.lr.ph
  %jj.4267 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc141, %for.inc140 ]
  %kk.8266 = phi i32 [ %0, %for.cond116.preheader.lr.ph ], [ %kk.9.lcssa, %for.inc140 ]
  br i1 %cmp117262, label %for.body118.lr.ph, label %for.inc140

for.body118.lr.ph:                                ; preds = %for.cond116.preheader
  %mul120 = mul nsw i32 %jj.4267, %colstride
  %20 = sext i32 %kk.8266 to i64
  br label %for.body118

for.body118:                                      ; preds = %for.body118, %for.body118.lr.ph
  %indvars.iv298 = phi i64 [ %20, %for.body118.lr.ph ], [ %indvars.iv.next299, %for.body118 ]
  %indvars.iv = phi i64 [ 0, %for.body118.lr.ph ], [ %indvars.iv.next, %for.body118 ]
  %21 = trunc i64 %indvars.iv to i32
  %mul119 = mul nsw i32 %21, %rowstride
  %add121 = add nsw i32 %mul119, %mul120
  %mul122 = shl nsw i32 %add121, 1
  %idxprom123 = sext i32 %mul122 to i64
  %arrayidx124 = getelementptr inbounds double* %mtxent, i64 %idxprom123
  %22 = load double* %arrayidx124, align 8, !tbaa !4
  %23 = trunc i64 %indvars.iv298 to i32
  %mul125 = shl nsw i32 %23, 1
  %idxprom126 = sext i32 %mul125 to i64
  %arrayidx127 = getelementptr inbounds double* %call111, i64 %idxprom126
  store double %22, double* %arrayidx127, align 8, !tbaa !4
  %add129260 = or i32 %mul122, 1
  %idxprom130 = sext i32 %add129260 to i64
  %arrayidx131 = getelementptr inbounds double* %mtxent, i64 %idxprom130
  %24 = load double* %arrayidx131, align 8, !tbaa !4
  %add133261 = or i32 %mul125, 1
  %idxprom134 = sext i32 %add133261 to i64
  %arrayidx135 = getelementptr inbounds double* %call111, i64 %idxprom134
  store double %24, double* %arrayidx135, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next299 = add i64 %indvars.iv298, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nrow
  br i1 %exitcond, label %for.cond116.for.inc140_crit_edge, label %for.body118

for.cond116.for.inc140_crit_edge:                 ; preds = %for.body118
  %25 = add i32 %kk.8266, %nrow
  br label %for.inc140

for.inc140:                                       ; preds = %for.cond116.for.inc140_crit_edge, %for.cond116.preheader
  %kk.9.lcssa = phi i32 [ %25, %for.cond116.for.inc140_crit_edge ], [ %kk.8266, %for.cond116.preheader ]
  %inc141 = add nsw i32 %jj.4267, 1
  %exitcond300 = icmp eq i32 %inc141, %ncol
  br i1 %exitcond300, label %for.end142, label %for.cond116.preheader

for.end142:                                       ; preds = %for.inc140, %if.then108
  %mul146 = shl nsw i32 %add, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV110, i32 %mul146) #4
  br label %if.end147

if.end147:                                        ; preds = %for.end142, %if.end105
  %26 = load i32* %nent1, align 4, !tbaa !3
  %add150 = add nsw i32 %26, %mul
  store i32 %add150, i32* %nent1, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond50 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %rowstride, 1
  %or.cond51 = or i1 %or.cond50, %cmp5
  %cmp7 = icmp slt i32 %colstride, 1
  %or.cond52 = or i1 %or.cond51, %cmp7
  %cmp9 = icmp eq i32* %rowind, null
  %or.cond53 = or i1 %or.cond52, %cmp9
  %cmp11 = icmp eq i32* %colind, null
  %or.cond54 = or i1 %or.cond53, %cmp11
  %cmp13 = icmp eq double* %mtxent, null
  %or.cond55 = or i1 %or.cond54, %cmp13
  br i1 %or.cond55, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([77 x i8]* @.str29, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %1, 1
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([98 x i8]* @.str30, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end
  %cmp18 = icmp eq i32 %nrow, 0
  %cmp20 = icmp eq i32 %ncol, 0
  %or.cond56 = or i1 %cmp18, %cmp20
  br i1 %or.cond56, label %return, label %if.end22

if.end22:                                         ; preds = %if.end17
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #6
  br label %return

return:                                           ; preds = %if.end17, %if.end22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond50 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %rowstride, 1
  %or.cond51 = or i1 %or.cond50, %cmp5
  %cmp7 = icmp slt i32 %colstride, 1
  %or.cond52 = or i1 %or.cond51, %cmp7
  %cmp9 = icmp eq i32* %rowind, null
  %or.cond53 = or i1 %or.cond52, %cmp9
  %cmp11 = icmp eq i32* %colind, null
  %or.cond54 = or i1 %or.cond53, %cmp11
  %cmp13 = icmp eq double* %mtxent, null
  %or.cond55 = or i1 %or.cond54, %cmp13
  br i1 %or.cond55, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str31, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %1, 2
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([104 x i8]* @.str32, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end
  %cmp18 = icmp eq i32 %nrow, 0
  %cmp20 = icmp eq i32 %ncol, 0
  %or.cond56 = or i1 %cmp18, %cmp20
  br i1 %or.cond56, label %return, label %if.end22

if.end22:                                         ; preds = %if.end17
  tail call fastcc void @inputMatrix(%struct._InpMtx* %inpmtx, i32 %nrow, i32 %ncol, i32 %rowstride, i32 %colstride, i32* %rowind, i32* %colind, double* %mtxent) #6
  br label %return

return:                                           ; preds = %if.end17, %if.end22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %ntriples, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %rowids, null
  %or.cond23 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colids, null
  %or.cond24 = or i1 %or.cond23, %cmp5
  br i1 %or.cond24, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str33, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str34, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* null) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  tail call fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %ntriples) #6
  %nent1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent1, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call2 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i32* %call, i64 %idx.ext
  tail call void @IVcopy(i32 %ntriples, i32* %add.ptr, i32* %rowids) #4
  %add.ptr4 = getelementptr inbounds i32* %call2, i64 %idx.ext
  tail call void @IVcopy(i32 %ntriples, i32* %add.ptr4, i32* %colids) #4
  %add = add nsw i32 %0, %ntriples
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %add) #4
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %add) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %1, label %if.end24 [
    i32 1, label %if.then
    i32 2, label %if.then15
  ]

if.then:                                          ; preds = %entry
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call8 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  %add.ptr10 = getelementptr inbounds double* %call8, i64 %idx.ext
  tail call void @DVcopy(i32 %ntriples, double* %add.ptr10, double* %entries) #4
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %add) #4
  br label %if.end24

if.then15:                                        ; preds = %entry
  %dvecDV17 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call18 = tail call double* @DV_entries(%struct._DV* %dvecDV17) #4
  %mul = shl nsw i32 %0, 1
  %idx.ext19 = sext i32 %mul to i64
  %add.ptr20 = getelementptr inbounds double* %call18, i64 %idx.ext19
  tail call void @ZVcopy(i32 %ntriples, double* %add.ptr20, double* %entries) #4
  %mul23 = shl nsw i32 %add, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV17, i32 %mul23) #4
  br label %if.end24

if.end24:                                         ; preds = %entry, %if.then15, %if.then
  %2 = load i32* %nent1, align 4, !tbaa !3
  %add26 = add nsw i32 %2, %ntriples
  store i32 %add26, i32* %nent1, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputRealTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %ntriples, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %rowids, null
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colids, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %entries, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str35, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([96 x i8]* @.str36, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_inputComplexTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %ntriples, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %rowids, null
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %colids, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq double* %entries, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str37, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str38, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call fastcc void @inputTriples(%struct._InpMtx* %inpmtx, i32 %ntriples, i32* %rowids, i32* %colids, double* %entries) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @prepareToAddNewEntries(%struct._InpMtx* %inpmtx, i32 %nnewent) #0 {
entry:
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %0 = load i32* %nent, align 4, !tbaa !3
  %add = add nsw i32 %0, %nnewent
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  %1 = load i32* %maxnent, align 4, !tbaa !3
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #4
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 2, i32* %storageMode, align 4, !tbaa !3
  %.pre = load i32* %nent, align 4, !tbaa !3
  %.pre31 = load i32* %maxnent, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre31, %if.then ], [ %1, %entry ]
  %3 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %add2 = add nsw i32 %3, %nnewent
  %cmp4 = icmp sgt i32 %add2, %2
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %conv = sitofp i32 %2 to double
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5
  %4 = load double* %resizeMultiple, align 8, !tbaa !4
  %mul = fmul double %conv, %4
  %conv7 = fptosi double %mul to i32
  %cmp10 = icmp slt i32 %conv7, %add2
  %add2.conv7 = select i1 %cmp10, i32 %add2, i32 %conv7
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %add2.conv7) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %if.end
  ret void
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
