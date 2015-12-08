; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_swapRows(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Chv_swapRows(%p,%d,%d)\0A rows must be less than nD = %d\00", align 1
@.str2 = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_swapRows(%p,%d,%d)\0A bad input, entries = %p, nD = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Chv_swapRows(%p,%d,%d)\0A type = %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Chv_swapRows(%p,%d,%d)\0A bad symmetryflag %d\0A\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Chv_swapColumns(%p,%d,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [78 x i8] c"\0A fatal error in Chv_swapColumns(%p,%d,%d)\0A bad input, entries = %p, nD = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [96 x i8] c"\0A fatal error in Chv_swapColumns(%p,%d,%d)\0A type = %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_swapColumns(%p,%d,%d)\0A bad symmetryflag %d\0A\00", align 1
@.str9 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Chv_swapRowsAndColumns(%p,%d,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_swapRowsAndColumns(%p,%d,%d)\0A bad input, entries = %p, nD = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [103 x i8] c"\0A fatal error in Chv_swapRowsAndColumns(%p,%d,%d)\0A type = %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Chv_swapRowsAndColumns(%p,%d,%d)\0A bad symmetryflag %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_swapRows(%struct._Chv* %chv, i32 %irow, i32 %jrow) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jrow, 0
  %or.cond391 = or i1 %or.cond, %cmp3
  br i1 %or.cond391, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %irow, %jrow
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %1 = load i32* %nD, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %1, %irow
  %cmp9 = icmp sgt i32 %1, %jrow
  %or.cond392 = and i1 %cmp7, %cmp9
  br i1 %or.cond392, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end6
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %irow, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end6
  %call13 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %cmp14 = icmp eq double* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = load i32* %nD, align 4, !tbaa !3
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, double* null, i32 %4) #4
  call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end12
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %5 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %5, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([93 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, i32 %5) #4
  call void @exit(i32 -1) #5
  unreachable

if.end25:                                         ; preds = %if.end17
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %7 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %7, label %if.else216 [
    i32 0, label %if.then30
    i32 1, label %if.then30
    i32 2, label %if.then33
  ]

if.then30:                                        ; preds = %if.end25, %if.end25
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %irow, i32 %jrow) #6
  br label %return

if.then33:                                        ; preds = %if.end25
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #4
  %idxprom = sext i32 %irow to i64
  %8 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %8, i64 %idxprom
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom34 = sext i32 %jrow to i64
  %arrayidx35 = getelementptr inbounds i32* %8, i64 %idxprom34
  %10 = load i32* %arrayidx35, align 4, !tbaa !3
  store i32 %10, i32* %arrayidx, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx35, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %irow, %jrow
  %irow.jrow = select i1 %cmp40, i32 %irow, i32 %jrow
  %jrow.irow = select i1 %cmp40, i32 %jrow, i32 %irow
  %11 = load i32* %nD, align 4, !tbaa !3
  %12 = load i32* %nL, align 4, !tbaa !3
  %add = add i32 %11, -1
  %sub = add i32 %add, %12
  %sub43 = sub nsw i32 %sub, %jrow.irow
  %sub46 = sub nsw i32 %sub, %irow.jrow
  %mul = shl i32 %11, 1
  %13 = load i32* %nU, align 4, !tbaa !3
  %add47 = add i32 %12, -1
  %add48 = add i32 %add47, %mul
  %sub49 = add i32 %add48, %13
  %14 = load i32* %type, align 4, !tbaa !3
  switch i32 %14, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond103.preheader
  ]

for.cond103.preheader:                            ; preds = %if.then33
  %cmp104425 = icmp sgt i32 %jrow.irow, 0
  br i1 %cmp104425, label %for.body105.lr.ph, label %for.cond140.preheader

for.body105.lr.ph:                                ; preds = %for.cond103.preheader
  %15 = add i32 %12, %13
  %16 = shl i32 %11, 1
  %17 = add i32 %15, %16
  %18 = add i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = xor i32 %jrow, -1
  %21 = xor i32 %irow, -1
  %22 = icmp sgt i32 %20, %21
  %smax460 = select i1 %22, i32 %20, i32 %21
  %23 = shl i32 %smax460, 1
  %24 = add i32 %17, %23
  %25 = sub i32 -2, %smax460
  %26 = add i32 %17, -3
  %27 = mul i32 %25, %26
  %28 = add i32 %13, %27
  %29 = mul i32 %11, 3
  %30 = add i32 %28, %29
  %31 = shl i32 %12, 1
  %32 = add i32 %30, %31
  %33 = icmp sgt i32 %jrow, %irow
  %smax461 = select i1 %33, i32 %jrow, i32 %irow
  %34 = sub i32 -3, %smax460
  %35 = mul i32 %25, %34
  %36 = and i32 %35, -2
  %37 = add i32 %13, %smax460
  %38 = add i32 %37, %27
  %39 = add i32 %38, %29
  %40 = add i32 %39, %31
  %41 = add i32 %40, -1
  %42 = xor i32 %smax460, -1
  br label %for.body105

for.cond.preheader:                               ; preds = %if.then33
  %cmp53404 = icmp sgt i32 %jrow.irow, 0
  br i1 %cmp53404, label %for.body.lr.ph, label %for.cond65.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %43 = add i32 %12, %13
  %44 = shl i32 %11, 1
  %45 = add i32 %43, %44
  %46 = add i32 %45, -1
  %47 = sext i32 %46 to i64
  %48 = xor i32 %jrow, -1
  %49 = xor i32 %irow, -1
  %50 = icmp sgt i32 %48, %49
  %smax445 = select i1 %50, i32 %48, i32 %49
  %51 = shl i32 %smax445, 1
  %52 = add i32 %45, %51
  %53 = sub i32 -2, %smax445
  %54 = add i32 %45, -3
  %55 = mul i32 %53, %54
  %56 = add i32 %13, %55
  %57 = mul i32 %11, 3
  %58 = add i32 %56, %57
  %59 = shl i32 %12, 1
  %60 = add i32 %58, %59
  %61 = icmp sgt i32 %jrow, %irow
  %smax446 = select i1 %61, i32 %jrow, i32 %irow
  %62 = sub i32 -3, %smax445
  %63 = mul i32 %53, %62
  %64 = and i32 %63, -2
  %65 = add i32 %13, %smax445
  %66 = add i32 %65, %55
  %67 = add i32 %66, %57
  %68 = add i32 %67, %59
  %69 = add i32 %68, -1
  %70 = xor i32 %smax445, -1
  br label %for.body

for.cond.for.cond65.preheader_crit_edge:          ; preds = %for.body
  %71 = add i32 %52, 1
  %72 = add i32 %60, -2
  %73 = sub i32 %72, %smax446
  %74 = sub i32 %73, %64
  %75 = sub i32 %69, %64
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond.for.cond65.preheader_crit_edge, %for.cond.preheader
  %stride.0.lcssa = phi i32 [ %71, %for.cond.for.cond65.preheader_crit_edge ], [ %sub49, %for.cond.preheader ]
  %joff.0.lcssa = phi i32 [ %74, %for.cond.for.cond65.preheader_crit_edge ], [ %sub46, %for.cond.preheader ]
  %ioff.0.lcssa = phi i32 [ %75, %for.cond.for.cond65.preheader_crit_edge ], [ %sub43, %for.cond.preheader ]
  %cmp66398 = icmp slt i32 %jrow.irow, %irow.jrow
  br i1 %cmp66398, label %for.body67.lr.ph, label %for.cond82.preheader

for.body67.lr.ph:                                 ; preds = %for.cond65.preheader
  %76 = sext i32 %stride.0.lcssa to i64
  %77 = sext i32 %ioff.0.lcssa to i64
  %78 = icmp sgt i32 %jrow, %irow
  %smax = select i1 %78, i32 %jrow, i32 %irow
  %79 = xor i32 %jrow, -1
  %80 = xor i32 %irow, -1
  %81 = icmp sgt i32 %79, %80
  %smax441 = select i1 %81, i32 %79, i32 %80
  %82 = add i32 %smax, %smax441
  %83 = add i32 %stride.0.lcssa, -2
  %84 = mul i32 %82, %83
  %85 = add i32 %82, -1
  %86 = mul i32 %82, %85
  %87 = and i32 %86, -2
  %88 = add i32 %ioff.0.lcssa, %smax
  %89 = add i32 %88, %smax441
  br label %for.body67

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv442 = phi i64 [ %47, %for.body.lr.ph ], [ %indvars.iv.next443, %for.body ]
  %joff.0407 = phi i32 [ %sub46, %for.body.lr.ph ], [ %add63, %for.body ]
  %ioff.0406 = phi i32 [ %sub43, %for.body.lr.ph ], [ %add62, %for.body ]
  %ii.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom54 = sext i32 %ioff.0406 to i64
  %arrayidx55 = getelementptr inbounds double* %call13, i64 %idxprom54
  %90 = load double* %arrayidx55, align 8, !tbaa !4
  %idxprom56 = sext i32 %joff.0407 to i64
  %arrayidx57 = getelementptr inbounds double* %call13, i64 %idxprom56
  %91 = load double* %arrayidx57, align 8, !tbaa !4
  store double %91, double* %arrayidx55, align 8, !tbaa !4
  store double %90, double* %arrayidx57, align 8, !tbaa !4
  %92 = trunc i64 %indvars.iv442 to i32
  %add62 = add nsw i32 %92, %ioff.0406
  %add63 = add nsw i32 %92, %joff.0407
  %inc = add nsw i32 %ii.0405, 1
  %indvars.iv.next443 = add i64 %indvars.iv442, -2
  %exitcond = icmp eq i32 %inc, %70
  br i1 %exitcond, label %for.cond.for.cond65.preheader_crit_edge, label %for.body

for.cond65.for.cond82.preheader_crit_edge:        ; preds = %for.body67
  %93 = add i32 %joff.0.lcssa, %stride.0.lcssa
  %94 = add i32 %93, %84
  %95 = sub i32 %94, %87
  %96 = add i32 %89, 1
  br label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.cond65.for.cond82.preheader_crit_edge, %for.cond65.preheader
  %joff.1.lcssa = phi i32 [ %95, %for.cond65.for.cond82.preheader_crit_edge ], [ %joff.0.lcssa, %for.cond65.preheader ]
  %ioff.1.lcssa = phi i32 [ %96, %for.cond65.for.cond82.preheader_crit_edge ], [ %ioff.0.lcssa, %for.cond65.preheader ]
  %add83393 = add nsw i32 %13, %11
  %cmp84394 = icmp slt i32 %irow.jrow, %add83393
  br i1 %cmp84394, label %for.body85.lr.ph, label %return

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %97 = sext i32 %joff.1.lcssa to i64
  %98 = sext i32 %ioff.1.lcssa to i64
  br label %for.body85

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %indvars.iv439 = phi i64 [ %77, %for.body67.lr.ph ], [ %indvars.iv.next440, %for.body67 ]
  %indvars.iv437 = phi i64 [ %76, %for.body67.lr.ph ], [ %indvars.iv.next438, %for.body67 ]
  %joff.1401 = phi i32 [ %joff.0.lcssa, %for.body67.lr.ph ], [ %add77, %for.body67 ]
  %ii.1399 = phi i32 [ %jrow.irow, %for.body67.lr.ph ], [ %inc80, %for.body67 ]
  %arrayidx69 = getelementptr inbounds double* %call13, i64 %indvars.iv439
  %99 = load double* %arrayidx69, align 8, !tbaa !4
  %idxprom70 = sext i32 %joff.1401 to i64
  %arrayidx71 = getelementptr inbounds double* %call13, i64 %idxprom70
  %100 = load double* %arrayidx71, align 8, !tbaa !4
  store double %100, double* %arrayidx69, align 8, !tbaa !4
  store double %99, double* %arrayidx71, align 8, !tbaa !4
  %indvars.iv.next440 = add i64 %indvars.iv439, 1
  %101 = trunc i64 %indvars.iv437 to i32
  %add77 = add nsw i32 %101, %joff.1401
  %indvars.iv.next438 = add i64 %indvars.iv437, -2
  %inc80 = add nsw i32 %ii.1399, 1
  %cmp66 = icmp slt i32 %inc80, %irow.jrow
  br i1 %cmp66, label %for.body67, label %for.cond65.for.cond82.preheader_crit_edge

for.body85:                                       ; preds = %for.body85.lr.ph, %for.body85
  %indvars.iv433 = phi i64 [ %98, %for.body85.lr.ph ], [ %indvars.iv.next434, %for.body85 ]
  %indvars.iv = phi i64 [ %97, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %ii.2395 = phi i32 [ %irow.jrow, %for.body85.lr.ph ], [ %inc97, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double* %call13, i64 %indvars.iv433
  %102 = load double* %arrayidx87, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds double* %call13, i64 %indvars.iv
  %103 = load double* %arrayidx89, align 8, !tbaa !4
  store double %103, double* %arrayidx87, align 8, !tbaa !4
  store double %102, double* %arrayidx89, align 8, !tbaa !4
  %indvars.iv.next434 = add i64 %indvars.iv433, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc97 = add nsw i32 %ii.2395, 1
  %cmp84 = icmp slt i32 %inc97, %add83393
  br i1 %cmp84, label %for.body85, label %return

for.cond103.for.cond140.preheader_crit_edge:      ; preds = %for.body105
  %104 = add i32 %24, 1
  %105 = add i32 %32, -2
  %106 = sub i32 %105, %smax461
  %107 = sub i32 %106, %36
  %108 = sub i32 %41, %36
  br label %for.cond140.preheader

for.cond140.preheader:                            ; preds = %for.cond103.for.cond140.preheader_crit_edge, %for.cond103.preheader
  %stride.2.lcssa = phi i32 [ %104, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub49, %for.cond103.preheader ]
  %joff.3.lcssa = phi i32 [ %107, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub46, %for.cond103.preheader ]
  %ioff.3.lcssa = phi i32 [ %108, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub43, %for.cond103.preheader ]
  %cmp141418 = icmp slt i32 %jrow.irow, %irow.jrow
  br i1 %cmp141418, label %for.body142.lr.ph, label %for.cond177.preheader

for.body142.lr.ph:                                ; preds = %for.cond140.preheader
  %109 = sext i32 %stride.2.lcssa to i64
  %110 = sext i32 %ioff.3.lcssa to i64
  %111 = icmp sgt i32 %jrow, %irow
  %smax455 = select i1 %111, i32 %jrow, i32 %irow
  %112 = xor i32 %jrow, -1
  %113 = xor i32 %irow, -1
  %114 = icmp sgt i32 %112, %113
  %smax456 = select i1 %114, i32 %112, i32 %113
  %115 = add i32 %smax455, %smax456
  %116 = add i32 %stride.2.lcssa, -2
  %117 = mul i32 %115, %116
  %118 = add i32 %115, -1
  %119 = mul i32 %115, %118
  %120 = and i32 %119, -2
  %121 = add i32 %ioff.3.lcssa, %smax455
  %122 = add i32 %121, %smax456
  br label %for.body142

for.body105:                                      ; preds = %for.body105, %for.body105.lr.ph
  %indvars.iv457 = phi i64 [ %19, %for.body105.lr.ph ], [ %indvars.iv.next458, %for.body105 ]
  %joff.3428 = phi i32 [ %sub46, %for.body105.lr.ph ], [ %add135, %for.body105 ]
  %ioff.3427 = phi i32 [ %sub43, %for.body105.lr.ph ], [ %add134, %for.body105 ]
  %ii.3426 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc138, %for.body105 ]
  %mul106 = shl nsw i32 %ioff.3427, 1
  %idxprom107 = sext i32 %mul106 to i64
  %arrayidx108 = getelementptr inbounds double* %call13, i64 %idxprom107
  %123 = load double* %arrayidx108, align 8, !tbaa !4
  %mul109 = shl nsw i32 %joff.3428, 1
  %idxprom110 = sext i32 %mul109 to i64
  %arrayidx111 = getelementptr inbounds double* %call13, i64 %idxprom110
  %124 = load double* %arrayidx111, align 8, !tbaa !4
  store double %124, double* %arrayidx108, align 8, !tbaa !4
  store double %123, double* %arrayidx111, align 8, !tbaa !4
  %add119389 = or i32 %mul106, 1
  %idxprom120 = sext i32 %add119389 to i64
  %arrayidx121 = getelementptr inbounds double* %call13, i64 %idxprom120
  %125 = load double* %arrayidx121, align 8, !tbaa !4
  %add123390 = or i32 %mul109, 1
  %idxprom124 = sext i32 %add123390 to i64
  %arrayidx125 = getelementptr inbounds double* %call13, i64 %idxprom124
  %126 = load double* %arrayidx125, align 8, !tbaa !4
  store double %126, double* %arrayidx121, align 8, !tbaa !4
  store double %125, double* %arrayidx125, align 8, !tbaa !4
  %127 = trunc i64 %indvars.iv457 to i32
  %add134 = add nsw i32 %127, %ioff.3427
  %add135 = add nsw i32 %127, %joff.3428
  %inc138 = add nsw i32 %ii.3426, 1
  %indvars.iv.next458 = add i64 %indvars.iv457, -2
  %exitcond462 = icmp eq i32 %inc138, %42
  br i1 %exitcond462, label %for.cond103.for.cond140.preheader_crit_edge, label %for.body105

for.cond140.for.cond177.preheader_crit_edge:      ; preds = %for.body142
  %128 = add i32 %joff.3.lcssa, %stride.2.lcssa
  %129 = add i32 %128, %117
  %130 = sub i32 %129, %120
  %131 = add i32 %122, 1
  br label %for.cond177.preheader

for.cond177.preheader:                            ; preds = %for.cond140.for.cond177.preheader_crit_edge, %for.cond140.preheader
  %joff.4.lcssa = phi i32 [ %130, %for.cond140.for.cond177.preheader_crit_edge ], [ %joff.3.lcssa, %for.cond140.preheader ]
  %ioff.4.lcssa = phi i32 [ %131, %for.cond140.for.cond177.preheader_crit_edge ], [ %ioff.3.lcssa, %for.cond140.preheader ]
  %add178413 = add nsw i32 %13, %11
  %cmp179414 = icmp slt i32 %irow.jrow, %add178413
  br i1 %cmp179414, label %for.body180.lr.ph, label %return

for.body180.lr.ph:                                ; preds = %for.cond177.preheader
  %132 = sext i32 %joff.4.lcssa to i64
  %133 = sext i32 %ioff.4.lcssa to i64
  br label %for.body180

for.body142:                                      ; preds = %for.body142.lr.ph, %for.body142
  %indvars.iv453 = phi i64 [ %110, %for.body142.lr.ph ], [ %indvars.iv.next454, %for.body142 ]
  %indvars.iv451 = phi i64 [ %109, %for.body142.lr.ph ], [ %indvars.iv.next452, %for.body142 ]
  %joff.4421 = phi i32 [ %joff.3.lcssa, %for.body142.lr.ph ], [ %add172, %for.body142 ]
  %ii.4419 = phi i32 [ %jrow.irow, %for.body142.lr.ph ], [ %inc175, %for.body142 ]
  %134 = trunc i64 %indvars.iv453 to i32
  %mul143 = shl nsw i32 %134, 1
  %idxprom144 = sext i32 %mul143 to i64
  %arrayidx145 = getelementptr inbounds double* %call13, i64 %idxprom144
  %135 = load double* %arrayidx145, align 8, !tbaa !4
  %mul146 = shl nsw i32 %joff.4421, 1
  %idxprom147 = sext i32 %mul146 to i64
  %arrayidx148 = getelementptr inbounds double* %call13, i64 %idxprom147
  %136 = load double* %arrayidx148, align 8, !tbaa !4
  store double %136, double* %arrayidx145, align 8, !tbaa !4
  store double %135, double* %arrayidx148, align 8, !tbaa !4
  %add156387 = or i32 %mul143, 1
  %idxprom157 = sext i32 %add156387 to i64
  %arrayidx158 = getelementptr inbounds double* %call13, i64 %idxprom157
  %137 = load double* %arrayidx158, align 8, !tbaa !4
  %add160388 = or i32 %mul146, 1
  %idxprom161 = sext i32 %add160388 to i64
  %arrayidx162 = getelementptr inbounds double* %call13, i64 %idxprom161
  %138 = load double* %arrayidx162, align 8, !tbaa !4
  store double %138, double* %arrayidx158, align 8, !tbaa !4
  store double %137, double* %arrayidx162, align 8, !tbaa !4
  %indvars.iv.next454 = add i64 %indvars.iv453, 1
  %139 = trunc i64 %indvars.iv451 to i32
  %add172 = add nsw i32 %139, %joff.4421
  %indvars.iv.next452 = add i64 %indvars.iv451, -2
  %inc175 = add nsw i32 %ii.4419, 1
  %cmp141 = icmp slt i32 %inc175, %irow.jrow
  br i1 %cmp141, label %for.body142, label %for.cond140.for.cond177.preheader_crit_edge

for.body180:                                      ; preds = %for.body180.lr.ph, %for.body180
  %indvars.iv449 = phi i64 [ %133, %for.body180.lr.ph ], [ %indvars.iv.next450, %for.body180 ]
  %indvars.iv447 = phi i64 [ %132, %for.body180.lr.ph ], [ %indvars.iv.next448, %for.body180 ]
  %ii.5415 = phi i32 [ %irow.jrow, %for.body180.lr.ph ], [ %inc212, %for.body180 ]
  %140 = trunc i64 %indvars.iv449 to i32
  %mul181 = shl nsw i32 %140, 1
  %idxprom182 = sext i32 %mul181 to i64
  %arrayidx183 = getelementptr inbounds double* %call13, i64 %idxprom182
  %141 = load double* %arrayidx183, align 8, !tbaa !4
  %142 = trunc i64 %indvars.iv447 to i32
  %mul184 = shl nsw i32 %142, 1
  %idxprom185 = sext i32 %mul184 to i64
  %arrayidx186 = getelementptr inbounds double* %call13, i64 %idxprom185
  %143 = load double* %arrayidx186, align 8, !tbaa !4
  store double %143, double* %arrayidx183, align 8, !tbaa !4
  store double %141, double* %arrayidx186, align 8, !tbaa !4
  %add194385 = or i32 %mul181, 1
  %idxprom195 = sext i32 %add194385 to i64
  %arrayidx196 = getelementptr inbounds double* %call13, i64 %idxprom195
  %144 = load double* %arrayidx196, align 8, !tbaa !4
  %add198386 = or i32 %mul184, 1
  %idxprom199 = sext i32 %add198386 to i64
  %arrayidx200 = getelementptr inbounds double* %call13, i64 %idxprom199
  %145 = load double* %arrayidx200, align 8, !tbaa !4
  store double %145, double* %arrayidx196, align 8, !tbaa !4
  store double %144, double* %arrayidx200, align 8, !tbaa !4
  %indvars.iv.next450 = add i64 %indvars.iv449, 1
  %indvars.iv.next448 = add i64 %indvars.iv447, 1
  %inc212 = add nsw i32 %ii.5415, 1
  %cmp179 = icmp slt i32 %inc212, %add178413
  br i1 %cmp179, label %for.body180, label %return

if.else216:                                       ; preds = %if.end25
  %146 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, i32 %7) #4
  call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %for.cond177.preheader, %for.body180, %for.cond82.preheader, %for.body85, %if.then33, %if.then30, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %ii, i32 %jj) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %ii, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jj, 0
  %or.cond530 = or i1 %or.cond, %cmp3
  br i1 %or.cond530, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %ii, %jj
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %call7 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %cmp8 = icmp eq double* %call7, null
  %.pre = load i32* %nD, align 4, !tbaa !3
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %cmp10 = icmp sgt i32 %.pre, %ii
  %cmp12 = icmp sgt i32 %.pre, %jj
  %or.cond531 = and i1 %cmp10, %cmp12
  br i1 %or.cond531, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end6, %lor.lhs.false9
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([85 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, double* %call7, i32 %.pre) #4
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([103 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, i32 %2) #4
  call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end15
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %4 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %4, label %if.else306 [
    i32 2, label %if.then25
    i32 0, label %if.then31
    i32 1, label %if.then31
  ]

if.then25:                                        ; preds = %if.end23
  call void @Chv_swapRows(%struct._Chv* %chv, i32 %ii, i32 %jj) #6
  call void @Chv_swapColumns(%struct._Chv* %chv, i32 %ii, i32 %jj) #6
  br label %return

if.then31:                                        ; preds = %if.end23, %if.end23
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #4
  %idxprom = sext i32 %ii to i64
  %5 = load i32** %colind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom32 = sext i32 %jj to i64
  %arrayidx33 = getelementptr inbounds i32* %5, i64 %idxprom32
  %7 = load i32* %arrayidx33, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx, align 4, !tbaa !3
  store i32 %6, i32* %arrayidx33, align 4, !tbaa !3
  %cmp38 = icmp sgt i32 %ii, %jj
  %ii.jj = select i1 %cmp38, i32 %ii, i32 %jj
  %jj.ii = select i1 %cmp38, i32 %jj, i32 %ii
  %8 = load i32* %nD, align 4, !tbaa !3
  %9 = load i32* %nU, align 4, !tbaa !3
  %add = add i32 %8, -1
  %sub = add i32 %add, %9
  %10 = load i32* %type, align 4, !tbaa !3
  switch i32 %10, label %if.end97 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond60.preheader
  ]

for.cond60.preheader:                             ; preds = %if.then31
  %cmp61570 = icmp sgt i32 %jj.ii, 0
  br i1 %cmp61570, label %for.body62.lr.ph, label %if.end97.thread625

if.end97.thread625:                               ; preds = %for.cond60.preheader
  %inc98626 = add i32 %jj.ii, 1
  %add99627 = add nsw i32 %ii.jj, %sub
  br label %for.cond127.preheader

for.body62.lr.ph:                                 ; preds = %for.cond60.preheader
  %11 = add i32 %8, %9
  %12 = add i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = xor i32 %jj, -1
  %15 = xor i32 %ii, -1
  %16 = icmp sgt i32 %14, %15
  %smax613 = select i1 %16, i32 %14, i32 %15
  %17 = icmp sgt i32 %jj, %ii
  %smax614 = select i1 %17, i32 %jj, i32 %ii
  %18 = add i32 %11, %smax614
  %19 = add i32 %11, -2
  %20 = sub i32 -2, %smax613
  %21 = mul i32 %19, %20
  %22 = add i32 %18, %21
  %23 = zext i32 %20 to i33
  %24 = sub i32 -3, %smax613
  %25 = zext i32 %24 to i33
  %26 = mul i33 %23, %25
  %27 = lshr i33 %26, 1
  %28 = trunc i33 %27 to i32
  %29 = add i32 %11, %21
  %30 = add i32 %29, -2
  %31 = sub i32 %30, %smax613
  %32 = xor i32 %smax613, -1
  br label %for.body62

for.cond.preheader:                               ; preds = %if.then31
  %cmp44561 = icmp sgt i32 %jj.ii, 0
  br i1 %cmp44561, label %for.body.lr.ph, label %if.end97.thread

if.end97.thread:                                  ; preds = %for.cond.preheader
  %inc98617 = add i32 %jj.ii, 1
  %add99618 = add nsw i32 %ii.jj, %sub
  br label %for.cond105.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %33 = add i32 %8, %9
  %34 = add i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = xor i32 %jj, -1
  %37 = xor i32 %ii, -1
  %38 = icmp sgt i32 %36, %37
  %smax608 = select i1 %38, i32 %36, i32 %37
  %39 = icmp sgt i32 %jj, %ii
  %smax609 = select i1 %39, i32 %jj, i32 %ii
  %40 = add i32 %33, %smax609
  %41 = add i32 %33, -2
  %42 = sub i32 -2, %smax608
  %43 = mul i32 %41, %42
  %44 = add i32 %40, %43
  %45 = zext i32 %42 to i33
  %46 = sub i32 -3, %smax608
  %47 = zext i32 %46 to i33
  %48 = mul i33 %45, %47
  %49 = lshr i33 %48, 1
  %50 = trunc i33 %49 to i32
  %51 = add i32 %33, %43
  %52 = add i32 %51, -2
  %53 = sub i32 %52, %smax608
  %54 = xor i32 %smax608, -1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv605 = phi i64 [ %35, %for.body.lr.ph ], [ %indvars.iv.next606, %for.body ]
  %ioff.0565 = phi i32 [ %jj.ii, %for.body.lr.ph ], [ %add53, %for.body ]
  %joff.0564 = phi i32 [ %ii.jj, %for.body.lr.ph ], [ %add54, %for.body ]
  %kk.0562 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom45 = sext i32 %ioff.0565 to i64
  %arrayidx46 = getelementptr inbounds double* %call7, i64 %idxprom45
  %55 = load double* %arrayidx46, align 8, !tbaa !4
  %idxprom47 = sext i32 %joff.0564 to i64
  %arrayidx48 = getelementptr inbounds double* %call7, i64 %idxprom47
  %56 = load double* %arrayidx48, align 8, !tbaa !4
  store double %56, double* %arrayidx46, align 8, !tbaa !4
  store double %55, double* %arrayidx48, align 8, !tbaa !4
  %57 = trunc i64 %indvars.iv605 to i32
  %add53 = add nsw i32 %ioff.0565, %57
  %add54 = add nsw i32 %joff.0564, %57
  %inc = add nsw i32 %kk.0562, 1
  %indvars.iv.next606 = add i64 %indvars.iv605, -1
  %exitcond = icmp eq i32 %inc, %54
  br i1 %exitcond, label %for.cond.if.end97thread-pre-split.loopexit_crit_edge, label %for.body

for.body62:                                       ; preds = %for.body62, %for.body62.lr.ph
  %indvars.iv610 = phi i64 [ %13, %for.body62.lr.ph ], [ %indvars.iv.next611, %for.body62 ]
  %ioff.1574 = phi i32 [ %jj.ii, %for.body62.lr.ph ], [ %add90, %for.body62 ]
  %joff.1573 = phi i32 [ %ii.jj, %for.body62.lr.ph ], [ %add91, %for.body62 ]
  %kk.1571 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc94, %for.body62 ]
  %mul = shl nsw i32 %ioff.1574, 1
  %idxprom63 = sext i32 %mul to i64
  %arrayidx64 = getelementptr inbounds double* %call7, i64 %idxprom63
  %58 = load double* %arrayidx64, align 8, !tbaa !4
  %mul65 = shl nsw i32 %joff.1573, 1
  %idxprom66 = sext i32 %mul65 to i64
  %arrayidx67 = getelementptr inbounds double* %call7, i64 %idxprom66
  %59 = load double* %arrayidx67, align 8, !tbaa !4
  store double %59, double* %arrayidx64, align 8, !tbaa !4
  store double %58, double* %arrayidx67, align 8, !tbaa !4
  %add75528 = or i32 %mul, 1
  %idxprom76 = sext i32 %add75528 to i64
  %arrayidx77 = getelementptr inbounds double* %call7, i64 %idxprom76
  %60 = load double* %arrayidx77, align 8, !tbaa !4
  %add79529 = or i32 %mul65, 1
  %idxprom80 = sext i32 %add79529 to i64
  %arrayidx81 = getelementptr inbounds double* %call7, i64 %idxprom80
  %61 = load double* %arrayidx81, align 8, !tbaa !4
  store double %61, double* %arrayidx77, align 8, !tbaa !4
  store double %60, double* %arrayidx81, align 8, !tbaa !4
  %62 = trunc i64 %indvars.iv610 to i32
  %add90 = add nsw i32 %ioff.1574, %62
  %add91 = add nsw i32 %joff.1573, %62
  %inc94 = add nsw i32 %kk.1571, 1
  %indvars.iv.next611 = add i64 %indvars.iv610, -1
  %exitcond615 = icmp eq i32 %inc94, %32
  br i1 %exitcond615, label %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge, label %for.body62

for.cond.if.end97thread-pre-split.loopexit_crit_edge: ; preds = %for.body
  %63 = add i32 %33, %smax608
  %64 = add i32 %44, -1
  %65 = sub i32 %64, %50
  %66 = sub i32 %53, %50
  br label %if.end97

for.cond60.if.end97thread-pre-split.loopexit569_crit_edge: ; preds = %for.body62
  %67 = add i32 %11, %smax613
  %68 = add i32 %22, -1
  %69 = sub i32 %68, %28
  %70 = sub i32 %31, %28
  br label %if.end97

if.end97:                                         ; preds = %for.cond.if.end97thread-pre-split.loopexit_crit_edge, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge, %if.then31
  %stride.2 = phi i32 [ %sub, %if.then31 ], [ %63, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %67, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  %joff.2 = phi i32 [ %ii.jj, %if.then31 ], [ %65, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %69, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  %ioff.2 = phi i32 [ %jj.ii, %if.then31 ], [ %66, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %70, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  %inc98 = add i32 %ioff.2, 1
  %add99 = add nsw i32 %joff.2, %stride.2
  switch i32 %10, label %if.end193 [
    i32 1, label %for.cond105.preheader
    i32 2, label %for.cond127.preheader
  ]

for.cond127.preheader:                            ; preds = %if.end97.thread625, %if.end97
  %add99632 = phi i32 [ %add99627, %if.end97.thread625 ], [ %add99, %if.end97 ]
  %inc98631 = phi i32 [ %inc98626, %if.end97.thread625 ], [ %inc98, %if.end97 ]
  %ioff.2630 = phi i32 [ %jj.ii, %if.end97.thread625 ], [ %ioff.2, %if.end97 ]
  %joff.2629 = phi i32 [ %ii.jj, %if.end97.thread625 ], [ %joff.2, %if.end97 ]
  %stride.2628 = phi i32 [ %sub, %if.end97.thread625 ], [ %stride.2, %if.end97 ]
  %kk.3553 = add nsw i32 %jj.ii, 1
  %cmp128554 = icmp slt i32 %kk.3553, %ii.jj
  %71 = load i32* %symflag, align 4, !tbaa !3
  br i1 %cmp128554, label %for.body129.lr.ph, label %for.end178

for.body129.lr.ph:                                ; preds = %for.cond127.preheader
  %cmp151 = icmp eq i32 %71, 0
  %72 = sext i32 %inc98631 to i64
  %73 = add i32 %stride.2628, -1
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i32 %jj, %ii
  %smax603 = select i1 %75, i32 %jj, i32 %ii
  %76 = xor i32 %jj, -1
  %77 = xor i32 %ii, -1
  %78 = icmp sgt i32 %76, %77
  %smax604 = select i1 %78, i32 %76, i32 %77
  %79 = add i32 %smax603, %smax604
  %80 = add i32 %79, -1
  %81 = add i32 %stride.2628, -2
  %82 = mul i32 %80, %81
  %83 = add i32 %joff.2629, %82
  %84 = shl i32 %stride.2628, 1
  %85 = add i32 %83, %84
  %86 = zext i32 %80 to i33
  %87 = add i32 %79, -2
  %88 = zext i32 %87 to i33
  %89 = mul i33 %86, %88
  %90 = lshr i33 %89, 1
  %91 = trunc i33 %90 to i32
  %92 = add i32 %ioff.2630, %smax603
  %93 = add i32 %92, %smax604
  br label %for.body129

for.cond105.preheader:                            ; preds = %if.end97.thread, %if.end97
  %add99624 = phi i32 [ %add99618, %if.end97.thread ], [ %add99, %if.end97 ]
  %inc98623 = phi i32 [ %inc98617, %if.end97.thread ], [ %inc98, %if.end97 ]
  %ioff.2621 = phi i32 [ %jj.ii, %if.end97.thread ], [ %ioff.2, %if.end97 ]
  %joff.2620 = phi i32 [ %ii.jj, %if.end97.thread ], [ %joff.2, %if.end97 ]
  %stride.2619 = phi i32 [ %sub, %if.end97.thread ], [ %stride.2, %if.end97 ]
  %kk.2546 = add nsw i32 %jj.ii, 1
  %cmp106547 = icmp slt i32 %kk.2546, %ii.jj
  br i1 %cmp106547, label %for.body107.lr.ph, label %if.end193

for.body107.lr.ph:                                ; preds = %for.cond105.preheader
  %94 = sext i32 %inc98623 to i64
  %95 = add i32 %stride.2619, -1
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i32 %jj, %ii
  %smax = select i1 %97, i32 %jj, i32 %ii
  %98 = xor i32 %jj, -1
  %99 = xor i32 %ii, -1
  %100 = icmp sgt i32 %98, %99
  %smax596 = select i1 %100, i32 %98, i32 %99
  %101 = add i32 %smax, %smax596
  %102 = add i32 %101, -1
  %103 = add i32 %stride.2619, -2
  %104 = mul i32 %102, %103
  %105 = add i32 %joff.2620, %104
  %106 = shl i32 %stride.2619, 1
  %107 = add i32 %105, %106
  %108 = zext i32 %102 to i33
  %109 = add i32 %101, -2
  %110 = zext i32 %109 to i33
  %111 = mul i33 %108, %110
  %112 = lshr i33 %111, 1
  %113 = trunc i33 %112 to i32
  %114 = add i32 %ioff.2621, %smax
  %115 = add i32 %114, %smax596
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv593 = phi i64 [ %96, %for.body107.lr.ph ], [ %indvars.iv.next594, %for.body107 ]
  %indvars.iv590 = phi i64 [ %94, %for.body107.lr.ph ], [ %indvars.iv.next591, %for.body107 ]
  %kk.2551 = phi i32 [ %kk.2546, %for.body107.lr.ph ], [ %kk.2, %for.body107 ]
  %joff.3549 = phi i32 [ %add99624, %for.body107.lr.ph ], [ %add117, %for.body107 ]
  %arrayidx109 = getelementptr inbounds double* %call7, i64 %indvars.iv590
  %116 = load double* %arrayidx109, align 8, !tbaa !4
  %idxprom110 = sext i32 %joff.3549 to i64
  %arrayidx111 = getelementptr inbounds double* %call7, i64 %idxprom110
  %117 = load double* %arrayidx111, align 8, !tbaa !4
  store double %117, double* %arrayidx109, align 8, !tbaa !4
  store double %116, double* %arrayidx111, align 8, !tbaa !4
  %118 = trunc i64 %indvars.iv593 to i32
  %add117 = add nsw i32 %joff.3549, %118
  %kk.2 = add nsw i32 %kk.2551, 1
  %cmp106 = icmp slt i32 %kk.2, %ii.jj
  %indvars.iv.next591 = add i64 %indvars.iv590, 1
  %indvars.iv.next594 = add i64 %indvars.iv593, -1
  br i1 %cmp106, label %for.body107, label %for.cond105.if.end193.loopexit_crit_edge

for.body129:                                      ; preds = %for.body129.lr.ph, %if.end172
  %indvars.iv600 = phi i64 [ %74, %for.body129.lr.ph ], [ %indvars.iv.next601, %if.end172 ]
  %indvars.iv597 = phi i64 [ %72, %for.body129.lr.ph ], [ %indvars.iv.next598, %if.end172 ]
  %kk.3558 = phi i32 [ %kk.3553, %for.body129.lr.ph ], [ %kk.3, %if.end172 ]
  %joff.4556 = phi i32 [ %add99632, %for.body129.lr.ph ], [ %add174, %if.end172 ]
  %119 = trunc i64 %indvars.iv597 to i32
  %mul130 = shl nsw i32 %119, 1
  %idxprom131 = sext i32 %mul130 to i64
  %arrayidx132 = getelementptr inbounds double* %call7, i64 %idxprom131
  %120 = load double* %arrayidx132, align 8, !tbaa !4
  %add134526 = or i32 %mul130, 1
  %idxprom135 = sext i32 %add134526 to i64
  %arrayidx136 = getelementptr inbounds double* %call7, i64 %idxprom135
  %121 = load double* %arrayidx136, align 8, !tbaa !4
  %mul137 = shl nsw i32 %joff.4556, 1
  %idxprom138 = sext i32 %mul137 to i64
  %arrayidx139 = getelementptr inbounds double* %call7, i64 %idxprom138
  %122 = load double* %arrayidx139, align 8, !tbaa !4
  %add141527 = or i32 %mul137, 1
  %idxprom142 = sext i32 %add141527 to i64
  %arrayidx143 = getelementptr inbounds double* %call7, i64 %idxprom142
  %123 = load double* %arrayidx143, align 8, !tbaa !4
  store double %122, double* %arrayidx132, align 8, !tbaa !4
  store double %120, double* %arrayidx139, align 8, !tbaa !4
  br i1 %cmp151, label %if.then152, label %if.else161

if.then152:                                       ; preds = %for.body129
  store double %123, double* %arrayidx136, align 8, !tbaa !4
  br label %if.end172

if.else161:                                       ; preds = %for.body129
  %sub162 = fsub double -0.000000e+00, %123
  store double %sub162, double* %arrayidx136, align 8, !tbaa !4
  %sub167 = fsub double -0.000000e+00, %121
  br label %if.end172

if.end172:                                        ; preds = %if.else161, %if.then152
  %storemerge = phi double [ %sub167, %if.else161 ], [ %121, %if.then152 ]
  store double %storemerge, double* %arrayidx143, align 8, !tbaa !4
  %124 = trunc i64 %indvars.iv600 to i32
  %add174 = add nsw i32 %joff.4556, %124
  %kk.3 = add nsw i32 %kk.3558, 1
  %cmp128 = icmp slt i32 %kk.3, %ii.jj
  %indvars.iv.next598 = add i64 %indvars.iv597, 1
  %indvars.iv.next601 = add i64 %indvars.iv600, -1
  br i1 %cmp128, label %for.body129, label %for.cond127.for.end178_crit_edge

for.cond127.for.end178_crit_edge:                 ; preds = %if.end172
  %125 = add i32 %85, -1
  %126 = sub i32 %125, %91
  %127 = add i32 %93, 1
  br label %for.end178

for.end178:                                       ; preds = %for.cond127.preheader, %for.cond127.for.end178_crit_edge
  %ioff.4.lcssa = phi i32 [ %127, %for.cond127.for.end178_crit_edge ], [ %inc98631, %for.cond127.preheader ]
  %joff.4.lcssa = phi i32 [ %126, %for.cond127.for.end178_crit_edge ], [ %add99632, %for.cond127.preheader ]
  %cmp180 = icmp eq i32 %71, 1
  br i1 %cmp180, label %if.then181, label %if.end193

if.then181:                                       ; preds = %for.end178
  %mul182 = shl nsw i32 %ioff.4.lcssa, 1
  %add183525 = or i32 %mul182, 1
  %idxprom184 = sext i32 %add183525 to i64
  %arrayidx185 = getelementptr inbounds double* %call7, i64 %idxprom184
  %128 = load double* %arrayidx185, align 8, !tbaa !4
  %sub186 = fsub double -0.000000e+00, %128
  store double %sub186, double* %arrayidx185, align 8, !tbaa !4
  br label %if.end193

for.cond105.if.end193.loopexit_crit_edge:         ; preds = %for.body107
  %129 = add i32 %107, -1
  %130 = sub i32 %129, %113
  %131 = add i32 %115, 1
  br label %if.end193

if.end193:                                        ; preds = %for.cond105.preheader, %for.cond105.if.end193.loopexit_crit_edge, %if.end97, %if.then181, %for.end178
  %ioff.2622 = phi i32 [ %ioff.2630, %if.then181 ], [ %ioff.2630, %for.end178 ], [ %ioff.2, %if.end97 ], [ %ioff.2621, %for.cond105.if.end193.loopexit_crit_edge ], [ %ioff.2621, %for.cond105.preheader ]
  %joff.5 = phi i32 [ %joff.4.lcssa, %if.then181 ], [ %joff.4.lcssa, %for.end178 ], [ %add99, %if.end97 ], [ %130, %for.cond105.if.end193.loopexit_crit_edge ], [ %add99624, %for.cond105.preheader ]
  %ioff.5 = phi i32 [ %ioff.4.lcssa, %if.then181 ], [ %ioff.4.lcssa, %for.end178 ], [ %inc98, %if.end97 ], [ %131, %for.cond105.if.end193.loopexit_crit_edge ], [ %inc98623, %for.cond105.preheader ]
  switch i32 %10, label %return [
    i32 1, label %if.end238.thread
    i32 2, label %if.end238.thread633
  ]

if.end238.thread:                                 ; preds = %if.end193
  %idxprom197 = sext i32 %ioff.2622 to i64
  %arrayidx198 = getelementptr inbounds double* %call7, i64 %idxprom197
  %132 = load double* %arrayidx198, align 8, !tbaa !4
  %idxprom199 = sext i32 %joff.5 to i64
  %arrayidx200 = getelementptr inbounds double* %call7, i64 %idxprom199
  %133 = load double* %arrayidx200, align 8, !tbaa !4
  store double %133, double* %arrayidx198, align 8, !tbaa !4
  store double %132, double* %arrayidx200, align 8, !tbaa !4
  %kk.4533 = add nsw i32 %ii.jj, 1
  %add246534 = add nsw i32 %9, %8
  %cmp247535 = icmp slt i32 %kk.4533, %add246534
  br i1 %cmp247535, label %for.body248.lr.ph, label %return

if.end238.thread633:                              ; preds = %if.end193
  %mul209 = shl nsw i32 %ioff.2622, 1
  %idxprom210 = sext i32 %mul209 to i64
  %arrayidx211 = getelementptr inbounds double* %call7, i64 %idxprom210
  %134 = load double* %arrayidx211, align 8, !tbaa !4
  %mul212 = shl nsw i32 %joff.5, 1
  %idxprom213 = sext i32 %mul212 to i64
  %arrayidx214 = getelementptr inbounds double* %call7, i64 %idxprom213
  %135 = load double* %arrayidx214, align 8, !tbaa !4
  store double %135, double* %arrayidx211, align 8, !tbaa !4
  store double %134, double* %arrayidx214, align 8, !tbaa !4
  %add222523 = or i32 %mul209, 1
  %idxprom223 = sext i32 %add222523 to i64
  %arrayidx224 = getelementptr inbounds double* %call7, i64 %idxprom223
  %136 = load double* %arrayidx224, align 8, !tbaa !4
  %add226524 = or i32 %mul212, 1
  %idxprom227 = sext i32 %add226524 to i64
  %arrayidx228 = getelementptr inbounds double* %call7, i64 %idxprom227
  %137 = load double* %arrayidx228, align 8, !tbaa !4
  store double %137, double* %arrayidx224, align 8, !tbaa !4
  store double %136, double* %arrayidx228, align 8, !tbaa !4
  %kk.5540 = add nsw i32 %ii.jj, 1
  %add268541 = add nsw i32 %9, %8
  %cmp269542 = icmp slt i32 %kk.5540, %add268541
  br i1 %cmp269542, label %for.body270.lr.ph, label %return

for.body270.lr.ph:                                ; preds = %if.end238.thread633
  %138 = add i32 %ioff.5, 1
  %139 = sext i32 %138 to i64
  %140 = add i32 %joff.5, 1
  %141 = sext i32 %140 to i64
  br label %for.body270

for.body248.lr.ph:                                ; preds = %if.end238.thread
  %142 = add i32 %ioff.5, 1
  %143 = sext i32 %142 to i64
  %144 = add i32 %joff.5, 1
  %145 = sext i32 %144 to i64
  br label %for.body248

for.body248:                                      ; preds = %for.body248.lr.ph, %for.body248
  %indvars.iv579 = phi i64 [ %145, %for.body248.lr.ph ], [ %indvars.iv.next580, %for.body248 ]
  %indvars.iv = phi i64 [ %143, %for.body248.lr.ph ], [ %indvars.iv.next, %for.body248 ]
  %kk.4538 = phi i32 [ %kk.4533, %for.body248.lr.ph ], [ %kk.4, %for.body248 ]
  %arrayidx250 = getelementptr inbounds double* %call7, i64 %indvars.iv
  %146 = load double* %arrayidx250, align 8, !tbaa !4
  %arrayidx252 = getelementptr inbounds double* %call7, i64 %indvars.iv579
  %147 = load double* %arrayidx252, align 8, !tbaa !4
  store double %147, double* %arrayidx250, align 8, !tbaa !4
  store double %146, double* %arrayidx252, align 8, !tbaa !4
  %kk.4 = add nsw i32 %kk.4538, 1
  %cmp247 = icmp slt i32 %kk.4, %add246534
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next580 = add i64 %indvars.iv579, 1
  br i1 %cmp247, label %for.body248, label %return

for.body270:                                      ; preds = %for.body270.lr.ph, %for.body270
  %indvars.iv587 = phi i64 [ %141, %for.body270.lr.ph ], [ %indvars.iv.next588, %for.body270 ]
  %indvars.iv584 = phi i64 [ %139, %for.body270.lr.ph ], [ %indvars.iv.next585, %for.body270 ]
  %kk.5545 = phi i32 [ %kk.5540, %for.body270.lr.ph ], [ %kk.5, %for.body270 ]
  %148 = trunc i64 %indvars.iv584 to i32
  %mul271 = shl nsw i32 %148, 1
  %idxprom272 = sext i32 %mul271 to i64
  %arrayidx273 = getelementptr inbounds double* %call7, i64 %idxprom272
  %149 = load double* %arrayidx273, align 8, !tbaa !4
  %150 = trunc i64 %indvars.iv587 to i32
  %mul274 = shl nsw i32 %150, 1
  %idxprom275 = sext i32 %mul274 to i64
  %arrayidx276 = getelementptr inbounds double* %call7, i64 %idxprom275
  %151 = load double* %arrayidx276, align 8, !tbaa !4
  store double %151, double* %arrayidx273, align 8, !tbaa !4
  store double %149, double* %arrayidx276, align 8, !tbaa !4
  %add284521 = or i32 %mul271, 1
  %idxprom285 = sext i32 %add284521 to i64
  %arrayidx286 = getelementptr inbounds double* %call7, i64 %idxprom285
  %152 = load double* %arrayidx286, align 8, !tbaa !4
  %add288522 = or i32 %mul274, 1
  %idxprom289 = sext i32 %add288522 to i64
  %arrayidx290 = getelementptr inbounds double* %call7, i64 %idxprom289
  %153 = load double* %arrayidx290, align 8, !tbaa !4
  store double %153, double* %arrayidx286, align 8, !tbaa !4
  store double %152, double* %arrayidx290, align 8, !tbaa !4
  %kk.5 = add nsw i32 %kk.5545, 1
  %cmp269 = icmp slt i32 %kk.5, %add268541
  %indvars.iv.next585 = add i64 %indvars.iv584, 1
  %indvars.iv.next588 = add i64 %indvars.iv587, 1
  br i1 %cmp269, label %for.body270, label %return

if.else306:                                       ; preds = %if.end23
  %154 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, i32 %4) #4
  call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %if.end193, %if.end238.thread633, %for.body270, %if.end238.thread, %for.body248, %if.then25, %if.end
  ret void
}

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_swapColumns(%struct._Chv* %chv, i32 %icol, i32 %jcol) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %icol, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond386 = or i1 %or.cond, %cmp3
  br i1 %or.cond386, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %icol, %jcol
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #4
  %call7 = call double* @Chv_entries(%struct._Chv* %chv) #4
  %cmp8 = icmp eq double* %call7, null
  %.pre = load i32* %nD, align 4, !tbaa !3
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %cmp10 = icmp sgt i32 %.pre, %icol
  %cmp12 = icmp sgt i32 %.pre, %jcol
  %or.cond387 = and i1 %cmp10, %cmp12
  br i1 %or.cond387, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end6, %lor.lhs.false9
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([78 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, double* %call7, i32 %.pre) #4
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([96 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, i32 %2) #4
  call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end15
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %4 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %4, label %if.else214 [
    i32 0, label %if.then28
    i32 1, label %if.then28
    i32 2, label %if.then31
  ]

if.then28:                                        ; preds = %if.end23, %if.end23
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %icol, i32 %jcol) #6
  br label %return

if.then31:                                        ; preds = %if.end23
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #4
  %idxprom = sext i32 %icol to i64
  %5 = load i32** %colind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom32 = sext i32 %jcol to i64
  %arrayidx33 = getelementptr inbounds i32* %5, i64 %idxprom32
  %7 = load i32* %arrayidx33, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx, align 4, !tbaa !3
  store i32 %6, i32* %arrayidx33, align 4, !tbaa !3
  %cmp38 = icmp sgt i32 %icol, %jcol
  %icol.jcol = select i1 %cmp38, i32 %icol, i32 %jcol
  %jcol.icol = select i1 %cmp38, i32 %jcol, i32 %icol
  %8 = load i32* %nD, align 4, !tbaa !3
  %9 = load i32* %nL, align 4, !tbaa !3
  %add = add i32 %8, -1
  %sub = add i32 %add, %9
  %add41 = add nsw i32 %sub, %jcol.icol
  %add44 = add nsw i32 %sub, %icol.jcol
  %mul = shl i32 %8, 1
  %10 = load i32* %nU, align 4, !tbaa !3
  %add45 = add i32 %9, -3
  %add46 = add i32 %add45, %mul
  %sub47 = add i32 %add46, %10
  %11 = load i32* %type, align 4, !tbaa !3
  switch i32 %11, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond101.preheader
  ]

for.cond101.preheader:                            ; preds = %if.then31
  %cmp102420 = icmp sgt i32 %jcol.icol, 0
  br i1 %cmp102420, label %for.body103.lr.ph, label %for.cond138.preheader

for.body103.lr.ph:                                ; preds = %for.cond101.preheader
  %12 = add i32 %9, %10
  %13 = shl i32 %8, 1
  %14 = add i32 %12, %13
  %15 = add i32 %14, -3
  %16 = sext i32 %15 to i64
  %17 = xor i32 %jcol, -1
  %18 = xor i32 %icol, -1
  %19 = icmp sgt i32 %17, %18
  %smax453 = select i1 %19, i32 %17, i32 %18
  %20 = shl i32 %smax453, 1
  %21 = add i32 %14, %20
  %22 = icmp sgt i32 %jcol, %icol
  %smax454 = select i1 %22, i32 %jcol, i32 %icol
  %23 = add i32 %10, %smax454
  %24 = sub i32 -2, %smax453
  %25 = add i32 %14, -5
  %26 = mul i32 %24, %25
  %27 = add i32 %23, %26
  %28 = mul i32 %8, 3
  %29 = add i32 %27, %28
  %30 = shl i32 %9, 1
  %31 = add i32 %29, %30
  %32 = sub i32 -3, %smax453
  %33 = mul i32 %24, %32
  %34 = and i32 %33, -2
  %35 = add i32 %10, %26
  %36 = add i32 %35, %28
  %37 = add i32 %36, %30
  %38 = add i32 %37, -5
  %39 = sub i32 %38, %smax453
  %40 = xor i32 %smax453, -1
  br label %for.body103

for.cond.preheader:                               ; preds = %if.then31
  %cmp51399 = icmp sgt i32 %jcol.icol, 0
  br i1 %cmp51399, label %for.body.lr.ph, label %for.cond63.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %41 = add i32 %9, %10
  %42 = shl i32 %8, 1
  %43 = add i32 %41, %42
  %44 = add i32 %43, -3
  %45 = sext i32 %44 to i64
  %46 = xor i32 %jcol, -1
  %47 = xor i32 %icol, -1
  %48 = icmp sgt i32 %46, %47
  %smax438 = select i1 %48, i32 %46, i32 %47
  %49 = shl i32 %smax438, 1
  %50 = add i32 %43, %49
  %51 = icmp sgt i32 %jcol, %icol
  %smax439 = select i1 %51, i32 %jcol, i32 %icol
  %52 = add i32 %10, %smax439
  %53 = sub i32 -2, %smax438
  %54 = add i32 %43, -5
  %55 = mul i32 %53, %54
  %56 = add i32 %52, %55
  %57 = mul i32 %8, 3
  %58 = add i32 %56, %57
  %59 = shl i32 %9, 1
  %60 = add i32 %58, %59
  %61 = sub i32 -3, %smax438
  %62 = mul i32 %53, %61
  %63 = and i32 %62, -2
  %64 = add i32 %10, %55
  %65 = add i32 %64, %57
  %66 = add i32 %65, %59
  %67 = add i32 %66, -5
  %68 = sub i32 %67, %smax438
  %69 = xor i32 %smax438, -1
  br label %for.body

for.cond.for.cond63.preheader_crit_edge:          ; preds = %for.body
  %70 = add i32 %50, -1
  %71 = add i32 %60, -4
  %72 = sub i32 %71, %63
  %73 = sub i32 %68, %63
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond.for.cond63.preheader_crit_edge, %for.cond.preheader
  %stride.0.lcssa = phi i32 [ %70, %for.cond.for.cond63.preheader_crit_edge ], [ %sub47, %for.cond.preheader ]
  %joff.0.lcssa = phi i32 [ %72, %for.cond.for.cond63.preheader_crit_edge ], [ %add44, %for.cond.preheader ]
  %ioff.0.lcssa = phi i32 [ %73, %for.cond.for.cond63.preheader_crit_edge ], [ %add41, %for.cond.preheader ]
  %cmp64393 = icmp slt i32 %jcol.icol, %icol.jcol
  br i1 %cmp64393, label %for.body65.lr.ph, label %for.cond80.preheader

for.body65.lr.ph:                                 ; preds = %for.cond63.preheader
  %74 = sext i32 %stride.0.lcssa to i64
  %75 = sext i32 %ioff.0.lcssa to i64
  %76 = icmp sgt i32 %jcol, %icol
  %smax = select i1 %76, i32 %jcol, i32 %icol
  %77 = xor i32 %jcol, -1
  %78 = xor i32 %icol, -1
  %79 = icmp sgt i32 %77, %78
  %smax434 = select i1 %79, i32 %77, i32 %78
  %80 = add i32 %smax, %smax434
  %81 = add i32 %stride.0.lcssa, -2
  %82 = mul i32 %80, %81
  %83 = add i32 %80, -1
  %84 = mul i32 %80, %83
  %85 = and i32 %84, -2
  %86 = add i32 %ioff.0.lcssa, -1
  br label %for.body65

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv435 = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next436, %for.body ]
  %joff.0402 = phi i32 [ %add44, %for.body.lr.ph ], [ %add61, %for.body ]
  %ioff.0401 = phi i32 [ %add41, %for.body.lr.ph ], [ %add60, %for.body ]
  %ii.0400 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom52 = sext i32 %ioff.0401 to i64
  %arrayidx53 = getelementptr inbounds double* %call7, i64 %idxprom52
  %87 = load double* %arrayidx53, align 8, !tbaa !4
  %idxprom54 = sext i32 %joff.0402 to i64
  %arrayidx55 = getelementptr inbounds double* %call7, i64 %idxprom54
  %88 = load double* %arrayidx55, align 8, !tbaa !4
  store double %88, double* %arrayidx53, align 8, !tbaa !4
  store double %87, double* %arrayidx55, align 8, !tbaa !4
  %89 = trunc i64 %indvars.iv435 to i32
  %add60 = add nsw i32 %89, %ioff.0401
  %add61 = add nsw i32 %89, %joff.0402
  %inc = add nsw i32 %ii.0400, 1
  %indvars.iv.next436 = add i64 %indvars.iv435, -2
  %exitcond = icmp eq i32 %inc, %69
  br i1 %exitcond, label %for.cond.for.cond63.preheader_crit_edge, label %for.body

for.cond63.for.cond80.preheader_crit_edge:        ; preds = %for.body65
  %90 = add i32 %joff.0.lcssa, %stride.0.lcssa
  %91 = add i32 %90, %82
  %92 = sub i32 %91, %85
  %93 = sub i32 %86, %80
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.cond63.for.cond80.preheader_crit_edge, %for.cond63.preheader
  %joff.1.lcssa = phi i32 [ %92, %for.cond63.for.cond80.preheader_crit_edge ], [ %joff.0.lcssa, %for.cond63.preheader ]
  %ioff.1.lcssa = phi i32 [ %93, %for.cond63.for.cond80.preheader_crit_edge ], [ %ioff.0.lcssa, %for.cond63.preheader ]
  %add81388 = add nsw i32 %9, %8
  %cmp82389 = icmp slt i32 %icol.jcol, %add81388
  br i1 %cmp82389, label %for.body83.lr.ph, label %return

for.body83.lr.ph:                                 ; preds = %for.cond80.preheader
  %94 = sext i32 %joff.1.lcssa to i64
  %95 = sext i32 %ioff.1.lcssa to i64
  br label %for.body83

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv432 = phi i64 [ %75, %for.body65.lr.ph ], [ %indvars.iv.next433, %for.body65 ]
  %indvars.iv430 = phi i64 [ %74, %for.body65.lr.ph ], [ %indvars.iv.next431, %for.body65 ]
  %joff.1396 = phi i32 [ %joff.0.lcssa, %for.body65.lr.ph ], [ %add75, %for.body65 ]
  %ii.1394 = phi i32 [ %jcol.icol, %for.body65.lr.ph ], [ %inc78, %for.body65 ]
  %arrayidx67 = getelementptr inbounds double* %call7, i64 %indvars.iv432
  %96 = load double* %arrayidx67, align 8, !tbaa !4
  %idxprom68 = sext i32 %joff.1396 to i64
  %arrayidx69 = getelementptr inbounds double* %call7, i64 %idxprom68
  %97 = load double* %arrayidx69, align 8, !tbaa !4
  store double %97, double* %arrayidx67, align 8, !tbaa !4
  store double %96, double* %arrayidx69, align 8, !tbaa !4
  %indvars.iv.next433 = add i64 %indvars.iv432, -1
  %98 = trunc i64 %indvars.iv430 to i32
  %add75 = add nsw i32 %98, %joff.1396
  %indvars.iv.next431 = add i64 %indvars.iv430, -2
  %inc78 = add nsw i32 %ii.1394, 1
  %cmp64 = icmp slt i32 %inc78, %icol.jcol
  br i1 %cmp64, label %for.body65, label %for.cond63.for.cond80.preheader_crit_edge

for.body83:                                       ; preds = %for.body83.lr.ph, %for.body83
  %indvars.iv428 = phi i64 [ %95, %for.body83.lr.ph ], [ %indvars.iv.next429, %for.body83 ]
  %indvars.iv = phi i64 [ %94, %for.body83.lr.ph ], [ %indvars.iv.next, %for.body83 ]
  %ii.2390 = phi i32 [ %icol.jcol, %for.body83.lr.ph ], [ %inc95, %for.body83 ]
  %arrayidx85 = getelementptr inbounds double* %call7, i64 %indvars.iv428
  %99 = load double* %arrayidx85, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds double* %call7, i64 %indvars.iv
  %100 = load double* %arrayidx87, align 8, !tbaa !4
  store double %100, double* %arrayidx85, align 8, !tbaa !4
  store double %99, double* %arrayidx87, align 8, !tbaa !4
  %indvars.iv.next429 = add i64 %indvars.iv428, -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %inc95 = add nsw i32 %ii.2390, 1
  %cmp82 = icmp slt i32 %inc95, %add81388
  br i1 %cmp82, label %for.body83, label %return

for.cond101.for.cond138.preheader_crit_edge:      ; preds = %for.body103
  %101 = add i32 %21, -1
  %102 = add i32 %31, -4
  %103 = sub i32 %102, %34
  %104 = sub i32 %39, %34
  br label %for.cond138.preheader

for.cond138.preheader:                            ; preds = %for.cond101.for.cond138.preheader_crit_edge, %for.cond101.preheader
  %stride.2.lcssa = phi i32 [ %101, %for.cond101.for.cond138.preheader_crit_edge ], [ %sub47, %for.cond101.preheader ]
  %joff.3.lcssa = phi i32 [ %103, %for.cond101.for.cond138.preheader_crit_edge ], [ %add44, %for.cond101.preheader ]
  %ioff.3.lcssa = phi i32 [ %104, %for.cond101.for.cond138.preheader_crit_edge ], [ %add41, %for.cond101.preheader ]
  %cmp139413 = icmp slt i32 %jcol.icol, %icol.jcol
  br i1 %cmp139413, label %for.body140.lr.ph, label %for.cond175.preheader

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %105 = sext i32 %stride.2.lcssa to i64
  %106 = sext i32 %ioff.3.lcssa to i64
  %107 = icmp sgt i32 %jcol, %icol
  %smax448 = select i1 %107, i32 %jcol, i32 %icol
  %108 = xor i32 %jcol, -1
  %109 = xor i32 %icol, -1
  %110 = icmp sgt i32 %108, %109
  %smax449 = select i1 %110, i32 %108, i32 %109
  %111 = add i32 %smax448, %smax449
  %112 = add i32 %stride.2.lcssa, -2
  %113 = mul i32 %111, %112
  %114 = add i32 %111, -1
  %115 = mul i32 %111, %114
  %116 = and i32 %115, -2
  %117 = add i32 %ioff.3.lcssa, -1
  br label %for.body140

for.body103:                                      ; preds = %for.body103, %for.body103.lr.ph
  %indvars.iv450 = phi i64 [ %16, %for.body103.lr.ph ], [ %indvars.iv.next451, %for.body103 ]
  %joff.3423 = phi i32 [ %add44, %for.body103.lr.ph ], [ %add133, %for.body103 ]
  %ioff.3422 = phi i32 [ %add41, %for.body103.lr.ph ], [ %add132, %for.body103 ]
  %ii.3421 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc136, %for.body103 ]
  %mul104 = shl nsw i32 %ioff.3422, 1
  %idxprom105 = sext i32 %mul104 to i64
  %arrayidx106 = getelementptr inbounds double* %call7, i64 %idxprom105
  %118 = load double* %arrayidx106, align 8, !tbaa !4
  %mul107 = shl nsw i32 %joff.3423, 1
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds double* %call7, i64 %idxprom108
  %119 = load double* %arrayidx109, align 8, !tbaa !4
  store double %119, double* %arrayidx106, align 8, !tbaa !4
  store double %118, double* %arrayidx109, align 8, !tbaa !4
  %add117384 = or i32 %mul104, 1
  %idxprom118 = sext i32 %add117384 to i64
  %arrayidx119 = getelementptr inbounds double* %call7, i64 %idxprom118
  %120 = load double* %arrayidx119, align 8, !tbaa !4
  %add121385 = or i32 %mul107, 1
  %idxprom122 = sext i32 %add121385 to i64
  %arrayidx123 = getelementptr inbounds double* %call7, i64 %idxprom122
  %121 = load double* %arrayidx123, align 8, !tbaa !4
  store double %121, double* %arrayidx119, align 8, !tbaa !4
  store double %120, double* %arrayidx123, align 8, !tbaa !4
  %122 = trunc i64 %indvars.iv450 to i32
  %add132 = add nsw i32 %122, %ioff.3422
  %add133 = add nsw i32 %122, %joff.3423
  %inc136 = add nsw i32 %ii.3421, 1
  %indvars.iv.next451 = add i64 %indvars.iv450, -2
  %exitcond455 = icmp eq i32 %inc136, %40
  br i1 %exitcond455, label %for.cond101.for.cond138.preheader_crit_edge, label %for.body103

for.cond138.for.cond175.preheader_crit_edge:      ; preds = %for.body140
  %123 = add i32 %joff.3.lcssa, %stride.2.lcssa
  %124 = add i32 %123, %113
  %125 = sub i32 %124, %116
  %126 = sub i32 %117, %111
  br label %for.cond175.preheader

for.cond175.preheader:                            ; preds = %for.cond138.for.cond175.preheader_crit_edge, %for.cond138.preheader
  %joff.4.lcssa = phi i32 [ %125, %for.cond138.for.cond175.preheader_crit_edge ], [ %joff.3.lcssa, %for.cond138.preheader ]
  %ioff.4.lcssa = phi i32 [ %126, %for.cond138.for.cond175.preheader_crit_edge ], [ %ioff.3.lcssa, %for.cond138.preheader ]
  %add176408 = add nsw i32 %9, %8
  %cmp177409 = icmp slt i32 %icol.jcol, %add176408
  br i1 %cmp177409, label %for.body178.lr.ph, label %return

for.body178.lr.ph:                                ; preds = %for.cond175.preheader
  %127 = sext i32 %joff.4.lcssa to i64
  %128 = sext i32 %ioff.4.lcssa to i64
  br label %for.body178

for.body140:                                      ; preds = %for.body140.lr.ph, %for.body140
  %indvars.iv446 = phi i64 [ %106, %for.body140.lr.ph ], [ %indvars.iv.next447, %for.body140 ]
  %indvars.iv444 = phi i64 [ %105, %for.body140.lr.ph ], [ %indvars.iv.next445, %for.body140 ]
  %joff.4416 = phi i32 [ %joff.3.lcssa, %for.body140.lr.ph ], [ %add170, %for.body140 ]
  %ii.4414 = phi i32 [ %jcol.icol, %for.body140.lr.ph ], [ %inc173, %for.body140 ]
  %129 = trunc i64 %indvars.iv446 to i32
  %mul141 = shl nsw i32 %129, 1
  %idxprom142 = sext i32 %mul141 to i64
  %arrayidx143 = getelementptr inbounds double* %call7, i64 %idxprom142
  %130 = load double* %arrayidx143, align 8, !tbaa !4
  %mul144 = shl nsw i32 %joff.4416, 1
  %idxprom145 = sext i32 %mul144 to i64
  %arrayidx146 = getelementptr inbounds double* %call7, i64 %idxprom145
  %131 = load double* %arrayidx146, align 8, !tbaa !4
  store double %131, double* %arrayidx143, align 8, !tbaa !4
  store double %130, double* %arrayidx146, align 8, !tbaa !4
  %add154382 = or i32 %mul141, 1
  %idxprom155 = sext i32 %add154382 to i64
  %arrayidx156 = getelementptr inbounds double* %call7, i64 %idxprom155
  %132 = load double* %arrayidx156, align 8, !tbaa !4
  %add158383 = or i32 %mul144, 1
  %idxprom159 = sext i32 %add158383 to i64
  %arrayidx160 = getelementptr inbounds double* %call7, i64 %idxprom159
  %133 = load double* %arrayidx160, align 8, !tbaa !4
  store double %133, double* %arrayidx156, align 8, !tbaa !4
  store double %132, double* %arrayidx160, align 8, !tbaa !4
  %indvars.iv.next447 = add i64 %indvars.iv446, -1
  %134 = trunc i64 %indvars.iv444 to i32
  %add170 = add nsw i32 %134, %joff.4416
  %indvars.iv.next445 = add i64 %indvars.iv444, -2
  %inc173 = add nsw i32 %ii.4414, 1
  %cmp139 = icmp slt i32 %inc173, %icol.jcol
  br i1 %cmp139, label %for.body140, label %for.cond138.for.cond175.preheader_crit_edge

for.body178:                                      ; preds = %for.body178.lr.ph, %for.body178
  %indvars.iv442 = phi i64 [ %128, %for.body178.lr.ph ], [ %indvars.iv.next443, %for.body178 ]
  %indvars.iv440 = phi i64 [ %127, %for.body178.lr.ph ], [ %indvars.iv.next441, %for.body178 ]
  %ii.5410 = phi i32 [ %icol.jcol, %for.body178.lr.ph ], [ %inc210, %for.body178 ]
  %135 = trunc i64 %indvars.iv442 to i32
  %mul179 = shl nsw i32 %135, 1
  %idxprom180 = sext i32 %mul179 to i64
  %arrayidx181 = getelementptr inbounds double* %call7, i64 %idxprom180
  %136 = load double* %arrayidx181, align 8, !tbaa !4
  %137 = trunc i64 %indvars.iv440 to i32
  %mul182 = shl nsw i32 %137, 1
  %idxprom183 = sext i32 %mul182 to i64
  %arrayidx184 = getelementptr inbounds double* %call7, i64 %idxprom183
  %138 = load double* %arrayidx184, align 8, !tbaa !4
  store double %138, double* %arrayidx181, align 8, !tbaa !4
  store double %136, double* %arrayidx184, align 8, !tbaa !4
  %add192380 = or i32 %mul179, 1
  %idxprom193 = sext i32 %add192380 to i64
  %arrayidx194 = getelementptr inbounds double* %call7, i64 %idxprom193
  %139 = load double* %arrayidx194, align 8, !tbaa !4
  %add196381 = or i32 %mul182, 1
  %idxprom197 = sext i32 %add196381 to i64
  %arrayidx198 = getelementptr inbounds double* %call7, i64 %idxprom197
  %140 = load double* %arrayidx198, align 8, !tbaa !4
  store double %140, double* %arrayidx194, align 8, !tbaa !4
  store double %139, double* %arrayidx198, align 8, !tbaa !4
  %indvars.iv.next443 = add i64 %indvars.iv442, -1
  %indvars.iv.next441 = add i64 %indvars.iv440, -1
  %inc210 = add nsw i32 %ii.5410, 1
  %cmp177 = icmp slt i32 %inc210, %add176408
  br i1 %cmp177, label %for.body178, label %return

if.else214:                                       ; preds = %if.end23
  %141 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, i32 %4) #4
  call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %for.cond175.preheader, %for.body178, %for.cond80.preheader, %for.body83, %if.then31, %if.then28, %if.end
  ret void
}

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

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
