; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@FrontMtx_loadEntries.one = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in FrontMtx_loadEntries(%p,%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A\0A # inside loadEntries for chv %d, sigma = %12.4e + i*%12.4e\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"\0A inpmtxA chevron %d : chvsize = %d\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"\0A chvind\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"\0A chvent\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"\0A inpmtxB chevron %d : chvsize = %d\00", align 1
@.str6 = private unnamed_addr constant [90 x i8] c"\0A fatal error in FrontMtx_loadEntries()\0A chevron is hermitian\0A sigma = %12.4e + %12.4e*i\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_loadEntries(%struct._Chv* %chv, %struct._Pencil* %pencil, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %one = alloca [2 x double], align 16
  %chvent = alloca double*, align 8
  %chvsize = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %chvind = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %ierr167 = alloca i32, align 4
  %0 = bitcast [2 x double]* %one to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x double]* @FrontMtx_loadEntries.one to i8*), i64 16, i32 16, i1 false)
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct._Pencil* %pencil, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp sgt i32 %msglvl, 3
  br i1 %cmp3, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  %arraydecay.pre = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  %2 = load i32* %id, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0
  %3 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  %4 = load double* %arrayidx7, align 8, !tbaa !4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 %2, double %3, double %4) #5
  %call9 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then4
  %arraydecay.pre-phi = phi double* [ %arraydecay.pre, %if.end.if.end10_crit_edge ], [ %arrayidx, %if.then4 ]
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5
  %inpmtxA11 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %5 = load %struct._InpMtx** %inpmtxA11, align 8, !tbaa !0
  %inpmtxB13 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %6 = load %struct._InpMtx** %inpmtxB13, align 8, !tbaa !0
  %cmp14 = icmp eq %struct._InpMtx* %5, null
  br i1 %cmp14, label %if.else46, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  %7 = load i32* %nD, align 4, !tbaa !3
  %cmp16512 = icmp sgt i32 %7, 0
  br i1 %cmp16512, label %for.body.lr.ph, label %if.end145

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %inputMode = getelementptr inbounds %struct._InpMtx* %5, i64 0, i32 2
  %arraydecay44 = getelementptr inbounds [2 x double]* %one, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv530 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next531, %for.inc ]
  %8 = load i32** %colind, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %8, i64 %indvars.iv530
  %9 = load i32* %arrayidx17, align 4, !tbaa !3
  %10 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %10, label %if.end24 [
    i32 1, label %if.then19
    i32 2, label %if.then22
  ]

if.then19:                                        ; preds = %for.body
  call void @InpMtx_realVector(%struct._InpMtx* %5, i32 %9, i32* %chvsize, i32** %chvind, double** %chvent) #5
  br label %if.end24

if.then22:                                        ; preds = %for.body
  call void @InpMtx_complexVector(%struct._InpMtx* %5, i32 %9, i32* %chvsize, i32** %chvind, double** %chvent) #5
  br label %if.end24

if.end24:                                         ; preds = %for.body, %if.then22, %if.then19
  %11 = load i32* %chvsize, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %11, 0
  br i1 %cmp25, label %if.then26, label %for.inc

if.then26:                                        ; preds = %if.end24
  br i1 %cmp3, label %if.then28, label %if.end43

if.then28:                                        ; preds = %if.then26
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), i32 %9, i32 %11) #5
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %13 = load i32* %chvsize, align 4, !tbaa !3
  %14 = load i32** %chvind, align 8, !tbaa !0
  %call31 = call i32 @IVfp80(%struct._IO_FILE* %msgFile, i32 %13, i32* %14, i32 80, i32* %ierr) #5
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %16 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %16, label %if.end41 [
    i32 1, label %if.then35
    i32 2, label %if.then39
  ]

if.then35:                                        ; preds = %if.then28
  %17 = load i32* %chvsize, align 4, !tbaa !3
  %18 = load double** %chvent, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %17, double* %18) #5
  br label %if.end41

if.then39:                                        ; preds = %if.then28
  %19 = load i32* %chvsize, align 4, !tbaa !3
  %mul = shl nsw i32 %19, 1
  %20 = load double** %chvent, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %mul, double* %20) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then28, %if.then39, %if.then35
  %call42 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre = load i32* %chvsize, align 4, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.then26
  %21 = phi i32 [ %.pre, %if.end41 ], [ %11, %if.then26 ]
  %22 = load i32** %chvind, align 8, !tbaa !0
  %23 = load double** %chvent, align 8, !tbaa !0
  call void @Chv_addChevron(%struct._Chv* %chv, double* %arraydecay44, i32 %9, i32 %21, i32* %22, double* %23) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.end43
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %24 = load i32* %nD, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv.next531 to i32
  %cmp16 = icmp slt i32 %25, %24
  br i1 %cmp16, label %for.body, label %if.end145

if.else46:                                        ; preds = %if.end10
  %call48 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %26 = load i32* %type, align 4, !tbaa !3
  switch i32 %26, label %if.end145 [
    i32 1, label %if.then50
    i32 2, label %if.then95
  ]

if.then50:                                        ; preds = %if.else46
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %27 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %27, label %if.end145 [
    i32 0, label %if.then55
    i32 1, label %if.then55
    i32 2, label %if.then70
  ]

if.then55:                                        ; preds = %if.then50, %if.then50
  %28 = load i32* %nD, align 4, !tbaa !3
  %cmp58490 = icmp sgt i32 %28, 0
  br i1 %cmp58490, label %for.body59.lr.ph, label %if.end145

for.body59.lr.ph:                                 ; preds = %if.then55
  %nU56 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %29 = load i32* %nU56, align 4, !tbaa !3
  %add = add nsw i32 %29, %28
  %30 = sext i32 %add to i64
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv522 = phi i64 [ %30, %for.body59.lr.ph ], [ %indvars.iv.next523, %for.body59 ]
  %off.0492 = phi i32 [ 0, %for.body59.lr.ph ], [ %add63, %for.body59 ]
  %ii47.0491 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc65, %for.body59 ]
  %idxprom60 = sext i32 %off.0492 to i64
  %arrayidx61 = getelementptr inbounds double* %call48, i64 %idxprom60
  %31 = load double* %arrayidx61, align 8, !tbaa !4
  %add62 = fadd double %31, 1.000000e+00
  store double %add62, double* %arrayidx61, align 8, !tbaa !4
  %32 = trunc i64 %indvars.iv522 to i32
  %add63 = add nsw i32 %32, %off.0492
  %indvars.iv.next523 = add i64 %indvars.iv522, -1
  %inc65 = add nsw i32 %ii47.0491, 1
  %cmp58 = icmp slt i32 %inc65, %28
  br i1 %cmp58, label %for.body59, label %if.end145

if.then70:                                        ; preds = %if.then50
  %33 = load i32* %nD, align 4, !tbaa !3
  %nL72 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %34 = load i32* %nL72, align 4, !tbaa !3
  %cmp80496 = icmp sgt i32 %33, 0
  br i1 %cmp80496, label %for.body81.lr.ph, label %if.end145

for.body81.lr.ph:                                 ; preds = %if.then70
  %nU74 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %add77 = add i32 %33, -1
  %35 = load i32* %nU74, align 4, !tbaa !3
  %sub78 = add i32 %add77, %34
  %36 = add i32 %34, %35
  %37 = shl i32 %33, 1
  %38 = add i32 %36, %37
  %39 = sext i32 %38 to i64
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv524 = phi i64 [ %39, %for.body81.lr.ph ], [ %indvars.iv.next525, %for.body81 ]
  %off.1498 = phi i32 [ %sub78, %for.body81.lr.ph ], [ %add85, %for.body81 ]
  %ii47.1497 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc88, %for.body81 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, -2
  %idxprom82 = sext i32 %off.1498 to i64
  %arrayidx83 = getelementptr inbounds double* %call48, i64 %idxprom82
  %40 = load double* %arrayidx83, align 8, !tbaa !4
  %add84 = fadd double %40, 1.000000e+00
  store double %add84, double* %arrayidx83, align 8, !tbaa !4
  %41 = trunc i64 %indvars.iv.next525 to i32
  %add85 = add nsw i32 %41, %off.1498
  %inc88 = add nsw i32 %ii47.1497, 1
  %cmp80 = icmp slt i32 %inc88, %33
  br i1 %cmp80, label %for.body81, label %if.end145

if.then95:                                        ; preds = %if.else46
  %symflag96 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %42 = load i32* %symflag96, align 4, !tbaa !3
  switch i32 %42, label %if.end145 [
    i32 0, label %if.then101
    i32 1, label %if.then101
    i32 2, label %if.then119
  ]

if.then101:                                       ; preds = %if.then95, %if.then95
  %43 = load i32* %nD, align 4, !tbaa !3
  %cmp105501 = icmp sgt i32 %43, 0
  br i1 %cmp105501, label %for.body106.lr.ph, label %if.end145

for.body106.lr.ph:                                ; preds = %if.then101
  %nU102 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %44 = load i32* %nU102, align 4, !tbaa !3
  %add103 = add nsw i32 %44, %43
  %45 = sext i32 %add103 to i64
  br label %for.body106

for.body106:                                      ; preds = %for.body106.lr.ph, %for.body106
  %indvars.iv526 = phi i64 [ %45, %for.body106.lr.ph ], [ %indvars.iv.next527, %for.body106 ]
  %off.2503 = phi i32 [ 0, %for.body106.lr.ph ], [ %add111, %for.body106 ]
  %ii47.2502 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc114, %for.body106 ]
  %mul107 = shl nsw i32 %off.2503, 1
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds double* %call48, i64 %idxprom108
  %46 = load double* %arrayidx109, align 8, !tbaa !4
  %add110 = fadd double %46, 1.000000e+00
  store double %add110, double* %arrayidx109, align 8, !tbaa !4
  %47 = trunc i64 %indvars.iv526 to i32
  %add111 = add nsw i32 %47, %off.2503
  %indvars.iv.next527 = add i64 %indvars.iv526, -1
  %inc114 = add nsw i32 %ii47.2502, 1
  %cmp105 = icmp slt i32 %inc114, %43
  br i1 %cmp105, label %for.body106, label %if.end145

if.then119:                                       ; preds = %if.then95
  %48 = load i32* %nD, align 4, !tbaa !3
  %nL121 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %49 = load i32* %nL121, align 4, !tbaa !3
  %cmp130507 = icmp sgt i32 %48, 0
  br i1 %cmp130507, label %for.body131.lr.ph, label %if.end145

for.body131.lr.ph:                                ; preds = %if.then119
  %nU123 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %add127 = add i32 %48, -1
  %50 = load i32* %nU123, align 4, !tbaa !3
  %sub128 = add i32 %add127, %49
  %51 = add i32 %49, %50
  %52 = shl i32 %48, 1
  %53 = add i32 %51, %52
  %54 = sext i32 %53 to i64
  br label %for.body131

for.body131:                                      ; preds = %for.body131.lr.ph, %for.body131
  %indvars.iv528 = phi i64 [ %54, %for.body131.lr.ph ], [ %indvars.iv.next529, %for.body131 ]
  %off.3509 = phi i32 [ %sub128, %for.body131.lr.ph ], [ %add136, %for.body131 ]
  %ii47.3508 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc139, %for.body131 ]
  %indvars.iv.next529 = add i64 %indvars.iv528, -2
  %mul132 = shl nsw i32 %off.3509, 1
  %idxprom133 = sext i32 %mul132 to i64
  %arrayidx134 = getelementptr inbounds double* %call48, i64 %idxprom133
  %55 = load double* %arrayidx134, align 8, !tbaa !4
  %add135 = fadd double %55, 1.000000e+00
  store double %add135, double* %arrayidx134, align 8, !tbaa !4
  %56 = trunc i64 %indvars.iv.next529 to i32
  %add136 = add nsw i32 %56, %off.3509
  %inc139 = add nsw i32 %ii47.3508, 1
  %cmp130 = icmp slt i32 %inc139, %48
  br i1 %cmp130, label %for.body131, label %if.end145

if.end145:                                        ; preds = %for.cond.preheader, %for.inc, %if.then119, %for.body131, %if.then101, %for.body106, %if.then70, %for.body81, %if.then55, %for.body59, %if.then95, %if.else46, %if.then50
  %cmp146 = icmp eq %struct._InpMtx* %6, null
  br i1 %cmp146, label %if.else187, label %for.cond149.preheader

for.cond149.preheader:                            ; preds = %if.end145
  %57 = load i32* %nD, align 4, !tbaa !3
  %cmp150488 = icmp sgt i32 %57, 0
  br i1 %cmp150488, label %for.body151.lr.ph, label %if.end317

for.body151.lr.ph:                                ; preds = %for.cond149.preheader
  %inputMode154 = getelementptr inbounds %struct._InpMtx* %6, i64 0, i32 2
  %inputMode172 = getelementptr inbounds %struct._InpMtx* %5, i64 0, i32 2
  br label %for.body151

for.body151:                                      ; preds = %for.inc184, %for.body151.lr.ph
  %indvars.iv520 = phi i64 [ 0, %for.body151.lr.ph ], [ %indvars.iv.next521, %for.inc184 ]
  %58 = load i32** %colind, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds i32* %58, i64 %indvars.iv520
  %59 = load i32* %arrayidx153, align 4, !tbaa !3
  %60 = load i32* %inputMode154, align 4, !tbaa !3
  %cmp155 = icmp eq i32 %60, 1
  br i1 %cmp155, label %if.then156, label %if.else157

if.then156:                                       ; preds = %for.body151
  call void @InpMtx_realVector(%struct._InpMtx* %6, i32 %59, i32* %chvsize, i32** %chvind, double** %chvent) #5
  br label %if.end162

if.else157:                                       ; preds = %for.body151
  %61 = load i32* %inputMode172, align 4, !tbaa !3
  %cmp159 = icmp eq i32 %61, 2
  br i1 %cmp159, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.else157
  call void @InpMtx_complexVector(%struct._InpMtx* %6, i32 %59, i32* %chvsize, i32** %chvind, double** %chvent) #5
  br label %if.end162

if.end162:                                        ; preds = %if.else157, %if.then160, %if.then156
  %62 = load i32* %chvsize, align 4, !tbaa !3
  %cmp163 = icmp sgt i32 %62, 0
  br i1 %cmp163, label %if.then164, label %for.inc184

if.then164:                                       ; preds = %if.end162
  br i1 %cmp3, label %if.then166, label %if.end182

if.then166:                                       ; preds = %if.then164
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i32 %59, i32 %62) #5
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %64 = load i32* %chvsize, align 4, !tbaa !3
  %65 = load i32** %chvind, align 8, !tbaa !0
  %call170 = call i32 @IVfp80(%struct._IO_FILE* %msgFile, i32 %64, i32* %65, i32 80, i32* %ierr167) #5
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %67 = load i32* %inputMode172, align 4, !tbaa !3
  switch i32 %67, label %if.end182 [
    i32 1, label %if.then174
    i32 2, label %if.then178
  ]

if.then174:                                       ; preds = %if.then166
  %68 = load i32* %chvsize, align 4, !tbaa !3
  %69 = load double** %chvent, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %68, double* %69) #5
  br label %if.end182

if.then178:                                       ; preds = %if.then166
  %70 = load i32* %chvsize, align 4, !tbaa !3
  %mul179 = shl nsw i32 %70, 1
  %71 = load double** %chvent, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %mul179, double* %71) #5
  br label %if.end182

if.end182:                                        ; preds = %if.then166, %if.then174, %if.then178, %if.then164
  %72 = load i32* %chvsize, align 4, !tbaa !3
  %73 = load i32** %chvind, align 8, !tbaa !0
  %74 = load double** %chvent, align 8, !tbaa !0
  call void @Chv_addChevron(%struct._Chv* %chv, double* %arraydecay.pre-phi, i32 %59, i32 %72, i32* %73, double* %74) #5
  br label %for.inc184

for.inc184:                                       ; preds = %if.end162, %if.end182
  %indvars.iv.next521 = add i64 %indvars.iv520, 1
  %75 = load i32* %nD, align 4, !tbaa !3
  %76 = trunc i64 %indvars.iv.next521 to i32
  %cmp150 = icmp slt i32 %76, %75
  br i1 %cmp150, label %for.body151, label %if.end317

if.else187:                                       ; preds = %if.end145
  %call192 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %type193 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %77 = load i32* %type193, align 4, !tbaa !3
  switch i32 %77, label %if.end317 [
    i32 1, label %if.then195
    i32 2, label %if.then243
  ]

if.then195:                                       ; preds = %if.else187
  %symflag196 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %78 = load i32* %symflag196, align 4, !tbaa !3
  switch i32 %78, label %if.end317 [
    i32 0, label %if.then198
    i32 2, label %if.then216
  ]

if.then198:                                       ; preds = %if.then195
  %79 = load i32* %nD, align 4, !tbaa !3
  %cmp202466 = icmp sgt i32 %79, 0
  br i1 %cmp202466, label %for.body203.lr.ph, label %if.end317

for.body203.lr.ph:                                ; preds = %if.then198
  %nU199 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %80 = load i32* %nU199, align 4, !tbaa !3
  %add200 = add nsw i32 %80, %79
  %81 = sext i32 %add200 to i64
  br label %for.body203

for.body203:                                      ; preds = %for.body203.lr.ph, %for.body203
  %indvars.iv = phi i64 [ %81, %for.body203.lr.ph ], [ %indvars.iv.next, %for.body203 ]
  %off190.0468 = phi i32 [ 0, %for.body203.lr.ph ], [ %add208, %for.body203 ]
  %ii189.0467 = phi i32 [ 0, %for.body203.lr.ph ], [ %inc211, %for.body203 ]
  %82 = load double* %arraydecay.pre-phi, align 8, !tbaa !4
  %idxprom205 = sext i32 %off190.0468 to i64
  %arrayidx206 = getelementptr inbounds double* %call192, i64 %idxprom205
  %83 = load double* %arrayidx206, align 8, !tbaa !4
  %add207 = fadd double %82, %83
  store double %add207, double* %arrayidx206, align 8, !tbaa !4
  %84 = trunc i64 %indvars.iv to i32
  %add208 = add nsw i32 %84, %off190.0468
  %indvars.iv.next = add i64 %indvars.iv, -1
  %inc211 = add nsw i32 %ii189.0467, 1
  %cmp202 = icmp slt i32 %inc211, %79
  br i1 %cmp202, label %for.body203, label %if.end317

if.then216:                                       ; preds = %if.then195
  %85 = load i32* %nD, align 4, !tbaa !3
  %nL218 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %86 = load i32* %nL218, align 4, !tbaa !3
  %cmp227472 = icmp sgt i32 %85, 0
  br i1 %cmp227472, label %for.body228.lr.ph, label %if.end317

for.body228.lr.ph:                                ; preds = %if.then216
  %nU220 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %add224 = add i32 %85, -1
  %87 = load i32* %nU220, align 4, !tbaa !3
  %sub225 = add i32 %add224, %86
  %88 = add i32 %86, %87
  %89 = shl i32 %85, 1
  %90 = add i32 %88, %89
  %91 = sext i32 %90 to i64
  br label %for.body228

for.body228:                                      ; preds = %for.body228.lr.ph, %for.body228
  %indvars.iv514 = phi i64 [ %91, %for.body228.lr.ph ], [ %indvars.iv.next515, %for.body228 ]
  %off190.1474 = phi i32 [ %sub225, %for.body228.lr.ph ], [ %add233, %for.body228 ]
  %ii189.1473 = phi i32 [ 0, %for.body228.lr.ph ], [ %inc236, %for.body228 ]
  %indvars.iv.next515 = add i64 %indvars.iv514, -2
  %92 = load double* %arraydecay.pre-phi, align 8, !tbaa !4
  %idxprom230 = sext i32 %off190.1474 to i64
  %arrayidx231 = getelementptr inbounds double* %call192, i64 %idxprom230
  %93 = load double* %arrayidx231, align 8, !tbaa !4
  %add232 = fadd double %92, %93
  store double %add232, double* %arrayidx231, align 8, !tbaa !4
  %94 = trunc i64 %indvars.iv.next515 to i32
  %add233 = add nsw i32 %94, %off190.1474
  %inc236 = add nsw i32 %ii189.1473, 1
  %cmp227 = icmp slt i32 %inc236, %85
  br i1 %cmp227, label %for.body228, label %if.end317

if.then243:                                       ; preds = %if.else187
  %symflag244 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %95 = load i32* %symflag244, align 4, !tbaa !3
  switch i32 %95, label %if.end317 [
    i32 2, label %if.then284
    i32 1, label %land.lhs.true252
    i32 0, label %if.end259
  ]

land.lhs.true252:                                 ; preds = %if.then243
  %arrayidx253 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  %96 = load double* %arrayidx253, align 8, !tbaa !4
  %cmp254 = fcmp une double %96, 0.000000e+00
  br i1 %cmp254, label %if.then255, label %if.end259

if.then255:                                       ; preds = %land.lhs.true252
  %97 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %98 = load double* %arraydecay.pre-phi, align 8, !tbaa !4
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([90 x i8]* @.str6, i64 0, i64 0), double %98, double %96) #5
  call void @exit(i32 -1) #6
  unreachable

if.end259:                                        ; preds = %if.then243, %land.lhs.true252
  %99 = load i32* %nD, align 4, !tbaa !3
  %cmp263483 = icmp sgt i32 %99, 0
  br i1 %cmp263483, label %for.body264.lr.ph, label %if.end317

for.body264.lr.ph:                                ; preds = %if.end259
  %nU260 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %100 = load i32* %nU260, align 4, !tbaa !3
  %add261 = add nsw i32 %100, %99
  %arrayidx270 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  %101 = sext i32 %add261 to i64
  br label %for.body264

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv518 = phi i64 [ %101, %for.body264.lr.ph ], [ %indvars.iv.next519, %for.body264 ]
  %off190.2485 = phi i32 [ 0, %for.body264.lr.ph ], [ %add276, %for.body264 ]
  %ii189.2484 = phi i32 [ 0, %for.body264.lr.ph ], [ %inc279, %for.body264 ]
  %102 = load double* %arraydecay.pre-phi, align 8, !tbaa !4
  %mul266 = shl nsw i32 %off190.2485, 1
  %idxprom267 = sext i32 %mul266 to i64
  %arrayidx268 = getelementptr inbounds double* %call192, i64 %idxprom267
  %103 = load double* %arrayidx268, align 8, !tbaa !4
  %add269 = fadd double %102, %103
  store double %add269, double* %arrayidx268, align 8, !tbaa !4
  %104 = load double* %arrayidx270, align 8, !tbaa !4
  %add272465 = or i32 %mul266, 1
  %idxprom273 = sext i32 %add272465 to i64
  %arrayidx274 = getelementptr inbounds double* %call192, i64 %idxprom273
  %105 = load double* %arrayidx274, align 8, !tbaa !4
  %add275 = fadd double %104, %105
  store double %add275, double* %arrayidx274, align 8, !tbaa !4
  %106 = trunc i64 %indvars.iv518 to i32
  %add276 = add nsw i32 %106, %off190.2485
  %indvars.iv.next519 = add i64 %indvars.iv518, -1
  %inc279 = add nsw i32 %ii189.2484, 1
  %cmp263 = icmp slt i32 %inc279, %99
  br i1 %cmp263, label %for.body264, label %if.end317

if.then284:                                       ; preds = %if.then243
  %107 = load i32* %nD, align 4, !tbaa !3
  %nL286 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %108 = load i32* %nL286, align 4, !tbaa !3
  %cmp295478 = icmp sgt i32 %107, 0
  br i1 %cmp295478, label %for.body296.lr.ph, label %if.end317

for.body296.lr.ph:                                ; preds = %if.then284
  %nU288 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %add292 = add i32 %107, -1
  %109 = load i32* %nU288, align 4, !tbaa !3
  %sub293 = add i32 %add292, %108
  %arrayidx302 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1
  %110 = add i32 %108, %109
  %111 = shl i32 %107, 1
  %112 = add i32 %110, %111
  %113 = sext i32 %112 to i64
  br label %for.body296

for.body296:                                      ; preds = %for.body296.lr.ph, %for.body296
  %indvars.iv516 = phi i64 [ %113, %for.body296.lr.ph ], [ %indvars.iv.next517, %for.body296 ]
  %off190.3480 = phi i32 [ %sub293, %for.body296.lr.ph ], [ %add308, %for.body296 ]
  %ii189.3479 = phi i32 [ 0, %for.body296.lr.ph ], [ %inc311, %for.body296 ]
  %indvars.iv.next517 = add i64 %indvars.iv516, -2
  %114 = load double* %arraydecay.pre-phi, align 8, !tbaa !4
  %mul298 = shl nsw i32 %off190.3480, 1
  %idxprom299 = sext i32 %mul298 to i64
  %arrayidx300 = getelementptr inbounds double* %call192, i64 %idxprom299
  %115 = load double* %arrayidx300, align 8, !tbaa !4
  %add301 = fadd double %114, %115
  store double %add301, double* %arrayidx300, align 8, !tbaa !4
  %116 = load double* %arrayidx302, align 8, !tbaa !4
  %add304464 = or i32 %mul298, 1
  %idxprom305 = sext i32 %add304464 to i64
  %arrayidx306 = getelementptr inbounds double* %call192, i64 %idxprom305
  %117 = load double* %arrayidx306, align 8, !tbaa !4
  %add307 = fadd double %116, %117
  store double %add307, double* %arrayidx306, align 8, !tbaa !4
  %118 = trunc i64 %indvars.iv.next517 to i32
  %add308 = add nsw i32 %118, %off190.3480
  %inc311 = add nsw i32 %ii189.3479, 1
  %cmp295 = icmp slt i32 %inc311, %107
  br i1 %cmp295, label %for.body296, label %if.end317

if.end317:                                        ; preds = %for.cond149.preheader, %for.inc184, %if.end259, %for.body264, %if.then284, %for.body296, %if.then216, %for.body228, %if.then198, %for.body203, %if.then243, %if.else187, %if.then195
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: optsize
declare void @InpMtx_realVector(%struct._InpMtx*, i32, i32*, i32**, double**) #4

; Function Attrs: optsize
declare void @InpMtx_complexVector(%struct._InpMtx*, i32, i32*, i32**, double**) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: optsize
declare void @Chv_addChevron(%struct._Chv*, double*, i32, i32, i32*, double*) #4

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
