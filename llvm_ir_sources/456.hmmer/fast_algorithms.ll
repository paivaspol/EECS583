; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

; Function Attrs: nounwind optsize uwtable
define float @P7Viterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !101), !dbg !135
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !102), !dbg !135
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !103), !dbg !135
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !104), !dbg !135
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !105), !dbg !135
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !106), !dbg !136
  call void @llvm.dbg.declare(metadata !{i32*** %xmx}, metadata !107), !dbg !137
  call void @llvm.dbg.declare(metadata !{i32*** %mmx}, metadata !108), !dbg !138
  call void @llvm.dbg.declare(metadata !{i32*** %imx}, metadata !109), !dbg !139
  call void @llvm.dbg.declare(metadata !{i32*** %dmx}, metadata !110), !dbg !140
  %M1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !141
  %0 = load i32* %M1, align 4, !dbg !141, !tbaa !142
  call void @ResizePlan7Matrix(%struct.dpmatrix_s* %mx, i32 %L, i32 %0, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #3, !dbg !141
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !145
  %1 = load i32*** %xmx, align 8, !dbg !145, !tbaa !146
  %2 = load i32** %1, align 8, !dbg !145, !tbaa !146
  %arrayidx2 = getelementptr inbounds i32* %2, i64 4, !dbg !145
  store i32 0, i32* %arrayidx2, align 4, !dbg !145, !tbaa !142
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !147
  %3 = load i32* %arrayidx4, align 4, !dbg !147, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !147
  store i32 %3, i32* %2, align 4, !dbg !147, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !148
  %arrayidx8 = getelementptr inbounds i32* %2, i64 3, !dbg !148
  store i32 -987654321, i32* %arrayidx8, align 4, !dbg !148, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !148
  %arrayidx10 = getelementptr inbounds i32* %2, i64 2, !dbg !148
  store i32 -987654321, i32* %arrayidx10, align 4, !dbg !148, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !148
  %arrayidx12 = getelementptr inbounds i32* %2, i64 1, !dbg !148
  store i32 -987654321, i32* %arrayidx12, align 4, !dbg !148, !tbaa !142
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !149
  %4 = load i32* %M1, align 4, !dbg !149, !tbaa !142
  %cmp523 = icmp slt i32 %4, 0, !dbg !149
  br i1 %cmp523, label %for.end, label %for.body.lr.ph, !dbg !149

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !110), !dbg !151
  %5 = load i32*** %dmx, align 8, !dbg !151, !tbaa !146
  %6 = load i32** %5, align 8, !dbg !151, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !109), !dbg !151
  %7 = load i32*** %imx, align 8, !dbg !151, !tbaa !146
  %8 = load i32** %7, align 8, !dbg !151, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !108), !dbg !151
  %9 = load i32*** %mmx, align 8, !dbg !151, !tbaa !146
  %10 = load i32** %9, align 8, !dbg !151, !tbaa !146
  br label %for.body, !dbg !149

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %for.body ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !110), !dbg !151
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %indvars.iv535, !dbg !151
  store i32 -987654321, i32* %arrayidx15, align 4, !dbg !151, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !109), !dbg !151
  %arrayidx18 = getelementptr inbounds i32* %8, i64 %indvars.iv535, !dbg !151
  store i32 -987654321, i32* %arrayidx18, align 4, !dbg !151, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !108), !dbg !151
  %arrayidx21 = getelementptr inbounds i32* %10, i64 %indvars.iv535, !dbg !151
  store i32 -987654321, i32* %arrayidx21, align 4, !dbg !151, !tbaa !142
  %indvars.iv.next536 = add i64 %indvars.iv535, 1, !dbg !149
  %11 = load i32* %M1, align 4, !dbg !149, !tbaa !142
  %12 = trunc i64 %indvars.iv535 to i32, !dbg !149
  %cmp = icmp slt i32 %12, %11, !dbg !149
  br i1 %cmp, label %for.body, label %for.end, !dbg !149

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %4, %entry ], [ %11, %for.body ]
  call void @llvm.dbg.value(metadata !{i32 %.lcssa}, i64 0, metadata !134), !dbg !152
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !153
  %13 = load i32*** %tsc, align 8, !dbg !153, !tbaa !146
  %14 = load i32** %13, align 8, !dbg !153, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !127), !dbg !153
  %arrayidx25 = getelementptr inbounds i32** %13, i64 3, !dbg !154
  %15 = load i32** %arrayidx25, align 8, !dbg !154, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %15}, i64 0, metadata !130), !dbg !154
  %arrayidx27 = getelementptr inbounds i32** %13, i64 5, !dbg !155
  %16 = load i32** %arrayidx27, align 8, !dbg !155, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !132), !dbg !155
  %arrayidx29 = getelementptr inbounds i32** %13, i64 2, !dbg !156
  %17 = load i32** %arrayidx29, align 8, !dbg !156, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %17}, i64 0, metadata !129), !dbg !156
  %arrayidx31 = getelementptr inbounds i32** %13, i64 6, !dbg !157
  %18 = load i32** %arrayidx31, align 8, !dbg !157, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %18}, i64 0, metadata !133), !dbg !157
  %arrayidx33 = getelementptr inbounds i32** %13, i64 1, !dbg !158
  %19 = load i32** %arrayidx33, align 8, !dbg !158, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %19}, i64 0, metadata !128), !dbg !158
  %arrayidx35 = getelementptr inbounds i32** %13, i64 4, !dbg !159
  %20 = load i32** %arrayidx35, align 8, !dbg !159, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %20}, i64 0, metadata !131), !dbg !159
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !160
  %21 = load i32** %bsc, align 8, !dbg !160, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %21}, i64 0, metadata !122), !dbg !160
  call void @llvm.dbg.value(metadata !161, i64 0, metadata !111), !dbg !162
  %cmp37521 = icmp slt i32 %L, 1, !dbg !162
  br i1 %cmp37521, label %for.end351, label %for.body38.lr.ph, !dbg !162

for.body38.lr.ph:                                 ; preds = %for.end
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !164
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !166
  %cmp70516 = icmp slt i32 %.lcssa, 1, !dbg !167
  %arrayidx214 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !169
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !170
  %arrayidx254 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !171
  %arrayidx268 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !172
  %arrayidx302 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !173
  %arrayidx323 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !174
  %arrayidx337 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !175
  %22 = add i32 %.lcssa, 1, !dbg !162
  %23 = add i32 %L, 1, !dbg !162
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !108), !dbg !176
  %.pre = load i32*** %mmx, align 8, !dbg !176, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !110), !dbg !177
  %.pre537 = load i32*** %dmx, align 8, !dbg !177, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !109), !dbg !178
  %.pre538 = load i32*** %imx, align 8, !dbg !178, !tbaa !146
  %.pre539 = load i32** %.pre, align 8, !dbg !179, !tbaa !146
  %.pre540 = load i32** %.pre537, align 8, !dbg !180, !tbaa !146
  %.pre541 = load i32** %.pre538, align 8, !dbg !181, !tbaa !146
  %.pre542 = load i32*** %msc, align 8, !dbg !164, !tbaa !146
  %.pre543 = load i32*** %isc, align 8, !dbg !166, !tbaa !146
  %.pre544 = load i32* %2, align 4, !dbg !182, !tbaa !142
  br label %for.body38, !dbg !162

for.body38:                                       ; preds = %for.end241, %for.body38.lr.ph
  %24 = phi i32 [ %.pre544, %for.body38.lr.ph ], [ %add303.add289.547, %for.end241 ]
  %25 = phi i32* [ %2, %for.body38.lr.ph ], [ %54, %for.end241 ]
  %26 = phi i32* [ %.pre541, %for.body38.lr.ph ], [ %31, %for.end241 ], !dbg !176
  %27 = phi i32* [ %.pre540, %for.body38.lr.ph ], [ %30, %for.end241 ], !dbg !176
  %28 = phi i32* [ %.pre539, %for.body38.lr.ph ], [ %29, %for.end241 ]
  %indvars.iv529 = phi i64 [ 1, %for.body38.lr.ph ], [ %indvars.iv.next530, %for.end241 ]
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !108), !dbg !176
  %arrayidx40 = getelementptr inbounds i32** %.pre, i64 %indvars.iv529, !dbg !176
  %29 = load i32** %arrayidx40, align 8, !dbg !176, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %29}, i64 0, metadata !114), !dbg !176
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !110), !dbg !177
  %arrayidx42 = getelementptr inbounds i32** %.pre537, i64 %indvars.iv529, !dbg !177
  %30 = load i32** %arrayidx42, align 8, !dbg !177, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %30}, i64 0, metadata !115), !dbg !177
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !109), !dbg !178
  %arrayidx44 = getelementptr inbounds i32** %.pre538, i64 %indvars.iv529, !dbg !178
  %31 = load i32** %arrayidx44, align 8, !dbg !178, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %31}, i64 0, metadata !116), !dbg !178
  call void @llvm.dbg.value(metadata !{i32* %28}, i64 0, metadata !119), !dbg !179
  call void @llvm.dbg.value(metadata !{i32* %27}, i64 0, metadata !126), !dbg !180
  call void @llvm.dbg.value(metadata !{i32* %26}, i64 0, metadata !121), !dbg !181
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !182
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !124), !dbg !182
  %arrayidx58 = getelementptr inbounds i8* %dsq, i64 %indvars.iv529, !dbg !164
  %32 = load i8* %arrayidx58, align 1, !dbg !164, !tbaa !143
  %idxprom59 = sext i8 %32 to i64, !dbg !164
  %arrayidx60 = getelementptr inbounds i32** %.pre542, i64 %idxprom59, !dbg !164
  %33 = load i32** %arrayidx60, align 8, !dbg !164, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %33}, i64 0, metadata !117), !dbg !164
  %arrayidx65 = getelementptr inbounds i32** %.pre543, i64 %idxprom59, !dbg !166
  %34 = load i32** %arrayidx65, align 8, !dbg !166, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %34}, i64 0, metadata !118), !dbg !166
  store i32 -987654321, i32* %29, align 4, !dbg !183, !tbaa !142
  store i32 -987654321, i32* %30, align 4, !dbg !184, !tbaa !142
  store i32 -987654321, i32* %31, align 4, !dbg !185, !tbaa !142
  call void @llvm.dbg.value(metadata !161, i64 0, metadata !112), !dbg !167
  br i1 %cmp70516, label %for.end204, label %for.body72, !dbg !167

for.body72:                                       ; preds = %for.body38, %for.inc202
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc202 ], [ 1, %for.body38 ]
  %35 = add nsw i64 %indvars.iv, -1, !dbg !186
  %arrayidx75 = getelementptr inbounds i32* %28, i64 %35, !dbg !186
  %36 = load i32* %arrayidx75, align 4, !dbg !186, !tbaa !142
  %arrayidx78 = getelementptr inbounds i32* %14, i64 %35, !dbg !186
  %37 = load i32* %arrayidx78, align 4, !dbg !186, !tbaa !142
  %add = add nsw i32 %37, %36, !dbg !186
  %arrayidx80 = getelementptr inbounds i32* %29, i64 %indvars.iv, !dbg !186
  store i32 %add, i32* %arrayidx80, align 4, !dbg !186, !tbaa !142
  %arrayidx83 = getelementptr inbounds i32* %26, i64 %35, !dbg !188
  %38 = load i32* %arrayidx83, align 4, !dbg !188, !tbaa !142
  %arrayidx86 = getelementptr inbounds i32* %15, i64 %35, !dbg !188
  %39 = load i32* %arrayidx86, align 4, !dbg !188, !tbaa !142
  %add87 = add nsw i32 %39, %38, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !113), !dbg !188
  %cmp90 = icmp sgt i32 %add87, %add, !dbg !188
  %add87.add = select i1 %cmp90, i32 %add87, i32 %add, !dbg !188
  store i32 %add87.add, i32* %arrayidx80, align 4, !dbg !188, !tbaa !142
  %arrayidx96 = getelementptr inbounds i32* %27, i64 %35, !dbg !189
  %40 = load i32* %arrayidx96, align 4, !dbg !189, !tbaa !142
  %arrayidx99 = getelementptr inbounds i32* %16, i64 %35, !dbg !189
  %41 = load i32* %arrayidx99, align 4, !dbg !189, !tbaa !142
  %add100 = add nsw i32 %41, %40, !dbg !189
  call void @llvm.dbg.value(metadata !{i32 %add100}, i64 0, metadata !113), !dbg !189
  %cmp103 = icmp sgt i32 %add100, %add87.add, !dbg !189
  %add100.add87.add = select i1 %cmp103, i32 %add100, i32 %add87.add, !dbg !189
  store i32 %add100.add87.add, i32* %arrayidx80, align 4, !dbg !189, !tbaa !142
  %arrayidx110 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !190
  %42 = load i32* %arrayidx110, align 4, !dbg !190, !tbaa !142
  %add111 = add nsw i32 %42, %24, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %add111}, i64 0, metadata !113), !dbg !190
  %cmp114 = icmp sgt i32 %add111, %add100.add87.add, !dbg !190
  %add111.add100.add87.add = select i1 %cmp114, i32 %add111, i32 %add100.add87.add, !dbg !190
  store i32 %add111.add100.add87.add, i32* %arrayidx80, align 4, !dbg !190, !tbaa !142
  %arrayidx121 = getelementptr inbounds i32* %33, i64 %indvars.iv, !dbg !191
  %43 = load i32* %arrayidx121, align 4, !dbg !191, !tbaa !142
  %add124 = add nsw i32 %add111.add100.add87.add, %43, !dbg !191
  %cmp127 = icmp slt i32 %add124, -987654321, !dbg !192
  %.add124 = select i1 %cmp127, i32 -987654321, i32 %add124, !dbg !192
  store i32 %.add124, i32* %arrayidx80, align 4, !dbg !191, !tbaa !142
  %arrayidx135 = getelementptr inbounds i32* %30, i64 %35, !dbg !193
  %44 = load i32* %arrayidx135, align 4, !dbg !193, !tbaa !142
  %arrayidx138 = getelementptr inbounds i32* %18, i64 %35, !dbg !193
  %45 = load i32* %arrayidx138, align 4, !dbg !193, !tbaa !142
  %add139 = add nsw i32 %45, %44, !dbg !193
  %arrayidx141 = getelementptr inbounds i32* %30, i64 %indvars.iv, !dbg !193
  store i32 %add139, i32* %arrayidx141, align 4, !dbg !193, !tbaa !142
  %arrayidx144 = getelementptr inbounds i32* %29, i64 %35, !dbg !194
  %46 = load i32* %arrayidx144, align 4, !dbg !194, !tbaa !142
  %arrayidx147 = getelementptr inbounds i32* %17, i64 %35, !dbg !194
  %47 = load i32* %arrayidx147, align 4, !dbg !194, !tbaa !142
  %add148 = add nsw i32 %47, %46, !dbg !194
  call void @llvm.dbg.value(metadata !{i32 %add148}, i64 0, metadata !113), !dbg !194
  %cmp151 = icmp sgt i32 %add148, %add139, !dbg !194
  %add148.add139 = select i1 %cmp151, i32 %add148, i32 %add139, !dbg !194
  %cmp159 = icmp slt i32 %add148.add139, -987654321, !dbg !195
  %.add148.add139 = select i1 %cmp159, i32 -987654321, i32 %add148.add139, !dbg !195
  store i32 %.add148.add139, i32* %arrayidx141, align 4, !dbg !195, !tbaa !142
  %48 = trunc i64 %indvars.iv to i32, !dbg !196
  %cmp165 = icmp slt i32 %48, %.lcssa, !dbg !196
  br i1 %cmp165, label %if.then167, label %for.inc202, !dbg !196

if.then167:                                       ; preds = %for.body72
  %arrayidx169 = getelementptr inbounds i32* %28, i64 %indvars.iv, !dbg !197
  %49 = load i32* %arrayidx169, align 4, !dbg !197, !tbaa !142
  %arrayidx171 = getelementptr inbounds i32* %19, i64 %indvars.iv, !dbg !197
  %50 = load i32* %arrayidx171, align 4, !dbg !197, !tbaa !142
  %add172 = add nsw i32 %50, %49, !dbg !197
  %arrayidx174 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !197
  store i32 %add172, i32* %arrayidx174, align 4, !dbg !197, !tbaa !142
  %arrayidx176 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !199
  %51 = load i32* %arrayidx176, align 4, !dbg !199, !tbaa !142
  %arrayidx178 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !199
  %52 = load i32* %arrayidx178, align 4, !dbg !199, !tbaa !142
  %add179 = add nsw i32 %52, %51, !dbg !199
  call void @llvm.dbg.value(metadata !{i32 %add179}, i64 0, metadata !113), !dbg !199
  %cmp182 = icmp sgt i32 %add179, %add172, !dbg !199
  %add179.add172 = select i1 %cmp182, i32 %add179, i32 %add172, !dbg !199
  store i32 %add179.add172, i32* %arrayidx174, align 4, !dbg !199, !tbaa !142
  %arrayidx189 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !200
  %53 = load i32* %arrayidx189, align 4, !dbg !200, !tbaa !142
  %add192 = add nsw i32 %add179.add172, %53, !dbg !200
  %cmp195 = icmp slt i32 %add192, -987654321, !dbg !201
  %.add192 = select i1 %cmp195, i32 -987654321, i32 %add192, !dbg !201
  store i32 %.add192, i32* %arrayidx174, align 4, !dbg !201, !tbaa !142
  br label %for.inc202, !dbg !201

for.inc202:                                       ; preds = %if.then167, %for.body72
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !167
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !167
  %exitcond = icmp eq i32 %lftr.wideiv, %22, !dbg !167
  br i1 %exitcond, label %for.end204, label %for.body72, !dbg !167

for.end204:                                       ; preds = %for.inc202, %for.body38
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !202
  %arrayidx206 = getelementptr inbounds i32** %1, i64 %indvars.iv529, !dbg !202
  %54 = load i32** %arrayidx206, align 8, !dbg !202, !tbaa !146
  %arrayidx207 = getelementptr inbounds i32* %54, i64 4, !dbg !202
  store i32 -987654321, i32* %arrayidx207, align 4, !dbg !202, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !169
  %arrayidx211 = getelementptr inbounds i32* %25, i64 4, !dbg !169
  %55 = load i32* %arrayidx211, align 4, !dbg !169, !tbaa !142
  %56 = load i32* %arrayidx214, align 4, !dbg !169, !tbaa !142
  %add215 = add nsw i32 %56, %55, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %add215}, i64 0, metadata !113), !dbg !169
  %cmp216 = icmp sgt i32 %add215, -987654321, !dbg !169
  %add215. = select i1 %cmp216, i32 %add215, i32 -987654321, !dbg !169
  store i32 %add215., i32* %arrayidx207, align 4, !dbg !203, !tbaa !142
  %add215.545 = select i1 %cmp216, i32 %add215, i32 -987654321, !dbg !169
  call void @llvm.dbg.value(metadata !204, i64 0, metadata !125), !dbg !205
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !108), !dbg !206
  call void @llvm.dbg.value(metadata !{i32* %29}, i64 0, metadata !120), !dbg !206
  %57 = load i32** %esc, align 8, !dbg !170, !tbaa !146
  call void @llvm.dbg.value(metadata !{i32* %57}, i64 0, metadata !123), !dbg !170
  call void @llvm.dbg.value(metadata !161, i64 0, metadata !112), !dbg !207
  %58 = load i32* %M1, align 4, !dbg !207, !tbaa !142
  %cmp227518 = icmp slt i32 %58, 1, !dbg !207
  br i1 %cmp227518, label %for.end241, label %for.body229, !dbg !207

for.body229:                                      ; preds = %for.end204, %for.body229
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %for.body229 ], [ 1, %for.end204 ]
  %xme.0519 = phi i32 [ %add234.xme.0, %for.body229 ], [ -987654321, %for.end204 ]
  %arrayidx231 = getelementptr inbounds i32* %29, i64 %indvars.iv527, !dbg !209
  %59 = load i32* %arrayidx231, align 4, !dbg !209, !tbaa !142
  %arrayidx233 = getelementptr inbounds i32* %57, i64 %indvars.iv527, !dbg !209
  %60 = load i32* %arrayidx233, align 4, !dbg !209, !tbaa !142
  %add234 = add nsw i32 %60, %59, !dbg !209
  call void @llvm.dbg.value(metadata !{i32 %add234}, i64 0, metadata !113), !dbg !209
  %cmp235 = icmp sgt i32 %add234, %xme.0519, !dbg !209
  call void @llvm.dbg.value(metadata !{i32 %add234}, i64 0, metadata !125), !dbg !209
  %add234.xme.0 = select i1 %cmp235, i32 %add234, i32 %xme.0519, !dbg !209
  %indvars.iv.next528 = add i64 %indvars.iv527, 1, !dbg !207
  %61 = trunc i64 %indvars.iv527 to i32, !dbg !207
  %cmp227 = icmp slt i32 %61, %58, !dbg !207
  br i1 %cmp227, label %for.body229, label %for.end241, !dbg !207

for.end241:                                       ; preds = %for.body229, %for.end204
  %62 = phi i32 [ -987654321, %for.end204 ], [ %add234.xme.0, %for.body229 ]
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !210
  %arrayidx244 = getelementptr inbounds i32* %54, i64 1, !dbg !210
  store i32 %62, i32* %arrayidx244, align 4, !dbg !210, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !211
  %arrayidx247 = getelementptr inbounds i32* %54, i64 3, !dbg !211
  store i32 -987654321, i32* %arrayidx247, align 4, !dbg !211, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !171
  %arrayidx251 = getelementptr inbounds i32* %25, i64 3, !dbg !171
  %63 = load i32* %arrayidx251, align 4, !dbg !171, !tbaa !142
  %64 = load i32* %arrayidx254, align 4, !dbg !171, !tbaa !142
  %add255 = add nsw i32 %64, %63, !dbg !171
  call void @llvm.dbg.value(metadata !{i32 %add255}, i64 0, metadata !113), !dbg !171
  %cmp256 = icmp sgt i32 %add255, -987654321, !dbg !171
  %add255. = select i1 %cmp256, i32 %add255, i32 -987654321, !dbg !171
  store i32 %add255., i32* %arrayidx247, align 4, !dbg !212, !tbaa !142
  %add255.546 = select i1 %cmp256, i32 %add255, i32 -987654321, !dbg !171
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !172
  %65 = load i32* %arrayidx268, align 4, !dbg !172, !tbaa !142
  %add269 = add nsw i32 %65, %62, !dbg !172
  call void @llvm.dbg.value(metadata !{i32 %add269}, i64 0, metadata !113), !dbg !172
  %cmp273 = icmp sgt i32 %add269, %add255.546, !dbg !172
  %add269.add255. = select i1 %cmp273, i32 %add269, i32 %add255., !dbg !172
  store i32 %add269.add255., i32* %arrayidx247, align 4, !dbg !213, !tbaa !142
  %add269.add255.546 = select i1 %cmp273, i32 %add269, i32 %add255.546, !dbg !172
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !214
  store i32 -987654321, i32* %54, align 4, !dbg !214, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !215
  %66 = load i32* %arrayidx4, align 4, !dbg !215, !tbaa !142
  %add289 = add nsw i32 %66, %add215.545, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %add289}, i64 0, metadata !113), !dbg !215
  %cmp290 = icmp sgt i32 %add289, -987654321, !dbg !215
  %add289. = select i1 %cmp290, i32 %add289, i32 -987654321, !dbg !215
  store i32 %add289., i32* %54, align 4, !dbg !216, !tbaa !142
  %add289.547 = select i1 %cmp290, i32 %add289, i32 -987654321, !dbg !215
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !173
  %67 = load i32* %arrayidx302, align 4, !dbg !173, !tbaa !142
  %add303 = add nsw i32 %67, %add269.add255.546, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %add303}, i64 0, metadata !113), !dbg !173
  %cmp307 = icmp sgt i32 %add303, %add289.547, !dbg !173
  %add303.add289. = select i1 %cmp307, i32 %add303, i32 %add289., !dbg !173
  store i32 %add303.add289., i32* %54, align 4, !dbg !217, !tbaa !142
  %add303.add289.547 = select i1 %cmp307, i32 %add303, i32 %add289.547, !dbg !173
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !218
  %arrayidx316 = getelementptr inbounds i32* %54, i64 2, !dbg !218
  store i32 -987654321, i32* %arrayidx316, align 4, !dbg !218, !tbaa !142
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !174
  %arrayidx320 = getelementptr inbounds i32* %25, i64 2, !dbg !174
  %68 = load i32* %arrayidx320, align 4, !dbg !174, !tbaa !142
  %69 = load i32* %arrayidx323, align 4, !dbg !174, !tbaa !142
  %add324 = add nsw i32 %69, %68, !dbg !174
  call void @llvm.dbg.value(metadata !{i32 %add324}, i64 0, metadata !113), !dbg !174
  %cmp325 = icmp sgt i32 %add324, -987654321, !dbg !174
  %add324. = select i1 %cmp325, i32 %add324, i32 -987654321, !dbg !174
  store i32 %add324., i32* %arrayidx316, align 4, !dbg !219, !tbaa !142
  %add324.548 = select i1 %cmp325, i32 %add324, i32 -987654321, !dbg !174
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !175
  %70 = load i32* %arrayidx337, align 4, !dbg !175, !tbaa !142
  %add338 = add nsw i32 %70, %62, !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %add338}, i64 0, metadata !113), !dbg !175
  %cmp342 = icmp sgt i32 %add338, %add324.548, !dbg !175
  %add338.add324. = select i1 %cmp342, i32 %add338, i32 %add324., !dbg !175
  store i32 %add338.add324., i32* %arrayidx316, align 4, !dbg !220, !tbaa !142
  %indvars.iv.next530 = add i64 %indvars.iv529, 1, !dbg !162
  %lftr.wideiv532 = trunc i64 %indvars.iv.next530 to i32, !dbg !162
  %exitcond533 = icmp eq i32 %lftr.wideiv532, %23, !dbg !162
  br i1 %exitcond533, label %for.end351, label %for.body38, !dbg !162

for.end351:                                       ; preds = %for.end241, %for.end
  %idxprom352 = sext i32 %L to i64, !dbg !221
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !107), !dbg !221
  %arrayidx353 = getelementptr inbounds i32** %1, i64 %idxprom352, !dbg !221
  %71 = load i32** %arrayidx353, align 8, !dbg !221, !tbaa !146
  %arrayidx354 = getelementptr inbounds i32* %71, i64 2, !dbg !221
  %72 = load i32* %arrayidx354, align 4, !dbg !221, !tbaa !142
  %arrayidx357 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !221
  %73 = load i32* %arrayidx357, align 4, !dbg !221, !tbaa !142
  %add358 = add nsw i32 %73, %72, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %add358}, i64 0, metadata !113), !dbg !221
  %cmp359 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !222
  br i1 %cmp359, label %if.end362, label %if.then361, !dbg !222

if.then361:                                       ; preds = %for.end351
  call void @P7ViterbiTrace(%struct.plan7_s* %hmm, i8* %dsq, i32 %L, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %tr) #3, !dbg !223
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !106), !dbg !225
  %74 = load %struct.p7trace_s** %tr, align 8, !dbg !225, !tbaa !146
  store %struct.p7trace_s* %74, %struct.p7trace_s** %ret_tr, align 8, !dbg !225, !tbaa !146
  br label %if.end362, !dbg !226

if.end362:                                        ; preds = %for.end351, %if.then361
  %call = call float @Scorify(i32 %add358) #3, !dbg !227
  ret float %call, !dbg !227
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @ResizePlan7Matrix(%struct.dpmatrix_s*, i32, i32, i32***, i32***, i32***, i32***) #2

; Function Attrs: optsize
declare void @P7ViterbiTrace(%struct.plan7_s*, i8*, i32, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7Viterbi", metadata !"P7Viterbi", metadata !"", i32 69, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**)* @P7Viterbi, null, null, metadata !100, i32 70} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 70] [P7Viterbi]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !11, metadata !12, metadata !76, metadata !92}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!14 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!18 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !11} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!24 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !11} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!28 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!29 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!30 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !26} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!31 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!32 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!33 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!34 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !8} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!35 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !8} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!36 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !8} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!37 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !11} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!38 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !39} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!41 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !39} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!42 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !39} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!43 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !8} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!44 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !45} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!49 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !40} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!50 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !40} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !8, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!55 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !8} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!56 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !57} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !57} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!59 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !57} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!60 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !61} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !11, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !26} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!63 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !26} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!64 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!65 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !26} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!66 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !26} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!67 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !26} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!68 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !26} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!69 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !57} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!70 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !57} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!71 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !11} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!72 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !11} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!73 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!74 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !8} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!75 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !11} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!77 = metadata !{i32 786451, metadata !14, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!79 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!81 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!82 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!83 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !84} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!86 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !84} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!87 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !84} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!88 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !11} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!89 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !11} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!90 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !11} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!91 = metadata !{i32 786445, metadata !14, metadata !77, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !11} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!94 = metadata !{i32 786451, metadata !14, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !95, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99}
!96 = metadata !{i32 786445, metadata !14, metadata !94, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!97 = metadata !{i32 786445, metadata !14, metadata !94, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!98 = metadata !{i32 786445, metadata !14, metadata !94, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!99 = metadata !{i32 786445, metadata !14, metadata !94, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!101 = metadata !{i32 786689, metadata !4, metadata !"dsq", metadata !5, i32 16777285, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 69]
!102 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !5, i32 33554501, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 69]
!103 = metadata !{i32 786689, metadata !4, metadata !"hmm", metadata !5, i32 50331717, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 69]
!104 = metadata !{i32 786689, metadata !4, metadata !"mx", metadata !5, i32 67108933, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 69]
!105 = metadata !{i32 786689, metadata !4, metadata !"ret_tr", metadata !5, i32 83886149, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 69]
!106 = metadata !{i32 786688, metadata !4, metadata !"tr", metadata !5, i32 71, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 71]
!107 = metadata !{i32 786688, metadata !4, metadata !"xmx", metadata !5, i32 72, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 72]
!108 = metadata !{i32 786688, metadata !4, metadata !"mmx", metadata !5, i32 73, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 73]
!109 = metadata !{i32 786688, metadata !4, metadata !"imx", metadata !5, i32 74, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 74]
!110 = metadata !{i32 786688, metadata !4, metadata !"dmx", metadata !5, i32 75, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 75]
!111 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 76, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 76]
!112 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 76, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 76]
!113 = metadata !{i32 786688, metadata !4, metadata !"sc", metadata !5, i32 77, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 77]
!114 = metadata !{i32 786688, metadata !4, metadata !"mc", metadata !5, i32 78, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc] [line 78]
!115 = metadata !{i32 786688, metadata !4, metadata !"dc", metadata !5, i32 78, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc] [line 78]
!116 = metadata !{i32 786688, metadata !4, metadata !"ic", metadata !5, i32 78, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 78]
!117 = metadata !{i32 786688, metadata !4, metadata !"ms", metadata !5, i32 79, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 79]
!118 = metadata !{i32 786688, metadata !4, metadata !"is", metadata !5, i32 79, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 79]
!119 = metadata !{i32 786688, metadata !4, metadata !"mpp", metadata !5, i32 80, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpp] [line 80]
!120 = metadata !{i32 786688, metadata !4, metadata !"mpc", metadata !5, i32 80, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpc] [line 80]
!121 = metadata !{i32 786688, metadata !4, metadata !"ip", metadata !5, i32 80, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 80]
!122 = metadata !{i32 786688, metadata !4, metadata !"bp", metadata !5, i32 81, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bp] [line 81]
!123 = metadata !{i32 786688, metadata !4, metadata !"ep", metadata !5, i32 82, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 82]
!124 = metadata !{i32 786688, metadata !4, metadata !"xmb", metadata !5, i32 83, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmb] [line 83]
!125 = metadata !{i32 786688, metadata !4, metadata !"xme", metadata !5, i32 84, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xme] [line 84]
!126 = metadata !{i32 786688, metadata !4, metadata !"dpp", metadata !5, i32 85, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dpp] [line 85]
!127 = metadata !{i32 786688, metadata !4, metadata !"tpmm", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpmm] [line 86]
!128 = metadata !{i32 786688, metadata !4, metadata !"tpmi", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpmi] [line 86]
!129 = metadata !{i32 786688, metadata !4, metadata !"tpmd", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpmd] [line 86]
!130 = metadata !{i32 786688, metadata !4, metadata !"tpim", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpim] [line 86]
!131 = metadata !{i32 786688, metadata !4, metadata !"tpii", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpii] [line 86]
!132 = metadata !{i32 786688, metadata !4, metadata !"tpdm", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpdm] [line 86]
!133 = metadata !{i32 786688, metadata !4, metadata !"tpdd", metadata !5, i32 86, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpdd] [line 86]
!134 = metadata !{i32 786688, metadata !4, metadata !"M", metadata !5, i32 87, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 87]
!135 = metadata !{i32 69, i32 0, metadata !4, null}
!136 = metadata !{i32 71, i32 0, metadata !4, null}
!137 = metadata !{i32 72, i32 0, metadata !4, null}
!138 = metadata !{i32 73, i32 0, metadata !4, null}
!139 = metadata !{i32 74, i32 0, metadata !4, null}
!140 = metadata !{i32 75, i32 0, metadata !4, null}
!141 = metadata !{i32 91, i32 0, metadata !4, null}
!142 = metadata !{metadata !"int", metadata !143}
!143 = metadata !{metadata !"omnipotent char", metadata !144}
!144 = metadata !{metadata !"Simple C/C++ TBAA"}
!145 = metadata !{i32 95, i32 0, metadata !4, null}
!146 = metadata !{metadata !"any pointer", metadata !143}
!147 = metadata !{i32 96, i32 0, metadata !4, null}
!148 = metadata !{i32 97, i32 0, metadata !4, null}
!149 = metadata !{i32 98, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !4, i32 98, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!151 = metadata !{i32 99, i32 0, metadata !150, null}
!152 = metadata !{i32 103, i32 0, metadata !4, null}
!153 = metadata !{i32 111, i32 0, metadata !4, null}
!154 = metadata !{i32 112, i32 0, metadata !4, null}
!155 = metadata !{i32 113, i32 0, metadata !4, null}
!156 = metadata !{i32 114, i32 0, metadata !4, null}
!157 = metadata !{i32 115, i32 0, metadata !4, null}
!158 = metadata !{i32 116, i32 0, metadata !4, null}
!159 = metadata !{i32 117, i32 0, metadata !4, null}
!160 = metadata !{i32 118, i32 0, metadata !4, null}
!161 = metadata !{i32 1}
!162 = metadata !{i32 119, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !4, i32 119, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!164 = metadata !{i32 127, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !163, i32 119, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!166 = metadata !{i32 128, i32 0, metadata !165, null}
!167 = metadata !{i32 133, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !165, i32 133, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!169 = metadata !{i32 158, i32 0, metadata !165, null}
!170 = metadata !{i32 164, i32 0, metadata !165, null}
!171 = metadata !{i32 170, i32 0, metadata !165, null}
!172 = metadata !{i32 172, i32 0, metadata !165, null}
!173 = metadata !{i32 179, i32 0, metadata !165, null}
!174 = metadata !{i32 184, i32 0, metadata !165, null}
!175 = metadata !{i32 186, i32 0, metadata !165, null}
!176 = metadata !{i32 120, i32 0, metadata !165, null}
!177 = metadata !{i32 121, i32 0, metadata !165, null}
!178 = metadata !{i32 122, i32 0, metadata !165, null}
!179 = metadata !{i32 123, i32 0, metadata !165, null}
!180 = metadata !{i32 124, i32 0, metadata !165, null}
!181 = metadata !{i32 125, i32 0, metadata !165, null}
!182 = metadata !{i32 126, i32 0, metadata !165, null}
!183 = metadata !{i32 129, i32 0, metadata !165, null}
!184 = metadata !{i32 130, i32 0, metadata !165, null}
!185 = metadata !{i32 131, i32 0, metadata !165, null}
!186 = metadata !{i32 134, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !168, i32 133, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!188 = metadata !{i32 135, i32 0, metadata !187, null}
!189 = metadata !{i32 136, i32 0, metadata !187, null}
!190 = metadata !{i32 137, i32 0, metadata !187, null}
!191 = metadata !{i32 138, i32 0, metadata !187, null}
!192 = metadata !{i32 139, i32 0, metadata !187, null}
!193 = metadata !{i32 141, i32 0, metadata !187, null}
!194 = metadata !{i32 142, i32 0, metadata !187, null}
!195 = metadata !{i32 143, i32 0, metadata !187, null}
!196 = metadata !{i32 145, i32 0, metadata !187, null}
!197 = metadata !{i32 146, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !187, i32 145, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!199 = metadata !{i32 147, i32 0, metadata !198, null}
!200 = metadata !{i32 148, i32 0, metadata !198, null}
!201 = metadata !{i32 149, i32 0, metadata !198, null}
!202 = metadata !{i32 157, i32 0, metadata !165, null}
!203 = metadata !{i32 159, i32 0, metadata !165, null}
!204 = metadata !{i32 -987654321}
!205 = metadata !{i32 162, i32 0, metadata !165, null}
!206 = metadata !{i32 163, i32 0, metadata !165, null}
!207 = metadata !{i32 165, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !165, i32 165, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!209 = metadata !{i32 166, i32 0, metadata !208, null}
!210 = metadata !{i32 167, i32 0, metadata !165, null}
!211 = metadata !{i32 169, i32 0, metadata !165, null}
!212 = metadata !{i32 171, i32 0, metadata !165, null}
!213 = metadata !{i32 173, i32 0, metadata !165, null}
!214 = metadata !{i32 176, i32 0, metadata !165, null}
!215 = metadata !{i32 177, i32 0, metadata !165, null}
!216 = metadata !{i32 178, i32 0, metadata !165, null}
!217 = metadata !{i32 180, i32 0, metadata !165, null}
!218 = metadata !{i32 183, i32 0, metadata !165, null}
!219 = metadata !{i32 185, i32 0, metadata !165, null}
!220 = metadata !{i32 187, i32 0, metadata !165, null}
!221 = metadata !{i32 190, i32 0, metadata !4, null}
!222 = metadata !{i32 192, i32 0, metadata !4, null}
!223 = metadata !{i32 193, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !4, i32 192, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/fast_algorithms.c]
!225 = metadata !{i32 194, i32 0, metadata !224, null}
!226 = metadata !{i32 195, i32 0, metadata !224, null}
!227 = metadata !{i32 197, i32 0, metadata !4, null}
