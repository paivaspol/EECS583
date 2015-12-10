; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_waterhydrogen.matrix1 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.matrix2 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.l = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid argument (%d) for nht in routine genh\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @gen_waterhydrogen([3 x float]* nocapture %xa, [3 x float]* nocapture %xh) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xa}, i64 0, metadata !16), !dbg !98
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xh}, i64 0, metadata !17), !dbg !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !99
  %0 = load i32* @gen_waterhydrogen.l, align 4, !dbg !101, !tbaa !103
  %idxprom3 = sext i32 %0 to i64, !dbg !101
  br label %for.body, !dbg !99

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv, !dbg !101
  %1 = load float* %arrayidx1, align 4, !dbg !101, !tbaa !106
  %arrayidx5 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix1, i64 0, i64 %idxprom3, i64 %indvars.iv, !dbg !101
  %2 = load float* %arrayidx5, align 4, !dbg !101, !tbaa !106
  %add = fadd float %1, %2, !dbg !101
  %arrayidx8 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv, !dbg !101
  store float %add, float* %arrayidx8, align 4, !dbg !101, !tbaa !106
  %3 = load float* %arrayidx1, align 4, !dbg !107, !tbaa !106
  %arrayidx15 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix2, i64 0, i64 %idxprom3, i64 %indvars.iv, !dbg !107
  %4 = load float* %arrayidx15, align 4, !dbg !107, !tbaa !106
  %add16 = fadd float %3, %4, !dbg !107
  %arrayidx19 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv, !dbg !107
  store float %add16, float* %arrayidx19, align 4, !dbg !107, !tbaa !106
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !99
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !99
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !99
  br i1 %exitcond, label %for.end, label %for.body, !dbg !99

for.end:                                          ; preds = %for.body
  %add20 = add nsw i32 %0, 1, !dbg !108
  %rem = srem i32 %add20, 6, !dbg !108
  store i32 %rem, i32* @gen_waterhydrogen.l, align 4, !dbg !108, !tbaa !103
  ret void, !dbg !109
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @calc_h_pos(i32 %nht, [3 x float]* %xa, [3 x float]* nocapture %xh) #0 {
entry:
  %sa = alloca [3 x float], align 4
  %sb = alloca [3 x float], align 4
  %sij = alloca [3 x float], align 4
  %dxc = alloca [3 x float], align 4
  %rBB = alloca [3 x float], align 4
  %rNN = alloca [3 x float], align 4
  %xa2 = alloca [4 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{i32 %nht}, i64 0, metadata !24), !dbg !110
  call void @llvm.dbg.value(metadata !{[3 x float]* %xa}, i64 0, metadata !25), !dbg !110
  call void @llvm.dbg.value(metadata !{[3 x float]* %xh}, i64 0, metadata !26), !dbg !110
  call void @llvm.dbg.declare(metadata !{[3 x float]* %sa}, metadata !27), !dbg !111
  call void @llvm.dbg.declare(metadata !{[3 x float]* %sb}, metadata !28), !dbg !111
  call void @llvm.dbg.declare(metadata !{[3 x float]* %sij}, metadata !29), !dbg !111
  call void @llvm.dbg.value(metadata !112, i64 0, metadata !30), !dbg !113
  switch i32 %nht, label %sw.default [
    i32 2, label %for.body
    i32 3, label %for.body
    i32 4, label %for.body
    i32 8, label %for.body
    i32 9, label %for.body
    i32 1, label %for.body102
    i32 5, label %for.body385
    i32 6, label %for.body436
    i32 7, label %sw.bb531
  ], !dbg !114

for.body:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %for.body
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %for.body ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ]
  %rij.0929 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv982, !dbg !115
  %0 = load float* %arrayidx2, align 4, !dbg !115, !tbaa !106
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !34), !dbg !115
  %arrayidx5 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv982, !dbg !119
  %1 = load float* %arrayidx5, align 4, !dbg !119, !tbaa !106
  %sub = fsub float %1, %0, !dbg !119
  %arrayidx7 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv982, !dbg !119
  store float %sub, float* %arrayidx7, align 4, !dbg !119, !tbaa !106
  %arrayidx10 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv982, !dbg !120
  %2 = load float* %arrayidx10, align 4, !dbg !120, !tbaa !106
  %sub11 = fsub float %0, %2, !dbg !120
  %arrayidx13 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv982, !dbg !120
  store float %sub11, float* %arrayidx13, align 4, !dbg !120, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !121), !dbg !123
  %mul.i = fmul float %sub, %sub, !dbg !124
  %add = fadd float %rij.0929, %mul.i, !dbg !122
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !31), !dbg !122
  %indvars.iv.next983 = add i64 %indvars.iv982, 1, !dbg !125
  %lftr.wideiv984 = trunc i64 %indvars.iv.next983 to i32, !dbg !125
  %exitcond985 = icmp eq i32 %lftr.wideiv984, 3, !dbg !125
  br i1 %exitcond985, label %for.end, label %for.body, !dbg !125

for.end:                                          ; preds = %for.body
  %conv19 = call float @sqrtf(float %add) #4, !dbg !126
  call void @llvm.dbg.value(metadata !{float %conv19}, i64 0, metadata !31), !dbg !126
  %arrayidx20 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 1, !dbg !127
  %3 = load float* %arrayidx20, align 4, !dbg !127, !tbaa !106
  %arrayidx21 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 2, !dbg !127
  %4 = load float* %arrayidx21, align 4, !dbg !127, !tbaa !106
  %mul22 = fmul float %3, %4, !dbg !127
  %arrayidx23 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 2, !dbg !127
  %5 = load float* %arrayidx23, align 4, !dbg !127, !tbaa !106
  %arrayidx24 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 1, !dbg !127
  %6 = load float* %arrayidx24, align 4, !dbg !127, !tbaa !106
  %mul25 = fmul float %5, %6, !dbg !127
  %sub26 = fsub float %mul22, %mul25, !dbg !127
  %arrayidx27 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0, !dbg !127
  store float %sub26, float* %arrayidx27, align 4, !dbg !127, !tbaa !106
  %arrayidx29 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 0, !dbg !128
  %7 = load float* %arrayidx29, align 4, !dbg !128, !tbaa !106
  %mul30 = fmul float %5, %7, !dbg !128
  %arrayidx31 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0, !dbg !128
  %8 = load float* %arrayidx31, align 4, !dbg !128, !tbaa !106
  %mul33 = fmul float %8, %4, !dbg !128
  %sub34 = fsub float %mul30, %mul33, !dbg !128
  %arrayidx35 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 1, !dbg !128
  store float %sub34, float* %arrayidx35, align 4, !dbg !128, !tbaa !106
  %mul38 = fmul float %8, %6, !dbg !129
  %mul41 = fmul float %3, %7, !dbg !129
  %sub42 = fsub float %mul38, %mul41, !dbg !129
  %arrayidx43 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 2, !dbg !129
  store float %sub42, float* %arrayidx43, align 4, !dbg !129, !tbaa !106
  call void @llvm.dbg.value(metadata !130, i64 0, metadata !32), !dbg !131
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !132
  br label %for.body47, !dbg !132

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.end
  %9 = phi float [ %sub26, %for.end ], [ %.pre989, %for.body47.for.body47_crit_edge ]
  %10 = phi float [ %8, %for.end ], [ %.pre988, %for.body47.for.body47_crit_edge ]
  %indvars.iv978 = phi i64 [ 0, %for.end ], [ %indvars.iv.next979, %for.body47.for.body47_crit_edge ]
  %ra.0927 = phi float [ 0.000000e+00, %for.end ], [ %add55, %for.body47.for.body47_crit_edge ]
  %arrayidx49 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv978, !dbg !134
  %div = fdiv float %10, %conv19, !dbg !134
  store float %div, float* %arrayidx49, align 4, !dbg !134, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{float %9}, i64 0, metadata !136), !dbg !138
  %mul.i846 = fmul float %9, %9, !dbg !139
  %add55 = fadd float %ra.0927, %mul.i846, !dbg !137
  call void @llvm.dbg.value(metadata !{float %add55}, i64 0, metadata !32), !dbg !137
  %indvars.iv.next979 = add i64 %indvars.iv978, 1, !dbg !132
  %lftr.wideiv980 = trunc i64 %indvars.iv.next979 to i32, !dbg !132
  %exitcond981 = icmp eq i32 %lftr.wideiv980, 3, !dbg !132
  br i1 %exitcond981, label %for.end58, label %for.body47.for.body47_crit_edge, !dbg !132

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  %arrayidx49.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next979
  %.pre988 = load float* %arrayidx49.phi.trans.insert, align 4, !dbg !134, !tbaa !106
  %arrayidx53.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next979
  %.pre989 = load float* %arrayidx53.phi.trans.insert, align 4, !dbg !137, !tbaa !106
  br label %for.body47, !dbg !132

for.end58:                                        ; preds = %for.body47
  %conv61 = call float @sqrtf(float %add55) #4, !dbg !140
  call void @llvm.dbg.value(metadata !{float %conv61}, i64 0, metadata !32), !dbg !140
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !141
  br label %for.body65, !dbg !141

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.end58
  %11 = phi float [ %sub26, %for.end58 ], [ %.pre990, %for.body65.for.body65_crit_edge ]
  %indvars.iv974 = phi i64 [ 0, %for.end58 ], [ %indvars.iv.next975, %for.body65.for.body65_crit_edge ]
  %arrayidx67 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv974, !dbg !143
  %div68 = fdiv float %11, %conv61, !dbg !143
  store float %div68, float* %arrayidx67, align 4, !dbg !143, !tbaa !106
  %indvars.iv.next975 = add i64 %indvars.iv974, 1, !dbg !141
  %lftr.wideiv976 = trunc i64 %indvars.iv.next975 to i32, !dbg !141
  %exitcond977 = icmp eq i32 %lftr.wideiv976, 3, !dbg !141
  br i1 %exitcond977, label %for.end73, label %for.body65.for.body65_crit_edge, !dbg !141

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  %arrayidx67.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next975
  %.pre990 = load float* %arrayidx67.phi.trans.insert, align 4, !dbg !143, !tbaa !106
  br label %for.body65, !dbg !141

for.end73:                                        ; preds = %for.body65
  %12 = load float* %arrayidx35, align 4, !dbg !144, !tbaa !106
  %13 = load float* %arrayidx23, align 4, !dbg !144, !tbaa !106
  %mul76 = fmul float %12, %13, !dbg !144
  %14 = load float* %arrayidx43, align 4, !dbg !144, !tbaa !106
  %15 = load float* %arrayidx20, align 4, !dbg !144, !tbaa !106
  %mul79 = fmul float %14, %15, !dbg !144
  %sub80 = fsub float %mul76, %mul79, !dbg !144
  store float %sub80, float* %arrayidx29, align 4, !dbg !144, !tbaa !106
  %16 = load float* %arrayidx31, align 4, !dbg !145, !tbaa !106
  %mul84 = fmul float %14, %16, !dbg !145
  %17 = load float* %arrayidx27, align 4, !dbg !145, !tbaa !106
  %mul87 = fmul float %17, %13, !dbg !145
  %sub88 = fsub float %mul84, %mul87, !dbg !145
  store float %sub88, float* %arrayidx24, align 4, !dbg !145, !tbaa !106
  %mul92 = fmul float %17, %15, !dbg !146
  %mul95 = fmul float %12, %16, !dbg !146
  %sub96 = fsub float %mul92, %mul95, !dbg !146
  store float %sub96, float* %arrayidx21, align 4, !dbg !146, !tbaa !106
  switch i32 %nht, label %sw.default [
    i32 1, label %for.body102
    i32 2, label %for.body187
    i32 3, label %for.body217
    i32 4, label %for.cond266.preheader
    i32 5, label %for.body385
    i32 6, label %for.body436
    i32 7, label %sw.bb531
    i32 8, label %for.body536
    i32 9, label %sw.bb584
  ], !dbg !147

for.cond266.preheader:                            ; preds = %for.end73
  %arrayidx325 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 0, !dbg !148
  %arrayidx332 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 1, !dbg !151
  %arrayidx340 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 2, !dbg !152
  br label %for.body269, !dbg !153

for.body102:                                      ; preds = %for.end73, %entry, %for.body102
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %for.body102 ], [ 0, %entry ], [ 0, %for.end73 ]
  %rij.1909 = phi float [ %add124, %for.body102 ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %for.end73 ]
  %rb.0908 = phi float [ %add128, %for.body102 ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %for.end73 ]
  %arrayidx105 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv934, !dbg !154
  %18 = load float* %arrayidx105, align 4, !dbg !154, !tbaa !106
  %arrayidx108 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv934, !dbg !154
  %19 = load float* %arrayidx108, align 4, !dbg !154, !tbaa !106
  %sub109 = fsub float %18, %19, !dbg !154
  %arrayidx111 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv934, !dbg !154
  store float %sub109, float* %arrayidx111, align 4, !dbg !154, !tbaa !106
  %arrayidx117 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv934, !dbg !157
  %20 = load float* %arrayidx117, align 4, !dbg !157, !tbaa !106
  %sub118 = fsub float %18, %20, !dbg !157
  %arrayidx120 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv934, !dbg !157
  store float %sub118, float* %arrayidx120, align 4, !dbg !157, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{float %sub109}, i64 0, metadata !158), !dbg !160
  %mul.i859 = fmul float %sub109, %sub109, !dbg !161
  %add124 = fadd float %rij.1909, %mul.i859, !dbg !159
  call void @llvm.dbg.value(metadata !{float %add124}, i64 0, metadata !31), !dbg !159
  tail call void @llvm.dbg.value(metadata !{float %sub118}, i64 0, metadata !162), !dbg !164
  %mul.i863 = fmul float %sub118, %sub118, !dbg !165
  %add128 = fadd float %rb.0908, %mul.i863, !dbg !163
  call void @llvm.dbg.value(metadata !{float %add128}, i64 0, metadata !33), !dbg !163
  %indvars.iv.next935 = add i64 %indvars.iv934, 1, !dbg !166
  %lftr.wideiv936 = trunc i64 %indvars.iv.next935 to i32, !dbg !166
  %exitcond937 = icmp eq i32 %lftr.wideiv936, 3, !dbg !166
  br i1 %exitcond937, label %for.end131, label %for.body102, !dbg !166

for.end131:                                       ; preds = %for.body102
  %conv134 = call float @sqrtf(float %add124) #4, !dbg !167
  call void @llvm.dbg.value(metadata !{float %conv134}, i64 0, metadata !31), !dbg !167
  %conv137 = call float @sqrtf(float %add128) #4, !dbg !168
  call void @llvm.dbg.value(metadata !{float %conv137}, i64 0, metadata !33), !dbg !168
  call void @llvm.dbg.value(metadata !130, i64 0, metadata !32), !dbg !169
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !170
  br label %for.body141, !dbg !170

for.body141:                                      ; preds = %for.body141, %for.end131
  %indvars.iv930 = phi i64 [ 0, %for.end131 ], [ %indvars.iv.next931, %for.body141 ]
  %ra.1906 = phi float [ 0.000000e+00, %for.end131 ], [ %add154, %for.body141 ]
  %arrayidx143 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv930, !dbg !172
  %21 = load float* %arrayidx143, align 4, !dbg !172, !tbaa !106
  %div144 = fdiv float %21, %conv134, !dbg !172
  %arrayidx146 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv930, !dbg !172
  %22 = load float* %arrayidx146, align 4, !dbg !172, !tbaa !106
  %div147 = fdiv float %22, %conv137, !dbg !172
  %add148 = fadd float %div144, %div147, !dbg !172
  %arrayidx150 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv930, !dbg !172
  store float %add148, float* %arrayidx150, align 4, !dbg !172, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{float %add148}, i64 0, metadata !174), !dbg !176
  %mul.i889 = fmul float %add148, %add148, !dbg !177
  %add154 = fadd float %ra.1906, %mul.i889, !dbg !175
  call void @llvm.dbg.value(metadata !{float %add154}, i64 0, metadata !32), !dbg !175
  %indvars.iv.next931 = add i64 %indvars.iv930, 1, !dbg !170
  %lftr.wideiv932 = trunc i64 %indvars.iv.next931 to i32, !dbg !170
  %exitcond933 = icmp eq i32 %lftr.wideiv932, 3, !dbg !170
  br i1 %exitcond933, label %for.end157, label %for.body141, !dbg !170

for.end157:                                       ; preds = %for.body141
  %conv160 = call float @sqrtf(float %add154) #4, !dbg !178
  call void @llvm.dbg.value(metadata !{float %conv160}, i64 0, metadata !32), !dbg !178
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !179
  %conv173 = fpext float %conv160 to double, !dbg !181
  br label %for.body164, !dbg !179

for.body164:                                      ; preds = %for.body164, %for.end157
  %indvars.iv = phi i64 [ 0, %for.end157 ], [ %indvars.iv.next, %for.body164 ]
  %arrayidx167 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv, !dbg !181
  %23 = load float* %arrayidx167, align 4, !dbg !181, !tbaa !106
  %conv168 = fpext float %23 to double, !dbg !181
  %arrayidx170 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv, !dbg !181
  %24 = load float* %arrayidx170, align 4, !dbg !181, !tbaa !106
  %conv171 = fpext float %24 to double, !dbg !181
  %mul172 = fmul double %conv171, 1.000000e-01, !dbg !181
  %div174 = fdiv double %mul172, %conv173, !dbg !181
  %add175 = fadd double %conv168, %div174, !dbg !181
  %conv176 = fptrunc double %add175 to float, !dbg !181
  %arrayidx179 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv, !dbg !181
  store float %conv176, float* %arrayidx179, align 4, !dbg !181, !tbaa !106
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !179
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !179
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !179
  br i1 %exitcond, label %sw.epilog653, label %for.body164, !dbg !179

for.body187:                                      ; preds = %for.end73, %for.body187.for.body187_crit_edge
  %25 = phi float [ %.pre994, %for.body187.for.body187_crit_edge ], [ %16, %for.end73 ]
  %26 = phi float [ %.pre993, %for.body187.for.body187_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %for.body187.for.body187_crit_edge ], [ 0, %for.end73 ]
  %arrayidx190 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv938, !dbg !182
  %27 = load float* %arrayidx190, align 4, !dbg !182, !tbaa !106
  %conv191 = fpext float %27 to double, !dbg !182
  %conv196 = fpext float %26 to double, !dbg !182
  %mul197 = fmul double %conv196, 0x3FB821B1FD9BFEE5, !dbg !182
  %add198 = fadd double %conv191, %mul197, !dbg !182
  %conv203 = fpext float %25 to double, !dbg !182
  %mul204 = fmul double %conv203, 0xBFA11745F4B7C896, !dbg !182
  %sub205 = fsub double %add198, %mul204, !dbg !182
  %conv206 = fptrunc double %sub205 to float, !dbg !182
  %arrayidx209 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv938, !dbg !182
  store float %conv206, float* %arrayidx209, align 4, !dbg !182, !tbaa !106
  %indvars.iv.next939 = add i64 %indvars.iv938, 1, !dbg !185
  %lftr.wideiv940 = trunc i64 %indvars.iv.next939 to i32, !dbg !185
  %exitcond941 = icmp eq i32 %lftr.wideiv940, 3, !dbg !185
  br i1 %exitcond941, label %sw.epilog653, label %for.body187.for.body187_crit_edge, !dbg !185

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  %arrayidx195.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next939
  %.pre993 = load float* %arrayidx195.phi.trans.insert, align 4, !dbg !182, !tbaa !106
  %arrayidx202.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next939
  %.pre994 = load float* %arrayidx202.phi.trans.insert, align 4, !dbg !182, !tbaa !106
  br label %for.body187, !dbg !185

for.body217:                                      ; preds = %for.end73, %for.body217.for.body217_crit_edge
  %28 = phi float [ %.pre996, %for.body217.for.body217_crit_edge ], [ %16, %for.end73 ]
  %29 = phi float [ %.pre995, %for.body217.for.body217_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %for.body217.for.body217_crit_edge ], [ 0, %for.end73 ]
  %arrayidx220 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv942, !dbg !186
  %30 = load float* %arrayidx220, align 4, !dbg !186, !tbaa !106
  %conv221 = fpext float %30 to double, !dbg !186
  %conv226 = fpext float %29 to double, !dbg !186
  %mul227 = fmul double %conv226, 0x3FB821B1FD9BFEE5, !dbg !186
  %sub228 = fsub double %conv221, %mul227, !dbg !186
  %conv233 = fpext float %28 to double, !dbg !186
  %mul234 = fmul double %conv233, 0xBFA11745F4B7C896, !dbg !186
  %sub235 = fsub double %sub228, %mul234, !dbg !186
  %conv236 = fptrunc double %sub235 to float, !dbg !186
  %arrayidx239 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv942, !dbg !186
  store float %conv236, float* %arrayidx239, align 4, !dbg !186, !tbaa !106
  %31 = load float* %arrayidx220, align 4, !dbg !189, !tbaa !106
  %conv243 = fpext float %31 to double, !dbg !189
  %add250 = fadd double %conv243, %mul227, !dbg !189
  %sub257 = fsub double %add250, %mul234, !dbg !189
  %conv258 = fptrunc double %sub257 to float, !dbg !189
  %arrayidx261 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv942, !dbg !189
  store float %conv258, float* %arrayidx261, align 4, !dbg !189, !tbaa !106
  %indvars.iv.next943 = add i64 %indvars.iv942, 1, !dbg !190
  %lftr.wideiv944 = trunc i64 %indvars.iv.next943 to i32, !dbg !190
  %exitcond945 = icmp eq i32 %lftr.wideiv944, 3, !dbg !190
  br i1 %exitcond945, label %sw.epilog653, label %for.body217.for.body217_crit_edge, !dbg !190

for.body217.for.body217_crit_edge:                ; preds = %for.body217
  %arrayidx225.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next943
  %.pre995 = load float* %arrayidx225.phi.trans.insert, align 4, !dbg !186, !tbaa !106
  %arrayidx232.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next943
  %.pre996 = load float* %arrayidx232.phi.trans.insert, align 4, !dbg !186, !tbaa !106
  br label %for.body217, !dbg !190

for.body269:                                      ; preds = %for.inc378.for.body269_crit_edge, %for.cond266.preheader
  %32 = phi float [ %17, %for.cond266.preheader ], [ %.pre999, %for.inc378.for.body269_crit_edge ]
  %33 = phi float [ %16, %for.cond266.preheader ], [ %.pre998, %for.inc378.for.body269_crit_edge ]
  %34 = phi float [ %sub80, %for.cond266.preheader ], [ %.pre997, %for.inc378.for.body269_crit_edge ]
  %indvars.iv946 = phi i64 [ 0, %for.cond266.preheader ], [ %indvars.iv.next947, %for.inc378.for.body269_crit_edge ]
  %arrayidx272 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv946, !dbg !191
  %35 = load float* %arrayidx272, align 4, !dbg !191, !tbaa !106
  %conv273 = fpext float %35 to double, !dbg !191
  %conv278 = fpext float %34 to double, !dbg !191
  %mul279 = fmul double %conv278, 0x3FB821B1FD9BFEE5, !dbg !191
  %add280 = fadd double %conv273, %mul279, !dbg !191
  %conv285 = fpext float %33 to double, !dbg !191
  %mul286 = fmul double %conv285, 0xBFA11745F4B7C896, !dbg !191
  %sub287 = fsub double %add280, %mul286, !dbg !191
  %conv288 = fptrunc double %sub287 to float, !dbg !191
  %arrayidx291 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv946, !dbg !191
  store float %conv288, float* %arrayidx291, align 4, !dbg !191, !tbaa !106
  %36 = load float* %arrayidx272, align 4, !dbg !192, !tbaa !106
  %conv295 = fpext float %36 to double, !dbg !192
  %mul302 = fmul double %conv278, 0x3FA821B1FD9BFEE5, !dbg !193
  %sub303 = fsub double %conv295, %mul302, !dbg !193
  %conv310 = fpext float %32 to double, !dbg !194
  %mul311 = fmul double %conv310, 0x3FB4E60A7BB07B1D, !dbg !194
  %add312 = fadd double %sub303, %mul311, !dbg !194
  %sub319 = fsub double %add312, %mul286, !dbg !195
  %conv320 = fptrunc double %sub319 to float, !dbg !195
  %arrayidx323 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv946, !dbg !195
  store float %conv320, float* %arrayidx323, align 4, !dbg !195, !tbaa !106
  %37 = load float* %arrayidx325, align 4, !dbg !148, !tbaa !106
  %sub326 = fadd float %37, 1.234500e+04, !dbg !148
  %fabsf = call float @fabsf(float %sub326) #5, !dbg !148
  %38 = fpext float %fabsf to double, !dbg !148
  %cmp329 = fcmp ogt double %38, 1.200000e-38, !dbg !148
  br i1 %cmp329, label %land.lhs.true, label %for.inc378, !dbg !148

land.lhs.true:                                    ; preds = %for.body269
  %39 = load float* %arrayidx332, align 4, !dbg !151, !tbaa !106
  %sub333 = fadd float %39, 1.234500e+04, !dbg !151
  %fabsf844 = call float @fabsf(float %sub333) #5, !dbg !151
  %40 = fpext float %fabsf844 to double, !dbg !151
  %cmp336 = fcmp ogt double %40, 1.200000e-38, !dbg !151
  br i1 %cmp336, label %land.lhs.true338, label %for.inc378, !dbg !151

land.lhs.true338:                                 ; preds = %land.lhs.true
  %41 = load float* %arrayidx340, align 4, !dbg !152, !tbaa !106
  %sub341 = fadd float %41, 1.234500e+04, !dbg !152
  %fabsf845 = call float @fabsf(float %sub341) #5, !dbg !152
  %42 = fpext float %fabsf845 to double, !dbg !152
  %cmp344 = fcmp ogt double %42, 1.200000e-38, !dbg !152
  br i1 %cmp344, label %if.then, label %for.inc378, !dbg !152

if.then:                                          ; preds = %land.lhs.true338
  %43 = load float* %arrayidx272, align 4, !dbg !196, !tbaa !106
  %conv349 = fpext float %43 to double, !dbg !196
  %sub357 = fsub double %conv349, %mul302, !dbg !197
  %sub366 = fsub double %sub357, %mul311, !dbg !198
  %sub373 = fsub double %sub366, %mul286, !dbg !199
  %conv374 = fptrunc double %sub373 to float, !dbg !199
  %arrayidx377 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 %indvars.iv946, !dbg !199
  store float %conv374, float* %arrayidx377, align 4, !dbg !199, !tbaa !106
  br label %for.inc378, !dbg !199

for.inc378:                                       ; preds = %for.body269, %land.lhs.true, %land.lhs.true338, %if.then
  %indvars.iv.next947 = add i64 %indvars.iv946, 1, !dbg !153
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32, !dbg !153
  %exitcond949 = icmp eq i32 %lftr.wideiv948, 3, !dbg !153
  br i1 %exitcond949, label %sw.epilog653, label %for.inc378.for.body269_crit_edge, !dbg !153

for.inc378.for.body269_crit_edge:                 ; preds = %for.inc378
  %arrayidx277.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next947
  %.pre997 = load float* %arrayidx277.phi.trans.insert, align 4, !dbg !191, !tbaa !106
  %arrayidx284.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next947
  %.pre998 = load float* %arrayidx284.phi.trans.insert, align 4, !dbg !191, !tbaa !106
  %arrayidx309.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next947
  %.pre999 = load float* %arrayidx309.phi.trans.insert, align 4, !dbg !194, !tbaa !106
  br label %for.body269, !dbg !153

for.body385:                                      ; preds = %for.end73, %entry, %for.body385
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %for.body385 ], [ 0, %entry ], [ 0, %for.end73 ]
  %arrayidx388 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv954, !dbg !200
  %44 = load float* %arrayidx388, align 4, !dbg !200, !tbaa !106
  %arrayidx391 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv954, !dbg !200
  %45 = load float* %arrayidx391, align 4, !dbg !200, !tbaa !106
  %add392 = fadd float %44, %45, !dbg !200
  %arrayidx395 = getelementptr inbounds [3 x float]* %xa, i64 3, i64 %indvars.iv954, !dbg !200
  %46 = load float* %arrayidx395, align 4, !dbg !200, !tbaa !106
  %add396 = fadd float %add392, %46, !dbg !200
  %conv399 = fdiv float %add396, 3.000000e+00, !dbg !200
  call void @llvm.dbg.value(metadata !{float %conv399}, i64 0, metadata !36), !dbg !200
  %arrayidx402 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv954, !dbg !203
  %47 = load float* %arrayidx402, align 4, !dbg !203, !tbaa !106
  %sub403 = fsub float %47, %conv399, !dbg !203
  %arrayidx405 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv954, !dbg !203
  store float %sub403, float* %arrayidx405, align 4, !dbg !203, !tbaa !106
  %indvars.iv.next955 = add i64 %indvars.iv954, 1, !dbg !204
  %lftr.wideiv956 = trunc i64 %indvars.iv.next955 to i32, !dbg !204
  %exitcond957 = icmp eq i32 %lftr.wideiv956, 3, !dbg !204
  br i1 %exitcond957, label %for.end408, label %for.body385, !dbg !204

for.end408:                                       ; preds = %for.body385
  %arraydecay = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 0, !dbg !205
  call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !206) #2, !dbg !207
  %48 = load float* %arraydecay, align 4, !dbg !208, !tbaa !106
  %mul.i890 = fmul float %48, %48, !dbg !208
  %arrayidx2.i891 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 1, !dbg !208
  %49 = load float* %arrayidx2.i891, align 4, !dbg !208, !tbaa !106
  %mul4.i892 = fmul float %49, %49, !dbg !208
  %add.i893 = fadd float %mul.i890, %mul4.i892, !dbg !208
  %arrayidx5.i894 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 2, !dbg !208
  %50 = load float* %arrayidx5.i894, align 4, !dbg !208, !tbaa !106
  %mul7.i895 = fmul float %50, %50, !dbg !208
  %add8.i896 = fadd float %add.i893, %mul7.i895, !dbg !208
  %conv9.i897 = call float @sqrtf(float %add8.i896) #4, !dbg !208
  call void @llvm.dbg.value(metadata !{float %conv9.i897}, i64 0, metadata !36), !dbg !205
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !209
  %conv422 = fpext float %conv9.i897 to double, !dbg !211
  br label %for.body413, !dbg !209

for.body413:                                      ; preds = %for.body413.for.body413_crit_edge, %for.end408
  %51 = phi float [ %48, %for.end408 ], [ %.pre, %for.body413.for.body413_crit_edge ]
  %indvars.iv950 = phi i64 [ 0, %for.end408 ], [ %indvars.iv.next951, %for.body413.for.body413_crit_edge ]
  %arrayidx416 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv950, !dbg !211
  %52 = load float* %arrayidx416, align 4, !dbg !211, !tbaa !106
  %conv417 = fpext float %52 to double, !dbg !211
  %conv420 = fpext float %51 to double, !dbg !211
  %mul421 = fmul double %conv420, 1.000000e-01, !dbg !211
  %div423 = fdiv double %mul421, %conv422, !dbg !211
  %add424 = fadd double %conv417, %div423, !dbg !211
  %conv425 = fptrunc double %add424 to float, !dbg !211
  %arrayidx428 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv950, !dbg !211
  store float %conv425, float* %arrayidx428, align 4, !dbg !211, !tbaa !106
  %indvars.iv.next951 = add i64 %indvars.iv950, 1, !dbg !209
  %lftr.wideiv952 = trunc i64 %indvars.iv.next951 to i32, !dbg !209
  %exitcond953 = icmp eq i32 %lftr.wideiv952, 3, !dbg !209
  br i1 %exitcond953, label %sw.epilog653, label %for.body413.for.body413_crit_edge, !dbg !209

for.body413.for.body413_crit_edge:                ; preds = %for.body413
  %arrayidx419.phi.trans.insert = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv.next951
  %.pre = load float* %arrayidx419.phi.trans.insert, align 4, !dbg !211, !tbaa !106
  br label %for.body413, !dbg !209

for.body436:                                      ; preds = %for.end73, %entry, %for.body436
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %for.body436 ], [ 0, %entry ], [ 0, %for.end73 ]
  %arrayidx439 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv962, !dbg !212
  %53 = load float* %arrayidx439, align 4, !dbg !212, !tbaa !106
  %conv440 = fpext float %53 to double, !dbg !212
  %arrayidx443 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv962, !dbg !212
  %54 = load float* %arrayidx443, align 4, !dbg !212, !tbaa !106
  %arrayidx446 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv962, !dbg !212
  %55 = load float* %arrayidx446, align 4, !dbg !212, !tbaa !106
  %add447 = fadd float %54, %55, !dbg !212
  %conv448 = fpext float %add447 to double, !dbg !212
  %mul449 = fmul double %conv448, 5.000000e-01, !dbg !212
  %sub450 = fsub double %conv440, %mul449, !dbg !212
  %conv451 = fptrunc double %sub450 to float, !dbg !212
  %arrayidx453 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv962, !dbg !212
  store float %conv451, float* %arrayidx453, align 4, !dbg !212, !tbaa !106
  %indvars.iv.next963 = add i64 %indvars.iv962, 1, !dbg !214
  %lftr.wideiv964 = trunc i64 %indvars.iv.next963 to i32, !dbg !214
  %exitcond965 = icmp eq i32 %lftr.wideiv964, 3, !dbg !214
  br i1 %exitcond965, label %for.end456, label %for.body436, !dbg !214

for.end456:                                       ; preds = %for.body436
  %arraydecay457 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 0, !dbg !215
  call void @llvm.dbg.value(metadata !{float* %arraydecay457}, i64 0, metadata !216) #2, !dbg !217
  %56 = load float* %arraydecay457, align 4, !dbg !218, !tbaa !106
  %mul.i881 = fmul float %56, %56, !dbg !218
  %arrayidx2.i882 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 1, !dbg !218
  %57 = load float* %arrayidx2.i882, align 4, !dbg !218, !tbaa !106
  %mul4.i883 = fmul float %57, %57, !dbg !218
  %add.i884 = fadd float %mul.i881, %mul4.i883, !dbg !218
  %arrayidx5.i885 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 2, !dbg !218
  %58 = load float* %arrayidx5.i885, align 4, !dbg !218, !tbaa !106
  %mul7.i886 = fmul float %58, %58, !dbg !218
  %add8.i887 = fadd float %add.i884, %mul7.i886, !dbg !218
  %conv9.i888 = call float @sqrtf(float %add8.i887) #4, !dbg !218
  call void @llvm.dbg.value(metadata !{float %conv9.i888}, i64 0, metadata !45), !dbg !215
  %arraydecay460 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0, !dbg !219
  %arraydecay462 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0, !dbg !219
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay460}, i64 0, metadata !220), !dbg !221
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay462}, i64 0, metadata !222), !dbg !221
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !224), !dbg !221
  %59 = load float* %arraydecay460, align 4, !dbg !225, !tbaa !106
  %60 = load float* %arraydecay462, align 4, !dbg !225, !tbaa !106
  %sub.i872 = fsub float %59, %60, !dbg !225
  tail call void @llvm.dbg.value(metadata !{float %sub.i872}, i64 0, metadata !226), !dbg !225
  %arrayidx2.i873 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1, !dbg !227
  %61 = load float* %arrayidx2.i873, align 4, !dbg !227, !tbaa !106
  %arrayidx3.i874 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1, !dbg !227
  %62 = load float* %arrayidx3.i874, align 4, !dbg !227, !tbaa !106
  %sub4.i875 = fsub float %61, %62, !dbg !227
  tail call void @llvm.dbg.value(metadata !{float %sub4.i875}, i64 0, metadata !228), !dbg !227
  %arrayidx5.i876 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2, !dbg !229
  %63 = load float* %arrayidx5.i876, align 4, !dbg !229, !tbaa !106
  %arrayidx6.i877 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2, !dbg !229
  %64 = load float* %arrayidx6.i877, align 4, !dbg !229, !tbaa !106
  %sub7.i878 = fsub float %63, %64, !dbg !229
  tail call void @llvm.dbg.value(metadata !{float %sub7.i878}, i64 0, metadata !230), !dbg !229
  %arraydecay467 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0, !dbg !231
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay460}, i64 0, metadata !232), !dbg !233
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay467}, i64 0, metadata !234), !dbg !233
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !235), !dbg !233
  %65 = load float* %arraydecay467, align 4, !dbg !236, !tbaa !106
  %sub.i868 = fsub float %59, %65, !dbg !236
  tail call void @llvm.dbg.value(metadata !{float %sub.i868}, i64 0, metadata !237), !dbg !236
  %arrayidx3.i870 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1, !dbg !238
  %66 = load float* %arrayidx3.i870, align 4, !dbg !238, !tbaa !106
  %sub4.i = fsub float %61, %66, !dbg !238
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !239), !dbg !238
  %arrayidx6.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2, !dbg !240
  %67 = load float* %arrayidx6.i, align 4, !dbg !240, !tbaa !106
  %sub7.i = fsub float %63, %67, !dbg !240
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !241), !dbg !240
  %arraydecay471 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 0, !dbg !242
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !243), !dbg !244
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !245), !dbg !244
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay471}, i64 0, metadata !246), !dbg !244
  %mul.i864 = fmul float %sub4.i875, %sub7.i, !dbg !247
  %mul4.i867 = fmul float %sub7.i878, %sub4.i, !dbg !247
  %sub.i = fsub float %mul.i864, %mul4.i867, !dbg !247
  store float %sub.i, float* %arraydecay471, align 4, !dbg !247, !tbaa !106
  %mul8.i = fmul float %sub7.i878, %sub.i868, !dbg !248
  %mul11.i = fmul float %sub.i872, %sub7.i, !dbg !248
  %sub12.i = fsub float %mul8.i, %mul11.i, !dbg !248
  %arrayidx13.i = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 1, !dbg !248
  store float %sub12.i, float* %arrayidx13.i, align 4, !dbg !248, !tbaa !106
  %mul16.i = fmul float %sub.i872, %sub4.i, !dbg !249
  %mul19.i = fmul float %sub4.i875, %sub.i868, !dbg !249
  %sub20.i = fsub float %mul16.i, %mul19.i, !dbg !249
  %arrayidx21.i = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 2, !dbg !249
  store float %sub20.i, float* %arrayidx21.i, align 4, !dbg !249, !tbaa !106
  call void @llvm.dbg.value(metadata !{float* %arraydecay471}, i64 0, metadata !250) #2, !dbg !252
  %mul.i860 = fmul float %sub.i, %sub.i, !dbg !253
  %mul4.i = fmul float %sub12.i, %sub12.i, !dbg !253
  %add.i = fadd float %mul.i860, %mul4.i, !dbg !253
  %mul7.i = fmul float %sub20.i, %sub20.i, !dbg !253
  %add8.i = fadd float %mul7.i, %add.i, !dbg !253
  %conv9.i = call float @sqrtf(float %add8.i) #4, !dbg !253
  call void @llvm.dbg.value(metadata !{float %conv9.i}, i64 0, metadata !46), !dbg !251
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !254
  %conv487 = fpext float %conv9.i888 to double, !dbg !256
  %conv494 = fpext float %conv9.i to double, !dbg !258
  br label %for.body477, !dbg !254

for.body477:                                      ; preds = %for.body477.for.body477_crit_edge, %for.end456
  %68 = phi float [ %sub.i, %for.end456 ], [ %.pre987, %for.body477.for.body477_crit_edge ]
  %69 = phi float [ %56, %for.end456 ], [ %.pre986, %for.body477.for.body477_crit_edge ]
  %indvars.iv958 = phi i64 [ 0, %for.end456 ], [ %indvars.iv.next959, %for.body477.for.body477_crit_edge ]
  %arrayidx480 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv958, !dbg !256
  %70 = load float* %arrayidx480, align 4, !dbg !256, !tbaa !106
  %conv481 = fpext float %70 to double, !dbg !256
  %conv485 = fpext float %69 to double, !dbg !256
  %mul486 = fmul double %conv485, 0x3FE277F930881DAF, !dbg !256
  %div488 = fdiv double %mul486, %conv487, !dbg !256
  %conv492 = fpext float %68 to double, !dbg !258
  %mul493 = fmul double %conv492, 0x3FEA21ED787F2AEF, !dbg !258
  %div495 = fdiv double %mul493, %conv494, !dbg !258
  %add496 = fadd double %div488, %div495, !dbg !258
  %mul497 = fmul double %add496, 1.000000e-01, !dbg !258
  %add498 = fadd double %conv481, %mul497, !dbg !258
  %conv499 = fptrunc double %add498 to float, !dbg !258
  %arrayidx502 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv958, !dbg !258
  store float %conv499, float* %arrayidx502, align 4, !dbg !258, !tbaa !106
  %71 = load float* %arrayidx480, align 4, !dbg !259, !tbaa !106
  %conv506 = fpext float %71 to double, !dbg !259
  %sub521 = fsub double %div488, %div495, !dbg !260
  %mul522 = fmul double %sub521, 1.000000e-01, !dbg !260
  %add523 = fadd double %conv506, %mul522, !dbg !260
  %conv524 = fptrunc double %add523 to float, !dbg !260
  %arrayidx527 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv958, !dbg !260
  store float %conv524, float* %arrayidx527, align 4, !dbg !260, !tbaa !106
  %indvars.iv.next959 = add i64 %indvars.iv958, 1, !dbg !254
  %lftr.wideiv960 = trunc i64 %indvars.iv.next959 to i32, !dbg !254
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 3, !dbg !254
  br i1 %exitcond961, label %sw.epilog653, label %for.body477.for.body477_crit_edge, !dbg !254

for.body477.for.body477_crit_edge:                ; preds = %for.body477
  %arrayidx484.phi.trans.insert = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv.next959
  %.pre986 = load float* %arrayidx484.phi.trans.insert, align 4, !dbg !256, !tbaa !106
  %arrayidx491.phi.trans.insert = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 %indvars.iv.next959
  %.pre987 = load float* %arrayidx491.phi.trans.insert, align 4, !dbg !258, !tbaa !106
  br label %for.body477, !dbg !254

sw.bb531:                                         ; preds = %entry, %for.end73
  call void @gen_waterhydrogen([3 x float]* %xa, [3 x float]* %xh) #6, !dbg !261
  br label %sw.epilog653, !dbg !262

for.body536:                                      ; preds = %for.end73, %for.body536.for.body536_crit_edge
  %72 = phi float [ %.pre1001, %for.body536.for.body536_crit_edge ], [ %16, %for.end73 ]
  %73 = phi float [ %.pre1000, %for.body536.for.body536_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %for.body536.for.body536_crit_edge ], [ 0, %for.end73 ]
  %arrayidx539 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv966, !dbg !263
  %74 = load float* %arrayidx539, align 4, !dbg !263, !tbaa !106
  %conv540 = fpext float %74 to double, !dbg !263
  %conv545 = fpext float %73 to double, !dbg !263
  %mul546 = fmul double %conv545, 0x3FBF0572CFF0A307, !dbg !263
  %sub547 = fsub double %conv540, %mul546, !dbg !263
  %conv552 = fpext float %72 to double, !dbg !263
  %mul553 = fmul double %conv552, 0xBFAF9CBD7EF2DD0E, !dbg !263
  %sub554 = fsub double %sub547, %mul553, !dbg !263
  %conv555 = fptrunc double %sub554 to float, !dbg !263
  %arrayidx558 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv966, !dbg !263
  store float %conv555, float* %arrayidx558, align 4, !dbg !263, !tbaa !106
  %75 = load float* %arrayidx539, align 4, !dbg !266, !tbaa !106
  %conv562 = fpext float %75 to double, !dbg !266
  %add569 = fadd double %conv562, %mul546, !dbg !266
  %sub576 = fsub double %add569, %mul553, !dbg !266
  %conv577 = fptrunc double %sub576 to float, !dbg !266
  %arrayidx580 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv966, !dbg !266
  store float %conv577, float* %arrayidx580, align 4, !dbg !266, !tbaa !106
  %indvars.iv.next967 = add i64 %indvars.iv966, 1, !dbg !267
  %lftr.wideiv968 = trunc i64 %indvars.iv.next967 to i32, !dbg !267
  %exitcond969 = icmp eq i32 %lftr.wideiv968, 3, !dbg !267
  br i1 %exitcond969, label %sw.epilog653, label %for.body536.for.body536_crit_edge, !dbg !267

for.body536.for.body536_crit_edge:                ; preds = %for.body536
  %arrayidx544.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next967
  %.pre1000 = load float* %arrayidx544.phi.trans.insert, align 4, !dbg !263, !tbaa !106
  %arrayidx551.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next967
  %.pre1001 = load float* %arrayidx551.phi.trans.insert, align 4, !dbg !263, !tbaa !106
  br label %for.body536, !dbg !267

sw.bb584:                                         ; preds = %for.end73
  %76 = bitcast [4 x [3 x float]]* %xa2 to i8*, !dbg !268
  call void @llvm.lifetime.start(i64 48, i8* %76) #2, !dbg !268
  call void @llvm.dbg.declare(metadata !{[4 x [3 x float]]* %xa2}, metadata !47), !dbg !268
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !269
  br label %for.body588, !dbg !269

for.body588:                                      ; preds = %for.body588.for.body588_crit_edge, %sw.bb584
  %77 = phi float [ %16, %sw.bb584 ], [ %.pre992, %for.body588.for.body588_crit_edge ]
  %78 = phi float [ %sub80, %sw.bb584 ], [ %.pre991, %for.body588.for.body588_crit_edge ]
  %indvars.iv970 = phi i64 [ 0, %sw.bb584 ], [ %indvars.iv.next971, %for.body588.for.body588_crit_edge ]
  %arrayidx591 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv970, !dbg !271
  %79 = load float* %arrayidx591, align 4, !dbg !271, !tbaa !106
  %conv592 = fpext float %79 to double, !dbg !271
  %conv597 = fpext float %78 to double, !dbg !271
  %mul598 = fmul double %conv597, 0x3FBAFD905B6AC657, !dbg !271
  %sub599 = fsub double %conv592, %mul598, !dbg !271
  %conv604 = fpext float %77 to double, !dbg !271
  %mul605 = fmul double %conv604, 0xBFB037AF519DA643, !dbg !271
  %sub606 = fsub double %sub599, %mul605, !dbg !271
  %conv607 = fptrunc double %sub606 to float, !dbg !271
  %arrayidx610 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv970, !dbg !271
  store float %conv607, float* %arrayidx610, align 4, !dbg !271, !tbaa !106
  %80 = load float* %arrayidx591, align 4, !dbg !273, !tbaa !106
  %conv614 = fpext float %80 to double, !dbg !273
  %mul620 = fmul double %conv597, 0x3FBD0079302DD768, !dbg !273
  %add621 = fadd double %conv614, %mul620, !dbg !273
  %mul627 = fmul double %conv604, 0xBFAB0C2D77379851, !dbg !273
  %sub628 = fsub double %add621, %mul627, !dbg !273
  %conv629 = fptrunc double %sub628 to float, !dbg !273
  %arrayidx632 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv970, !dbg !273
  store float %conv629, float* %arrayidx632, align 4, !dbg !273, !tbaa !106
  %indvars.iv.next971 = add i64 %indvars.iv970, 1, !dbg !269
  %lftr.wideiv972 = trunc i64 %indvars.iv.next971 to i32, !dbg !269
  %exitcond973 = icmp eq i32 %lftr.wideiv972, 3, !dbg !269
  br i1 %exitcond973, label %for.end635, label %for.body588.for.body588_crit_edge, !dbg !269

for.body588.for.body588_crit_edge:                ; preds = %for.body588
  %arrayidx596.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next971
  %.pre991 = load float* %arrayidx596.phi.trans.insert, align 4, !dbg !271, !tbaa !106
  %arrayidx603.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next971
  %.pre992 = load float* %arrayidx603.phi.trans.insert, align 4, !dbg !271, !tbaa !106
  br label %for.body588, !dbg !269

for.end635:                                       ; preds = %for.body588
  %arraydecay637 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 0, !dbg !274
  %arraydecay639 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 0, !dbg !274
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay637}, i64 0, metadata !275), !dbg !276
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay639}, i64 0, metadata !277), !dbg !276
  %81 = load float* %arraydecay637, align 4, !dbg !278, !tbaa !106
  store float %81, float* %arraydecay639, align 16, !dbg !278, !tbaa !106
  %arrayidx2.i855 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 1, !dbg !280
  %82 = load float* %arrayidx2.i855, align 4, !dbg !280, !tbaa !106
  %arrayidx3.i856 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 1, !dbg !280
  store float %82, float* %arrayidx3.i856, align 4, !dbg !280, !tbaa !106
  %arrayidx4.i857 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 2, !dbg !281
  %83 = load float* %arrayidx4.i857, align 4, !dbg !281, !tbaa !106
  %arrayidx5.i858 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 2, !dbg !281
  store float %83, float* %arrayidx5.i858, align 8, !dbg !281, !tbaa !106
  %arraydecay641 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0, !dbg !282
  %arraydecay643 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 0, !dbg !282
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay641}, i64 0, metadata !283), !dbg !284
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay643}, i64 0, metadata !285), !dbg !284
  %84 = load float* %arraydecay641, align 4, !dbg !286, !tbaa !106
  store float %84, float* %arraydecay643, align 4, !dbg !286, !tbaa !106
  %arrayidx2.i851 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1, !dbg !287
  %85 = load float* %arrayidx2.i851, align 4, !dbg !287, !tbaa !106
  %arrayidx3.i852 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 1, !dbg !287
  store float %85, float* %arrayidx3.i852, align 4, !dbg !287, !tbaa !106
  %arrayidx4.i853 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2, !dbg !288
  %86 = load float* %arrayidx4.i853, align 4, !dbg !288, !tbaa !106
  %arrayidx5.i854 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 2, !dbg !288
  store float %86, float* %arrayidx5.i854, align 4, !dbg !288, !tbaa !106
  %arraydecay645 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0, !dbg !289
  %arraydecay647 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 0, !dbg !289
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay645}, i64 0, metadata !290), !dbg !291
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay647}, i64 0, metadata !292), !dbg !291
  %87 = load float* %arraydecay645, align 4, !dbg !293, !tbaa !106
  store float %87, float* %arraydecay647, align 8, !dbg !293, !tbaa !106
  %arrayidx2.i847 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1, !dbg !294
  %88 = load float* %arrayidx2.i847, align 4, !dbg !294, !tbaa !106
  %arrayidx3.i848 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 1, !dbg !294
  store float %88, float* %arrayidx3.i848, align 4, !dbg !294, !tbaa !106
  %arrayidx4.i849 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2, !dbg !295
  %89 = load float* %arrayidx4.i849, align 4, !dbg !295, !tbaa !106
  %arrayidx5.i850 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 2, !dbg !295
  store float %89, float* %arrayidx5.i850, align 8, !dbg !295, !tbaa !106
  %arraydecay649 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0, !dbg !296
  %arraydecay651 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 0, !dbg !296
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay649}, i64 0, metadata !297), !dbg !298
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay651}, i64 0, metadata !299), !dbg !298
  %90 = load float* %arraydecay649, align 4, !dbg !300, !tbaa !106
  store float %90, float* %arraydecay651, align 4, !dbg !300, !tbaa !106
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1, !dbg !301
  %91 = load float* %arrayidx2.i, align 4, !dbg !301, !tbaa !106
  %arrayidx3.i = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 1, !dbg !301
  store float %91, float* %arrayidx3.i, align 4, !dbg !301, !tbaa !106
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2, !dbg !302
  %92 = load float* %arrayidx4.i, align 4, !dbg !302, !tbaa !106
  %arrayidx5.i = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 2, !dbg !302
  store float %92, float* %arrayidx5.i, align 4, !dbg !302, !tbaa !106
  %arraydecay652 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, !dbg !303
  %add.ptr = getelementptr inbounds [3 x float]* %xh, i64 2, !dbg !303
  call void @calc_h_pos(i32 2, [3 x float]* %arraydecay652, [3 x float]* %add.ptr) #6, !dbg !303
  call void @llvm.lifetime.end(i64 48, i8* %76) #2, !dbg !304
  br label %sw.epilog653

sw.default:                                       ; preds = %entry, %for.end73
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), i32 %nht) #7, !dbg !305
  br label %sw.epilog653, !dbg !306

sw.epilog653:                                     ; preds = %for.body536, %for.body477, %for.body413, %for.inc378, %for.body217, %for.body187, %for.body164, %sw.default, %for.end635, %sw.bb531
  ret void, !dbg !307
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #4

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !90, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !20, metadata !52, metadata !63, metadata !70, metadata !80, metadata !85}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gen_waterhydrogen", metadata !"gen_waterhydrogen", metadata !"", i32 47, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*)* @gen_waterhydrogen, null, null, metadata !15, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [gen_waterhydrogen]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!11 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!12 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !4, metadata !"xa", metadata !5, i32 16777263, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xa] [line 47]
!17 = metadata !{i32 786689, metadata !4, metadata !"xh", metadata !5, i32 33554479, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xh] [line 47]
!18 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 72, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 72]
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_h_pos", metadata !"calc_h_pos", metadata !"", i32 83, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*)* @calc_h_pos, null, null, metadata !23, i32 84} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 84] [calc_h_pos]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null, metadata !19, metadata !8, metadata !8}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !39, metadata !40, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!24 = metadata !{i32 786689, metadata !20, metadata !"nht", metadata !5, i32 16777299, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nht] [line 83]
!25 = metadata !{i32 786689, metadata !20, metadata !"xa", metadata !5, i32 33554515, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xa] [line 83]
!26 = metadata !{i32 786689, metadata !20, metadata !"xh", metadata !5, i32 50331731, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xh] [line 83]
!27 = metadata !{i32 786688, metadata !20, metadata !"sa", metadata !5, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 96]
!28 = metadata !{i32 786688, metadata !20, metadata !"sb", metadata !5, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sb] [line 96]
!29 = metadata !{i32 786688, metadata !20, metadata !"sij", metadata !5, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sij] [line 96]
!30 = metadata !{i32 786688, metadata !20, metadata !"s6", metadata !5, i32 97, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s6] [line 97]
!31 = metadata !{i32 786688, metadata !20, metadata !"rij", metadata !5, i32 97, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rij] [line 97]
!32 = metadata !{i32 786688, metadata !20, metadata !"ra", metadata !5, i32 97, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ra] [line 97]
!33 = metadata !{i32 786688, metadata !20, metadata !"rb", metadata !5, i32 97, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 97]
!34 = metadata !{i32 786688, metadata !20, metadata !"xd", metadata !5, i32 97, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xd] [line 97]
!35 = metadata !{i32 786688, metadata !20, metadata !"d", metadata !5, i32 98, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 98]
!36 = metadata !{i32 786688, metadata !37, metadata !"center", metadata !5, i32 184, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [center] [line 184]
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 183, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!38 = metadata !{i32 786443, metadata !1, metadata !20, i32 135, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!39 = metadata !{i32 786688, metadata !37, metadata !"dxc", metadata !5, i32 185, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxc] [line 185]
!40 = metadata !{i32 786688, metadata !41, metadata !"rBB", metadata !5, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rBB] [line 197]
!41 = metadata !{i32 786443, metadata !1, metadata !38, i32 196, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!42 = metadata !{i32 786688, metadata !41, metadata !"rCC1", metadata !5, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rCC1] [line 197]
!43 = metadata !{i32 786688, metadata !41, metadata !"rCC2", metadata !5, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rCC2] [line 197]
!44 = metadata !{i32 786688, metadata !41, metadata !"rNN", metadata !5, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rNN] [line 197]
!45 = metadata !{i32 786688, metadata !41, metadata !"bb", metadata !5, i32 198, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bb] [line 198]
!46 = metadata !{i32 786688, metadata !41, metadata !"nn", metadata !5, i32 198, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 198]
!47 = metadata !{i32 786688, metadata !48, metadata !"xa2", metadata !5, i32 227, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xa2] [line 227]
!48 = metadata !{i32 786443, metadata !1, metadata !38, i32 226, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 32, i32 0, i32 0, metadata !9, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 32, offset 0] [from rvec]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!52 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !60, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!53 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!54 = metadata !{i32 786473, metadata !53}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !57, metadata !59}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786689, metadata !52, metadata !"a", metadata !54, i32 16777486, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!62 = metadata !{i32 786689, metadata !52, metadata !"b", metadata !54, i32 33554702, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!63 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"oprod", metadata !"oprod", metadata !"", i32 417, metadata !64, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !66, i32 418} ; [ DW_TAG_subprogram ] [line 417] [local] [def] [scope 418] [oprod]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !59, metadata !59, metadata !59}
!66 = metadata !{metadata !67, metadata !68, metadata !69}
!67 = metadata !{i32 786689, metadata !63, metadata !"a", metadata !54, i32 16777633, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 417]
!68 = metadata !{i32 786689, metadata !63, metadata !"b", metadata !54, i32 33554849, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 417]
!69 = metadata !{i32 786689, metadata !63, metadata !"c", metadata !54, i32 50332065, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 417]
!70 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !71, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !73, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{null, metadata !57, metadata !57, metadata !59}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!74 = metadata !{i32 786689, metadata !70, metadata !"a", metadata !54, i32 16777460, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!75 = metadata !{i32 786689, metadata !70, metadata !"b", metadata !54, i32 33554676, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!76 = metadata !{i32 786689, metadata !70, metadata !"c", metadata !54, i32 50331892, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!77 = metadata !{i32 786688, metadata !70, metadata !"x", metadata !54, i32 246, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!78 = metadata !{i32 786688, metadata !70, metadata !"y", metadata !54, i32 246, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!79 = metadata !{i32 786688, metadata !70, metadata !"z", metadata !54, i32 246, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!80 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !81, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !83, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !11, metadata !59}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786689, metadata !80, metadata !"a", metadata !54, i32 16777574, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!85 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !86, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !88, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!86 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !11, metadata !11}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!90 = metadata !{metadata !91, metadata !96, metadata !97}
!91 = metadata !{i32 786484, i32 0, metadata !4, metadata !"matrix1", metadata !"matrix1", metadata !"", metadata !5, i32 52, metadata !92, i32 1, i32 1, [6 x [3 x float]]* @gen_waterhydrogen.matrix1, null} ; [ DW_TAG_variable ] [matrix1] [line 52] [local] [def]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 32, i32 0, i32 0, metadata !93, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 32, offset 0] [from ]
!93 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from rvec]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!96 = metadata !{i32 786484, i32 0, metadata !4, metadata !"matrix2", metadata !"matrix2", metadata !"", metadata !5, i32 60, metadata !92, i32 1, i32 1, [6 x [3 x float]]* @gen_waterhydrogen.matrix2, null} ; [ DW_TAG_variable ] [matrix2] [line 60] [local] [def]
!97 = metadata !{i32 786484, i32 0, metadata !4, metadata !"l", metadata !"l", metadata !"", metadata !5, i32 71, metadata !19, i32 1, i32 1, i32* @gen_waterhydrogen.l, null} ; [ DW_TAG_variable ] [l] [line 71] [local] [def]
!98 = metadata !{i32 47, i32 0, metadata !4, null}
!99 = metadata !{i32 75, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!101 = metadata !{i32 76, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !100, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!103 = metadata !{metadata !"int", metadata !104}
!104 = metadata !{metadata !"omnipotent char", metadata !105}
!105 = metadata !{metadata !"Simple C/C++ TBAA"}
!106 = metadata !{metadata !"float", metadata !104}
!107 = metadata !{i32 77, i32 0, metadata !102, null}
!108 = metadata !{i32 80, i32 0, metadata !4, null}
!109 = metadata !{i32 81, i32 0, metadata !4, null}
!110 = metadata !{i32 83, i32 0, metadata !20, null}
!111 = metadata !{i32 96, i32 0, metadata !20, null}
!112 = metadata !{float 0x3FEBB67AE0000000}
!113 = metadata !{i32 100, i32 0, metadata !20, null}
!114 = metadata !{i32 103, i32 0, metadata !20, null}
!115 = metadata !{i32 111, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 110, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!118 = metadata !{i32 786443, metadata !1, metadata !20, i32 103, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!119 = metadata !{i32 112, i32 0, metadata !116, null}
!120 = metadata !{i32 113, i32 0, metadata !116, null}
!121 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [x] [line 197]
!122 = metadata !{i32 114, i32 0, metadata !116, null}
!123 = metadata !{i32 197, i32 0, metadata !85, metadata !122}
!124 = metadata !{i32 199, i32 0, metadata !85, metadata !122}
!125 = metadata !{i32 110, i32 0, metadata !117, null}
!126 = metadata !{i32 116, i32 0, metadata !118, null}
!127 = metadata !{i32 117, i32 0, metadata !118, null}
!128 = metadata !{i32 118, i32 0, metadata !118, null}
!129 = metadata !{i32 119, i32 0, metadata !118, null}
!130 = metadata !{float 0.000000e+00}
!131 = metadata !{i32 120, i32 0, metadata !118, null}
!132 = metadata !{i32 121, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !118, i32 121, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!134 = metadata !{i32 122, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !133, i32 121, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!136 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, metadata !137} ; [ DW_TAG_arg_variable ] [x] [line 197]
!137 = metadata !{i32 123, i32 0, metadata !135, null}
!138 = metadata !{i32 197, i32 0, metadata !85, metadata !137}
!139 = metadata !{i32 199, i32 0, metadata !85, metadata !137}
!140 = metadata !{i32 125, i32 0, metadata !118, null}
!141 = metadata !{i32 126, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !118, i32 126, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!143 = metadata !{i32 127, i32 0, metadata !142, null}
!144 = metadata !{i32 129, i32 0, metadata !118, null}
!145 = metadata !{i32 130, i32 0, metadata !118, null}
!146 = metadata !{i32 131, i32 0, metadata !118, null}
!147 = metadata !{i32 135, i32 0, metadata !20, null}
!148 = metadata !{i32 174, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !150, i32 168, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!150 = metadata !{i32 786443, metadata !1, metadata !38, i32 168, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!151 = metadata !{i32 175, i32 0, metadata !149, null}
!152 = metadata !{i32 176, i32 0, metadata !149, null}
!153 = metadata !{i32 168, i32 0, metadata !150, null}
!154 = metadata !{i32 140, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !156, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!156 = metadata !{i32 786443, metadata !1, metadata !38, i32 139, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!157 = metadata !{i32 141, i32 0, metadata !155, null}
!158 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, metadata !159} ; [ DW_TAG_arg_variable ] [x] [line 197]
!159 = metadata !{i32 142, i32 0, metadata !155, null}
!160 = metadata !{i32 197, i32 0, metadata !85, metadata !159}
!161 = metadata !{i32 199, i32 0, metadata !85, metadata !159}
!162 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, metadata !163} ; [ DW_TAG_arg_variable ] [x] [line 197]
!163 = metadata !{i32 143, i32 0, metadata !155, null}
!164 = metadata !{i32 197, i32 0, metadata !85, metadata !163}
!165 = metadata !{i32 199, i32 0, metadata !85, metadata !163}
!166 = metadata !{i32 139, i32 0, metadata !156, null}
!167 = metadata !{i32 145, i32 0, metadata !38, null}
!168 = metadata !{i32 146, i32 0, metadata !38, null}
!169 = metadata !{i32 147, i32 0, metadata !38, null}
!170 = metadata !{i32 148, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !38, i32 148, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!172 = metadata !{i32 149, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !171, i32 148, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!174 = metadata !{i32 786689, metadata !85, metadata !"x", metadata !54, i32 16777413, metadata !11, i32 0, metadata !175} ; [ DW_TAG_arg_variable ] [x] [line 197]
!175 = metadata !{i32 150, i32 0, metadata !173, null}
!176 = metadata !{i32 197, i32 0, metadata !85, metadata !175}
!177 = metadata !{i32 199, i32 0, metadata !85, metadata !175}
!178 = metadata !{i32 152, i32 0, metadata !38, null}
!179 = metadata !{i32 153, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !38, i32 153, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!181 = metadata !{i32 154, i32 0, metadata !180, null}
!182 = metadata !{i32 158, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !184, i32 157, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!184 = metadata !{i32 786443, metadata !1, metadata !38, i32 157, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!185 = metadata !{i32 157, i32 0, metadata !184, null}
!186 = metadata !{i32 163, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 162, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!188 = metadata !{i32 786443, metadata !1, metadata !38, i32 162, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!189 = metadata !{i32 164, i32 0, metadata !187, null}
!190 = metadata !{i32 162, i32 0, metadata !188, null}
!191 = metadata !{i32 169, i32 0, metadata !149, null}
!192 = metadata !{i32 170, i32 0, metadata !149, null}
!193 = metadata !{i32 171, i32 0, metadata !149, null}
!194 = metadata !{i32 172, i32 0, metadata !149, null}
!195 = metadata !{i32 173, i32 0, metadata !149, null}
!196 = metadata !{i32 177, i32 0, metadata !149, null}
!197 = metadata !{i32 178, i32 0, metadata !149, null}
!198 = metadata !{i32 179, i32 0, metadata !149, null}
!199 = metadata !{i32 180, i32 0, metadata !149, null}
!200 = metadata !{i32 188, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 187, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!202 = metadata !{i32 786443, metadata !1, metadata !37, i32 187, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!203 = metadata !{i32 189, i32 0, metadata !201, null}
!204 = metadata !{i32 187, i32 0, metadata !202, null}
!205 = metadata !{i32 191, i32 0, metadata !37, null}
!206 = metadata !{i32 786689, metadata !80, metadata !"a", metadata !54, i32 16777574, metadata !59, i32 0, metadata !205} ; [ DW_TAG_arg_variable ] [a] [line 358]
!207 = metadata !{i32 358, i32 0, metadata !80, metadata !205}
!208 = metadata !{i32 360, i32 0, metadata !80, metadata !205}
!209 = metadata !{i32 192, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !37, i32 192, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!211 = metadata !{i32 193, i32 0, metadata !210, null}
!212 = metadata !{i32 201, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !41, i32 200, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!214 = metadata !{i32 200, i32 0, metadata !213, null}
!215 = metadata !{i32 202, i32 0, metadata !41, null}
!216 = metadata !{i32 786689, metadata !80, metadata !"a", metadata !54, i32 16777574, metadata !59, i32 0, metadata !215} ; [ DW_TAG_arg_variable ] [a] [line 358]
!217 = metadata !{i32 358, i32 0, metadata !80, metadata !215}
!218 = metadata !{i32 360, i32 0, metadata !80, metadata !215}
!219 = metadata !{i32 204, i32 0, metadata !41, null}
!220 = metadata !{i32 786689, metadata !70, metadata !"a", metadata !54, i32 16777460, metadata !57, i32 0, metadata !219} ; [ DW_TAG_arg_variable ] [a] [line 244]
!221 = metadata !{i32 244, i32 0, metadata !70, metadata !219}
!222 = metadata !{i32 786689, metadata !70, metadata !"b", metadata !54, i32 33554676, metadata !57, i32 0, metadata !219} ; [ DW_TAG_arg_variable ] [b] [line 244]
!223 = metadata !{float* undef}
!224 = metadata !{i32 786689, metadata !70, metadata !"c", metadata !54, i32 50331892, metadata !59, i32 0, metadata !219} ; [ DW_TAG_arg_variable ] [c] [line 244]
!225 = metadata !{i32 248, i32 0, metadata !70, metadata !219}
!226 = metadata !{i32 786688, metadata !70, metadata !"x", metadata !54, i32 246, metadata !11, i32 0, metadata !219} ; [ DW_TAG_auto_variable ] [x] [line 246]
!227 = metadata !{i32 249, i32 0, metadata !70, metadata !219}
!228 = metadata !{i32 786688, metadata !70, metadata !"y", metadata !54, i32 246, metadata !11, i32 0, metadata !219} ; [ DW_TAG_auto_variable ] [y] [line 246]
!229 = metadata !{i32 250, i32 0, metadata !70, metadata !219}
!230 = metadata !{i32 786688, metadata !70, metadata !"z", metadata !54, i32 246, metadata !11, i32 0, metadata !219} ; [ DW_TAG_auto_variable ] [z] [line 246]
!231 = metadata !{i32 205, i32 0, metadata !41, null}
!232 = metadata !{i32 786689, metadata !70, metadata !"a", metadata !54, i32 16777460, metadata !57, i32 0, metadata !231} ; [ DW_TAG_arg_variable ] [a] [line 244]
!233 = metadata !{i32 244, i32 0, metadata !70, metadata !231}
!234 = metadata !{i32 786689, metadata !70, metadata !"b", metadata !54, i32 33554676, metadata !57, i32 0, metadata !231} ; [ DW_TAG_arg_variable ] [b] [line 244]
!235 = metadata !{i32 786689, metadata !70, metadata !"c", metadata !54, i32 50331892, metadata !59, i32 0, metadata !231} ; [ DW_TAG_arg_variable ] [c] [line 244]
!236 = metadata !{i32 248, i32 0, metadata !70, metadata !231}
!237 = metadata !{i32 786688, metadata !70, metadata !"x", metadata !54, i32 246, metadata !11, i32 0, metadata !231} ; [ DW_TAG_auto_variable ] [x] [line 246]
!238 = metadata !{i32 249, i32 0, metadata !70, metadata !231}
!239 = metadata !{i32 786688, metadata !70, metadata !"y", metadata !54, i32 246, metadata !11, i32 0, metadata !231} ; [ DW_TAG_auto_variable ] [y] [line 246]
!240 = metadata !{i32 250, i32 0, metadata !70, metadata !231}
!241 = metadata !{i32 786688, metadata !70, metadata !"z", metadata !54, i32 246, metadata !11, i32 0, metadata !231} ; [ DW_TAG_auto_variable ] [z] [line 246]
!242 = metadata !{i32 206, i32 0, metadata !41, null}
!243 = metadata !{i32 786689, metadata !63, metadata !"a", metadata !54, i32 16777633, metadata !59, i32 0, metadata !242} ; [ DW_TAG_arg_variable ] [a] [line 417]
!244 = metadata !{i32 417, i32 0, metadata !63, metadata !242}
!245 = metadata !{i32 786689, metadata !63, metadata !"b", metadata !54, i32 33554849, metadata !59, i32 0, metadata !242} ; [ DW_TAG_arg_variable ] [b] [line 417]
!246 = metadata !{i32 786689, metadata !63, metadata !"c", metadata !54, i32 50332065, metadata !59, i32 0, metadata !242} ; [ DW_TAG_arg_variable ] [c] [line 417]
!247 = metadata !{i32 419, i32 0, metadata !63, metadata !242}
!248 = metadata !{i32 420, i32 0, metadata !63, metadata !242}
!249 = metadata !{i32 421, i32 0, metadata !63, metadata !242}
!250 = metadata !{i32 786689, metadata !80, metadata !"a", metadata !54, i32 16777574, metadata !59, i32 0, metadata !251} ; [ DW_TAG_arg_variable ] [a] [line 358]
!251 = metadata !{i32 207, i32 0, metadata !41, null}
!252 = metadata !{i32 358, i32 0, metadata !80, metadata !251}
!253 = metadata !{i32 360, i32 0, metadata !80, metadata !251}
!254 = metadata !{i32 209, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !41, i32 209, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!256 = metadata !{i32 210, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 209, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!258 = metadata !{i32 211, i32 0, metadata !257, null}
!259 = metadata !{i32 212, i32 0, metadata !257, null}
!260 = metadata !{i32 213, i32 0, metadata !257, null}
!261 = metadata !{i32 218, i32 0, metadata !38, null}
!262 = metadata !{i32 219, i32 0, metadata !38, null}
!263 = metadata !{i32 222, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 221, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!265 = metadata !{i32 786443, metadata !1, metadata !38, i32 221, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!266 = metadata !{i32 223, i32 0, metadata !264, null}
!267 = metadata !{i32 221, i32 0, metadata !265, null}
!268 = metadata !{i32 227, i32 0, metadata !48, null}
!269 = metadata !{i32 230, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !48, i32 230, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!271 = metadata !{i32 231, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 230, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calch.c]
!273 = metadata !{i32 232, i32 0, metadata !272, null}
!274 = metadata !{i32 236, i32 0, metadata !48, null}
!275 = metadata !{i32 786689, metadata !52, metadata !"a", metadata !54, i32 16777486, metadata !57, i32 0, metadata !274} ; [ DW_TAG_arg_variable ] [a] [line 270]
!276 = metadata !{i32 270, i32 0, metadata !52, metadata !274}
!277 = metadata !{i32 786689, metadata !52, metadata !"b", metadata !54, i32 33554702, metadata !59, i32 0, metadata !274} ; [ DW_TAG_arg_variable ] [b] [line 270]
!278 = metadata !{i32 272, i32 0, metadata !279, metadata !274}
!279 = metadata !{i32 786443, metadata !53, metadata !52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!280 = metadata !{i32 273, i32 0, metadata !279, metadata !274}
!281 = metadata !{i32 274, i32 0, metadata !279, metadata !274}
!282 = metadata !{i32 237, i32 0, metadata !48, null}
!283 = metadata !{i32 786689, metadata !52, metadata !"a", metadata !54, i32 16777486, metadata !57, i32 0, metadata !282} ; [ DW_TAG_arg_variable ] [a] [line 270]
!284 = metadata !{i32 270, i32 0, metadata !52, metadata !282}
!285 = metadata !{i32 786689, metadata !52, metadata !"b", metadata !54, i32 33554702, metadata !59, i32 0, metadata !282} ; [ DW_TAG_arg_variable ] [b] [line 270]
!286 = metadata !{i32 272, i32 0, metadata !279, metadata !282}
!287 = metadata !{i32 273, i32 0, metadata !279, metadata !282}
!288 = metadata !{i32 274, i32 0, metadata !279, metadata !282}
!289 = metadata !{i32 238, i32 0, metadata !48, null}
!290 = metadata !{i32 786689, metadata !52, metadata !"a", metadata !54, i32 16777486, metadata !57, i32 0, metadata !289} ; [ DW_TAG_arg_variable ] [a] [line 270]
!291 = metadata !{i32 270, i32 0, metadata !52, metadata !289}
!292 = metadata !{i32 786689, metadata !52, metadata !"b", metadata !54, i32 33554702, metadata !59, i32 0, metadata !289} ; [ DW_TAG_arg_variable ] [b] [line 270]
!293 = metadata !{i32 272, i32 0, metadata !279, metadata !289}
!294 = metadata !{i32 273, i32 0, metadata !279, metadata !289}
!295 = metadata !{i32 274, i32 0, metadata !279, metadata !289}
!296 = metadata !{i32 239, i32 0, metadata !48, null}
!297 = metadata !{i32 786689, metadata !52, metadata !"a", metadata !54, i32 16777486, metadata !57, i32 0, metadata !296} ; [ DW_TAG_arg_variable ] [a] [line 270]
!298 = metadata !{i32 270, i32 0, metadata !52, metadata !296}
!299 = metadata !{i32 786689, metadata !52, metadata !"b", metadata !54, i32 33554702, metadata !59, i32 0, metadata !296} ; [ DW_TAG_arg_variable ] [b] [line 270]
!300 = metadata !{i32 272, i32 0, metadata !279, metadata !296}
!301 = metadata !{i32 273, i32 0, metadata !279, metadata !296}
!302 = metadata !{i32 274, i32 0, metadata !279, metadata !296}
!303 = metadata !{i32 240, i32 0, metadata !48, null}
!304 = metadata !{i32 243, i32 0, metadata !48, null}
!305 = metadata !{i32 245, i32 0, metadata !38, null}
!306 = metadata !{i32 246, i32 0, metadata !38, null}
!307 = metadata !{i32 247, i32 0, metadata !20, null}
