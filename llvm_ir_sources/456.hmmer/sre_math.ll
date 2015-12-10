; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Gammln.cof = internal unnamed_addr constant [11 x double] [double 0x40E6EC39B523E5C6, double 0xC1030CE42A8DE3A0, double 0x41093547A7877F7A, double 0xC100F46BD1F08565, double 0x40E891BEDA52E5F4, double 0xC0C2C0CBD1715240, double 0x408B74AF4B6E0230, double 0xC03F8D31A9F566E2, double 0x3FD29CB3C2263426, double 0xBF2E680CC2D54303, double 0x3DE133D0CA52FB5A], align 16
@.str = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"IncompleteGamma(): a must be > 0\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"IncompleteGamma(): x must be >= 0\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"IncompleteGamma(): failed to converge using continued fraction approx\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"IncompleteGamma(): failed to converge using series approx\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Linefit(float* nocapture %x, float* nocapture %y, i32 %N, float* nocapture %ret_a, float* nocapture %ret_b, float* nocapture %ret_r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !12), !dbg !117
  tail call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !13), !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !14), !dbg !117
  tail call void @llvm.dbg.value(metadata !{float* %ret_a}, i64 0, metadata !15), !dbg !117
  tail call void @llvm.dbg.value(metadata !{float* %ret_b}, i64 0, metadata !16), !dbg !117
  tail call void @llvm.dbg.value(metadata !{float* %ret_r}, i64 0, metadata !17), !dbg !117
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !19), !dbg !119
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !18), !dbg !119
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !120
  %cmp88 = icmp sgt i32 %N, 0, !dbg !120
  br i1 %cmp88, label %for.body, label %for.end.thread, !dbg !120

for.end.thread:                                   ; preds = %entry
  %conv98 = sitofp i32 %N to float, !dbg !122
  %div99 = fdiv float 0.000000e+00, %conv98, !dbg !122
  tail call void @llvm.dbg.value(metadata !{float %div101}, i64 0, metadata !18), !dbg !122
  %div5100 = fdiv float 0.000000e+00, %conv98, !dbg !123
  tail call void @llvm.dbg.value(metadata !{float %div5102}, i64 0, metadata !19), !dbg !123
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !22), !dbg !124
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !21), !dbg !124
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !20), !dbg !124
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !125
  br label %for.end34, !dbg !125

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body ], [ 0, %entry ]
  %yavg.090 = phi float [ %add3, %for.body ], [ 0.000000e+00, %entry ]
  %xavg.089 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %x, i64 %indvars.iv94, !dbg !127
  %0 = load float* %arrayidx, align 4, !dbg !127, !tbaa !129
  %add = fadd float %xavg.089, %0, !dbg !127
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !18), !dbg !127
  %arrayidx2 = getelementptr inbounds float* %y, i64 %indvars.iv94, !dbg !132
  %1 = load float* %arrayidx2, align 4, !dbg !132, !tbaa !129
  %add3 = fadd float %yavg.090, %1, !dbg !132
  tail call void @llvm.dbg.value(metadata !{float %add3}, i64 0, metadata !19), !dbg !132
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !120
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32, !dbg !120
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %N, !dbg !120
  br i1 %exitcond97, label %for.end, label %for.body, !dbg !120

for.end:                                          ; preds = %for.body
  %conv = sitofp i32 %N to float, !dbg !122
  %div = fdiv float %add, %conv, !dbg !122
  tail call void @llvm.dbg.value(metadata !{float %div101}, i64 0, metadata !18), !dbg !122
  %div5 = fdiv float %add3, %conv, !dbg !123
  tail call void @llvm.dbg.value(metadata !{float %div5102}, i64 0, metadata !19), !dbg !123
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !22), !dbg !124
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !21), !dbg !124
  tail call void @llvm.dbg.value(metadata !118, i64 0, metadata !20), !dbg !124
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !125
  br i1 %cmp88, label %for.body9, label %for.end34, !dbg !125

for.body9:                                        ; preds = %for.end, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.end ]
  %sxy.084 = phi float [ %add31, %for.body9 ], [ 0.000000e+00, %for.end ]
  %syy.083 = phi float [ %add23, %for.body9 ], [ 0.000000e+00, %for.end ]
  %sxx.082 = phi float [ %add15, %for.body9 ], [ 0.000000e+00, %for.end ]
  %arrayidx11 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !133
  %2 = load float* %arrayidx11, align 4, !dbg !133, !tbaa !129
  %sub = fsub float %2, %div, !dbg !133
  %mul = fmul float %sub, %sub, !dbg !133
  %add15 = fadd float %sxx.082, %mul, !dbg !133
  tail call void @llvm.dbg.value(metadata !{float %add15}, i64 0, metadata !20), !dbg !133
  %arrayidx17 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !135
  %3 = load float* %arrayidx17, align 4, !dbg !135, !tbaa !129
  %sub18 = fsub float %3, %div5, !dbg !135
  %sub21 = fsub float %3, %div, !dbg !135
  %mul22 = fmul float %sub18, %sub21, !dbg !135
  %add23 = fadd float %syy.083, %mul22, !dbg !135
  tail call void @llvm.dbg.value(metadata !{float %add23}, i64 0, metadata !21), !dbg !135
  %mul30 = fmul float %sub, %sub18, !dbg !136
  %add31 = fadd float %sxy.084, %mul30, !dbg !136
  tail call void @llvm.dbg.value(metadata !{float %add31}, i64 0, metadata !22), !dbg !136
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !125
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !125
  %exitcond = icmp eq i32 %lftr.wideiv, %N, !dbg !125
  br i1 %exitcond, label %for.cond6.for.end34_crit_edge, label %for.body9, !dbg !125

for.cond6.for.end34_crit_edge:                    ; preds = %for.body9
  %phitmp = fpext float %add23 to double, !dbg !125
  br label %for.end34, !dbg !125

for.end34:                                        ; preds = %for.end.thread, %for.cond6.for.end34_crit_edge, %for.end
  %div5102 = phi float [ %div5, %for.cond6.for.end34_crit_edge ], [ %div5, %for.end ], [ %div5100, %for.end.thread ]
  %div101 = phi float [ %div, %for.cond6.for.end34_crit_edge ], [ %div, %for.end ], [ %div99, %for.end.thread ]
  %sxy.0.lcssa = phi float [ %add31, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %syy.0.lcssa = phi double [ %phitmp, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %sxx.0.lcssa = phi float [ %add15, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %div35 = fdiv float %sxy.0.lcssa, %sxx.0.lcssa, !dbg !137
  store float %div35, float* %ret_b, align 4, !dbg !137, !tbaa !129
  %mul36 = fmul float %div101, %div35, !dbg !138
  %sub37 = fsub float %div5102, %mul36, !dbg !138
  store float %sub37, float* %ret_a, align 4, !dbg !138, !tbaa !129
  %conv38 = fpext float %sxy.0.lcssa to double, !dbg !139
  %conv39 = fpext float %sxx.0.lcssa to double, !dbg !139
  %call = tail call double @sqrt(double %conv39) #5, !dbg !139
  %call41 = tail call double @sqrt(double %syy.0.lcssa) #5, !dbg !139
  %mul42 = fmul double %call, %call41, !dbg !139
  %div43 = fdiv double %conv38, %mul42, !dbg !139
  %conv44 = fptrunc double %div43 to float, !dbg !139
  store float %conv44, float* %ret_r, align 4, !dbg !139, !tbaa !129
  ret i32 1, !dbg !140
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @WeightedLinefit(float* nocapture %x, float* nocapture %y, float* nocapture %var, i32 %N, float* nocapture %ret_m, float* nocapture %ret_b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !28), !dbg !141
  tail call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !29), !dbg !141
  tail call void @llvm.dbg.value(metadata !{float* %var}, i64 0, metadata !30), !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !31), !dbg !141
  tail call void @llvm.dbg.value(metadata !{float* %ret_m}, i64 0, metadata !32), !dbg !141
  tail call void @llvm.dbg.value(metadata !{float* %ret_b}, i64 0, metadata !33), !dbg !141
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !40), !dbg !143
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !39), !dbg !143
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !38), !dbg !143
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !37), !dbg !143
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !35), !dbg !143
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !34), !dbg !144
  %cmp79 = icmp sgt i32 %N, 0, !dbg !144
  br i1 %cmp79, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %s.084 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %sx.083 = phi double [ %add7, %for.body ], [ 0.000000e+00, %entry ]
  %sxy.082 = phi double [ %add33, %for.body ], [ 0.000000e+00, %entry ]
  %sxx.081 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %sy.080 = phi double [ %add14, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %var, i64 %indvars.iv, !dbg !146
  %0 = load float* %arrayidx, align 4, !dbg !146, !tbaa !129
  %conv = fpext float %0 to double, !dbg !146
  %div = fdiv double 1.000000e+00, %conv, !dbg !146
  %add = fadd double %s.084, %div, !dbg !146
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !35), !dbg !146
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !148
  %1 = load float* %arrayidx2, align 4, !dbg !148, !tbaa !129
  %div5 = fdiv float %1, %0, !dbg !148
  %conv6 = fpext float %div5 to double, !dbg !148
  %add7 = fadd double %sx.083, %conv6, !dbg !148
  tail call void @llvm.dbg.value(metadata !{double %add7}, i64 0, metadata !37), !dbg !148
  %arrayidx9 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !149
  %2 = load float* %arrayidx9, align 4, !dbg !149, !tbaa !129
  %div12 = fdiv float %2, %0, !dbg !149
  %conv13 = fpext float %div12 to double, !dbg !149
  %add14 = fadd double %sy.080, %conv13, !dbg !149
  tail call void @llvm.dbg.value(metadata !{double %add14}, i64 0, metadata !38), !dbg !149
  %mul = fmul float %1, %1, !dbg !150
  %div21 = fdiv float %mul, %0, !dbg !150
  %conv22 = fpext float %div21 to double, !dbg !150
  %add23 = fadd double %sxx.081, %conv22, !dbg !150
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !39), !dbg !150
  %mul28 = fmul float %1, %2, !dbg !151
  %div31 = fdiv float %mul28, %0, !dbg !151
  %conv32 = fpext float %div31 to double, !dbg !151
  %add33 = fadd double %sxy.082, %conv32, !dbg !151
  tail call void @llvm.dbg.value(metadata !{double %add33}, i64 0, metadata !40), !dbg !151
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !144
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !144
  %exitcond = icmp eq i32 %lftr.wideiv, %N, !dbg !144
  br i1 %exitcond, label %for.end, label %for.body, !dbg !144

for.end:                                          ; preds = %for.body, %entry
  %s.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %sx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7, %for.body ]
  %sxy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add33, %for.body ]
  %sxx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %sy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add14, %for.body ]
  %mul34 = fmul double %sxx.0.lcssa, %s.0.lcssa, !dbg !152
  %mul35 = fmul double %sx.0.lcssa, %sx.0.lcssa, !dbg !152
  %sub = fsub double %mul34, %mul35, !dbg !152
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !41), !dbg !152
  %mul36 = fmul double %sy.0.lcssa, %sxx.0.lcssa, !dbg !153
  %mul37 = fmul double %sxy.0.lcssa, %sx.0.lcssa, !dbg !153
  %sub38 = fsub double %mul36, %mul37, !dbg !153
  %div39 = fdiv double %sub38, %sub, !dbg !153
  tail call void @llvm.dbg.value(metadata !{double %div39}, i64 0, metadata !43), !dbg !153
  %mul40 = fmul double %sxy.0.lcssa, %s.0.lcssa, !dbg !154
  %mul41 = fmul double %sy.0.lcssa, %sx.0.lcssa, !dbg !154
  %sub42 = fsub double %mul40, %mul41, !dbg !154
  %div43 = fdiv double %sub42, %sub, !dbg !154
  tail call void @llvm.dbg.value(metadata !{double %div43}, i64 0, metadata !42), !dbg !154
  %conv44 = fptrunc double %div43 to float, !dbg !155
  store float %conv44, float* %ret_m, align 4, !dbg !155, !tbaa !129
  %conv45 = fptrunc double %div39 to float, !dbg !156
  store float %conv45, float* %ret_b, align 4, !dbg !156, !tbaa !129
  ret void, !dbg !157
}

; Function Attrs: nounwind optsize uwtable
define double @Gammln(double %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !48), !dbg !158
  %cmp = fcmp ugt double %x, 0.000000e+00, !dbg !159
  br i1 %cmp, label %if.end, label %return, !dbg !159

if.end:                                           ; preds = %entry
  %sub = fadd double %x, -1.000000e+00, !dbg !160
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !50), !dbg !160
  %add = fadd double %sub, 1.100000e+01, !dbg !161
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !52), !dbg !161
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !51), !dbg !161
  tail call void @llvm.dbg.value(metadata !162, i64 0, metadata !53), !dbg !163
  tail call void @llvm.dbg.value(metadata !164, i64 0, metadata !49), !dbg !165
  br label %for.body, !dbg !165

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 10, %if.end ], [ %indvars.iv.next, %for.body ]
  %value.023 = phi double [ 1.000000e+00, %if.end ], [ %add3, %for.body ]
  %tmp.022 = phi double [ %add, %if.end ], [ %sub4, %for.body ]
  %arrayidx = getelementptr inbounds [11 x double]* @Gammln.cof, i64 0, i64 %indvars.iv, !dbg !167
  %0 = load double* %arrayidx, align 8, !dbg !167, !tbaa !169
  %div = fdiv double %0, %tmp.022, !dbg !167
  %add3 = fadd double %value.023, %div, !dbg !167
  tail call void @llvm.dbg.value(metadata !{double %add3}, i64 0, metadata !53), !dbg !167
  %sub4 = fadd double %tmp.022, -1.000000e+00, !dbg !170
  tail call void @llvm.dbg.value(metadata !{double %sub4}, i64 0, metadata !52), !dbg !170
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !165
  %1 = trunc i64 %indvars.iv to i32, !dbg !165
  %cmp2 = icmp sgt i32 %1, 0, !dbg !165
  br i1 %cmp2, label %for.body, label %for.end, !dbg !165

for.end:                                          ; preds = %for.body
  %call = tail call double @log(double %add3) #5, !dbg !171
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !53), !dbg !171
  %add5 = fadd double %add, 5.000000e-01, !dbg !172
  tail call void @llvm.dbg.value(metadata !{double %add5}, i64 0, metadata !51), !dbg !172
  %add6 = fadd double %sub, 5.000000e-01, !dbg !173
  %call7 = tail call double @log(double %add5) #5, !dbg !173
  %mul = fmul double %add6, %call7, !dbg !173
  %add8 = fadd double %mul, 0x3FED67F1C8489D6C, !dbg !173
  %sub9 = fsub double %add8, %add5, !dbg !173
  %add10 = fadd double %call, %sub9, !dbg !173
  tail call void @llvm.dbg.value(metadata !{double %add10}, i64 0, metadata !53), !dbg !173
  br label %return, !dbg !174

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi double [ %add10, %for.end ], [ 9.999990e+05, %entry ]
  ret double %retval.0, !dbg !175
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize uwtable
define float** @FMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %rows}, i64 0, metadata !59), !dbg !176
  tail call void @llvm.dbg.value(metadata !{i32 %cols}, i64 0, metadata !60), !dbg !176
  %conv = sext i32 %rows to i64, !dbg !177
  %mul = shl nsw i64 %conv, 3, !dbg !177
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 172, i64 %mul) #5, !dbg !177
  %0 = bitcast i8* %call to float**, !dbg !177
  tail call void @llvm.dbg.value(metadata !{float** %0}, i64 0, metadata !61), !dbg !177
  %mul2 = shl nsw i64 %conv, 2, !dbg !178
  %conv3 = sext i32 %cols to i64, !dbg !178
  %mul4 = mul i64 %mul2, %conv3, !dbg !178
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 173, i64 %mul4) #5, !dbg !178
  %1 = bitcast i8* %call5 to float*, !dbg !178
  store float* %1, float** %0, align 8, !dbg !178, !tbaa !179
  tail call void @llvm.dbg.value(metadata !180, i64 0, metadata !62), !dbg !181
  %cmp18 = icmp sgt i32 %rows, 1, !dbg !181
  br i1 %cmp18, label %for.body, label %for.end, !dbg !181

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi float* [ %.pre, %for.body.for.body_crit_edge ], [ %1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %3 = trunc i64 %indvars.iv to i32, !dbg !183
  %mul8 = mul nsw i32 %3, %cols, !dbg !183
  %idx.ext = sext i32 %mul8 to i64, !dbg !183
  %add.ptr = getelementptr inbounds float* %2, i64 %idx.ext, !dbg !183
  %arrayidx9 = getelementptr inbounds float** %0, i64 %indvars.iv, !dbg !183
  store float* %add.ptr, float** %arrayidx9, align 8, !dbg !183, !tbaa !179
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !181
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !181
  %exitcond = icmp eq i32 %lftr.wideiv, %rows, !dbg !181
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !181

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float** %0, align 8, !dbg !183, !tbaa !179
  br label %for.body, !dbg !181

for.end:                                          ; preds = %for.body, %entry
  ret float** %0, !dbg !184
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @FMX2Free(float** nocapture %mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float** %mx}, i64 0, metadata !67), !dbg !185
  %0 = load float** %mx, align 8, !dbg !186, !tbaa !179
  %1 = bitcast float* %0 to i8*, !dbg !186
  tail call void @free(i8* %1) #5, !dbg !186
  %2 = bitcast float** %mx to i8*, !dbg !187
  tail call void @free(i8* %2) #5, !dbg !187
  ret void, !dbg !188
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define double** @DMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %rows}, i64 0, metadata !74), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %cols}, i64 0, metadata !75), !dbg !189
  %conv = sext i32 %rows to i64, !dbg !190
  %mul = shl nsw i64 %conv, 3, !dbg !190
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 190, i64 %mul) #5, !dbg !190
  %0 = bitcast i8* %call to double**, !dbg !190
  tail call void @llvm.dbg.value(metadata !{double** %0}, i64 0, metadata !76), !dbg !190
  %conv3 = sext i32 %cols to i64, !dbg !191
  %mul4 = mul i64 %mul, %conv3, !dbg !191
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 191, i64 %mul4) #5, !dbg !191
  %1 = bitcast i8* %call5 to double*, !dbg !191
  store double* %1, double** %0, align 8, !dbg !191, !tbaa !179
  tail call void @llvm.dbg.value(metadata !180, i64 0, metadata !77), !dbg !192
  %cmp18 = icmp sgt i32 %rows, 1, !dbg !192
  br i1 %cmp18, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi double* [ %.pre, %for.body.for.body_crit_edge ], [ %1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %3 = trunc i64 %indvars.iv to i32, !dbg !194
  %mul8 = mul nsw i32 %3, %cols, !dbg !194
  %idx.ext = sext i32 %mul8 to i64, !dbg !194
  %add.ptr = getelementptr inbounds double* %2, i64 %idx.ext, !dbg !194
  %arrayidx9 = getelementptr inbounds double** %0, i64 %indvars.iv, !dbg !194
  store double* %add.ptr, double** %arrayidx9, align 8, !dbg !194, !tbaa !179
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !192
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !192
  %exitcond = icmp eq i32 %lftr.wideiv, %rows, !dbg !192
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !192

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load double** %0, align 8, !dbg !194, !tbaa !179
  br label %for.body, !dbg !192

for.end:                                          ; preds = %for.body, %entry
  ret double** %0, !dbg !195
}

; Function Attrs: nounwind optsize uwtable
define void @DMX2Free(double** nocapture %mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double** %mx}, i64 0, metadata !82), !dbg !196
  %0 = load double** %mx, align 8, !dbg !197, !tbaa !179
  %1 = bitcast double* %0 to i8*, !dbg !197
  tail call void @free(i8* %1) #5, !dbg !197
  %2 = bitcast double** %mx to i8*, !dbg !198
  tail call void @free(i8* %2) #5, !dbg !198
  ret void, !dbg !199
}

; Function Attrs: nounwind optsize uwtable
define void @FMX2Multiply(float** nocapture %A, float** nocapture %B, float** nocapture %C, i32 %m, i32 %p, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float** %A}, i64 0, metadata !87), !dbg !200
  tail call void @llvm.dbg.value(metadata !{float** %B}, i64 0, metadata !88), !dbg !200
  tail call void @llvm.dbg.value(metadata !{float** %C}, i64 0, metadata !89), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !90), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %p}, i64 0, metadata !91), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !92), !dbg !200
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !201
  %cmp43 = icmp sgt i32 %m, 0, !dbg !201
  br i1 %cmp43, label %for.cond1.preheader.lr.ph, label %for.end26, !dbg !201

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp241 = icmp sgt i32 %n, 0, !dbg !203
  %cmp739 = icmp sgt i32 %p, 0, !dbg !205
  %idxprom9 = sext i32 %p to i64, !dbg !208
  %arrayidx15 = getelementptr inbounds float** %B, i64 %idxprom9, !dbg !208
  br label %for.cond1.preheader, !dbg !201

for.cond1.preheader:                              ; preds = %for.inc24, %for.cond1.preheader.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next47, %for.inc24 ]
  br i1 %cmp241, label %for.body3.lr.ph, label %for.inc24, !dbg !203

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float** %C, i64 %indvars.iv46, !dbg !209
  %0 = load float** %arrayidx, align 8, !dbg !209, !tbaa !179
  %arrayidx11 = getelementptr inbounds float** %A, i64 %indvars.iv46, !dbg !208
  br label %for.body3, !dbg !203

for.body3:                                        ; preds = %for.inc21, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc21 ]
  %arrayidx5 = getelementptr inbounds float* %0, i64 %indvars.iv, !dbg !209
  store float 0.000000e+00, float* %arrayidx5, align 4, !dbg !209, !tbaa !129
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !205
  br i1 %cmp739, label %for.body8.lr.ph, label %for.inc21, !dbg !205

for.body8.lr.ph:                                  ; preds = %for.body3
  %1 = load float** %arrayidx11, align 8, !dbg !208, !tbaa !179
  %arrayidx12 = getelementptr inbounds float* %1, i64 %idxprom9, !dbg !208
  %2 = load float** %arrayidx15, align 8, !dbg !208, !tbaa !179
  %arrayidx16 = getelementptr inbounds float* %2, i64 %indvars.iv, !dbg !208
  br label %for.body8, !dbg !205

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %3 = phi float [ 0.000000e+00, %for.body8.lr.ph ], [ %add, %for.body8 ], !dbg !208
  %k.040 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8 ]
  %4 = load float* %arrayidx12, align 4, !dbg !208, !tbaa !129
  %5 = load float* %arrayidx16, align 4, !dbg !208, !tbaa !129
  %mul = fmul float %4, %5, !dbg !208
  %add = fadd float %mul, %3, !dbg !208
  store float %add, float* %arrayidx5, align 4, !dbg !208, !tbaa !129
  %inc = add nsw i32 %k.040, 1, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !95), !dbg !205
  %exitcond = icmp eq i32 %inc, %p, !dbg !205
  br i1 %exitcond, label %for.inc21, label %for.body8, !dbg !205

for.inc21:                                        ; preds = %for.body8, %for.body3
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !203
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !203
  %exitcond45 = icmp eq i32 %lftr.wideiv, %n, !dbg !203
  br i1 %exitcond45, label %for.inc24, label %for.body3, !dbg !203

for.inc24:                                        ; preds = %for.inc21, %for.cond1.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1, !dbg !201
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32, !dbg !201
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %m, !dbg !201
  br i1 %exitcond49, label %for.end26, label %for.cond1.preheader, !dbg !201

for.end26:                                        ; preds = %for.inc24, %entry
  ret void, !dbg !210
}

; Function Attrs: nounwind optsize uwtable
define double @IncompleteGamma(double %a, double %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !100), !dbg !211
  tail call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !101), !dbg !211
  %cmp = fcmp ugt double %a, 0.000000e+00, !dbg !212
  br i1 %cmp, label %if.end, label %if.then, !dbg !212

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !212
  br label %if.end, !dbg !212

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = fcmp olt double %x, 0.000000e+00, !dbg !213
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !213

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !213
  br label %if.end3, !dbg !213

if.end3:                                          ; preds = %if.then2, %if.end
  %add = fadd double %a, 1.000000e+00, !dbg !214
  %cmp4 = fcmp olt double %add, %x, !dbg !214
  br i1 %cmp4, label %for.body, label %if.else, !dbg !214

for.cond:                                         ; preds = %if.end25
  %cmp6 = icmp slt i32 %inc, 100, !dbg !215
  br i1 %cmp6, label %for.body, label %for.end, !dbg !215

for.body:                                         ; preds = %if.end3, %for.cond
  %de1.0116 = phi double [ %de1.1, %for.cond ], [ %x, %if.end3 ]
  %de0.0115 = phi double [ %de0.1, %for.cond ], [ 1.000000e+00, %if.end3 ]
  %nu0.0114 = phi double [ %nu0.1, %for.cond ], [ 0.000000e+00, %if.end3 ]
  %oldp.0113 = phi double [ %nu1.1, %for.cond ], [ 1.000000e+00, %if.end3 ]
  %iter.0112 = phi i32 [ %inc, %for.cond ], [ 1, %if.end3 ]
  %conv = sitofp i32 %iter.0112 to double, !dbg !217
  %sub = fsub double %conv, %a, !dbg !217
  %mul = fmul double %sub, %nu0.0114, !dbg !217
  %add7 = fadd double %oldp.0113, %mul, !dbg !217
  tail call void @llvm.dbg.value(metadata !{double %add7}, i64 0, metadata !105), !dbg !217
  %mul10 = fmul double %sub, %de0.0115, !dbg !219
  %add11 = fadd double %de1.0116, %mul10, !dbg !219
  tail call void @llvm.dbg.value(metadata !{double %add11}, i64 0, metadata !107), !dbg !219
  %mul12 = fmul double %add7, %x, !dbg !220
  %mul14 = fmul double %conv, %oldp.0113, !dbg !220
  %add15 = fadd double %mul14, %mul12, !dbg !220
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !106), !dbg !220
  %mul16 = fmul double %add11, %x, !dbg !221
  %mul18 = fmul double %conv, %de1.0116, !dbg !221
  %add19 = fadd double %mul18, %mul16, !dbg !221
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !108), !dbg !221
  %cmp20 = fcmp une double %add19, 0.000000e+00, !dbg !222
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !222

if.then22:                                        ; preds = %for.body
  %div = fdiv double %add7, %add19, !dbg !223
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !105), !dbg !223
  %div23 = fdiv double %add11, %add19, !dbg !225
  tail call void @llvm.dbg.value(metadata !{double %div23}, i64 0, metadata !107), !dbg !225
  %div24 = fdiv double %add15, %add19, !dbg !226
  tail call void @llvm.dbg.value(metadata !{double %div24}, i64 0, metadata !106), !dbg !226
  tail call void @llvm.dbg.value(metadata !162, i64 0, metadata !108), !dbg !227
  br label %if.end25, !dbg !228

if.end25:                                         ; preds = %if.then22, %for.body
  %nu0.1 = phi double [ %div, %if.then22 ], [ %add7, %for.body ]
  %nu1.1 = phi double [ %div24, %if.then22 ], [ %add15, %for.body ]
  %de0.1 = phi double [ %div23, %if.then22 ], [ %add11, %for.body ]
  %de1.1 = phi double [ 1.000000e+00, %if.then22 ], [ %add19, %for.body ]
  %sub26 = fsub double %nu1.1, %oldp.0113, !dbg !229
  %div27 = fdiv double %sub26, %nu1.1, !dbg !229
  %call = tail call double @fabs(double %div27) #6, !dbg !229
  %cmp28 = fcmp olt double %call, 1.000000e-07, !dbg !229
  tail call void @llvm.dbg.value(metadata !{double %nu1.1}, i64 0, metadata !103), !dbg !230
  %inc = add nsw i32 %iter.0112, 1, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !102), !dbg !215
  br i1 %cmp28, label %if.then30, label %for.cond, !dbg !229

if.then30:                                        ; preds = %if.end25
  %call31 = tail call double @log(double %x) #5, !dbg !231
  %mul32 = fmul double %call31, %a, !dbg !231
  %sub33 = fsub double %mul32, %x, !dbg !231
  %call34 = tail call double @Gammln(double %a) #7, !dbg !231
  %sub35 = fsub double %sub33, %call34, !dbg !231
  %call36 = tail call double @exp(double %sub35) #5, !dbg !231
  %mul37 = fmul double %nu1.1, %call36, !dbg !231
  br label %return, !dbg !231

for.end:                                          ; preds = %for.cond
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !232
  br label %return, !dbg !233

if.else:                                          ; preds = %if.end3
  %div39 = fdiv double 1.000000e+00, %a, !dbg !234
  tail call void @llvm.dbg.value(metadata !{double %div39}, i64 0, metadata !111), !dbg !234
  tail call void @llvm.dbg.value(metadata !{double %div39}, i64 0, metadata !109), !dbg !234
  tail call void @llvm.dbg.value(metadata !180, i64 0, metadata !102), !dbg !235
  br label %for.body43, !dbg !235

for.cond40:                                       ; preds = %for.body43
  %cmp41 = icmp slt i32 %inc64, 10000, !dbg !235
  br i1 %cmp41, label %for.body43, label %for.end65, !dbg !235

for.body43:                                       ; preds = %if.else, %for.cond40
  %val.0119 = phi double [ %div39, %if.else ], [ %mul47, %for.cond40 ]
  %p.0118 = phi double [ %div39, %if.else ], [ %add48, %for.cond40 ]
  %iter.1117 = phi i32 [ 1, %if.else ], [ %inc64, %for.cond40 ]
  %conv44 = sitofp i32 %iter.1117 to double, !dbg !237
  %add45 = fadd double %conv44, %a, !dbg !237
  %div46 = fdiv double %x, %add45, !dbg !237
  %mul47 = fmul double %val.0119, %div46, !dbg !237
  tail call void @llvm.dbg.value(metadata !{double %mul47}, i64 0, metadata !111), !dbg !237
  %add48 = fadd double %p.0118, %mul47, !dbg !239
  tail call void @llvm.dbg.value(metadata !{double %add48}, i64 0, metadata !109), !dbg !239
  %div49 = fdiv double %mul47, %add48, !dbg !240
  %call50 = tail call double @fabs(double %div49) #6, !dbg !240
  %cmp51 = fcmp olt double %call50, 1.000000e-07, !dbg !240
  %inc64 = add nsw i32 %iter.1117, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !102), !dbg !235
  br i1 %cmp51, label %if.then53, label %for.cond40, !dbg !240

if.then53:                                        ; preds = %for.body43
  %call54 = tail call double @log(double %x) #5, !dbg !241
  %mul55 = fmul double %call54, %a, !dbg !241
  %sub56 = fsub double %mul55, %x, !dbg !241
  %call57 = tail call double @Gammln(double %a) #7, !dbg !241
  %sub58 = fsub double %sub56, %call57, !dbg !241
  %call59 = tail call double @exp(double %sub58) #5, !dbg !241
  %mul60 = fmul double %add48, %call59, !dbg !241
  %sub61 = fsub double 1.000000e+00, %mul60, !dbg !241
  br label %return, !dbg !241

for.end65:                                        ; preds = %for.cond40
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !242
  br label %return

return:                                           ; preds = %for.end, %for.end65, %if.then53, %if.then30
  %retval.0 = phi double [ %mul37, %if.then30 ], [ %sub61, %if.then53 ], [ 0.000000e+00, %for.end65 ], [ 0.000000e+00, %for.end ]
  ret double %retval.0, !dbg !243
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !112, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !24, metadata !44, metadata !54, metadata !63, metadata !68, metadata !78, metadata !83, metadata !96}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Linefit", metadata !"Linefit", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, float*, i32, float*, float*, float*)* @Linefit, null, null, metadata !11, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [Linefit]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !8, metadata !9, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!12 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 42]
!13 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554474, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 42]
!14 = metadata !{i32 786689, metadata !4, metadata !"N", metadata !5, i32 50331690, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 42]
!15 = metadata !{i32 786689, metadata !4, metadata !"ret_a", metadata !5, i32 67108906, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_a] [line 42]
!16 = metadata !{i32 786689, metadata !4, metadata !"ret_b", metadata !5, i32 83886122, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_b] [line 42]
!17 = metadata !{i32 786689, metadata !4, metadata !"ret_r", metadata !5, i32 100663338, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_r] [line 42]
!18 = metadata !{i32 786688, metadata !4, metadata !"xavg", metadata !5, i32 44, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xavg] [line 44]
!19 = metadata !{i32 786688, metadata !4, metadata !"yavg", metadata !5, i32 44, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yavg] [line 44]
!20 = metadata !{i32 786688, metadata !4, metadata !"sxx", metadata !5, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sxx] [line 45]
!21 = metadata !{i32 786688, metadata !4, metadata !"syy", metadata !5, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [syy] [line 45]
!22 = metadata !{i32 786688, metadata !4, metadata !"sxy", metadata !5, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sxy] [line 45]
!23 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 46]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WeightedLinefit", metadata !"WeightedLinefit", metadata !"", i32 85, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, float*, i32, float*, float*)* @WeightedLinefit, null, null, metadata !27, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [WeightedLinefit]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !8, metadata !9, metadata !9}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!28 = metadata !{i32 786689, metadata !24, metadata !"x", metadata !5, i32 16777301, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 85]
!29 = metadata !{i32 786689, metadata !24, metadata !"y", metadata !5, i32 33554517, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 85]
!30 = metadata !{i32 786689, metadata !24, metadata !"var", metadata !5, i32 50331733, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 85]
!31 = metadata !{i32 786689, metadata !24, metadata !"N", metadata !5, i32 67108949, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 85]
!32 = metadata !{i32 786689, metadata !24, metadata !"ret_m", metadata !5, i32 83886165, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_m] [line 85]
!33 = metadata !{i32 786689, metadata !24, metadata !"ret_b", metadata !5, i32 100663381, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_b] [line 85]
!34 = metadata !{i32 786688, metadata !24, metadata !"i", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 87]
!35 = metadata !{i32 786688, metadata !24, metadata !"s", metadata !5, i32 88, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 88]
!36 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786688, metadata !24, metadata !"sx", metadata !5, i32 89, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sx] [line 89]
!38 = metadata !{i32 786688, metadata !24, metadata !"sy", metadata !5, i32 89, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sy] [line 89]
!39 = metadata !{i32 786688, metadata !24, metadata !"sxx", metadata !5, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sxx] [line 90]
!40 = metadata !{i32 786688, metadata !24, metadata !"sxy", metadata !5, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sxy] [line 90]
!41 = metadata !{i32 786688, metadata !24, metadata !"delta", metadata !5, i32 91, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 91]
!42 = metadata !{i32 786688, metadata !24, metadata !"m", metadata !5, i32 92, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 92]
!43 = metadata !{i32 786688, metadata !24, metadata !"b", metadata !5, i32 92, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 92]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Gammln", metadata !"Gammln", metadata !"", i32 124, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @Gammln, null, null, metadata !47, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [Gammln]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !36, metadata !36}
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53}
!48 = metadata !{i32 786689, metadata !44, metadata !"x", metadata !5, i32 16777340, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 124]
!49 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!50 = metadata !{i32 786688, metadata !44, metadata !"xx", metadata !5, i32 127, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 127]
!51 = metadata !{i32 786688, metadata !44, metadata !"tx", metadata !5, i32 127, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 127]
!52 = metadata !{i32 786688, metadata !44, metadata !"tmp", metadata !5, i32 128, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 128]
!53 = metadata !{i32 786688, metadata !44, metadata !"value", metadata !5, i32 128, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 128]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FMX2Alloc", metadata !"FMX2Alloc", metadata !"", i32 167, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float** (i32, i32)* @FMX2Alloc, null, null, metadata !58, i32 168} ; [ DW_TAG_subprogram ] [line 167] [def] [scope 168] [FMX2Alloc]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !57, metadata !8, metadata !8}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62}
!59 = metadata !{i32 786689, metadata !54, metadata !"rows", metadata !5, i32 16777383, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rows] [line 167]
!60 = metadata !{i32 786689, metadata !54, metadata !"cols", metadata !5, i32 33554599, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cols] [line 167]
!61 = metadata !{i32 786688, metadata !54, metadata !"mx", metadata !5, i32 169, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 169]
!62 = metadata !{i32 786688, metadata !54, metadata !"r", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 170]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FMX2Free", metadata !"FMX2Free", metadata !"", i32 179, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float**)* @FMX2Free, null, null, metadata !66, i32 180} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 180] [FMX2Free]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !57}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !63, metadata !"mx", metadata !5, i32 16777395, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 179]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DMX2Alloc", metadata !"DMX2Alloc", metadata !"", i32 185, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double** (i32, i32)* @DMX2Alloc, null, null, metadata !73, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [DMX2Alloc]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !71, metadata !8, metadata !8}
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77}
!74 = metadata !{i32 786689, metadata !68, metadata !"rows", metadata !5, i32 16777401, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rows] [line 185]
!75 = metadata !{i32 786689, metadata !68, metadata !"cols", metadata !5, i32 33554617, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cols] [line 185]
!76 = metadata !{i32 786688, metadata !68, metadata !"mx", metadata !5, i32 187, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 187]
!77 = metadata !{i32 786688, metadata !68, metadata !"r", metadata !5, i32 188, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 188]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DMX2Free", metadata !"DMX2Free", metadata !"", i32 197, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double**)* @DMX2Free, null, null, metadata !81, i32 198} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 198] [DMX2Free]
!79 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{null, metadata !71}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786689, metadata !78, metadata !"mx", metadata !5, i32 16777413, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 197]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FMX2Multiply", metadata !"FMX2Multiply", metadata !"", i32 211, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float**, float**, float**, i32, i32, i32)* @FMX2Multiply, null, null, metadata !86, i32 212} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 212] [FMX2Multiply]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !57, metadata !57, metadata !57, metadata !8, metadata !8, metadata !8}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!87 = metadata !{i32 786689, metadata !83, metadata !"A", metadata !5, i32 16777427, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 211]
!88 = metadata !{i32 786689, metadata !83, metadata !"B", metadata !5, i32 33554643, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 211]
!89 = metadata !{i32 786689, metadata !83, metadata !"C", metadata !5, i32 50331859, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 211]
!90 = metadata !{i32 786689, metadata !83, metadata !"m", metadata !5, i32 67109075, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 211]
!91 = metadata !{i32 786689, metadata !83, metadata !"p", metadata !5, i32 83886291, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 211]
!92 = metadata !{i32 786689, metadata !83, metadata !"n", metadata !5, i32 100663507, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 211]
!93 = metadata !{i32 786688, metadata !83, metadata !"i", metadata !5, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 213]
!94 = metadata !{i32 786688, metadata !83, metadata !"j", metadata !5, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 213]
!95 = metadata !{i32 786688, metadata !83, metadata !"k", metadata !5, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 213]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IncompleteGamma", metadata !"IncompleteGamma", metadata !"", i32 249, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @IncompleteGamma, null, null, metadata !99, i32 250} ; [ DW_TAG_subprogram ] [line 249] [def] [scope 250] [IncompleteGamma]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !36, metadata !36, metadata !36}
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !111}
!100 = metadata !{i32 786689, metadata !96, metadata !"a", metadata !5, i32 16777465, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 249]
!101 = metadata !{i32 786689, metadata !96, metadata !"x", metadata !5, i32 33554681, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 249]
!102 = metadata !{i32 786688, metadata !96, metadata !"iter", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iter] [line 251]
!103 = metadata !{i32 786688, metadata !104, metadata !"oldp", metadata !5, i32 262, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldp] [line 262]
!104 = metadata !{i32 786443, metadata !1, metadata !96, i32 261, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!105 = metadata !{i32 786688, metadata !104, metadata !"nu0", metadata !5, i32 263, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nu0] [line 263]
!106 = metadata !{i32 786688, metadata !104, metadata !"nu1", metadata !5, i32 263, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nu1] [line 263]
!107 = metadata !{i32 786688, metadata !104, metadata !"de0", metadata !5, i32 264, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [de0] [line 264]
!108 = metadata !{i32 786688, metadata !104, metadata !"de1", metadata !5, i32 264, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [de1] [line 264]
!109 = metadata !{i32 786688, metadata !110, metadata !"p", metadata !5, i32 307, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 307]
!110 = metadata !{i32 786443, metadata !1, metadata !96, i32 306, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!111 = metadata !{i32 786688, metadata !110, metadata !"val", metadata !5, i32 308, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 308]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786484, i32 0, metadata !44, metadata !"cof", metadata !"cof", metadata !"", metadata !5, i32 129, metadata !114, i32 1, i32 1, [11 x double]* @Gammln.cof, null} ; [ DW_TAG_variable ] [cof] [line 129] [local] [def]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 64, i32 0, i32 0, metadata !36, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 64, offset 0] [from double]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!117 = metadata !{i32 42, i32 0, metadata !4, null}
!118 = metadata !{float 0.000000e+00}
!119 = metadata !{i32 50, i32 0, metadata !4, null}
!120 = metadata !{i32 51, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!122 = metadata !{i32 56, i32 0, metadata !4, null}
!123 = metadata !{i32 57, i32 0, metadata !4, null}
!124 = metadata !{i32 59, i32 0, metadata !4, null}
!125 = metadata !{i32 60, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!127 = metadata !{i32 53, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !121, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!129 = metadata !{metadata !"float", metadata !130}
!130 = metadata !{metadata !"omnipotent char", metadata !131}
!131 = metadata !{metadata !"Simple C/C++ TBAA"}
!132 = metadata !{i32 54, i32 0, metadata !128, null}
!133 = metadata !{i32 62, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !126, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!135 = metadata !{i32 63, i32 0, metadata !134, null}
!136 = metadata !{i32 64, i32 0, metadata !134, null}
!137 = metadata !{i32 66, i32 0, metadata !4, null}
!138 = metadata !{i32 67, i32 0, metadata !4, null}
!139 = metadata !{i32 68, i32 0, metadata !4, null}
!140 = metadata !{i32 69, i32 0, metadata !4, null}
!141 = metadata !{i32 85, i32 0, metadata !24, null}
!142 = metadata !{double 0.000000e+00}
!143 = metadata !{i32 94, i32 0, metadata !24, null}
!144 = metadata !{i32 95, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !24, i32 95, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!146 = metadata !{i32 97, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 96, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!148 = metadata !{i32 98, i32 0, metadata !147, null}
!149 = metadata !{i32 99, i32 0, metadata !147, null}
!150 = metadata !{i32 100, i32 0, metadata !147, null}
!151 = metadata !{i32 101, i32 0, metadata !147, null}
!152 = metadata !{i32 104, i32 0, metadata !24, null}
!153 = metadata !{i32 105, i32 0, metadata !24, null}
!154 = metadata !{i32 106, i32 0, metadata !24, null}
!155 = metadata !{i32 108, i32 0, metadata !24, null}
!156 = metadata !{i32 109, i32 0, metadata !24, null}
!157 = metadata !{i32 110, i32 0, metadata !24, null}
!158 = metadata !{i32 124, i32 0, metadata !44, null}
!159 = metadata !{i32 147, i32 0, metadata !44, null}
!160 = metadata !{i32 149, i32 0, metadata !44, null}
!161 = metadata !{i32 150, i32 0, metadata !44, null}
!162 = metadata !{double 1.000000e+00}
!163 = metadata !{i32 151, i32 0, metadata !44, null}
!164 = metadata !{i32 10}
!165 = metadata !{i32 152, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !44, i32 152, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!167 = metadata !{i32 154, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 153, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!169 = metadata !{metadata !"double", metadata !130}
!170 = metadata !{i32 155, i32 0, metadata !168, null}
!171 = metadata !{i32 157, i32 0, metadata !44, null}
!172 = metadata !{i32 158, i32 0, metadata !44, null}
!173 = metadata !{i32 159, i32 0, metadata !44, null}
!174 = metadata !{i32 160, i32 0, metadata !44, null}
!175 = metadata !{i32 161, i32 0, metadata !44, null}
!176 = metadata !{i32 167, i32 0, metadata !54, null}
!177 = metadata !{i32 172, i32 0, metadata !54, null}
!178 = metadata !{i32 173, i32 0, metadata !54, null}
!179 = metadata !{metadata !"any pointer", metadata !130}
!180 = metadata !{i32 1}
!181 = metadata !{i32 174, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !54, i32 174, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!183 = metadata !{i32 175, i32 0, metadata !182, null}
!184 = metadata !{i32 176, i32 0, metadata !54, null}
!185 = metadata !{i32 179, i32 0, metadata !63, null}
!186 = metadata !{i32 181, i32 0, metadata !63, null}
!187 = metadata !{i32 182, i32 0, metadata !63, null}
!188 = metadata !{i32 183, i32 0, metadata !63, null}
!189 = metadata !{i32 185, i32 0, metadata !68, null}
!190 = metadata !{i32 190, i32 0, metadata !68, null}
!191 = metadata !{i32 191, i32 0, metadata !68, null}
!192 = metadata !{i32 192, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !68, i32 192, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!194 = metadata !{i32 193, i32 0, metadata !193, null}
!195 = metadata !{i32 194, i32 0, metadata !68, null}
!196 = metadata !{i32 197, i32 0, metadata !78, null}
!197 = metadata !{i32 199, i32 0, metadata !78, null}
!198 = metadata !{i32 200, i32 0, metadata !78, null}
!199 = metadata !{i32 201, i32 0, metadata !78, null}
!200 = metadata !{i32 211, i32 0, metadata !83, null}
!201 = metadata !{i32 215, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !83, i32 215, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!203 = metadata !{i32 216, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !202, i32 216, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!205 = metadata !{i32 219, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 219, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 217, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!208 = metadata !{i32 220, i32 0, metadata !206, null}
!209 = metadata !{i32 218, i32 0, metadata !207, null}
!210 = metadata !{i32 222, i32 0, metadata !83, null}
!211 = metadata !{i32 249, i32 0, metadata !96, null}
!212 = metadata !{i32 253, i32 0, metadata !96, null}
!213 = metadata !{i32 254, i32 0, metadata !96, null}
!214 = metadata !{i32 260, i32 0, metadata !96, null}
!215 = metadata !{i32 272, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !104, i32 272, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!217 = metadata !{i32 281, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !216, i32 273, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!219 = metadata !{i32 282, i32 0, metadata !218, null}
!220 = metadata !{i32 286, i32 0, metadata !218, null}
!221 = metadata !{i32 287, i32 0, metadata !218, null}
!222 = metadata !{i32 290, i32 0, metadata !218, null}
!223 = metadata !{i32 292, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !218, i32 291, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!225 = metadata !{i32 293, i32 0, metadata !224, null}
!226 = metadata !{i32 294, i32 0, metadata !224, null}
!227 = metadata !{i32 295, i32 0, metadata !224, null}
!228 = metadata !{i32 296, i32 0, metadata !224, null}
!229 = metadata !{i32 298, i32 0, metadata !218, null}
!230 = metadata !{i32 301, i32 0, metadata !218, null}
!231 = metadata !{i32 299, i32 0, metadata !218, null}
!232 = metadata !{i32 303, i32 0, metadata !104, null}
!233 = metadata !{i32 304, i32 0, metadata !104, null}
!234 = metadata !{i32 320, i32 0, metadata !110, null}
!235 = metadata !{i32 321, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !110, i32 321, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!237 = metadata !{i32 323, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !236, i32 322, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c]
!239 = metadata !{i32 324, i32 0, metadata !238, null}
!240 = metadata !{i32 326, i32 0, metadata !238, null}
!241 = metadata !{i32 327, i32 0, metadata !238, null}
!242 = metadata !{i32 329, i32 0, metadata !110, null}
!243 = metadata !{i32 333, i32 0, metadata !96, null}
