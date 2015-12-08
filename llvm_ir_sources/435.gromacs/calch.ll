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
  %0 = load i32* @gen_waterhydrogen.l, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv
  %1 = load float* %arrayidx1, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix1, i64 0, i64 %idxprom3, i64 %indvars.iv
  %2 = load float* %arrayidx5, align 4, !tbaa !3
  %add = fadd float %1, %2
  %arrayidx8 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv
  store float %add, float* %arrayidx8, align 4, !tbaa !3
  %3 = load float* %arrayidx1, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix2, i64 0, i64 %idxprom3, i64 %indvars.iv
  %4 = load float* %arrayidx15, align 4, !tbaa !3
  %add16 = fadd float %3, %4
  %arrayidx19 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv
  store float %add16, float* %arrayidx19, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add20 = add nsw i32 %0, 1
  %rem = srem i32 %add20, 6
  store i32 %rem, i32* @gen_waterhydrogen.l, align 4, !tbaa !0
  ret void
}

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
  ]

for.body:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %for.body
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %for.body ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ]
  %rij.0929 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %entry ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv982
  %0 = load float* %arrayidx2, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv982
  %1 = load float* %arrayidx5, align 4, !tbaa !3
  %sub = fsub float %1, %0
  %arrayidx7 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv982
  store float %sub, float* %arrayidx7, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv982
  %2 = load float* %arrayidx10, align 4, !tbaa !3
  %sub11 = fsub float %0, %2
  %arrayidx13 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv982
  store float %sub11, float* %arrayidx13, align 4, !tbaa !3
  %mul.i = fmul float %sub, %sub
  %add = fadd float %rij.0929, %mul.i
  %indvars.iv.next983 = add i64 %indvars.iv982, 1
  %lftr.wideiv984 = trunc i64 %indvars.iv.next983 to i32
  %exitcond985 = icmp eq i32 %lftr.wideiv984, 3
  br i1 %exitcond985, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv19 = call float @sqrtf(float %add) #3
  %arrayidx20 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 1
  %3 = load float* %arrayidx20, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 2
  %4 = load float* %arrayidx21, align 4, !tbaa !3
  %mul22 = fmul float %3, %4
  %arrayidx23 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 2
  %5 = load float* %arrayidx23, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 1
  %6 = load float* %arrayidx24, align 4, !tbaa !3
  %mul25 = fmul float %5, %6
  %sub26 = fsub float %mul22, %mul25
  %arrayidx27 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0
  store float %sub26, float* %arrayidx27, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 0
  %7 = load float* %arrayidx29, align 4, !tbaa !3
  %mul30 = fmul float %5, %7
  %arrayidx31 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0
  %8 = load float* %arrayidx31, align 4, !tbaa !3
  %mul33 = fmul float %8, %4
  %sub34 = fsub float %mul30, %mul33
  %arrayidx35 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 1
  store float %sub34, float* %arrayidx35, align 4, !tbaa !3
  %mul38 = fmul float %8, %6
  %mul41 = fmul float %3, %7
  %sub42 = fsub float %mul38, %mul41
  %arrayidx43 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 2
  store float %sub42, float* %arrayidx43, align 4, !tbaa !3
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.end
  %9 = phi float [ %sub26, %for.end ], [ %.pre989, %for.body47.for.body47_crit_edge ]
  %10 = phi float [ %8, %for.end ], [ %.pre988, %for.body47.for.body47_crit_edge ]
  %indvars.iv978 = phi i64 [ 0, %for.end ], [ %indvars.iv.next979, %for.body47.for.body47_crit_edge ]
  %ra.0927 = phi float [ 0.000000e+00, %for.end ], [ %add55, %for.body47.for.body47_crit_edge ]
  %arrayidx49 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv978
  %div = fdiv float %10, %conv19
  store float %div, float* %arrayidx49, align 4, !tbaa !3
  %mul.i846 = fmul float %9, %9
  %add55 = fadd float %ra.0927, %mul.i846
  %indvars.iv.next979 = add i64 %indvars.iv978, 1
  %lftr.wideiv980 = trunc i64 %indvars.iv.next979 to i32
  %exitcond981 = icmp eq i32 %lftr.wideiv980, 3
  br i1 %exitcond981, label %for.end58, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  %arrayidx49.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next979
  %.pre988 = load float* %arrayidx49.phi.trans.insert, align 4, !tbaa !3
  %arrayidx53.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next979
  %.pre989 = load float* %arrayidx53.phi.trans.insert, align 4, !tbaa !3
  br label %for.body47

for.end58:                                        ; preds = %for.body47
  %conv61 = call float @sqrtf(float %add55) #3
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.end58
  %11 = phi float [ %sub26, %for.end58 ], [ %.pre990, %for.body65.for.body65_crit_edge ]
  %indvars.iv974 = phi i64 [ 0, %for.end58 ], [ %indvars.iv.next975, %for.body65.for.body65_crit_edge ]
  %arrayidx67 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv974
  %div68 = fdiv float %11, %conv61
  store float %div68, float* %arrayidx67, align 4, !tbaa !3
  %indvars.iv.next975 = add i64 %indvars.iv974, 1
  %lftr.wideiv976 = trunc i64 %indvars.iv.next975 to i32
  %exitcond977 = icmp eq i32 %lftr.wideiv976, 3
  br i1 %exitcond977, label %for.end73, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  %arrayidx67.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next975
  %.pre990 = load float* %arrayidx67.phi.trans.insert, align 4, !tbaa !3
  br label %for.body65

for.end73:                                        ; preds = %for.body65
  %12 = load float* %arrayidx35, align 4, !tbaa !3
  %13 = load float* %arrayidx23, align 4, !tbaa !3
  %mul76 = fmul float %12, %13
  %14 = load float* %arrayidx43, align 4, !tbaa !3
  %15 = load float* %arrayidx20, align 4, !tbaa !3
  %mul79 = fmul float %14, %15
  %sub80 = fsub float %mul76, %mul79
  store float %sub80, float* %arrayidx29, align 4, !tbaa !3
  %16 = load float* %arrayidx31, align 4, !tbaa !3
  %mul84 = fmul float %14, %16
  %17 = load float* %arrayidx27, align 4, !tbaa !3
  %mul87 = fmul float %17, %13
  %sub88 = fsub float %mul84, %mul87
  store float %sub88, float* %arrayidx24, align 4, !tbaa !3
  %mul92 = fmul float %17, %15
  %mul95 = fmul float %12, %16
  %sub96 = fsub float %mul92, %mul95
  store float %sub96, float* %arrayidx21, align 4, !tbaa !3
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
  ]

for.cond266.preheader:                            ; preds = %for.end73
  %arrayidx325 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 0
  %arrayidx332 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 1
  %arrayidx340 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 2
  br label %for.body269

for.body102:                                      ; preds = %for.end73, %entry, %for.body102
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %for.body102 ], [ 0, %entry ], [ 0, %for.end73 ]
  %rij.1909 = phi float [ %add124, %for.body102 ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %for.end73 ]
  %rb.0908 = phi float [ %add128, %for.body102 ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %for.end73 ]
  %arrayidx105 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv934
  %18 = load float* %arrayidx105, align 4, !tbaa !3
  %arrayidx108 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv934
  %19 = load float* %arrayidx108, align 4, !tbaa !3
  %sub109 = fsub float %18, %19
  %arrayidx111 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv934
  store float %sub109, float* %arrayidx111, align 4, !tbaa !3
  %arrayidx117 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv934
  %20 = load float* %arrayidx117, align 4, !tbaa !3
  %sub118 = fsub float %18, %20
  %arrayidx120 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv934
  store float %sub118, float* %arrayidx120, align 4, !tbaa !3
  %mul.i859 = fmul float %sub109, %sub109
  %add124 = fadd float %rij.1909, %mul.i859
  %mul.i863 = fmul float %sub118, %sub118
  %add128 = fadd float %rb.0908, %mul.i863
  %indvars.iv.next935 = add i64 %indvars.iv934, 1
  %lftr.wideiv936 = trunc i64 %indvars.iv.next935 to i32
  %exitcond937 = icmp eq i32 %lftr.wideiv936, 3
  br i1 %exitcond937, label %for.end131, label %for.body102

for.end131:                                       ; preds = %for.body102
  %conv134 = call float @sqrtf(float %add124) #3
  %conv137 = call float @sqrtf(float %add128) #3
  br label %for.body141

for.body141:                                      ; preds = %for.body141, %for.end131
  %indvars.iv930 = phi i64 [ 0, %for.end131 ], [ %indvars.iv.next931, %for.body141 ]
  %ra.1906 = phi float [ 0.000000e+00, %for.end131 ], [ %add154, %for.body141 ]
  %arrayidx143 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv930
  %21 = load float* %arrayidx143, align 4, !tbaa !3
  %div144 = fdiv float %21, %conv134
  %arrayidx146 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv930
  %22 = load float* %arrayidx146, align 4, !tbaa !3
  %div147 = fdiv float %22, %conv137
  %add148 = fadd float %div144, %div147
  %arrayidx150 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv930
  store float %add148, float* %arrayidx150, align 4, !tbaa !3
  %mul.i889 = fmul float %add148, %add148
  %add154 = fadd float %ra.1906, %mul.i889
  %indvars.iv.next931 = add i64 %indvars.iv930, 1
  %lftr.wideiv932 = trunc i64 %indvars.iv.next931 to i32
  %exitcond933 = icmp eq i32 %lftr.wideiv932, 3
  br i1 %exitcond933, label %for.end157, label %for.body141

for.end157:                                       ; preds = %for.body141
  %conv160 = call float @sqrtf(float %add154) #3
  %conv173 = fpext float %conv160 to double
  br label %for.body164

for.body164:                                      ; preds = %for.body164, %for.end157
  %indvars.iv = phi i64 [ 0, %for.end157 ], [ %indvars.iv.next, %for.body164 ]
  %arrayidx167 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv
  %23 = load float* %arrayidx167, align 4, !tbaa !3
  %conv168 = fpext float %23 to double
  %arrayidx170 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv
  %24 = load float* %arrayidx170, align 4, !tbaa !3
  %conv171 = fpext float %24 to double
  %mul172 = fmul double %conv171, 1.000000e-01
  %div174 = fdiv double %mul172, %conv173
  %add175 = fadd double %conv168, %div174
  %conv176 = fptrunc double %add175 to float
  %arrayidx179 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv
  store float %conv176, float* %arrayidx179, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %sw.epilog653, label %for.body164

for.body187:                                      ; preds = %for.end73, %for.body187.for.body187_crit_edge
  %25 = phi float [ %.pre994, %for.body187.for.body187_crit_edge ], [ %16, %for.end73 ]
  %26 = phi float [ %.pre993, %for.body187.for.body187_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %for.body187.for.body187_crit_edge ], [ 0, %for.end73 ]
  %arrayidx190 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv938
  %27 = load float* %arrayidx190, align 4, !tbaa !3
  %conv191 = fpext float %27 to double
  %conv196 = fpext float %26 to double
  %mul197 = fmul double %conv196, 0x3FB821B1FD9BFEE5
  %add198 = fadd double %conv191, %mul197
  %conv203 = fpext float %25 to double
  %mul204 = fmul double %conv203, 0xBFA11745F4B7C896
  %sub205 = fsub double %add198, %mul204
  %conv206 = fptrunc double %sub205 to float
  %arrayidx209 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv938
  store float %conv206, float* %arrayidx209, align 4, !tbaa !3
  %indvars.iv.next939 = add i64 %indvars.iv938, 1
  %lftr.wideiv940 = trunc i64 %indvars.iv.next939 to i32
  %exitcond941 = icmp eq i32 %lftr.wideiv940, 3
  br i1 %exitcond941, label %sw.epilog653, label %for.body187.for.body187_crit_edge

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  %arrayidx195.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next939
  %.pre993 = load float* %arrayidx195.phi.trans.insert, align 4, !tbaa !3
  %arrayidx202.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next939
  %.pre994 = load float* %arrayidx202.phi.trans.insert, align 4, !tbaa !3
  br label %for.body187

for.body217:                                      ; preds = %for.end73, %for.body217.for.body217_crit_edge
  %28 = phi float [ %.pre996, %for.body217.for.body217_crit_edge ], [ %16, %for.end73 ]
  %29 = phi float [ %.pre995, %for.body217.for.body217_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %for.body217.for.body217_crit_edge ], [ 0, %for.end73 ]
  %arrayidx220 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv942
  %30 = load float* %arrayidx220, align 4, !tbaa !3
  %conv221 = fpext float %30 to double
  %conv226 = fpext float %29 to double
  %mul227 = fmul double %conv226, 0x3FB821B1FD9BFEE5
  %sub228 = fsub double %conv221, %mul227
  %conv233 = fpext float %28 to double
  %mul234 = fmul double %conv233, 0xBFA11745F4B7C896
  %sub235 = fsub double %sub228, %mul234
  %conv236 = fptrunc double %sub235 to float
  %arrayidx239 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv942
  store float %conv236, float* %arrayidx239, align 4, !tbaa !3
  %31 = load float* %arrayidx220, align 4, !tbaa !3
  %conv243 = fpext float %31 to double
  %add250 = fadd double %conv243, %mul227
  %sub257 = fsub double %add250, %mul234
  %conv258 = fptrunc double %sub257 to float
  %arrayidx261 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv942
  store float %conv258, float* %arrayidx261, align 4, !tbaa !3
  %indvars.iv.next943 = add i64 %indvars.iv942, 1
  %lftr.wideiv944 = trunc i64 %indvars.iv.next943 to i32
  %exitcond945 = icmp eq i32 %lftr.wideiv944, 3
  br i1 %exitcond945, label %sw.epilog653, label %for.body217.for.body217_crit_edge

for.body217.for.body217_crit_edge:                ; preds = %for.body217
  %arrayidx225.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next943
  %.pre995 = load float* %arrayidx225.phi.trans.insert, align 4, !tbaa !3
  %arrayidx232.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next943
  %.pre996 = load float* %arrayidx232.phi.trans.insert, align 4, !tbaa !3
  br label %for.body217

for.body269:                                      ; preds = %for.inc378.for.body269_crit_edge, %for.cond266.preheader
  %32 = phi float [ %17, %for.cond266.preheader ], [ %.pre999, %for.inc378.for.body269_crit_edge ]
  %33 = phi float [ %16, %for.cond266.preheader ], [ %.pre998, %for.inc378.for.body269_crit_edge ]
  %34 = phi float [ %sub80, %for.cond266.preheader ], [ %.pre997, %for.inc378.for.body269_crit_edge ]
  %indvars.iv946 = phi i64 [ 0, %for.cond266.preheader ], [ %indvars.iv.next947, %for.inc378.for.body269_crit_edge ]
  %arrayidx272 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv946
  %35 = load float* %arrayidx272, align 4, !tbaa !3
  %conv273 = fpext float %35 to double
  %conv278 = fpext float %34 to double
  %mul279 = fmul double %conv278, 0x3FB821B1FD9BFEE5
  %add280 = fadd double %conv273, %mul279
  %conv285 = fpext float %33 to double
  %mul286 = fmul double %conv285, 0xBFA11745F4B7C896
  %sub287 = fsub double %add280, %mul286
  %conv288 = fptrunc double %sub287 to float
  %arrayidx291 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv946
  store float %conv288, float* %arrayidx291, align 4, !tbaa !3
  %36 = load float* %arrayidx272, align 4, !tbaa !3
  %conv295 = fpext float %36 to double
  %mul302 = fmul double %conv278, 0x3FA821B1FD9BFEE5
  %sub303 = fsub double %conv295, %mul302
  %conv310 = fpext float %32 to double
  %mul311 = fmul double %conv310, 0x3FB4E60A7BB07B1D
  %add312 = fadd double %sub303, %mul311
  %sub319 = fsub double %add312, %mul286
  %conv320 = fptrunc double %sub319 to float
  %arrayidx323 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv946
  store float %conv320, float* %arrayidx323, align 4, !tbaa !3
  %37 = load float* %arrayidx325, align 4, !tbaa !3
  %sub326 = fadd float %37, 1.234500e+04
  %fabsf = call float @fabsf(float %sub326) #4
  %38 = fpext float %fabsf to double
  %cmp329 = fcmp ogt double %38, 1.200000e-38
  br i1 %cmp329, label %land.lhs.true, label %for.inc378

land.lhs.true:                                    ; preds = %for.body269
  %39 = load float* %arrayidx332, align 4, !tbaa !3
  %sub333 = fadd float %39, 1.234500e+04
  %fabsf844 = call float @fabsf(float %sub333) #4
  %40 = fpext float %fabsf844 to double
  %cmp336 = fcmp ogt double %40, 1.200000e-38
  br i1 %cmp336, label %land.lhs.true338, label %for.inc378

land.lhs.true338:                                 ; preds = %land.lhs.true
  %41 = load float* %arrayidx340, align 4, !tbaa !3
  %sub341 = fadd float %41, 1.234500e+04
  %fabsf845 = call float @fabsf(float %sub341) #4
  %42 = fpext float %fabsf845 to double
  %cmp344 = fcmp ogt double %42, 1.200000e-38
  br i1 %cmp344, label %if.then, label %for.inc378

if.then:                                          ; preds = %land.lhs.true338
  %43 = load float* %arrayidx272, align 4, !tbaa !3
  %conv349 = fpext float %43 to double
  %sub357 = fsub double %conv349, %mul302
  %sub366 = fsub double %sub357, %mul311
  %sub373 = fsub double %sub366, %mul286
  %conv374 = fptrunc double %sub373 to float
  %arrayidx377 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 %indvars.iv946
  store float %conv374, float* %arrayidx377, align 4, !tbaa !3
  br label %for.inc378

for.inc378:                                       ; preds = %for.body269, %land.lhs.true, %land.lhs.true338, %if.then
  %indvars.iv.next947 = add i64 %indvars.iv946, 1
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32
  %exitcond949 = icmp eq i32 %lftr.wideiv948, 3
  br i1 %exitcond949, label %sw.epilog653, label %for.inc378.for.body269_crit_edge

for.inc378.for.body269_crit_edge:                 ; preds = %for.inc378
  %arrayidx277.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next947
  %.pre997 = load float* %arrayidx277.phi.trans.insert, align 4, !tbaa !3
  %arrayidx284.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next947
  %.pre998 = load float* %arrayidx284.phi.trans.insert, align 4, !tbaa !3
  %arrayidx309.phi.trans.insert = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next947
  %.pre999 = load float* %arrayidx309.phi.trans.insert, align 4, !tbaa !3
  br label %for.body269

for.body385:                                      ; preds = %for.end73, %entry, %for.body385
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %for.body385 ], [ 0, %entry ], [ 0, %for.end73 ]
  %arrayidx388 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv954
  %44 = load float* %arrayidx388, align 4, !tbaa !3
  %arrayidx391 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv954
  %45 = load float* %arrayidx391, align 4, !tbaa !3
  %add392 = fadd float %44, %45
  %arrayidx395 = getelementptr inbounds [3 x float]* %xa, i64 3, i64 %indvars.iv954
  %46 = load float* %arrayidx395, align 4, !tbaa !3
  %add396 = fadd float %add392, %46
  %conv399 = fdiv float %add396, 3.000000e+00
  %arrayidx402 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv954
  %47 = load float* %arrayidx402, align 4, !tbaa !3
  %sub403 = fsub float %47, %conv399
  %arrayidx405 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv954
  store float %sub403, float* %arrayidx405, align 4, !tbaa !3
  %indvars.iv.next955 = add i64 %indvars.iv954, 1
  %lftr.wideiv956 = trunc i64 %indvars.iv.next955 to i32
  %exitcond957 = icmp eq i32 %lftr.wideiv956, 3
  br i1 %exitcond957, label %for.end408, label %for.body385

for.end408:                                       ; preds = %for.body385
  %arraydecay = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 0
  %48 = load float* %arraydecay, align 4, !tbaa !3
  %mul.i890 = fmul float %48, %48
  %arrayidx2.i891 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 1
  %49 = load float* %arrayidx2.i891, align 4, !tbaa !3
  %mul4.i892 = fmul float %49, %49
  %add.i893 = fadd float %mul.i890, %mul4.i892
  %arrayidx5.i894 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 2
  %50 = load float* %arrayidx5.i894, align 4, !tbaa !3
  %mul7.i895 = fmul float %50, %50
  %add8.i896 = fadd float %add.i893, %mul7.i895
  %conv9.i897 = call float @sqrtf(float %add8.i896) #3
  %conv422 = fpext float %conv9.i897 to double
  br label %for.body413

for.body413:                                      ; preds = %for.body413.for.body413_crit_edge, %for.end408
  %51 = phi float [ %48, %for.end408 ], [ %.pre, %for.body413.for.body413_crit_edge ]
  %indvars.iv950 = phi i64 [ 0, %for.end408 ], [ %indvars.iv.next951, %for.body413.for.body413_crit_edge ]
  %arrayidx416 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv950
  %52 = load float* %arrayidx416, align 4, !tbaa !3
  %conv417 = fpext float %52 to double
  %conv420 = fpext float %51 to double
  %mul421 = fmul double %conv420, 1.000000e-01
  %div423 = fdiv double %mul421, %conv422
  %add424 = fadd double %conv417, %div423
  %conv425 = fptrunc double %add424 to float
  %arrayidx428 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv950
  store float %conv425, float* %arrayidx428, align 4, !tbaa !3
  %indvars.iv.next951 = add i64 %indvars.iv950, 1
  %lftr.wideiv952 = trunc i64 %indvars.iv.next951 to i32
  %exitcond953 = icmp eq i32 %lftr.wideiv952, 3
  br i1 %exitcond953, label %sw.epilog653, label %for.body413.for.body413_crit_edge

for.body413.for.body413_crit_edge:                ; preds = %for.body413
  %arrayidx419.phi.trans.insert = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv.next951
  %.pre = load float* %arrayidx419.phi.trans.insert, align 4, !tbaa !3
  br label %for.body413

for.body436:                                      ; preds = %for.end73, %entry, %for.body436
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %for.body436 ], [ 0, %entry ], [ 0, %for.end73 ]
  %arrayidx439 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv962
  %53 = load float* %arrayidx439, align 4, !tbaa !3
  %conv440 = fpext float %53 to double
  %arrayidx443 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv962
  %54 = load float* %arrayidx443, align 4, !tbaa !3
  %arrayidx446 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv962
  %55 = load float* %arrayidx446, align 4, !tbaa !3
  %add447 = fadd float %54, %55
  %conv448 = fpext float %add447 to double
  %mul449 = fmul double %conv448, 5.000000e-01
  %sub450 = fsub double %conv440, %mul449
  %conv451 = fptrunc double %sub450 to float
  %arrayidx453 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv962
  store float %conv451, float* %arrayidx453, align 4, !tbaa !3
  %indvars.iv.next963 = add i64 %indvars.iv962, 1
  %lftr.wideiv964 = trunc i64 %indvars.iv.next963 to i32
  %exitcond965 = icmp eq i32 %lftr.wideiv964, 3
  br i1 %exitcond965, label %for.end456, label %for.body436

for.end456:                                       ; preds = %for.body436
  %arraydecay457 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 0
  %56 = load float* %arraydecay457, align 4, !tbaa !3
  %mul.i881 = fmul float %56, %56
  %arrayidx2.i882 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 1
  %57 = load float* %arrayidx2.i882, align 4, !tbaa !3
  %mul4.i883 = fmul float %57, %57
  %add.i884 = fadd float %mul.i881, %mul4.i883
  %arrayidx5.i885 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 2
  %58 = load float* %arrayidx5.i885, align 4, !tbaa !3
  %mul7.i886 = fmul float %58, %58
  %add8.i887 = fadd float %add.i884, %mul7.i886
  %conv9.i888 = call float @sqrtf(float %add8.i887) #3
  %arraydecay460 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0
  %arraydecay462 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0
  %59 = load float* %arraydecay460, align 4, !tbaa !3
  %60 = load float* %arraydecay462, align 4, !tbaa !3
  %sub.i872 = fsub float %59, %60
  %arrayidx2.i873 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1
  %61 = load float* %arrayidx2.i873, align 4, !tbaa !3
  %arrayidx3.i874 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1
  %62 = load float* %arrayidx3.i874, align 4, !tbaa !3
  %sub4.i875 = fsub float %61, %62
  %arrayidx5.i876 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2
  %63 = load float* %arrayidx5.i876, align 4, !tbaa !3
  %arrayidx6.i877 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2
  %64 = load float* %arrayidx6.i877, align 4, !tbaa !3
  %sub7.i878 = fsub float %63, %64
  %arraydecay467 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0
  %65 = load float* %arraydecay467, align 4, !tbaa !3
  %sub.i868 = fsub float %59, %65
  %arrayidx3.i870 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1
  %66 = load float* %arrayidx3.i870, align 4, !tbaa !3
  %sub4.i = fsub float %61, %66
  %arrayidx6.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2
  %67 = load float* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = fsub float %63, %67
  %arraydecay471 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 0
  %mul.i864 = fmul float %sub4.i875, %sub7.i
  %mul4.i867 = fmul float %sub7.i878, %sub4.i
  %sub.i = fsub float %mul.i864, %mul4.i867
  store float %sub.i, float* %arraydecay471, align 4, !tbaa !3
  %mul8.i = fmul float %sub7.i878, %sub.i868
  %mul11.i = fmul float %sub.i872, %sub7.i
  %sub12.i = fsub float %mul8.i, %mul11.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 1
  store float %sub12.i, float* %arrayidx13.i, align 4, !tbaa !3
  %mul16.i = fmul float %sub.i872, %sub4.i
  %mul19.i = fmul float %sub4.i875, %sub.i868
  %sub20.i = fsub float %mul16.i, %mul19.i
  %arrayidx21.i = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 2
  store float %sub20.i, float* %arrayidx21.i, align 4, !tbaa !3
  %mul.i860 = fmul float %sub.i, %sub.i
  %mul4.i = fmul float %sub12.i, %sub12.i
  %add.i = fadd float %mul.i860, %mul4.i
  %mul7.i = fmul float %sub20.i, %sub20.i
  %add8.i = fadd float %mul7.i, %add.i
  %conv9.i = call float @sqrtf(float %add8.i) #3
  %conv487 = fpext float %conv9.i888 to double
  %conv494 = fpext float %conv9.i to double
  br label %for.body477

for.body477:                                      ; preds = %for.body477.for.body477_crit_edge, %for.end456
  %68 = phi float [ %sub.i, %for.end456 ], [ %.pre987, %for.body477.for.body477_crit_edge ]
  %69 = phi float [ %56, %for.end456 ], [ %.pre986, %for.body477.for.body477_crit_edge ]
  %indvars.iv958 = phi i64 [ 0, %for.end456 ], [ %indvars.iv.next959, %for.body477.for.body477_crit_edge ]
  %arrayidx480 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv958
  %70 = load float* %arrayidx480, align 4, !tbaa !3
  %conv481 = fpext float %70 to double
  %conv485 = fpext float %69 to double
  %mul486 = fmul double %conv485, 0x3FE277F930881DAF
  %div488 = fdiv double %mul486, %conv487
  %conv492 = fpext float %68 to double
  %mul493 = fmul double %conv492, 0x3FEA21ED787F2AEF
  %div495 = fdiv double %mul493, %conv494
  %add496 = fadd double %div488, %div495
  %mul497 = fmul double %add496, 1.000000e-01
  %add498 = fadd double %conv481, %mul497
  %conv499 = fptrunc double %add498 to float
  %arrayidx502 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv958
  store float %conv499, float* %arrayidx502, align 4, !tbaa !3
  %71 = load float* %arrayidx480, align 4, !tbaa !3
  %conv506 = fpext float %71 to double
  %sub521 = fsub double %div488, %div495
  %mul522 = fmul double %sub521, 1.000000e-01
  %add523 = fadd double %conv506, %mul522
  %conv524 = fptrunc double %add523 to float
  %arrayidx527 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv958
  store float %conv524, float* %arrayidx527, align 4, !tbaa !3
  %indvars.iv.next959 = add i64 %indvars.iv958, 1
  %lftr.wideiv960 = trunc i64 %indvars.iv.next959 to i32
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 3
  br i1 %exitcond961, label %sw.epilog653, label %for.body477.for.body477_crit_edge

for.body477.for.body477_crit_edge:                ; preds = %for.body477
  %arrayidx484.phi.trans.insert = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv.next959
  %.pre986 = load float* %arrayidx484.phi.trans.insert, align 4, !tbaa !3
  %arrayidx491.phi.trans.insert = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 %indvars.iv.next959
  %.pre987 = load float* %arrayidx491.phi.trans.insert, align 4, !tbaa !3
  br label %for.body477

sw.bb531:                                         ; preds = %entry, %for.end73
  call void @gen_waterhydrogen([3 x float]* %xa, [3 x float]* %xh) #5
  br label %sw.epilog653

for.body536:                                      ; preds = %for.end73, %for.body536.for.body536_crit_edge
  %72 = phi float [ %.pre1001, %for.body536.for.body536_crit_edge ], [ %16, %for.end73 ]
  %73 = phi float [ %.pre1000, %for.body536.for.body536_crit_edge ], [ %sub80, %for.end73 ]
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %for.body536.for.body536_crit_edge ], [ 0, %for.end73 ]
  %arrayidx539 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv966
  %74 = load float* %arrayidx539, align 4, !tbaa !3
  %conv540 = fpext float %74 to double
  %conv545 = fpext float %73 to double
  %mul546 = fmul double %conv545, 0x3FBF0572CFF0A307
  %sub547 = fsub double %conv540, %mul546
  %conv552 = fpext float %72 to double
  %mul553 = fmul double %conv552, 0xBFAF9CBD7EF2DD0E
  %sub554 = fsub double %sub547, %mul553
  %conv555 = fptrunc double %sub554 to float
  %arrayidx558 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv966
  store float %conv555, float* %arrayidx558, align 4, !tbaa !3
  %75 = load float* %arrayidx539, align 4, !tbaa !3
  %conv562 = fpext float %75 to double
  %add569 = fadd double %conv562, %mul546
  %sub576 = fsub double %add569, %mul553
  %conv577 = fptrunc double %sub576 to float
  %arrayidx580 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv966
  store float %conv577, float* %arrayidx580, align 4, !tbaa !3
  %indvars.iv.next967 = add i64 %indvars.iv966, 1
  %lftr.wideiv968 = trunc i64 %indvars.iv.next967 to i32
  %exitcond969 = icmp eq i32 %lftr.wideiv968, 3
  br i1 %exitcond969, label %sw.epilog653, label %for.body536.for.body536_crit_edge

for.body536.for.body536_crit_edge:                ; preds = %for.body536
  %arrayidx544.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next967
  %.pre1000 = load float* %arrayidx544.phi.trans.insert, align 4, !tbaa !3
  %arrayidx551.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next967
  %.pre1001 = load float* %arrayidx551.phi.trans.insert, align 4, !tbaa !3
  br label %for.body536

sw.bb584:                                         ; preds = %for.end73
  %76 = bitcast [4 x [3 x float]]* %xa2 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %76) #1
  br label %for.body588

for.body588:                                      ; preds = %for.body588.for.body588_crit_edge, %sw.bb584
  %77 = phi float [ %16, %sw.bb584 ], [ %.pre992, %for.body588.for.body588_crit_edge ]
  %78 = phi float [ %sub80, %sw.bb584 ], [ %.pre991, %for.body588.for.body588_crit_edge ]
  %indvars.iv970 = phi i64 [ 0, %sw.bb584 ], [ %indvars.iv.next971, %for.body588.for.body588_crit_edge ]
  %arrayidx591 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv970
  %79 = load float* %arrayidx591, align 4, !tbaa !3
  %conv592 = fpext float %79 to double
  %conv597 = fpext float %78 to double
  %mul598 = fmul double %conv597, 0x3FBAFD905B6AC657
  %sub599 = fsub double %conv592, %mul598
  %conv604 = fpext float %77 to double
  %mul605 = fmul double %conv604, 0xBFB037AF519DA643
  %sub606 = fsub double %sub599, %mul605
  %conv607 = fptrunc double %sub606 to float
  %arrayidx610 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv970
  store float %conv607, float* %arrayidx610, align 4, !tbaa !3
  %80 = load float* %arrayidx591, align 4, !tbaa !3
  %conv614 = fpext float %80 to double
  %mul620 = fmul double %conv597, 0x3FBD0079302DD768
  %add621 = fadd double %conv614, %mul620
  %mul627 = fmul double %conv604, 0xBFAB0C2D77379851
  %sub628 = fsub double %add621, %mul627
  %conv629 = fptrunc double %sub628 to float
  %arrayidx632 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv970
  store float %conv629, float* %arrayidx632, align 4, !tbaa !3
  %indvars.iv.next971 = add i64 %indvars.iv970, 1
  %lftr.wideiv972 = trunc i64 %indvars.iv.next971 to i32
  %exitcond973 = icmp eq i32 %lftr.wideiv972, 3
  br i1 %exitcond973, label %for.end635, label %for.body588.for.body588_crit_edge

for.body588.for.body588_crit_edge:                ; preds = %for.body588
  %arrayidx596.phi.trans.insert = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next971
  %.pre991 = load float* %arrayidx596.phi.trans.insert, align 4, !tbaa !3
  %arrayidx603.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next971
  %.pre992 = load float* %arrayidx603.phi.trans.insert, align 4, !tbaa !3
  br label %for.body588

for.end635:                                       ; preds = %for.body588
  %arraydecay637 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 0
  %arraydecay639 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 0
  %81 = load float* %arraydecay637, align 4, !tbaa !3
  store float %81, float* %arraydecay639, align 16, !tbaa !3
  %arrayidx2.i855 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 1
  %82 = load float* %arrayidx2.i855, align 4, !tbaa !3
  %arrayidx3.i856 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 1
  store float %82, float* %arrayidx3.i856, align 4, !tbaa !3
  %arrayidx4.i857 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 2
  %83 = load float* %arrayidx4.i857, align 4, !tbaa !3
  %arrayidx5.i858 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 2
  store float %83, float* %arrayidx5.i858, align 8, !tbaa !3
  %arraydecay641 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0
  %arraydecay643 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 0
  %84 = load float* %arraydecay641, align 4, !tbaa !3
  store float %84, float* %arraydecay643, align 4, !tbaa !3
  %arrayidx2.i851 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1
  %85 = load float* %arrayidx2.i851, align 4, !tbaa !3
  %arrayidx3.i852 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 1
  store float %85, float* %arrayidx3.i852, align 4, !tbaa !3
  %arrayidx4.i853 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2
  %86 = load float* %arrayidx4.i853, align 4, !tbaa !3
  %arrayidx5.i854 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 2
  store float %86, float* %arrayidx5.i854, align 4, !tbaa !3
  %arraydecay645 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0
  %arraydecay647 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 0
  %87 = load float* %arraydecay645, align 4, !tbaa !3
  store float %87, float* %arraydecay647, align 8, !tbaa !3
  %arrayidx2.i847 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1
  %88 = load float* %arrayidx2.i847, align 4, !tbaa !3
  %arrayidx3.i848 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 1
  store float %88, float* %arrayidx3.i848, align 4, !tbaa !3
  %arrayidx4.i849 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2
  %89 = load float* %arrayidx4.i849, align 4, !tbaa !3
  %arrayidx5.i850 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 2
  store float %89, float* %arrayidx5.i850, align 8, !tbaa !3
  %arraydecay649 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0
  %arraydecay651 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 0
  %90 = load float* %arraydecay649, align 4, !tbaa !3
  store float %90, float* %arraydecay651, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1
  %91 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 1
  store float %91, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2
  %92 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 2
  store float %92, float* %arrayidx5.i, align 4, !tbaa !3
  %arraydecay652 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0
  %add.ptr = getelementptr inbounds [3 x float]* %xh, i64 2
  call void @calc_h_pos(i32 2, [3 x float]* %arraydecay652, [3 x float]* %add.ptr) #5
  call void @llvm.lifetime.end(i64 48, i8* %76) #1
  br label %sw.epilog653

sw.default:                                       ; preds = %entry, %for.end73
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), i32 %nht) #6
  br label %sw.epilog653

sw.epilog653:                                     ; preds = %for.body536, %for.body477, %for.body413, %for.inc378, %for.body217, %for.body187, %for.body164, %sw.default, %for.end635, %sw.bb531
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
