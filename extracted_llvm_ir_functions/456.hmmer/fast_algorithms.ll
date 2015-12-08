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
  %M1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M1, align 4, !tbaa !0
  call void @ResizePlan7Matrix(%struct.dpmatrix_s* %mx, i32 %L, i32 %0, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #2
  %1 = load i32*** %xmx, align 8, !tbaa !3
  %2 = load i32** %1, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %2, i64 4
  store i32 0, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %3 = load i32* %arrayidx4, align 4, !tbaa !0
  store i32 %3, i32* %2, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %2, i64 3
  store i32 -987654321, i32* %arrayidx8, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %2, i64 2
  store i32 -987654321, i32* %arrayidx10, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %2, i64 1
  store i32 -987654321, i32* %arrayidx12, align 4, !tbaa !0
  %4 = load i32* %M1, align 4, !tbaa !0
  %cmp523 = icmp slt i32 %4, 0
  br i1 %cmp523, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %5 = load i32*** %dmx, align 8, !tbaa !3
  %6 = load i32** %5, align 8, !tbaa !3
  %7 = load i32*** %imx, align 8, !tbaa !3
  %8 = load i32** %7, align 8, !tbaa !3
  %9 = load i32*** %mmx, align 8, !tbaa !3
  %10 = load i32** %9, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %indvars.iv535
  store i32 -987654321, i32* %arrayidx15, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %8, i64 %indvars.iv535
  store i32 -987654321, i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %10, i64 %indvars.iv535
  store i32 -987654321, i32* %arrayidx21, align 4, !tbaa !0
  %indvars.iv.next536 = add i64 %indvars.iv535, 1
  %11 = load i32* %M1, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv535 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %4, %entry ], [ %11, %for.body ]
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %13 = load i32*** %tsc, align 8, !tbaa !3
  %14 = load i32** %13, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32** %13, i64 3
  %15 = load i32** %arrayidx25, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32** %13, i64 5
  %16 = load i32** %arrayidx27, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32** %13, i64 2
  %17 = load i32** %arrayidx29, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32** %13, i64 6
  %18 = load i32** %arrayidx31, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32** %13, i64 1
  %19 = load i32** %arrayidx33, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32** %13, i64 4
  %20 = load i32** %arrayidx35, align 8, !tbaa !3
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %21 = load i32** %bsc, align 8, !tbaa !3
  %cmp37521 = icmp slt i32 %L, 1
  br i1 %cmp37521, label %for.end351, label %for.body38.lr.ph

for.body38.lr.ph:                                 ; preds = %for.end
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %cmp70516 = icmp slt i32 %.lcssa, 1
  %arrayidx214 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %arrayidx254 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx268 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %arrayidx302 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx323 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx337 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %22 = add i32 %.lcssa, 1
  %23 = add i32 %L, 1
  %.pre = load i32*** %mmx, align 8, !tbaa !3
  %.pre537 = load i32*** %dmx, align 8, !tbaa !3
  %.pre538 = load i32*** %imx, align 8, !tbaa !3
  %.pre539 = load i32** %.pre, align 8, !tbaa !3
  %.pre540 = load i32** %.pre537, align 8, !tbaa !3
  %.pre541 = load i32** %.pre538, align 8, !tbaa !3
  %.pre542 = load i32*** %msc, align 8, !tbaa !3
  %.pre543 = load i32*** %isc, align 8, !tbaa !3
  %.pre544 = load i32* %2, align 4, !tbaa !0
  br label %for.body38

for.body38:                                       ; preds = %for.end241, %for.body38.lr.ph
  %24 = phi i32 [ %.pre544, %for.body38.lr.ph ], [ %add303.add289.547, %for.end241 ]
  %25 = phi i32* [ %2, %for.body38.lr.ph ], [ %54, %for.end241 ]
  %26 = phi i32* [ %.pre541, %for.body38.lr.ph ], [ %31, %for.end241 ]
  %27 = phi i32* [ %.pre540, %for.body38.lr.ph ], [ %30, %for.end241 ]
  %28 = phi i32* [ %.pre539, %for.body38.lr.ph ], [ %29, %for.end241 ]
  %indvars.iv529 = phi i64 [ 1, %for.body38.lr.ph ], [ %indvars.iv.next530, %for.end241 ]
  %arrayidx40 = getelementptr inbounds i32** %.pre, i64 %indvars.iv529
  %29 = load i32** %arrayidx40, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i32** %.pre537, i64 %indvars.iv529
  %30 = load i32** %arrayidx42, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i32** %.pre538, i64 %indvars.iv529
  %31 = load i32** %arrayidx44, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds i8* %dsq, i64 %indvars.iv529
  %32 = load i8* %arrayidx58, align 1, !tbaa !1
  %idxprom59 = sext i8 %32 to i64
  %arrayidx60 = getelementptr inbounds i32** %.pre542, i64 %idxprom59
  %33 = load i32** %arrayidx60, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i32** %.pre543, i64 %idxprom59
  %34 = load i32** %arrayidx65, align 8, !tbaa !3
  store i32 -987654321, i32* %29, align 4, !tbaa !0
  store i32 -987654321, i32* %30, align 4, !tbaa !0
  store i32 -987654321, i32* %31, align 4, !tbaa !0
  br i1 %cmp70516, label %for.end204, label %for.body72

for.body72:                                       ; preds = %for.body38, %for.inc202
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc202 ], [ 1, %for.body38 ]
  %35 = add nsw i64 %indvars.iv, -1
  %arrayidx75 = getelementptr inbounds i32* %28, i64 %35
  %36 = load i32* %arrayidx75, align 4, !tbaa !0
  %arrayidx78 = getelementptr inbounds i32* %14, i64 %35
  %37 = load i32* %arrayidx78, align 4, !tbaa !0
  %add = add nsw i32 %37, %36
  %arrayidx80 = getelementptr inbounds i32* %29, i64 %indvars.iv
  store i32 %add, i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %26, i64 %35
  %38 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32* %15, i64 %35
  %39 = load i32* %arrayidx86, align 4, !tbaa !0
  %add87 = add nsw i32 %39, %38
  %cmp90 = icmp sgt i32 %add87, %add
  %add87.add = select i1 %cmp90, i32 %add87, i32 %add
  store i32 %add87.add, i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32* %27, i64 %35
  %40 = load i32* %arrayidx96, align 4, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32* %16, i64 %35
  %41 = load i32* %arrayidx99, align 4, !tbaa !0
  %add100 = add nsw i32 %41, %40
  %cmp103 = icmp sgt i32 %add100, %add87.add
  %add100.add87.add = select i1 %cmp103, i32 %add100, i32 %add87.add
  store i32 %add100.add87.add, i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32* %21, i64 %indvars.iv
  %42 = load i32* %arrayidx110, align 4, !tbaa !0
  %add111 = add nsw i32 %42, %24
  %cmp114 = icmp sgt i32 %add111, %add100.add87.add
  %add111.add100.add87.add = select i1 %cmp114, i32 %add111, i32 %add100.add87.add
  store i32 %add111.add100.add87.add, i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %33, i64 %indvars.iv
  %43 = load i32* %arrayidx121, align 4, !tbaa !0
  %add124 = add nsw i32 %add111.add100.add87.add, %43
  %cmp127 = icmp slt i32 %add124, -987654321
  %.add124 = select i1 %cmp127, i32 -987654321, i32 %add124
  store i32 %.add124, i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %30, i64 %35
  %44 = load i32* %arrayidx135, align 4, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32* %18, i64 %35
  %45 = load i32* %arrayidx138, align 4, !tbaa !0
  %add139 = add nsw i32 %45, %44
  %arrayidx141 = getelementptr inbounds i32* %30, i64 %indvars.iv
  store i32 %add139, i32* %arrayidx141, align 4, !tbaa !0
  %arrayidx144 = getelementptr inbounds i32* %29, i64 %35
  %46 = load i32* %arrayidx144, align 4, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32* %17, i64 %35
  %47 = load i32* %arrayidx147, align 4, !tbaa !0
  %add148 = add nsw i32 %47, %46
  %cmp151 = icmp sgt i32 %add148, %add139
  %add148.add139 = select i1 %cmp151, i32 %add148, i32 %add139
  %cmp159 = icmp slt i32 %add148.add139, -987654321
  %.add148.add139 = select i1 %cmp159, i32 -987654321, i32 %add148.add139
  store i32 %.add148.add139, i32* %arrayidx141, align 4, !tbaa !0
  %48 = trunc i64 %indvars.iv to i32
  %cmp165 = icmp slt i32 %48, %.lcssa
  br i1 %cmp165, label %if.then167, label %for.inc202

if.then167:                                       ; preds = %for.body72
  %arrayidx169 = getelementptr inbounds i32* %28, i64 %indvars.iv
  %49 = load i32* %arrayidx169, align 4, !tbaa !0
  %arrayidx171 = getelementptr inbounds i32* %19, i64 %indvars.iv
  %50 = load i32* %arrayidx171, align 4, !tbaa !0
  %add172 = add nsw i32 %50, %49
  %arrayidx174 = getelementptr inbounds i32* %31, i64 %indvars.iv
  store i32 %add172, i32* %arrayidx174, align 4, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %26, i64 %indvars.iv
  %51 = load i32* %arrayidx176, align 4, !tbaa !0
  %arrayidx178 = getelementptr inbounds i32* %20, i64 %indvars.iv
  %52 = load i32* %arrayidx178, align 4, !tbaa !0
  %add179 = add nsw i32 %52, %51
  %cmp182 = icmp sgt i32 %add179, %add172
  %add179.add172 = select i1 %cmp182, i32 %add179, i32 %add172
  store i32 %add179.add172, i32* %arrayidx174, align 4, !tbaa !0
  %arrayidx189 = getelementptr inbounds i32* %34, i64 %indvars.iv
  %53 = load i32* %arrayidx189, align 4, !tbaa !0
  %add192 = add nsw i32 %add179.add172, %53
  %cmp195 = icmp slt i32 %add192, -987654321
  %.add192 = select i1 %cmp195, i32 -987654321, i32 %add192
  store i32 %.add192, i32* %arrayidx174, align 4, !tbaa !0
  br label %for.inc202

for.inc202:                                       ; preds = %if.then167, %for.body72
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %22
  br i1 %exitcond, label %for.end204, label %for.body72

for.end204:                                       ; preds = %for.inc202, %for.body38
  %arrayidx206 = getelementptr inbounds i32** %1, i64 %indvars.iv529
  %54 = load i32** %arrayidx206, align 8, !tbaa !3
  %arrayidx207 = getelementptr inbounds i32* %54, i64 4
  store i32 -987654321, i32* %arrayidx207, align 4, !tbaa !0
  %arrayidx211 = getelementptr inbounds i32* %25, i64 4
  %55 = load i32* %arrayidx211, align 4, !tbaa !0
  %56 = load i32* %arrayidx214, align 4, !tbaa !0
  %add215 = add nsw i32 %56, %55
  %cmp216 = icmp sgt i32 %add215, -987654321
  %add215. = select i1 %cmp216, i32 %add215, i32 -987654321
  store i32 %add215., i32* %arrayidx207, align 4, !tbaa !0
  %add215.545 = select i1 %cmp216, i32 %add215, i32 -987654321
  %57 = load i32** %esc, align 8, !tbaa !3
  %58 = load i32* %M1, align 4, !tbaa !0
  %cmp227518 = icmp slt i32 %58, 1
  br i1 %cmp227518, label %for.end241, label %for.body229

for.body229:                                      ; preds = %for.end204, %for.body229
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %for.body229 ], [ 1, %for.end204 ]
  %xme.0519 = phi i32 [ %add234.xme.0, %for.body229 ], [ -987654321, %for.end204 ]
  %arrayidx231 = getelementptr inbounds i32* %29, i64 %indvars.iv527
  %59 = load i32* %arrayidx231, align 4, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %57, i64 %indvars.iv527
  %60 = load i32* %arrayidx233, align 4, !tbaa !0
  %add234 = add nsw i32 %60, %59
  %cmp235 = icmp sgt i32 %add234, %xme.0519
  %add234.xme.0 = select i1 %cmp235, i32 %add234, i32 %xme.0519
  %indvars.iv.next528 = add i64 %indvars.iv527, 1
  %61 = trunc i64 %indvars.iv527 to i32
  %cmp227 = icmp slt i32 %61, %58
  br i1 %cmp227, label %for.body229, label %for.end241

for.end241:                                       ; preds = %for.body229, %for.end204
  %62 = phi i32 [ -987654321, %for.end204 ], [ %add234.xme.0, %for.body229 ]
  %arrayidx244 = getelementptr inbounds i32* %54, i64 1
  store i32 %62, i32* %arrayidx244, align 4, !tbaa !0
  %arrayidx247 = getelementptr inbounds i32* %54, i64 3
  store i32 -987654321, i32* %arrayidx247, align 4, !tbaa !0
  %arrayidx251 = getelementptr inbounds i32* %25, i64 3
  %63 = load i32* %arrayidx251, align 4, !tbaa !0
  %64 = load i32* %arrayidx254, align 4, !tbaa !0
  %add255 = add nsw i32 %64, %63
  %cmp256 = icmp sgt i32 %add255, -987654321
  %add255. = select i1 %cmp256, i32 %add255, i32 -987654321
  store i32 %add255., i32* %arrayidx247, align 4, !tbaa !0
  %add255.546 = select i1 %cmp256, i32 %add255, i32 -987654321
  %65 = load i32* %arrayidx268, align 4, !tbaa !0
  %add269 = add nsw i32 %65, %62
  %cmp273 = icmp sgt i32 %add269, %add255.546
  %add269.add255. = select i1 %cmp273, i32 %add269, i32 %add255.
  store i32 %add269.add255., i32* %arrayidx247, align 4, !tbaa !0
  %add269.add255.546 = select i1 %cmp273, i32 %add269, i32 %add255.546
  store i32 -987654321, i32* %54, align 4, !tbaa !0
  %66 = load i32* %arrayidx4, align 4, !tbaa !0
  %add289 = add nsw i32 %66, %add215.545
  %cmp290 = icmp sgt i32 %add289, -987654321
  %add289. = select i1 %cmp290, i32 %add289, i32 -987654321
  store i32 %add289., i32* %54, align 4, !tbaa !0
  %add289.547 = select i1 %cmp290, i32 %add289, i32 -987654321
  %67 = load i32* %arrayidx302, align 4, !tbaa !0
  %add303 = add nsw i32 %67, %add269.add255.546
  %cmp307 = icmp sgt i32 %add303, %add289.547
  %add303.add289. = select i1 %cmp307, i32 %add303, i32 %add289.
  store i32 %add303.add289., i32* %54, align 4, !tbaa !0
  %add303.add289.547 = select i1 %cmp307, i32 %add303, i32 %add289.547
  %arrayidx316 = getelementptr inbounds i32* %54, i64 2
  store i32 -987654321, i32* %arrayidx316, align 4, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %25, i64 2
  %68 = load i32* %arrayidx320, align 4, !tbaa !0
  %69 = load i32* %arrayidx323, align 4, !tbaa !0
  %add324 = add nsw i32 %69, %68
  %cmp325 = icmp sgt i32 %add324, -987654321
  %add324. = select i1 %cmp325, i32 %add324, i32 -987654321
  store i32 %add324., i32* %arrayidx316, align 4, !tbaa !0
  %add324.548 = select i1 %cmp325, i32 %add324, i32 -987654321
  %70 = load i32* %arrayidx337, align 4, !tbaa !0
  %add338 = add nsw i32 %70, %62
  %cmp342 = icmp sgt i32 %add338, %add324.548
  %add338.add324. = select i1 %cmp342, i32 %add338, i32 %add324.
  store i32 %add338.add324., i32* %arrayidx316, align 4, !tbaa !0
  %indvars.iv.next530 = add i64 %indvars.iv529, 1
  %lftr.wideiv532 = trunc i64 %indvars.iv.next530 to i32
  %exitcond533 = icmp eq i32 %lftr.wideiv532, %23
  br i1 %exitcond533, label %for.end351, label %for.body38

for.end351:                                       ; preds = %for.end241, %for.end
  %idxprom352 = sext i32 %L to i64
  %arrayidx353 = getelementptr inbounds i32** %1, i64 %idxprom352
  %71 = load i32** %arrayidx353, align 8, !tbaa !3
  %arrayidx354 = getelementptr inbounds i32* %71, i64 2
  %72 = load i32* %arrayidx354, align 4, !tbaa !0
  %arrayidx357 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %73 = load i32* %arrayidx357, align 4, !tbaa !0
  %add358 = add nsw i32 %73, %72
  %cmp359 = icmp eq %struct.p7trace_s** %ret_tr, null
  br i1 %cmp359, label %if.end362, label %if.then361

if.then361:                                       ; preds = %for.end351
  call void @P7ViterbiTrace(%struct.plan7_s* %hmm, i8* %dsq, i32 %L, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %tr) #2
  %74 = load %struct.p7trace_s** %tr, align 8, !tbaa !3
  store %struct.p7trace_s* %74, %struct.p7trace_s** %ret_tr, align 8, !tbaa !3
  br label %if.end362

if.end362:                                        ; preds = %for.end351, %if.then361
  %call = call float @Scorify(i32 %add358) #2
  ret float %call
}

; Function Attrs: optsize
declare void @ResizePlan7Matrix(%struct.dpmatrix_s*, i32, i32, i32***, i32***, i32***, i32***) #1

; Function Attrs: optsize
declare void @P7ViterbiTrace(%struct.plan7_s*, i8*, i32, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare float @Scorify(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
