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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !39), !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !40), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %jrow}, i64 0, metadata !41), !dbg !105
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !48), !dbg !106
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !49), !dbg !106
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !50), !dbg !106
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !51), !dbg !106
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !53), !dbg !107
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !108
  %cmp1 = icmp slt i32 %irow, 0, !dbg !108
  %or.cond = or i1 %cmp, %cmp1, !dbg !108
  %cmp3 = icmp slt i32 %jrow, 0, !dbg !108
  %or.cond391 = or i1 %or.cond, %cmp3, !dbg !108
  br i1 %or.cond391, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !109, !tbaa !111
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow) #5, !dbg !109
  call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %irow, %jrow, !dbg !115
  br i1 %cmp4, label %return, label %if.end6, !dbg !115

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !116
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !117
  %1 = load i32* %nD, align 4, !dbg !117, !tbaa !118
  %cmp7 = icmp sgt i32 %1, %irow, !dbg !117
  %cmp9 = icmp sgt i32 %1, %jrow, !dbg !117
  %or.cond392 = and i1 %cmp7, %cmp9, !dbg !117
  br i1 %or.cond392, label %if.end12, label %if.then10, !dbg !117

if.then10:                                        ; preds = %if.end6
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !119, !tbaa !111
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !119
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %irow, i32 %1) #5, !dbg !119
  call void @exit(i32 -1) #6, !dbg !121
  unreachable, !dbg !121

if.end12:                                         ; preds = %if.end6
  %call13 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !122
  call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !43), !dbg !122
  %cmp14 = icmp eq double* %call13, null, !dbg !123
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !123

if.then15:                                        ; preds = %if.end12
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !124, !tbaa !111
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !124
  %4 = load i32* %nD, align 4, !dbg !124, !tbaa !118
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, double* null, i32 %4) #5, !dbg !124
  call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

if.end17:                                         ; preds = %if.end12
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !127
  %5 = load i32* %type, align 4, !dbg !127, !tbaa !118
  %.off = add i32 %5, -1, !dbg !127
  %switch = icmp ult i32 %.off, 2, !dbg !127
  br i1 %switch, label %if.end25, label %if.then22, !dbg !127

if.then22:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !111
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([93 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, i32 %5) #5, !dbg !128
  call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

if.end25:                                         ; preds = %if.end17
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !131
  %7 = load i32* %symflag, align 4, !dbg !131, !tbaa !118
  switch i32 %7, label %if.else216 [
    i32 0, label %if.then30
    i32 1, label %if.then30
    i32 2, label %if.then33
  ], !dbg !131

if.then30:                                        ; preds = %if.end25, %if.end25
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %irow, i32 %jrow) #7, !dbg !132
  br label %return, !dbg !134

if.then33:                                        ; preds = %if.end25
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #5, !dbg !135
  %idxprom = sext i32 %irow to i64, !dbg !137
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !53), !dbg !137
  %8 = load i32** %rowind, align 8, !dbg !137, !tbaa !111
  %arrayidx = getelementptr inbounds i32* %8, i64 %idxprom, !dbg !137
  %9 = load i32* %arrayidx, align 4, !dbg !137, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !46), !dbg !137
  %idxprom34 = sext i32 %jrow to i64, !dbg !138
  %arrayidx35 = getelementptr inbounds i32* %8, i64 %idxprom34, !dbg !138
  %10 = load i32* %arrayidx35, align 4, !dbg !138, !tbaa !118
  store i32 %10, i32* %arrayidx, align 4, !dbg !138, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !53), !dbg !139
  store i32 %9, i32* %arrayidx35, align 4, !dbg !139, !tbaa !118
  %cmp40 = icmp sgt i32 %irow, %jrow, !dbg !140
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !46), !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %jrow}, i64 0, metadata !40), !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !41), !dbg !144
  %irow.jrow = select i1 %cmp40, i32 %irow, i32 %jrow, !dbg !140
  %jrow.irow = select i1 %cmp40, i32 %jrow, i32 %irow, !dbg !140
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !145
  %11 = load i32* %nD, align 4, !dbg !145, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !49), !dbg !145
  %12 = load i32* %nL, align 4, !dbg !145, !tbaa !118
  %add = add i32 %11, -1, !dbg !145
  %sub = add i32 %add, %12, !dbg !145
  %sub43 = sub nsw i32 %sub, %jrow.irow, !dbg !145
  call void @llvm.dbg.value(metadata !{i32 %sub43}, i64 0, metadata !45), !dbg !145
  %sub46 = sub nsw i32 %sub, %irow.jrow, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %sub46}, i64 0, metadata !47), !dbg !146
  %mul = shl i32 %11, 1, !dbg !147
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !147
  %13 = load i32* %nU, align 4, !dbg !147, !tbaa !118
  %add47 = add i32 %12, -1, !dbg !147
  %add48 = add i32 %add47, %mul, !dbg !147
  %sub49 = add i32 %add48, %13, !dbg !147
  call void @llvm.dbg.value(metadata !{i32 %sub49}, i64 0, metadata !52), !dbg !147
  %14 = load i32* %type, align 4, !dbg !148, !tbaa !118
  switch i32 %14, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond103.preheader
  ], !dbg !148

for.cond103.preheader:                            ; preds = %if.then33
  %cmp104425 = icmp sgt i32 %jrow.irow, 0, !dbg !149
  br i1 %cmp104425, label %for.body105.lr.ph, label %for.cond140.preheader, !dbg !149

for.body105.lr.ph:                                ; preds = %for.cond103.preheader
  %15 = add i32 %12, %13, !dbg !149
  %16 = shl i32 %11, 1, !dbg !149
  %17 = add i32 %15, %16, !dbg !149
  %18 = add i32 %17, -1, !dbg !149
  %19 = sext i32 %18 to i64
  %20 = xor i32 %jrow, -1, !dbg !149
  %21 = xor i32 %irow, -1, !dbg !149
  %22 = icmp sgt i32 %20, %21, !dbg !149
  %smax460 = select i1 %22, i32 %20, i32 %21, !dbg !149
  %23 = shl i32 %smax460, 1, !dbg !149
  %24 = add i32 %17, %23, !dbg !149
  %25 = sub i32 -2, %smax460, !dbg !149
  %26 = add i32 %17, -3, !dbg !149
  %27 = mul i32 %25, %26, !dbg !149
  %28 = add i32 %13, %27, !dbg !149
  %29 = mul i32 %11, 3, !dbg !149
  %30 = add i32 %28, %29, !dbg !149
  %31 = shl i32 %12, 1, !dbg !149
  %32 = add i32 %30, %31, !dbg !149
  %33 = icmp sgt i32 %jrow, %irow, !dbg !149
  %smax461 = select i1 %33, i32 %jrow, i32 %irow, !dbg !149
  %34 = sub i32 -3, %smax460, !dbg !149
  %35 = mul i32 %25, %34, !dbg !149
  %36 = and i32 %35, -2, !dbg !149
  %37 = add i32 %13, %smax460, !dbg !149
  %38 = add i32 %37, %27, !dbg !149
  %39 = add i32 %38, %29, !dbg !149
  %40 = add i32 %39, %31, !dbg !149
  %41 = add i32 %40, -1, !dbg !149
  %42 = xor i32 %smax460, -1, !dbg !149
  br label %for.body105, !dbg !149

for.cond.preheader:                               ; preds = %if.then33
  %cmp53404 = icmp sgt i32 %jrow.irow, 0, !dbg !152
  br i1 %cmp53404, label %for.body.lr.ph, label %for.cond65.preheader, !dbg !152

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %43 = add i32 %12, %13, !dbg !152
  %44 = shl i32 %11, 1, !dbg !152
  %45 = add i32 %43, %44, !dbg !152
  %46 = add i32 %45, -1, !dbg !152
  %47 = sext i32 %46 to i64
  %48 = xor i32 %jrow, -1, !dbg !152
  %49 = xor i32 %irow, -1, !dbg !152
  %50 = icmp sgt i32 %48, %49, !dbg !152
  %smax445 = select i1 %50, i32 %48, i32 %49, !dbg !152
  %51 = shl i32 %smax445, 1, !dbg !152
  %52 = add i32 %45, %51, !dbg !152
  %53 = sub i32 -2, %smax445, !dbg !152
  %54 = add i32 %45, -3, !dbg !152
  %55 = mul i32 %53, %54, !dbg !152
  %56 = add i32 %13, %55, !dbg !152
  %57 = mul i32 %11, 3, !dbg !152
  %58 = add i32 %56, %57, !dbg !152
  %59 = shl i32 %12, 1, !dbg !152
  %60 = add i32 %58, %59, !dbg !152
  %61 = icmp sgt i32 %jrow, %irow, !dbg !152
  %smax446 = select i1 %61, i32 %jrow, i32 %irow, !dbg !152
  %62 = sub i32 -3, %smax445, !dbg !152
  %63 = mul i32 %53, %62, !dbg !152
  %64 = and i32 %63, -2, !dbg !152
  %65 = add i32 %13, %smax445, !dbg !152
  %66 = add i32 %65, %55, !dbg !152
  %67 = add i32 %66, %57, !dbg !152
  %68 = add i32 %67, %59, !dbg !152
  %69 = add i32 %68, -1, !dbg !152
  %70 = xor i32 %smax445, -1, !dbg !152
  br label %for.body, !dbg !152

for.cond.for.cond65.preheader_crit_edge:          ; preds = %for.body
  %71 = add i32 %52, 1, !dbg !152
  %72 = add i32 %60, -2, !dbg !152
  %73 = sub i32 %72, %smax446, !dbg !152
  %74 = sub i32 %73, %64, !dbg !152
  %75 = sub i32 %69, %64, !dbg !152
  br label %for.cond65.preheader, !dbg !152

for.cond65.preheader:                             ; preds = %for.cond.for.cond65.preheader_crit_edge, %for.cond.preheader
  %stride.0.lcssa = phi i32 [ %71, %for.cond.for.cond65.preheader_crit_edge ], [ %sub49, %for.cond.preheader ]
  %joff.0.lcssa = phi i32 [ %74, %for.cond.for.cond65.preheader_crit_edge ], [ %sub46, %for.cond.preheader ]
  %ioff.0.lcssa = phi i32 [ %75, %for.cond.for.cond65.preheader_crit_edge ], [ %sub43, %for.cond.preheader ]
  %cmp66398 = icmp slt i32 %jrow.irow, %irow.jrow, !dbg !155
  br i1 %cmp66398, label %for.body67.lr.ph, label %for.cond82.preheader, !dbg !155

for.body67.lr.ph:                                 ; preds = %for.cond65.preheader
  %76 = sext i32 %stride.0.lcssa to i64
  %77 = sext i32 %ioff.0.lcssa to i64, !dbg !155
  %78 = icmp sgt i32 %jrow, %irow, !dbg !155
  %smax = select i1 %78, i32 %jrow, i32 %irow, !dbg !155
  %79 = xor i32 %jrow, -1, !dbg !155
  %80 = xor i32 %irow, -1, !dbg !155
  %81 = icmp sgt i32 %79, %80, !dbg !155
  %smax441 = select i1 %81, i32 %79, i32 %80, !dbg !155
  %82 = add i32 %smax, %smax441, !dbg !155
  %83 = add i32 %stride.0.lcssa, -2, !dbg !155
  %84 = mul i32 %82, %83, !dbg !155
  %85 = add i32 %82, -1, !dbg !155
  %86 = mul i32 %82, %85, !dbg !155
  %87 = and i32 %86, -2, !dbg !155
  %88 = add i32 %ioff.0.lcssa, %smax, !dbg !155
  %89 = add i32 %88, %smax441, !dbg !155
  br label %for.body67, !dbg !155

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv442 = phi i64 [ %47, %for.body.lr.ph ], [ %indvars.iv.next443, %for.body ]
  %joff.0407 = phi i32 [ %sub46, %for.body.lr.ph ], [ %add63, %for.body ]
  %ioff.0406 = phi i32 [ %sub43, %for.body.lr.ph ], [ %add62, %for.body ]
  %ii.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom54 = sext i32 %ioff.0406 to i64, !dbg !157
  %arrayidx55 = getelementptr inbounds double* %call13, i64 %idxprom54, !dbg !157
  %90 = load double* %arrayidx55, align 8, !dbg !157, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %90}, i64 0, metadata !42), !dbg !157
  %idxprom56 = sext i32 %joff.0407 to i64, !dbg !160
  %arrayidx57 = getelementptr inbounds double* %call13, i64 %idxprom56, !dbg !160
  %91 = load double* %arrayidx57, align 8, !dbg !160, !tbaa !159
  store double %91, double* %arrayidx55, align 8, !dbg !160, !tbaa !159
  store double %90, double* %arrayidx57, align 8, !dbg !161, !tbaa !159
  %92 = trunc i64 %indvars.iv442 to i32, !dbg !162
  %add62 = add nsw i32 %92, %ioff.0406, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %75}, i64 0, metadata !45), !dbg !162
  %add63 = add nsw i32 %92, %joff.0407, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %74}, i64 0, metadata !47), !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !52), !dbg !162
  %inc = add nsw i32 %ii.0405, 1, !dbg !152
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !44), !dbg !152
  %indvars.iv.next443 = add i64 %indvars.iv442, -2, !dbg !152
  %exitcond = icmp eq i32 %inc, %70, !dbg !152
  br i1 %exitcond, label %for.cond.for.cond65.preheader_crit_edge, label %for.body, !dbg !152

for.cond65.for.cond82.preheader_crit_edge:        ; preds = %for.body67
  %93 = add i32 %joff.0.lcssa, %stride.0.lcssa, !dbg !155
  %94 = add i32 %93, %84, !dbg !155
  %95 = sub i32 %94, %87, !dbg !155
  %96 = add i32 %89, 1, !dbg !155
  br label %for.cond82.preheader, !dbg !155

for.cond82.preheader:                             ; preds = %for.cond65.for.cond82.preheader_crit_edge, %for.cond65.preheader
  %joff.1.lcssa = phi i32 [ %95, %for.cond65.for.cond82.preheader_crit_edge ], [ %joff.0.lcssa, %for.cond65.preheader ]
  %ioff.1.lcssa = phi i32 [ %96, %for.cond65.for.cond82.preheader_crit_edge ], [ %ioff.0.lcssa, %for.cond65.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !163
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !163
  %add83393 = add nsw i32 %13, %11, !dbg !163
  %cmp84394 = icmp slt i32 %irow.jrow, %add83393, !dbg !163
  br i1 %cmp84394, label %for.body85.lr.ph, label %return, !dbg !163

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !163
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !163
  %97 = sext i32 %joff.1.lcssa to i64
  %98 = sext i32 %ioff.1.lcssa to i64, !dbg !163
  br label %for.body85, !dbg !163

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %indvars.iv439 = phi i64 [ %77, %for.body67.lr.ph ], [ %indvars.iv.next440, %for.body67 ], !dbg !155
  %indvars.iv437 = phi i64 [ %76, %for.body67.lr.ph ], [ %indvars.iv.next438, %for.body67 ]
  %joff.1401 = phi i32 [ %joff.0.lcssa, %for.body67.lr.ph ], [ %add77, %for.body67 ]
  %ii.1399 = phi i32 [ %jrow.irow, %for.body67.lr.ph ], [ %inc80, %for.body67 ]
  %arrayidx69 = getelementptr inbounds double* %call13, i64 %indvars.iv439, !dbg !165
  %99 = load double* %arrayidx69, align 8, !dbg !165, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %99}, i64 0, metadata !42), !dbg !165
  %idxprom70 = sext i32 %joff.1401 to i64, !dbg !167
  %arrayidx71 = getelementptr inbounds double* %call13, i64 %idxprom70, !dbg !167
  %100 = load double* %arrayidx71, align 8, !dbg !167, !tbaa !159
  store double %100, double* %arrayidx69, align 8, !dbg !167, !tbaa !159
  store double %99, double* %arrayidx71, align 8, !dbg !168, !tbaa !159
  %indvars.iv.next440 = add i64 %indvars.iv439, 1, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !45), !dbg !169
  %101 = trunc i64 %indvars.iv437 to i32, !dbg !169
  %add77 = add nsw i32 %101, %joff.1401, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %95}, i64 0, metadata !47), !dbg !169
  %indvars.iv.next438 = add i64 %indvars.iv437, -2, !dbg !155
  %inc80 = add nsw i32 %ii.1399, 1, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !44), !dbg !155
  %cmp66 = icmp slt i32 %inc80, %irow.jrow, !dbg !155
  br i1 %cmp66, label %for.body67, label %for.cond65.for.cond82.preheader_crit_edge, !dbg !155

for.body85:                                       ; preds = %for.body85.lr.ph, %for.body85
  %indvars.iv433 = phi i64 [ %98, %for.body85.lr.ph ], [ %indvars.iv.next434, %for.body85 ], !dbg !163
  %indvars.iv = phi i64 [ %97, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %ii.2395 = phi i32 [ %irow.jrow, %for.body85.lr.ph ], [ %inc97, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double* %call13, i64 %indvars.iv433, !dbg !170
  %102 = load double* %arrayidx87, align 8, !dbg !170, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %102}, i64 0, metadata !42), !dbg !170
  %arrayidx89 = getelementptr inbounds double* %call13, i64 %indvars.iv, !dbg !172
  %103 = load double* %arrayidx89, align 8, !dbg !172, !tbaa !159
  store double %103, double* %arrayidx87, align 8, !dbg !172, !tbaa !159
  store double %102, double* %arrayidx89, align 8, !dbg !173, !tbaa !159
  %indvars.iv.next434 = add i64 %indvars.iv433, 1, !dbg !163
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !163
  %inc97 = add nsw i32 %ii.2395, 1, !dbg !163
  call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !44), !dbg !163
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !163
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !163
  %cmp84 = icmp slt i32 %inc97, %add83393, !dbg !163
  br i1 %cmp84, label %for.body85, label %return, !dbg !163

for.cond103.for.cond140.preheader_crit_edge:      ; preds = %for.body105
  %104 = add i32 %24, 1, !dbg !149
  %105 = add i32 %32, -2, !dbg !149
  %106 = sub i32 %105, %smax461, !dbg !149
  %107 = sub i32 %106, %36, !dbg !149
  %108 = sub i32 %41, %36, !dbg !149
  br label %for.cond140.preheader, !dbg !149

for.cond140.preheader:                            ; preds = %for.cond103.for.cond140.preheader_crit_edge, %for.cond103.preheader
  %stride.2.lcssa = phi i32 [ %104, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub49, %for.cond103.preheader ]
  %joff.3.lcssa = phi i32 [ %107, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub46, %for.cond103.preheader ]
  %ioff.3.lcssa = phi i32 [ %108, %for.cond103.for.cond140.preheader_crit_edge ], [ %sub43, %for.cond103.preheader ]
  %cmp141418 = icmp slt i32 %jrow.irow, %irow.jrow, !dbg !174
  br i1 %cmp141418, label %for.body142.lr.ph, label %for.cond177.preheader, !dbg !174

for.body142.lr.ph:                                ; preds = %for.cond140.preheader
  %109 = sext i32 %stride.2.lcssa to i64
  %110 = sext i32 %ioff.3.lcssa to i64, !dbg !174
  %111 = icmp sgt i32 %jrow, %irow, !dbg !174
  %smax455 = select i1 %111, i32 %jrow, i32 %irow, !dbg !174
  %112 = xor i32 %jrow, -1, !dbg !174
  %113 = xor i32 %irow, -1, !dbg !174
  %114 = icmp sgt i32 %112, %113, !dbg !174
  %smax456 = select i1 %114, i32 %112, i32 %113, !dbg !174
  %115 = add i32 %smax455, %smax456, !dbg !174
  %116 = add i32 %stride.2.lcssa, -2, !dbg !174
  %117 = mul i32 %115, %116, !dbg !174
  %118 = add i32 %115, -1, !dbg !174
  %119 = mul i32 %115, %118, !dbg !174
  %120 = and i32 %119, -2, !dbg !174
  %121 = add i32 %ioff.3.lcssa, %smax455, !dbg !174
  %122 = add i32 %121, %smax456, !dbg !174
  br label %for.body142, !dbg !174

for.body105:                                      ; preds = %for.body105, %for.body105.lr.ph
  %indvars.iv457 = phi i64 [ %19, %for.body105.lr.ph ], [ %indvars.iv.next458, %for.body105 ]
  %joff.3428 = phi i32 [ %sub46, %for.body105.lr.ph ], [ %add135, %for.body105 ]
  %ioff.3427 = phi i32 [ %sub43, %for.body105.lr.ph ], [ %add134, %for.body105 ]
  %ii.3426 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc138, %for.body105 ]
  %mul106 = shl nsw i32 %ioff.3427, 1, !dbg !176
  %idxprom107 = sext i32 %mul106 to i64, !dbg !176
  %arrayidx108 = getelementptr inbounds double* %call13, i64 %idxprom107, !dbg !176
  %123 = load double* %arrayidx108, align 8, !dbg !176, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %123}, i64 0, metadata !42), !dbg !176
  %mul109 = shl nsw i32 %joff.3428, 1, !dbg !178
  %idxprom110 = sext i32 %mul109 to i64, !dbg !178
  %arrayidx111 = getelementptr inbounds double* %call13, i64 %idxprom110, !dbg !178
  %124 = load double* %arrayidx111, align 8, !dbg !178, !tbaa !159
  store double %124, double* %arrayidx108, align 8, !dbg !178, !tbaa !159
  store double %123, double* %arrayidx111, align 8, !dbg !179, !tbaa !159
  %add119389 = or i32 %mul106, 1, !dbg !180
  %idxprom120 = sext i32 %add119389 to i64, !dbg !180
  %arrayidx121 = getelementptr inbounds double* %call13, i64 %idxprom120, !dbg !180
  %125 = load double* %arrayidx121, align 8, !dbg !180, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %125}, i64 0, metadata !42), !dbg !180
  %add123390 = or i32 %mul109, 1, !dbg !181
  %idxprom124 = sext i32 %add123390 to i64, !dbg !181
  %arrayidx125 = getelementptr inbounds double* %call13, i64 %idxprom124, !dbg !181
  %126 = load double* %arrayidx125, align 8, !dbg !181, !tbaa !159
  store double %126, double* %arrayidx121, align 8, !dbg !181, !tbaa !159
  store double %125, double* %arrayidx125, align 8, !dbg !182, !tbaa !159
  %127 = trunc i64 %indvars.iv457 to i32, !dbg !183
  %add134 = add nsw i32 %127, %ioff.3427, !dbg !183
  call void @llvm.dbg.value(metadata !{i32 %108}, i64 0, metadata !45), !dbg !183
  %add135 = add nsw i32 %127, %joff.3428, !dbg !183
  call void @llvm.dbg.value(metadata !{i32 %107}, i64 0, metadata !47), !dbg !183
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !52), !dbg !183
  %inc138 = add nsw i32 %ii.3426, 1, !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %inc138}, i64 0, metadata !44), !dbg !149
  %indvars.iv.next458 = add i64 %indvars.iv457, -2, !dbg !149
  %exitcond462 = icmp eq i32 %inc138, %42, !dbg !149
  br i1 %exitcond462, label %for.cond103.for.cond140.preheader_crit_edge, label %for.body105, !dbg !149

for.cond140.for.cond177.preheader_crit_edge:      ; preds = %for.body142
  %128 = add i32 %joff.3.lcssa, %stride.2.lcssa, !dbg !174
  %129 = add i32 %128, %117, !dbg !174
  %130 = sub i32 %129, %120, !dbg !174
  %131 = add i32 %122, 1, !dbg !174
  br label %for.cond177.preheader, !dbg !174

for.cond177.preheader:                            ; preds = %for.cond140.for.cond177.preheader_crit_edge, %for.cond140.preheader
  %joff.4.lcssa = phi i32 [ %130, %for.cond140.for.cond177.preheader_crit_edge ], [ %joff.3.lcssa, %for.cond140.preheader ]
  %ioff.4.lcssa = phi i32 [ %131, %for.cond140.for.cond177.preheader_crit_edge ], [ %ioff.3.lcssa, %for.cond140.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !184
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !184
  %add178413 = add nsw i32 %13, %11, !dbg !184
  %cmp179414 = icmp slt i32 %irow.jrow, %add178413, !dbg !184
  br i1 %cmp179414, label %for.body180.lr.ph, label %return, !dbg !184

for.body180.lr.ph:                                ; preds = %for.cond177.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !184
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !184
  %132 = sext i32 %joff.4.lcssa to i64
  %133 = sext i32 %ioff.4.lcssa to i64, !dbg !184
  br label %for.body180, !dbg !184

for.body142:                                      ; preds = %for.body142.lr.ph, %for.body142
  %indvars.iv453 = phi i64 [ %110, %for.body142.lr.ph ], [ %indvars.iv.next454, %for.body142 ], !dbg !174
  %indvars.iv451 = phi i64 [ %109, %for.body142.lr.ph ], [ %indvars.iv.next452, %for.body142 ]
  %joff.4421 = phi i32 [ %joff.3.lcssa, %for.body142.lr.ph ], [ %add172, %for.body142 ]
  %ii.4419 = phi i32 [ %jrow.irow, %for.body142.lr.ph ], [ %inc175, %for.body142 ]
  %134 = trunc i64 %indvars.iv453 to i32, !dbg !186
  %mul143 = shl nsw i32 %134, 1, !dbg !186
  %idxprom144 = sext i32 %mul143 to i64, !dbg !186
  %arrayidx145 = getelementptr inbounds double* %call13, i64 %idxprom144, !dbg !186
  %135 = load double* %arrayidx145, align 8, !dbg !186, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %135}, i64 0, metadata !42), !dbg !186
  %mul146 = shl nsw i32 %joff.4421, 1, !dbg !188
  %idxprom147 = sext i32 %mul146 to i64, !dbg !188
  %arrayidx148 = getelementptr inbounds double* %call13, i64 %idxprom147, !dbg !188
  %136 = load double* %arrayidx148, align 8, !dbg !188, !tbaa !159
  store double %136, double* %arrayidx145, align 8, !dbg !188, !tbaa !159
  store double %135, double* %arrayidx148, align 8, !dbg !189, !tbaa !159
  %add156387 = or i32 %mul143, 1, !dbg !190
  %idxprom157 = sext i32 %add156387 to i64, !dbg !190
  %arrayidx158 = getelementptr inbounds double* %call13, i64 %idxprom157, !dbg !190
  %137 = load double* %arrayidx158, align 8, !dbg !190, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %137}, i64 0, metadata !42), !dbg !190
  %add160388 = or i32 %mul146, 1, !dbg !191
  %idxprom161 = sext i32 %add160388 to i64, !dbg !191
  %arrayidx162 = getelementptr inbounds double* %call13, i64 %idxprom161, !dbg !191
  %138 = load double* %arrayidx162, align 8, !dbg !191, !tbaa !159
  store double %138, double* %arrayidx158, align 8, !dbg !191, !tbaa !159
  store double %137, double* %arrayidx162, align 8, !dbg !192, !tbaa !159
  %indvars.iv.next454 = add i64 %indvars.iv453, 1, !dbg !174
  call void @llvm.dbg.value(metadata !{i32 %131}, i64 0, metadata !45), !dbg !193
  %139 = trunc i64 %indvars.iv451 to i32, !dbg !193
  %add172 = add nsw i32 %139, %joff.4421, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %130}, i64 0, metadata !47), !dbg !193
  %indvars.iv.next452 = add i64 %indvars.iv451, -2, !dbg !174
  %inc175 = add nsw i32 %ii.4419, 1, !dbg !174
  call void @llvm.dbg.value(metadata !{i32 %inc175}, i64 0, metadata !44), !dbg !174
  %cmp141 = icmp slt i32 %inc175, %irow.jrow, !dbg !174
  br i1 %cmp141, label %for.body142, label %for.cond140.for.cond177.preheader_crit_edge, !dbg !174

for.body180:                                      ; preds = %for.body180.lr.ph, %for.body180
  %indvars.iv449 = phi i64 [ %133, %for.body180.lr.ph ], [ %indvars.iv.next450, %for.body180 ], !dbg !184
  %indvars.iv447 = phi i64 [ %132, %for.body180.lr.ph ], [ %indvars.iv.next448, %for.body180 ]
  %ii.5415 = phi i32 [ %irow.jrow, %for.body180.lr.ph ], [ %inc212, %for.body180 ]
  %140 = trunc i64 %indvars.iv449 to i32, !dbg !194
  %mul181 = shl nsw i32 %140, 1, !dbg !194
  %idxprom182 = sext i32 %mul181 to i64, !dbg !194
  %arrayidx183 = getelementptr inbounds double* %call13, i64 %idxprom182, !dbg !194
  %141 = load double* %arrayidx183, align 8, !dbg !194, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %141}, i64 0, metadata !42), !dbg !194
  %142 = trunc i64 %indvars.iv447 to i32, !dbg !196
  %mul184 = shl nsw i32 %142, 1, !dbg !196
  %idxprom185 = sext i32 %mul184 to i64, !dbg !196
  %arrayidx186 = getelementptr inbounds double* %call13, i64 %idxprom185, !dbg !196
  %143 = load double* %arrayidx186, align 8, !dbg !196, !tbaa !159
  store double %143, double* %arrayidx183, align 8, !dbg !196, !tbaa !159
  store double %141, double* %arrayidx186, align 8, !dbg !197, !tbaa !159
  %add194385 = or i32 %mul181, 1, !dbg !198
  %idxprom195 = sext i32 %add194385 to i64, !dbg !198
  %arrayidx196 = getelementptr inbounds double* %call13, i64 %idxprom195, !dbg !198
  %144 = load double* %arrayidx196, align 8, !dbg !198, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %144}, i64 0, metadata !42), !dbg !198
  %add198386 = or i32 %mul184, 1, !dbg !199
  %idxprom199 = sext i32 %add198386 to i64, !dbg !199
  %arrayidx200 = getelementptr inbounds double* %call13, i64 %idxprom199, !dbg !199
  %145 = load double* %arrayidx200, align 8, !dbg !199, !tbaa !159
  store double %145, double* %arrayidx196, align 8, !dbg !199, !tbaa !159
  store double %144, double* %arrayidx200, align 8, !dbg !200, !tbaa !159
  %indvars.iv.next450 = add i64 %indvars.iv449, 1, !dbg !184
  %indvars.iv.next448 = add i64 %indvars.iv447, 1, !dbg !184
  %inc212 = add nsw i32 %ii.5415, 1, !dbg !184
  call void @llvm.dbg.value(metadata !{i32 %inc212}, i64 0, metadata !44), !dbg !184
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !184
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !51), !dbg !184
  %cmp179 = icmp slt i32 %inc212, %add178413, !dbg !184
  br i1 %cmp179, label %for.body180, label %return, !dbg !184

if.else216:                                       ; preds = %if.end25
  %146 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !111
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jrow, i32 %7) #5, !dbg !201
  call void @exit(i32 -1) #6, !dbg !203
  unreachable, !dbg !203

return:                                           ; preds = %for.cond177.preheader, %for.body180, %for.cond82.preheader, %for.body85, %if.then33, %if.then30, %if.end
  ret void, !dbg !204
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %ii, i32 %jj) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !73), !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %ii}, i64 0, metadata !74), !dbg !206
  call void @llvm.dbg.value(metadata !{i32 %jj}, i64 0, metadata !75), !dbg !207
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !84), !dbg !208
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !85), !dbg !208
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !86), !dbg !208
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !87), !dbg !208
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !89), !dbg !209
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !210
  %cmp1 = icmp slt i32 %ii, 0, !dbg !210
  %or.cond = or i1 %cmp, %cmp1, !dbg !210
  %cmp3 = icmp slt i32 %jj, 0, !dbg !210
  %or.cond530 = or i1 %or.cond, %cmp3, !dbg !210
  br i1 %or.cond530, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !211, !tbaa !111
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj) #5, !dbg !211
  call void @exit(i32 -1) #6, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %ii, %jj, !dbg !214
  br i1 %cmp4, label %return, label %if.end6, !dbg !214

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !215
  %call7 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !216
  call void @llvm.dbg.value(metadata !{double* %call7}, i64 0, metadata !77), !dbg !216
  %cmp8 = icmp eq double* %call7, null, !dbg !217
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !218
  %.pre = load i32* %nD, align 4, !dbg !218, !tbaa !118
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !217

lor.lhs.false9:                                   ; preds = %if.end6
  %cmp10 = icmp sgt i32 %.pre, %ii, !dbg !217
  %cmp12 = icmp sgt i32 %.pre, %jj, !dbg !217
  %or.cond531 = and i1 %cmp10, %cmp12, !dbg !217
  br i1 %or.cond531, label %if.end15, label %if.then13, !dbg !217

if.then13:                                        ; preds = %if.end6, %lor.lhs.false9
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !218, !tbaa !111
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !218
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([85 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, double* %call7, i32 %.pre) #5, !dbg !218
  call void @exit(i32 -1) #6, !dbg !220
  unreachable, !dbg !220

if.end15:                                         ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !221
  %2 = load i32* %type, align 4, !dbg !221, !tbaa !118
  %.off = add i32 %2, -1, !dbg !221
  %switch = icmp ult i32 %.off, 2, !dbg !221
  br i1 %switch, label %if.end23, label %if.then20, !dbg !221

if.then20:                                        ; preds = %if.end15
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !222, !tbaa !111
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([103 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, i32 %2) #5, !dbg !222
  call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

if.end23:                                         ; preds = %if.end15
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !225
  %4 = load i32* %symflag, align 4, !dbg !225, !tbaa !118
  switch i32 %4, label %if.else306 [
    i32 2, label %if.then25
    i32 0, label %if.then31
    i32 1, label %if.then31
  ], !dbg !225

if.then25:                                        ; preds = %if.end23
  call void @Chv_swapRows(%struct._Chv* %chv, i32 %ii, i32 %jj) #7, !dbg !226
  call void @Chv_swapColumns(%struct._Chv* %chv, i32 %ii, i32 %jj) #7, !dbg !228
  br label %return, !dbg !229

if.then31:                                        ; preds = %if.end23, %if.end23
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5, !dbg !230
  %idxprom = sext i32 %ii to i64, !dbg !231
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !89), !dbg !231
  %5 = load i32** %colind, align 8, !dbg !231, !tbaa !111
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !231
  %6 = load i32* %arrayidx, align 4, !dbg !231, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !80), !dbg !231
  %idxprom32 = sext i32 %jj to i64, !dbg !232
  %arrayidx33 = getelementptr inbounds i32* %5, i64 %idxprom32, !dbg !232
  %7 = load i32* %arrayidx33, align 4, !dbg !232, !tbaa !118
  store i32 %7, i32* %arrayidx, align 4, !dbg !232, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !89), !dbg !233
  store i32 %6, i32* %arrayidx33, align 4, !dbg !233, !tbaa !118
  %cmp38 = icmp sgt i32 %ii, %jj, !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %ii}, i64 0, metadata !80), !dbg !235
  call void @llvm.dbg.value(metadata !{i32 %jj}, i64 0, metadata !74), !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %ii}, i64 0, metadata !75), !dbg !238
  %ii.jj = select i1 %cmp38, i32 %ii, i32 %jj, !dbg !234
  %jj.ii = select i1 %cmp38, i32 %jj, i32 %ii, !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %jj.ii}, i64 0, metadata !79), !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %ii.jj}, i64 0, metadata !82), !dbg !240
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !241
  %8 = load i32* %nD, align 4, !dbg !241, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !241
  %9 = load i32* %nU, align 4, !dbg !241, !tbaa !118
  %add = add i32 %8, -1, !dbg !241
  %sub = add i32 %add, %9, !dbg !241
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !88), !dbg !241
  %10 = load i32* %type, align 4, !dbg !242, !tbaa !118
  switch i32 %10, label %if.end97 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond60.preheader
  ], !dbg !242

for.cond60.preheader:                             ; preds = %if.then31
  %cmp61570 = icmp sgt i32 %jj.ii, 0, !dbg !243
  br i1 %cmp61570, label %for.body62.lr.ph, label %if.end97.thread625, !dbg !243

if.end97.thread625:                               ; preds = %for.cond60.preheader
  call void @llvm.dbg.value(metadata !{i32 %ioff.2622}, i64 0, metadata !78), !dbg !246
  %inc98626 = add i32 %jj.ii, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc98623}, i64 0, metadata !79), !dbg !247
  %add99627 = add nsw i32 %ii.jj, %sub, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %add99624}, i64 0, metadata !82), !dbg !247
  br label %for.cond127.preheader, !dbg !248

for.body62.lr.ph:                                 ; preds = %for.cond60.preheader
  %11 = add i32 %8, %9, !dbg !243
  %12 = add i32 %11, -1, !dbg !243
  %13 = sext i32 %12 to i64
  %14 = xor i32 %jj, -1, !dbg !243
  %15 = xor i32 %ii, -1, !dbg !243
  %16 = icmp sgt i32 %14, %15, !dbg !243
  %smax613 = select i1 %16, i32 %14, i32 %15, !dbg !243
  %17 = icmp sgt i32 %jj, %ii, !dbg !243
  %smax614 = select i1 %17, i32 %jj, i32 %ii, !dbg !243
  %18 = add i32 %11, %smax614, !dbg !243
  %19 = add i32 %11, -2, !dbg !243
  %20 = sub i32 -2, %smax613, !dbg !243
  %21 = mul i32 %19, %20, !dbg !243
  %22 = add i32 %18, %21, !dbg !243
  %23 = zext i32 %20 to i33, !dbg !243
  %24 = sub i32 -3, %smax613, !dbg !243
  %25 = zext i32 %24 to i33, !dbg !243
  %26 = mul i33 %23, %25, !dbg !243
  %27 = lshr i33 %26, 1, !dbg !243
  %28 = trunc i33 %27 to i32, !dbg !243
  %29 = add i32 %11, %21, !dbg !243
  %30 = add i32 %29, -2, !dbg !243
  %31 = sub i32 %30, %smax613, !dbg !243
  %32 = xor i32 %smax613, -1, !dbg !243
  br label %for.body62, !dbg !243

for.cond.preheader:                               ; preds = %if.then31
  %cmp44561 = icmp sgt i32 %jj.ii, 0, !dbg !249
  br i1 %cmp44561, label %for.body.lr.ph, label %if.end97.thread, !dbg !249

if.end97.thread:                                  ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32 %ioff.2622}, i64 0, metadata !78), !dbg !246
  %inc98617 = add i32 %jj.ii, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc98623}, i64 0, metadata !79), !dbg !247
  %add99618 = add nsw i32 %ii.jj, %sub, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %add99624}, i64 0, metadata !82), !dbg !247
  br label %for.cond105.preheader, !dbg !248

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %33 = add i32 %8, %9, !dbg !249
  %34 = add i32 %33, -1, !dbg !249
  %35 = sext i32 %34 to i64
  %36 = xor i32 %jj, -1, !dbg !249
  %37 = xor i32 %ii, -1, !dbg !249
  %38 = icmp sgt i32 %36, %37, !dbg !249
  %smax608 = select i1 %38, i32 %36, i32 %37, !dbg !249
  %39 = icmp sgt i32 %jj, %ii, !dbg !249
  %smax609 = select i1 %39, i32 %jj, i32 %ii, !dbg !249
  %40 = add i32 %33, %smax609, !dbg !249
  %41 = add i32 %33, -2, !dbg !249
  %42 = sub i32 -2, %smax608, !dbg !249
  %43 = mul i32 %41, %42, !dbg !249
  %44 = add i32 %40, %43, !dbg !249
  %45 = zext i32 %42 to i33, !dbg !249
  %46 = sub i32 -3, %smax608, !dbg !249
  %47 = zext i32 %46 to i33, !dbg !249
  %48 = mul i33 %45, %47, !dbg !249
  %49 = lshr i33 %48, 1, !dbg !249
  %50 = trunc i33 %49 to i32, !dbg !249
  %51 = add i32 %33, %43, !dbg !249
  %52 = add i32 %51, -2, !dbg !249
  %53 = sub i32 %52, %smax608, !dbg !249
  %54 = xor i32 %smax608, -1, !dbg !249
  br label %for.body, !dbg !249

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv605 = phi i64 [ %35, %for.body.lr.ph ], [ %indvars.iv.next606, %for.body ]
  %ioff.0565 = phi i32 [ %jj.ii, %for.body.lr.ph ], [ %add53, %for.body ]
  %joff.0564 = phi i32 [ %ii.jj, %for.body.lr.ph ], [ %add54, %for.body ]
  %kk.0562 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom45 = sext i32 %ioff.0565 to i64, !dbg !252
  %arrayidx46 = getelementptr inbounds double* %call7, i64 %idxprom45, !dbg !252
  %55 = load double* %arrayidx46, align 8, !dbg !252, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !76), !dbg !252
  %idxprom47 = sext i32 %joff.0564 to i64, !dbg !254
  %arrayidx48 = getelementptr inbounds double* %call7, i64 %idxprom47, !dbg !254
  %56 = load double* %arrayidx48, align 8, !dbg !254, !tbaa !159
  store double %56, double* %arrayidx46, align 8, !dbg !254, !tbaa !159
  store double %55, double* %arrayidx48, align 8, !dbg !255, !tbaa !159
  %57 = trunc i64 %indvars.iv605 to i32, !dbg !256
  %add53 = add nsw i32 %ioff.0565, %57, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !79), !dbg !256
  %add54 = add nsw i32 %joff.0564, %57, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !82), !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !88), !dbg !256
  %inc = add nsw i32 %kk.0562, 1, !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !83), !dbg !249
  %indvars.iv.next606 = add i64 %indvars.iv605, -1, !dbg !249
  %exitcond = icmp eq i32 %inc, %54, !dbg !249
  br i1 %exitcond, label %for.cond.if.end97thread-pre-split.loopexit_crit_edge, label %for.body, !dbg !249

for.body62:                                       ; preds = %for.body62, %for.body62.lr.ph
  %indvars.iv610 = phi i64 [ %13, %for.body62.lr.ph ], [ %indvars.iv.next611, %for.body62 ]
  %ioff.1574 = phi i32 [ %jj.ii, %for.body62.lr.ph ], [ %add90, %for.body62 ]
  %joff.1573 = phi i32 [ %ii.jj, %for.body62.lr.ph ], [ %add91, %for.body62 ]
  %kk.1571 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc94, %for.body62 ]
  %mul = shl nsw i32 %ioff.1574, 1, !dbg !257
  %idxprom63 = sext i32 %mul to i64, !dbg !257
  %arrayidx64 = getelementptr inbounds double* %call7, i64 %idxprom63, !dbg !257
  %58 = load double* %arrayidx64, align 8, !dbg !257, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %58}, i64 0, metadata !76), !dbg !257
  %mul65 = shl nsw i32 %joff.1573, 1, !dbg !259
  %idxprom66 = sext i32 %mul65 to i64, !dbg !259
  %arrayidx67 = getelementptr inbounds double* %call7, i64 %idxprom66, !dbg !259
  %59 = load double* %arrayidx67, align 8, !dbg !259, !tbaa !159
  store double %59, double* %arrayidx64, align 8, !dbg !259, !tbaa !159
  store double %58, double* %arrayidx67, align 8, !dbg !260, !tbaa !159
  %add75528 = or i32 %mul, 1, !dbg !261
  %idxprom76 = sext i32 %add75528 to i64, !dbg !261
  %arrayidx77 = getelementptr inbounds double* %call7, i64 %idxprom76, !dbg !261
  %60 = load double* %arrayidx77, align 8, !dbg !261, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %60}, i64 0, metadata !76), !dbg !261
  %add79529 = or i32 %mul65, 1, !dbg !262
  %idxprom80 = sext i32 %add79529 to i64, !dbg !262
  %arrayidx81 = getelementptr inbounds double* %call7, i64 %idxprom80, !dbg !262
  %61 = load double* %arrayidx81, align 8, !dbg !262, !tbaa !159
  store double %61, double* %arrayidx77, align 8, !dbg !262, !tbaa !159
  store double %60, double* %arrayidx81, align 8, !dbg !263, !tbaa !159
  %62 = trunc i64 %indvars.iv610 to i32, !dbg !264
  %add90 = add nsw i32 %ioff.1574, %62, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !79), !dbg !264
  %add91 = add nsw i32 %joff.1573, %62, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !82), !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !88), !dbg !264
  %inc94 = add nsw i32 %kk.1571, 1, !dbg !243
  call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !83), !dbg !243
  %indvars.iv.next611 = add i64 %indvars.iv610, -1, !dbg !243
  %exitcond615 = icmp eq i32 %inc94, %32, !dbg !243
  br i1 %exitcond615, label %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge, label %for.body62, !dbg !243

for.cond.if.end97thread-pre-split.loopexit_crit_edge: ; preds = %for.body
  %63 = add i32 %33, %smax608, !dbg !249
  %64 = add i32 %44, -1, !dbg !249
  %65 = sub i32 %64, %50, !dbg !249
  %66 = sub i32 %53, %50, !dbg !249
  br label %if.end97, !dbg !249

for.cond60.if.end97thread-pre-split.loopexit569_crit_edge: ; preds = %for.body62
  %67 = add i32 %11, %smax613, !dbg !243
  %68 = add i32 %22, -1, !dbg !243
  %69 = sub i32 %68, %28, !dbg !243
  %70 = sub i32 %31, %28, !dbg !243
  br label %if.end97, !dbg !243

if.end97:                                         ; preds = %for.cond.if.end97thread-pre-split.loopexit_crit_edge, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge, %if.then31
  %stride.2 = phi i32 [ %sub, %if.then31 ], [ %63, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %67, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  %joff.2 = phi i32 [ %ii.jj, %if.then31 ], [ %65, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %69, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  %ioff.2 = phi i32 [ %jj.ii, %if.then31 ], [ %66, %for.cond.if.end97thread-pre-split.loopexit_crit_edge ], [ %70, %for.cond60.if.end97thread-pre-split.loopexit569_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32 %ioff.2622}, i64 0, metadata !78), !dbg !246
  %inc98 = add i32 %ioff.2, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc98623}, i64 0, metadata !79), !dbg !247
  %add99 = add nsw i32 %joff.2, %stride.2, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %add99624}, i64 0, metadata !82), !dbg !247
  switch i32 %10, label %if.end193 [
    i32 1, label %for.cond105.preheader
    i32 2, label %for.cond127.preheader
  ], !dbg !248

for.cond127.preheader:                            ; preds = %if.end97.thread625, %if.end97
  %add99632 = phi i32 [ %add99627, %if.end97.thread625 ], [ %add99, %if.end97 ]
  %inc98631 = phi i32 [ %inc98626, %if.end97.thread625 ], [ %inc98, %if.end97 ]
  %ioff.2630 = phi i32 [ %jj.ii, %if.end97.thread625 ], [ %ioff.2, %if.end97 ]
  %joff.2629 = phi i32 [ %ii.jj, %if.end97.thread625 ], [ %joff.2, %if.end97 ]
  %stride.2628 = phi i32 [ %sub, %if.end97.thread625 ], [ %stride.2, %if.end97 ]
  %kk.3553 = add nsw i32 %jj.ii, 1, !dbg !265
  %cmp128554 = icmp slt i32 %kk.3553, %ii.jj, !dbg !265
  %71 = load i32* %symflag, align 4, !dbg !266, !tbaa !118
  br i1 %cmp128554, label %for.body129.lr.ph, label %for.end178, !dbg !265

for.body129.lr.ph:                                ; preds = %for.cond127.preheader
  %cmp151 = icmp eq i32 %71, 0, !dbg !266
  %72 = sext i32 %inc98631 to i64
  %73 = add i32 %stride.2628, -1, !dbg !265
  %74 = sext i32 %73 to i64, !dbg !265
  %75 = icmp sgt i32 %jj, %ii, !dbg !265
  %smax603 = select i1 %75, i32 %jj, i32 %ii, !dbg !265
  %76 = xor i32 %jj, -1, !dbg !265
  %77 = xor i32 %ii, -1, !dbg !265
  %78 = icmp sgt i32 %76, %77, !dbg !265
  %smax604 = select i1 %78, i32 %76, i32 %77, !dbg !265
  %79 = add i32 %smax603, %smax604, !dbg !265
  %80 = add i32 %79, -1, !dbg !265
  %81 = add i32 %stride.2628, -2, !dbg !265
  %82 = mul i32 %80, %81, !dbg !265
  %83 = add i32 %joff.2629, %82, !dbg !265
  %84 = shl i32 %stride.2628, 1, !dbg !265
  %85 = add i32 %83, %84, !dbg !265
  %86 = zext i32 %80 to i33, !dbg !265
  %87 = add i32 %79, -2, !dbg !265
  %88 = zext i32 %87 to i33, !dbg !265
  %89 = mul i33 %86, %88, !dbg !265
  %90 = lshr i33 %89, 1, !dbg !265
  %91 = trunc i33 %90 to i32, !dbg !265
  %92 = add i32 %ioff.2630, %smax603, !dbg !265
  %93 = add i32 %92, %smax604, !dbg !265
  br label %for.body129, !dbg !265

for.cond105.preheader:                            ; preds = %if.end97.thread, %if.end97
  %add99624 = phi i32 [ %add99618, %if.end97.thread ], [ %add99, %if.end97 ]
  %inc98623 = phi i32 [ %inc98617, %if.end97.thread ], [ %inc98, %if.end97 ]
  %ioff.2621 = phi i32 [ %jj.ii, %if.end97.thread ], [ %ioff.2, %if.end97 ]
  %joff.2620 = phi i32 [ %ii.jj, %if.end97.thread ], [ %joff.2, %if.end97 ]
  %stride.2619 = phi i32 [ %sub, %if.end97.thread ], [ %stride.2, %if.end97 ]
  %kk.2546 = add nsw i32 %jj.ii, 1, !dbg !267
  %cmp106547 = icmp slt i32 %kk.2546, %ii.jj, !dbg !267
  br i1 %cmp106547, label %for.body107.lr.ph, label %if.end193, !dbg !267

for.body107.lr.ph:                                ; preds = %for.cond105.preheader
  %94 = sext i32 %inc98623 to i64
  %95 = add i32 %stride.2619, -1, !dbg !267
  %96 = sext i32 %95 to i64, !dbg !267
  %97 = icmp sgt i32 %jj, %ii, !dbg !267
  %smax = select i1 %97, i32 %jj, i32 %ii, !dbg !267
  %98 = xor i32 %jj, -1, !dbg !267
  %99 = xor i32 %ii, -1, !dbg !267
  %100 = icmp sgt i32 %98, %99, !dbg !267
  %smax596 = select i1 %100, i32 %98, i32 %99, !dbg !267
  %101 = add i32 %smax, %smax596, !dbg !267
  %102 = add i32 %101, -1, !dbg !267
  %103 = add i32 %stride.2619, -2, !dbg !267
  %104 = mul i32 %102, %103, !dbg !267
  %105 = add i32 %joff.2620, %104, !dbg !267
  %106 = shl i32 %stride.2619, 1, !dbg !267
  %107 = add i32 %105, %106, !dbg !267
  %108 = zext i32 %102 to i33, !dbg !267
  %109 = add i32 %101, -2, !dbg !267
  %110 = zext i32 %109 to i33, !dbg !267
  %111 = mul i33 %108, %110, !dbg !267
  %112 = lshr i33 %111, 1, !dbg !267
  %113 = trunc i33 %112 to i32, !dbg !267
  %114 = add i32 %ioff.2621, %smax, !dbg !267
  %115 = add i32 %114, %smax596, !dbg !267
  br label %for.body107, !dbg !267

for.body107:                                      ; preds = %for.body107.lr.ph, %for.body107
  %indvars.iv593 = phi i64 [ %96, %for.body107.lr.ph ], [ %indvars.iv.next594, %for.body107 ], !dbg !267
  %indvars.iv590 = phi i64 [ %94, %for.body107.lr.ph ], [ %indvars.iv.next591, %for.body107 ]
  %kk.2551 = phi i32 [ %kk.2546, %for.body107.lr.ph ], [ %kk.2, %for.body107 ]
  %joff.3549 = phi i32 [ %add99624, %for.body107.lr.ph ], [ %add117, %for.body107 ]
  %arrayidx109 = getelementptr inbounds double* %call7, i64 %indvars.iv590, !dbg !268
  %116 = load double* %arrayidx109, align 8, !dbg !268, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %116}, i64 0, metadata !90), !dbg !268
  %idxprom110 = sext i32 %joff.3549 to i64, !dbg !269
  %arrayidx111 = getelementptr inbounds double* %call7, i64 %idxprom110, !dbg !269
  %117 = load double* %arrayidx111, align 8, !dbg !269, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %117}, i64 0, metadata !95), !dbg !269
  store double %117, double* %arrayidx109, align 8, !dbg !270, !tbaa !159
  store double %116, double* %arrayidx111, align 8, !dbg !271, !tbaa !159
  call void @llvm.dbg.value(metadata !{i32 %131}, i64 0, metadata !79), !dbg !272
  %118 = trunc i64 %indvars.iv593 to i32, !dbg !272
  %add117 = add nsw i32 %joff.3549, %118, !dbg !272
  call void @llvm.dbg.value(metadata !{i32 %130}, i64 0, metadata !82), !dbg !272
  %kk.2 = add nsw i32 %kk.2551, 1, !dbg !267
  %cmp106 = icmp slt i32 %kk.2, %ii.jj, !dbg !267
  %indvars.iv.next591 = add i64 %indvars.iv590, 1, !dbg !267
  %indvars.iv.next594 = add i64 %indvars.iv593, -1, !dbg !267
  br i1 %cmp106, label %for.body107, label %for.cond105.if.end193.loopexit_crit_edge, !dbg !267

for.body129:                                      ; preds = %for.body129.lr.ph, %if.end172
  %indvars.iv600 = phi i64 [ %74, %for.body129.lr.ph ], [ %indvars.iv.next601, %if.end172 ], !dbg !265
  %indvars.iv597 = phi i64 [ %72, %for.body129.lr.ph ], [ %indvars.iv.next598, %if.end172 ]
  %kk.3558 = phi i32 [ %kk.3553, %for.body129.lr.ph ], [ %kk.3, %if.end172 ]
  %joff.4556 = phi i32 [ %add99632, %for.body129.lr.ph ], [ %add174, %if.end172 ]
  %119 = trunc i64 %indvars.iv597 to i32, !dbg !273
  %mul130 = shl nsw i32 %119, 1, !dbg !273
  %idxprom131 = sext i32 %mul130 to i64, !dbg !273
  %arrayidx132 = getelementptr inbounds double* %call7, i64 %idxprom131, !dbg !273
  %120 = load double* %arrayidx132, align 8, !dbg !273, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %120}, i64 0, metadata !101), !dbg !273
  %add134526 = or i32 %mul130, 1, !dbg !274
  %idxprom135 = sext i32 %add134526 to i64, !dbg !274
  %arrayidx136 = getelementptr inbounds double* %call7, i64 %idxprom135, !dbg !274
  %121 = load double* %arrayidx136, align 8, !dbg !274, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %121}, i64 0, metadata !96), !dbg !274
  %mul137 = shl nsw i32 %joff.4556, 1, !dbg !275
  %idxprom138 = sext i32 %mul137 to i64, !dbg !275
  %arrayidx139 = getelementptr inbounds double* %call7, i64 %idxprom138, !dbg !275
  %122 = load double* %arrayidx139, align 8, !dbg !275, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %122}, i64 0, metadata !102), !dbg !275
  %add141527 = or i32 %mul137, 1, !dbg !276
  %idxprom142 = sext i32 %add141527 to i64, !dbg !276
  %arrayidx143 = getelementptr inbounds double* %call7, i64 %idxprom142, !dbg !276
  %123 = load double* %arrayidx143, align 8, !dbg !276, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %123}, i64 0, metadata !100), !dbg !276
  store double %122, double* %arrayidx132, align 8, !dbg !277, !tbaa !159
  store double %120, double* %arrayidx139, align 8, !dbg !278, !tbaa !159
  br i1 %cmp151, label %if.then152, label %if.else161, !dbg !266

if.then152:                                       ; preds = %for.body129
  store double %123, double* %arrayidx136, align 8, !dbg !279, !tbaa !159
  br label %if.end172, !dbg !281

if.else161:                                       ; preds = %for.body129
  %sub162 = fsub double -0.000000e+00, %123, !dbg !282
  store double %sub162, double* %arrayidx136, align 8, !dbg !282, !tbaa !159
  %sub167 = fsub double -0.000000e+00, %121, !dbg !284
  br label %if.end172

if.end172:                                        ; preds = %if.else161, %if.then152
  %storemerge = phi double [ %sub167, %if.else161 ], [ %121, %if.then152 ]
  store double %storemerge, double* %arrayidx143, align 8, !dbg !285, !tbaa !159
  call void @llvm.dbg.value(metadata !{i32 %127}, i64 0, metadata !79), !dbg !286
  %124 = trunc i64 %indvars.iv600 to i32, !dbg !286
  %add174 = add nsw i32 %joff.4556, %124, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !82), !dbg !286
  %kk.3 = add nsw i32 %kk.3558, 1, !dbg !265
  %cmp128 = icmp slt i32 %kk.3, %ii.jj, !dbg !265
  %indvars.iv.next598 = add i64 %indvars.iv597, 1, !dbg !265
  %indvars.iv.next601 = add i64 %indvars.iv600, -1, !dbg !265
  br i1 %cmp128, label %for.body129, label %for.cond127.for.end178_crit_edge, !dbg !265

for.cond127.for.end178_crit_edge:                 ; preds = %if.end172
  %125 = add i32 %85, -1, !dbg !265
  %126 = sub i32 %125, %91, !dbg !265
  %127 = add i32 %93, 1, !dbg !265
  br label %for.end178, !dbg !265

for.end178:                                       ; preds = %for.cond127.preheader, %for.cond127.for.end178_crit_edge
  %ioff.4.lcssa = phi i32 [ %127, %for.cond127.for.end178_crit_edge ], [ %inc98631, %for.cond127.preheader ]
  %joff.4.lcssa = phi i32 [ %126, %for.cond127.for.end178_crit_edge ], [ %add99632, %for.cond127.preheader ]
  %cmp180 = icmp eq i32 %71, 1, !dbg !287
  br i1 %cmp180, label %if.then181, label %if.end193, !dbg !287

if.then181:                                       ; preds = %for.end178
  %mul182 = shl nsw i32 %ioff.4.lcssa, 1, !dbg !288
  %add183525 = or i32 %mul182, 1, !dbg !288
  %idxprom184 = sext i32 %add183525 to i64, !dbg !288
  %arrayidx185 = getelementptr inbounds double* %call7, i64 %idxprom184, !dbg !288
  %128 = load double* %arrayidx185, align 8, !dbg !288, !tbaa !159
  %sub186 = fsub double -0.000000e+00, %128, !dbg !288
  store double %sub186, double* %arrayidx185, align 8, !dbg !288, !tbaa !159
  br label %if.end193, !dbg !290

for.cond105.if.end193.loopexit_crit_edge:         ; preds = %for.body107
  %129 = add i32 %107, -1, !dbg !267
  %130 = sub i32 %129, %113, !dbg !267
  %131 = add i32 %115, 1, !dbg !267
  br label %if.end193, !dbg !267

if.end193:                                        ; preds = %for.cond105.preheader, %for.cond105.if.end193.loopexit_crit_edge, %if.end97, %if.then181, %for.end178
  %ioff.2622 = phi i32 [ %ioff.2630, %if.then181 ], [ %ioff.2630, %for.end178 ], [ %ioff.2, %if.end97 ], [ %ioff.2621, %for.cond105.if.end193.loopexit_crit_edge ], [ %ioff.2621, %for.cond105.preheader ]
  %joff.5 = phi i32 [ %joff.4.lcssa, %if.then181 ], [ %joff.4.lcssa, %for.end178 ], [ %add99, %if.end97 ], [ %130, %for.cond105.if.end193.loopexit_crit_edge ], [ %add99624, %for.cond105.preheader ]
  %ioff.5 = phi i32 [ %ioff.4.lcssa, %if.then181 ], [ %ioff.4.lcssa, %for.end178 ], [ %inc98, %if.end97 ], [ %131, %for.cond105.if.end193.loopexit_crit_edge ], [ %inc98623, %for.cond105.preheader ]
  call void @llvm.dbg.value(metadata !{i32 %joff.5}, i64 0, metadata !81), !dbg !291
  switch i32 %10, label %return [
    i32 1, label %if.end238.thread
    i32 2, label %if.end238.thread633
  ], !dbg !292

if.end238.thread:                                 ; preds = %if.end193
  %idxprom197 = sext i32 %ioff.2622 to i64, !dbg !293
  %arrayidx198 = getelementptr inbounds double* %call7, i64 %idxprom197, !dbg !293
  %132 = load double* %arrayidx198, align 8, !dbg !293, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %132}, i64 0, metadata !76), !dbg !293
  %idxprom199 = sext i32 %joff.5 to i64, !dbg !295
  %arrayidx200 = getelementptr inbounds double* %call7, i64 %idxprom199, !dbg !295
  %133 = load double* %arrayidx200, align 8, !dbg !295, !tbaa !159
  store double %133, double* %arrayidx198, align 8, !dbg !295, !tbaa !159
  store double %132, double* %arrayidx200, align 8, !dbg !296, !tbaa !159
  %kk.4533 = add nsw i32 %ii.jj, 1, !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !297
  %add246534 = add nsw i32 %9, %8, !dbg !297
  %cmp247535 = icmp slt i32 %kk.4533, %add246534, !dbg !297
  br i1 %cmp247535, label %for.body248.lr.ph, label %return, !dbg !297

if.end238.thread633:                              ; preds = %if.end193
  %mul209 = shl nsw i32 %ioff.2622, 1, !dbg !300
  %idxprom210 = sext i32 %mul209 to i64, !dbg !300
  %arrayidx211 = getelementptr inbounds double* %call7, i64 %idxprom210, !dbg !300
  %134 = load double* %arrayidx211, align 8, !dbg !300, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %134}, i64 0, metadata !76), !dbg !300
  %mul212 = shl nsw i32 %joff.5, 1, !dbg !302
  %idxprom213 = sext i32 %mul212 to i64, !dbg !302
  %arrayidx214 = getelementptr inbounds double* %call7, i64 %idxprom213, !dbg !302
  %135 = load double* %arrayidx214, align 8, !dbg !302, !tbaa !159
  store double %135, double* %arrayidx211, align 8, !dbg !302, !tbaa !159
  store double %134, double* %arrayidx214, align 8, !dbg !303, !tbaa !159
  %add222523 = or i32 %mul209, 1, !dbg !304
  %idxprom223 = sext i32 %add222523 to i64, !dbg !304
  %arrayidx224 = getelementptr inbounds double* %call7, i64 %idxprom223, !dbg !304
  %136 = load double* %arrayidx224, align 8, !dbg !304, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %136}, i64 0, metadata !76), !dbg !304
  %add226524 = or i32 %mul212, 1, !dbg !305
  %idxprom227 = sext i32 %add226524 to i64, !dbg !305
  %arrayidx228 = getelementptr inbounds double* %call7, i64 %idxprom227, !dbg !305
  %137 = load double* %arrayidx228, align 8, !dbg !305, !tbaa !159
  store double %137, double* %arrayidx224, align 8, !dbg !305, !tbaa !159
  store double %136, double* %arrayidx228, align 8, !dbg !306, !tbaa !159
  %kk.5540 = add nsw i32 %ii.jj, 1, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !307
  %add268541 = add nsw i32 %9, %8, !dbg !307
  %cmp269542 = icmp slt i32 %kk.5540, %add268541, !dbg !307
  br i1 %cmp269542, label %for.body270.lr.ph, label %return, !dbg !307

for.body270.lr.ph:                                ; preds = %if.end238.thread633
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !307
  %138 = add i32 %ioff.5, 1, !dbg !307
  %139 = sext i32 %138 to i64
  %140 = add i32 %joff.5, 1, !dbg !307
  %141 = sext i32 %140 to i64, !dbg !307
  br label %for.body270, !dbg !307

for.body248.lr.ph:                                ; preds = %if.end238.thread
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !297
  %142 = add i32 %ioff.5, 1, !dbg !297
  %143 = sext i32 %142 to i64
  %144 = add i32 %joff.5, 1, !dbg !297
  %145 = sext i32 %144 to i64, !dbg !297
  br label %for.body248, !dbg !297

for.body248:                                      ; preds = %for.body248.lr.ph, %for.body248
  %indvars.iv579 = phi i64 [ %145, %for.body248.lr.ph ], [ %indvars.iv.next580, %for.body248 ], !dbg !297
  %indvars.iv = phi i64 [ %143, %for.body248.lr.ph ], [ %indvars.iv.next, %for.body248 ]
  %kk.4538 = phi i32 [ %kk.4533, %for.body248.lr.ph ], [ %kk.4, %for.body248 ]
  %arrayidx250 = getelementptr inbounds double* %call7, i64 %indvars.iv, !dbg !310
  %146 = load double* %arrayidx250, align 8, !dbg !310, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %146}, i64 0, metadata !76), !dbg !310
  %arrayidx252 = getelementptr inbounds double* %call7, i64 %indvars.iv579, !dbg !312
  %147 = load double* %arrayidx252, align 8, !dbg !312, !tbaa !159
  store double %147, double* %arrayidx250, align 8, !dbg !312, !tbaa !159
  store double %146, double* %arrayidx252, align 8, !dbg !313, !tbaa !159
  %kk.4 = add nsw i32 %kk.4538, 1, !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !297
  %cmp247 = icmp slt i32 %kk.4, %add246534, !dbg !297
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !297
  %indvars.iv.next580 = add i64 %indvars.iv579, 1, !dbg !297
  br i1 %cmp247, label %for.body248, label %return, !dbg !297

for.body270:                                      ; preds = %for.body270.lr.ph, %for.body270
  %indvars.iv587 = phi i64 [ %141, %for.body270.lr.ph ], [ %indvars.iv.next588, %for.body270 ], !dbg !307
  %indvars.iv584 = phi i64 [ %139, %for.body270.lr.ph ], [ %indvars.iv.next585, %for.body270 ]
  %kk.5545 = phi i32 [ %kk.5540, %for.body270.lr.ph ], [ %kk.5, %for.body270 ]
  %148 = trunc i64 %indvars.iv584 to i32, !dbg !314
  %mul271 = shl nsw i32 %148, 1, !dbg !314
  %idxprom272 = sext i32 %mul271 to i64, !dbg !314
  %arrayidx273 = getelementptr inbounds double* %call7, i64 %idxprom272, !dbg !314
  %149 = load double* %arrayidx273, align 8, !dbg !314, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %149}, i64 0, metadata !76), !dbg !314
  %150 = trunc i64 %indvars.iv587 to i32, !dbg !316
  %mul274 = shl nsw i32 %150, 1, !dbg !316
  %idxprom275 = sext i32 %mul274 to i64, !dbg !316
  %arrayidx276 = getelementptr inbounds double* %call7, i64 %idxprom275, !dbg !316
  %151 = load double* %arrayidx276, align 8, !dbg !316, !tbaa !159
  store double %151, double* %arrayidx273, align 8, !dbg !316, !tbaa !159
  store double %149, double* %arrayidx276, align 8, !dbg !317, !tbaa !159
  %add284521 = or i32 %mul271, 1, !dbg !318
  %idxprom285 = sext i32 %add284521 to i64, !dbg !318
  %arrayidx286 = getelementptr inbounds double* %call7, i64 %idxprom285, !dbg !318
  %152 = load double* %arrayidx286, align 8, !dbg !318, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %152}, i64 0, metadata !76), !dbg !318
  %add288522 = or i32 %mul274, 1, !dbg !319
  %idxprom289 = sext i32 %add288522 to i64, !dbg !319
  %arrayidx290 = getelementptr inbounds double* %call7, i64 %idxprom289, !dbg !319
  %153 = load double* %arrayidx290, align 8, !dbg !319, !tbaa !159
  store double %153, double* %arrayidx286, align 8, !dbg !319, !tbaa !159
  store double %152, double* %arrayidx290, align 8, !dbg !320, !tbaa !159
  %kk.5 = add nsw i32 %kk.5545, 1, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !85), !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !87), !dbg !307
  %cmp269 = icmp slt i32 %kk.5, %add268541, !dbg !307
  %indvars.iv.next585 = add i64 %indvars.iv584, 1, !dbg !307
  %indvars.iv.next588 = add i64 %indvars.iv587, 1, !dbg !307
  br i1 %cmp269, label %for.body270, label %return, !dbg !307

if.else306:                                       ; preds = %if.end23
  %154 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !111
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %ii, i32 %jj, i32 %4) #5, !dbg !321
  call void @exit(i32 -1) #6, !dbg !323
  unreachable, !dbg !323

return:                                           ; preds = %if.end193, %if.end238.thread633, %for.body270, %if.end238.thread, %for.body248, %if.then25, %if.end
  ret void, !dbg !324
}

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_swapColumns(%struct._Chv* %chv, i32 %icol, i32 %jcol) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !56), !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %icol}, i64 0, metadata !57), !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !58), !dbg !327
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !65), !dbg !328
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !66), !dbg !328
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !67), !dbg !328
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !68), !dbg !328
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !70), !dbg !329
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !330
  %cmp1 = icmp slt i32 %icol, 0, !dbg !330
  %or.cond = or i1 %cmp, %cmp1, !dbg !330
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !330
  %or.cond386 = or i1 %or.cond, %cmp3, !dbg !330
  br i1 %or.cond386, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !331, !tbaa !111
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol) #5, !dbg !331
  call void @exit(i32 -1) #6, !dbg !333
  unreachable, !dbg !333

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %icol, %jcol, !dbg !334
  br i1 %cmp4, label %return, label %if.end6, !dbg !334

if.end6:                                          ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !335
  %call7 = call double* @Chv_entries(%struct._Chv* %chv) #5, !dbg !336
  call void @llvm.dbg.value(metadata !{double* %call7}, i64 0, metadata !60), !dbg !336
  %cmp8 = icmp eq double* %call7, null, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !338
  %.pre = load i32* %nD, align 4, !dbg !338, !tbaa !118
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !337

lor.lhs.false9:                                   ; preds = %if.end6
  %cmp10 = icmp sgt i32 %.pre, %icol, !dbg !337
  %cmp12 = icmp sgt i32 %.pre, %jcol, !dbg !337
  %or.cond387 = and i1 %cmp10, %cmp12, !dbg !337
  br i1 %or.cond387, label %if.end15, label %if.then13, !dbg !337

if.then13:                                        ; preds = %if.end6, %lor.lhs.false9
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !338, !tbaa !111
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !338
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([78 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, double* %call7, i32 %.pre) #5, !dbg !338
  call void @exit(i32 -1) #6, !dbg !340
  unreachable, !dbg !340

if.end15:                                         ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !341
  %2 = load i32* %type, align 4, !dbg !341, !tbaa !118
  %.off = add i32 %2, -1, !dbg !341
  %switch = icmp ult i32 %.off, 2, !dbg !341
  br i1 %switch, label %if.end23, label %if.then20, !dbg !341

if.then20:                                        ; preds = %if.end15
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !342, !tbaa !111
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([96 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, i32 %2) #5, !dbg !342
  call void @exit(i32 -1) #6, !dbg !344
  unreachable, !dbg !344

if.end23:                                         ; preds = %if.end15
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !345
  %4 = load i32* %symflag, align 4, !dbg !345, !tbaa !118
  switch i32 %4, label %if.else214 [
    i32 0, label %if.then28
    i32 1, label %if.then28
    i32 2, label %if.then31
  ], !dbg !345

if.then28:                                        ; preds = %if.end23, %if.end23
  call void @Chv_swapRowsAndColumns(%struct._Chv* %chv, i32 %icol, i32 %jcol) #7, !dbg !346
  br label %return, !dbg !348

if.then31:                                        ; preds = %if.end23
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5, !dbg !349
  %idxprom = sext i32 %icol to i64, !dbg !351
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !70), !dbg !351
  %5 = load i32** %colind, align 8, !dbg !351, !tbaa !111
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !351
  %6 = load i32* %arrayidx, align 4, !dbg !351, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !63), !dbg !351
  %idxprom32 = sext i32 %jcol to i64, !dbg !352
  %arrayidx33 = getelementptr inbounds i32* %5, i64 %idxprom32, !dbg !352
  %7 = load i32* %arrayidx33, align 4, !dbg !352, !tbaa !118
  store i32 %7, i32* %arrayidx, align 4, !dbg !352, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !70), !dbg !353
  store i32 %6, i32* %arrayidx33, align 4, !dbg !353, !tbaa !118
  %cmp38 = icmp sgt i32 %icol, %jcol, !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %icol}, i64 0, metadata !63), !dbg !355
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !57), !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %icol}, i64 0, metadata !58), !dbg !358
  %icol.jcol = select i1 %cmp38, i32 %icol, i32 %jcol, !dbg !354
  %jcol.icol = select i1 %cmp38, i32 %jcol, i32 %icol, !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !359
  %8 = load i32* %nD, align 4, !dbg !359, !tbaa !118
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !359
  %9 = load i32* %nL, align 4, !dbg !359, !tbaa !118
  %add = add i32 %8, -1, !dbg !359
  %sub = add i32 %add, %9, !dbg !359
  %add41 = add nsw i32 %sub, %jcol.icol, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !62), !dbg !359
  %add44 = add nsw i32 %sub, %icol.jcol, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %add44}, i64 0, metadata !64), !dbg !360
  %mul = shl i32 %8, 1, !dbg !361
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !68), !dbg !361
  %10 = load i32* %nU, align 4, !dbg !361, !tbaa !118
  %add45 = add i32 %9, -3, !dbg !361
  %add46 = add i32 %add45, %mul, !dbg !361
  %sub47 = add i32 %add46, %10, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %sub47}, i64 0, metadata !69), !dbg !361
  %11 = load i32* %type, align 4, !dbg !362, !tbaa !118
  switch i32 %11, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond101.preheader
  ], !dbg !362

for.cond101.preheader:                            ; preds = %if.then31
  %cmp102420 = icmp sgt i32 %jcol.icol, 0, !dbg !363
  br i1 %cmp102420, label %for.body103.lr.ph, label %for.cond138.preheader, !dbg !363

for.body103.lr.ph:                                ; preds = %for.cond101.preheader
  %12 = add i32 %9, %10, !dbg !363
  %13 = shl i32 %8, 1, !dbg !363
  %14 = add i32 %12, %13, !dbg !363
  %15 = add i32 %14, -3, !dbg !363
  %16 = sext i32 %15 to i64
  %17 = xor i32 %jcol, -1, !dbg !363
  %18 = xor i32 %icol, -1, !dbg !363
  %19 = icmp sgt i32 %17, %18, !dbg !363
  %smax453 = select i1 %19, i32 %17, i32 %18, !dbg !363
  %20 = shl i32 %smax453, 1, !dbg !363
  %21 = add i32 %14, %20, !dbg !363
  %22 = icmp sgt i32 %jcol, %icol, !dbg !363
  %smax454 = select i1 %22, i32 %jcol, i32 %icol, !dbg !363
  %23 = add i32 %10, %smax454, !dbg !363
  %24 = sub i32 -2, %smax453, !dbg !363
  %25 = add i32 %14, -5, !dbg !363
  %26 = mul i32 %24, %25, !dbg !363
  %27 = add i32 %23, %26, !dbg !363
  %28 = mul i32 %8, 3, !dbg !363
  %29 = add i32 %27, %28, !dbg !363
  %30 = shl i32 %9, 1, !dbg !363
  %31 = add i32 %29, %30, !dbg !363
  %32 = sub i32 -3, %smax453, !dbg !363
  %33 = mul i32 %24, %32, !dbg !363
  %34 = and i32 %33, -2, !dbg !363
  %35 = add i32 %10, %26, !dbg !363
  %36 = add i32 %35, %28, !dbg !363
  %37 = add i32 %36, %30, !dbg !363
  %38 = add i32 %37, -5, !dbg !363
  %39 = sub i32 %38, %smax453, !dbg !363
  %40 = xor i32 %smax453, -1, !dbg !363
  br label %for.body103, !dbg !363

for.cond.preheader:                               ; preds = %if.then31
  %cmp51399 = icmp sgt i32 %jcol.icol, 0, !dbg !366
  br i1 %cmp51399, label %for.body.lr.ph, label %for.cond63.preheader, !dbg !366

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %41 = add i32 %9, %10, !dbg !366
  %42 = shl i32 %8, 1, !dbg !366
  %43 = add i32 %41, %42, !dbg !366
  %44 = add i32 %43, -3, !dbg !366
  %45 = sext i32 %44 to i64
  %46 = xor i32 %jcol, -1, !dbg !366
  %47 = xor i32 %icol, -1, !dbg !366
  %48 = icmp sgt i32 %46, %47, !dbg !366
  %smax438 = select i1 %48, i32 %46, i32 %47, !dbg !366
  %49 = shl i32 %smax438, 1, !dbg !366
  %50 = add i32 %43, %49, !dbg !366
  %51 = icmp sgt i32 %jcol, %icol, !dbg !366
  %smax439 = select i1 %51, i32 %jcol, i32 %icol, !dbg !366
  %52 = add i32 %10, %smax439, !dbg !366
  %53 = sub i32 -2, %smax438, !dbg !366
  %54 = add i32 %43, -5, !dbg !366
  %55 = mul i32 %53, %54, !dbg !366
  %56 = add i32 %52, %55, !dbg !366
  %57 = mul i32 %8, 3, !dbg !366
  %58 = add i32 %56, %57, !dbg !366
  %59 = shl i32 %9, 1, !dbg !366
  %60 = add i32 %58, %59, !dbg !366
  %61 = sub i32 -3, %smax438, !dbg !366
  %62 = mul i32 %53, %61, !dbg !366
  %63 = and i32 %62, -2, !dbg !366
  %64 = add i32 %10, %55, !dbg !366
  %65 = add i32 %64, %57, !dbg !366
  %66 = add i32 %65, %59, !dbg !366
  %67 = add i32 %66, -5, !dbg !366
  %68 = sub i32 %67, %smax438, !dbg !366
  %69 = xor i32 %smax438, -1, !dbg !366
  br label %for.body, !dbg !366

for.cond.for.cond63.preheader_crit_edge:          ; preds = %for.body
  %70 = add i32 %50, -1, !dbg !366
  %71 = add i32 %60, -4, !dbg !366
  %72 = sub i32 %71, %63, !dbg !366
  %73 = sub i32 %68, %63, !dbg !366
  br label %for.cond63.preheader, !dbg !366

for.cond63.preheader:                             ; preds = %for.cond.for.cond63.preheader_crit_edge, %for.cond.preheader
  %stride.0.lcssa = phi i32 [ %70, %for.cond.for.cond63.preheader_crit_edge ], [ %sub47, %for.cond.preheader ]
  %joff.0.lcssa = phi i32 [ %72, %for.cond.for.cond63.preheader_crit_edge ], [ %add44, %for.cond.preheader ]
  %ioff.0.lcssa = phi i32 [ %73, %for.cond.for.cond63.preheader_crit_edge ], [ %add41, %for.cond.preheader ]
  %cmp64393 = icmp slt i32 %jcol.icol, %icol.jcol, !dbg !369
  br i1 %cmp64393, label %for.body65.lr.ph, label %for.cond80.preheader, !dbg !369

for.body65.lr.ph:                                 ; preds = %for.cond63.preheader
  %74 = sext i32 %stride.0.lcssa to i64
  %75 = sext i32 %ioff.0.lcssa to i64, !dbg !369
  %76 = icmp sgt i32 %jcol, %icol, !dbg !369
  %smax = select i1 %76, i32 %jcol, i32 %icol, !dbg !369
  %77 = xor i32 %jcol, -1, !dbg !369
  %78 = xor i32 %icol, -1, !dbg !369
  %79 = icmp sgt i32 %77, %78, !dbg !369
  %smax434 = select i1 %79, i32 %77, i32 %78, !dbg !369
  %80 = add i32 %smax, %smax434, !dbg !369
  %81 = add i32 %stride.0.lcssa, -2, !dbg !369
  %82 = mul i32 %80, %81, !dbg !369
  %83 = add i32 %80, -1, !dbg !369
  %84 = mul i32 %80, %83, !dbg !369
  %85 = and i32 %84, -2, !dbg !369
  %86 = add i32 %ioff.0.lcssa, -1, !dbg !369
  br label %for.body65, !dbg !369

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv435 = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next436, %for.body ]
  %joff.0402 = phi i32 [ %add44, %for.body.lr.ph ], [ %add61, %for.body ]
  %ioff.0401 = phi i32 [ %add41, %for.body.lr.ph ], [ %add60, %for.body ]
  %ii.0400 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom52 = sext i32 %ioff.0401 to i64, !dbg !371
  %arrayidx53 = getelementptr inbounds double* %call7, i64 %idxprom52, !dbg !371
  %87 = load double* %arrayidx53, align 8, !dbg !371, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %87}, i64 0, metadata !59), !dbg !371
  %idxprom54 = sext i32 %joff.0402 to i64, !dbg !373
  %arrayidx55 = getelementptr inbounds double* %call7, i64 %idxprom54, !dbg !373
  %88 = load double* %arrayidx55, align 8, !dbg !373, !tbaa !159
  store double %88, double* %arrayidx53, align 8, !dbg !373, !tbaa !159
  store double %87, double* %arrayidx55, align 8, !dbg !374, !tbaa !159
  %89 = trunc i64 %indvars.iv435 to i32, !dbg !375
  %add60 = add nsw i32 %89, %ioff.0401, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !62), !dbg !375
  %add61 = add nsw i32 %89, %joff.0402, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %72}, i64 0, metadata !64), !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !69), !dbg !375
  %inc = add nsw i32 %ii.0400, 1, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !61), !dbg !366
  %indvars.iv.next436 = add i64 %indvars.iv435, -2, !dbg !366
  %exitcond = icmp eq i32 %inc, %69, !dbg !366
  br i1 %exitcond, label %for.cond.for.cond63.preheader_crit_edge, label %for.body, !dbg !366

for.cond63.for.cond80.preheader_crit_edge:        ; preds = %for.body65
  %90 = add i32 %joff.0.lcssa, %stride.0.lcssa, !dbg !369
  %91 = add i32 %90, %82, !dbg !369
  %92 = sub i32 %91, %85, !dbg !369
  %93 = sub i32 %86, %80, !dbg !369
  br label %for.cond80.preheader, !dbg !369

for.cond80.preheader:                             ; preds = %for.cond63.for.cond80.preheader_crit_edge, %for.cond63.preheader
  %joff.1.lcssa = phi i32 [ %92, %for.cond63.for.cond80.preheader_crit_edge ], [ %joff.0.lcssa, %for.cond63.preheader ]
  %ioff.1.lcssa = phi i32 [ %93, %for.cond63.for.cond80.preheader_crit_edge ], [ %ioff.0.lcssa, %for.cond63.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !376
  %add81388 = add nsw i32 %9, %8, !dbg !376
  %cmp82389 = icmp slt i32 %icol.jcol, %add81388, !dbg !376
  br i1 %cmp82389, label %for.body83.lr.ph, label %return, !dbg !376

for.body83.lr.ph:                                 ; preds = %for.cond80.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !376
  %94 = sext i32 %joff.1.lcssa to i64
  %95 = sext i32 %ioff.1.lcssa to i64, !dbg !376
  br label %for.body83, !dbg !376

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv432 = phi i64 [ %75, %for.body65.lr.ph ], [ %indvars.iv.next433, %for.body65 ], !dbg !369
  %indvars.iv430 = phi i64 [ %74, %for.body65.lr.ph ], [ %indvars.iv.next431, %for.body65 ]
  %joff.1396 = phi i32 [ %joff.0.lcssa, %for.body65.lr.ph ], [ %add75, %for.body65 ]
  %ii.1394 = phi i32 [ %jcol.icol, %for.body65.lr.ph ], [ %inc78, %for.body65 ]
  %arrayidx67 = getelementptr inbounds double* %call7, i64 %indvars.iv432, !dbg !378
  %96 = load double* %arrayidx67, align 8, !dbg !378, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %96}, i64 0, metadata !59), !dbg !378
  %idxprom68 = sext i32 %joff.1396 to i64, !dbg !380
  %arrayidx69 = getelementptr inbounds double* %call7, i64 %idxprom68, !dbg !380
  %97 = load double* %arrayidx69, align 8, !dbg !380, !tbaa !159
  store double %97, double* %arrayidx67, align 8, !dbg !380, !tbaa !159
  store double %96, double* %arrayidx69, align 8, !dbg !381, !tbaa !159
  %indvars.iv.next433 = add i64 %indvars.iv432, -1, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %93}, i64 0, metadata !62), !dbg !382
  %98 = trunc i64 %indvars.iv430 to i32, !dbg !382
  %add75 = add nsw i32 %98, %joff.1396, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %92}, i64 0, metadata !64), !dbg !382
  %indvars.iv.next431 = add i64 %indvars.iv430, -2, !dbg !369
  %inc78 = add nsw i32 %ii.1394, 1, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %inc78}, i64 0, metadata !61), !dbg !369
  %cmp64 = icmp slt i32 %inc78, %icol.jcol, !dbg !369
  br i1 %cmp64, label %for.body65, label %for.cond63.for.cond80.preheader_crit_edge, !dbg !369

for.body83:                                       ; preds = %for.body83.lr.ph, %for.body83
  %indvars.iv428 = phi i64 [ %95, %for.body83.lr.ph ], [ %indvars.iv.next429, %for.body83 ], !dbg !376
  %indvars.iv = phi i64 [ %94, %for.body83.lr.ph ], [ %indvars.iv.next, %for.body83 ]
  %ii.2390 = phi i32 [ %icol.jcol, %for.body83.lr.ph ], [ %inc95, %for.body83 ]
  %arrayidx85 = getelementptr inbounds double* %call7, i64 %indvars.iv428, !dbg !383
  %99 = load double* %arrayidx85, align 8, !dbg !383, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %99}, i64 0, metadata !59), !dbg !383
  %arrayidx87 = getelementptr inbounds double* %call7, i64 %indvars.iv, !dbg !385
  %100 = load double* %arrayidx87, align 8, !dbg !385, !tbaa !159
  store double %100, double* %arrayidx85, align 8, !dbg !385, !tbaa !159
  store double %99, double* %arrayidx87, align 8, !dbg !386, !tbaa !159
  %indvars.iv.next429 = add i64 %indvars.iv428, -1, !dbg !376
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !376
  %inc95 = add nsw i32 %ii.2390, 1, !dbg !376
  call void @llvm.dbg.value(metadata !{i32 %inc95}, i64 0, metadata !61), !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !376
  %cmp82 = icmp slt i32 %inc95, %add81388, !dbg !376
  br i1 %cmp82, label %for.body83, label %return, !dbg !376

for.cond101.for.cond138.preheader_crit_edge:      ; preds = %for.body103
  %101 = add i32 %21, -1, !dbg !363
  %102 = add i32 %31, -4, !dbg !363
  %103 = sub i32 %102, %34, !dbg !363
  %104 = sub i32 %39, %34, !dbg !363
  br label %for.cond138.preheader, !dbg !363

for.cond138.preheader:                            ; preds = %for.cond101.for.cond138.preheader_crit_edge, %for.cond101.preheader
  %stride.2.lcssa = phi i32 [ %101, %for.cond101.for.cond138.preheader_crit_edge ], [ %sub47, %for.cond101.preheader ]
  %joff.3.lcssa = phi i32 [ %103, %for.cond101.for.cond138.preheader_crit_edge ], [ %add44, %for.cond101.preheader ]
  %ioff.3.lcssa = phi i32 [ %104, %for.cond101.for.cond138.preheader_crit_edge ], [ %add41, %for.cond101.preheader ]
  %cmp139413 = icmp slt i32 %jcol.icol, %icol.jcol, !dbg !387
  br i1 %cmp139413, label %for.body140.lr.ph, label %for.cond175.preheader, !dbg !387

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %105 = sext i32 %stride.2.lcssa to i64
  %106 = sext i32 %ioff.3.lcssa to i64, !dbg !387
  %107 = icmp sgt i32 %jcol, %icol, !dbg !387
  %smax448 = select i1 %107, i32 %jcol, i32 %icol, !dbg !387
  %108 = xor i32 %jcol, -1, !dbg !387
  %109 = xor i32 %icol, -1, !dbg !387
  %110 = icmp sgt i32 %108, %109, !dbg !387
  %smax449 = select i1 %110, i32 %108, i32 %109, !dbg !387
  %111 = add i32 %smax448, %smax449, !dbg !387
  %112 = add i32 %stride.2.lcssa, -2, !dbg !387
  %113 = mul i32 %111, %112, !dbg !387
  %114 = add i32 %111, -1, !dbg !387
  %115 = mul i32 %111, %114, !dbg !387
  %116 = and i32 %115, -2, !dbg !387
  %117 = add i32 %ioff.3.lcssa, -1, !dbg !387
  br label %for.body140, !dbg !387

for.body103:                                      ; preds = %for.body103, %for.body103.lr.ph
  %indvars.iv450 = phi i64 [ %16, %for.body103.lr.ph ], [ %indvars.iv.next451, %for.body103 ]
  %joff.3423 = phi i32 [ %add44, %for.body103.lr.ph ], [ %add133, %for.body103 ]
  %ioff.3422 = phi i32 [ %add41, %for.body103.lr.ph ], [ %add132, %for.body103 ]
  %ii.3421 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc136, %for.body103 ]
  %mul104 = shl nsw i32 %ioff.3422, 1, !dbg !389
  %idxprom105 = sext i32 %mul104 to i64, !dbg !389
  %arrayidx106 = getelementptr inbounds double* %call7, i64 %idxprom105, !dbg !389
  %118 = load double* %arrayidx106, align 8, !dbg !389, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %118}, i64 0, metadata !59), !dbg !389
  %mul107 = shl nsw i32 %joff.3423, 1, !dbg !391
  %idxprom108 = sext i32 %mul107 to i64, !dbg !391
  %arrayidx109 = getelementptr inbounds double* %call7, i64 %idxprom108, !dbg !391
  %119 = load double* %arrayidx109, align 8, !dbg !391, !tbaa !159
  store double %119, double* %arrayidx106, align 8, !dbg !391, !tbaa !159
  store double %118, double* %arrayidx109, align 8, !dbg !392, !tbaa !159
  %add117384 = or i32 %mul104, 1, !dbg !393
  %idxprom118 = sext i32 %add117384 to i64, !dbg !393
  %arrayidx119 = getelementptr inbounds double* %call7, i64 %idxprom118, !dbg !393
  %120 = load double* %arrayidx119, align 8, !dbg !393, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %120}, i64 0, metadata !59), !dbg !393
  %add121385 = or i32 %mul107, 1, !dbg !394
  %idxprom122 = sext i32 %add121385 to i64, !dbg !394
  %arrayidx123 = getelementptr inbounds double* %call7, i64 %idxprom122, !dbg !394
  %121 = load double* %arrayidx123, align 8, !dbg !394, !tbaa !159
  store double %121, double* %arrayidx119, align 8, !dbg !394, !tbaa !159
  store double %120, double* %arrayidx123, align 8, !dbg !395, !tbaa !159
  %122 = trunc i64 %indvars.iv450 to i32, !dbg !396
  %add132 = add nsw i32 %122, %ioff.3422, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !62), !dbg !396
  %add133 = add nsw i32 %122, %joff.3423, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %103}, i64 0, metadata !64), !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %101}, i64 0, metadata !69), !dbg !396
  %inc136 = add nsw i32 %ii.3421, 1, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !61), !dbg !363
  %indvars.iv.next451 = add i64 %indvars.iv450, -2, !dbg !363
  %exitcond455 = icmp eq i32 %inc136, %40, !dbg !363
  br i1 %exitcond455, label %for.cond101.for.cond138.preheader_crit_edge, label %for.body103, !dbg !363

for.cond138.for.cond175.preheader_crit_edge:      ; preds = %for.body140
  %123 = add i32 %joff.3.lcssa, %stride.2.lcssa, !dbg !387
  %124 = add i32 %123, %113, !dbg !387
  %125 = sub i32 %124, %116, !dbg !387
  %126 = sub i32 %117, %111, !dbg !387
  br label %for.cond175.preheader, !dbg !387

for.cond175.preheader:                            ; preds = %for.cond138.for.cond175.preheader_crit_edge, %for.cond138.preheader
  %joff.4.lcssa = phi i32 [ %125, %for.cond138.for.cond175.preheader_crit_edge ], [ %joff.3.lcssa, %for.cond138.preheader ]
  %ioff.4.lcssa = phi i32 [ %126, %for.cond138.for.cond175.preheader_crit_edge ], [ %ioff.3.lcssa, %for.cond138.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !397
  %add176408 = add nsw i32 %9, %8, !dbg !397
  %cmp177409 = icmp slt i32 %icol.jcol, %add176408, !dbg !397
  br i1 %cmp177409, label %for.body178.lr.ph, label %return, !dbg !397

for.body178.lr.ph:                                ; preds = %for.cond175.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !397
  %127 = sext i32 %joff.4.lcssa to i64
  %128 = sext i32 %ioff.4.lcssa to i64, !dbg !397
  br label %for.body178, !dbg !397

for.body140:                                      ; preds = %for.body140.lr.ph, %for.body140
  %indvars.iv446 = phi i64 [ %106, %for.body140.lr.ph ], [ %indvars.iv.next447, %for.body140 ], !dbg !387
  %indvars.iv444 = phi i64 [ %105, %for.body140.lr.ph ], [ %indvars.iv.next445, %for.body140 ]
  %joff.4416 = phi i32 [ %joff.3.lcssa, %for.body140.lr.ph ], [ %add170, %for.body140 ]
  %ii.4414 = phi i32 [ %jcol.icol, %for.body140.lr.ph ], [ %inc173, %for.body140 ]
  %129 = trunc i64 %indvars.iv446 to i32, !dbg !399
  %mul141 = shl nsw i32 %129, 1, !dbg !399
  %idxprom142 = sext i32 %mul141 to i64, !dbg !399
  %arrayidx143 = getelementptr inbounds double* %call7, i64 %idxprom142, !dbg !399
  %130 = load double* %arrayidx143, align 8, !dbg !399, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %130}, i64 0, metadata !59), !dbg !399
  %mul144 = shl nsw i32 %joff.4416, 1, !dbg !401
  %idxprom145 = sext i32 %mul144 to i64, !dbg !401
  %arrayidx146 = getelementptr inbounds double* %call7, i64 %idxprom145, !dbg !401
  %131 = load double* %arrayidx146, align 8, !dbg !401, !tbaa !159
  store double %131, double* %arrayidx143, align 8, !dbg !401, !tbaa !159
  store double %130, double* %arrayidx146, align 8, !dbg !402, !tbaa !159
  %add154382 = or i32 %mul141, 1, !dbg !403
  %idxprom155 = sext i32 %add154382 to i64, !dbg !403
  %arrayidx156 = getelementptr inbounds double* %call7, i64 %idxprom155, !dbg !403
  %132 = load double* %arrayidx156, align 8, !dbg !403, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %132}, i64 0, metadata !59), !dbg !403
  %add158383 = or i32 %mul144, 1, !dbg !404
  %idxprom159 = sext i32 %add158383 to i64, !dbg !404
  %arrayidx160 = getelementptr inbounds double* %call7, i64 %idxprom159, !dbg !404
  %133 = load double* %arrayidx160, align 8, !dbg !404, !tbaa !159
  store double %133, double* %arrayidx156, align 8, !dbg !404, !tbaa !159
  store double %132, double* %arrayidx160, align 8, !dbg !405, !tbaa !159
  %indvars.iv.next447 = add i64 %indvars.iv446, -1, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !62), !dbg !406
  %134 = trunc i64 %indvars.iv444 to i32, !dbg !406
  %add170 = add nsw i32 %134, %joff.4416, !dbg !406
  call void @llvm.dbg.value(metadata !{i32 %125}, i64 0, metadata !64), !dbg !406
  %indvars.iv.next445 = add i64 %indvars.iv444, -2, !dbg !387
  %inc173 = add nsw i32 %ii.4414, 1, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %inc173}, i64 0, metadata !61), !dbg !387
  %cmp139 = icmp slt i32 %inc173, %icol.jcol, !dbg !387
  br i1 %cmp139, label %for.body140, label %for.cond138.for.cond175.preheader_crit_edge, !dbg !387

for.body178:                                      ; preds = %for.body178.lr.ph, %for.body178
  %indvars.iv442 = phi i64 [ %128, %for.body178.lr.ph ], [ %indvars.iv.next443, %for.body178 ], !dbg !397
  %indvars.iv440 = phi i64 [ %127, %for.body178.lr.ph ], [ %indvars.iv.next441, %for.body178 ]
  %ii.5410 = phi i32 [ %icol.jcol, %for.body178.lr.ph ], [ %inc210, %for.body178 ]
  %135 = trunc i64 %indvars.iv442 to i32, !dbg !407
  %mul179 = shl nsw i32 %135, 1, !dbg !407
  %idxprom180 = sext i32 %mul179 to i64, !dbg !407
  %arrayidx181 = getelementptr inbounds double* %call7, i64 %idxprom180, !dbg !407
  %136 = load double* %arrayidx181, align 8, !dbg !407, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %136}, i64 0, metadata !59), !dbg !407
  %137 = trunc i64 %indvars.iv440 to i32, !dbg !409
  %mul182 = shl nsw i32 %137, 1, !dbg !409
  %idxprom183 = sext i32 %mul182 to i64, !dbg !409
  %arrayidx184 = getelementptr inbounds double* %call7, i64 %idxprom183, !dbg !409
  %138 = load double* %arrayidx184, align 8, !dbg !409, !tbaa !159
  store double %138, double* %arrayidx181, align 8, !dbg !409, !tbaa !159
  store double %136, double* %arrayidx184, align 8, !dbg !410, !tbaa !159
  %add192380 = or i32 %mul179, 1, !dbg !411
  %idxprom193 = sext i32 %add192380 to i64, !dbg !411
  %arrayidx194 = getelementptr inbounds double* %call7, i64 %idxprom193, !dbg !411
  %139 = load double* %arrayidx194, align 8, !dbg !411, !tbaa !159
  call void @llvm.dbg.value(metadata !{double %139}, i64 0, metadata !59), !dbg !411
  %add196381 = or i32 %mul182, 1, !dbg !412
  %idxprom197 = sext i32 %add196381 to i64, !dbg !412
  %arrayidx198 = getelementptr inbounds double* %call7, i64 %idxprom197, !dbg !412
  %140 = load double* %arrayidx198, align 8, !dbg !412, !tbaa !159
  store double %140, double* %arrayidx194, align 8, !dbg !412, !tbaa !159
  store double %139, double* %arrayidx198, align 8, !dbg !413, !tbaa !159
  %indvars.iv.next443 = add i64 %indvars.iv442, -1, !dbg !397
  %indvars.iv.next441 = add i64 %indvars.iv440, -1, !dbg !397
  %inc210 = add nsw i32 %ii.5410, 1, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %inc210}, i64 0, metadata !61), !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !66), !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !67), !dbg !397
  %cmp177 = icmp slt i32 %inc210, %add176408, !dbg !397
  br i1 %cmp177, label %for.body178, label %return, !dbg !397

if.else214:                                       ; preds = %if.end23
  %141 = load %struct._IO_FILE** @stderr, align 8, !dbg !414, !tbaa !111
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %icol, i32 %jcol, i32 %4) #5, !dbg !414
  call void @exit(i32 -1) #6, !dbg !416
  unreachable, !dbg !416

return:                                           ; preds = %for.cond175.preheader, %for.body178, %for.cond80.preheader, %for.body83, %if.then31, %if.then28, %if.end
  ret void, !dbg !417
}

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !54, metadata !71}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_swapRows", metadata !"Chv_swapRows", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32)* @Chv_swapRows, null, null, metadata !38, i32 20} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 20] [Chv_swapRows]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53}
!39 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 17]
!40 = metadata !{i32 786689, metadata !4, metadata !"irow", metadata !5, i32 33554450, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 18]
!41 = metadata !{i32 786689, metadata !4, metadata !"jrow", metadata !5, i32 50331667, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jrow] [line 19]
!42 = metadata !{i32 786688, metadata !4, metadata !"dtmp", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtmp] [line 21]
!43 = metadata !{i32 786688, metadata !4, metadata !"entries", metadata !5, i32 22, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 22]
!44 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 23]
!45 = metadata !{i32 786688, metadata !4, metadata !"ioff", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 23]
!46 = metadata !{i32 786688, metadata !4, metadata !"itmp", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itmp] [line 23]
!47 = metadata !{i32 786688, metadata !4, metadata !"joff", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 23]
!48 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 23]
!49 = metadata !{i32 786688, metadata !4, metadata !"nL", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 23]
!50 = metadata !{i32 786688, metadata !4, metadata !"nrow", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 23]
!51 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 23]
!52 = metadata !{i32 786688, metadata !4, metadata !"stride", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 23]
!53 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 24, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 24]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_swapColumns", metadata !"Chv_swapColumns", metadata !"", i32 184, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32)* @Chv_swapColumns, null, null, metadata !55, i32 188} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 188] [Chv_swapColumns]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!56 = metadata !{i32 786689, metadata !54, metadata !"chv", metadata !5, i32 16777401, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 185]
!57 = metadata !{i32 786689, metadata !54, metadata !"icol", metadata !5, i32 33554618, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icol] [line 186]
!58 = metadata !{i32 786689, metadata !54, metadata !"jcol", metadata !5, i32 50331835, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 187]
!59 = metadata !{i32 786688, metadata !54, metadata !"dtmp", metadata !5, i32 189, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtmp] [line 189]
!60 = metadata !{i32 786688, metadata !54, metadata !"entries", metadata !5, i32 190, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 190]
!61 = metadata !{i32 786688, metadata !54, metadata !"ii", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 191]
!62 = metadata !{i32 786688, metadata !54, metadata !"ioff", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 191]
!63 = metadata !{i32 786688, metadata !54, metadata !"itmp", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itmp] [line 191]
!64 = metadata !{i32 786688, metadata !54, metadata !"joff", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 191]
!65 = metadata !{i32 786688, metadata !54, metadata !"ncol", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 191]
!66 = metadata !{i32 786688, metadata !54, metadata !"nD", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 191]
!67 = metadata !{i32 786688, metadata !54, metadata !"nL", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 191]
!68 = metadata !{i32 786688, metadata !54, metadata !"nU", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 191]
!69 = metadata !{i32 786688, metadata !54, metadata !"stride", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 191]
!70 = metadata !{i32 786688, metadata !54, metadata !"colind", metadata !5, i32 192, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 192]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_swapRowsAndColumns", metadata !"Chv_swapRowsAndColumns", metadata !"", i32 319, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32)* @Chv_swapRowsAndColumns, null, null, metadata !72, i32 323} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 323] [Chv_swapRowsAndColumns]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !95, metadata !96, metadata !100, metadata !101, metadata !102}
!73 = metadata !{i32 786689, metadata !71, metadata !"chv", metadata !5, i32 16777536, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 320]
!74 = metadata !{i32 786689, metadata !71, metadata !"ii", metadata !5, i32 33554753, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ii] [line 321]
!75 = metadata !{i32 786689, metadata !71, metadata !"jj", metadata !5, i32 50331970, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jj] [line 322]
!76 = metadata !{i32 786688, metadata !71, metadata !"dtmp", metadata !5, i32 324, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtmp] [line 324]
!77 = metadata !{i32 786688, metadata !71, metadata !"entries", metadata !5, i32 325, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 325]
!78 = metadata !{i32 786688, metadata !71, metadata !"iiloc", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iiloc] [line 326]
!79 = metadata !{i32 786688, metadata !71, metadata !"ioff", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 326]
!80 = metadata !{i32 786688, metadata !71, metadata !"itmp", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itmp] [line 326]
!81 = metadata !{i32 786688, metadata !71, metadata !"jjloc", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jjloc] [line 326]
!82 = metadata !{i32 786688, metadata !71, metadata !"joff", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 326]
!83 = metadata !{i32 786688, metadata !71, metadata !"kk", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 326]
!84 = metadata !{i32 786688, metadata !71, metadata !"ncol", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 326]
!85 = metadata !{i32 786688, metadata !71, metadata !"nD", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 326]
!86 = metadata !{i32 786688, metadata !71, metadata !"nL", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 326]
!87 = metadata !{i32 786688, metadata !71, metadata !"nU", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 326]
!88 = metadata !{i32 786688, metadata !71, metadata !"stride", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 326]
!89 = metadata !{i32 786688, metadata !71, metadata !"colind", metadata !5, i32 327, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 327]
!90 = metadata !{i32 786688, metadata !91, metadata !"aiikk", metadata !5, i32 431, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aiikk] [line 431]
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 430, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 430, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 429, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!94 = metadata !{i32 786443, metadata !1, metadata !71, i32 365, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!95 = metadata !{i32 786688, metadata !91, metadata !"akkjj", metadata !5, i32 431, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [akkjj] [line 431]
!96 = metadata !{i32 786688, metadata !97, metadata !"imagiikk", metadata !5, i32 445, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imagiikk] [line 445]
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 444, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!98 = metadata !{i32 786443, metadata !1, metadata !99, i32 444, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!99 = metadata !{i32 786443, metadata !1, metadata !94, i32 443, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!100 = metadata !{i32 786688, metadata !97, metadata !"imagkkjj", metadata !5, i32 445, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imagkkjj] [line 445]
!101 = metadata !{i32 786688, metadata !97, metadata !"realiikk", metadata !5, i32 445, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [realiikk] [line 445]
!102 = metadata !{i32 786688, metadata !97, metadata !"realkkjj", metadata !5, i32 445, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [realkkjj] [line 445]
!103 = metadata !{i32 17, i32 0, metadata !4, null}
!104 = metadata !{i32 18, i32 0, metadata !4, null}
!105 = metadata !{i32 19, i32 0, metadata !4, null}
!106 = metadata !{i32 23, i32 0, metadata !4, null}
!107 = metadata !{i32 24, i32 0, metadata !4, null}
!108 = metadata !{i32 30, i32 0, metadata !4, null}
!109 = metadata !{i32 31, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!111 = metadata !{metadata !"any pointer", metadata !112}
!112 = metadata !{metadata !"omnipotent char", metadata !113}
!113 = metadata !{metadata !"Simple C/C++ TBAA"}
!114 = metadata !{i32 33, i32 0, metadata !110, null}
!115 = metadata !{i32 40, i32 0, metadata !4, null}
!116 = metadata !{i32 43, i32 0, metadata !4, null}
!117 = metadata !{i32 44, i32 0, metadata !4, null}
!118 = metadata !{metadata !"int", metadata !112}
!119 = metadata !{i32 45, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!121 = metadata !{i32 47, i32 0, metadata !120, null}
!122 = metadata !{i32 49, i32 0, metadata !4, null}
!123 = metadata !{i32 55, i32 0, metadata !4, null}
!124 = metadata !{i32 56, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!126 = metadata !{i32 59, i32 0, metadata !125, null}
!127 = metadata !{i32 61, i32 0, metadata !4, null}
!128 = metadata !{i32 62, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!130 = metadata !{i32 65, i32 0, metadata !129, null}
!131 = metadata !{i32 67, i32 0, metadata !4, null}
!132 = metadata !{i32 73, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !4, i32 67, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!134 = metadata !{i32 74, i32 0, metadata !133, null}
!135 = metadata !{i32 84, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!137 = metadata !{i32 92, i32 0, metadata !136, null}
!138 = metadata !{i32 93, i32 0, metadata !136, null}
!139 = metadata !{i32 94, i32 0, metadata !136, null}
!140 = metadata !{i32 107, i32 0, metadata !136, null}
!141 = metadata !{i32 108, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !136, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!143 = metadata !{i32 109, i32 0, metadata !142, null}
!144 = metadata !{i32 110, i32 0, metadata !142, null}
!145 = metadata !{i32 117, i32 0, metadata !136, null}
!146 = metadata !{i32 118, i32 0, metadata !136, null}
!147 = metadata !{i32 119, i32 0, metadata !136, null}
!148 = metadata !{i32 120, i32 0, metadata !136, null}
!149 = metadata !{i32 140, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 140, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!151 = metadata !{i32 786443, metadata !1, metadata !136, i32 139, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!152 = metadata !{i32 121, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 121, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!154 = metadata !{i32 786443, metadata !1, metadata !136, i32 120, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!155 = metadata !{i32 127, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !154, i32 127, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!157 = metadata !{i32 122, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !153, i32 121, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!159 = metadata !{metadata !"double", metadata !112}
!160 = metadata !{i32 123, i32 0, metadata !158, null}
!161 = metadata !{i32 124, i32 0, metadata !158, null}
!162 = metadata !{i32 125, i32 0, metadata !158, null}
!163 = metadata !{i32 133, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !154, i32 133, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!165 = metadata !{i32 128, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !156, i32 127, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!167 = metadata !{i32 129, i32 0, metadata !166, null}
!168 = metadata !{i32 130, i32 0, metadata !166, null}
!169 = metadata !{i32 131, i32 0, metadata !166, null}
!170 = metadata !{i32 134, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !164, i32 133, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!172 = metadata !{i32 135, i32 0, metadata !171, null}
!173 = metadata !{i32 136, i32 0, metadata !171, null}
!174 = metadata !{i32 149, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !151, i32 149, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!176 = metadata !{i32 141, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !150, i32 140, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!178 = metadata !{i32 142, i32 0, metadata !177, null}
!179 = metadata !{i32 143, i32 0, metadata !177, null}
!180 = metadata !{i32 144, i32 0, metadata !177, null}
!181 = metadata !{i32 145, i32 0, metadata !177, null}
!182 = metadata !{i32 146, i32 0, metadata !177, null}
!183 = metadata !{i32 147, i32 0, metadata !177, null}
!184 = metadata !{i32 158, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !151, i32 158, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!186 = metadata !{i32 150, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !175, i32 149, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!188 = metadata !{i32 151, i32 0, metadata !187, null}
!189 = metadata !{i32 152, i32 0, metadata !187, null}
!190 = metadata !{i32 153, i32 0, metadata !187, null}
!191 = metadata !{i32 154, i32 0, metadata !187, null}
!192 = metadata !{i32 155, i32 0, metadata !187, null}
!193 = metadata !{i32 156, i32 0, metadata !187, null}
!194 = metadata !{i32 159, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !185, i32 158, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!196 = metadata !{i32 160, i32 0, metadata !195, null}
!197 = metadata !{i32 161, i32 0, metadata !195, null}
!198 = metadata !{i32 162, i32 0, metadata !195, null}
!199 = metadata !{i32 163, i32 0, metadata !195, null}
!200 = metadata !{i32 164, i32 0, metadata !195, null}
!201 = metadata !{i32 169, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !4, i32 168, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!203 = metadata !{i32 171, i32 0, metadata !202, null}
!204 = metadata !{i32 173, i32 0, metadata !4, null}
!205 = metadata !{i32 320, i32 0, metadata !71, null}
!206 = metadata !{i32 321, i32 0, metadata !71, null}
!207 = metadata !{i32 322, i32 0, metadata !71, null}
!208 = metadata !{i32 326, i32 0, metadata !71, null}
!209 = metadata !{i32 327, i32 0, metadata !71, null}
!210 = metadata !{i32 333, i32 0, metadata !71, null}
!211 = metadata !{i32 334, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !71, i32 333, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!213 = metadata !{i32 337, i32 0, metadata !212, null}
!214 = metadata !{i32 339, i32 0, metadata !71, null}
!215 = metadata !{i32 342, i32 0, metadata !71, null}
!216 = metadata !{i32 343, i32 0, metadata !71, null}
!217 = metadata !{i32 344, i32 0, metadata !71, null}
!218 = metadata !{i32 345, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !71, i32 344, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!220 = metadata !{i32 349, i32 0, metadata !219, null}
!221 = metadata !{i32 351, i32 0, metadata !71, null}
!222 = metadata !{i32 352, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !71, i32 351, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!224 = metadata !{i32 355, i32 0, metadata !223, null}
!225 = metadata !{i32 357, i32 0, metadata !71, null}
!226 = metadata !{i32 363, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !71, i32 357, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!228 = metadata !{i32 364, i32 0, metadata !227, null}
!229 = metadata !{i32 365, i32 0, metadata !227, null}
!230 = metadata !{i32 371, i32 0, metadata !94, null}
!231 = metadata !{i32 372, i32 0, metadata !94, null}
!232 = metadata !{i32 373, i32 0, metadata !94, null}
!233 = metadata !{i32 374, i32 0, metadata !94, null}
!234 = metadata !{i32 380, i32 0, metadata !94, null}
!235 = metadata !{i32 381, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !94, i32 380, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!237 = metadata !{i32 382, i32 0, metadata !236, null}
!238 = metadata !{i32 383, i32 0, metadata !236, null}
!239 = metadata !{i32 390, i32 0, metadata !94, null}
!240 = metadata !{i32 391, i32 0, metadata !94, null}
!241 = metadata !{i32 392, i32 0, metadata !94, null}
!242 = metadata !{i32 393, i32 0, metadata !94, null}
!243 = metadata !{i32 406, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 406, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!245 = metadata !{i32 786443, metadata !1, metadata !94, i32 405, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!246 = metadata !{i32 421, i32 0, metadata !94, null}
!247 = metadata !{i32 428, i32 0, metadata !94, null}
!248 = metadata !{i32 429, i32 0, metadata !94, null}
!249 = metadata !{i32 394, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !251, i32 394, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!251 = metadata !{i32 786443, metadata !1, metadata !94, i32 393, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!252 = metadata !{i32 400, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !250, i32 394, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!254 = metadata !{i32 401, i32 0, metadata !253, null}
!255 = metadata !{i32 402, i32 0, metadata !253, null}
!256 = metadata !{i32 403, i32 0, metadata !253, null}
!257 = metadata !{i32 412, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !244, i32 406, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!259 = metadata !{i32 413, i32 0, metadata !258, null}
!260 = metadata !{i32 414, i32 0, metadata !258, null}
!261 = metadata !{i32 415, i32 0, metadata !258, null}
!262 = metadata !{i32 416, i32 0, metadata !258, null}
!263 = metadata !{i32 417, i32 0, metadata !258, null}
!264 = metadata !{i32 418, i32 0, metadata !258, null}
!265 = metadata !{i32 444, i32 0, metadata !98, null}
!266 = metadata !{i32 457, i32 0, metadata !97, null}
!267 = metadata !{i32 430, i32 0, metadata !92, null}
!268 = metadata !{i32 437, i32 0, metadata !91, null}
!269 = metadata !{i32 438, i32 0, metadata !91, null}
!270 = metadata !{i32 439, i32 0, metadata !91, null}
!271 = metadata !{i32 440, i32 0, metadata !91, null}
!272 = metadata !{i32 441, i32 0, metadata !91, null}
!273 = metadata !{i32 451, i32 0, metadata !97, null}
!274 = metadata !{i32 452, i32 0, metadata !97, null}
!275 = metadata !{i32 453, i32 0, metadata !97, null}
!276 = metadata !{i32 454, i32 0, metadata !97, null}
!277 = metadata !{i32 455, i32 0, metadata !97, null}
!278 = metadata !{i32 456, i32 0, metadata !97, null}
!279 = metadata !{i32 458, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !97, i32 457, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!281 = metadata !{i32 460, i32 0, metadata !280, null}
!282 = metadata !{i32 461, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !97, i32 460, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!284 = metadata !{i32 462, i32 0, metadata !283, null}
!285 = metadata !{i32 459, i32 0, metadata !280, null}
!286 = metadata !{i32 464, i32 0, metadata !97, null}
!287 = metadata !{i32 466, i32 0, metadata !99, null}
!288 = metadata !{i32 472, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !99, i32 466, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!290 = metadata !{i32 473, i32 0, metadata !289, null}
!291 = metadata !{i32 475, i32 0, metadata !94, null}
!292 = metadata !{i32 485, i32 0, metadata !94, null}
!293 = metadata !{i32 486, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !94, i32 485, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!295 = metadata !{i32 487, i32 0, metadata !294, null}
!296 = metadata !{i32 488, i32 0, metadata !294, null}
!297 = metadata !{i32 505, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !299, i32 505, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!299 = metadata !{i32 786443, metadata !1, metadata !94, i32 504, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!300 = metadata !{i32 490, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !94, i32 489, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!302 = metadata !{i32 491, i32 0, metadata !301, null}
!303 = metadata !{i32 492, i32 0, metadata !301, null}
!304 = metadata !{i32 493, i32 0, metadata !301, null}
!305 = metadata !{i32 494, i32 0, metadata !301, null}
!306 = metadata !{i32 495, i32 0, metadata !301, null}
!307 = metadata !{i32 517, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 517, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!309 = metadata !{i32 786443, metadata !1, metadata !94, i32 516, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!310 = metadata !{i32 511, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !298, i32 505, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!312 = metadata !{i32 512, i32 0, metadata !311, null}
!313 = metadata !{i32 513, i32 0, metadata !311, null}
!314 = metadata !{i32 523, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !308, i32 517, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!316 = metadata !{i32 524, i32 0, metadata !315, null}
!317 = metadata !{i32 525, i32 0, metadata !315, null}
!318 = metadata !{i32 526, i32 0, metadata !315, null}
!319 = metadata !{i32 527, i32 0, metadata !315, null}
!320 = metadata !{i32 528, i32 0, metadata !315, null}
!321 = metadata !{i32 533, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !71, i32 532, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!323 = metadata !{i32 535, i32 0, metadata !322, null}
!324 = metadata !{i32 537, i32 0, metadata !71, null}
!325 = metadata !{i32 185, i32 0, metadata !54, null}
!326 = metadata !{i32 186, i32 0, metadata !54, null}
!327 = metadata !{i32 187, i32 0, metadata !54, null}
!328 = metadata !{i32 191, i32 0, metadata !54, null}
!329 = metadata !{i32 192, i32 0, metadata !54, null}
!330 = metadata !{i32 198, i32 0, metadata !54, null}
!331 = metadata !{i32 199, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !54, i32 198, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!333 = metadata !{i32 201, i32 0, metadata !332, null}
!334 = metadata !{i32 203, i32 0, metadata !54, null}
!335 = metadata !{i32 206, i32 0, metadata !54, null}
!336 = metadata !{i32 207, i32 0, metadata !54, null}
!337 = metadata !{i32 208, i32 0, metadata !54, null}
!338 = metadata !{i32 209, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !54, i32 208, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!340 = metadata !{i32 212, i32 0, metadata !339, null}
!341 = metadata !{i32 214, i32 0, metadata !54, null}
!342 = metadata !{i32 215, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !54, i32 214, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!344 = metadata !{i32 218, i32 0, metadata !343, null}
!345 = metadata !{i32 220, i32 0, metadata !54, null}
!346 = metadata !{i32 226, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !54, i32 220, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!348 = metadata !{i32 227, i32 0, metadata !347, null}
!349 = metadata !{i32 233, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !54, i32 227, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!351 = metadata !{i32 234, i32 0, metadata !350, null}
!352 = metadata !{i32 235, i32 0, metadata !350, null}
!353 = metadata !{i32 236, i32 0, metadata !350, null}
!354 = metadata !{i32 242, i32 0, metadata !350, null}
!355 = metadata !{i32 243, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !350, i32 242, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!357 = metadata !{i32 244, i32 0, metadata !356, null}
!358 = metadata !{i32 245, i32 0, metadata !356, null}
!359 = metadata !{i32 252, i32 0, metadata !350, null}
!360 = metadata !{i32 253, i32 0, metadata !350, null}
!361 = metadata !{i32 254, i32 0, metadata !350, null}
!362 = metadata !{i32 255, i32 0, metadata !350, null}
!363 = metadata !{i32 275, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 275, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!365 = metadata !{i32 786443, metadata !1, metadata !350, i32 274, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!366 = metadata !{i32 256, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !368, i32 256, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!368 = metadata !{i32 786443, metadata !1, metadata !350, i32 255, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!369 = metadata !{i32 262, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 262, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!371 = metadata !{i32 257, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !367, i32 256, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!373 = metadata !{i32 258, i32 0, metadata !372, null}
!374 = metadata !{i32 259, i32 0, metadata !372, null}
!375 = metadata !{i32 260, i32 0, metadata !372, null}
!376 = metadata !{i32 268, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !368, i32 268, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!378 = metadata !{i32 263, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !370, i32 262, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!380 = metadata !{i32 264, i32 0, metadata !379, null}
!381 = metadata !{i32 265, i32 0, metadata !379, null}
!382 = metadata !{i32 266, i32 0, metadata !379, null}
!383 = metadata !{i32 269, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !377, i32 268, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!385 = metadata !{i32 270, i32 0, metadata !384, null}
!386 = metadata !{i32 271, i32 0, metadata !384, null}
!387 = metadata !{i32 284, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !365, i32 284, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!389 = metadata !{i32 276, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !364, i32 275, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!391 = metadata !{i32 277, i32 0, metadata !390, null}
!392 = metadata !{i32 278, i32 0, metadata !390, null}
!393 = metadata !{i32 279, i32 0, metadata !390, null}
!394 = metadata !{i32 280, i32 0, metadata !390, null}
!395 = metadata !{i32 281, i32 0, metadata !390, null}
!396 = metadata !{i32 282, i32 0, metadata !390, null}
!397 = metadata !{i32 293, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !365, i32 293, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!399 = metadata !{i32 285, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !388, i32 284, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!401 = metadata !{i32 286, i32 0, metadata !400, null}
!402 = metadata !{i32 287, i32 0, metadata !400, null}
!403 = metadata !{i32 288, i32 0, metadata !400, null}
!404 = metadata !{i32 289, i32 0, metadata !400, null}
!405 = metadata !{i32 290, i32 0, metadata !400, null}
!406 = metadata !{i32 291, i32 0, metadata !400, null}
!407 = metadata !{i32 294, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !398, i32 293, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!409 = metadata !{i32 295, i32 0, metadata !408, null}
!410 = metadata !{i32 296, i32 0, metadata !408, null}
!411 = metadata !{i32 297, i32 0, metadata !408, null}
!412 = metadata !{i32 298, i32 0, metadata !408, null}
!413 = metadata !{i32 299, i32 0, metadata !408, null}
!414 = metadata !{i32 304, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !54, i32 303, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_swap.c]
!416 = metadata !{i32 306, i32 0, metadata !415, null}
!417 = metadata !{i32 308, i32 0, metadata !54, null}
