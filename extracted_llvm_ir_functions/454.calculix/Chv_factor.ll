; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_factor.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in Chv_factorWithNoPivoting()\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_factorWithNoPivoting()\0A patch-and-go info != NULL, strategy = %d\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A workDV is NULL \0A\00", align 1
@.str4 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A tau = %f is invalid \0A\00", align 1
@.str5 = private unnamed_addr constant [105 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A real symmetric front\0A pivoting enabled, pivotsizesIV is NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [121 x i8] c"\0A fatal error in Chv_factorWithPivoting()\0A complex symmetric or hermitian front\0A pivoting enabled, pivotsizesIV is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Chv_r1upd(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_r1upd(%p)\0A symflag = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Chv_r2upd(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Chv_r2upd(%p)\0A symflag = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [107 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv is real, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str13 = private unnamed_addr constant [110 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv is complex, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str14 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_maxabsInChevron()\0A chv->type = %d, must be real or complex\0A\00", align 1
@.str15 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [116 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv is real, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str17 = private unnamed_addr constant [119 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv is complex, chv->symflag = %d\0A must be symmetric or nonsymmetric\0A\00", align 1
@.str18 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Chv_zeroOffdiagonalOfChevron()\0A chv->type = %d, must be real or complex\0A\00", align 1
@.str19 = private unnamed_addr constant [67 x i8] c"\0A fatal error in Chv_symmetric2x2\0A chevron must be real or complex\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_factorWithNoPivoting(%struct._Chv* %chv, %struct._PatchAndGoInfo* %info) #0 {
entry:
  %wrkChv = alloca %struct._Chv, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %colmaxabs = alloca double, align 8
  %diagabs = alloca double, align 8
  %rowmaxabs = alloca double, align 8
  %colmaxabs38 = alloca double, align 8
  %diagabs39 = alloca double, align 8
  %rowmaxabs41 = alloca double, align 8
  %0 = bitcast %struct._Chv* %wrkChv to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %1)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nD1 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %3 = load i32* %nD1, align 4, !tbaa !3
  call void @Chv_setDefaultFields(%struct._Chv* %wrkChv) #7
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #7
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #7
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  %4 = load i32* %id, align 4, !tbaa !3
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %5 = load i32* %nL, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %6 = load i32* %nU, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %7 = load i32* %type, align 4, !tbaa !3
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %8 = load i32* %symflag, align 4, !tbaa !3
  %9 = load i32** %rowind, align 8, !tbaa !0
  %10 = load i32** %colind, align 8, !tbaa !0
  %call2 = call double* @Chv_entries(%struct._Chv* %chv) #7
  call void @Chv_initWithPointers(%struct._Chv* %wrkChv, i32 %4, i32 %3, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, double* %call2) #7
  %cmp3 = icmp eq %struct._PatchAndGoInfo* %info, null
  br i1 %cmp3, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %if.end
  %cmp5129 = icmp sgt i32 %3, 0
  br i1 %cmp5129, label %while.body, label %if.end92

while.body:                                       ; preds = %while.cond.preheader, %if.end9
  %nelim.0130 = phi i32 [ %inc, %if.end9 ], [ 0, %while.cond.preheader ]
  %call6 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end92, label %if.end9

if.end9:                                          ; preds = %while.body
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #7
  %inc = add nsw i32 %nelim.0130, 1
  %cmp5 = icmp slt i32 %inc, %3
  br i1 %cmp5, label %while.body, label %if.end92

if.else:                                          ; preds = %if.end
  %strategy = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 0
  %11 = load i32* %strategy, align 4, !tbaa !3
  switch i32 %11, label %if.else87 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond42.preheader
  ]

for.cond42.preheader:                             ; preds = %if.else
  %cmp43136 = icmp sgt i32 %3, 0
  br i1 %cmp43136, label %for.body44.lr.ph, label %if.end92

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %fudge = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 2
  %entries60 = getelementptr inbounds %struct._Chv* %wrkChv, i64 0, i32 8
  %fudgeIV70 = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 3
  %fudgeDV = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 4
  %colind74 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  br label %for.body44

for.cond.preheader:                               ; preds = %if.else
  %cmp12132 = icmp sgt i32 %3, 0
  br i1 %cmp12132, label %for.body.lr.ph, label %if.end92

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %toosmall = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 1
  %entries = getelementptr inbounds %struct._Chv* %wrkChv, i64 0, i32 8
  %fudgeIV = getelementptr inbounds %struct._PatchAndGoInfo* %info, i64 0, i32 3
  %colind28 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end31, %for.body.lr.ph
  %nelim.1133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end31 ]
  call void @Chv_maxabsInChevron(%struct._Chv* %wrkChv, i32 0, double* %diagabs, double* %rowmaxabs, double* %colmaxabs) #8
  %12 = load double* %rowmaxabs, align 8, !tbaa !4
  %13 = load double* %colmaxabs, align 8, !tbaa !4
  %cmp13 = fcmp oge double %12, %13
  %cond = select i1 %cmp13, double %12, double %13
  %14 = load double* %diagabs, align 8, !tbaa !4
  %15 = load double* %toosmall, align 8, !tbaa !4
  %mul = fmul double %15, %cond
  %cmp14 = fcmp ugt double %14, %mul
  br i1 %cmp14, label %if.end31, label %if.then15

if.then15:                                        ; preds = %for.body
  %16 = load i32* %type, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %16, 1
  %17 = load double** %entries, align 8, !tbaa !0
  store double 1.000000e+00, double* %17, align 8, !tbaa !4
  br i1 %cmp17, label %if.end24, label %if.else19

if.else19:                                        ; preds = %if.then15
  %arrayidx23 = getelementptr inbounds double* %17, i64 1
  store double 0.000000e+00, double* %arrayidx23, align 8, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %if.else19
  call void @Chv_zeroOffdiagonalOfChevron(%struct._Chv* %chv, i32 0) #8
  %18 = load %struct._IV** %fudgeIV, align 8, !tbaa !0
  %cmp25 = icmp eq %struct._IV* %18, null
  br i1 %cmp25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end24
  %19 = load i32** %colind28, align 8, !tbaa !0
  %20 = load i32* %19, align 4, !tbaa !3
  call void @IV_push(%struct._IV* %18, i32 %20) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end24, %for.body, %if.then26
  %call32 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #8
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #7
  %inc33 = add nsw i32 %nelim.1133, 1
  %exitcond = icmp eq i32 %inc33, %3
  br i1 %exitcond, label %if.end92, label %for.body

for.body44:                                       ; preds = %if.end82, %for.body44.lr.ph
  %nelim.2137 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc85, %if.end82 ]
  call void @Chv_maxabsInChevron(%struct._Chv* %wrkChv, i32 0, double* %diagabs39, double* %rowmaxabs41, double* %colmaxabs38) #8
  %21 = load double* %rowmaxabs41, align 8, !tbaa !4
  %22 = load double* %colmaxabs38, align 8, !tbaa !4
  %cmp45 = fcmp oge double %21, %22
  %cond49 = select i1 %cmp45, double %21, double %22
  %23 = load double* %diagabs39, align 8, !tbaa !4
  %24 = load double* %fudge, align 8, !tbaa !4
  %cmp50 = fcmp ugt double %23, %24
  br i1 %cmp50, label %if.end82, label %if.then51

if.then51:                                        ; preds = %for.body44
  %cmp52 = fcmp olt double %cond49, 1.000000e+00
  %offmaxabs40.0 = select i1 %cmp52, double 1.000000e+00, double %cond49
  %25 = load i32* %type, align 4, !tbaa !3
  %cmp56 = icmp eq i32 %25, 1
  %mul59 = fmul double %24, %offmaxabs40.0
  %26 = load double** %entries60, align 8, !tbaa !0
  store double %mul59, double* %26, align 8, !tbaa !4
  br i1 %cmp56, label %if.end69, label %if.else62

if.else62:                                        ; preds = %if.then51
  %arrayidx68 = getelementptr inbounds double* %26, i64 1
  store double 0.000000e+00, double* %arrayidx68, align 8, !tbaa !4
  br label %if.end69

if.end69:                                         ; preds = %if.then51, %if.else62
  %27 = load %struct._IV** %fudgeIV70, align 8, !tbaa !0
  %cmp71 = icmp eq %struct._IV* %27, null
  br i1 %cmp71, label %if.end76, label %if.then72

if.then72:                                        ; preds = %if.end69
  %28 = load i32** %colind74, align 8, !tbaa !0
  %29 = load i32* %28, align 4, !tbaa !3
  call void @IV_push(%struct._IV* %27, i32 %29) #7
  br label %if.end76

if.end76:                                         ; preds = %if.end69, %if.then72
  %30 = load %struct._DV** %fudgeDV, align 8, !tbaa !0
  %cmp77 = icmp eq %struct._DV* %30, null
  br i1 %cmp77, label %if.end82, label %if.then78

if.then78:                                        ; preds = %if.end76
  %sub = fsub double %23, %mul59
  %call80 = call double @fabs(double %sub) #9
  call void @DV_push(%struct._DV* %30, double %call80) #7
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %for.body44, %if.then78
  %call83 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #8
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #7
  %inc85 = add nsw i32 %nelim.2137, 1
  %exitcond140 = icmp eq i32 %inc85, %3
  br i1 %exitcond140, label %if.end92, label %for.body44

if.else87:                                        ; preds = %if.else
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), i32 %11) #7
  call void @exit(i32 -1) #6
  unreachable

if.end92:                                         ; preds = %for.cond42.preheader, %if.end82, %for.cond.preheader, %if.end31, %while.cond.preheader, %while.body, %if.end9
  %nelim.3 = phi i32 [ 0, %while.cond.preheader ], [ %nelim.0130, %while.body ], [ %inc, %if.end9 ], [ 0, %for.cond.preheader ], [ %3, %if.end31 ], [ 0, %for.cond42.preheader ], [ %3, %if.end82 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #1
  ret i32 %nelim.3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Chv_setDefaultFields(%struct._Chv*) #4

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: optsize
declare void @Chv_initWithPointers(%struct._Chv*, i32, i32, i32, i32, i32, i32, i32*, i32*, double*) #4

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_r1upd(%struct._Chv* %chv) #0 {
entry:
  %fac1.i22 = alloca double, align 8
  %fac2.i23 = alloca double, align 8
  %nD.i24 = alloca i32, align 4
  %nL.i25 = alloca i32, align 4
  %nU.i26 = alloca i32, align 4
  %fac1.i = alloca double, align 8
  %fac2.i = alloca double, align 8
  %nD.i = alloca i32, align 4
  %nL.i = alloca i32, align 4
  %nU.i = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0), %struct._Chv* null) #7
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %1, label %if.else10 [
    i32 2, label %if.then2
    i32 0, label %if.then8
    i32 1, label %if.then8
  ]

if.then2:                                         ; preds = %if.end
  %2 = bitcast double* %fac1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %fac2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %nD.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nL.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nU.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i, i32* %nL.i, i32* %nU.i) #7
  %call.i = call double* @Chv_entries(%struct._Chv* %chv) #7
  %7 = load i32* %nD.i, align 4, !tbaa !3
  %8 = load i32* %nL.i, align 4, !tbaa !3
  %add.i = add i32 %8, %7
  %sub.i = add nsw i32 %add.i, -1
  %9 = load i32* %nU.i, align 4, !tbaa !3
  %add6.i = add i32 %7, -1
  %sub7.i = add i32 %add6.i, %9
  %type.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %10 = load i32* %type.i, align 4, !tbaa !3
  switch i32 %10, label %if.end35.i [
    i32 1, label %if.then.i
    i32 2, label %if.then12.i
  ]

if.then.i:                                        ; preds = %if.then2
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds double* %call.i, i64 %idxprom.i
  %11 = load double* %arrayidx.i, align 8, !tbaa !4
  %cmp8.i = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp8.i, label %if.end14, label %if.end35.thread.i

if.then12.i:                                      ; preds = %if.then2
  %mul13.i = shl nsw i32 %sub.i, 1
  %idxprom14.i = sext i32 %mul13.i to i64
  %arrayidx15.i = getelementptr inbounds double* %call.i, i64 %idxprom14.i
  %12 = load double* %arrayidx15.i, align 8, !tbaa !4
  %add17259.i = or i32 %mul13.i, 1
  %idxprom18.i = sext i32 %add17259.i to i64
  %arrayidx19.i = getelementptr inbounds double* %call.i, i64 %idxprom18.i
  %13 = load double* %arrayidx19.i, align 8, !tbaa !4
  %cmp20.i = fcmp oeq double %12, 0.000000e+00
  %cmp21.i = fcmp oeq double %13, 0.000000e+00
  %or.cond.i = and i1 %cmp20.i, %cmp21.i
  br i1 %or.cond.i, label %if.end14, label %if.then32.i

if.end35.thread.i:                                ; preds = %if.then.i
  %div.i = fdiv double 1.000000e+00, %11
  store double %div.i, double* %fac1.i, align 8, !tbaa !4
  br label %if.then38.i

if.then32.i:                                      ; preds = %if.then12.i
  %call33.i = call i32 @Zrecip(double %12, double %13, double* %fac1.i, double* %fac2.i) #7
  %.pre.i = load i32* %type.i, align 4, !tbaa !3
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.then2
  %14 = phi i32 [ %.pre.i, %if.then32.i ], [ %10, %if.then2 ]
  switch i32 %14, label %if.end44.i [
    i32 1, label %if.end35.i.if.then38.i_crit_edge
    i32 2, label %if.then42.i
  ]

if.end35.i.if.then38.i_crit_edge:                 ; preds = %if.end35.i
  %.pre = load double* %fac1.i, align 8, !tbaa !4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i.if.then38.i_crit_edge, %if.end35.thread.i
  %15 = phi double [ %.pre, %if.end35.i.if.then38.i_crit_edge ], [ %div.i, %if.end35.thread.i ]
  call void @DVscale(i32 %sub.i, double* %call.i, double %15) #7
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end35.i
  %16 = load double* %fac1.i, align 8, !tbaa !4
  %17 = load double* %fac2.i, align 8, !tbaa !4
  call void @ZVscale(i32 %sub.i, double* %call.i, double %16, double %17) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end35.i, %if.then42.i, %if.then38.i
  %18 = load i32* %nD.i, align 4, !tbaa !3
  %cmp47263.i = icmp sgt i32 %18, 1
  br i1 %cmp47263.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end44.i
  %19 = shl i32 %7, 1
  %20 = add i32 %19, %8
  %21 = add i32 %20, %9
  %22 = sext i32 %21 to i64
  %23 = sext i32 %add.i to i64
  %24 = add i32 %add.i, -2
  %25 = sext i32 %24 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end147.for.body_crit_edge.i, %for.body.lr.ph.i
  %indvars.iv282.i = phi i64 [ %25, %for.body.lr.ph.i ], [ %indvars.iv.next283.i, %if.end147.for.body_crit_edge.i ]
  %indvars.iv276.i = phi i64 [ %23, %for.body.lr.ph.i ], [ %indvars.iv.next277.i, %if.end147.for.body_crit_edge.i ]
  %indvars.iv.i = phi i64 [ %22, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end147.for.body_crit_edge.i ]
  %usize.0273.i = phi i32 [ %sub7.i, %for.body.lr.ph.i ], [ %dec49.i, %if.end147.for.body_crit_edge.i ]
  %lsize.0271.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %if.end147.for.body_crit_edge.i ]
  %kchv.0269.i = phi i32 [ 2, %for.body.lr.ph.i ], [ %phitmp.i, %if.end147.for.body_crit_edge.i ]
  %dloc.0268.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %add48.i, %if.end147.for.body_crit_edge.i ]
  %ureal.0267.i = phi double [ undef, %for.body.lr.ph.i ], [ %ureal.1.i, %if.end147.for.body_crit_edge.i ]
  %uimag.0266.i = phi double [ undef, %for.body.lr.ph.i ], [ %uimag.1.i, %if.end147.for.body_crit_edge.i ]
  %lreal.0265.i = phi double [ undef, %for.body.lr.ph.i ], [ %lreal.1.i, %if.end147.for.body_crit_edge.i ]
  %limag.0264.i = phi double [ undef, %for.body.lr.ph.i ], [ %limag.1.i, %if.end147.for.body_crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -2
  %26 = trunc i64 %indvars.iv.next.i to i32
  %add48.i = add nsw i32 %dloc.0268.i, %26
  %dec.i = add nsw i32 %lsize.0271.i, -1
  %dec49.i = add nsw i32 %usize.0273.i, -1
  %sub50.i = sub nsw i32 %add48.i, %dec.i
  %add51.i = add nsw i32 %add48.i, 1
  %27 = load i32* %type.i, align 4, !tbaa !3
  %28 = trunc i64 %indvars.iv276.i to i32
  %29 = trunc i64 %indvars.iv282.i to i32
  switch i32 %27, label %if.end78.i [
    i32 1, label %if.end78thread-pre-split.i
    i32 2, label %if.then62.i
  ]

if.then62.i:                                      ; preds = %for.body.i
  %mul63.i = shl nsw i32 %29, 1
  %add67257.i = or i32 %mul63.i, 1
  %idxprom68.i = sext i32 %add67257.i to i64
  %arrayidx69.i = getelementptr inbounds double* %call.i, i64 %idxprom68.i
  %30 = load double* %arrayidx69.i, align 8, !tbaa !4
  %mul70.i = shl nsw i32 %28, 1
  %add74258.i = or i32 %mul70.i, 1
  %idxprom75.i = sext i32 %add74258.i to i64
  %arrayidx76.i = getelementptr inbounds double* %call.i, i64 %idxprom75.i
  %31 = load double* %arrayidx76.i, align 8, !tbaa !4
  br label %if.end78thread-pre-split.i

if.end78thread-pre-split.i:                       ; preds = %if.then62.i, %for.body.i
  %limag.1.ph.i = phi double [ %30, %if.then62.i ], [ %limag.0264.i, %for.body.i ]
  %idxprom64.pn.in.i = phi i32 [ %mul63.i, %if.then62.i ], [ %29, %for.body.i ]
  %uimag.1.ph.i = phi double [ %31, %if.then62.i ], [ %uimag.0266.i, %for.body.i ]
  %idxprom71.pn.in.i = phi i32 [ %mul70.i, %if.then62.i ], [ %28, %for.body.i ]
  %idxprom71.pn.i = sext i32 %idxprom71.pn.in.i to i64
  %idxprom64.pn.i = sext i32 %idxprom64.pn.in.i to i64
  %ureal.1.ph.in.i = getelementptr inbounds double* %call.i, i64 %idxprom71.pn.i
  %lreal.1.ph.in.i = getelementptr inbounds double* %call.i, i64 %idxprom64.pn.i
  %ureal.1.ph.i = load double* %ureal.1.ph.in.i, align 8
  %lreal.1.ph.i = load double* %lreal.1.ph.in.i, align 8
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78thread-pre-split.i, %for.body.i
  %limag.1.i = phi double [ %limag.1.ph.i, %if.end78thread-pre-split.i ], [ %limag.0264.i, %for.body.i ]
  %lreal.1.i = phi double [ %lreal.1.ph.i, %if.end78thread-pre-split.i ], [ %lreal.0265.i, %for.body.i ]
  %uimag.1.i = phi double [ %uimag.1.ph.i, %if.end78thread-pre-split.i ], [ %uimag.0266.i, %for.body.i ]
  %ureal.1.i = phi double [ %ureal.1.ph.i, %if.end78thread-pre-split.i ], [ %ureal.0267.i, %for.body.i ]
  switch i32 %27, label %if.end123.i [
    i32 1, label %if.end106.thread.i
    i32 2, label %if.end106.thread289.i
  ]

if.end106.thread.i:                               ; preds = %if.end78.i
  %mul82.i = fmul double %lreal.1.i, %ureal.1.i
  %idxprom83.i = sext i32 %add48.i to i64
  %arrayidx84.i = getelementptr inbounds double* %call.i, i64 %idxprom83.i
  %32 = load double* %arrayidx84.i, align 8, !tbaa !4
  %sub85.i = fsub double %32, %mul82.i
  store double %sub85.i, double* %arrayidx84.i, align 8, !tbaa !4
  %idxprom110.i = sext i32 %sub50.i to i64
  %arrayidx111.i = getelementptr inbounds double* %call.i, i64 %idxprom110.i
  %sub112.i = fsub double -0.000000e+00, %ureal.1.i
  call void @DVaxpy(i32 %dec.i, double* %arrayidx111.i, double %sub112.i, double* %call.i) #7
  br label %if.end123thread-pre-split.i

if.end106.thread289.i:                            ; preds = %if.end78.i
  %mul90.i = fmul double %lreal.1.i, %ureal.1.i
  %mul91.i = fmul double %limag.1.i, %uimag.1.i
  %sub92.i = fsub double %mul90.i, %mul91.i
  %mul93.i = shl nsw i32 %add48.i, 1
  %idxprom94.i = sext i32 %mul93.i to i64
  %arrayidx95.i = getelementptr inbounds double* %call.i, i64 %idxprom94.i
  %33 = load double* %arrayidx95.i, align 8, !tbaa !4
  %sub96.i = fsub double %33, %sub92.i
  store double %sub96.i, double* %arrayidx95.i, align 8, !tbaa !4
  %mul97.i = fmul double %lreal.1.i, %uimag.1.i
  %mul98.i = fmul double %limag.1.i, %ureal.1.i
  %add99.i = fadd double %mul97.i, %mul98.i
  %add101256.i = or i32 %mul93.i, 1
  %idxprom102.i = sext i32 %add101256.i to i64
  %arrayidx103.i = getelementptr inbounds double* %call.i, i64 %idxprom102.i
  %34 = load double* %arrayidx103.i, align 8, !tbaa !4
  %sub104.i = fsub double %34, %add99.i
  store double %sub104.i, double* %arrayidx103.i, align 8, !tbaa !4
  %mul117.i = shl nsw i32 %sub50.i, 1
  %idxprom118.i = sext i32 %mul117.i to i64
  %arrayidx119.i = getelementptr inbounds double* %call.i, i64 %idxprom118.i
  %sub120.i = fsub double -0.000000e+00, %ureal.1.i
  %sub121.i = fsub double -0.000000e+00, %uimag.1.i
  call void @ZVaxpy(i32 %dec.i, double* %arrayidx119.i, double %sub120.i, double %sub121.i, double* %call.i) #7
  br label %if.end123thread-pre-split.i

if.end123thread-pre-split.i:                      ; preds = %if.end106.thread289.i, %if.end106.thread.i
  %.pr261.i = load i32* %type.i, align 4, !tbaa !3
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end123thread-pre-split.i, %if.end78.i
  %35 = phi i32 [ %.pr261.i, %if.end123thread-pre-split.i ], [ %27, %if.end78.i ]
  switch i32 %35, label %if.end147.i [
    i32 1, label %if.then126.i
    i32 2, label %if.then136.i
  ]

if.then126.i:                                     ; preds = %if.end123.i
  %idxprom127.i = sext i32 %add51.i to i64
  %arrayidx128.i = getelementptr inbounds double* %call.i, i64 %idxprom127.i
  %sub129.i = fsub double -0.000000e+00, %lreal.1.i
  %36 = add nsw i64 %indvars.iv276.i, 1
  %arrayidx132.i = getelementptr inbounds double* %call.i, i64 %36
  call void @DVaxpy(i32 %dec49.i, double* %arrayidx128.i, double %sub129.i, double* %arrayidx132.i) #7
  br label %if.end147.i

if.then136.i:                                     ; preds = %if.end123.i
  %mul137.i = shl nsw i32 %add51.i, 1
  %idxprom138.i = sext i32 %mul137.i to i64
  %arrayidx139.i = getelementptr inbounds double* %call.i, i64 %idxprom138.i
  %sub140.i = fsub double -0.000000e+00, %lreal.1.i
  %sub141.i = fsub double -0.000000e+00, %limag.1.i
  %mul142.i = shl i32 %28, 1
  %add143.i = add nsw i32 %mul142.i, 2
  %idxprom144.i = sext i32 %add143.i to i64
  %arrayidx145.i = getelementptr inbounds double* %call.i, i64 %idxprom144.i
  call void @ZVaxpy(i32 %dec49.i, double* %arrayidx139.i, double %sub140.i, double %sub141.i, double* %arrayidx145.i) #7
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.end123.i, %if.then136.i, %if.then126.i
  %37 = load i32* %nD.i, align 4, !tbaa !3
  %cmp47.i = icmp slt i32 %kchv.0269.i, %37
  br i1 %cmp47.i, label %if.end147.for.body_crit_edge.i, label %for.end.i

if.end147.for.body_crit_edge.i:                   ; preds = %if.end147.i
  %indvars.iv.next283.i = add i64 %indvars.iv282.i, -1
  %indvars.iv.next277.i = add i64 %indvars.iv276.i, 1
  %phitmp.i = add i32 %kchv.0269.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %if.end147.i, %if.end44.i
  %.lcssa.i = phi i32 [ %18, %if.end44.i ], [ %37, %if.end147.i ]
  %38 = load i32* %nU.i, align 4, !tbaa !3
  %add151.i = add i32 %.lcssa.i, -1
  %sub152.i = add i32 %add151.i, %38
  %39 = load i32* %type.i, align 4, !tbaa !3
  switch i32 %39, label %if.end14 [
    i32 1, label %if.then155.i
    i32 2, label %if.then162.i
  ]

if.then155.i:                                     ; preds = %for.end.i
  %40 = load i32* %nL.i, align 4, !tbaa !3
  %add156.i = add nsw i32 %40, %.lcssa.i
  %idxprom157.i = sext i32 %add156.i to i64
  %arrayidx158.i = getelementptr inbounds double* %call.i, i64 %idxprom157.i
  %41 = load double* %fac1.i, align 8, !tbaa !4
  call void @DVscale(i32 %sub152.i, double* %arrayidx158.i, double %41) #7
  br label %if.end14

if.then162.i:                                     ; preds = %for.end.i
  %42 = load i32* %nL.i, align 4, !tbaa !3
  %add163.i = add nsw i32 %42, %.lcssa.i
  %mul164.i = shl nsw i32 %add163.i, 1
  %idxprom165.i = sext i32 %mul164.i to i64
  %arrayidx166.i = getelementptr inbounds double* %call.i, i64 %idxprom165.i
  %43 = load double* %fac1.i, align 8, !tbaa !4
  %44 = load double* %fac2.i, align 8, !tbaa !4
  call void @ZVscale(i32 %sub152.i, double* %arrayidx166.i, double %43, double %44) #7
  br label %if.end14

if.then8:                                         ; preds = %if.end, %if.end
  %45 = bitcast double* %fac1.i22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast double* %fac2.i23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i32* %nD.i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %nL.i25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %nU.i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i24, i32* %nL.i25, i32* %nU.i26) #7
  %call.i27 = call double* @Chv_entries(%struct._Chv* %chv) #7
  %50 = load i32* %nD.i24, align 4, !tbaa !3
  %51 = load i32* %nU.i26, align 4, !tbaa !3
  %add.i28 = add i32 %51, %50
  %sub.i29 = add nsw i32 %add.i28, -1
  %type.i30 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %52 = load i32* %type.i30, align 4, !tbaa !3
  switch i32 %52, label %if.else33.i [
    i32 1, label %if.then.i31
    i32 2, label %if.then6.i
  ]

if.then.i31:                                      ; preds = %if.then8
  %53 = load double* %call.i27, align 8, !tbaa !4
  %cmp2.i = fcmp oeq double %53, 0.000000e+00
  br i1 %cmp2.i, label %if.end14, label %if.end28.thread.i

if.end28.thread.i:                                ; preds = %if.then.i31
  %div.i32 = fdiv double 1.000000e+00, %53
  store double %div.i32, double* %fac1.i22, align 8, !tbaa !4
  %arrayidx32.i.pre = getelementptr inbounds double* %call.i27, i64 1
  br label %if.then31.i

if.then6.i:                                       ; preds = %if.then8
  %54 = load double* %call.i27, align 8, !tbaa !4
  %arrayidx12.i = getelementptr inbounds double* %call.i27, i64 1
  %55 = load double* %arrayidx12.i, align 8, !tbaa !4
  %cmp13.i = fcmp oeq double %54, 0.000000e+00
  %cmp14.i = fcmp oeq double %55, 0.000000e+00
  %or.cond.i33 = and i1 %cmp13.i, %cmp14.i
  br i1 %or.cond.i33, label %if.end14, label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i
  %56 = load i32* %symflag, align 4, !tbaa !3
  %cmp17.i = icmp eq i32 %56, 1
  br i1 %cmp17.i, label %if.end28.thread183.i, label %if.end28.i

if.end28.thread183.i:                             ; preds = %if.end16.i
  %div19.i = fdiv double 1.000000e+00, %54
  store double %div19.i, double* %fac1.i22, align 8, !tbaa !4
  store double 0.000000e+00, double* %fac2.i23, align 8, !tbaa !4
  store double 0.000000e+00, double* %arrayidx12.i, align 8, !tbaa !4
  br label %if.else33.i

if.end28.i:                                       ; preds = %if.end16.i
  %call25.i = call i32 @Zrecip(double %54, double %55, double* %fac1.i22, double* %fac2.i23) #7
  %.pr.pre.i = load i32* %type.i30, align 4, !tbaa !3
  %phitmp.i34 = icmp eq i32 %.pr.pre.i, 1
  br i1 %phitmp.i34, label %if.end28.i.if.then31.i_crit_edge, label %if.else33.i

if.end28.i.if.then31.i_crit_edge:                 ; preds = %if.end28.i
  %.pre48 = load double* %fac1.i22, align 8, !tbaa !4
  br label %if.then31.i

if.then31.i:                                      ; preds = %if.end28.i.if.then31.i_crit_edge, %if.end28.thread.i
  %arrayidx32.i.pre-phi = phi double* [ %arrayidx12.i, %if.end28.i.if.then31.i_crit_edge ], [ %arrayidx32.i.pre, %if.end28.thread.i ]
  %57 = phi double [ %.pre48, %if.end28.i.if.then31.i_crit_edge ], [ %div.i32, %if.end28.thread.i ]
  %dimag.0.ph182.i = phi double [ %55, %if.end28.i.if.then31.i_crit_edge ], [ undef, %if.end28.thread.i ]
  %dreal.0.ph181.i = phi double [ %54, %if.end28.i.if.then31.i_crit_edge ], [ %53, %if.end28.thread.i ]
  call void @DVscale(i32 %sub.i29, double* %arrayidx32.i.pre-phi, double %57) #7
  br label %for.cond.preheader.i

if.else33.i:                                      ; preds = %if.end28.i, %if.then8, %if.end28.thread183.i
  %dimag.0167.i = phi double [ %55, %if.end28.thread183.i ], [ undef, %if.then8 ], [ %55, %if.end28.i ]
  %dreal.0165.i = phi double [ %54, %if.end28.thread183.i ], [ undef, %if.then8 ], [ %54, %if.end28.i ]
  %58 = load i32* %symflag, align 4, !tbaa !3
  %cmp35.i = icmp eq i32 %58, 1
  br i1 %cmp35.i, label %if.then36.i, label %if.else39.i

if.then36.i:                                      ; preds = %if.else33.i
  %mul37.i = shl nsw i32 %sub.i29, 1
  %arrayidx38.i = getelementptr inbounds double* %call.i27, i64 2
  %59 = load double* %fac1.i22, align 8, !tbaa !4
  call void @DVscale(i32 %mul37.i, double* %arrayidx38.i, double %59) #7
  br label %for.cond.preheader.i

if.else39.i:                                      ; preds = %if.else33.i
  %arrayidx40.i = getelementptr inbounds double* %call.i27, i64 2
  %60 = load double* %fac1.i22, align 8, !tbaa !4
  %61 = load double* %fac2.i23, align 8, !tbaa !4
  call void @ZVscale(i32 %sub.i29, double* %arrayidx40.i, double %60, double %61) #7
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else39.i, %if.then36.i, %if.then31.i
  %dimag.0166.ph.i = phi double [ %dimag.0.ph182.i, %if.then31.i ], [ %dimag.0167.i, %if.else39.i ], [ %dimag.0167.i, %if.then36.i ]
  %dreal.0164.ph.i = phi double [ %dreal.0.ph181.i, %if.then31.i ], [ %dreal.0165.i, %if.else39.i ], [ %dreal.0165.i, %if.then36.i ]
  %62 = load i32* %nD.i24, align 4, !tbaa !3
  %cmp44169.i = icmp sgt i32 %62, 1
  br i1 %cmp44169.i, label %for.body.lr.ph.i35, label %if.end14

for.body.lr.ph.i35:                               ; preds = %for.cond.preheader.i
  %63 = sext i32 %add.i28 to i64
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end101.for.body_crit_edge.i, %for.body.lr.ph.i35
  %indvars.iv177.i = phi i64 [ %63, %for.body.lr.ph.i35 ], [ %indvars.iv.next178.i, %if.end101.for.body_crit_edge.i ]
  %indvars.iv.i36 = phi i64 [ 1, %for.body.lr.ph.i35 ], [ %indvars.iv.next.i45, %if.end101.for.body_crit_edge.i ]
  %usize.0176.i = phi i32 [ %sub.i29, %for.body.lr.ph.i35 ], [ %dec102.i, %if.end101.for.body_crit_edge.i ]
  %uijloc.0175.i = phi i32 [ 2, %for.body.lr.ph.i35 ], [ %phitmp180.i, %if.end101.for.body_crit_edge.i ]
  %dloc.0172.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %add45.i, %if.end101.for.body_crit_edge.i ]
  %lreal.0171.i = phi double [ undef, %for.body.lr.ph.i35 ], [ %lreal.1189.i, %if.end101.for.body_crit_edge.i ]
  %limag.0170.i = phi double [ undef, %for.body.lr.ph.i35 ], [ %limag.1187.i, %if.end101.for.body_crit_edge.i ]
  %64 = trunc i64 %indvars.iv177.i to i32
  %add45.i = add nsw i32 %dloc.0172.i, %64
  %65 = load i32* %type.i30, align 4, !tbaa !3
  switch i32 %65, label %if.end79.i [
    i32 1, label %if.end79.thread.i
    i32 2, label %if.then56.i
  ]

if.end79.thread.i:                                ; preds = %for.body.i37
  %arrayidx51.i = getelementptr inbounds double* %call.i27, i64 %indvars.iv.i36
  %66 = load double* %arrayidx51.i, align 8, !tbaa !4
  %mul52.i = fmul double %dreal.0164.ph.i, %66
  br label %if.then82.i

if.then56.i:                                      ; preds = %for.body.i37
  %67 = trunc i64 %indvars.iv.i36 to i32
  %mul57.i = shl nsw i32 %67, 1
  %idxprom58.i = sext i32 %mul57.i to i64
  %arrayidx59.i = getelementptr inbounds double* %call.i27, i64 %idxprom58.i
  %68 = load double* %arrayidx59.i, align 8, !tbaa !4
  %add61162.i = or i32 %mul57.i, 1
  %idxprom62.i = sext i32 %add61162.i to i64
  %arrayidx63.i = getelementptr inbounds double* %call.i27, i64 %idxprom62.i
  %69 = load double* %arrayidx63.i, align 8, !tbaa !4
  %70 = load i32* %symflag, align 4, !tbaa !3
  %cmp65.i = icmp eq i32 %70, 1
  %mul67.i = fmul double %dreal.0164.ph.i, %68
  br i1 %cmp65.i, label %if.end79.thread190.i, label %if.else70.i

if.end79.thread190.i:                             ; preds = %if.then56.i
  %71 = fmul double %dreal.0164.ph.i, %69
  %mul69.i = fsub double -0.000000e+00, %71
  br label %if.then91.i

if.else70.i:                                      ; preds = %if.then56.i
  %mul72.i = fmul double %dimag.0166.ph.i, %69
  %sub73.i = fsub double %mul67.i, %mul72.i
  %mul74.i = fmul double %dreal.0164.ph.i, %69
  %mul75.i = fmul double %dimag.0166.ph.i, %68
  %add76.i = fadd double %mul75.i, %mul74.i
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else70.i, %for.body.i37
  %limag.1.i38 = phi double [ %limag.0170.i, %for.body.i37 ], [ %add76.i, %if.else70.i ]
  %lreal.1.i39 = phi double [ %lreal.0171.i, %for.body.i37 ], [ %sub73.i, %if.else70.i ]
  switch i32 %65, label %if.end101.i [
    i32 1, label %if.end79.i.if.then82.i_crit_edge
    i32 2, label %if.end79.i.if.then91.i_crit_edge
  ]

if.end79.i.if.then82.i_crit_edge:                 ; preds = %if.end79.i
  %arrayidx87.i.pre = getelementptr inbounds double* %call.i27, i64 %indvars.iv.i36
  br label %if.then82.i

if.end79.i.if.then91.i_crit_edge:                 ; preds = %if.end79.i
  %.pre49 = trunc i64 %indvars.iv.i36 to i32
  %mul97.i44.pre = shl nsw i32 %.pre49, 1
  %idxprom98.i.pre = sext i32 %mul97.i44.pre to i64
  %arrayidx99.i.pre = getelementptr inbounds double* %call.i27, i64 %idxprom98.i.pre
  br label %if.then91.i

if.then82.i:                                      ; preds = %if.end79.i.if.then82.i_crit_edge, %if.end79.thread.i
  %arrayidx87.i.pre-phi = phi double* [ %arrayidx87.i.pre, %if.end79.i.if.then82.i_crit_edge ], [ %arrayidx51.i, %if.end79.thread.i ]
  %lreal.1188.i = phi double [ %lreal.1.i39, %if.end79.i.if.then82.i_crit_edge ], [ %mul52.i, %if.end79.thread.i ]
  %limag.1186.i = phi double [ %limag.1.i38, %if.end79.i.if.then82.i_crit_edge ], [ %limag.0170.i, %if.end79.thread.i ]
  %idxprom83.i40 = sext i32 %add45.i to i64
  %arrayidx84.i41 = getelementptr inbounds double* %call.i27, i64 %idxprom83.i40
  %sub85.i42 = fsub double -0.000000e+00, %lreal.1188.i
  call void @DVaxpy(i32 %usize.0176.i, double* %arrayidx84.i41, double %sub85.i42, double* %arrayidx87.i.pre-phi) #7
  br label %if.end101.i

if.then91.i:                                      ; preds = %if.end79.i.if.then91.i_crit_edge, %if.end79.thread190.i
  %arrayidx99.i.pre-phi = phi double* [ %arrayidx99.i.pre, %if.end79.i.if.then91.i_crit_edge ], [ %arrayidx59.i, %if.end79.thread190.i ]
  %lreal.1192.i = phi double [ %lreal.1.i39, %if.end79.i.if.then91.i_crit_edge ], [ %mul67.i, %if.end79.thread190.i ]
  %limag.1191.i = phi double [ %limag.1.i38, %if.end79.i.if.then91.i_crit_edge ], [ %mul69.i, %if.end79.thread190.i ]
  %mul92.i = shl nsw i32 %add45.i, 1
  %idxprom93.i = sext i32 %mul92.i to i64
  %arrayidx94.i = getelementptr inbounds double* %call.i27, i64 %idxprom93.i
  %sub95.i = fsub double -0.000000e+00, %lreal.1192.i
  %sub96.i43 = fsub double -0.000000e+00, %limag.1191.i
  call void @ZVaxpy(i32 %usize.0176.i, double* %arrayidx94.i, double %sub95.i, double %sub96.i43, double* %arrayidx99.i.pre-phi) #7
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then91.i, %if.then82.i, %if.end79.i
  %lreal.1189.i = phi double [ %lreal.1.i39, %if.end79.i ], [ %lreal.1192.i, %if.then91.i ], [ %lreal.1188.i, %if.then82.i ]
  %limag.1187.i = phi double [ %limag.1.i38, %if.end79.i ], [ %limag.1191.i, %if.then91.i ], [ %limag.1186.i, %if.then82.i ]
  %72 = load i32* %nD.i24, align 4, !tbaa !3
  %cmp44.i = icmp slt i32 %uijloc.0175.i, %72
  br i1 %cmp44.i, label %if.end101.for.body_crit_edge.i, label %if.end14

if.end101.for.body_crit_edge.i:                   ; preds = %if.end101.i
  %dec102.i = add nsw i32 %usize.0176.i, -1
  %indvars.iv.next178.i = add i64 %indvars.iv177.i, -1
  %indvars.iv.next.i45 = add i64 %indvars.iv.i36, 1
  %phitmp180.i = add i32 %uijloc.0175.i, 1
  br label %for.body.i37

if.else10:                                        ; preds = %if.end
  %73 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #7
  call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end101.i, %for.cond.preheader.i, %if.then6.i, %if.then.i31, %if.then162.i, %if.then155.i, %for.end.i, %if.then12.i, %if.then.i
  %rc.0 = phi i32 [ 0, %if.then.i ], [ 0, %if.then12.i ], [ 1, %for.end.i ], [ 1, %if.then162.i ], [ 1, %if.then155.i ], [ 0, %if.then.i31 ], [ 0, %if.then6.i ], [ 1, %for.cond.preheader.i ], [ 1, %if.end101.i ]
  ret i32 %rc.0
}

; Function Attrs: optsize
declare void @Chv_shift(%struct._Chv*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_maxabsInChevron(%struct._Chv* %chv, i32 %ichv, double* %pdiagmaxabs, double* %prowmaxabs, double* %pcolmaxabs) #0 {
entry:
  %loc = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %ichv, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nD3 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %0 = load i32* %nD3, align 4, !tbaa !3
  %cmp4 = icmp sle i32 %0, %ichv
  %cmp6 = icmp eq double* %pdiagmaxabs, null
  %or.cond115 = or i1 %cmp4, %cmp6
  %cmp8 = icmp eq double* %prowmaxabs, null
  %or.cond116 = or i1 %or.cond115, %cmp8
  %cmp10 = icmp eq double* %pcolmaxabs, null
  %or.cond117 = or i1 %or.cond116, %cmp10
  br i1 %or.cond117, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str11, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %1)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7
  %call11 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #7
  %3 = load i32* %nD, align 4, !tbaa !3
  %4 = load i32* %nU, align 4, !tbaa !3
  %sub = xor i32 %ichv, -1
  %sub12 = add i32 %3, %sub
  %add = add i32 %sub12, %4
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %5 = load i32* %type, align 4, !tbaa !3
  switch i32 %5, label %if.else63 [
    i32 1, label %if.then14
    i32 2, label %if.then35
  ]

if.then14:                                        ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %6 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %6, label %if.else27 [
    i32 0, label %if.then16
    i32 2, label %if.then21
  ]

if.then16:                                        ; preds = %if.then14
  %7 = load double* %call11, align 8, !tbaa !4
  %call17 = call double @fabs(double %7) #9
  store double %call17, double* %pdiagmaxabs, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double* %call11, i64 1
  %call18 = call double @DVmaxabs(i32 %add, double* %add.ptr, i32* %loc) #7
  store double %call18, double* %prowmaxabs, align 8, !tbaa !4
  store double %call18, double* %pcolmaxabs, align 8, !tbaa !4
  br label %if.end67

if.then21:                                        ; preds = %if.then14
  %8 = load double* %call11, align 8, !tbaa !4
  %call22 = call double @fabs(double %8) #9
  store double %call22, double* %pdiagmaxabs, align 8, !tbaa !4
  %add.ptr23 = getelementptr inbounds double* %call11, i64 1
  %call24 = call double @DVmaxabs(i32 %add, double* %add.ptr23, i32* %loc) #7
  store double %call24, double* %prowmaxabs, align 8, !tbaa !4
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr25 = getelementptr inbounds double* %call11, i64 %idx.neg
  %call26 = call double @DVmaxabs(i32 %add, double* %add.ptr25, i32* %loc) #7
  store double %call26, double* %pcolmaxabs, align 8, !tbaa !4
  br label %if.end67

if.else27:                                        ; preds = %if.then14
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([107 x i8]* @.str12, i64 0, i64 0), i32 %6) #7
  call void @exit(i32 -1) #6
  unreachable

if.then35:                                        ; preds = %if.end
  %symflag36 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %10 = load i32* %symflag36, align 4, !tbaa !3
  switch i32 %10, label %if.else58 [
    i32 0, label %if.then41
    i32 1, label %if.then41
    i32 2, label %if.then49
  ]

if.then41:                                        ; preds = %if.then35, %if.then35
  %11 = load double* %call11, align 8, !tbaa !4
  %add.ptr42 = getelementptr inbounds double* %call11, i64 1
  %12 = load double* %add.ptr42, align 8, !tbaa !4
  %call43 = call double @Zabs(double %11, double %12) #7
  store double %call43, double* %pdiagmaxabs, align 8, !tbaa !4
  %add.ptr44 = getelementptr inbounds double* %call11, i64 2
  %call45 = call double @ZVmaxabs(i32 %add, double* %add.ptr44) #7
  store double %call45, double* %prowmaxabs, align 8, !tbaa !4
  store double %call45, double* %pcolmaxabs, align 8, !tbaa !4
  br label %if.end67

if.then49:                                        ; preds = %if.then35
  %13 = load double* %call11, align 8, !tbaa !4
  %add.ptr50 = getelementptr inbounds double* %call11, i64 1
  %14 = load double* %add.ptr50, align 8, !tbaa !4
  %call51 = call double @Zabs(double %13, double %14) #7
  store double %call51, double* %pdiagmaxabs, align 8, !tbaa !4
  %add.ptr52 = getelementptr inbounds double* %call11, i64 2
  %call53 = call double @ZVmaxabs(i32 %add, double* %add.ptr52) #7
  store double %call53, double* %prowmaxabs, align 8, !tbaa !4
  %mul = shl nsw i32 %add, 1
  %idx.ext54 = sext i32 %mul to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds double* %call11, i64 %idx.neg55
  %call57 = call double @ZVmaxabs(i32 %add, double* %add.ptr56) #7
  store double %call57, double* %pcolmaxabs, align 8, !tbaa !4
  br label %if.end67

if.else58:                                        ; preds = %if.then35
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([110 x i8]* @.str13, i64 0, i64 0), i32 %10) #7
  call void @exit(i32 -1) #6
  unreachable

if.else63:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0), i32 %5) #7
  call void @exit(i32 -1) #6
  unreachable

if.end67:                                         ; preds = %if.then49, %if.then41, %if.then16, %if.then21
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_zeroOffdiagonalOfChevron(%struct._Chv* %chv, i32 %ichv) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %ichv, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nD3 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %0 = load i32* %nD3, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %0, %ichv
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str15, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %1)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7
  %call5 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #7
  %3 = load i32* %nD, align 4, !tbaa !3
  %4 = load i32* %nU, align 4, !tbaa !3
  %sub = xor i32 %ichv, -1
  %sub6 = add i32 %3, %sub
  %add = add i32 %sub6, %4
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %5 = load i32* %type, align 4, !tbaa !3
  switch i32 %5, label %if.else45 [
    i32 1, label %if.then8
    i32 2, label %if.then24
  ]

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %6 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %6, label %if.else16 [
    i32 0, label %if.then10
    i32 2, label %if.then13
  ]

if.then10:                                        ; preds = %if.then8
  %add.ptr = getelementptr inbounds double* %call5, i64 1
  call void @DVzero(i32 %add, double* %add.ptr) #7
  br label %if.end49

if.then13:                                        ; preds = %if.then8
  %add.ptr14 = getelementptr inbounds double* %call5, i64 1
  call void @DVzero(i32 %add, double* %add.ptr14) #7
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr15 = getelementptr inbounds double* %call5, i64 %idx.neg
  call void @DVzero(i32 %add, double* %add.ptr15) #7
  br label %if.end49

if.else16:                                        ; preds = %if.then8
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([116 x i8]* @.str16, i64 0, i64 0), i32 %6) #7
  call void @exit(i32 -1) #6
  unreachable

if.then24:                                        ; preds = %if.end
  %symflag25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %8 = load i32* %symflag25, align 4, !tbaa !3
  switch i32 %8, label %if.else40 [
    i32 0, label %if.then30
    i32 1, label %if.then30
    i32 2, label %if.then35
  ]

if.then30:                                        ; preds = %if.then24, %if.then24
  %add.ptr31 = getelementptr inbounds double* %call5, i64 2
  call void @ZVzero(i32 %add, double* %add.ptr31) #7
  br label %if.end49

if.then35:                                        ; preds = %if.then24
  %add.ptr36 = getelementptr inbounds double* %call5, i64 2
  call void @ZVzero(i32 %add, double* %add.ptr36) #7
  %mul = shl nsw i32 %add, 1
  %idx.ext37 = sext i32 %mul to i64
  %idx.neg38 = sub i64 0, %idx.ext37
  %add.ptr39 = getelementptr inbounds double* %call5, i64 %idx.neg38
  call void @ZVzero(i32 %add, double* %add.ptr39) #7
  br label %if.end49

if.else40:                                        ; preds = %if.then24
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([119 x i8]* @.str17, i64 0, i64 0), i32 %8) #7
  call void @exit(i32 -1) #6
  unreachable

if.else45:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([90 x i8]* @.str18, i64 0, i64 0), i32 %5) #7
  call void @exit(i32 -1) #6
  unreachable

if.end49:                                         ; preds = %if.then35, %if.then30, %if.then10, %if.then13
  ret void
}

; Function Attrs: optsize
declare void @IV_push(%struct._IV*, i32) #4

; Function Attrs: optsize
declare void @DV_push(%struct._DV*, double) #4

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_factorWithPivoting(%struct._Chv* %chv, i32 %ndelay, i32 %pivotflag, %struct._IV* %pivotsizesIV, %struct._DV* %workDV, double %tau, i32* %pntest) #0 {
entry:
  %wrkChv = alloca %struct._Chv, align 8
  %irow = alloca i32, align 4
  %jcol = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %0 = bitcast %struct._Chv* %wrkChv to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  %notlhs = icmp eq %struct._Chv* %chv, null
  %notrhs = icmp ne i32 %pivotflag, 1
  %or.cond.not = or i1 %notrhs, %notlhs
  %cmp3 = icmp slt i32 %ndelay, 0
  %or.cond131 = or i1 %or.cond.not, %cmp3
  br i1 %or.cond131, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %1)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq %struct._DV* %workDV, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %3)
  call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %cmp8 = fcmp olt double %tau, 1.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str4, i64 0, i64 0), double %tau) #7
  call void @exit(i32 -1) #6
  unreachable

if.end11:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %if.end18.if.end31_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true21
  ]

land.lhs.true:                                    ; preds = %if.end11
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %7, 0
  %cmp15 = icmp eq %struct._IV* %pivotsizesIV, null
  %or.cond132 = and i1 %cmp13, %cmp15
  br i1 %or.cond132, label %if.then16, label %if.end18.if.end31_crit_edge

if.then16:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([105 x i8]* @.str5, i64 0, i64 0), i64 104, i64 1, %struct._IO_FILE* %8)
  call void @exit(i32 -1) #6
  unreachable

if.end18.if.end31_crit_edge:                      ; preds = %if.end11, %land.lhs.true
  %symflag34.pre = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  br label %if.end31

land.lhs.true21:                                  ; preds = %if.end11
  %symflag22 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %10 = load i32* %symflag22, align 4, !tbaa !3
  %switch = icmp ult i32 %10, 2
  %cmp28 = icmp eq %struct._IV* %pivotsizesIV, null
  %or.cond133 = and i1 %switch, %cmp28
  br i1 %or.cond133, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true21
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([121 x i8]* @.str6, i64 0, i64 0), i64 120, i64 1, %struct._IO_FILE* %11)
  call void @exit(i32 -1) #6
  unreachable

if.end31:                                         ; preds = %if.end18.if.end31_crit_edge, %land.lhs.true21
  %symflag34.pre-phi = phi i32* [ %symflag34.pre, %if.end18.if.end31_crit_edge ], [ %symflag22, %land.lhs.true21 ]
  %nD32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %13 = load i32* %nD32, align 4, !tbaa !3
  call void @Chv_setDefaultFields(%struct._Chv* %wrkChv) #7
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #7
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #7
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  %14 = load i32* %id, align 4, !tbaa !3
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %15 = load i32* %nL, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %16 = load i32* %nU, align 4, !tbaa !3
  %17 = load i32* %type, align 4, !tbaa !3
  %18 = load i32* %symflag34.pre-phi, align 4, !tbaa !3
  %19 = load i32** %rowind, align 8, !tbaa !0
  %20 = load i32** %colind, align 8, !tbaa !0
  %call35 = call double* @Chv_entries(%struct._Chv* %chv) #7
  call void @Chv_initWithPointers(%struct._Chv* %wrkChv, i32 %14, i32 %13, i32 %15, i32 %16, i32 %17, i32 %18, i32* %19, i32* %20, double* %call35) #7
  %21 = load i32* %symflag34.pre-phi, align 4, !tbaa !3
  %switch134 = icmp ult i32 %21, 2
  br i1 %switch134, label %if.then41, label %while.cond66.preheader

while.cond66.preheader:                           ; preds = %if.end31
  %cmp67139 = icmp sgt i32 %13, 0
  br i1 %cmp67139, label %while.body68, label %if.end82

if.then41:                                        ; preds = %if.end31
  call void @IV_setSize(%struct._IV* %pivotsizesIV, i32 0) #7
  %cmp42135 = icmp sgt i32 %13, 0
  br i1 %cmp42135, label %while.body, label %if.end82

while.body:                                       ; preds = %if.then41, %while.cond.backedge
  %ndelay.addr.0137 = phi i32 [ 0, %while.cond.backedge ], [ %ndelay, %if.then41 ]
  %nelim.0136 = phi i32 [ %nelim.0.be, %while.cond.backedge ], [ 0, %if.then41 ]
  %call43 = call i32 @Chv_findPivot(%struct._Chv* %wrkChv, %struct._DV* %workDV, double %tau, i32 %ndelay.addr.0137, i32* %irow, i32* %jcol, i32* %pntest) #7
  %22 = load i32* %irow, align 4, !tbaa !3
  %23 = load i32* %jcol, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %22, %23
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %while.body
  store i32 %23, i32* %irow, align 4, !tbaa !3
  store i32 %22, i32* %jcol, align 4, !tbaa !3
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %while.body
  %24 = phi i32 [ %22, %if.then45 ], [ %23, %while.body ]
  %25 = phi i32 [ %23, %if.then45 ], [ %22, %while.body ]
  %add = add nsw i32 %25, %nelim.0136
  store i32 %add, i32* %irow, align 4, !tbaa !3
  %add47 = add nsw i32 %24, %nelim.0136
  store i32 %add47, i32* %jcol, align 4, !tbaa !3
  %cmp48 = icmp eq i32 %call43, 0
  br i1 %cmp48, label %if.end82, label %if.else

if.else:                                          ; preds = %if.end46
  %cmp50 = icmp eq i32 %add, %add47
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %nelim.0136, i32 %add) #7
  br i1 %cmp50, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.else
  %call52 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #8
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.end82, label %if.end55

if.end55:                                         ; preds = %if.then51
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #7
  %inc = add nsw i32 %nelim.0136, 1
  call void @IV_push(%struct._IV* %pivotsizesIV, i32 1) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end55, %if.end61
  %nelim.0.be = phi i32 [ %inc, %if.end55 ], [ %add62, %if.end61 ]
  %cmp42 = icmp slt i32 %nelim.0.be, %13
  br i1 %cmp42, label %while.body, label %if.end82

if.else56:                                        ; preds = %if.else
  %add57 = add nsw i32 %nelim.0136, 1
  %26 = load i32* %jcol, align 4, !tbaa !3
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %add57, i32 %26) #7
  %call58 = call i32 @Chv_r2upd(%struct._Chv* %wrkChv) #8
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.end82, label %if.end61

if.end61:                                         ; preds = %if.else56
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 2) #7
  %add62 = add nsw i32 %nelim.0136, 2
  call void @IV_push(%struct._IV* %pivotsizesIV, i32 2) #7
  br label %while.cond.backedge

while.body68:                                     ; preds = %while.cond66.preheader, %if.end78
  %ndelay.addr.1141 = phi i32 [ 0, %if.end78 ], [ %ndelay, %while.cond66.preheader ]
  %nelim.1140 = phi i32 [ %inc79, %if.end78 ], [ 0, %while.cond66.preheader ]
  %call69 = call i32 @Chv_findPivot(%struct._Chv* %wrkChv, %struct._DV* %workDV, double %tau, i32 %ndelay.addr.1141, i32* %irow, i32* %jcol, i32* %pntest) #7
  %27 = load i32* %irow, align 4, !tbaa !3
  %add70 = add nsw i32 %27, %nelim.1140
  store i32 %add70, i32* %irow, align 4, !tbaa !3
  %28 = load i32* %jcol, align 4, !tbaa !3
  %add71 = add nsw i32 %28, %nelim.1140
  store i32 %add71, i32* %jcol, align 4, !tbaa !3
  %cmp72 = icmp eq i32 %call69, 0
  br i1 %cmp72, label %if.end82, label %if.else74

if.else74:                                        ; preds = %while.body68
  call void @Chv_swapRows(%struct._Chv* %chv, i32 %nelim.1140, i32 %add70) #7
  %29 = load i32* %jcol, align 4, !tbaa !3
  call void @Chv_swapColumns(%struct._Chv* %chv, i32 %nelim.1140, i32 %29) #7
  %call75 = call i32 @Chv_r1upd(%struct._Chv* %wrkChv) #8
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.end82, label %if.end78

if.end78:                                         ; preds = %if.else74
  call void @Chv_shift(%struct._Chv* %wrkChv, i32 1) #7
  %inc79 = add nsw i32 %nelim.1140, 1
  %cmp67 = icmp slt i32 %inc79, %13
  br i1 %cmp67, label %while.body68, label %if.end82

if.end82:                                         ; preds = %while.cond66.preheader, %while.body68, %if.else74, %if.end78, %if.then41, %if.end46, %if.then51, %if.else56, %while.cond.backedge
  %nelim.2 = phi i32 [ 0, %if.then41 ], [ %nelim.0136, %if.end46 ], [ %nelim.0136, %if.then51 ], [ %nelim.0136, %if.else56 ], [ %nelim.0.be, %while.cond.backedge ], [ 0, %while.cond66.preheader ], [ %nelim.1140, %while.body68 ], [ %nelim.1140, %if.else74 ], [ %inc79, %if.end78 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #1
  ret i32 %nelim.2
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #4

; Function Attrs: optsize
declare i32 @Chv_findPivot(%struct._Chv*, %struct._DV*, double, i32, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare void @Chv_swapRowsAndColumns(%struct._Chv*, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_r2upd(%struct._Chv* %chv) #0 {
entry:
  %ereal.i = alloca double, align 8
  %eimag.i = alloca double, align 8
  %freal.i = alloca double, align 8
  %fimag.i = alloca double, align 8
  %greal.i = alloca double, align 8
  %gimag.i = alloca double, align 8
  %nD.i = alloca i32, align 4
  %nL.i = alloca i32, align 4
  %nU.i = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), %struct._Chv* null) #7
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #7
  call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %3 = bitcast double* %ereal.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %eimag.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %freal.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %fimag.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %greal.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %gimag.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %nD.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %nL.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %nU.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD.i, i32* %nL.i, i32* %nU.i) #7
  %call.i = call double* @Chv_entries(%struct._Chv* %chv) #7
  %type.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %12 = load i32* %type.i, align 4, !tbaa !3
  switch i32 %12, label %if.else34.i [
    i32 1, label %if.then.i
    i32 2, label %if.then13.i
  ]

if.then.i:                                        ; preds = %if.end7
  %13 = load double* %call.i, align 8, !tbaa !4
  %arrayidx1.i = getelementptr inbounds double* %call.i, i64 1
  %14 = load double* %arrayidx1.i, align 8, !tbaa !4
  %15 = load i32* %nD.i, align 4, !tbaa !3
  %16 = load i32* %nU.i, align 4, !tbaa !3
  %add.i = add i32 %16, %15
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx2.i = getelementptr inbounds double* %call.i, i64 %idxprom.i
  %17 = load double* %arrayidx2.i, align 8, !tbaa !4
  %mul.i = fmul double %13, %17
  %mul3.i = fmul double %14, %14
  %sub.i = fsub double %mul.i, %mul3.i
  %cmp4.i = fcmp oeq double %sub.i, 0.000000e+00
  br i1 %cmp4.i, label %symmetric2x2.exit, label %if.end40.thread.i

if.end40.thread.i:                                ; preds = %if.then.i
  %div.i = fdiv double 1.000000e+00, %sub.i
  %mul6.i = fmul double %17, %div.i
  store double %mul6.i, double* %ereal.i, align 8, !tbaa !4
  %18 = fmul double %14, %div.i
  %mul8.i = fsub double -0.000000e+00, %18
  store double %mul8.i, double* %freal.i, align 8, !tbaa !4
  %mul9.i = fmul double %13, %div.i
  store double %mul9.i, double* %greal.i, align 8, !tbaa !4
  %add42368.i = add i32 %add.i, 1
  %sub44369.i = add nsw i32 %add.i, -2
  %arrayidx49.i.pre = getelementptr inbounds double* %call.i, i64 2
  br label %if.then47.i

if.then13.i:                                      ; preds = %if.end7
  %19 = load double* %call.i, align 8, !tbaa !4
  %arrayidx15.i = getelementptr inbounds double* %call.i, i64 1
  %20 = load double* %arrayidx15.i, align 8, !tbaa !4
  %arrayidx16.i = getelementptr inbounds double* %call.i, i64 2
  %21 = load double* %arrayidx16.i, align 8, !tbaa !4
  %arrayidx17.i = getelementptr inbounds double* %call.i, i64 3
  %22 = load double* %arrayidx17.i, align 8, !tbaa !4
  %23 = load i32* %nD.i, align 4, !tbaa !3
  %24 = load i32* %nU.i, align 4, !tbaa !3
  %add18.i = add nsw i32 %24, %23
  %mul19.i = shl nsw i32 %add18.i, 1
  %idxprom20.i = sext i32 %mul19.i to i64
  %arrayidx21.i = getelementptr inbounds double* %call.i, i64 %idxprom20.i
  %25 = load double* %arrayidx21.i, align 8, !tbaa !4
  %add24335.i = or i32 %mul19.i, 1
  %idxprom25.i = sext i32 %add24335.i to i64
  %arrayidx26.i = getelementptr inbounds double* %call.i, i64 %idxprom25.i
  %26 = load double* %arrayidx26.i, align 8, !tbaa !4
  %27 = load i32* %symflag, align 4, !tbaa !3
  %cmp27.i = icmp eq i32 %27, 1
  br i1 %cmp27.i, label %if.then28.i, label %if.else31.i

if.then28.i:                                      ; preds = %if.then13.i
  %sub29.i = fsub double -0.000000e+00, %22
  %call30.i = call i32 @Zrecip2(double %19, double 0.000000e+00, double %21, double %22, double %21, double %sub29.i, double %25, double 0.000000e+00, double* %ereal.i, double* null, double* %freal.i, double* %fimag.i, double* null, double* null, double* %greal.i, double* null) #7
  store double 0.000000e+00, double* %gimag.i, align 8, !tbaa !4
  store double 0.000000e+00, double* %eimag.i, align 8, !tbaa !4
  br label %if.end37.i

if.else31.i:                                      ; preds = %if.then13.i
  %call32.i = call i32 @Zrecip2(double %19, double %20, double %21, double %22, double %21, double %22, double %25, double %26, double* %ereal.i, double* %eimag.i, double* %freal.i, double* %fimag.i, double* null, double* null, double* %greal.i, double* %gimag.i) #7
  br label %if.end37.i

if.else34.i:                                      ; preds = %if.end7
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8]* @.str19, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %28) #1
  call void @exit(i32 -1) #6
  unreachable

if.end37.i:                                       ; preds = %if.else31.i, %if.then28.i
  %rc.0.i = phi i32 [ %call30.i, %if.then28.i ], [ %call32.i, %if.else31.i ]
  %cmp38.i = icmp eq i32 %rc.0.i, 0
  br i1 %cmp38.i, label %symmetric2x2.exit, label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i
  %.pre.i = load i32* %nD.i, align 4, !tbaa !3
  %.pre364.i = load i32* %nU.i, align 4, !tbaa !3
  %.pre365.i = load i32* %type.i, align 4, !tbaa !3
  %phitmp.i = icmp eq i32 %.pre365.i, 1
  %add41.i = add i32 %.pre364.i, %.pre.i
  %add42.i = add i32 %add41.i, 1
  %sub44.i = add nsw i32 %add41.i, -2
  br i1 %phitmp.i, label %if.end40.i.if.then47.i_crit_edge, label %if.else52.i

if.end40.i.if.then47.i_crit_edge:                 ; preds = %if.end40.i
  %.pre = load double* %ereal.i, align 8, !tbaa !4
  %.pre15 = load double* %freal.i, align 8, !tbaa !4
  %.pre16 = load double* %greal.i, align 8, !tbaa !4
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.end40.i.if.then47.i_crit_edge, %if.end40.thread.i
  %arrayidx49.i.pre-phi = phi double* [ %arrayidx16.i, %if.end40.i.if.then47.i_crit_edge ], [ %arrayidx49.i.pre, %if.end40.thread.i ]
  %30 = phi double [ %.pre16, %if.end40.i.if.then47.i_crit_edge ], [ %mul9.i, %if.end40.thread.i ]
  %31 = phi double [ %.pre15, %if.end40.i.if.then47.i_crit_edge ], [ %mul8.i, %if.end40.thread.i ]
  %32 = phi double [ %.pre, %if.end40.i.if.then47.i_crit_edge ], [ %mul6.i, %if.end40.thread.i ]
  %sub44384.i = phi i32 [ %sub44.i, %if.end40.i.if.then47.i_crit_edge ], [ %sub44369.i, %if.end40.thread.i ]
  %add42382.i = phi i32 [ %add42.i, %if.end40.i.if.then47.i_crit_edge ], [ %add42368.i, %if.end40.thread.i ]
  %bimag.0341381.i = phi double [ %22, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %creal.0342379.i = phi double [ %25, %if.end40.i.if.then47.i_crit_edge ], [ %17, %if.end40.thread.i ]
  %cimag.0343377.i = phi double [ %26, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %breal.0344375.i = phi double [ %21, %if.end40.i.if.then47.i_crit_edge ], [ %14, %if.end40.thread.i ]
  %aimag.0345373.i = phi double [ %20, %if.end40.i.if.then47.i_crit_edge ], [ undef, %if.end40.thread.i ]
  %areal.0346371.i = phi double [ %19, %if.end40.i.if.then47.i_crit_edge ], [ %13, %if.end40.thread.i ]
  %idxprom50.i = sext i32 %add42382.i to i64
  %arrayidx51.i = getelementptr inbounds double* %call.i, i64 %idxprom50.i
  call void @DVscale2(i32 %sub44384.i, double* %arrayidx49.i.pre-phi, double* %arrayidx51.i, double %32, double %31, double %31, double %30) #7
  br label %if.end71.i

if.else52.i:                                      ; preds = %if.end40.i
  %33 = load i32* %symflag, align 4, !tbaa !3
  %cmp54.i = icmp eq i32 %33, 1
  %arrayidx58.i = getelementptr inbounds double* %call.i, i64 4
  %mul59.i = shl nsw i32 %add42.i, 1
  %idxprom60.i = sext i32 %mul59.i to i64
  %arrayidx61.i = getelementptr inbounds double* %call.i, i64 %idxprom60.i
  %34 = load double* %ereal.i, align 8, !tbaa !4
  br i1 %cmp54.i, label %if.then55.i, label %if.else63.i

if.then55.i:                                      ; preds = %if.else52.i
  %35 = load double* %freal.i, align 8, !tbaa !4
  %36 = load double* %fimag.i, align 8, !tbaa !4
  %sub62.i = fsub double -0.000000e+00, %36
  %37 = load double* %greal.i, align 8, !tbaa !4
  call void @ZVscale2(i32 %sub44.i, double* %arrayidx58.i, double* %arrayidx61.i, double %34, double 0.000000e+00, double %35, double %36, double %35, double %sub62.i, double %37, double 0.000000e+00) #7
  br label %if.end71.i

if.else63.i:                                      ; preds = %if.else52.i
  %38 = load double* %eimag.i, align 8, !tbaa !4
  %39 = load double* %freal.i, align 8, !tbaa !4
  %40 = load double* %fimag.i, align 8, !tbaa !4
  %41 = load double* %greal.i, align 8, !tbaa !4
  %42 = load double* %gimag.i, align 8, !tbaa !4
  call void @ZVscale2(i32 %sub44.i, double* %arrayidx58.i, double* %arrayidx61.i, double %34, double %38, double %39, double %40, double %39, double %40, double %41, double %42) #7
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else63.i, %if.then55.i, %if.then47.i
  %add42383.i = phi i32 [ %add42.i, %if.then55.i ], [ %add42.i, %if.else63.i ], [ %add42382.i, %if.then47.i ]
  %bimag.0341380.i = phi double [ %22, %if.then55.i ], [ %22, %if.else63.i ], [ %bimag.0341381.i, %if.then47.i ]
  %creal.0342378.i = phi double [ %25, %if.then55.i ], [ %25, %if.else63.i ], [ %creal.0342379.i, %if.then47.i ]
  %cimag.0343376.i = phi double [ %26, %if.then55.i ], [ %26, %if.else63.i ], [ %cimag.0343377.i, %if.then47.i ]
  %breal.0344374.i = phi double [ %21, %if.then55.i ], [ %21, %if.else63.i ], [ %breal.0344375.i, %if.then47.i ]
  %aimag.0345372.i = phi double [ %20, %if.then55.i ], [ %20, %if.else63.i ], [ %aimag.0345373.i, %if.then47.i ]
  %areal.0346370.i = phi double [ %19, %if.then55.i ], [ %19, %if.else63.i ], [ %areal.0346371.i, %if.then47.i ]
  %43 = load i32* %nD.i, align 4, !tbaa !3
  %44 = load i32* %nU.i, align 4, !tbaa !3
  %add72.i = add i32 %44, %43
  %cmp77348.i = icmp sgt i32 %43, 2
  br i1 %cmp77348.i, label %for.body.lr.ph.i, label %symmetric2x2.exit

for.body.lr.ph.i:                                 ; preds = %if.end71.i
  %sub73.i = add nsw i32 %add72.i, -2
  %45 = sext i32 %add72.i to i64
  %46 = sext i32 %add42383.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end196.for.body_crit_edge.i, %for.body.lr.ph.i
  %indvars.iv362.i = phi i64 [ 2, %for.body.lr.ph.i ], [ %indvars.iv.next363.i, %if.end196.for.body_crit_edge.i ]
  %indvars.iv359.i = phi i64 [ %46, %for.body.lr.ph.i ], [ %indvars.iv.next360.i, %if.end196.for.body_crit_edge.i ]
  %indvars.iv.i = phi i64 [ %45, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end196.for.body_crit_edge.i ]
  %usize.0357.i = phi i32 [ %sub73.i, %for.body.lr.ph.i ], [ %dec198.i, %if.end196.for.body_crit_edge.i ]
  %u0jloc.0355.i = phi i32 [ 3, %for.body.lr.ph.i ], [ %phitmp366.i, %if.end196.for.body_crit_edge.i ]
  %dloc.0353.i = phi i32 [ %add72.i, %for.body.lr.ph.i ], [ %add78.i, %if.end196.for.body_crit_edge.i ]
  %l1real.0352.i = phi double [ undef, %for.body.lr.ph.i ], [ %l1real.1392.i, %if.end196.for.body_crit_edge.i ]
  %l0real.0351.i = phi double [ undef, %for.body.lr.ph.i ], [ %l0real.1390.i, %if.end196.for.body_crit_edge.i ]
  %l1imag.0350.i = phi double [ undef, %for.body.lr.ph.i ], [ %l1imag.1388.i, %if.end196.for.body_crit_edge.i ]
  %l0imag.0349.i = phi double [ undef, %for.body.lr.ph.i ], [ %l0imag.1386.i, %if.end196.for.body_crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %47 = trunc i64 %indvars.iv.next.i to i32
  %add78.i = add nsw i32 %dloc.0353.i, %47
  %48 = load i32* %type.i, align 4, !tbaa !3
  switch i32 %48, label %if.end166.i [
    i32 1, label %if.end166.thread.i
    i32 2, label %if.then96.i
  ]

if.end166.thread.i:                               ; preds = %for.body.i
  %arrayidx84.i = getelementptr inbounds double* %call.i, i64 %indvars.iv362.i
  %49 = load double* %arrayidx84.i, align 8, !tbaa !4
  %arrayidx86.i = getelementptr inbounds double* %call.i, i64 %indvars.iv359.i
  %50 = load double* %arrayidx86.i, align 8, !tbaa !4
  %mul87.i = fmul double %areal.0346370.i, %49
  %mul88.i = fmul double %breal.0344374.i, %50
  %add89.i = fadd double %mul87.i, %mul88.i
  %mul90.i = fmul double %breal.0344374.i, %49
  %mul91.i = fmul double %creal.0342378.i, %50
  %add92.i = fadd double %mul90.i, %mul91.i
  br label %if.then169.i

if.then96.i:                                      ; preds = %for.body.i
  %51 = trunc i64 %indvars.iv362.i to i32
  %mul97.i = shl nsw i32 %51, 1
  %idxprom98.i = sext i32 %mul97.i to i64
  %arrayidx99.i = getelementptr inbounds double* %call.i, i64 %idxprom98.i
  %52 = load double* %arrayidx99.i, align 8, !tbaa !4
  %add101336.i = or i32 %mul97.i, 1
  %idxprom102.i = sext i32 %add101336.i to i64
  %arrayidx103.i = getelementptr inbounds double* %call.i, i64 %idxprom102.i
  %53 = load double* %arrayidx103.i, align 8, !tbaa !4
  %54 = trunc i64 %indvars.iv359.i to i32
  %mul104.i = shl nsw i32 %54, 1
  %idxprom105.i = sext i32 %mul104.i to i64
  %arrayidx106.i = getelementptr inbounds double* %call.i, i64 %idxprom105.i
  %55 = load double* %arrayidx106.i, align 8, !tbaa !4
  %add108337.i = or i32 %mul104.i, 1
  %idxprom109.i = sext i32 %add108337.i to i64
  %arrayidx110.i = getelementptr inbounds double* %call.i, i64 %idxprom109.i
  %56 = load double* %arrayidx110.i, align 8, !tbaa !4
  %57 = load i32* %symflag, align 4, !tbaa !3
  %cmp112.i = icmp eq i32 %57, 1
  %mul114.i = fmul double %areal.0346370.i, %52
  br i1 %cmp112.i, label %if.end166.thread393.i, label %if.else135.i

if.end166.thread393.i:                            ; preds = %if.then96.i
  %mul115.i = fmul double %breal.0344374.i, %55
  %add116.i = fadd double %mul114.i, %mul115.i
  %mul117.i = fmul double %bimag.0341380.i, %56
  %sub118.i = fsub double %add116.i, %mul117.i
  %58 = fmul double %areal.0346370.i, %53
  %mul120.i = fsub double -0.000000e+00, %58
  %mul121.i = fmul double %bimag.0341380.i, %55
  %sub122.i = fsub double %mul120.i, %mul121.i
  %mul123.i = fmul double %breal.0344374.i, %56
  %sub124.i = fsub double %sub122.i, %mul123.i
  %mul125.i = fmul double %breal.0344374.i, %52
  %mul126.i = fmul double %bimag.0341380.i, %53
  %add127.i = fadd double %mul125.i, %mul126.i
  %mul128.i = fmul double %creal.0342378.i, %55
  %add129.i = fadd double %add127.i, %mul128.i
  %mul130.i = fmul double %bimag.0341380.i, %52
  %mul131.i = fmul double %breal.0344374.i, %53
  %sub132.i = fsub double %mul130.i, %mul131.i
  %mul133.i = fmul double %creal.0342378.i, %56
  %sub134.i = fsub double %sub132.i, %mul133.i
  br label %if.then181.i

if.else135.i:                                     ; preds = %if.then96.i
  %mul137.i = fmul double %aimag.0345372.i, %53
  %sub138.i = fsub double %mul114.i, %mul137.i
  %mul139.i = fmul double %breal.0344374.i, %55
  %add140.i = fadd double %sub138.i, %mul139.i
  %mul141.i = fmul double %bimag.0341380.i, %56
  %sub142.i = fsub double %add140.i, %mul141.i
  %mul143.i = fmul double %aimag.0345372.i, %52
  %mul144.i = fmul double %areal.0346370.i, %53
  %add145.i = fadd double %mul143.i, %mul144.i
  %mul146.i = fmul double %bimag.0341380.i, %55
  %add147.i = fadd double %add145.i, %mul146.i
  %mul148.i = fmul double %breal.0344374.i, %56
  %add149.i = fadd double %add147.i, %mul148.i
  %mul150.i = fmul double %breal.0344374.i, %52
  %mul151.i = fmul double %bimag.0341380.i, %53
  %sub152.i = fsub double %mul150.i, %mul151.i
  %mul153.i = fmul double %creal.0342378.i, %55
  %add154.i = fadd double %sub152.i, %mul153.i
  %mul155.i = fmul double %cimag.0343376.i, %56
  %sub156.i = fsub double %add154.i, %mul155.i
  %mul157.i = fmul double %bimag.0341380.i, %52
  %mul158.i = fmul double %breal.0344374.i, %53
  %add159.i = fadd double %mul157.i, %mul158.i
  %mul160.i = fmul double %cimag.0343376.i, %55
  %add161.i = fadd double %add159.i, %mul160.i
  %mul162.i = fmul double %creal.0342378.i, %56
  %add163.i = fadd double %add161.i, %mul162.i
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.else135.i, %for.body.i
  %l0imag.1.i = phi double [ %l0imag.0349.i, %for.body.i ], [ %add149.i, %if.else135.i ]
  %l1imag.1.i = phi double [ %l1imag.0350.i, %for.body.i ], [ %add163.i, %if.else135.i ]
  %l0real.1.i = phi double [ %l0real.0351.i, %for.body.i ], [ %sub142.i, %if.else135.i ]
  %l1real.1.i = phi double [ %l1real.0352.i, %for.body.i ], [ %sub156.i, %if.else135.i ]
  switch i32 %48, label %if.end196.i [
    i32 1, label %if.end166.i.if.then169.i_crit_edge
    i32 2, label %if.end166.i.if.then181.i_crit_edge
  ]

if.end166.i.if.then169.i_crit_edge:               ; preds = %if.end166.i
  %arrayidx174.i.pre = getelementptr inbounds double* %call.i, i64 %indvars.iv362.i
  %arrayidx177.i.pre = getelementptr inbounds double* %call.i, i64 %indvars.iv359.i
  br label %if.then169.i

if.end166.i.if.then181.i_crit_edge:               ; preds = %if.end166.i
  %.pre17 = trunc i64 %indvars.iv362.i to i32
  %mul187.i.pre = shl nsw i32 %.pre17, 1
  %idxprom188.i.pre = sext i32 %mul187.i.pre to i64
  %arrayidx189.i.pre = getelementptr inbounds double* %call.i, i64 %idxprom188.i.pre
  %.pre18 = trunc i64 %indvars.iv359.i to i32
  %mul192.i.pre = shl nsw i32 %.pre18, 1
  %idxprom193.i.pre = sext i32 %mul192.i.pre to i64
  %arrayidx194.i.pre = getelementptr inbounds double* %call.i, i64 %idxprom193.i.pre
  br label %if.then181.i

if.then169.i:                                     ; preds = %if.end166.i.if.then169.i_crit_edge, %if.end166.thread.i
  %arrayidx177.i.pre-phi = phi double* [ %arrayidx177.i.pre, %if.end166.i.if.then169.i_crit_edge ], [ %arrayidx86.i, %if.end166.thread.i ]
  %arrayidx174.i.pre-phi = phi double* [ %arrayidx174.i.pre, %if.end166.i.if.then169.i_crit_edge ], [ %arrayidx84.i, %if.end166.thread.i ]
  %l1real.1391.i = phi double [ %l1real.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %add92.i, %if.end166.thread.i ]
  %l0real.1389.i = phi double [ %l0real.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %add89.i, %if.end166.thread.i ]
  %l1imag.1387.i = phi double [ %l1imag.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %l1imag.0350.i, %if.end166.thread.i ]
  %l0imag.1385.i = phi double [ %l0imag.1.i, %if.end166.i.if.then169.i_crit_edge ], [ %l0imag.0349.i, %if.end166.thread.i ]
  %idxprom170.i = sext i32 %add78.i to i64
  %arrayidx171.i = getelementptr inbounds double* %call.i, i64 %idxprom170.i
  %sub172.i = fsub double -0.000000e+00, %l0real.1389.i
  %sub175.i = fsub double -0.000000e+00, %l1real.1391.i
  call void @DVaxpy2(i32 %usize.0357.i, double* %arrayidx171.i, double %sub172.i, double* %arrayidx174.i.pre-phi, double %sub175.i, double* %arrayidx177.i.pre-phi) #7
  br label %if.end196.i

if.then181.i:                                     ; preds = %if.end166.i.if.then181.i_crit_edge, %if.end166.thread393.i
  %arrayidx194.i.pre-phi = phi double* [ %arrayidx194.i.pre, %if.end166.i.if.then181.i_crit_edge ], [ %arrayidx106.i, %if.end166.thread393.i ]
  %arrayidx189.i.pre-phi = phi double* [ %arrayidx189.i.pre, %if.end166.i.if.then181.i_crit_edge ], [ %arrayidx99.i, %if.end166.thread393.i ]
  %l1real.1397.i = phi double [ %l1real.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %add129.i, %if.end166.thread393.i ]
  %l0real.1396.i = phi double [ %l0real.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub118.i, %if.end166.thread393.i ]
  %l1imag.1395.i = phi double [ %l1imag.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub134.i, %if.end166.thread393.i ]
  %l0imag.1394.i = phi double [ %l0imag.1.i, %if.end166.i.if.then181.i_crit_edge ], [ %sub124.i, %if.end166.thread393.i ]
  %mul182.i = shl nsw i32 %add78.i, 1
  %idxprom183.i = sext i32 %mul182.i to i64
  %arrayidx184.i = getelementptr inbounds double* %call.i, i64 %idxprom183.i
  %sub185.i = fsub double -0.000000e+00, %l0real.1396.i
  %sub186.i = fsub double -0.000000e+00, %l0imag.1394.i
  %sub190.i = fsub double -0.000000e+00, %l1real.1397.i
  %sub191.i = fsub double -0.000000e+00, %l1imag.1395.i
  call void @ZVaxpy2(i32 %usize.0357.i, double* %arrayidx184.i, double %sub185.i, double %sub186.i, double* %arrayidx189.i.pre-phi, double %sub190.i, double %sub191.i, double* %arrayidx194.i.pre-phi) #7
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then181.i, %if.then169.i, %if.end166.i
  %l1real.1392.i = phi double [ %l1real.1.i, %if.end166.i ], [ %l1real.1397.i, %if.then181.i ], [ %l1real.1391.i, %if.then169.i ]
  %l0real.1390.i = phi double [ %l0real.1.i, %if.end166.i ], [ %l0real.1396.i, %if.then181.i ], [ %l0real.1389.i, %if.then169.i ]
  %l1imag.1388.i = phi double [ %l1imag.1.i, %if.end166.i ], [ %l1imag.1395.i, %if.then181.i ], [ %l1imag.1387.i, %if.then169.i ]
  %l0imag.1386.i = phi double [ %l0imag.1.i, %if.end166.i ], [ %l0imag.1394.i, %if.then181.i ], [ %l0imag.1385.i, %if.then169.i ]
  %59 = load i32* %nD.i, align 4, !tbaa !3
  %cmp77.i = icmp slt i32 %u0jloc.0355.i, %59
  br i1 %cmp77.i, label %if.end196.for.body_crit_edge.i, label %symmetric2x2.exit

if.end196.for.body_crit_edge.i:                   ; preds = %if.end196.i
  %indvars.iv.next360.i = add i64 %indvars.iv359.i, 1
  %dec198.i = add nsw i32 %usize.0357.i, -1
  %indvars.iv.next363.i = add i64 %indvars.iv362.i, 1
  %phitmp366.i = add i32 %u0jloc.0355.i, 1
  br label %for.body.i

symmetric2x2.exit:                                ; preds = %if.end196.i, %if.then.i, %if.end37.i, %if.end71.i
  %retval.0.i = phi i32 [ 0, %if.end37.i ], [ 0, %if.then.i ], [ 1, %if.end71.i ], [ 1, %if.end196.i ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %retval.0.i
}

; Function Attrs: optsize
declare void @Chv_swapRows(%struct._Chv*, i32, i32) #4

; Function Attrs: optsize
declare void @Chv_swapColumns(%struct._Chv*, i32, i32) #4

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #4

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #4

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: optsize
declare void @ZVzero(i32, double*) #4

; Function Attrs: optsize
declare i32 @Zrecip2(double, double, double, double, double, double, double, double, double*, double*, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @DVscale2(i32, double*, double*, double, double, double, double) #4

; Function Attrs: optsize
declare void @ZVscale2(i32, double*, double*, double, double, double, double, double, double, double, double) #4

; Function Attrs: optsize
declare void @DVaxpy2(i32, double*, double, double*, double, double*) #4

; Function Attrs: optsize
declare void @ZVaxpy2(i32, double*, double, double, double*, double, double, double*) #4

; Function Attrs: optsize
declare i32 @Zrecip(double, double, double*, double*) #4

; Function Attrs: optsize
declare void @DVscale(i32, double*, double) #4

; Function Attrs: optsize
declare void @ZVscale(i32, double*, double, double) #4

; Function Attrs: optsize
declare void @DVaxpy(i32, double*, double, double*) #4

; Function Attrs: optsize
declare void @ZVaxpy(i32, double*, double, double, double*) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
