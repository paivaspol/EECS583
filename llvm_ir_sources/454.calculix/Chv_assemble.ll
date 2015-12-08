; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_addChevron(%p,%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [122 x i8] c"\0A fatal error in Chv_addChevron()\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [142 x i8] c"\0A fatal error in Chv_addChevron()\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_addChevron()\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A chevron id %d not found in colind[]\00", align 1
@.str5 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A ii %d, negative offset %d\0A\00", align 1
@.str6 = private unnamed_addr constant [80 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A jcol %d not found in colind[]\0A\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"\0A colind\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"\0A chvind\00", align 1
@.str9 = private unnamed_addr constant [128 x i8] c"\0A fatal error in Chv_addChevron()\0A chevron is hermitian, but the scalar has nonzero imaginary part\0A sum is no longer hermitian\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad symflag %d\0A\00", align 1
@.str12 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A chvI->symflag = %d, chvJ->symflag = %d\0A\00", align 1
@.str13 = private unnamed_addr constant [116 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad dimensions\0A nDI = %d, nLI = %d, nUI = %d\0A nDI = %d, nLI = %d, nUI = %d\00", align 1
@.str14 = private unnamed_addr constant [82 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A column indicesI do not nest in indicesJ\0A\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"\0A colindI\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"\0A colindJ\00", align 1
@.str17 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A row indicesI do not nest in indicesJ\0A\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"\0A rowindI\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"\0A rowindJ\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A ichvI = %d, ichvJ = %d, rowindI[ichvI] = %d\00", align 1
@.str21 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_assemblePostponedData(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_addChevron(%struct._Chv* %chv, double* %alpha, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %ichv, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %chvsize, 0
  %or.cond797 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %chvind, null
  %or.cond798 = or i1 %or.cond797, %cmp5
  %cmp7 = icmp eq double* %chvent, null
  %or.cond799 = or i1 %or.cond798, %cmp7
  br i1 %or.cond799, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, double* %alpha, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %sw.default18 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb11.thread
    i32 2, label %sw.bb11.thread
  ]

sw.default:                                       ; preds = %sw.bb
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([122 x i8]* @.str1, i64 0, i64 0), i32 %2) #5
  call void @exit(i32 -1) #6
  unreachable

sw.bb11.thread:                                   ; preds = %sw.bb, %sw.bb
  br label %sw.epilog21

sw.bb11:                                          ; preds = %if.end
  %symflag12.phi.trans.insert = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %.pre = load i32* %symflag12.phi.trans.insert, align 4, !tbaa !3
  %switch = icmp ult i32 %.pre, 3
  br i1 %switch, label %sw.epilog21, label %sw.default14

sw.default14:                                     ; preds = %sw.bb11
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([142 x i8]* @.str2, i64 0, i64 0), i32 %.pre) #5
  call void @exit(i32 -1) #6
  unreachable

sw.default18:                                     ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0), i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog21:                                      ; preds = %sw.bb11.thread, %sw.bb11
  %symflag12962 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %cmp22 = icmp eq i32 %chvsize, 0
  br i1 %cmp22, label %return, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %sw.epilog21
  switch i32 %1, label %if.end37 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true30
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false23
  %6 = load double* %alpha, align 8, !tbaa !4
  %cmp26 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp26, label %return, label %if.end37

land.lhs.true30:                                  ; preds = %lor.lhs.false23
  %7 = load double* %alpha, align 8, !tbaa !4
  %cmp32 = fcmp oeq double %7, 0.000000e+00
  br i1 %cmp32, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %arrayidx34 = getelementptr inbounds double* %alpha, i64 1
  %8 = load double* %arrayidx34, align 8, !tbaa !4
  %cmp35 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp35, label %return, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false23, %land.lhs.true, %land.lhs.true33, %land.lhs.true30
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5
  %9 = load i32* %nD, align 4, !tbaa !3
  %cmp38870 = icmp sgt i32 %9, 0
  br i1 %cmp38870, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end37
  %10 = load i32** %colind, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %11 = trunc i64 %indvars.iv.next953 to i32
  %cmp38 = icmp slt i32 %11, %9
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv952 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next953, %for.cond ]
  %iloc.0871 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx39 = getelementptr inbounds i32* %10, i64 %indvars.iv952
  %12 = load i32* %arrayidx39, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %12, %ichv
  %indvars.iv.next953 = add i64 %indvars.iv952, 1
  %inc = add nsw i32 %iloc.0871, 1
  br i1 %cmp40, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %if.end37
  %iloc.0.lcssa = phi i32 [ 0, %if.end37 ], [ %iloc.0871, %for.body ], [ %inc, %for.cond ]
  %cmp43 = icmp eq i32 %iloc.0.lcssa, %9
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %for.end
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %ichv) #5
  call void @exit(i32 -1) #6
  unreachable

if.end46:                                         ; preds = %for.end
  %14 = load i32* %symflag12962, align 4, !tbaa !3
  switch i32 %14, label %return [
    i32 0, label %if.then52
    i32 1, label %if.then52
    i32 2, label %if.then255
  ]

if.then52:                                        ; preds = %if.end46, %if.end46
  %15 = load i32* %nU, align 4, !tbaa !3
  %add = add i32 %9, -1
  %sub = add i32 %add, %15
  %cmp54831 = icmp sgt i32 %chvsize, 0
  br i1 %cmp54831, label %for.body55.lr.ph, label %for.end80

for.body55.lr.ph:                                 ; preds = %if.then52
  %16 = load i32** %colind, align 8, !tbaa !0
  br label %for.body55

for.body55:                                       ; preds = %for.body55.lr.ph, %if.end75
  %indvars.iv905 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next906, %if.end75 ]
  %ii.0833 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc79, %if.end75 ]
  %jj.0832 = phi i32 [ %iloc.0.lcssa, %for.body55.lr.ph ], [ %jj.1823, %if.end75 ]
  %arrayidx57 = getelementptr inbounds i32* %chvind, i64 %indvars.iv905
  %17 = load i32* %arrayidx57, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %17, 0
  br i1 %cmp58, label %if.then59, label %if.end63

if.then59:                                        ; preds = %for.body55
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([76 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %ii.0833, i32 %17) #5
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %19, i32 %chvsize, i32* %chvind) #5
  call void @exit(i32 -1) #6
  unreachable

if.end63:                                         ; preds = %for.body55
  %add64 = add nsw i32 %17, %ichv
  %cmp65822 = icmp sgt i32 %jj.0832, %sub
  br i1 %cmp65822, label %if.then71, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end63
  %20 = sext i32 %jj.0832 to i64
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %indvars.iv.next895 = add i64 %indvars.iv894, 1
  %inc69 = add nsw i32 %jj.1823, 1
  %21 = trunc i64 %indvars.iv894 to i32
  %cmp65 = icmp slt i32 %21, %sub
  br i1 %cmp65, label %land.rhs, label %if.then71

land.rhs:                                         ; preds = %while.cond, %land.rhs.lr.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %while.cond ], [ %20, %land.rhs.lr.ph ]
  %jj.1823 = phi i32 [ %inc69, %while.cond ], [ %jj.0832, %land.rhs.lr.ph ]
  %arrayidx67 = getelementptr inbounds i32* %16, i64 %indvars.iv894
  %22 = load i32* %arrayidx67, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %add64, %22
  br i1 %cmp68, label %if.end75, label %while.cond

if.then71:                                        ; preds = %if.end63, %while.cond
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %add64) #5
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %27 = load i32* %ncol, align 4, !tbaa !3
  %28 = load i32** %colind, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %26, i32 %27, i32* %28) #5
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %29)
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %31, i32 %chvsize, i32* %chvind) #5
  call void @exit(i32 -1) #6
  unreachable

if.end75:                                         ; preds = %land.rhs
  store i32 %jj.1823, i32* %arrayidx57, align 4, !tbaa !3
  %indvars.iv.next906 = add i64 %indvars.iv905, 1
  %inc79 = add nsw i32 %ii.0833, 1
  %32 = trunc i64 %indvars.iv.next906 to i32
  %cmp54 = icmp slt i32 %32, %chvsize
  br i1 %cmp54, label %for.body55, label %for.end80

for.end80:                                        ; preds = %if.end75, %if.then52
  %33 = load i32* %type, align 4, !tbaa !3
  switch i32 %33, label %for.cond239.preheader [
    i32 1, label %if.then83
    i32 2, label %if.then119
  ]

if.then83:                                        ; preds = %for.end80
  %call84 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #5
  %idx.ext = sext i32 %iloc.0.lcssa to i64
  %34 = load double* %alpha, align 8, !tbaa !4
  %cmp86 = fcmp oeq double %34, 1.000000e+00
  br i1 %cmp86, label %for.cond88.preheader, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %if.then83
  br i1 %cmp54831, label %for.body103, label %return

for.cond88.preheader:                             ; preds = %if.then83
  br i1 %cmp54831, label %for.body90, label %return

for.body90:                                       ; preds = %for.cond88.preheader, %for.body90
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %for.body90 ], [ 0, %for.cond88.preheader ]
  %arrayidx92 = getelementptr inbounds double* %chvent, i64 %indvars.iv873
  %35 = load double* %arrayidx92, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i32* %chvind, i64 %indvars.iv873
  %36 = load i32* %arrayidx94, align 4, !tbaa !3
  %idxprom95 = sext i32 %36 to i64
  %add.ptr.sum796 = sub i64 %idxprom95, %idx.ext
  %arrayidx96 = getelementptr inbounds double* %call84, i64 %add.ptr.sum796
  %37 = load double* %arrayidx96, align 8, !tbaa !4
  %add97 = fadd double %35, %37
  store double %add97, double* %arrayidx96, align 8, !tbaa !4
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  %lftr.wideiv875 = trunc i64 %indvars.iv.next874 to i32
  %exitcond876 = icmp eq i32 %lftr.wideiv875, %chvsize
  br i1 %exitcond876, label %for.cond239.preheader, label %for.body90

for.cond239.preheader:                            ; preds = %for.body200, %for.body166, %for.body133, %for.body103, %for.body90, %for.end80
  br i1 %cmp54831, label %for.body241.lr.ph, label %return

for.body241.lr.ph:                                ; preds = %for.cond239.preheader
  %38 = load i32** %colind, align 8, !tbaa !0
  br label %for.body241

for.body103:                                      ; preds = %for.cond101.preheader, %for.body103.for.body103_crit_edge
  %39 = phi double [ %.pre954, %for.body103.for.body103_crit_edge ], [ %34, %for.cond101.preheader ]
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %for.body103.for.body103_crit_edge ], [ 0, %for.cond101.preheader ]
  %arrayidx106 = getelementptr inbounds double* %chvent, i64 %indvars.iv877
  %40 = load double* %arrayidx106, align 8, !tbaa !4
  %mul = fmul double %39, %40
  %arrayidx108 = getelementptr inbounds i32* %chvind, i64 %indvars.iv877
  %41 = load i32* %arrayidx108, align 4, !tbaa !3
  %idxprom109 = sext i32 %41 to i64
  %add.ptr.sum = sub i64 %idxprom109, %idx.ext
  %arrayidx110 = getelementptr inbounds double* %call84, i64 %add.ptr.sum
  %42 = load double* %arrayidx110, align 8, !tbaa !4
  %add111 = fadd double %mul, %42
  store double %add111, double* %arrayidx110, align 8, !tbaa !4
  %indvars.iv.next878 = add i64 %indvars.iv877, 1
  %lftr.wideiv879 = trunc i64 %indvars.iv.next878 to i32
  %exitcond880 = icmp eq i32 %lftr.wideiv879, %chvsize
  br i1 %exitcond880, label %for.cond239.preheader, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  %.pre954 = load double* %alpha, align 8, !tbaa !4
  br label %for.body103

if.then119:                                       ; preds = %for.end80
  %call120 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #5
  %mul121 = shl nsw i32 %iloc.0.lcssa, 1
  %idx.ext122 = sext i32 %mul121 to i64
  %43 = load double* %alpha, align 8, !tbaa !4
  %cmp126 = fcmp oeq double %43, 1.000000e+00
  br i1 %cmp126, label %land.lhs.true127, label %if.else157

land.lhs.true127:                                 ; preds = %if.then119
  %arrayidx128 = getelementptr inbounds double* %alpha, i64 1
  %44 = load double* %arrayidx128, align 8, !tbaa !4
  %cmp129 = fcmp oeq double %44, 0.000000e+00
  br i1 %cmp129, label %for.cond131.preheader, label %if.else157

for.cond131.preheader:                            ; preds = %land.lhs.true127
  br i1 %cmp54831, label %for.body133, label %return

for.body133:                                      ; preds = %for.cond131.preheader, %for.body133
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %for.body133 ], [ 0, %for.cond131.preheader ]
  %45 = trunc i64 %indvars.iv881 to i32
  %mul134 = shl nsw i32 %45, 1
  %idxprom135 = sext i32 %mul134 to i64
  %arrayidx136 = getelementptr inbounds double* %chvent, i64 %idxprom135
  %46 = load double* %arrayidx136, align 8, !tbaa !4
  %arrayidx138 = getelementptr inbounds i32* %chvind, i64 %indvars.iv881
  %47 = load i32* %arrayidx138, align 4, !tbaa !3
  %mul139 = shl nsw i32 %47, 1
  %idxprom140 = sext i32 %mul139 to i64
  %add.ptr124.sum792 = sub i64 %idxprom140, %idx.ext122
  %arrayidx141 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum792
  %48 = load double* %arrayidx141, align 8, !tbaa !4
  %add142 = fadd double %46, %48
  store double %add142, double* %arrayidx141, align 8, !tbaa !4
  %add144793 = or i32 %mul134, 1
  %idxprom145 = sext i32 %add144793 to i64
  %arrayidx146 = getelementptr inbounds double* %chvent, i64 %idxprom145
  %49 = load double* %arrayidx146, align 8, !tbaa !4
  %add150794 = or i32 %mul139, 1
  %idxprom151 = sext i32 %add150794 to i64
  %add.ptr124.sum795 = sub i64 %idxprom151, %idx.ext122
  %arrayidx152 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum795
  %50 = load double* %arrayidx152, align 8, !tbaa !4
  %add153 = fadd double %49, %50
  store double %add153, double* %arrayidx152, align 8, !tbaa !4
  %indvars.iv.next882 = add i64 %indvars.iv881, 1
  %lftr.wideiv883 = trunc i64 %indvars.iv.next882 to i32
  %exitcond884 = icmp eq i32 %lftr.wideiv883, %chvsize
  br i1 %exitcond884, label %for.cond239.preheader, label %for.body133

if.else157:                                       ; preds = %land.lhs.true127, %if.then119
  %cmp159 = fcmp une double %43, 0.000000e+00
  br i1 %cmp159, label %land.lhs.true160, label %if.else194

land.lhs.true160:                                 ; preds = %if.else157
  %arrayidx161 = getelementptr inbounds double* %alpha, i64 1
  %51 = load double* %arrayidx161, align 8, !tbaa !4
  %cmp162 = fcmp oeq double %51, 0.000000e+00
  br i1 %cmp162, label %for.cond164.preheader, label %if.else194

for.cond164.preheader:                            ; preds = %land.lhs.true160
  br i1 %cmp54831, label %for.body166, label %return

for.body166:                                      ; preds = %for.cond164.preheader, %for.body166.for.body166_crit_edge
  %52 = phi double [ %.pre955, %for.body166.for.body166_crit_edge ], [ %43, %for.cond164.preheader ]
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %for.body166.for.body166_crit_edge ], [ 0, %for.cond164.preheader ]
  %53 = trunc i64 %indvars.iv885 to i32
  %mul168 = shl nsw i32 %53, 1
  %idxprom169 = sext i32 %mul168 to i64
  %arrayidx170 = getelementptr inbounds double* %chvent, i64 %idxprom169
  %54 = load double* %arrayidx170, align 8, !tbaa !4
  %mul171 = fmul double %52, %54
  %arrayidx173 = getelementptr inbounds i32* %chvind, i64 %indvars.iv885
  %55 = load i32* %arrayidx173, align 4, !tbaa !3
  %mul174 = shl nsw i32 %55, 1
  %idxprom175 = sext i32 %mul174 to i64
  %add.ptr124.sum788 = sub i64 %idxprom175, %idx.ext122
  %arrayidx176 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum788
  %56 = load double* %arrayidx176, align 8, !tbaa !4
  %add177 = fadd double %mul171, %56
  store double %add177, double* %arrayidx176, align 8, !tbaa !4
  %57 = load double* %alpha, align 8, !tbaa !4
  %add180789 = or i32 %mul168, 1
  %idxprom181 = sext i32 %add180789 to i64
  %arrayidx182 = getelementptr inbounds double* %chvent, i64 %idxprom181
  %58 = load double* %arrayidx182, align 8, !tbaa !4
  %mul183 = fmul double %57, %58
  %add187790 = or i32 %mul174, 1
  %idxprom188 = sext i32 %add187790 to i64
  %add.ptr124.sum791 = sub i64 %idxprom188, %idx.ext122
  %arrayidx189 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum791
  %59 = load double* %arrayidx189, align 8, !tbaa !4
  %add190 = fadd double %mul183, %59
  store double %add190, double* %arrayidx189, align 8, !tbaa !4
  %indvars.iv.next886 = add i64 %indvars.iv885, 1
  %lftr.wideiv887 = trunc i64 %indvars.iv.next886 to i32
  %exitcond888 = icmp eq i32 %lftr.wideiv887, %chvsize
  br i1 %exitcond888, label %for.cond239.preheader, label %for.body166.for.body166_crit_edge

for.body166.for.body166_crit_edge:                ; preds = %for.body166
  %.pre955 = load double* %alpha, align 8, !tbaa !4
  br label %for.body166

if.else194:                                       ; preds = %land.lhs.true160, %if.else157
  %60 = load i32* %symflag12962, align 4, !tbaa !3
  %cmp196 = icmp eq i32 %60, 0
  br i1 %cmp196, label %for.cond198.preheader, label %if.else232

for.cond198.preheader:                            ; preds = %if.else194
  br i1 %cmp54831, label %for.body200.lr.ph, label %return

for.body200.lr.ph:                                ; preds = %for.cond198.preheader
  %arrayidx202 = getelementptr inbounds double* %alpha, i64 1
  br label %for.body200

for.body200:                                      ; preds = %for.body200.for.body200_crit_edge, %for.body200.lr.ph
  %61 = phi double [ %43, %for.body200.lr.ph ], [ %.pre956, %for.body200.for.body200_crit_edge ]
  %indvars.iv889 = phi i64 [ 0, %for.body200.lr.ph ], [ %indvars.iv.next890, %for.body200.for.body200_crit_edge ]
  %62 = load double* %arrayidx202, align 8, !tbaa !4
  %63 = trunc i64 %indvars.iv889 to i32
  %mul203 = shl nsw i32 %63, 1
  %idxprom204 = sext i32 %mul203 to i64
  %arrayidx205 = getelementptr inbounds double* %chvent, i64 %idxprom204
  %64 = load double* %arrayidx205, align 8, !tbaa !4
  %add207785 = or i32 %mul203, 1
  %idxprom208 = sext i32 %add207785 to i64
  %arrayidx209 = getelementptr inbounds double* %chvent, i64 %idxprom208
  %65 = load double* %arrayidx209, align 8, !tbaa !4
  %mul210 = fmul double %61, %64
  %mul211 = fmul double %62, %65
  %sub212 = fsub double %mul210, %mul211
  %arrayidx214 = getelementptr inbounds i32* %chvind, i64 %indvars.iv889
  %66 = load i32* %arrayidx214, align 4, !tbaa !3
  %mul215 = shl nsw i32 %66, 1
  %idxprom216 = sext i32 %mul215 to i64
  %add.ptr124.sum = sub i64 %idxprom216, %idx.ext122
  %arrayidx217 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum
  %67 = load double* %arrayidx217, align 8, !tbaa !4
  %add218 = fadd double %67, %sub212
  store double %add218, double* %arrayidx217, align 8, !tbaa !4
  %mul219 = fmul double %61, %65
  %mul220 = fmul double %62, %64
  %add221 = fadd double %mul220, %mul219
  %add225786 = or i32 %mul215, 1
  %idxprom226 = sext i32 %add225786 to i64
  %add.ptr124.sum787 = sub i64 %idxprom226, %idx.ext122
  %arrayidx227 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum787
  %68 = load double* %arrayidx227, align 8, !tbaa !4
  %add228 = fadd double %add221, %68
  store double %add228, double* %arrayidx227, align 8, !tbaa !4
  %indvars.iv.next890 = add i64 %indvars.iv889, 1
  %lftr.wideiv891 = trunc i64 %indvars.iv.next890 to i32
  %exitcond892 = icmp eq i32 %lftr.wideiv891, %chvsize
  br i1 %exitcond892, label %for.cond239.preheader, label %for.body200.for.body200_crit_edge

for.body200.for.body200_crit_edge:                ; preds = %for.body200
  %.pre956 = load double* %alpha, align 8, !tbaa !4
  br label %for.body200

if.else232:                                       ; preds = %if.else194
  %69 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([128 x i8]* @.str9, i64 0, i64 0), i64 127, i64 1, %struct._IO_FILE* %69)
  call void @exit(i32 -1) #6
  unreachable

for.body241:                                      ; preds = %for.body241, %for.body241.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body241.lr.ph ], [ %indvars.iv.next, %for.body241 ]
  %arrayidx243 = getelementptr inbounds i32* %chvind, i64 %indvars.iv
  %71 = load i32* %arrayidx243, align 4, !tbaa !3
  %idxprom244 = sext i32 %71 to i64
  %arrayidx245 = getelementptr inbounds i32* %38, i64 %idxprom244
  %72 = load i32* %arrayidx245, align 4, !tbaa !3
  %sub246 = sub nsw i32 %72, %ichv
  store i32 %sub246, i32* %arrayidx243, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %chvsize
  br i1 %exitcond, label %return, label %for.body241

if.then255:                                       ; preds = %if.end46
  %73 = load i32* %nU, align 4, !tbaa !3
  %add256 = add i32 %9, -1
  %sub257 = add i32 %add256, %73
  %cmp259866 = icmp sgt i32 %chvsize, 0
  br i1 %cmp259866, label %for.body260.lr.ph, label %for.cond287.preheader

for.body260.lr.ph:                                ; preds = %if.then255
  %74 = load i32** %colind, align 8, !tbaa !0
  br label %for.body260

for.cond287.preheader:                            ; preds = %if.end279, %for.body260, %if.then255
  %ii.7.lcssa = phi i32 [ 0, %if.then255 ], [ %ii.7868, %for.body260 ], [ %inc285, %if.end279 ]
  %cmp288856 = icmp slt i32 %ii.7.lcssa, %chvsize
  br i1 %cmp288856, label %for.body289.lr.ph, label %for.end312

for.body289.lr.ph:                                ; preds = %for.cond287.preheader
  %75 = load i32** %colind, align 8, !tbaa !0
  %76 = sext i32 %ii.7.lcssa to i64
  br label %for.body289

for.body260:                                      ; preds = %for.body260.lr.ph, %if.end279
  %indvars.iv948 = phi i64 [ 0, %for.body260.lr.ph ], [ %indvars.iv.next949, %if.end279 ]
  %ii.7868 = phi i32 [ 0, %for.body260.lr.ph ], [ %inc285, %if.end279 ]
  %jj.2867 = phi i32 [ %sub257, %for.body260.lr.ph ], [ %jj.3861, %if.end279 ]
  %arrayidx262 = getelementptr inbounds i32* %chvind, i64 %indvars.iv948
  %77 = load i32* %arrayidx262, align 4, !tbaa !3
  %cmp263 = icmp sgt i32 %77, -1
  br i1 %cmp263, label %for.cond287.preheader, label %if.end265

if.end265:                                        ; preds = %for.body260
  %sub266 = sub nsw i32 %ichv, %77
  %cmp268860 = icmp slt i32 %jj.2867, %iloc.0.lcssa
  br i1 %cmp268860, label %if.then277, label %land.rhs269.lr.ph

land.rhs269.lr.ph:                                ; preds = %if.end265
  %78 = sext i32 %jj.2867 to i64
  br label %land.rhs269

while.cond267:                                    ; preds = %land.rhs269
  %indvars.iv.next941 = add i64 %indvars.iv940, -1
  %dec = add nsw i32 %jj.3861, -1
  %79 = trunc i64 %indvars.iv940 to i32
  %cmp268 = icmp sgt i32 %79, %iloc.0.lcssa
  br i1 %cmp268, label %land.rhs269, label %if.then277

land.rhs269:                                      ; preds = %while.cond267, %land.rhs269.lr.ph
  %indvars.iv940 = phi i64 [ %indvars.iv.next941, %while.cond267 ], [ %78, %land.rhs269.lr.ph ]
  %jj.3861 = phi i32 [ %dec, %while.cond267 ], [ %jj.2867, %land.rhs269.lr.ph ]
  %arrayidx271 = getelementptr inbounds i32* %74, i64 %indvars.iv940
  %80 = load i32* %arrayidx271, align 4, !tbaa !3
  %cmp272 = icmp eq i32 %sub266, %80
  br i1 %cmp272, label %if.end279, label %while.cond267

if.then277:                                       ; preds = %if.end265, %while.cond267
  %81 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %sub266) #5
  call void @exit(i32 -1) #6
  unreachable

if.end279:                                        ; preds = %land.rhs269
  %add281 = sub i32 %iloc.0.lcssa, %jj.3861
  store i32 %add281, i32* %arrayidx262, align 4, !tbaa !3
  %indvars.iv.next949 = add i64 %indvars.iv948, 1
  %inc285 = add nsw i32 %ii.7868, 1
  %82 = trunc i64 %indvars.iv.next949 to i32
  %cmp259 = icmp slt i32 %82, %chvsize
  br i1 %cmp259, label %for.body260, label %for.cond287.preheader

for.body289:                                      ; preds = %for.body289.lr.ph, %if.end306
  %indvars.iv937 = phi i64 [ %76, %for.body289.lr.ph ], [ %indvars.iv.next938, %if.end306 ]
  %jj.4857 = phi i32 [ %iloc.0.lcssa, %for.body289.lr.ph ], [ %jj.5853, %if.end306 ]
  %arrayidx291 = getelementptr inbounds i32* %chvind, i64 %indvars.iv937
  %83 = load i32* %arrayidx291, align 4, !tbaa !3
  %add292 = add nsw i32 %83, %ichv
  %cmp294852 = icmp sgt i32 %jj.4857, %sub257
  br i1 %cmp294852, label %if.then304, label %land.rhs295.lr.ph

land.rhs295.lr.ph:                                ; preds = %for.body289
  %84 = sext i32 %jj.4857 to i64
  br label %land.rhs295

while.cond293:                                    ; preds = %land.rhs295
  %indvars.iv.next933 = add i64 %indvars.iv932, 1
  %inc301 = add nsw i32 %jj.5853, 1
  %85 = trunc i64 %indvars.iv932 to i32
  %cmp294 = icmp slt i32 %85, %sub257
  br i1 %cmp294, label %land.rhs295, label %if.then304

land.rhs295:                                      ; preds = %while.cond293, %land.rhs295.lr.ph
  %indvars.iv932 = phi i64 [ %indvars.iv.next933, %while.cond293 ], [ %84, %land.rhs295.lr.ph ]
  %jj.5853 = phi i32 [ %inc301, %while.cond293 ], [ %jj.4857, %land.rhs295.lr.ph ]
  %arrayidx297 = getelementptr inbounds i32* %75, i64 %indvars.iv932
  %86 = load i32* %arrayidx297, align 4, !tbaa !3
  %cmp298 = icmp eq i32 %add292, %86
  br i1 %cmp298, label %if.end306, label %while.cond293

if.then304:                                       ; preds = %for.body289, %while.cond293
  %87 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %add292) #5
  call void @exit(i32 -1) #6
  unreachable

if.end306:                                        ; preds = %land.rhs295
  %sub307 = sub nsw i32 %jj.5853, %iloc.0.lcssa
  store i32 %sub307, i32* %arrayidx291, align 4, !tbaa !3
  %indvars.iv.next938 = add i64 %indvars.iv937, 1
  %88 = trunc i64 %indvars.iv.next938 to i32
  %cmp288 = icmp slt i32 %88, %chvsize
  br i1 %cmp288, label %for.body289, label %for.end312

for.end312:                                       ; preds = %if.end306, %for.cond287.preheader
  %call313 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #5
  %89 = load i32* %type, align 4, !tbaa !3
  switch i32 %89, label %for.cond466.preheader [
    i32 1, label %if.then316
    i32 2, label %if.then353
  ]

if.then316:                                       ; preds = %for.end312
  %90 = load double* %alpha, align 8, !tbaa !4
  %cmp318 = fcmp oeq double %90, 1.000000e+00
  br i1 %cmp318, label %for.cond320.preheader, label %for.cond334.preheader

for.cond334.preheader:                            ; preds = %if.then316
  br i1 %cmp259866, label %for.body336, label %return

for.cond320.preheader:                            ; preds = %if.then316
  br i1 %cmp259866, label %for.body322, label %return

for.body322:                                      ; preds = %for.cond320.preheader, %for.body322
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %for.body322 ], [ 0, %for.cond320.preheader ]
  %arrayidx324 = getelementptr inbounds double* %chvent, i64 %indvars.iv911
  %91 = load double* %arrayidx324, align 8, !tbaa !4
  %arrayidx326 = getelementptr inbounds i32* %chvind, i64 %indvars.iv911
  %92 = load i32* %arrayidx326, align 4, !tbaa !3
  %idxprom327 = sext i32 %92 to i64
  %arrayidx328 = getelementptr inbounds double* %call313, i64 %idxprom327
  %93 = load double* %arrayidx328, align 8, !tbaa !4
  %add329 = fadd double %91, %93
  store double %add329, double* %arrayidx328, align 8, !tbaa !4
  %indvars.iv.next912 = add i64 %indvars.iv911, 1
  %lftr.wideiv913 = trunc i64 %indvars.iv.next912 to i32
  %exitcond914 = icmp eq i32 %lftr.wideiv913, %chvsize
  br i1 %exitcond914, label %for.cond466.preheader, label %for.body322

for.cond466.preheader:                            ; preds = %for.body430, %for.body395, %for.body362, %for.body336, %for.body322, %for.end312
  br i1 %cmp259866, label %for.body468.lr.ph, label %return

for.body468.lr.ph:                                ; preds = %for.cond466.preheader
  %94 = load i32** %colind, align 8, !tbaa !0
  br label %for.body468

for.body336:                                      ; preds = %for.cond334.preheader, %for.body336.for.body336_crit_edge
  %95 = phi double [ %.pre957, %for.body336.for.body336_crit_edge ], [ %90, %for.cond334.preheader ]
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %for.body336.for.body336_crit_edge ], [ 0, %for.cond334.preheader ]
  %arrayidx339 = getelementptr inbounds double* %chvent, i64 %indvars.iv915
  %96 = load double* %arrayidx339, align 8, !tbaa !4
  %mul340 = fmul double %95, %96
  %arrayidx342 = getelementptr inbounds i32* %chvind, i64 %indvars.iv915
  %97 = load i32* %arrayidx342, align 4, !tbaa !3
  %idxprom343 = sext i32 %97 to i64
  %arrayidx344 = getelementptr inbounds double* %call313, i64 %idxprom343
  %98 = load double* %arrayidx344, align 8, !tbaa !4
  %add345 = fadd double %mul340, %98
  store double %add345, double* %arrayidx344, align 8, !tbaa !4
  %indvars.iv.next916 = add i64 %indvars.iv915, 1
  %lftr.wideiv917 = trunc i64 %indvars.iv.next916 to i32
  %exitcond918 = icmp eq i32 %lftr.wideiv917, %chvsize
  br i1 %exitcond918, label %for.cond466.preheader, label %for.body336.for.body336_crit_edge

for.body336.for.body336_crit_edge:                ; preds = %for.body336
  %.pre957 = load double* %alpha, align 8, !tbaa !4
  br label %for.body336

if.then353:                                       ; preds = %for.end312
  %99 = load double* %alpha, align 8, !tbaa !4
  %cmp355 = fcmp oeq double %99, 1.000000e+00
  br i1 %cmp355, label %land.lhs.true356, label %if.else386

land.lhs.true356:                                 ; preds = %if.then353
  %arrayidx357 = getelementptr inbounds double* %alpha, i64 1
  %100 = load double* %arrayidx357, align 8, !tbaa !4
  %cmp358 = fcmp oeq double %100, 0.000000e+00
  br i1 %cmp358, label %for.cond360.preheader, label %if.else386

for.cond360.preheader:                            ; preds = %land.lhs.true356
  br i1 %cmp259866, label %for.body362, label %return

for.body362:                                      ; preds = %for.cond360.preheader, %for.body362
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %for.body362 ], [ 0, %for.cond360.preheader ]
  %101 = trunc i64 %indvars.iv919 to i32
  %mul363 = shl nsw i32 %101, 1
  %idxprom364 = sext i32 %mul363 to i64
  %arrayidx365 = getelementptr inbounds double* %chvent, i64 %idxprom364
  %102 = load double* %arrayidx365, align 8, !tbaa !4
  %arrayidx367 = getelementptr inbounds i32* %chvind, i64 %indvars.iv919
  %103 = load i32* %arrayidx367, align 4, !tbaa !3
  %mul368 = shl nsw i32 %103, 1
  %idxprom369 = sext i32 %mul368 to i64
  %arrayidx370 = getelementptr inbounds double* %call313, i64 %idxprom369
  %104 = load double* %arrayidx370, align 8, !tbaa !4
  %add371 = fadd double %102, %104
  store double %add371, double* %arrayidx370, align 8, !tbaa !4
  %add373783 = or i32 %mul363, 1
  %idxprom374 = sext i32 %add373783 to i64
  %arrayidx375 = getelementptr inbounds double* %chvent, i64 %idxprom374
  %105 = load double* %arrayidx375, align 8, !tbaa !4
  %add379784 = or i32 %mul368, 1
  %idxprom380 = sext i32 %add379784 to i64
  %arrayidx381 = getelementptr inbounds double* %call313, i64 %idxprom380
  %106 = load double* %arrayidx381, align 8, !tbaa !4
  %add382 = fadd double %105, %106
  store double %add382, double* %arrayidx381, align 8, !tbaa !4
  %indvars.iv.next920 = add i64 %indvars.iv919, 1
  %lftr.wideiv921 = trunc i64 %indvars.iv.next920 to i32
  %exitcond922 = icmp eq i32 %lftr.wideiv921, %chvsize
  br i1 %exitcond922, label %for.cond466.preheader, label %for.body362

if.else386:                                       ; preds = %land.lhs.true356, %if.then353
  %cmp388 = fcmp une double %99, 1.000000e+00
  br i1 %cmp388, label %land.lhs.true389, label %for.cond428.preheader

for.cond428.preheader:                            ; preds = %land.lhs.true389, %if.else386
  br i1 %cmp259866, label %for.body430.lr.ph, label %return

for.body430.lr.ph:                                ; preds = %for.cond428.preheader
  %arrayidx432 = getelementptr inbounds double* %alpha, i64 1
  br label %for.body430

land.lhs.true389:                                 ; preds = %if.else386
  %arrayidx390 = getelementptr inbounds double* %alpha, i64 1
  %107 = load double* %arrayidx390, align 8, !tbaa !4
  %cmp391 = fcmp oeq double %107, 0.000000e+00
  br i1 %cmp391, label %for.cond393.preheader, label %for.cond428.preheader

for.cond393.preheader:                            ; preds = %land.lhs.true389
  br i1 %cmp259866, label %for.body395, label %return

for.body395:                                      ; preds = %for.cond393.preheader, %for.body395.for.body395_crit_edge
  %108 = phi double [ %.pre958, %for.body395.for.body395_crit_edge ], [ %99, %for.cond393.preheader ]
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %for.body395.for.body395_crit_edge ], [ 0, %for.cond393.preheader ]
  %109 = trunc i64 %indvars.iv923 to i32
  %mul397 = shl nsw i32 %109, 1
  %idxprom398 = sext i32 %mul397 to i64
  %arrayidx399 = getelementptr inbounds double* %chvent, i64 %idxprom398
  %110 = load double* %arrayidx399, align 8, !tbaa !4
  %mul400 = fmul double %108, %110
  %arrayidx402 = getelementptr inbounds i32* %chvind, i64 %indvars.iv923
  %111 = load i32* %arrayidx402, align 4, !tbaa !3
  %mul403 = shl nsw i32 %111, 1
  %idxprom404 = sext i32 %mul403 to i64
  %arrayidx405 = getelementptr inbounds double* %call313, i64 %idxprom404
  %112 = load double* %arrayidx405, align 8, !tbaa !4
  %add406 = fadd double %mul400, %112
  store double %add406, double* %arrayidx405, align 8, !tbaa !4
  %113 = load double* %alpha, align 8, !tbaa !4
  %add409781 = or i32 %mul397, 1
  %idxprom410 = sext i32 %add409781 to i64
  %arrayidx411 = getelementptr inbounds double* %chvent, i64 %idxprom410
  %114 = load double* %arrayidx411, align 8, !tbaa !4
  %mul412 = fmul double %113, %114
  %add416782 = or i32 %mul403, 1
  %idxprom417 = sext i32 %add416782 to i64
  %arrayidx418 = getelementptr inbounds double* %call313, i64 %idxprom417
  %115 = load double* %arrayidx418, align 8, !tbaa !4
  %add419 = fadd double %mul412, %115
  store double %add419, double* %arrayidx418, align 8, !tbaa !4
  %indvars.iv.next924 = add i64 %indvars.iv923, 1
  %lftr.wideiv925 = trunc i64 %indvars.iv.next924 to i32
  %exitcond926 = icmp eq i32 %lftr.wideiv925, %chvsize
  br i1 %exitcond926, label %for.cond466.preheader, label %for.body395.for.body395_crit_edge

for.body395.for.body395_crit_edge:                ; preds = %for.body395
  %.pre958 = load double* %alpha, align 8, !tbaa !4
  br label %for.body395

for.body430:                                      ; preds = %for.body430.for.body430_crit_edge, %for.body430.lr.ph
  %116 = phi double [ %99, %for.body430.lr.ph ], [ %.pre959, %for.body430.for.body430_crit_edge ]
  %indvars.iv927 = phi i64 [ 0, %for.body430.lr.ph ], [ %indvars.iv.next928, %for.body430.for.body430_crit_edge ]
  %117 = load double* %arrayidx432, align 8, !tbaa !4
  %118 = trunc i64 %indvars.iv927 to i32
  %mul433 = shl nsw i32 %118, 1
  %idxprom434 = sext i32 %mul433 to i64
  %arrayidx435 = getelementptr inbounds double* %chvent, i64 %idxprom434
  %119 = load double* %arrayidx435, align 8, !tbaa !4
  %add437779 = or i32 %mul433, 1
  %idxprom438 = sext i32 %add437779 to i64
  %arrayidx439 = getelementptr inbounds double* %chvent, i64 %idxprom438
  %120 = load double* %arrayidx439, align 8, !tbaa !4
  %mul440 = fmul double %116, %119
  %mul441 = fmul double %117, %120
  %sub442 = fsub double %mul440, %mul441
  %arrayidx444 = getelementptr inbounds i32* %chvind, i64 %indvars.iv927
  %121 = load i32* %arrayidx444, align 4, !tbaa !3
  %mul445 = shl nsw i32 %121, 1
  %idxprom446 = sext i32 %mul445 to i64
  %arrayidx447 = getelementptr inbounds double* %call313, i64 %idxprom446
  %122 = load double* %arrayidx447, align 8, !tbaa !4
  %add448 = fadd double %122, %sub442
  store double %add448, double* %arrayidx447, align 8, !tbaa !4
  %mul449 = fmul double %116, %120
  %mul450 = fmul double %117, %119
  %add451 = fadd double %mul450, %mul449
  %add455780 = or i32 %mul445, 1
  %idxprom456 = sext i32 %add455780 to i64
  %arrayidx457 = getelementptr inbounds double* %call313, i64 %idxprom456
  %123 = load double* %arrayidx457, align 8, !tbaa !4
  %add458 = fadd double %add451, %123
  store double %add458, double* %arrayidx457, align 8, !tbaa !4
  %indvars.iv.next928 = add i64 %indvars.iv927, 1
  %lftr.wideiv929 = trunc i64 %indvars.iv.next928 to i32
  %exitcond930 = icmp eq i32 %lftr.wideiv929, %chvsize
  br i1 %exitcond930, label %for.cond466.preheader, label %for.body430.for.body430_crit_edge

for.body430.for.body430_crit_edge:                ; preds = %for.body430
  %.pre959 = load double* %alpha, align 8, !tbaa !4
  br label %for.body430

for.body468:                                      ; preds = %for.inc491, %for.body468.lr.ph
  %indvars.iv907 = phi i64 [ 0, %for.body468.lr.ph ], [ %indvars.iv.next908, %for.inc491 ]
  %arrayidx470 = getelementptr inbounds i32* %chvind, i64 %indvars.iv907
  %124 = load i32* %arrayidx470, align 4, !tbaa !3
  %cmp471 = icmp slt i32 %124, 0
  br i1 %cmp471, label %if.then472, label %if.else481

if.then472:                                       ; preds = %for.body468
  %sub475 = sub nsw i32 %iloc.0.lcssa, %124
  %idxprom476 = sext i32 %sub475 to i64
  %arrayidx477 = getelementptr inbounds i32* %94, i64 %idxprom476
  %125 = load i32* %arrayidx477, align 4, !tbaa !3
  %sub478 = sub nsw i32 %ichv, %125
  br label %for.inc491

if.else481:                                       ; preds = %for.body468
  %add484 = add nsw i32 %124, %iloc.0.lcssa
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds i32* %94, i64 %idxprom485
  %126 = load i32* %arrayidx486, align 4, !tbaa !3
  %sub487 = sub nsw i32 %126, %ichv
  br label %for.inc491

for.inc491:                                       ; preds = %if.then472, %if.else481
  %storemerge = phi i32 [ %sub487, %if.else481 ], [ %sub478, %if.then472 ]
  store i32 %storemerge, i32* %arrayidx470, align 4, !tbaa !3
  %indvars.iv.next908 = add i64 %indvars.iv907, 1
  %lftr.wideiv909 = trunc i64 %indvars.iv.next908 to i32
  %exitcond910 = icmp eq i32 %lftr.wideiv909, %chvsize
  br i1 %exitcond910, label %return, label %for.body468

return:                                           ; preds = %for.cond320.preheader, %for.cond334.preheader, %for.cond360.preheader, %for.cond393.preheader, %for.cond428.preheader, %for.cond88.preheader, %for.cond101.preheader, %for.cond131.preheader, %for.cond164.preheader, %for.cond198.preheader, %for.cond466.preheader, %for.inc491, %for.cond239.preheader, %for.body241, %if.end46, %sw.epilog21, %land.lhs.true, %land.lhs.true33
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_assembleChv(%struct._Chv* %chvJ, %struct._Chv* %chvI) #0 {
entry:
  %ncolI = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %nDI = alloca i32, align 4
  %nDJ = alloca i32, align 4
  %nLI = alloca i32, align 4
  %nLJ = alloca i32, align 4
  %nrowI = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %nUI = alloca i32, align 4
  %nUJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %colindI = alloca i32*, align 8
  %rowindI = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chvJ, null
  %cmp1 = icmp eq %struct._Chv* %chvI, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end
  %symflag14 = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 5
  %3 = load i32* %symflag14, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %1, %3
  br i1 %cmp15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %1, i32 %3) #5
  call void @exit(i32 -1) #6
  unreachable

if.end20:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chvJ, i32* %nDJ, i32* %nLJ, i32* %nUJ) #5
  call void @Chv_dimensions(%struct._Chv* %chvI, i32* %nDI, i32* %nLI, i32* %nUI) #5
  %5 = load i32* %nDI, align 4, !tbaa !3
  %6 = load i32* %nLI, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %nDJ, align 4, !tbaa !3
  %8 = load i32* %nLJ, align 4, !tbaa !3
  %add21 = add nsw i32 %8, %7
  %cmp22 = icmp sgt i32 %add, %add21
  %.pre = load i32* %nUI, align 4, !tbaa !3
  br i1 %cmp22, label %if.end20.if.then27_crit_edge, label %lor.lhs.false23

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  %.pre577 = load i32* %nUJ, align 4, !tbaa !3
  br label %if.then27

lor.lhs.false23:                                  ; preds = %if.end20
  %add24 = add nsw i32 %.pre, %5
  %9 = load i32* %nUJ, align 4, !tbaa !3
  %add25 = add nsw i32 %9, %7
  %cmp26 = icmp sgt i32 %add24, %add25
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end20.if.then27_crit_edge, %lor.lhs.false23
  %10 = phi i32 [ %.pre577, %if.end20.if.then27_crit_edge ], [ %9, %lor.lhs.false23 ]
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([116 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %5, i32 %6, i32 %.pre, i32 %7, i32 %8, i32 %10) #5
  call void @exit(i32 -1) #6
  unreachable

if.end29:                                         ; preds = %lor.lhs.false23
  call void @Chv_columnIndices(%struct._Chv* %chvJ, i32* %ncolJ, i32** %colindJ) #5
  call void @Chv_columnIndices(%struct._Chv* %chvI, i32* %ncolI, i32** %colindI) #5
  %12 = load i32* %ncolI, align 4, !tbaa !3
  %cmp30505 = icmp sgt i32 %12, 0
  br i1 %cmp30505, label %while.cond.preheader.lr.ph, label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end29
  %13 = load i32** %colindI, align 8, !tbaa !0
  %14 = load i32** %colindJ, align 8, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %if.end37
  %15 = phi i32 [ %12, %while.cond.preheader.lr.ph ], [ %21, %if.end37 ]
  %indvars.iv575 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next576, %if.end37 ]
  %jj.0507 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jj.1.lcssa, %if.end37 ]
  %16 = load i32* %ncolJ, align 4, !tbaa !3
  %cmp31502 = icmp slt i32 %jj.0507, %16
  br i1 %cmp31502, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %arrayidx = getelementptr inbounds i32* %13, i64 %indvars.iv575
  %17 = load i32* %arrayidx, align 4, !tbaa !3
  %18 = sext i32 %jj.0507 to i64
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %19 = trunc i64 %indvars.iv.next573 to i32
  %cmp31 = icmp slt i32 %19, %16
  br i1 %cmp31, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv572 = phi i64 [ %18, %land.rhs.lr.ph ], [ %indvars.iv.next573, %while.cond ]
  %jj.1503 = phi i32 [ %jj.0507, %land.rhs.lr.ph ], [ %inc, %while.cond ]
  %arrayidx33 = getelementptr inbounds i32* %14, i64 %indvars.iv572
  %20 = load i32* %arrayidx33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %17, %20
  %indvars.iv.next573 = add i64 %indvars.iv572, 1
  %inc = add nsw i32 %jj.1503, 1
  br i1 %cmp34, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %while.cond.preheader
  %jj.1.lcssa = phi i32 [ %jj.0507, %while.cond.preheader ], [ %jj.1503, %land.rhs ], [ %inc, %while.cond ]
  %cmp35 = icmp eq i32 %jj.1.lcssa, %16
  br i1 %cmp35, label %for.end, label %if.end37

if.end37:                                         ; preds = %while.end
  %arrayidx39 = getelementptr inbounds i32* %13, i64 %indvars.iv575
  store i32 %jj.1.lcssa, i32* %arrayidx39, align 4, !tbaa !3
  %indvars.iv.next576 = add i64 %indvars.iv575, 1
  %21 = load i32* %ncolI, align 4, !tbaa !3
  %22 = trunc i64 %indvars.iv.next576 to i32
  %cmp30 = icmp slt i32 %22, %21
  br i1 %cmp30, label %while.cond.preheader, label %for.end

for.end:                                          ; preds = %if.end37, %while.end, %if.end29
  %23 = phi i32 [ %12, %if.end29 ], [ %15, %while.end ], [ %21, %if.end37 ]
  %jj.2 = phi i32 [ 0, %if.end29 ], [ %16, %while.end ], [ %jj.1.lcssa, %if.end37 ]
  %24 = load i32* %ncolJ, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %jj.2, %24
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %for.end
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([82 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #5
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %26)
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %29 = load i32* %ncolI, align 4, !tbaa !3
  %30 = load i32** %colindI, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %28, i32 %29, i32* %30) #5
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %31)
  %33 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %34 = load i32* %ncolJ, align 4, !tbaa !3
  %35 = load i32** %colindJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %33, i32 %34, i32* %35) #5
  call void @exit(i32 -1) #6
  unreachable

if.end46:                                         ; preds = %for.end
  %36 = load i32* %symflag14, align 4, !tbaa !3
  switch i32 %36, label %for.cond87.preheader [
    i32 0, label %if.then52
    i32 1, label %if.then52
    i32 2, label %if.then55
  ]

if.then52:                                        ; preds = %if.end46, %if.end46
  store i32 %23, i32* %nrowI, align 4, !tbaa !3
  %37 = load i32** %colindI, align 8, !tbaa !0
  store i32* %37, i32** %rowindI, align 8, !tbaa !0
  br label %for.cond87.preheader

for.cond87.preheader:                             ; preds = %if.end46, %for.end78, %if.then52
  %38 = load i32* %nDI, align 4, !tbaa !3
  %cmp88493 = icmp sgt i32 %38, 0
  br i1 %cmp88493, label %for.body89.lr.ph, label %for.cond279.preheader

for.body89.lr.ph:                                 ; preds = %for.cond87.preheader
  %type = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4
  br label %for.body89

if.then55:                                        ; preds = %if.end46
  call void @Chv_rowIndices(%struct._Chv* %chvJ, i32* %nrowJ, i32** %rowindJ) #5
  call void @Chv_rowIndices(%struct._Chv* %chvI, i32* %nrowI, i32** %rowindI) #5
  %39 = load i32* %nrowI, align 4, !tbaa !3
  %cmp57498 = icmp sgt i32 %39, 0
  br i1 %cmp57498, label %while.cond59.preheader.lr.ph, label %for.end78

while.cond59.preheader.lr.ph:                     ; preds = %if.then55
  %40 = load i32** %rowindI, align 8, !tbaa !0
  %41 = load i32** %rowindJ, align 8, !tbaa !0
  br label %while.cond59.preheader

while.cond59.preheader:                           ; preds = %while.cond59.preheader.lr.ph, %if.end73
  %indvars.iv568 = phi i64 [ 0, %while.cond59.preheader.lr.ph ], [ %indvars.iv.next569, %if.end73 ]
  %jj.3500 = phi i32 [ 0, %while.cond59.preheader.lr.ph ], [ %jj.4.lcssa, %if.end73 ]
  %42 = load i32* %nrowJ, align 4, !tbaa !3
  %cmp60496 = icmp slt i32 %jj.3500, %42
  br i1 %cmp60496, label %land.rhs61.lr.ph, label %while.end70

land.rhs61.lr.ph:                                 ; preds = %while.cond59.preheader
  %arrayidx63 = getelementptr inbounds i32* %40, i64 %indvars.iv568
  %43 = load i32* %arrayidx63, align 4, !tbaa !3
  %44 = sext i32 %jj.3500 to i64
  br label %land.rhs61

while.cond59:                                     ; preds = %land.rhs61
  %45 = trunc i64 %indvars.iv.next566 to i32
  %cmp60 = icmp slt i32 %45, %42
  br i1 %cmp60, label %land.rhs61, label %while.end70

land.rhs61:                                       ; preds = %land.rhs61.lr.ph, %while.cond59
  %indvars.iv565 = phi i64 [ %44, %land.rhs61.lr.ph ], [ %indvars.iv.next566, %while.cond59 ]
  %jj.4497 = phi i32 [ %jj.3500, %land.rhs61.lr.ph ], [ %inc69, %while.cond59 ]
  %arrayidx65 = getelementptr inbounds i32* %41, i64 %indvars.iv565
  %46 = load i32* %arrayidx65, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %43, %46
  %indvars.iv.next566 = add i64 %indvars.iv565, 1
  %inc69 = add nsw i32 %jj.4497, 1
  br i1 %cmp66, label %while.end70, label %while.cond59

while.end70:                                      ; preds = %while.cond59, %land.rhs61, %while.cond59.preheader
  %jj.4.lcssa = phi i32 [ %jj.3500, %while.cond59.preheader ], [ %jj.4497, %land.rhs61 ], [ %inc69, %while.cond59 ]
  %cmp71 = icmp eq i32 %jj.4.lcssa, %42
  br i1 %cmp71, label %for.end78, label %if.end73

if.end73:                                         ; preds = %while.end70
  %arrayidx75 = getelementptr inbounds i32* %40, i64 %indvars.iv568
  store i32 %jj.4.lcssa, i32* %arrayidx75, align 4, !tbaa !3
  %indvars.iv.next569 = add i64 %indvars.iv568, 1
  %47 = load i32* %nrowI, align 4, !tbaa !3
  %48 = trunc i64 %indvars.iv.next569 to i32
  %cmp57 = icmp slt i32 %48, %47
  br i1 %cmp57, label %while.cond59.preheader, label %for.end78

for.end78:                                        ; preds = %if.end73, %while.end70, %if.then55
  %jj.5 = phi i32 [ 0, %if.then55 ], [ %42, %while.end70 ], [ %jj.4.lcssa, %if.end73 ]
  %49 = load i32* %nrowJ, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %jj.5, %49
  br i1 %cmp79, label %if.then80, label %for.cond87.preheader

if.then80:                                        ; preds = %for.end78
  %50 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([79 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #5
  %51 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %54 = load i32* %nrowI, align 4, !tbaa !3
  %55 = load i32** %rowindI, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %53, i32 %54, i32* %55) #5
  %56 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %59 = load i32* %nrowJ, align 4, !tbaa !3
  %60 = load i32** %rowindJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %58, i32 %59, i32* %60) #5
  call void @exit(i32 -1) #6
  unreachable

for.cond279.preheader:                            ; preds = %for.inc276, %for.cond87.preheader
  %61 = load i32* %ncolI, align 4, !tbaa !3
  %cmp280466 = icmp sgt i32 %61, 0
  br i1 %cmp280466, label %for.body281.lr.ph, label %for.end290

for.body281.lr.ph:                                ; preds = %for.cond279.preheader
  %62 = load i32** %colindI, align 8, !tbaa !0
  %63 = load i32** %colindJ, align 8, !tbaa !0
  br label %for.body281

for.body89:                                       ; preds = %for.inc276.for.body89_crit_edge, %for.body89.lr.ph
  %indvars.iv557 = phi i64 [ 0, %for.body89.lr.ph ], [ %indvars.iv.next558, %for.inc276.for.body89_crit_edge ]
  %indvars.iv546 = phi i64 [ 1, %for.body89.lr.ph ], [ %indvars.iv.next547, %for.inc276.for.body89_crit_edge ]
  %ichvI.0494 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc277, %for.inc276.for.body89_crit_edge ]
  %64 = load i32** %colindI, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32* %64, i64 %indvars.iv557
  %65 = load i32* %arrayidx91, align 4, !tbaa !3
  %66 = load i32** %rowindI, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %66, i64 %indvars.iv557
  %67 = load i32* %arrayidx93, align 4, !tbaa !3
  %cmp94 = icmp eq i32 %65, %67
  br i1 %cmp94, label %if.end99, label %if.then95

if.then95:                                        ; preds = %for.body89
  %68 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %ichvI.0494, i32 %65, i32 %67) #5
  call void @exit(i32 -1) #6
  unreachable

if.end99:                                         ; preds = %for.body89
  %69 = trunc i64 %indvars.iv557 to i32
  %call100 = call double* @Chv_diagLocation(%struct._Chv* %chvI, i32 %69) #5
  %call101 = call double* @Chv_diagLocation(%struct._Chv* %chvJ, i32 %65) #5
  %70 = load i32* %type, align 4, !tbaa !3
  switch i32 %70, label %if.end118 [
    i32 1, label %if.then103
    i32 2, label %if.then110
  ]

if.then103:                                       ; preds = %if.end99
  %71 = load double* %call100, align 8, !tbaa !4
  %72 = load double* %call101, align 8, !tbaa !4
  %add106 = fadd double %71, %72
  store double %add106, double* %call101, align 8, !tbaa !4
  br label %if.end118

if.then110:                                       ; preds = %if.end99
  %73 = load double* %call100, align 8, !tbaa !4
  %74 = load double* %call101, align 8, !tbaa !4
  %add113 = fadd double %73, %74
  store double %add113, double* %call101, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds double* %call100, i64 1
  %75 = load double* %arrayidx114, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds double* %call101, i64 1
  %76 = load double* %arrayidx115, align 8, !tbaa !4
  %add116 = fadd double %75, %76
  store double %add116, double* %arrayidx115, align 8, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %if.end99, %if.then110, %if.then103
  %77 = load i32* %symflag14, align 4, !tbaa !3
  switch i32 %77, label %for.inc276 [
    i32 0, label %if.then124
    i32 1, label %if.then124
    i32 2, label %if.then178
  ]

if.then124:                                       ; preds = %if.end118, %if.end118
  switch i32 %70, label %for.inc276 [
    i32 1, label %for.cond129.preheader
    i32 2, label %for.cond148.preheader
  ]

for.cond129.preheader:                            ; preds = %if.then124
  %78 = add nsw i64 %indvars.iv557, 1
  %79 = load i32* %ncolI, align 4, !tbaa !3
  %80 = trunc i64 %78 to i32
  %cmp130488 = icmp slt i32 %80, %79
  br i1 %cmp130488, label %for.body131.lr.ph, label %for.inc276

for.body131.lr.ph:                                ; preds = %for.cond129.preheader
  %ii.2487 = add nsw i32 %ichvI.0494, 1
  %81 = load i32** %colindI, align 8, !tbaa !0
  br label %for.body131

for.cond148.preheader:                            ; preds = %if.then124
  %82 = add nsw i64 %indvars.iv557, 1
  %83 = load i32* %ncolI, align 4, !tbaa !3
  %84 = trunc i64 %82 to i32
  %cmp149483 = icmp slt i32 %84, %83
  br i1 %cmp149483, label %for.body150.lr.ph, label %for.inc276

for.body150.lr.ph:                                ; preds = %for.cond148.preheader
  %ii.3482 = add nsw i32 %ichvI.0494, 1
  %85 = load i32** %colindI, align 8, !tbaa !0
  br label %for.body150

for.body131:                                      ; preds = %for.body131.lr.ph, %for.body131
  %indvars.iv551 = phi i64 [ 1, %for.body131.lr.ph ], [ %indvars.iv.next552, %for.body131 ]
  %indvars.iv548 = phi i64 [ %indvars.iv546, %for.body131.lr.ph ], [ %indvars.iv.next549, %for.body131 ]
  %ii.2490 = phi i32 [ %ii.2487, %for.body131.lr.ph ], [ %ii.2, %for.body131 ]
  %arrayidx133 = getelementptr inbounds i32* %81, i64 %indvars.iv548
  %86 = load i32* %arrayidx133, align 4, !tbaa !3
  %sub = sub nsw i32 %86, %65
  %arrayidx135 = getelementptr inbounds double* %call100, i64 %indvars.iv551
  %87 = load double* %arrayidx135, align 8, !tbaa !4
  %idxprom136 = sext i32 %sub to i64
  %arrayidx137 = getelementptr inbounds double* %call101, i64 %idxprom136
  %88 = load double* %arrayidx137, align 8, !tbaa !4
  %add138 = fadd double %87, %88
  store double %add138, double* %arrayidx137, align 8, !tbaa !4
  %indvars.iv.next552 = add i64 %indvars.iv551, 1
  %ii.2 = add nsw i32 %ii.2490, 1
  %cmp130 = icmp slt i32 %ii.2, %79
  %indvars.iv.next549 = add i64 %indvars.iv548, 1
  br i1 %cmp130, label %for.body131, label %for.inc276

for.body150:                                      ; preds = %for.body150.lr.ph, %for.body150
  %indvars.iv544 = phi i64 [ 1, %for.body150.lr.ph ], [ %indvars.iv.next545, %for.body150 ]
  %indvars.iv541 = phi i64 [ %indvars.iv546, %for.body150.lr.ph ], [ %indvars.iv.next542, %for.body150 ]
  %ii.3485 = phi i32 [ %ii.3482, %for.body150.lr.ph ], [ %ii.3, %for.body150 ]
  %arrayidx152 = getelementptr inbounds i32* %85, i64 %indvars.iv541
  %89 = load i32* %arrayidx152, align 4, !tbaa !3
  %sub153 = sub nsw i32 %89, %65
  %90 = trunc i64 %indvars.iv544 to i32
  %mul = shl nsw i32 %90, 1
  %idxprom154 = sext i32 %mul to i64
  %arrayidx155 = getelementptr inbounds double* %call100, i64 %idxprom154
  %91 = load double* %arrayidx155, align 8, !tbaa !4
  %mul156 = shl nsw i32 %sub153, 1
  %idxprom157 = sext i32 %mul156 to i64
  %arrayidx158 = getelementptr inbounds double* %call101, i64 %idxprom157
  %92 = load double* %arrayidx158, align 8, !tbaa !4
  %add159 = fadd double %91, %92
  store double %add159, double* %arrayidx158, align 8, !tbaa !4
  %add161462 = or i32 %mul, 1
  %idxprom162 = sext i32 %add161462 to i64
  %arrayidx163 = getelementptr inbounds double* %call100, i64 %idxprom162
  %93 = load double* %arrayidx163, align 8, !tbaa !4
  %add165463 = or i32 %mul156, 1
  %idxprom166 = sext i32 %add165463 to i64
  %arrayidx167 = getelementptr inbounds double* %call101, i64 %idxprom166
  %94 = load double* %arrayidx167, align 8, !tbaa !4
  %add168 = fadd double %93, %94
  store double %add168, double* %arrayidx167, align 8, !tbaa !4
  %indvars.iv.next545 = add i64 %indvars.iv544, 1
  %ii.3 = add nsw i32 %ii.3485, 1
  %cmp149 = icmp slt i32 %ii.3, %83
  %indvars.iv.next542 = add i64 %indvars.iv541, 1
  br i1 %cmp149, label %for.body150, label %for.inc276

if.then178:                                       ; preds = %if.end118
  switch i32 %70, label %for.inc276 [
    i32 1, label %if.then181
    i32 2, label %if.then217
  ]

if.then181:                                       ; preds = %if.then178
  %95 = add nsw i64 %indvars.iv557, 1
  %add182 = add nsw i32 %ichvI.0494, 1
  %96 = load i32* %ncolI, align 4, !tbaa !3
  %97 = trunc i64 %95 to i32
  %cmp184474 = icmp slt i32 %97, %96
  br i1 %cmp184474, label %for.body185.lr.ph, label %for.cond199.loopexit

for.body185.lr.ph:                                ; preds = %if.then181
  %98 = load i32** %colindI, align 8, !tbaa !0
  br label %for.body185

for.body185:                                      ; preds = %for.body185.lr.ph, %for.body185
  %indvars.iv529 = phi i64 [ %indvars.iv546, %for.body185.lr.ph ], [ %indvars.iv.next530, %for.body185 ]
  %indvars.iv525 = phi i64 [ 1, %for.body185.lr.ph ], [ %indvars.iv.next526, %for.body185 ]
  %ii.4475 = phi i32 [ %add182, %for.body185.lr.ph ], [ %inc195, %for.body185 ]
  %arrayidx187 = getelementptr inbounds i32* %98, i64 %indvars.iv529
  %99 = load i32* %arrayidx187, align 4, !tbaa !3
  %sub188 = sub nsw i32 %99, %65
  %arrayidx190 = getelementptr inbounds double* %call100, i64 %indvars.iv525
  %100 = load double* %arrayidx190, align 8, !tbaa !4
  %idxprom191 = sext i32 %sub188 to i64
  %arrayidx192 = getelementptr inbounds double* %call101, i64 %idxprom191
  %101 = load double* %arrayidx192, align 8, !tbaa !4
  %add193 = fadd double %100, %101
  store double %add193, double* %arrayidx192, align 8, !tbaa !4
  %inc195 = add nsw i32 %ii.4475, 1
  %indvars.iv.next526 = add i64 %indvars.iv525, 1
  %cmp184 = icmp slt i32 %inc195, %96
  %indvars.iv.next530 = add i64 %indvars.iv529, 1
  br i1 %cmp184, label %for.body185, label %for.cond199.loopexit

for.cond199.loopexit:                             ; preds = %for.body185, %if.then181
  %102 = load i32* %nrowI, align 4, !tbaa !3
  %cmp200478 = icmp slt i32 %97, %102
  br i1 %cmp200478, label %for.body201.lr.ph, label %for.inc276

for.body201.lr.ph:                                ; preds = %for.cond199.loopexit
  %103 = load i32** %rowindI, align 8, !tbaa !0
  br label %for.body201

for.body201:                                      ; preds = %for.body201.lr.ph, %for.body201
  %indvars.iv536 = phi i64 [ %indvars.iv546, %for.body201.lr.ph ], [ %indvars.iv.next537, %for.body201 ]
  %indvars.iv532 = phi i64 [ -1, %for.body201.lr.ph ], [ %indvars.iv.next533, %for.body201 ]
  %ii.5479 = phi i32 [ %add182, %for.body201.lr.ph ], [ %inc212, %for.body201 ]
  %arrayidx203 = getelementptr inbounds i32* %103, i64 %indvars.iv536
  %104 = load i32* %arrayidx203, align 4, !tbaa !3
  %arrayidx206 = getelementptr inbounds double* %call100, i64 %indvars.iv532
  %105 = load double* %arrayidx206, align 8, !tbaa !4
  %sub204461 = sub i32 %65, %104
  %idxprom208 = sext i32 %sub204461 to i64
  %arrayidx209 = getelementptr inbounds double* %call101, i64 %idxprom208
  %106 = load double* %arrayidx209, align 8, !tbaa !4
  %add210 = fadd double %105, %106
  store double %add210, double* %arrayidx209, align 8, !tbaa !4
  %inc212 = add nsw i32 %ii.5479, 1
  %indvars.iv.next533 = add i64 %indvars.iv532, -1
  %cmp200 = icmp slt i32 %inc212, %102
  %indvars.iv.next537 = add i64 %indvars.iv536, 1
  br i1 %cmp200, label %for.body201, label %for.inc276

if.then217:                                       ; preds = %if.then178
  %107 = add nsw i64 %indvars.iv557, 1
  %add218 = add nsw i32 %ichvI.0494, 1
  %108 = load i32* %ncolI, align 4, !tbaa !3
  %109 = trunc i64 %107 to i32
  %cmp220468 = icmp slt i32 %109, %108
  br i1 %cmp220468, label %for.body221.lr.ph, label %for.cond246.loopexit

for.body221.lr.ph:                                ; preds = %if.then217
  %110 = load i32** %colindI, align 8, !tbaa !0
  br label %for.body221

for.body221:                                      ; preds = %for.body221.lr.ph, %for.body221
  %indvars.iv515 = phi i64 [ %indvars.iv546, %for.body221.lr.ph ], [ %indvars.iv.next516, %for.body221 ]
  %indvars.iv511 = phi i64 [ 1, %for.body221.lr.ph ], [ %indvars.iv.next512, %for.body221 ]
  %ii.6469 = phi i32 [ %add218, %for.body221.lr.ph ], [ %inc242, %for.body221 ]
  %arrayidx223 = getelementptr inbounds i32* %110, i64 %indvars.iv515
  %111 = load i32* %arrayidx223, align 4, !tbaa !3
  %sub224 = sub nsw i32 %111, %65
  %112 = trunc i64 %indvars.iv511 to i32
  %mul225 = shl nsw i32 %112, 1
  %idxprom226 = sext i32 %mul225 to i64
  %arrayidx227 = getelementptr inbounds double* %call100, i64 %idxprom226
  %113 = load double* %arrayidx227, align 8, !tbaa !4
  %mul228 = shl nsw i32 %sub224, 1
  %idxprom229 = sext i32 %mul228 to i64
  %arrayidx230 = getelementptr inbounds double* %call101, i64 %idxprom229
  %114 = load double* %arrayidx230, align 8, !tbaa !4
  %add231 = fadd double %113, %114
  store double %add231, double* %arrayidx230, align 8, !tbaa !4
  %add233459 = or i32 %mul225, 1
  %idxprom234 = sext i32 %add233459 to i64
  %arrayidx235 = getelementptr inbounds double* %call100, i64 %idxprom234
  %115 = load double* %arrayidx235, align 8, !tbaa !4
  %add237460 = or i32 %mul228, 1
  %idxprom238 = sext i32 %add237460 to i64
  %arrayidx239 = getelementptr inbounds double* %call101, i64 %idxprom238
  %116 = load double* %arrayidx239, align 8, !tbaa !4
  %add240 = fadd double %115, %116
  store double %add240, double* %arrayidx239, align 8, !tbaa !4
  %inc242 = add nsw i32 %ii.6469, 1
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %cmp220 = icmp slt i32 %inc242, %108
  %indvars.iv.next516 = add i64 %indvars.iv515, 1
  br i1 %cmp220, label %for.body221, label %for.cond246.loopexit

for.cond246.loopexit:                             ; preds = %for.body221, %if.then217
  %117 = load i32* %nrowI, align 4, !tbaa !3
  %cmp247471 = icmp slt i32 %109, %117
  br i1 %cmp247471, label %for.body248.lr.ph, label %for.inc276

for.body248.lr.ph:                                ; preds = %for.cond246.loopexit
  %118 = load i32** %rowindI, align 8, !tbaa !0
  br label %for.body248

for.body248:                                      ; preds = %for.body248.lr.ph, %for.body248
  %indvars.iv522 = phi i64 [ %indvars.iv546, %for.body248.lr.ph ], [ %indvars.iv.next523, %for.body248 ]
  %indvars.iv518 = phi i64 [ -1, %for.body248.lr.ph ], [ %indvars.iv.next519, %for.body248 ]
  %ii.7472 = phi i32 [ %add218, %for.body248.lr.ph ], [ %inc269, %for.body248 ]
  %arrayidx250 = getelementptr inbounds i32* %118, i64 %indvars.iv522
  %119 = load i32* %arrayidx250, align 4, !tbaa !3
  %120 = trunc i64 %indvars.iv518 to i32
  %mul252 = shl nsw i32 %120, 1
  %idxprom253 = sext i32 %mul252 to i64
  %arrayidx254 = getelementptr inbounds double* %call100, i64 %idxprom253
  %121 = load double* %arrayidx254, align 8, !tbaa !4
  %suba = sub i32 %65, %119
  %mul255 = shl i32 %suba, 1
  %idxprom256 = sext i32 %mul255 to i64
  %arrayidx257 = getelementptr inbounds double* %call101, i64 %idxprom256
  %122 = load double* %arrayidx257, align 8, !tbaa !4
  %add258 = fadd double %121, %122
  store double %add258, double* %arrayidx257, align 8, !tbaa !4
  %add260457 = or i32 %mul252, 1
  %idxprom261 = sext i32 %add260457 to i64
  %arrayidx262 = getelementptr inbounds double* %call100, i64 %idxprom261
  %123 = load double* %arrayidx262, align 8, !tbaa !4
  %add264458 = or i32 %mul255, 1
  %idxprom265 = sext i32 %add264458 to i64
  %arrayidx266 = getelementptr inbounds double* %call101, i64 %idxprom265
  %124 = load double* %arrayidx266, align 8, !tbaa !4
  %add267 = fadd double %123, %124
  store double %add267, double* %arrayidx266, align 8, !tbaa !4
  %inc269 = add nsw i32 %ii.7472, 1
  %indvars.iv.next519 = add i64 %indvars.iv518, -1
  %cmp247 = icmp slt i32 %inc269, %117
  %indvars.iv.next523 = add i64 %indvars.iv522, 1
  br i1 %cmp247, label %for.body248, label %for.inc276

for.inc276:                                       ; preds = %for.cond129.preheader, %for.body131, %for.cond148.preheader, %for.body150, %for.cond199.loopexit, %for.body201, %for.cond246.loopexit, %for.body248, %if.then178, %if.end118, %if.then124
  %indvars.iv.next558 = add i64 %indvars.iv557, 1
  %125 = load i32* %nDI, align 4, !tbaa !3
  %126 = trunc i64 %indvars.iv.next558 to i32
  %cmp88 = icmp slt i32 %126, %125
  br i1 %cmp88, label %for.inc276.for.body89_crit_edge, label %for.cond279.preheader

for.inc276.for.body89_crit_edge:                  ; preds = %for.inc276
  %indvars.iv.next547 = add i64 %indvars.iv546, 1
  %inc277 = add nsw i32 %ichvI.0494, 1
  br label %for.body89

for.body281:                                      ; preds = %for.body281.lr.ph, %for.body281
  %indvars.iv509 = phi i64 [ 0, %for.body281.lr.ph ], [ %indvars.iv.next510, %for.body281 ]
  %arrayidx283 = getelementptr inbounds i32* %62, i64 %indvars.iv509
  %127 = load i32* %arrayidx283, align 4, !tbaa !3
  %idxprom284 = sext i32 %127 to i64
  %arrayidx285 = getelementptr inbounds i32* %63, i64 %idxprom284
  %128 = load i32* %arrayidx285, align 4, !tbaa !3
  store i32 %128, i32* %arrayidx283, align 4, !tbaa !3
  %indvars.iv.next510 = add i64 %indvars.iv509, 1
  %129 = load i32* %ncolI, align 4, !tbaa !3
  %130 = trunc i64 %indvars.iv.next510 to i32
  %cmp280 = icmp slt i32 %130, %129
  br i1 %cmp280, label %for.body281, label %for.end290

for.end290:                                       ; preds = %for.body281, %for.cond279.preheader
  %131 = load i32* %symflag14, align 4, !tbaa !3
  %cmp292 = icmp eq i32 %131, 2
  br i1 %cmp292, label %for.cond294.preheader, label %if.end306

for.cond294.preheader:                            ; preds = %for.end290
  %132 = load i32* %nrowI, align 4, !tbaa !3
  %cmp295464 = icmp sgt i32 %132, 0
  br i1 %cmp295464, label %for.body296.lr.ph, label %if.end306

for.body296.lr.ph:                                ; preds = %for.cond294.preheader
  %133 = load i32** %rowindI, align 8, !tbaa !0
  %134 = load i32** %rowindJ, align 8, !tbaa !0
  br label %for.body296

for.body296:                                      ; preds = %for.body296.lr.ph, %for.body296
  %indvars.iv = phi i64 [ 0, %for.body296.lr.ph ], [ %indvars.iv.next, %for.body296 ]
  %arrayidx298 = getelementptr inbounds i32* %133, i64 %indvars.iv
  %135 = load i32* %arrayidx298, align 4, !tbaa !3
  %idxprom299 = sext i32 %135 to i64
  %arrayidx300 = getelementptr inbounds i32* %134, i64 %idxprom299
  %136 = load i32* %arrayidx300, align 4, !tbaa !3
  store i32 %136, i32* %arrayidx298, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %137 = load i32* %nrowI, align 4, !tbaa !3
  %138 = trunc i64 %indvars.iv.next to i32
  %cmp295 = icmp slt i32 %138, %137
  br i1 %cmp295, label %for.body296, label %if.end306

if.end306:                                        ; preds = %for.cond294.preheader, %for.body296, %for.end290
  ret void
}

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_assemblePostponedData(%struct._Chv* %newchv, %struct._Chv* %oldchv, %struct._Chv* %firstchild) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %newchv, null
  %cmp1 = icmp eq %struct._Chv* %oldchv, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._Chv* %firstchild, null
  %or.cond80 = or i1 %or.cond, %cmp3
  br i1 %or.cond80, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str21, i64 0, i64 0), %struct._Chv* %newchv, %struct._Chv* %oldchv, %struct._Chv* %firstchild) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body.lr.ph:                                   ; preds = %entry
  tail call void @Chv_zero(%struct._Chv* %newchv) #5
  %colind = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ndelay.088 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %child.087 = phi %struct._Chv* [ %firstchild, %for.body.lr.ph ], [ %5, %for.body ]
  %nD = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 1
  %1 = load i32* %nD, align 4, !tbaa !3
  %2 = load i32** %colind, align 8, !tbaa !0
  %idx.ext = sext i32 %ndelay.088 to i64
  %add.ptr = getelementptr inbounds i32* %2, i64 %idx.ext
  %colind5 = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 7
  %3 = load i32** %colind5, align 8, !tbaa !0
  tail call void @IVcopy(i32 %1, i32* %add.ptr, i32* %3) #5
  %4 = load i32* %nD, align 4, !tbaa !3
  %add = add nsw i32 %4, %ndelay.088
  %next = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 10
  %5 = load %struct._Chv** %next, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._Chv* %5, null
  br i1 %cmp4, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nD7 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 1
  %6 = load i32* %nD7, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 3
  %7 = load i32* %nU, align 4, !tbaa !3
  %add8 = add nsw i32 %7, %6
  %8 = load i32** %colind, align 8, !tbaa !0
  %idx.ext10 = sext i32 %add to i64
  %add.ptr11 = getelementptr inbounds i32* %8, i64 %idx.ext10
  %colind12 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 7
  %9 = load i32** %colind12, align 8, !tbaa !0
  tail call void @IVcopy(i32 %add8, i32* %add.ptr11, i32* %9) #5
  %symflag = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 5
  %10 = load i32* %symflag, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %for.body17.lr.ph, label %for.body37.lr.ph

for.body17.lr.ph:                                 ; preds = %for.end
  %rowind = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 6
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %ndelay.185 = phi i32 [ 0, %for.body17.lr.ph ], [ %add23, %for.body17 ]
  %child.184 = phi %struct._Chv* [ %firstchild, %for.body17.lr.ph ], [ %15, %for.body17 ]
  %nD18 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 1
  %11 = load i32* %nD18, align 4, !tbaa !3
  %12 = load i32** %rowind, align 8, !tbaa !0
  %idx.ext19 = sext i32 %ndelay.185 to i64
  %add.ptr20 = getelementptr inbounds i32* %12, i64 %idx.ext19
  %rowind21 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 6
  %13 = load i32** %rowind21, align 8, !tbaa !0
  tail call void @IVcopy(i32 %11, i32* %add.ptr20, i32* %13) #5
  %14 = load i32* %nD18, align 4, !tbaa !3
  %add23 = add nsw i32 %14, %ndelay.185
  %next25 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 10
  %15 = load %struct._Chv** %next25, align 8, !tbaa !0
  %cmp16 = icmp eq %struct._Chv* %15, null
  br i1 %cmp16, label %for.end26, label %for.body17

for.end26:                                        ; preds = %for.body17
  %16 = load i32* %nD7, align 4, !tbaa !3
  %17 = load i32* %nU, align 4, !tbaa !3
  %add29 = add nsw i32 %17, %16
  %18 = load i32** %rowind, align 8, !tbaa !0
  %idx.ext31 = sext i32 %add23 to i64
  %add.ptr32 = getelementptr inbounds i32* %18, i64 %idx.ext31
  %rowind33 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 6
  %19 = load i32** %rowind33, align 8, !tbaa !0
  tail call void @IVcopy(i32 %add29, i32* %add.ptr32, i32* %19) #5
  br label %for.body37.lr.ph

for.body37.lr.ph:                                 ; preds = %for.end, %for.end26
  %ndelay.2 = phi i32 [ %add23, %for.end26 ], [ %add, %for.end ]
  tail call void @Chv_assembleChv(%struct._Chv* %newchv, %struct._Chv* %oldchv) #7
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %child.282 = phi %struct._Chv* [ %firstchild, %for.body37.lr.ph ], [ %20, %for.body37 ]
  tail call void @Chv_assembleChv(%struct._Chv* %newchv, %struct._Chv* %child.282) #7
  %next39 = getelementptr inbounds %struct._Chv* %child.282, i64 0, i32 10
  %20 = load %struct._Chv** %next39, align 8, !tbaa !0
  %cmp36 = icmp eq %struct._Chv* %20, null
  br i1 %cmp36, label %for.end40, label %for.body37

for.end40:                                        ; preds = %for.body37
  ret i32 %ndelay.2
}

; Function Attrs: optsize
declare void @Chv_zero(%struct._Chv*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
