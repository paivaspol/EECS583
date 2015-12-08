; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str3 = private unnamed_addr constant [38 x i8] c"Too many iterations in routine JACOBI\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"md[i]\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"eig\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @jacobi(double** nocapture %a, i32 %n, double* nocapture %d, double** nocapture %v, i32* nocapture %nrot) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %n, i32 8) #5
  %0 = bitcast i8* %call to double*
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %n, i32 8) #5
  %1 = bitcast i8* %call1 to double*
  %cmp559 = icmp sgt i32 %n, 0
  br i1 %cmp559, label %for.cond2.preheader.lr.ph, label %for.end29

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %2 = add i32 %n, -1
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add i64 %4, 8
  br label %for.end

for.cond14.preheader:                             ; preds = %for.end
  br i1 %cmp559, label %for.body16, label %for.end29

for.end:                                          ; preds = %for.end, %for.cond2.preheader.lr.ph
  %indvars.iv622 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next623, %for.end ]
  %arrayidx = getelementptr inbounds double** %v, i64 %indvars.iv622
  %6 = load double** %arrayidx, align 8, !tbaa !0
  %7 = bitcast double* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %5, i32 8, i1 false)
  %8 = load double** %arrayidx, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %8, i64 %indvars.iv622
  store double 1.000000e+00, double* %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next623 = add i64 %indvars.iv622, 1
  %lftr.wideiv624 = trunc i64 %indvars.iv.next623 to i32
  %exitcond625 = icmp eq i32 %lftr.wideiv624, %n
  br i1 %exitcond625, label %for.cond14.preheader, label %for.end

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %for.body16 ], [ 0, %for.cond14.preheader ]
  %arrayidx19 = getelementptr inbounds double** %a, i64 %indvars.iv614
  %9 = load double** %arrayidx19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds double* %9, i64 %indvars.iv614
  %10 = load double* %arrayidx20, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds double* %d, i64 %indvars.iv614
  store double %10, double* %arrayidx22, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds double* %0, i64 %indvars.iv614
  store double %10, double* %arrayidx24, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds double* %1, i64 %indvars.iv614
  store double 0.000000e+00, double* %arrayidx26, align 8, !tbaa !3
  %indvars.iv.next615 = add i64 %indvars.iv614, 1
  %lftr.wideiv616 = trunc i64 %indvars.iv.next615 to i32
  %exitcond617 = icmp eq i32 %lftr.wideiv616, %n
  br i1 %exitcond617, label %for.end29, label %for.body16

for.end29:                                        ; preds = %entry, %for.body16, %for.cond14.preheader
  store i32 0, i32* %nrot, align 4, !tbaa !4
  %sub = add nsw i32 %n, -1
  %cmp34533 = icmp sgt i32 %sub, 0
  %mul55 = mul nsw i32 %n, %n
  %conv = sitofp i32 %mul55 to double
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end29, %for.inc317
  %i.0554 = phi i32 [ 1, %for.end29 ], [ %inc318, %for.inc317 ]
  br i1 %cmp34533, label %for.body35, label %for.end50

for.cond33.loopexit:                              ; preds = %for.body38, %for.body35
  %sm.1.lcssa = phi double [ %sm.0534, %for.body35 ], [ %add44, %for.body38 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond567 = icmp eq i32 %11, %sub
  br i1 %exitcond567, label %for.end50, label %for.body35

for.body35:                                       ; preds = %for.cond33.preheader, %for.cond33.loopexit
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.cond33.loopexit ], [ 0, %for.cond33.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond33.loopexit ], [ 1, %for.cond33.preheader ]
  %sm.0534 = phi double [ %sm.1.lcssa, %for.cond33.loopexit ], [ 0.000000e+00, %for.cond33.preheader ]
  %indvars.iv.next565 = add i64 %indvars.iv564, 1
  %11 = trunc i64 %indvars.iv.next565 to i32
  %cmp37530 = icmp slt i32 %11, %n
  br i1 %cmp37530, label %for.body38.lr.ph, label %for.cond33.loopexit

for.body38.lr.ph:                                 ; preds = %for.body35
  %arrayidx41 = getelementptr inbounds double** %a, i64 %indvars.iv564
  %12 = load double** %arrayidx41, align 8, !tbaa !0
  br label %for.body38

for.body38:                                       ; preds = %for.body38, %for.body38.lr.ph
  %indvars.iv561 = phi i64 [ %indvars.iv, %for.body38.lr.ph ], [ %indvars.iv.next562, %for.body38 ]
  %sm.1531 = phi double [ %sm.0534, %for.body38.lr.ph ], [ %add44, %for.body38 ]
  %arrayidx42 = getelementptr inbounds double* %12, i64 %indvars.iv561
  %13 = load double* %arrayidx42, align 8, !tbaa !3
  %call43 = tail call double @fabs(double %13) #6
  %add44 = fadd double %sm.1531, %call43
  %indvars.iv.next562 = add i64 %indvars.iv561, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next562 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.cond33.loopexit, label %for.body38

for.end50:                                        ; preds = %for.cond33.loopexit, %for.cond33.preheader
  %sm.0.lcssa = phi double [ 0.000000e+00, %for.cond33.preheader ], [ %sm.1.lcssa, %for.cond33.loopexit ]
  %call51 = tail call double @fabs(double %sm.0.lcssa) #6
  %cmp52 = fcmp olt double %call51, 1.200000e-38
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %for.end50
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %call1) #5
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %call) #5
  br label %return

if.end:                                           ; preds = %for.end50
  %cmp53 = icmp slt i32 %i.0554, 4
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end
  %mul = fmul double %sm.0.lcssa, 2.000000e-01
  %div = fdiv double %mul, %conv
  br label %if.end56

if.end56:                                         ; preds = %if.end, %if.then54
  %tresh.0 = phi double [ %div, %if.then54 ], [ 0.000000e+00, %if.end ]
  br i1 %cmp34533, label %for.body61.lr.ph, label %for.cond299.loopexit

for.body61.lr.ph:                                 ; preds = %if.end56
  %cmp73 = icmp sgt i32 %i.0554, 4
  br label %for.body61

for.cond57.loopexit:                              ; preds = %for.inc293, %for.body61
  %indvars.iv.next599 = add i64 %indvars.iv598, 1
  %indvars.iv.next580 = add i32 %indvars.iv579, 1
  %indvars.iv.next586 = add i32 %indvars.iv585, 1
  %exitcond609 = icmp eq i32 %14, %sub
  br i1 %exitcond609, label %for.cond299.loopexit, label %for.body61

for.body61:                                       ; preds = %for.cond57.loopexit, %for.body61.lr.ph
  %indvars.iv606 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next607, %for.cond57.loopexit ]
  %indvars.iv598 = phi i64 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next599, %for.cond57.loopexit ]
  %indvars.iv585 = phi i32 [ 2, %for.body61.lr.ph ], [ %indvars.iv.next586, %for.cond57.loopexit ]
  %indvars.iv579 = phi i32 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next580, %for.cond57.loopexit ]
  %indvars.iv570 = phi i32 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next571, %for.cond57.loopexit ]
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %indvars.iv.next571 = add i32 %indvars.iv570, 1
  %14 = trunc i64 %indvars.iv.next607 to i32
  %cmp64547 = icmp slt i32 %14, %n
  br i1 %cmp64547, label %for.body66.lr.ph, label %for.cond57.loopexit

for.body66.lr.ph:                                 ; preds = %for.body61
  %15 = sext i32 %indvars.iv585 to i64
  %arrayidx69 = getelementptr inbounds double** %a, i64 %indvars.iv606
  %arrayidx76 = getelementptr inbounds double* %d, i64 %indvars.iv606
  %arrayidx149 = getelementptr inbounds double* %1, i64 %indvars.iv606
  %16 = trunc i64 %indvars.iv606 to i32
  %cmp165538 = icmp sgt i32 %16, 0
  %.pre = load double** %arrayidx69, align 8, !tbaa !0
  br label %for.body66

for.body66:                                       ; preds = %for.inc293, %for.body66.lr.ph
  %17 = phi double* [ %.pre, %for.body66.lr.ph ], [ %43, %for.inc293 ]
  %indvars.iv600 = phi i64 [ %indvars.iv598, %for.body66.lr.ph ], [ %indvars.iv.next601, %for.inc293 ]
  %indvars.iv587 = phi i64 [ %15, %for.body66.lr.ph ], [ %indvars.iv.next588, %for.inc293 ]
  %indvars.iv581 = phi i32 [ %indvars.iv579, %for.body66.lr.ph ], [ %indvars.iv.next582, %for.inc293 ]
  %arrayidx70 = getelementptr inbounds double* %17, i64 %indvars.iv600
  %18 = load double* %arrayidx70, align 8, !tbaa !3
  %call71 = tail call double @fabs(double %18) #6
  %mul72 = fmul double %call71, 1.000000e+02
  br i1 %cmp73, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %for.body66
  %19 = load double* %arrayidx76, align 8, !tbaa !3
  %call77 = tail call double @fabs(double %19) #6
  %mul78 = fmul double %call77, 1.200000e-07
  %cmp79 = fcmp olt double %mul72, %mul78
  br i1 %cmp79, label %land.lhs.true81, label %if.else93

land.lhs.true81:                                  ; preds = %land.lhs.true
  %arrayidx83 = getelementptr inbounds double* %d, i64 %indvars.iv600
  %20 = load double* %arrayidx83, align 8, !tbaa !3
  %call84 = tail call double @fabs(double %20) #6
  %mul85 = fmul double %call84, 1.200000e-07
  %cmp86 = fcmp olt double %mul72, %mul85
  br i1 %cmp86, label %if.then88, label %if.else93

if.then88:                                        ; preds = %land.lhs.true81
  store double 0.000000e+00, double* %arrayidx70, align 8, !tbaa !3
  br label %for.inc293

if.else93:                                        ; preds = %land.lhs.true81, %land.lhs.true, %for.body66
  %cmp99 = fcmp ogt double %call71, %tresh.0
  br i1 %cmp99, label %if.then101, label %for.inc293

if.then101:                                       ; preds = %if.else93
  %arrayidx103 = getelementptr inbounds double* %d, i64 %indvars.iv600
  %21 = load double* %arrayidx103, align 8, !tbaa !3
  %22 = load double* %arrayidx76, align 8, !tbaa !3
  %sub106 = fsub double %21, %22
  %call107 = tail call double @fabs(double %sub106) #6
  %mul108 = fmul double %call107, 1.200000e-07
  %cmp109 = fcmp olt double %mul72, %mul108
  br i1 %cmp109, label %if.then111, label %if.else117

if.then111:                                       ; preds = %if.then101
  %div116 = fdiv double %18, %sub106
  br label %if.end135

if.else117:                                       ; preds = %if.then101
  %mul118 = fmul double %sub106, 5.000000e-01
  %div123 = fdiv double %mul118, %18
  %call124 = tail call double @fabs(double %div123) #6
  %mul125 = fmul double %div123, %div123
  %add126 = fadd double %mul125, 1.000000e+00
  %call127 = tail call double @sqrt(double %add126) #5
  %add128 = fadd double %call124, %call127
  %div129 = fdiv double 1.000000e+00, %add128
  %cmp130 = fcmp olt double %div123, 0.000000e+00
  br i1 %cmp130, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.else117
  %sub133 = fsub double -0.000000e+00, %div129
  br label %if.end135

if.end135:                                        ; preds = %if.else117, %if.then132, %if.then111
  %t.0 = phi double [ %div116, %if.then111 ], [ %sub133, %if.then132 ], [ %div129, %if.else117 ]
  %mul136 = fmul double %t.0, %t.0
  %add137 = fadd double %mul136, 1.000000e+00
  %call138 = tail call double @sqrt(double %add137) #5
  %div139 = fdiv double 1.000000e+00, %call138
  %mul140 = fmul double %t.0, %div139
  %add141 = fadd double %div139, 1.000000e+00
  %div142 = fdiv double %mul140, %add141
  %23 = load double** %arrayidx69, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds double* %23, i64 %indvars.iv600
  %24 = load double* %arrayidx146, align 8, !tbaa !3
  %mul147 = fmul double %t.0, %24
  %25 = load double* %arrayidx149, align 8, !tbaa !3
  %sub150 = fsub double %25, %mul147
  store double %sub150, double* %arrayidx149, align 8, !tbaa !3
  %arrayidx152 = getelementptr inbounds double* %1, i64 %indvars.iv600
  %26 = load double* %arrayidx152, align 8, !tbaa !3
  %add153 = fadd double %mul147, %26
  store double %add153, double* %arrayidx152, align 8, !tbaa !3
  %27 = load double* %arrayidx76, align 8, !tbaa !3
  %sub156 = fsub double %27, %mul147
  store double %sub156, double* %arrayidx76, align 8, !tbaa !3
  %28 = load double* %arrayidx103, align 8, !tbaa !3
  %add159 = fadd double %mul147, %28
  store double %add159, double* %arrayidx103, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx146, align 8, !tbaa !3
  br i1 %cmp165538, label %for.body167, label %for.cond196.loopexit

for.body167:                                      ; preds = %if.end135, %for.body167
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %for.body167 ], [ 0, %if.end135 ]
  %arrayidx170 = getelementptr inbounds double** %a, i64 %indvars.iv568
  %29 = load double** %arrayidx170, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds double* %29, i64 %indvars.iv606
  %30 = load double* %arrayidx171, align 8, !tbaa !3
  %arrayidx175 = getelementptr inbounds double* %29, i64 %indvars.iv600
  %31 = load double* %arrayidx175, align 8, !tbaa !3
  %mul176 = fmul double %div142, %30
  %add177 = fadd double %31, %mul176
  %mul178 = fmul double %mul140, %add177
  %sub179 = fsub double %30, %mul178
  store double %sub179, double* %arrayidx171, align 8, !tbaa !3
  %mul184 = fmul double %div142, %31
  %sub185 = fsub double %30, %mul184
  %mul186 = fmul double %mul140, %sub185
  %add187 = fadd double %31, %mul186
  store double %add187, double* %arrayidx175, align 8, !tbaa !3
  %indvars.iv.next569 = add i64 %indvars.iv568, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv.next569 to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %indvars.iv570
  br i1 %exitcond573, label %for.cond196.loopexit, label %for.body167

for.cond196.loopexit:                             ; preds = %for.body167, %if.end135
  %32 = trunc i64 %indvars.iv600 to i32
  %cmp197540 = icmp slt i32 %14, %32
  br i1 %cmp197540, label %for.body199, label %for.cond228.loopexit

for.body199:                                      ; preds = %for.cond196.loopexit, %for.body199
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.body199 ], [ %indvars.iv598, %for.cond196.loopexit ]
  %arrayidx203 = getelementptr inbounds double* %23, i64 %indvars.iv576
  %33 = load double* %arrayidx203, align 8, !tbaa !3
  %arrayidx206 = getelementptr inbounds double** %a, i64 %indvars.iv576
  %34 = load double** %arrayidx206, align 8, !tbaa !0
  %arrayidx207 = getelementptr inbounds double* %34, i64 %indvars.iv600
  %35 = load double* %arrayidx207, align 8, !tbaa !3
  %mul208 = fmul double %div142, %33
  %add209 = fadd double %mul208, %35
  %mul210 = fmul double %mul140, %add209
  %sub211 = fsub double %33, %mul210
  store double %sub211, double* %arrayidx203, align 8, !tbaa !3
  %mul216 = fmul double %div142, %35
  %sub217 = fsub double %33, %mul216
  %mul218 = fmul double %mul140, %sub217
  %add219 = fadd double %35, %mul218
  store double %add219, double* %arrayidx207, align 8, !tbaa !3
  %indvars.iv.next577 = add i64 %indvars.iv576, 1
  %lftr.wideiv583 = trunc i64 %indvars.iv.next577 to i32
  %exitcond584 = icmp eq i32 %lftr.wideiv583, %indvars.iv581
  br i1 %exitcond584, label %for.cond228.loopexit, label %for.body199

for.cond228.loopexit:                             ; preds = %for.body199, %for.cond196.loopexit
  %j.2542 = add nsw i32 %indvars.iv581, 1
  %cmp229543 = icmp slt i32 %j.2542, %n
  br i1 %cmp229543, label %for.body231.lr.ph, label %for.cond259.loopexit

for.body231.lr.ph:                                ; preds = %for.cond228.loopexit
  %arrayidx238 = getelementptr inbounds double** %a, i64 %indvars.iv600
  %36 = load double** %arrayidx238, align 8, !tbaa !0
  br label %for.body231

for.body231:                                      ; preds = %for.body231, %for.body231.lr.ph
  %indvars.iv589 = phi i64 [ %indvars.iv587, %for.body231.lr.ph ], [ %indvars.iv.next590, %for.body231 ]
  %arrayidx235 = getelementptr inbounds double* %23, i64 %indvars.iv589
  %37 = load double* %arrayidx235, align 8, !tbaa !3
  %arrayidx239 = getelementptr inbounds double* %36, i64 %indvars.iv589
  %38 = load double* %arrayidx239, align 8, !tbaa !3
  %mul240 = fmul double %div142, %37
  %add241 = fadd double %mul240, %38
  %mul242 = fmul double %mul140, %add241
  %sub243 = fsub double %37, %mul242
  store double %sub243, double* %arrayidx235, align 8, !tbaa !3
  %mul248 = fmul double %div142, %38
  %sub249 = fsub double %37, %mul248
  %mul250 = fmul double %mul140, %sub249
  %add251 = fadd double %38, %mul250
  store double %add251, double* %arrayidx239, align 8, !tbaa !3
  %indvars.iv.next590 = add i64 %indvars.iv589, 1
  %lftr.wideiv592 = trunc i64 %indvars.iv.next590 to i32
  %exitcond593 = icmp eq i32 %lftr.wideiv592, %n
  br i1 %exitcond593, label %for.cond259.loopexit, label %for.body231

for.cond259.loopexit:                             ; preds = %for.body231, %for.cond228.loopexit
  br i1 %cmp559, label %for.body262, label %for.end289

for.body262:                                      ; preds = %for.cond259.loopexit, %for.body262
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %for.body262 ], [ 0, %for.cond259.loopexit ]
  %arrayidx265 = getelementptr inbounds double** %v, i64 %indvars.iv594
  %39 = load double** %arrayidx265, align 8, !tbaa !0
  %arrayidx266 = getelementptr inbounds double* %39, i64 %indvars.iv606
  %40 = load double* %arrayidx266, align 8, !tbaa !3
  %arrayidx270 = getelementptr inbounds double* %39, i64 %indvars.iv600
  %41 = load double* %arrayidx270, align 8, !tbaa !3
  %mul271 = fmul double %div142, %40
  %add272 = fadd double %41, %mul271
  %mul273 = fmul double %mul140, %add272
  %sub274 = fsub double %40, %mul273
  store double %sub274, double* %arrayidx266, align 8, !tbaa !3
  %mul279 = fmul double %div142, %41
  %sub280 = fsub double %40, %mul279
  %mul281 = fmul double %mul140, %sub280
  %add282 = fadd double %41, %mul281
  store double %add282, double* %arrayidx270, align 8, !tbaa !3
  %indvars.iv.next595 = add i64 %indvars.iv594, 1
  %lftr.wideiv596 = trunc i64 %indvars.iv.next595 to i32
  %exitcond597 = icmp eq i32 %lftr.wideiv596, %n
  br i1 %exitcond597, label %for.end289, label %for.body262

for.end289:                                       ; preds = %for.body262, %for.cond259.loopexit
  %42 = load i32* %nrot, align 4, !tbaa !4
  %inc290 = add nsw i32 %42, 1
  store i32 %inc290, i32* %nrot, align 4, !tbaa !4
  br label %for.inc293

for.inc293:                                       ; preds = %if.then88, %for.end289, %if.else93
  %43 = phi double* [ %17, %if.then88 ], [ %23, %for.end289 ], [ %17, %if.else93 ]
  %indvars.iv.next582 = add i32 %indvars.iv581, 1
  %indvars.iv.next588 = add i64 %indvars.iv587, 1
  %indvars.iv.next601 = add i64 %indvars.iv600, 1
  %lftr.wideiv604 = trunc i64 %indvars.iv.next601 to i32
  %exitcond605 = icmp eq i32 %lftr.wideiv604, %n
  br i1 %exitcond605, label %for.cond57.loopexit, label %for.body66

for.cond299.loopexit:                             ; preds = %for.cond57.loopexit, %if.end56
  br i1 %cmp559, label %for.body302, label %for.inc317

for.body302:                                      ; preds = %for.cond299.loopexit, %for.body302
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %for.body302 ], [ 0, %for.cond299.loopexit ]
  %arrayidx304 = getelementptr inbounds double* %1, i64 %indvars.iv610
  %44 = load double* %arrayidx304, align 8, !tbaa !3
  %arrayidx306 = getelementptr inbounds double* %0, i64 %indvars.iv610
  %45 = load double* %arrayidx306, align 8, !tbaa !3
  %add307 = fadd double %44, %45
  store double %add307, double* %arrayidx306, align 8, !tbaa !3
  %arrayidx311 = getelementptr inbounds double* %d, i64 %indvars.iv610
  store double %add307, double* %arrayidx311, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx304, align 8, !tbaa !3
  %indvars.iv.next611 = add i64 %indvars.iv610, 1
  %lftr.wideiv612 = trunc i64 %indvars.iv.next611 to i32
  %exitcond613 = icmp eq i32 %lftr.wideiv612, %n
  br i1 %exitcond613, label %for.inc317, label %for.body302

for.inc317:                                       ; preds = %for.body302, %for.cond299.loopexit
  %inc318 = add nsw i32 %i.0554, 1
  %cmp31 = icmp slt i32 %inc318, 51
  br i1 %cmp31, label %for.cond33.preheader, label %for.end319

for.end319:                                       ; preds = %for.inc317
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %for.end319, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @m_inv_gen(float** nocapture %m, i32 %n, float** nocapture %minv) #0 {
entry:
  %nrot = alloca i32, align 4
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134, i32 %n, i32 8) #5
  %0 = bitcast i8* %call to double**
  %cmp221 = icmp sgt i32 %n, 0
  br i1 %cmp221, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %call2264 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #5
  %1 = bitcast i8* %call2264 to double**
  br label %for.end11.thread

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.body ], [ 0, %entry ]
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 136, i32 %n, i32 8) #5
  %2 = bitcast i8* %call1 to double*
  %arrayidx = getelementptr inbounds double** %0, i64 %indvars.iv260
  store double* %2, double** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next261 = add i64 %indvars.iv260, 1
  %lftr.wideiv262 = trunc i64 %indvars.iv.next261 to i32
  %exitcond263 = icmp eq i32 %lftr.wideiv262, %n
  br i1 %exitcond263, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #5
  %3 = bitcast i8* %call2 to double**
  br i1 %cmp221, label %for.body5, label %for.end11.thread

for.body5:                                        ; preds = %for.end, %for.body5
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %for.body5 ], [ 0, %for.end ]
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139, i32 %n, i32 8) #5
  %4 = bitcast i8* %call6 to double*
  %arrayidx8 = getelementptr inbounds double** %3, i64 %indvars.iv256
  store double* %4, double** %arrayidx8, align 8, !tbaa !0
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %lftr.wideiv258 = trunc i64 %indvars.iv.next257 to i32
  %exitcond259 = icmp eq i32 %lftr.wideiv258, %n
  br i1 %exitcond259, label %for.end11, label %for.body5

for.end11.thread:                                 ; preds = %for.end.thread, %for.end
  %.ph = phi double** [ %1, %for.end.thread ], [ %3, %for.end ]
  %call2265.ph = phi i8* [ %call2264, %for.end.thread ], [ %call2, %for.end ]
  %call12266 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #5
  %5 = bitcast i8* %call12266 to double*
  br label %for.cond33.preheader

for.end11:                                        ; preds = %for.body5
  %call12 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #5
  %6 = bitcast i8* %call12 to double*
  br i1 %cmp221, label %for.body18.lr.ph, label %for.end44.thread

for.body18.lr.ph:                                 ; preds = %for.inc30, %for.end11
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.inc30 ], [ 0, %for.end11 ]
  %arrayidx21 = getelementptr inbounds float** %m, i64 %indvars.iv252
  %7 = load float** %arrayidx21, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds double** %0, i64 %indvars.iv252
  %8 = load double** %arrayidx25, align 8, !tbaa !0
  br label %for.body18

for.cond33.preheader:                             ; preds = %for.inc30, %for.end11.thread
  %9 = phi double* [ %5, %for.end11.thread ], [ %6, %for.inc30 ]
  %call12268 = phi i8* [ %call12266, %for.end11.thread ], [ %call12, %for.inc30 ]
  %call2265267 = phi i8* [ %call2265.ph, %for.end11.thread ], [ %call2, %for.inc30 ]
  %10 = phi double** [ %.ph, %for.end11.thread ], [ %3, %for.inc30 ]
  br i1 %cmp221, label %for.body36, label %for.end44.thread

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv248 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next249, %for.body18 ]
  %arrayidx22 = getelementptr inbounds float* %7, i64 %indvars.iv248
  %11 = load float* %arrayidx22, align 4, !tbaa !5
  %conv = fpext float %11 to double
  %arrayidx26 = getelementptr inbounds double* %8, i64 %indvars.iv248
  store double %conv, double* %arrayidx26, align 8, !tbaa !3
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %lftr.wideiv250 = trunc i64 %indvars.iv.next249 to i32
  %exitcond251 = icmp eq i32 %lftr.wideiv250, %n
  br i1 %exitcond251, label %for.inc30, label %for.body18

for.inc30:                                        ; preds = %for.body18
  %indvars.iv.next253 = add i64 %indvars.iv252, 1
  %lftr.wideiv254 = trunc i64 %indvars.iv.next253 to i32
  %exitcond255 = icmp eq i32 %lftr.wideiv254, %n
  br i1 %exitcond255, label %for.cond33.preheader, label %for.body18.lr.ph

for.body36:                                       ; preds = %for.cond33.preheader, %for.body36
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.body36 ], [ 0, %for.cond33.preheader ]
  %tol.0212 = phi double [ %add, %for.body36 ], [ 0.000000e+00, %for.cond33.preheader ]
  %arrayidx39 = getelementptr inbounds double** %0, i64 %indvars.iv244
  %12 = load double** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds double* %12, i64 %indvars.iv244
  %13 = load double* %arrayidx40, align 8, !tbaa !3
  %call41 = call double @fabs(double %13) #6
  %add = fadd double %tol.0212, %call41
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %n
  br i1 %exitcond247, label %for.end44, label %for.body36

for.end44.thread:                                 ; preds = %for.cond33.preheader, %for.end11
  %.ph271 = phi double** [ %10, %for.cond33.preheader ], [ %3, %for.end11 ]
  %call2265267270.ph = phi i8* [ %call2265267, %for.cond33.preheader ], [ %call2, %for.end11 ]
  %call12268269.ph = phi i8* [ %call12268, %for.cond33.preheader ], [ %call12, %for.end11 ]
  %.ph272 = phi double* [ %9, %for.cond33.preheader ], [ %6, %for.end11 ]
  call void @jacobi(double** %0, i32 %n, double* %.ph272, double** %.ph271, i32* %nrot) #7
  br label %for.cond66.preheader

for.end44:                                        ; preds = %for.body36
  %phitmp = fmul double %add, 1.000000e-06
  %conv45 = sitofp i32 %n to double
  %div = fdiv double %phitmp, %conv45
  call void @jacobi(double** %0, i32 %n, double* %9, double** %10, i32* %nrot) #7
  br i1 %cmp221, label %for.body49, label %for.end104.thread

for.cond66.preheader:                             ; preds = %for.inc63, %for.end44.thread
  %14 = phi double* [ %.ph272, %for.end44.thread ], [ %9, %for.inc63 ]
  %call12268269276 = phi i8* [ %call12268269.ph, %for.end44.thread ], [ %call12268, %for.inc63 ]
  %call2265267270275 = phi i8* [ %call2265267270.ph, %for.end44.thread ], [ %call2265267, %for.inc63 ]
  %15 = phi double** [ %.ph271, %for.end44.thread ], [ %10, %for.inc63 ]
  %nzero.0.lcssa = phi i32 [ 0, %for.end44.thread ], [ %nzero.1, %for.inc63 ]
  br i1 %cmp221, label %for.cond74.preheader.lr.ph, label %for.end104.thread

for.body49:                                       ; preds = %for.end44, %for.inc63
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %for.inc63 ], [ 0, %for.end44 ]
  %nzero.0208 = phi i32 [ %nzero.1, %for.inc63 ], [ 0, %for.end44 ]
  %arrayidx51 = getelementptr inbounds double* %9, i64 %indvars.iv240
  %16 = load double* %arrayidx51, align 8, !tbaa !3
  %call52 = call double @fabs(double %16) #6
  %cmp53 = fcmp olt double %call52, %div
  br i1 %cmp53, label %if.then, label %if.else

if.then:                                          ; preds = %for.body49
  store double 0.000000e+00, double* %arrayidx51, align 8, !tbaa !3
  %inc57 = add nsw i32 %nzero.0208, 1
  br label %for.inc63

if.else:                                          ; preds = %for.body49
  %div60 = fdiv double 1.000000e+00, %16
  store double %div60, double* %arrayidx51, align 8, !tbaa !3
  br label %for.inc63

for.inc63:                                        ; preds = %if.then, %if.else
  %nzero.1 = phi i32 [ %inc57, %if.then ], [ %nzero.0208, %if.else ]
  %indvars.iv.next241 = add i64 %indvars.iv240, 1
  %lftr.wideiv242 = trunc i64 %indvars.iv.next241 to i32
  %exitcond243 = icmp eq i32 %lftr.wideiv242, %n
  br i1 %exitcond243, label %for.cond66.preheader, label %for.body49

for.cond74.preheader.lr.ph:                       ; preds = %for.inc102, %for.cond66.preheader
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc102 ], [ 0, %for.cond66.preheader ]
  %arrayidx97 = getelementptr inbounds float** %minv, i64 %indvars.iv236
  %17 = load float** %arrayidx97, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds double** %15, i64 %indvars.iv236
  br label %for.body77.lr.ph

for.body77.lr.ph:                                 ; preds = %for.cond74.preheader.lr.ph, %for.end93
  %indvars.iv232 = phi i64 [ 0, %for.cond74.preheader.lr.ph ], [ %indvars.iv.next233, %for.end93 ]
  %18 = load double** %arrayidx82, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds double** %15, i64 %indvars.iv232
  %19 = load double** %arrayidx87, align 8, !tbaa !0
  br label %for.body77

for.body77:                                       ; preds = %for.body77, %for.body77.lr.ph
  %indvars.iv228 = phi i64 [ 0, %for.body77.lr.ph ], [ %indvars.iv.next229, %for.body77 ]
  %s.0201 = phi double [ 0.000000e+00, %for.body77.lr.ph ], [ %add90, %for.body77 ]
  %arrayidx79 = getelementptr inbounds double* %14, i64 %indvars.iv228
  %20 = load double* %arrayidx79, align 8, !tbaa !3
  %arrayidx83 = getelementptr inbounds double* %18, i64 %indvars.iv228
  %21 = load double* %arrayidx83, align 8, !tbaa !3
  %mul84 = fmul double %20, %21
  %arrayidx88 = getelementptr inbounds double* %19, i64 %indvars.iv228
  %22 = load double* %arrayidx88, align 8, !tbaa !3
  %mul89 = fmul double %mul84, %22
  %add90 = fadd double %s.0201, %mul89
  %indvars.iv.next229 = add i64 %indvars.iv228, 1
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32
  %exitcond231 = icmp eq i32 %lftr.wideiv230, %n
  br i1 %exitcond231, label %for.end93, label %for.body77

for.end93:                                        ; preds = %for.body77
  %phitmp223 = fptrunc double %add90 to float
  %arrayidx98 = getelementptr inbounds float* %17, i64 %indvars.iv232
  store float %phitmp223, float* %arrayidx98, align 4, !tbaa !5
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %n
  br i1 %exitcond235, label %for.inc102, label %for.body77.lr.ph

for.inc102:                                       ; preds = %for.end93
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32
  %exitcond239 = icmp eq i32 %lftr.wideiv238, %n
  br i1 %exitcond239, label %for.end104, label %for.cond74.preheader.lr.ph

for.end104.thread:                                ; preds = %for.cond66.preheader, %for.end44
  %nzero.0.lcssa279.ph = phi i32 [ %nzero.0.lcssa, %for.cond66.preheader ], [ 0, %for.end44 ]
  %call2265267270275278.ph = phi i8* [ %call2265267270275, %for.cond66.preheader ], [ %call2265267, %for.end44 ]
  %call12268269276277.ph = phi i8* [ %call12268269276, %for.cond66.preheader ], [ %call12268, %for.end44 ]
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %call12268269276277.ph) #5
  br label %for.end113

for.end104:                                       ; preds = %for.inc102
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %call12268269276) #5
  br i1 %cmp221, label %for.body108, label %for.end113.thread

for.end113.thread:                                ; preds = %for.end104
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %call2265267270275) #5
  br label %for.end122

for.body108:                                      ; preds = %for.end104, %for.body108
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.body108 ], [ 0, %for.end104 ]
  %arrayidx110 = getelementptr inbounds double** %15, i64 %indvars.iv224
  %23 = load double** %arrayidx110, align 8, !tbaa !0
  %24 = bitcast double* %23 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %24) #5
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %n
  br i1 %exitcond227, label %for.end113, label %for.body108

for.end113:                                       ; preds = %for.body108, %for.end104.thread
  %call2265267270275278282 = phi i8* [ %call2265267270275278.ph, %for.end104.thread ], [ %call2265267270275, %for.body108 ]
  %nzero.0.lcssa279281 = phi i32 [ %nzero.0.lcssa279.ph, %for.end104.thread ], [ %nzero.0.lcssa, %for.body108 ]
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %call2265267270275278282) #5
  br i1 %cmp221, label %for.body117, label %for.end122

for.body117:                                      ; preds = %for.end113, %for.body117
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body117 ], [ 0, %for.end113 ]
  %arrayidx119 = getelementptr inbounds double** %0, i64 %indvars.iv
  %25 = load double** %arrayidx119, align 8, !tbaa !0
  %26 = bitcast double* %25 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %26) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end122, label %for.body117

for.end122:                                       ; preds = %for.body117, %for.end113.thread, %for.end113
  %nzero.0.lcssa279281283 = phi i32 [ %nzero.0.lcssa, %for.end113.thread ], [ %nzero.0.lcssa279281, %for.end113 ], [ %nzero.0.lcssa279281, %for.body117 ]
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %call) #5
  ret i32 %nzero.0.lcssa279281283
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
