; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_maxabs(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [86 x i8] c"\0A fatal error in A2_maxabs(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_frobNorm(%p) \0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_frobNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in A2_oneNorm(%p) \0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [87 x i8] c"\0A fatal error in A2_oneNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_infinityNorm(%p) \0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [92 x i8] c"\0A fatal error in A2_infinityNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_oneNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [98 x i8] c"\0A fatal error in A2_oneNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_twoNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [98 x i8] c"\0A fatal error in A2_twoNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str12 = private unnamed_addr constant [60 x i8] c"\0A fatal error in A2_infinityNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [103 x i8] c"\0A fatal error in A2_infinityNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_oneNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_oneNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_twoNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_twoNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str18 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_infinityNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [100 x i8] c"\0A fatal error in A2_infinityNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @A2_maxabs(%struct._A2* %a) #0 {
entry:
  %cmp = icmp eq %struct._A2* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %0 = load i32* %n11, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %1 = load i32* %n24, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %2 = load i32* %inc17, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %2, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %3 = load i32* %inc210, align 4, !tbaa !0
  %cmp11 = icmp slt i32 %3, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._A2* %a) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %5 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %5, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), %struct._A2* %a, i32 %5) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.end
  %entries20 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %7 = load double** %entries20, align 8, !tbaa !3
  switch i32 %5, label %if.end64 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond38.preheader
  ]

for.cond38.preheader:                             ; preds = %if.end19
  %cmp39116 = icmp sgt i32 %0, 0
  br i1 %cmp39116, label %for.cond41.preheader.lr.ph, label %if.end64

for.cond41.preheader.lr.ph:                       ; preds = %for.cond38.preheader
  %cmp42110 = icmp sgt i32 %1, 0
  %idx.ext58 = sext i32 %2 to i64
  %8 = sext i32 %3 to i64
  br label %for.cond41.preheader

for.cond.preheader:                               ; preds = %if.end19
  %cmp24105 = icmp sgt i32 %0, 0
  br i1 %cmp24105, label %for.cond25.preheader.lr.ph, label %if.end64

for.cond25.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp26101 = icmp sgt i32 %1, 0
  %idx.ext = sext i32 %2 to i64
  %9 = sext i32 %3 to i64
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.end, %for.cond25.preheader.lr.ph
  %maxval.0108 = phi double [ 0.000000e+00, %for.cond25.preheader.lr.ph ], [ %maxval.1.lcssa, %for.end ]
  %irow.0107 = phi i32 [ 0, %for.cond25.preheader.lr.ph ], [ %inc33, %for.end ]
  %row.0106 = phi double* [ %7, %for.cond25.preheader.lr.ph ], [ %add.ptr, %for.end ]
  br i1 %cmp26101, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond25.preheader ]
  %maxval.1104 = phi double [ %maxval.2, %for.body27 ], [ %maxval.0108, %for.cond25.preheader ]
  %jcol.0102 = phi i32 [ %inc, %for.body27 ], [ 0, %for.cond25.preheader ]
  %arrayidx = getelementptr inbounds double* %row.0106, i64 %indvars.iv
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %call28 = tail call double @fabs(double %10) #7
  %cmp29 = fcmp olt double %maxval.1104, %call28
  %maxval.2 = select i1 %cmp29, double %call28, double %maxval.1104
  %inc = add nsw i32 %jcol.0102, 1
  %indvars.iv.next = add i64 %indvars.iv, %9
  %exitcond = icmp eq i32 %inc, %1
  br i1 %exitcond, label %for.end, label %for.body27

for.end:                                          ; preds = %for.body27, %for.cond25.preheader
  %maxval.1.lcssa = phi double [ %maxval.0108, %for.cond25.preheader ], [ %maxval.2, %for.body27 ]
  %add.ptr = getelementptr inbounds double* %row.0106, i64 %idx.ext
  %inc33 = add nsw i32 %irow.0107, 1
  %exitcond121 = icmp eq i32 %inc33, %0
  br i1 %exitcond121, label %if.end64, label %for.cond25.preheader

for.cond41.preheader:                             ; preds = %for.end57, %for.cond41.preheader.lr.ph
  %maxval.3119 = phi double [ 0.000000e+00, %for.cond41.preheader.lr.ph ], [ %maxval.4.lcssa, %for.end57 ]
  %irow.1118 = phi i32 [ 0, %for.cond41.preheader.lr.ph ], [ %inc61, %for.end57 ]
  %row.1117 = phi double* [ %7, %for.cond41.preheader.lr.ph ], [ %add.ptr59, %for.end57 ]
  br i1 %cmp42110, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.body43 ], [ 0, %for.cond41.preheader ]
  %maxval.4113 = phi double [ %maxval.5, %for.body43 ], [ %maxval.3119, %for.cond41.preheader ]
  %jcol.1111 = phi i32 [ %inc55, %for.body43 ], [ 0, %for.cond41.preheader ]
  %11 = trunc i64 %indvars.iv122 to i32
  %mul = shl nsw i32 %11, 1
  %idxprom44 = sext i32 %mul to i64
  %arrayidx45 = getelementptr inbounds double* %row.1117, i64 %idxprom44
  %12 = load double* %arrayidx45, align 8, !tbaa !4
  %add47100 = or i32 %mul, 1
  %idxprom48 = sext i32 %add47100 to i64
  %arrayidx49 = getelementptr inbounds double* %row.1117, i64 %idxprom48
  %13 = load double* %arrayidx49, align 8, !tbaa !4
  %call50 = tail call double @Zabs(double %12, double %13) #5
  %cmp51 = fcmp olt double %maxval.4113, %call50
  %maxval.5 = select i1 %cmp51, double %call50, double %maxval.4113
  %inc55 = add nsw i32 %jcol.1111, 1
  %indvars.iv.next123 = add i64 %indvars.iv122, %8
  %exitcond124 = icmp eq i32 %inc55, %1
  br i1 %exitcond124, label %for.end57, label %for.body43

for.end57:                                        ; preds = %for.body43, %for.cond41.preheader
  %maxval.4.lcssa = phi double [ %maxval.3119, %for.cond41.preheader ], [ %maxval.5, %for.body43 ]
  %add.ptr59 = getelementptr inbounds double* %row.1117, i64 %idx.ext58
  %inc61 = add nsw i32 %irow.1118, 1
  %exitcond125 = icmp eq i32 %inc61, %0
  br i1 %exitcond125, label %if.end64, label %for.cond41.preheader

if.end64:                                         ; preds = %for.cond38.preheader, %for.end57, %for.cond.preheader, %for.end, %if.end19
  %maxval.6 = phi double [ 0.000000e+00, %if.end19 ], [ 0.000000e+00, %for.cond.preheader ], [ %maxval.1.lcssa, %for.end ], [ 0.000000e+00, %for.cond38.preheader ], [ %maxval.4.lcssa, %for.end57 ]
  ret double %maxval.6
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: nounwind optsize uwtable
define double @A2_frobNorm(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %3 = load i32* %n1, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %4 = load i32* %n2, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %4, 1
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false9
  switch i32 %1, label %if.end224 [
    i32 1, label %if.then15
    i32 2, label %if.then91
  ]

if.then15:                                        ; preds = %if.end12
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %5, 1
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc218, align 4, !tbaa !0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  %cmp19317 = icmp sgt i32 %4, 0
  br i1 %cmp19317, label %for.cond20.preheader.lr.ph, label %if.end224

for.cond20.preheader.lr.ph:                       ; preds = %if.then17
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries, align 8, !tbaa !3
  %cmp21314 = icmp sgt i32 %3, 0
  %idx.ext = sext i32 %6 to i64
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc25, %for.cond20.preheader.lr.ph
  %norm.0320 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1.lcssa, %for.inc25 ]
  %col.0319 = phi double* [ %7, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.inc25 ]
  %jcol.0318 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc26, %for.inc25 ]
  br i1 %cmp21314, label %for.body22, label %for.inc25

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %norm.1316 = phi double [ %add, %for.body22 ], [ %norm.0320, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %col.0319, i64 %indvars.iv
  %8 = load double* %arrayidx, align 8, !tbaa !4
  %mul = fmul double %8, %8
  %add = fadd double %norm.1316, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.inc25, label %for.body22

for.inc25:                                        ; preds = %for.body22, %for.cond20.preheader
  %norm.1.lcssa = phi double [ %norm.0320, %for.cond20.preheader ], [ %add, %for.body22 ]
  %inc26 = add nsw i32 %jcol.0318, 1
  %add.ptr = getelementptr inbounds double* %col.0319, i64 %idx.ext
  %exitcond370 = icmp eq i32 %inc26, %4
  br i1 %exitcond370, label %if.end224, label %for.cond20.preheader

if.else:                                          ; preds = %if.then15
  %cmp29 = icmp eq i32 %6, 1
  %entries35 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %9 = load double** %entries35, align 8, !tbaa !3
  %cmp37327 = icmp sgt i32 %3, 0
  br i1 %cmp29, label %for.cond36.preheader, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %if.else
  br i1 %cmp37327, label %for.cond68.preheader.lr.ph, label %if.end224

for.cond68.preheader.lr.ph:                       ; preds = %for.cond65.preheader
  %cmp69332 = icmp sgt i32 %4, 0
  br label %for.cond68.preheader

for.cond36.preheader:                             ; preds = %if.else
  br i1 %cmp37327, label %for.cond39.preheader.lr.ph, label %if.end224

for.cond39.preheader.lr.ph:                       ; preds = %for.cond36.preheader
  %cmp40322 = icmp sgt i32 %4, 0
  %idx.ext53 = sext i32 %5 to i64
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.inc51, %for.cond39.preheader.lr.ph
  %norm.2330 = phi double [ 0.000000e+00, %for.cond39.preheader.lr.ph ], [ %norm.3.lcssa, %for.inc51 ]
  %row.0329 = phi double* [ %9, %for.cond39.preheader.lr.ph ], [ %add.ptr54, %for.inc51 ]
  %irow33.0328 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc52, %for.inc51 ]
  br i1 %cmp40322, label %for.body41, label %for.inc51

for.body41:                                       ; preds = %for.cond39.preheader, %for.body41
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.body41 ], [ 0, %for.cond39.preheader ]
  %norm.3324 = phi double [ %add47, %for.body41 ], [ %norm.2330, %for.cond39.preheader ]
  %arrayidx43 = getelementptr inbounds double* %row.0329, i64 %indvars.iv371
  %10 = load double* %arrayidx43, align 8, !tbaa !4
  %mul46 = fmul double %10, %10
  %add47 = fadd double %norm.3324, %mul46
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %4
  br i1 %exitcond374, label %for.inc51, label %for.body41

for.inc51:                                        ; preds = %for.body41, %for.cond39.preheader
  %norm.3.lcssa = phi double [ %norm.2330, %for.cond39.preheader ], [ %add47, %for.body41 ]
  %inc52 = add nsw i32 %irow33.0328, 1
  %add.ptr54 = getelementptr inbounds double* %row.0329, i64 %idx.ext53
  %exitcond375 = icmp eq i32 %inc52, %3
  br i1 %exitcond375, label %if.end224, label %for.cond39.preheader

for.cond68.preheader:                             ; preds = %for.inc83, %for.cond68.preheader.lr.ph
  %norm.4339 = phi double [ 0.000000e+00, %for.cond68.preheader.lr.ph ], [ %norm.5.lcssa, %for.inc83 ]
  %irow63.0338 = phi i32 [ 0, %for.cond68.preheader.lr.ph ], [ %inc84, %for.inc83 ]
  br i1 %cmp69332, label %for.body70.lr.ph, label %for.inc83

for.body70.lr.ph:                                 ; preds = %for.cond68.preheader
  %mul71 = mul nsw i32 %irow63.0338, %5
  br label %for.body70

for.body70:                                       ; preds = %for.body70, %for.body70.lr.ph
  %indvars.iv376 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next377, %for.body70 ]
  %norm.5334 = phi double [ %norm.4339, %for.body70.lr.ph ], [ %add79, %for.body70 ]
  %11 = trunc i64 %indvars.iv376 to i32
  %mul72 = mul nsw i32 %11, %6
  %add73 = add nsw i32 %mul72, %mul71
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds double* %9, i64 %idxprom74
  %12 = load double* %arrayidx75, align 8, !tbaa !4
  %mul78 = fmul double %12, %12
  %add79 = fadd double %norm.5334, %mul78
  %indvars.iv.next377 = add i64 %indvars.iv376, 1
  %lftr.wideiv378 = trunc i64 %indvars.iv.next377 to i32
  %exitcond379 = icmp eq i32 %lftr.wideiv378, %4
  br i1 %exitcond379, label %for.inc83, label %for.body70

for.inc83:                                        ; preds = %for.body70, %for.cond68.preheader
  %norm.5.lcssa = phi double [ %norm.4339, %for.cond68.preheader ], [ %add79, %for.body70 ]
  %inc84 = add nsw i32 %irow63.0338, 1
  %exitcond380 = icmp eq i32 %inc84, %3
  br i1 %exitcond380, label %if.end224, label %for.cond68.preheader

if.then91:                                        ; preds = %if.end12
  %inc192 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %13 = load i32* %inc192, align 4, !tbaa !0
  %cmp93 = icmp eq i32 %13, 1
  %inc297 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %14 = load i32* %inc297, align 4, !tbaa !0
  br i1 %cmp93, label %for.cond104.preheader.lr.ph, label %if.else134

for.cond104.preheader.lr.ph:                      ; preds = %if.then91
  %entries100 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %15 = load double** %entries100, align 8, !tbaa !3
  %cmp105341 = icmp sgt i32 %3, 0
  %mul130 = shl nsw i32 %14, 1
  %idx.ext131 = sext i32 %mul130 to i64
  br label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %for.inc128, %for.cond104.preheader.lr.ph
  %norm.6349 = phi double [ 0.000000e+00, %for.cond104.preheader.lr.ph ], [ %norm.7.lcssa, %for.inc128 ]
  %jcol99.0348 = phi i32 [ 0, %for.cond104.preheader.lr.ph ], [ %inc129, %for.inc128 ]
  %col95.0347 = phi double* [ %15, %for.cond104.preheader.lr.ph ], [ %add.ptr132, %for.inc128 ]
  br i1 %cmp105341, label %for.body106, label %for.inc128

for.body106:                                      ; preds = %for.cond104.preheader, %for.body106
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.body106 ], [ 0, %for.cond104.preheader ]
  %norm.7343 = phi double [ %add124, %for.body106 ], [ %norm.6349, %for.cond104.preheader ]
  %16 = trunc i64 %indvars.iv381 to i32
  %mul107 = shl nsw i32 %16, 1
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds double* %col95.0347, i64 %idxprom108
  %17 = load double* %arrayidx109, align 8, !tbaa !4
  %mul113 = fmul double %17, %17
  %add115313 = or i32 %mul107, 1
  %idxprom116 = sext i32 %add115313 to i64
  %arrayidx117 = getelementptr inbounds double* %col95.0347, i64 %idxprom116
  %18 = load double* %arrayidx117, align 8, !tbaa !4
  %mul122 = fmul double %18, %18
  %add123 = fadd double %mul113, %mul122
  %add124 = fadd double %norm.7343, %add123
  %indvars.iv.next382 = add i64 %indvars.iv381, 1
  %lftr.wideiv383 = trunc i64 %indvars.iv.next382 to i32
  %exitcond384 = icmp eq i32 %lftr.wideiv383, %3
  br i1 %exitcond384, label %for.inc128, label %for.body106

for.inc128:                                       ; preds = %for.body106, %for.cond104.preheader
  %norm.7.lcssa = phi double [ %norm.6349, %for.cond104.preheader ], [ %add124, %for.body106 ]
  %inc129 = add nsw i32 %jcol99.0348, 1
  %add.ptr132 = getelementptr inbounds double* %col95.0347, i64 %idx.ext131
  %exitcond385 = icmp eq i32 %inc129, %4
  br i1 %exitcond385, label %if.end224, label %for.cond104.preheader

if.else134:                                       ; preds = %if.then91
  %cmp136 = icmp eq i32 %14, 1
  %entries143 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %19 = load double** %entries143, align 8, !tbaa !3
  %cmp145356 = icmp sgt i32 %3, 0
  br i1 %cmp136, label %for.cond144.preheader, label %for.cond187.preheader

for.cond187.preheader:                            ; preds = %if.else134
  br i1 %cmp145356, label %for.cond190.preheader.lr.ph, label %if.end224

for.cond190.preheader.lr.ph:                      ; preds = %for.cond187.preheader
  %cmp191361 = icmp sgt i32 %4, 0
  br label %for.cond190.preheader

for.cond144.preheader:                            ; preds = %if.else134
  br i1 %cmp145356, label %for.cond147.preheader.lr.ph, label %if.end224

for.cond147.preheader.lr.ph:                      ; preds = %for.cond144.preheader
  %mul173 = shl nsw i32 %13, 1
  %idx.ext174 = sext i32 %mul173 to i64
  br label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %for.inc171, %for.cond147.preheader.lr.ph
  %norm.8359 = phi double [ 0.000000e+00, %for.cond147.preheader.lr.ph ], [ %add167, %for.inc171 ]
  %irow141.0358 = phi i32 [ 0, %for.cond147.preheader.lr.ph ], [ %inc172, %for.inc171 ]
  %row138.0357 = phi double* [ %19, %for.cond147.preheader.lr.ph ], [ %add.ptr175, %for.inc171 ]
  br label %for.body149

for.body149:                                      ; preds = %for.cond147.preheader, %for.body149
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %for.body149 ], [ 0, %for.cond147.preheader ]
  %norm.9353 = phi double [ %add167, %for.body149 ], [ %norm.8359, %for.cond147.preheader ]
  %20 = trunc i64 %indvars.iv386 to i32
  %mul150 = shl nsw i32 %20, 1
  %idxprom151 = sext i32 %mul150 to i64
  %arrayidx152 = getelementptr inbounds double* %row138.0357, i64 %idxprom151
  %21 = load double* %arrayidx152, align 8, !tbaa !4
  %mul156 = fmul double %21, %21
  %add158312 = or i32 %mul150, 1
  %idxprom159 = sext i32 %add158312 to i64
  %arrayidx160 = getelementptr inbounds double* %row138.0357, i64 %idxprom159
  %22 = load double* %arrayidx160, align 8, !tbaa !4
  %mul165 = fmul double %22, %22
  %add166 = fadd double %mul156, %mul165
  %add167 = fadd double %norm.9353, %add166
  %indvars.iv.next387 = add i64 %indvars.iv386, 1
  %lftr.wideiv388 = trunc i64 %indvars.iv.next387 to i32
  %exitcond389 = icmp eq i32 %lftr.wideiv388, %4
  br i1 %exitcond389, label %for.inc171, label %for.body149

for.inc171:                                       ; preds = %for.body149
  %inc172 = add nsw i32 %irow141.0358, 1
  %add.ptr175 = getelementptr inbounds double* %row138.0357, i64 %idx.ext174
  %exitcond390 = icmp eq i32 %inc172, %3
  br i1 %exitcond390, label %if.end224, label %for.cond147.preheader

for.cond190.preheader:                            ; preds = %for.inc217, %for.cond190.preheader.lr.ph
  %irow184.0368 = phi i32 [ 0, %for.cond190.preheader.lr.ph ], [ %inc219, %for.inc217 ]
  %norm.10367 = phi double [ 0.000000e+00, %for.cond190.preheader.lr.ph ], [ %norm.11.lcssa, %for.inc217 ]
  br i1 %cmp191361, label %for.body192.lr.ph, label %for.inc217

for.body192.lr.ph:                                ; preds = %for.cond190.preheader
  %mul193 = mul nsw i32 %irow184.0368, %13
  br label %for.body192

for.body192:                                      ; preds = %for.body192, %for.body192.lr.ph
  %indvars.iv391 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next392, %for.body192 ]
  %norm.11362 = phi double [ %norm.10367, %for.body192.lr.ph ], [ %add213, %for.body192 ]
  %23 = trunc i64 %indvars.iv391 to i32
  %mul194 = mul nsw i32 %23, %14
  %add195 = add nsw i32 %mul194, %mul193
  %mul196 = shl nsw i32 %add195, 1
  %idxprom197 = sext i32 %mul196 to i64
  %arrayidx198 = getelementptr inbounds double* %19, i64 %idxprom197
  %24 = load double* %arrayidx198, align 8, !tbaa !4
  %mul202 = fmul double %24, %24
  %add204311 = or i32 %mul196, 1
  %idxprom205 = sext i32 %add204311 to i64
  %arrayidx206 = getelementptr inbounds double* %19, i64 %idxprom205
  %25 = load double* %arrayidx206, align 8, !tbaa !4
  %mul211 = fmul double %25, %25
  %add212 = fadd double %mul202, %mul211
  %add213 = fadd double %norm.11362, %add212
  %indvars.iv.next392 = add i64 %indvars.iv391, 1
  %lftr.wideiv393 = trunc i64 %indvars.iv.next392 to i32
  %exitcond394 = icmp eq i32 %lftr.wideiv393, %4
  br i1 %exitcond394, label %for.inc217, label %for.body192

for.inc217:                                       ; preds = %for.body192, %for.cond190.preheader
  %norm.11.lcssa = phi double [ %norm.10367, %for.cond190.preheader ], [ %add213, %for.body192 ]
  %inc219 = add nsw i32 %irow184.0368, 1
  %exitcond395 = icmp eq i32 %inc219, %3
  br i1 %exitcond395, label %if.end224, label %for.cond190.preheader

if.end224:                                        ; preds = %for.cond187.preheader, %for.inc217, %for.cond144.preheader, %for.inc171, %for.inc128, %for.cond65.preheader, %for.inc83, %for.cond36.preheader, %for.inc51, %if.then17, %for.inc25, %if.end12
  %norm.12 = phi double [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %if.then17 ], [ %norm.1.lcssa, %for.inc25 ], [ 0.000000e+00, %for.cond36.preheader ], [ %norm.3.lcssa, %for.inc51 ], [ 0.000000e+00, %for.cond65.preheader ], [ %norm.5.lcssa, %for.inc83 ], [ %norm.7.lcssa, %for.inc128 ], [ 0.000000e+00, %for.cond144.preheader ], [ %add167, %for.inc171 ], [ 0.000000e+00, %for.cond187.preheader ], [ %norm.11.lcssa, %for.inc217 ]
  %call225 = tail call double @sqrt(double %norm.12) #5
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false9, %if.end224
  %retval.0 = phi double [ %call225, %if.end224 ], [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNorm(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([87 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %3 = load i32* %n1, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %4 = load i32* %n2, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %4, 1
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false9
  switch i32 %1, label %return [
    i32 1, label %if.then15
    i32 2, label %if.then65
  ]

if.then15:                                        ; preds = %if.end12
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %5, 1
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc218, align 4, !tbaa !0
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries, align 8, !tbaa !3
  %cmp19205 = icmp sgt i32 %4, 0
  br i1 %cmp16, label %for.cond.preheader, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.then15
  br i1 %cmp19205, label %for.cond42.preheader.lr.ph, label %return

for.cond42.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %cmp43210 = icmp sgt i32 %3, 0
  %idx.ext58 = sext i32 %6 to i64
  %8 = sext i32 %5 to i64
  br label %for.cond42.preheader

for.cond.preheader:                               ; preds = %if.then15
  br i1 %cmp19205, label %for.cond20.preheader.lr.ph, label %return

for.cond20.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp21202 = icmp sgt i32 %3, 0
  %idx.ext = sext i32 %6 to i64
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end, %for.cond20.preheader.lr.ph
  %norm.0208 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1, %for.end ]
  %col.0207 = phi double* [ %7, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %jcol.0206 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc28, %for.end ]
  br i1 %cmp21202, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %sum.0204 = phi double [ %add, %for.body22 ], [ 0.000000e+00, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %col.0207, i64 %indvars.iv
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call23 = tail call double @fabs(double %9) #7
  %add = fadd double %sum.0204, %call23
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end, label %for.body22

for.end:                                          ; preds = %for.body22, %for.cond20.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond20.preheader ], [ %add, %for.body22 ]
  %cmp24 = fcmp olt double %norm.0208, %sum.0.lcssa
  %norm.1 = select i1 %cmp24, double %sum.0.lcssa, double %norm.0208
  %inc28 = add nsw i32 %jcol.0206, 1
  %add.ptr = getelementptr inbounds double* %col.0207, i64 %idx.ext
  %exitcond242 = icmp eq i32 %inc28, %4
  br i1 %exitcond242, label %return, label %for.cond20.preheader

for.cond42.preheader:                             ; preds = %for.end52, %for.cond42.preheader.lr.ph
  %norm.2219 = phi double [ 0.000000e+00, %for.cond42.preheader.lr.ph ], [ %norm.3, %for.end52 ]
  %jcol37.0218 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc57, %for.end52 ]
  %col31.0217 = phi double* [ %7, %for.cond42.preheader.lr.ph ], [ %add.ptr59, %for.end52 ]
  br i1 %cmp43210, label %for.body44, label %for.end52

for.body44:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body44 ], [ 0, %for.cond42.preheader ]
  %irow36.0212 = phi i32 [ %inc50, %for.body44 ], [ 0, %for.cond42.preheader ]
  %sum30.0211 = phi double [ %add48, %for.body44 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx46 = getelementptr inbounds double* %col31.0217, i64 %indvars.iv243
  %10 = load double* %arrayidx46, align 8, !tbaa !4
  %call47 = tail call double @fabs(double %10) #7
  %add48 = fadd double %sum30.0211, %call47
  %inc50 = add nsw i32 %irow36.0212, 1
  %indvars.iv.next244 = add i64 %indvars.iv243, %8
  %exitcond245 = icmp eq i32 %inc50, %3
  br i1 %exitcond245, label %for.end52, label %for.body44

for.end52:                                        ; preds = %for.body44, %for.cond42.preheader
  %sum30.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %add48, %for.body44 ]
  %cmp53 = fcmp olt double %norm.2219, %sum30.0.lcssa
  %norm.3 = select i1 %cmp53, double %sum30.0.lcssa, double %norm.2219
  %inc57 = add nsw i32 %jcol37.0218, 1
  %add.ptr59 = getelementptr inbounds double* %col31.0217, i64 %idx.ext58
  %exitcond246 = icmp eq i32 %inc57, %4
  br i1 %exitcond246, label %return, label %for.cond42.preheader

if.then65:                                        ; preds = %if.end12
  %inc166 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %11 = load i32* %inc166, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %11, 1
  %inc272 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %12 = load i32* %inc272, align 4, !tbaa !0
  %entries75 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %13 = load double** %entries75, align 8, !tbaa !3
  %cmp80221 = icmp sgt i32 %3, 0
  %mul98 = shl nsw i32 %12, 1
  %idx.ext99 = sext i32 %mul98 to i64
  br i1 %cmp67, label %for.cond79.preheader, label %for.cond116.preheader.lr.ph

for.cond116.preheader.lr.ph:                      ; preds = %if.then65
  %14 = sext i32 %11 to i64
  br label %for.cond116.preheader

for.cond79.preheader:                             ; preds = %if.then65, %for.end92
  %norm.4229 = phi double [ %norm.5, %for.end92 ], [ 0.000000e+00, %if.then65 ]
  %jcol74.0228 = phi i32 [ %inc97, %for.end92 ], [ 0, %if.then65 ]
  %col70.0227 = phi double* [ %add.ptr100, %for.end92 ], [ %13, %if.then65 ]
  br i1 %cmp80221, label %for.body81, label %for.end92

for.body81:                                       ; preds = %for.cond79.preheader, %for.body81
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body81 ], [ 0, %for.cond79.preheader ]
  %sum69.0222 = phi double [ %add89, %for.body81 ], [ 0.000000e+00, %for.cond79.preheader ]
  %15 = trunc i64 %indvars.iv247 to i32
  %mul = shl nsw i32 %15, 1
  %idxprom82 = sext i32 %mul to i64
  %arrayidx83 = getelementptr inbounds double* %col70.0227, i64 %idxprom82
  %16 = load double* %arrayidx83, align 8, !tbaa !4
  %add85201 = or i32 %mul, 1
  %idxprom86 = sext i32 %add85201 to i64
  %arrayidx87 = getelementptr inbounds double* %col70.0227, i64 %idxprom86
  %17 = load double* %arrayidx87, align 8, !tbaa !4
  %call88 = tail call double @Zabs(double %16, double %17) #5
  %add89 = fadd double %sum69.0222, %call88
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %lftr.wideiv249 = trunc i64 %indvars.iv.next248 to i32
  %exitcond250 = icmp eq i32 %lftr.wideiv249, %3
  br i1 %exitcond250, label %for.end92, label %for.body81

for.end92:                                        ; preds = %for.body81, %for.cond79.preheader
  %sum69.0.lcssa = phi double [ 0.000000e+00, %for.cond79.preheader ], [ %add89, %for.body81 ]
  %cmp93 = fcmp olt double %norm.4229, %sum69.0.lcssa
  %norm.5 = select i1 %cmp93, double %sum69.0.lcssa, double %norm.4229
  %inc97 = add nsw i32 %jcol74.0228, 1
  %add.ptr100 = getelementptr inbounds double* %col70.0227, i64 %idx.ext99
  %exitcond251 = icmp eq i32 %inc97, %4
  br i1 %exitcond251, label %return, label %for.cond79.preheader

for.cond116.preheader:                            ; preds = %for.end131, %for.cond116.preheader.lr.ph
  %jcol110.0240 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc136, %for.end131 ]
  %norm.6239 = phi double [ 0.000000e+00, %for.cond116.preheader.lr.ph ], [ %norm.7, %for.end131 ]
  %col104.0238 = phi double* [ %13, %for.cond116.preheader.lr.ph ], [ %add.ptr139, %for.end131 ]
  br i1 %cmp80221, label %for.body118, label %for.end131

for.body118:                                      ; preds = %for.cond116.preheader, %for.body118
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body118 ], [ 0, %for.cond116.preheader ]
  %irow109.0233 = phi i32 [ %inc129, %for.body118 ], [ 0, %for.cond116.preheader ]
  %sum103.0232 = phi double [ %add127, %for.body118 ], [ 0.000000e+00, %for.cond116.preheader ]
  %18 = trunc i64 %indvars.iv252 to i32
  %mul119 = shl nsw i32 %18, 1
  %idxprom120 = sext i32 %mul119 to i64
  %arrayidx121 = getelementptr inbounds double* %col104.0238, i64 %idxprom120
  %19 = load double* %arrayidx121, align 8, !tbaa !4
  %add123200 = or i32 %mul119, 1
  %idxprom124 = sext i32 %add123200 to i64
  %arrayidx125 = getelementptr inbounds double* %col104.0238, i64 %idxprom124
  %20 = load double* %arrayidx125, align 8, !tbaa !4
  %call126 = tail call double @Zabs(double %19, double %20) #5
  %add127 = fadd double %sum103.0232, %call126
  %inc129 = add nsw i32 %irow109.0233, 1
  %indvars.iv.next253 = add i64 %indvars.iv252, %14
  %exitcond254 = icmp eq i32 %inc129, %3
  br i1 %exitcond254, label %for.end131, label %for.body118

for.end131:                                       ; preds = %for.body118, %for.cond116.preheader
  %sum103.0.lcssa = phi double [ 0.000000e+00, %for.cond116.preheader ], [ %add127, %for.body118 ]
  %cmp132 = fcmp olt double %norm.6239, %sum103.0.lcssa
  %norm.7 = select i1 %cmp132, double %sum103.0.lcssa, double %norm.6239
  %inc136 = add nsw i32 %jcol110.0240, 1
  %add.ptr139 = getelementptr inbounds double* %col104.0238, i64 %idx.ext99
  %exitcond255 = icmp eq i32 %inc136, %4
  br i1 %exitcond255, label %return, label %for.cond116.preheader

return:                                           ; preds = %for.end131, %for.end92, %for.cond39.preheader, %for.end52, %for.cond.preheader, %for.end, %if.end12, %if.end7, %lor.lhs.false9
  %retval.0 = phi double [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ], [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.end ], [ 0.000000e+00, %for.cond39.preheader ], [ %norm.3, %for.end52 ], [ %norm.5, %for.end92 ], [ %norm.7, %for.end131 ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNorm(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([92 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %3 = load i32* %n1, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %4 = load i32* %n2, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %4, 1
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false9
  switch i32 %1, label %return [
    i32 1, label %if.then15
    i32 2, label %if.then65
  ]

if.then15:                                        ; preds = %if.end12
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %5, 1
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %6 = load double** %entries, align 8, !tbaa !3
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc118, align 4, !tbaa !0
  %cmp19205 = icmp sgt i32 %3, 0
  br i1 %cmp16, label %for.cond.preheader, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.then15
  br i1 %cmp19205, label %for.cond42.preheader.lr.ph, label %return

for.cond42.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %cmp43210 = icmp sgt i32 %4, 0
  %idx.ext58 = sext i32 %7 to i64
  %8 = sext i32 %5 to i64
  br label %for.cond42.preheader

for.cond.preheader:                               ; preds = %if.then15
  br i1 %cmp19205, label %for.cond20.preheader.lr.ph, label %return

for.cond20.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp21202 = icmp sgt i32 %4, 0
  %idx.ext = sext i32 %7 to i64
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end, %for.cond20.preheader.lr.ph
  %norm.0208 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1, %for.end ]
  %row.0207 = phi double* [ %6, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %irow.0206 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc28, %for.end ]
  br i1 %cmp21202, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %sum.0204 = phi double [ %add, %for.body22 ], [ 0.000000e+00, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %row.0207, i64 %indvars.iv
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call23 = tail call double @fabs(double %9) #7
  %add = fadd double %sum.0204, %call23
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %for.end, label %for.body22

for.end:                                          ; preds = %for.body22, %for.cond20.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond20.preheader ], [ %add, %for.body22 ]
  %cmp24 = fcmp olt double %norm.0208, %sum.0.lcssa
  %norm.1 = select i1 %cmp24, double %sum.0.lcssa, double %norm.0208
  %inc28 = add nsw i32 %irow.0206, 1
  %add.ptr = getelementptr inbounds double* %row.0207, i64 %idx.ext
  %exitcond242 = icmp eq i32 %inc28, %3
  br i1 %exitcond242, label %return, label %for.cond20.preheader

for.cond42.preheader:                             ; preds = %for.end52, %for.cond42.preheader.lr.ph
  %norm.2219 = phi double [ 0.000000e+00, %for.cond42.preheader.lr.ph ], [ %norm.3, %for.end52 ]
  %irow37.0218 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc57, %for.end52 ]
  %row31.0217 = phi double* [ %6, %for.cond42.preheader.lr.ph ], [ %add.ptr59, %for.end52 ]
  br i1 %cmp43210, label %for.body44, label %for.end52

for.body44:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body44 ], [ 0, %for.cond42.preheader ]
  %jcol38.0212 = phi i32 [ %inc50, %for.body44 ], [ 0, %for.cond42.preheader ]
  %sum30.0211 = phi double [ %add48, %for.body44 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx46 = getelementptr inbounds double* %row31.0217, i64 %indvars.iv243
  %10 = load double* %arrayidx46, align 8, !tbaa !4
  %call47 = tail call double @fabs(double %10) #7
  %add48 = fadd double %sum30.0211, %call47
  %inc50 = add nsw i32 %jcol38.0212, 1
  %indvars.iv.next244 = add i64 %indvars.iv243, %8
  %exitcond245 = icmp eq i32 %inc50, %4
  br i1 %exitcond245, label %for.end52, label %for.body44

for.end52:                                        ; preds = %for.body44, %for.cond42.preheader
  %sum30.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %add48, %for.body44 ]
  %cmp53 = fcmp olt double %norm.2219, %sum30.0.lcssa
  %norm.3 = select i1 %cmp53, double %sum30.0.lcssa, double %norm.2219
  %inc57 = add nsw i32 %irow37.0218, 1
  %add.ptr59 = getelementptr inbounds double* %row31.0217, i64 %idx.ext58
  %exitcond246 = icmp eq i32 %inc57, %3
  br i1 %exitcond246, label %return, label %for.cond42.preheader

if.then65:                                        ; preds = %if.end12
  %inc266 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %11 = load i32* %inc266, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %11, 1
  %inc172 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %12 = load i32* %inc172, align 4, !tbaa !0
  %entries75 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %13 = load double** %entries75, align 8, !tbaa !3
  %cmp77226 = icmp sgt i32 %3, 0
  br i1 %cmp67, label %for.cond76.preheader, label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %if.then65
  br i1 %cmp77226, label %for.cond116.preheader.lr.ph, label %return

for.cond116.preheader.lr.ph:                      ; preds = %for.cond113.preheader
  %cmp117231 = icmp sgt i32 %4, 0
  %mul137 = shl nsw i32 %12, 1
  %idx.ext138 = sext i32 %mul137 to i64
  %14 = sext i32 %11 to i64
  br label %for.cond116.preheader

for.cond76.preheader:                             ; preds = %if.then65
  br i1 %cmp77226, label %for.cond79.preheader.lr.ph, label %return

for.cond79.preheader.lr.ph:                       ; preds = %for.cond76.preheader
  %mul98 = shl nsw i32 %12, 1
  %idx.ext99 = sext i32 %mul98 to i64
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.end92, %for.cond79.preheader.lr.ph
  %norm.4229 = phi double [ 0.000000e+00, %for.cond79.preheader.lr.ph ], [ %norm.5, %for.end92 ]
  %irow73.0228 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %inc97, %for.end92 ]
  %row70.0227 = phi double* [ %13, %for.cond79.preheader.lr.ph ], [ %add.ptr100, %for.end92 ]
  br label %for.body81

for.body81:                                       ; preds = %for.cond79.preheader, %for.body81
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body81 ], [ 0, %for.cond79.preheader ]
  %sum69.0222 = phi double [ %add89, %for.body81 ], [ 0.000000e+00, %for.cond79.preheader ]
  %15 = trunc i64 %indvars.iv247 to i32
  %mul = shl nsw i32 %15, 1
  %idxprom82 = sext i32 %mul to i64
  %arrayidx83 = getelementptr inbounds double* %row70.0227, i64 %idxprom82
  %16 = load double* %arrayidx83, align 8, !tbaa !4
  %add85201 = or i32 %mul, 1
  %idxprom86 = sext i32 %add85201 to i64
  %arrayidx87 = getelementptr inbounds double* %row70.0227, i64 %idxprom86
  %17 = load double* %arrayidx87, align 8, !tbaa !4
  %call88 = tail call double @Zabs(double %16, double %17) #5
  %add89 = fadd double %sum69.0222, %call88
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %lftr.wideiv249 = trunc i64 %indvars.iv.next248 to i32
  %exitcond250 = icmp eq i32 %lftr.wideiv249, %4
  br i1 %exitcond250, label %for.end92, label %for.body81

for.end92:                                        ; preds = %for.body81
  %cmp93 = fcmp olt double %norm.4229, %add89
  %norm.5 = select i1 %cmp93, double %add89, double %norm.4229
  %inc97 = add nsw i32 %irow73.0228, 1
  %add.ptr100 = getelementptr inbounds double* %row70.0227, i64 %idx.ext99
  %exitcond251 = icmp eq i32 %inc97, %3
  br i1 %exitcond251, label %return, label %for.cond79.preheader

for.cond116.preheader:                            ; preds = %for.end131, %for.cond116.preheader.lr.ph
  %irow109.0240 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc136, %for.end131 ]
  %norm.6239 = phi double [ 0.000000e+00, %for.cond116.preheader.lr.ph ], [ %norm.7, %for.end131 ]
  %row104.0238 = phi double* [ %13, %for.cond116.preheader.lr.ph ], [ %add.ptr139, %for.end131 ]
  br i1 %cmp117231, label %for.body118, label %for.end131

for.body118:                                      ; preds = %for.cond116.preheader, %for.body118
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body118 ], [ 0, %for.cond116.preheader ]
  %jcol110.0233 = phi i32 [ %inc129, %for.body118 ], [ 0, %for.cond116.preheader ]
  %sum103.0232 = phi double [ %add127, %for.body118 ], [ 0.000000e+00, %for.cond116.preheader ]
  %18 = trunc i64 %indvars.iv252 to i32
  %mul119 = shl nsw i32 %18, 1
  %idxprom120 = sext i32 %mul119 to i64
  %arrayidx121 = getelementptr inbounds double* %row104.0238, i64 %idxprom120
  %19 = load double* %arrayidx121, align 8, !tbaa !4
  %add123200 = or i32 %mul119, 1
  %idxprom124 = sext i32 %add123200 to i64
  %arrayidx125 = getelementptr inbounds double* %row104.0238, i64 %idxprom124
  %20 = load double* %arrayidx125, align 8, !tbaa !4
  %call126 = tail call double @Zabs(double %19, double %20) #5
  %add127 = fadd double %sum103.0232, %call126
  %inc129 = add nsw i32 %jcol110.0233, 1
  %indvars.iv.next253 = add i64 %indvars.iv252, %14
  %exitcond254 = icmp eq i32 %inc129, %4
  br i1 %exitcond254, label %for.end131, label %for.body118

for.end131:                                       ; preds = %for.body118, %for.cond116.preheader
  %sum103.0.lcssa = phi double [ 0.000000e+00, %for.cond116.preheader ], [ %add127, %for.body118 ]
  %cmp132 = fcmp olt double %norm.6239, %sum103.0.lcssa
  %norm.7 = select i1 %cmp132, double %sum103.0.lcssa, double %norm.6239
  %inc136 = add nsw i32 %irow109.0240, 1
  %add.ptr139 = getelementptr inbounds double* %row104.0238, i64 %idx.ext138
  %exitcond255 = icmp eq i32 %inc136, %3
  br i1 %exitcond255, label %return, label %for.cond116.preheader

return:                                           ; preds = %for.cond113.preheader, %for.end131, %for.cond76.preheader, %for.end92, %for.cond39.preheader, %for.end52, %for.cond.preheader, %for.end, %if.end12, %if.end7, %lor.lhs.false9
  %retval.0 = phi double [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ], [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.end ], [ 0.000000e+00, %for.cond39.preheader ], [ %norm.3, %for.end52 ], [ 0.000000e+00, %for.cond76.preheader ], [ %norm.5, %for.end92 ], [ 0.000000e+00, %for.cond113.preheader ], [ %norm.7, %for.end131 ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %jcol
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([98 x i8]* @.str9, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n1, align 4, !tbaa !0
  switch i32 %3, label %if.end82 [
    i32 1, label %if.then16
    i32 2, label %if.then38
  ]

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %jcol
  %idx.ext = sext i32 %mul to i64
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc118, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21136 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %if.then16
  br i1 %cmp21136, label %for.body25.lr.ph, label %if.end82

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %8 = sext i32 %7 to i64
  br label %for.body25

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21136, label %for.body, label %if.end82

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0138 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum135 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum135
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call22 = tail call double @fabs(double %9) #7
  %add = fadd double %sum.0138, %call22
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end82, label %for.body

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv156 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next157, %for.body25 ]
  %sum.1143 = phi double [ 0.000000e+00, %for.body25.lr.ph ], [ %add29, %for.body25 ]
  %irow.1141 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %for.body25 ]
  %add.ptr.sum = add i64 %indvars.iv156, %idx.ext
  %arrayidx27 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx27, align 8, !tbaa !4
  %call28 = tail call double @fabs(double %10) #7
  %add29 = fadd double %sum.1143, %call28
  %inc31 = add nsw i32 %irow.1141, 1
  %indvars.iv.next157 = add i64 %indvars.iv156, %8
  %exitcond158 = icmp eq i32 %inc31, %5
  br i1 %exitcond158, label %if.end82, label %for.body25

if.then38:                                        ; preds = %if.end13
  %mul40 = shl i32 %jcol, 1
  %inc241 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %11 = load i32* %inc241, align 4, !tbaa !0
  %mul42 = mul nsw i32 %mul40, %11
  %idx.ext43 = sext i32 %mul42 to i64
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %12 = load i32* %inc145, align 4, !tbaa !0
  %cmp46 = icmp eq i32 %12, 1
  %cmp49146 = icmp sgt i32 %5, 0
  br i1 %cmp46, label %for.cond48.preheader, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body66.lr.ph, label %if.end82

for.body66.lr.ph:                                 ; preds = %for.cond64.preheader
  %13 = sext i32 %12 to i64
  br label %for.body66

for.cond48.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body50, label %if.end82

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body50 ], [ 0, %for.cond48.preheader ]
  %sum.2148 = phi double [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond48.preheader ]
  %14 = trunc i64 %indvars.iv159 to i32
  %mul51 = shl nsw i32 %14, 1
  %idxprom52 = sext i32 %mul51 to i64
  %add.ptr44.sum132 = add i64 %idxprom52, %idx.ext43
  %arrayidx53 = getelementptr inbounds double* %0, i64 %add.ptr44.sum132
  %15 = load double* %arrayidx53, align 8, !tbaa !4
  %add55133 = or i32 %mul51, 1
  %idxprom56 = sext i32 %add55133 to i64
  %add.ptr44.sum134 = add i64 %idxprom56, %idx.ext43
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr44.sum134
  %16 = load double* %arrayidx57, align 8, !tbaa !4
  %call58 = tail call double @Zabs(double %15, double %16) #5
  %add59 = fadd double %sum.2148, %call58
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %5
  br i1 %exitcond162, label %if.end82, label %for.body50

for.body66:                                       ; preds = %for.body66, %for.body66.lr.ph
  %indvars.iv163 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next164, %for.body66 ]
  %sum.3154 = phi double [ 0.000000e+00, %for.body66.lr.ph ], [ %add75, %for.body66 ]
  %irow.3152 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc77, %for.body66 ]
  %17 = trunc i64 %indvars.iv163 to i32
  %mul67 = shl nsw i32 %17, 1
  %idxprom68 = sext i32 %mul67 to i64
  %add.ptr44.sum = add i64 %idxprom68, %idx.ext43
  %arrayidx69 = getelementptr inbounds double* %0, i64 %add.ptr44.sum
  %18 = load double* %arrayidx69, align 8, !tbaa !4
  %add71130 = or i32 %mul67, 1
  %idxprom72 = sext i32 %add71130 to i64
  %add.ptr44.sum131 = add i64 %idxprom72, %idx.ext43
  %arrayidx73 = getelementptr inbounds double* %0, i64 %add.ptr44.sum131
  %19 = load double* %arrayidx73, align 8, !tbaa !4
  %call74 = tail call double @Zabs(double %18, double %19) #5
  %add75 = fadd double %sum.3154, %call74
  %inc77 = add nsw i32 %irow.3152, 1
  %indvars.iv.next164 = add i64 %indvars.iv163, %13
  %exitcond165 = icmp eq i32 %inc77, %5
  br i1 %exitcond165, label %if.end82, label %for.body66

if.end82:                                         ; preds = %for.cond64.preheader, %for.body66, %for.cond48.preheader, %for.body50, %for.cond23.preheader, %for.body25, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond23.preheader ], [ %add29, %for.body25 ], [ 0.000000e+00, %for.cond48.preheader ], [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond64.preheader ], [ %add75, %for.body66 ]
  ret double %sum.4
}

; Function Attrs: nounwind optsize uwtable
define double @A2_twoNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %jcol
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([98 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n1, align 4, !tbaa !0
  switch i32 %3, label %if.end104 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ]

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %jcol
  %idx.ext = sext i32 %mul to i64
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc118, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21172 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.then16
  br i1 %cmp21172, label %for.body27.lr.ph, label %if.end104

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %8 = sext i32 %7 to i64
  br label %for.body27

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21172, label %for.body, label %if.end104

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0174 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum171 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum171
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %mul24 = fmul double %9, %9
  %add = fadd double %sum.0174, %mul24
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end104, label %for.body

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv192 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next193, %for.body27 ]
  %sum.1179 = phi double [ 0.000000e+00, %for.body27.lr.ph ], [ %add33, %for.body27 ]
  %irow.1177 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc35, %for.body27 ]
  %add.ptr.sum = add i64 %indvars.iv192, %idx.ext
  %arrayidx29 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx29, align 8, !tbaa !4
  %mul32 = fmul double %10, %10
  %add33 = fadd double %sum.1179, %mul32
  %inc35 = add nsw i32 %irow.1177, 1
  %indvars.iv.next193 = add i64 %indvars.iv192, %8
  %exitcond194 = icmp eq i32 %inc35, %5
  br i1 %exitcond194, label %if.end104, label %for.body27

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %jcol, 1
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %11 = load i32* %inc245, align 4, !tbaa !0
  %mul46 = mul nsw i32 %mul44, %11
  %idx.ext47 = sext i32 %mul46 to i64
  %inc149 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %12 = load i32* %inc149, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %12, 1
  %cmp53182 = icmp sgt i32 %5, 0
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body79.lr.ph, label %if.end104

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %13 = sext i32 %12 to i64
  br label %for.body79

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body54, label %if.end104

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.body54 ], [ 0, %for.cond52.preheader ]
  %sum.2184 = phi double [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv195 to i32
  %mul55 = shl nsw i32 %14, 1
  %idxprom56 = sext i32 %mul55 to i64
  %add.ptr48.sum168 = add i64 %idxprom56, %idx.ext47
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum168
  %15 = load double* %arrayidx57, align 8, !tbaa !4
  %mul61 = fmul double %15, %15
  %add63169 = or i32 %mul55, 1
  %idxprom64 = sext i32 %add63169 to i64
  %add.ptr48.sum170 = add i64 %idxprom64, %idx.ext47
  %arrayidx65 = getelementptr inbounds double* %0, i64 %add.ptr48.sum170
  %16 = load double* %arrayidx65, align 8, !tbaa !4
  %mul70 = fmul double %16, %16
  %add71 = fadd double %mul61, %mul70
  %add72 = fadd double %sum.2184, %add71
  %indvars.iv.next196 = add i64 %indvars.iv195, 1
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %5
  br i1 %exitcond198, label %if.end104, label %for.body54

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv199 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next200, %for.body79 ]
  %sum.3190 = phi double [ 0.000000e+00, %for.body79.lr.ph ], [ %add97, %for.body79 ]
  %irow.3188 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc99, %for.body79 ]
  %17 = trunc i64 %indvars.iv199 to i32
  %mul80 = shl nsw i32 %17, 1
  %idxprom81 = sext i32 %mul80 to i64
  %add.ptr48.sum = add i64 %idxprom81, %idx.ext47
  %arrayidx82 = getelementptr inbounds double* %0, i64 %add.ptr48.sum
  %18 = load double* %arrayidx82, align 8, !tbaa !4
  %mul86 = fmul double %18, %18
  %add88166 = or i32 %mul80, 1
  %idxprom89 = sext i32 %add88166 to i64
  %add.ptr48.sum167 = add i64 %idxprom89, %idx.ext47
  %arrayidx90 = getelementptr inbounds double* %0, i64 %add.ptr48.sum167
  %19 = load double* %arrayidx90, align 8, !tbaa !4
  %mul95 = fmul double %19, %19
  %add96 = fadd double %mul86, %mul95
  %add97 = fadd double %sum.3190, %add96
  %inc99 = add nsw i32 %irow.3188, 1
  %indvars.iv.next200 = add i64 %indvars.iv199, %13
  %exitcond201 = icmp eq i32 %inc99, %5
  br i1 %exitcond201, label %if.end104, label %for.body79

if.end104:                                        ; preds = %for.cond77.preheader, %for.body79, %for.cond52.preheader, %for.body54, %for.cond25.preheader, %for.body27, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond25.preheader ], [ %add33, %for.body27 ], [ 0.000000e+00, %for.cond52.preheader ], [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond77.preheader ], [ %add97, %for.body79 ]
  %call105 = tail call double @sqrt(double %sum.4) #5
  ret double %call105
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %jcol
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([103 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n1, align 4, !tbaa !0
  switch i32 %3, label %if.end90 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ]

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %jcol
  %idx.ext = sext i32 %mul to i64
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc118, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21151 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.then16
  br i1 %cmp21151, label %for.body28.lr.ph, label %if.end90

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = sext i32 %7 to i64
  br label %for.body28

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21151, label %for.body, label %if.end90

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %norm.0153 = phi double [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum150 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum150
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call22 = tail call double @fabs(double %9) #7
  %cmp23 = fcmp olt double %norm.0153, %call22
  %norm.1 = select i1 %cmp23, double %call22, double %norm.0153
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end90, label %for.body

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv171 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next172, %for.body28 ]
  %norm.2158 = phi double [ 0.000000e+00, %for.body28.lr.ph ], [ %norm.3, %for.body28 ]
  %irow.1156 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc36, %for.body28 ]
  %add.ptr.sum = add i64 %indvars.iv171, %idx.ext
  %arrayidx30 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx30, align 8, !tbaa !4
  %call31 = tail call double @fabs(double %10) #7
  %cmp32 = fcmp olt double %norm.2158, %call31
  %norm.3 = select i1 %cmp32, double %call31, double %norm.2158
  %inc36 = add nsw i32 %irow.1156, 1
  %indvars.iv.next172 = add i64 %indvars.iv171, %8
  %exitcond173 = icmp eq i32 %inc36, %5
  br i1 %exitcond173, label %if.end90, label %for.body28

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %jcol, 1
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %11 = load i32* %inc245, align 4, !tbaa !0
  %mul46 = mul nsw i32 %mul44, %11
  %idx.ext47 = sext i32 %mul46 to i64
  %inc149 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %12 = load i32* %inc149, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %12, 1
  %cmp53161 = icmp sgt i32 %5, 0
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body72.lr.ph, label %if.end90

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %13 = sext i32 %12 to i64
  br label %for.body72

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body54, label %if.end90

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body54 ], [ 0, %for.cond52.preheader ]
  %norm.4163 = phi double [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv174 to i32
  %mul55 = shl nsw i32 %14, 1
  %idxprom56 = sext i32 %mul55 to i64
  %add.ptr48.sum147 = add i64 %idxprom56, %idx.ext47
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum147
  %15 = load double* %arrayidx57, align 8, !tbaa !4
  %add59148 = or i32 %mul55, 1
  %idxprom60 = sext i32 %add59148 to i64
  %add.ptr48.sum149 = add i64 %idxprom60, %idx.ext47
  %arrayidx61 = getelementptr inbounds double* %0, i64 %add.ptr48.sum149
  %16 = load double* %arrayidx61, align 8, !tbaa !4
  %call62 = tail call double @Zabs(double %15, double %16) #5
  %cmp63 = fcmp olt double %norm.4163, %call62
  %norm.5 = select i1 %cmp63, double %call62, double %norm.4163
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %5
  br i1 %exitcond177, label %if.end90, label %for.body54

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv178 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next179, %for.body72 ]
  %norm.6169 = phi double [ 0.000000e+00, %for.body72.lr.ph ], [ %norm.7, %for.body72 ]
  %irow.3167 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc85, %for.body72 ]
  %17 = trunc i64 %indvars.iv178 to i32
  %mul73 = shl nsw i32 %17, 1
  %idxprom74 = sext i32 %mul73 to i64
  %add.ptr48.sum = add i64 %idxprom74, %idx.ext47
  %arrayidx75 = getelementptr inbounds double* %0, i64 %add.ptr48.sum
  %18 = load double* %arrayidx75, align 8, !tbaa !4
  %add77145 = or i32 %mul73, 1
  %idxprom78 = sext i32 %add77145 to i64
  %add.ptr48.sum146 = add i64 %idxprom78, %idx.ext47
  %arrayidx79 = getelementptr inbounds double* %0, i64 %add.ptr48.sum146
  %19 = load double* %arrayidx79, align 8, !tbaa !4
  %call80 = tail call double @Zabs(double %18, double %19) #5
  %cmp81 = fcmp olt double %norm.6169, %call80
  %norm.7 = select i1 %cmp81, double %call80, double %norm.6169
  %inc85 = add nsw i32 %irow.3167, 1
  %indvars.iv.next179 = add i64 %indvars.iv178, %13
  %exitcond180 = icmp eq i32 %inc85, %5
  br i1 %exitcond180, label %if.end90, label %for.body72

if.end90:                                         ; preds = %for.cond70.preheader, %for.body72, %for.cond52.preheader, %for.body54, %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  %norm.8 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond26.preheader ], [ %norm.3, %for.body28 ], [ 0.000000e+00, %for.cond52.preheader ], [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond70.preheader ], [ %norm.7, %for.body72 ]
  ret double %norm.8
}

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %irow
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n2, align 4, !tbaa !0
  switch i32 %3, label %if.end82 [
    i32 1, label %if.then16
    i32 2, label %if.then38
  ]

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc1, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %irow
  %idx.ext = sext i32 %mul to i64
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc218, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21136 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %if.then16
  br i1 %cmp21136, label %for.body25.lr.ph, label %if.end82

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %8 = sext i32 %7 to i64
  br label %for.body25

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21136, label %for.body, label %if.end82

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0138 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum135 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum135
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call22 = tail call double @fabs(double %9) #7
  %add = fadd double %sum.0138, %call22
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end82, label %for.body

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv156 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next157, %for.body25 ]
  %sum.1143 = phi double [ 0.000000e+00, %for.body25.lr.ph ], [ %add29, %for.body25 ]
  %jcol.1141 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %for.body25 ]
  %add.ptr.sum = add i64 %indvars.iv156, %idx.ext
  %arrayidx27 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx27, align 8, !tbaa !4
  %call28 = tail call double @fabs(double %10) #7
  %add29 = fadd double %sum.1143, %call28
  %inc31 = add nsw i32 %jcol.1141, 1
  %indvars.iv.next157 = add i64 %indvars.iv156, %8
  %exitcond158 = icmp eq i32 %inc31, %5
  br i1 %exitcond158, label %if.end82, label %for.body25

if.then38:                                        ; preds = %if.end13
  %mul40 = shl i32 %irow, 1
  %inc141 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %11 = load i32* %inc141, align 4, !tbaa !0
  %mul42 = mul nsw i32 %mul40, %11
  %idx.ext43 = sext i32 %mul42 to i64
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %12 = load i32* %inc245, align 4, !tbaa !0
  %cmp46 = icmp eq i32 %12, 1
  %cmp49146 = icmp sgt i32 %5, 0
  br i1 %cmp46, label %for.cond48.preheader, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body66.lr.ph, label %if.end82

for.body66.lr.ph:                                 ; preds = %for.cond64.preheader
  %13 = sext i32 %12 to i64
  br label %for.body66

for.cond48.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body50, label %if.end82

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body50 ], [ 0, %for.cond48.preheader ]
  %sum.2148 = phi double [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond48.preheader ]
  %14 = trunc i64 %indvars.iv159 to i32
  %mul51 = shl nsw i32 %14, 1
  %idxprom52 = sext i32 %mul51 to i64
  %add.ptr44.sum132 = add i64 %idxprom52, %idx.ext43
  %arrayidx53 = getelementptr inbounds double* %0, i64 %add.ptr44.sum132
  %15 = load double* %arrayidx53, align 8, !tbaa !4
  %add55133 = or i32 %mul51, 1
  %idxprom56 = sext i32 %add55133 to i64
  %add.ptr44.sum134 = add i64 %idxprom56, %idx.ext43
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr44.sum134
  %16 = load double* %arrayidx57, align 8, !tbaa !4
  %call58 = tail call double @Zabs(double %15, double %16) #5
  %add59 = fadd double %sum.2148, %call58
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %5
  br i1 %exitcond162, label %if.end82, label %for.body50

for.body66:                                       ; preds = %for.body66, %for.body66.lr.ph
  %indvars.iv163 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next164, %for.body66 ]
  %sum.3154 = phi double [ 0.000000e+00, %for.body66.lr.ph ], [ %add75, %for.body66 ]
  %jcol.3152 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc77, %for.body66 ]
  %17 = trunc i64 %indvars.iv163 to i32
  %mul67 = shl nsw i32 %17, 1
  %idxprom68 = sext i32 %mul67 to i64
  %add.ptr44.sum = add i64 %idxprom68, %idx.ext43
  %arrayidx69 = getelementptr inbounds double* %0, i64 %add.ptr44.sum
  %18 = load double* %arrayidx69, align 8, !tbaa !4
  %add71130 = or i32 %mul67, 1
  %idxprom72 = sext i32 %add71130 to i64
  %add.ptr44.sum131 = add i64 %idxprom72, %idx.ext43
  %arrayidx73 = getelementptr inbounds double* %0, i64 %add.ptr44.sum131
  %19 = load double* %arrayidx73, align 8, !tbaa !4
  %call74 = tail call double @Zabs(double %18, double %19) #5
  %add75 = fadd double %sum.3154, %call74
  %inc77 = add nsw i32 %jcol.3152, 1
  %indvars.iv.next164 = add i64 %indvars.iv163, %13
  %exitcond165 = icmp eq i32 %inc77, %5
  br i1 %exitcond165, label %if.end82, label %for.body66

if.end82:                                         ; preds = %for.cond64.preheader, %for.body66, %for.cond48.preheader, %for.body50, %for.cond23.preheader, %for.body25, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond23.preheader ], [ %add29, %for.body25 ], [ 0.000000e+00, %for.cond48.preheader ], [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond64.preheader ], [ %add75, %for.body66 ]
  ret double %sum.4
}

; Function Attrs: nounwind optsize uwtable
define double @A2_twoNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %irow
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n2, align 4, !tbaa !0
  switch i32 %3, label %if.end104 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ]

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc1, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %irow
  %idx.ext = sext i32 %mul to i64
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc218, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21172 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.then16
  br i1 %cmp21172, label %for.body27.lr.ph, label %if.end104

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %8 = sext i32 %7 to i64
  br label %for.body27

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21172, label %for.body, label %if.end104

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0174 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum171 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum171
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %mul24 = fmul double %9, %9
  %add = fadd double %sum.0174, %mul24
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end104, label %for.body

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv192 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next193, %for.body27 ]
  %sum.1179 = phi double [ 0.000000e+00, %for.body27.lr.ph ], [ %add33, %for.body27 ]
  %jcol.1177 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc35, %for.body27 ]
  %add.ptr.sum = add i64 %indvars.iv192, %idx.ext
  %arrayidx29 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx29, align 8, !tbaa !4
  %mul32 = fmul double %10, %10
  %add33 = fadd double %sum.1179, %mul32
  %inc35 = add nsw i32 %jcol.1177, 1
  %indvars.iv.next193 = add i64 %indvars.iv192, %8
  %exitcond194 = icmp eq i32 %inc35, %5
  br i1 %exitcond194, label %if.end104, label %for.body27

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %irow, 1
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %11 = load i32* %inc145, align 4, !tbaa !0
  %mul46 = mul nsw i32 %mul44, %11
  %idx.ext47 = sext i32 %mul46 to i64
  %inc249 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %12 = load i32* %inc249, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %12, 1
  %cmp53182 = icmp sgt i32 %5, 0
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body79.lr.ph, label %if.end104

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %13 = sext i32 %12 to i64
  br label %for.body79

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body54, label %if.end104

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.body54 ], [ 0, %for.cond52.preheader ]
  %sum.2184 = phi double [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv195 to i32
  %mul55 = shl nsw i32 %14, 1
  %idxprom56 = sext i32 %mul55 to i64
  %add.ptr48.sum168 = add i64 %idxprom56, %idx.ext47
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum168
  %15 = load double* %arrayidx57, align 8, !tbaa !4
  %mul61 = fmul double %15, %15
  %add63169 = or i32 %mul55, 1
  %idxprom64 = sext i32 %add63169 to i64
  %add.ptr48.sum170 = add i64 %idxprom64, %idx.ext47
  %arrayidx65 = getelementptr inbounds double* %0, i64 %add.ptr48.sum170
  %16 = load double* %arrayidx65, align 8, !tbaa !4
  %mul70 = fmul double %16, %16
  %add71 = fadd double %mul61, %mul70
  %add72 = fadd double %sum.2184, %add71
  %indvars.iv.next196 = add i64 %indvars.iv195, 1
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %5
  br i1 %exitcond198, label %if.end104, label %for.body54

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv199 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next200, %for.body79 ]
  %sum.3190 = phi double [ 0.000000e+00, %for.body79.lr.ph ], [ %add97, %for.body79 ]
  %jcol.3188 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc99, %for.body79 ]
  %17 = trunc i64 %indvars.iv199 to i32
  %mul80 = shl nsw i32 %17, 1
  %idxprom81 = sext i32 %mul80 to i64
  %add.ptr48.sum = add i64 %idxprom81, %idx.ext47
  %arrayidx82 = getelementptr inbounds double* %0, i64 %add.ptr48.sum
  %18 = load double* %arrayidx82, align 8, !tbaa !4
  %mul86 = fmul double %18, %18
  %add88166 = or i32 %mul80, 1
  %idxprom89 = sext i32 %add88166 to i64
  %add.ptr48.sum167 = add i64 %idxprom89, %idx.ext47
  %arrayidx90 = getelementptr inbounds double* %0, i64 %add.ptr48.sum167
  %19 = load double* %arrayidx90, align 8, !tbaa !4
  %mul95 = fmul double %19, %19
  %add96 = fadd double %mul86, %mul95
  %add97 = fadd double %sum.3190, %add96
  %inc99 = add nsw i32 %jcol.3188, 1
  %indvars.iv.next200 = add i64 %indvars.iv199, %13
  %exitcond201 = icmp eq i32 %inc99, %5
  br i1 %exitcond201, label %if.end104, label %for.body79

if.end104:                                        ; preds = %for.cond77.preheader, %for.body79, %for.cond52.preheader, %for.body54, %for.cond25.preheader, %for.body27, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond25.preheader ], [ %add33, %for.body27 ], [ 0.000000e+00, %for.cond52.preheader ], [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond77.preheader ], [ %add97, %for.body79 ]
  %call105 = tail call double @sqrt(double %sum.4) #5
  ret double %call105
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries, align 8, !tbaa !3
  %cmp1 = icmp eq double* %0, null
  %cmp3 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, %irow
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n2, align 4, !tbaa !0
  switch i32 %3, label %if.end90 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ]

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc1, align 4, !tbaa !0
  %mul = mul nsw i32 %6, %irow
  %idx.ext = sext i32 %mul to i64
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc218, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 1
  %cmp21151 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.then16
  br i1 %cmp21151, label %for.body28.lr.ph, label %if.end90

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = sext i32 %7 to i64
  br label %for.body28

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21151, label %for.body, label %if.end90

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %norm.0153 = phi double [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum150 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum150
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %call22 = tail call double @fabs(double %9) #7
  %cmp23 = fcmp olt double %norm.0153, %call22
  %norm.1 = select i1 %cmp23, double %call22, double %norm.0153
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end90, label %for.body

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv171 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next172, %for.body28 ]
  %norm.2158 = phi double [ 0.000000e+00, %for.body28.lr.ph ], [ %norm.3, %for.body28 ]
  %jcol.1156 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc36, %for.body28 ]
  %add.ptr.sum = add i64 %indvars.iv171, %idx.ext
  %arrayidx30 = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %10 = load double* %arrayidx30, align 8, !tbaa !4
  %call31 = tail call double @fabs(double %10) #7
  %cmp32 = fcmp olt double %norm.2158, %call31
  %norm.3 = select i1 %cmp32, double %call31, double %norm.2158
  %inc36 = add nsw i32 %jcol.1156, 1
  %indvars.iv.next172 = add i64 %indvars.iv171, %8
  %exitcond173 = icmp eq i32 %inc36, %5
  br i1 %exitcond173, label %if.end90, label %for.body28

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %irow, 1
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %11 = load i32* %inc145, align 4, !tbaa !0
  %mul46 = mul nsw i32 %mul44, %11
  %idx.ext47 = sext i32 %mul46 to i64
  %inc249 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %12 = load i32* %inc249, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %12, 1
  %cmp53161 = icmp sgt i32 %5, 0
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body72.lr.ph, label %if.end90

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %13 = sext i32 %12 to i64
  br label %for.body72

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body54, label %if.end90

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body54 ], [ 0, %for.cond52.preheader ]
  %norm.4163 = phi double [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv174 to i32
  %mul55 = shl nsw i32 %14, 1
  %idxprom56 = sext i32 %mul55 to i64
  %add.ptr48.sum147 = add i64 %idxprom56, %idx.ext47
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum147
  %15 = load double* %arrayidx57, align 8, !tbaa !4
  %add59148 = or i32 %mul55, 1
  %idxprom60 = sext i32 %add59148 to i64
  %add.ptr48.sum149 = add i64 %idxprom60, %idx.ext47
  %arrayidx61 = getelementptr inbounds double* %0, i64 %add.ptr48.sum149
  %16 = load double* %arrayidx61, align 8, !tbaa !4
  %call62 = tail call double @Zabs(double %15, double %16) #5
  %cmp63 = fcmp olt double %norm.4163, %call62
  %norm.5 = select i1 %cmp63, double %call62, double %norm.4163
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %5
  br i1 %exitcond177, label %if.end90, label %for.body54

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv178 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next179, %for.body72 ]
  %norm.6169 = phi double [ 0.000000e+00, %for.body72.lr.ph ], [ %norm.7, %for.body72 ]
  %jcol.3167 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc85, %for.body72 ]
  %17 = trunc i64 %indvars.iv178 to i32
  %mul73 = shl nsw i32 %17, 1
  %idxprom74 = sext i32 %mul73 to i64
  %add.ptr48.sum = add i64 %idxprom74, %idx.ext47
  %arrayidx75 = getelementptr inbounds double* %0, i64 %add.ptr48.sum
  %18 = load double* %arrayidx75, align 8, !tbaa !4
  %add77145 = or i32 %mul73, 1
  %idxprom78 = sext i32 %add77145 to i64
  %add.ptr48.sum146 = add i64 %idxprom78, %idx.ext47
  %arrayidx79 = getelementptr inbounds double* %0, i64 %add.ptr48.sum146
  %19 = load double* %arrayidx79, align 8, !tbaa !4
  %call80 = tail call double @Zabs(double %18, double %19) #5
  %cmp81 = fcmp olt double %norm.6169, %call80
  %norm.7 = select i1 %cmp81, double %call80, double %norm.6169
  %inc85 = add nsw i32 %jcol.3167, 1
  %indvars.iv.next179 = add i64 %indvars.iv178, %13
  %exitcond180 = icmp eq i32 %inc85, %5
  br i1 %exitcond180, label %if.end90, label %for.body72

if.end90:                                         ; preds = %for.cond70.preheader, %for.body72, %for.cond52.preheader, %for.body54, %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  %norm.8 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond26.preheader ], [ %norm.3, %for.body28 ], [ 0.000000e+00, %for.cond52.preheader ], [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond70.preheader ], [ %norm.7, %for.body72 ]
  ret double %norm.8
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
