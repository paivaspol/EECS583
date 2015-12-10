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
  tail call void @llvm.dbg.value(metadata !{double** %a}, i64 0, metadata !14), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !15), !dbg !62
  tail call void @llvm.dbg.value(metadata !{double* %d}, i64 0, metadata !16), !dbg !62
  tail call void @llvm.dbg.value(metadata !{double** %v}, i64 0, metadata !17), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32* %nrot}, i64 0, metadata !18), !dbg !62
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %n, i32 8) #6, !dbg !63
  %0 = bitcast i8* %call to double*, !dbg !63
  tail call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !32), !dbg !63
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %n, i32 8) #6, !dbg !64
  %1 = bitcast i8* %call1 to double*, !dbg !64
  tail call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !33), !dbg !64
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !22), !dbg !65
  %cmp559 = icmp sgt i32 %n, 0, !dbg !65
  br i1 %cmp559, label %for.cond2.preheader.lr.ph, label %for.end29, !dbg !65

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %2 = add i32 %n, -1, !dbg !65
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 3, !dbg !65
  %5 = add i64 %4, 8, !dbg !65
  br label %for.end, !dbg !65

for.cond14.preheader:                             ; preds = %for.end
  br i1 %cmp559, label %for.body16, label %for.end29, !dbg !67

for.end:                                          ; preds = %for.end, %for.cond2.preheader.lr.ph
  %indvars.iv622 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next623, %for.end ]
  %arrayidx = getelementptr inbounds double** %v, i64 %indvars.iv622, !dbg !69
  %6 = load double** %arrayidx, align 8, !dbg !69, !tbaa !72
  %7 = bitcast double* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %5, i32 8, i1 false), !dbg !69
  %8 = load double** %arrayidx, align 8, !dbg !75, !tbaa !72
  %arrayidx10 = getelementptr inbounds double* %8, i64 %indvars.iv622, !dbg !75
  store double 1.000000e+00, double* %arrayidx10, align 8, !dbg !75, !tbaa !76
  %indvars.iv.next623 = add i64 %indvars.iv622, 1, !dbg !65
  %lftr.wideiv624 = trunc i64 %indvars.iv.next623 to i32, !dbg !65
  %exitcond625 = icmp eq i32 %lftr.wideiv624, %n, !dbg !65
  br i1 %exitcond625, label %for.cond14.preheader, label %for.end, !dbg !65

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %for.body16 ], [ 0, %for.cond14.preheader ]
  %arrayidx19 = getelementptr inbounds double** %a, i64 %indvars.iv614, !dbg !77
  %9 = load double** %arrayidx19, align 8, !dbg !77, !tbaa !72
  %arrayidx20 = getelementptr inbounds double* %9, i64 %indvars.iv614, !dbg !77
  %10 = load double* %arrayidx20, align 8, !dbg !77, !tbaa !76
  %arrayidx22 = getelementptr inbounds double* %d, i64 %indvars.iv614, !dbg !77
  store double %10, double* %arrayidx22, align 8, !dbg !77, !tbaa !76
  %arrayidx24 = getelementptr inbounds double* %0, i64 %indvars.iv614, !dbg !77
  store double %10, double* %arrayidx24, align 8, !dbg !77, !tbaa !76
  %arrayidx26 = getelementptr inbounds double* %1, i64 %indvars.iv614, !dbg !79
  store double 0.000000e+00, double* %arrayidx26, align 8, !dbg !79, !tbaa !76
  %indvars.iv.next615 = add i64 %indvars.iv614, 1, !dbg !67
  %lftr.wideiv616 = trunc i64 %indvars.iv.next615 to i32, !dbg !67
  %exitcond617 = icmp eq i32 %lftr.wideiv616, %n, !dbg !67
  br i1 %exitcond617, label %for.end29, label %for.body16, !dbg !67

for.end29:                                        ; preds = %entry, %for.body16, %for.cond14.preheader
  store i32 0, i32* %nrot, align 4, !dbg !80, !tbaa !81
  tail call void @llvm.dbg.value(metadata !82, i64 0, metadata !20), !dbg !83
  %sub = add nsw i32 %n, -1, !dbg !85
  %cmp34533 = icmp sgt i32 %sub, 0, !dbg !85
  %mul55 = mul nsw i32 %n, %n, !dbg !88
  %conv = sitofp i32 %mul55 to double, !dbg !88
  br label %for.cond33.preheader, !dbg !83

for.cond33.preheader:                             ; preds = %for.end29, %for.inc317
  %i.0554 = phi i32 [ 1, %for.end29 ], [ %inc318, %for.inc317 ]
  br i1 %cmp34533, label %for.body35, label %for.end50, !dbg !85

for.cond33.loopexit:                              ; preds = %for.body38, %for.body35
  %sm.1.lcssa = phi double [ %sm.0534, %for.body35 ], [ %add44, %for.body38 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !85
  %exitcond567 = icmp eq i32 %11, %sub, !dbg !85
  br i1 %exitcond567, label %for.end50, label %for.body35, !dbg !85

for.body35:                                       ; preds = %for.cond33.preheader, %for.cond33.loopexit
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.cond33.loopexit ], [ 0, %for.cond33.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond33.loopexit ], [ 1, %for.cond33.preheader ]
  %sm.0534 = phi double [ %sm.1.lcssa, %for.cond33.loopexit ], [ 0.000000e+00, %for.cond33.preheader ]
  %indvars.iv.next565 = add i64 %indvars.iv564, 1, !dbg !85
  %11 = trunc i64 %indvars.iv.next565 to i32, !dbg !89
  %cmp37530 = icmp slt i32 %11, %n, !dbg !89
  br i1 %cmp37530, label %for.body38.lr.ph, label %for.cond33.loopexit, !dbg !89

for.body38.lr.ph:                                 ; preds = %for.body35
  %arrayidx41 = getelementptr inbounds double** %a, i64 %indvars.iv564, !dbg !92
  %12 = load double** %arrayidx41, align 8, !dbg !92, !tbaa !72
  br label %for.body38, !dbg !89

for.body38:                                       ; preds = %for.body38, %for.body38.lr.ph
  %indvars.iv561 = phi i64 [ %indvars.iv, %for.body38.lr.ph ], [ %indvars.iv.next562, %for.body38 ], !dbg !85
  %sm.1531 = phi double [ %sm.0534, %for.body38.lr.ph ], [ %add44, %for.body38 ]
  %arrayidx42 = getelementptr inbounds double* %12, i64 %indvars.iv561, !dbg !92
  %13 = load double* %arrayidx42, align 8, !dbg !92, !tbaa !76
  %call43 = tail call double @fabs(double %13) #7, !dbg !92
  %add44 = fadd double %sm.1531, %call43, !dbg !92
  tail call void @llvm.dbg.value(metadata !{double %add44}, i64 0, metadata !27), !dbg !92
  %indvars.iv.next562 = add i64 %indvars.iv561, 1, !dbg !89
  %lftr.wideiv = trunc i64 %indvars.iv.next562 to i32, !dbg !89
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !89
  br i1 %exitcond, label %for.cond33.loopexit, label %for.body38, !dbg !89

for.end50:                                        ; preds = %for.cond33.loopexit, %for.cond33.preheader
  %sm.0.lcssa = phi double [ 0.000000e+00, %for.cond33.preheader ], [ %sm.1.lcssa, %for.cond33.loopexit ]
  %call51 = tail call double @fabs(double %sm.0.lcssa) #7, !dbg !93
  %cmp52 = fcmp olt double %call51, 1.200000e-38, !dbg !93
  br i1 %cmp52, label %if.then, label %if.end, !dbg !93

if.then:                                          ; preds = %for.end50
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %call1) #6, !dbg !94
  tail call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %call) #6, !dbg !96
  br label %return, !dbg !97

if.end:                                           ; preds = %for.end50
  %cmp53 = icmp slt i32 %i.0554, 4, !dbg !98
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !98

if.then54:                                        ; preds = %if.end
  %mul = fmul double %sm.0.lcssa, 2.000000e-01, !dbg !88
  %div = fdiv double %mul, %conv, !dbg !88
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !23), !dbg !88
  br label %if.end56, !dbg !88

if.end56:                                         ; preds = %if.end, %if.then54
  %tresh.0 = phi double [ %div, %if.then54 ], [ 0.000000e+00, %if.end ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !22), !dbg !99
  br i1 %cmp34533, label %for.body61.lr.ph, label %for.cond299.loopexit, !dbg !99

for.body61.lr.ph:                                 ; preds = %if.end56
  %cmp73 = icmp sgt i32 %i.0554, 4, !dbg !101
  br label %for.body61, !dbg !99

for.cond57.loopexit:                              ; preds = %for.inc293, %for.body61
  %indvars.iv.next599 = add i64 %indvars.iv598, 1, !dbg !99
  %indvars.iv.next580 = add i32 %indvars.iv579, 1, !dbg !99
  %indvars.iv.next586 = add i32 %indvars.iv585, 1, !dbg !99
  %exitcond609 = icmp eq i32 %14, %sub, !dbg !99
  br i1 %exitcond609, label %for.cond299.loopexit, label %for.body61, !dbg !99

for.body61:                                       ; preds = %for.cond57.loopexit, %for.body61.lr.ph
  %indvars.iv606 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next607, %for.cond57.loopexit ]
  %indvars.iv598 = phi i64 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next599, %for.cond57.loopexit ]
  %indvars.iv585 = phi i32 [ 2, %for.body61.lr.ph ], [ %indvars.iv.next586, %for.cond57.loopexit ]
  %indvars.iv579 = phi i32 [ 1, %for.body61.lr.ph ], [ %indvars.iv.next580, %for.cond57.loopexit ], !dbg !105
  %indvars.iv570 = phi i32 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next571, %for.cond57.loopexit ], !dbg !108
  %indvars.iv.next607 = add i64 %indvars.iv606, 1, !dbg !99
  %indvars.iv.next571 = add i32 %indvars.iv570, 1, !dbg !99
  tail call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next571}, i64 0, metadata !21), !dbg !110
  %14 = trunc i64 %indvars.iv.next607 to i32, !dbg !110
  %cmp64547 = icmp slt i32 %14, %n, !dbg !110
  br i1 %cmp64547, label %for.body66.lr.ph, label %for.cond57.loopexit, !dbg !110

for.body66.lr.ph:                                 ; preds = %for.body61
  %15 = sext i32 %indvars.iv585 to i64, !dbg !99
  %arrayidx69 = getelementptr inbounds double** %a, i64 %indvars.iv606, !dbg !111
  %arrayidx76 = getelementptr inbounds double* %d, i64 %indvars.iv606, !dbg !112
  %arrayidx149 = getelementptr inbounds double* %1, i64 %indvars.iv606, !dbg !113
  %16 = trunc i64 %indvars.iv606 to i32, !dbg !108
  %cmp165538 = icmp sgt i32 %16, 0, !dbg !108
  %.pre = load double** %arrayidx69, align 8, !dbg !111, !tbaa !72
  br label %for.body66, !dbg !110

for.body66:                                       ; preds = %for.inc293, %for.body66.lr.ph
  %17 = phi double* [ %.pre, %for.body66.lr.ph ], [ %43, %for.inc293 ], !dbg !111
  %indvars.iv600 = phi i64 [ %indvars.iv598, %for.body66.lr.ph ], [ %indvars.iv.next601, %for.inc293 ], !dbg !99
  %indvars.iv587 = phi i64 [ %15, %for.body66.lr.ph ], [ %indvars.iv.next588, %for.inc293 ], !dbg !99
  %indvars.iv581 = phi i32 [ %indvars.iv579, %for.body66.lr.ph ], [ %indvars.iv.next582, %for.inc293 ], !dbg !99
  %arrayidx70 = getelementptr inbounds double* %17, i64 %indvars.iv600, !dbg !111
  %18 = load double* %arrayidx70, align 8, !dbg !111, !tbaa !76
  %call71 = tail call double @fabs(double %18) #7, !dbg !111
  %mul72 = fmul double %call71, 1.000000e+02, !dbg !111
  tail call void @llvm.dbg.value(metadata !{double %mul72}, i64 0, metadata !30), !dbg !111
  br i1 %cmp73, label %land.lhs.true, label %if.else93, !dbg !101

land.lhs.true:                                    ; preds = %for.body66
  %19 = load double* %arrayidx76, align 8, !dbg !112, !tbaa !76
  %call77 = tail call double @fabs(double %19) #7, !dbg !112
  %mul78 = fmul double %call77, 1.200000e-07, !dbg !112
  %cmp79 = fcmp olt double %mul72, %mul78, !dbg !112
  br i1 %cmp79, label %land.lhs.true81, label %if.else93, !dbg !112

land.lhs.true81:                                  ; preds = %land.lhs.true
  %arrayidx83 = getelementptr inbounds double* %d, i64 %indvars.iv600, !dbg !114
  %20 = load double* %arrayidx83, align 8, !dbg !114, !tbaa !76
  %call84 = tail call double @fabs(double %20) #7, !dbg !114
  %mul85 = fmul double %call84, 1.200000e-07, !dbg !114
  %cmp86 = fcmp olt double %mul72, %mul85, !dbg !114
  br i1 %cmp86, label %if.then88, label %if.else93, !dbg !114

if.then88:                                        ; preds = %land.lhs.true81
  store double 0.000000e+00, double* %arrayidx70, align 8, !dbg !115, !tbaa !76
  br label %for.inc293, !dbg !115

if.else93:                                        ; preds = %land.lhs.true81, %land.lhs.true, %for.body66
  %cmp99 = fcmp ogt double %call71, %tresh.0, !dbg !116
  br i1 %cmp99, label %if.then101, label %for.inc293, !dbg !116

if.then101:                                       ; preds = %if.else93
  %arrayidx103 = getelementptr inbounds double* %d, i64 %indvars.iv600, !dbg !117
  %21 = load double* %arrayidx103, align 8, !dbg !117, !tbaa !76
  %22 = load double* %arrayidx76, align 8, !dbg !117, !tbaa !76
  %sub106 = fsub double %21, %22, !dbg !117
  tail call void @llvm.dbg.value(metadata !{double %sub106}, i64 0, metadata !29), !dbg !117
  %call107 = tail call double @fabs(double %sub106) #7, !dbg !118
  %mul108 = fmul double %call107, 1.200000e-07, !dbg !118
  %cmp109 = fcmp olt double %mul72, %mul108, !dbg !118
  br i1 %cmp109, label %if.then111, label %if.else117, !dbg !118

if.then111:                                       ; preds = %if.then101
  %div116 = fdiv double %18, %sub106, !dbg !119
  tail call void @llvm.dbg.value(metadata !{double %div116}, i64 0, metadata !26), !dbg !119
  br label %if.end135, !dbg !119

if.else117:                                       ; preds = %if.then101
  %mul118 = fmul double %sub106, 5.000000e-01, !dbg !120
  %div123 = fdiv double %mul118, %18, !dbg !120
  tail call void @llvm.dbg.value(metadata !{double %div123}, i64 0, metadata !24), !dbg !120
  %call124 = tail call double @fabs(double %div123) #7, !dbg !122
  %mul125 = fmul double %div123, %div123, !dbg !122
  %add126 = fadd double %mul125, 1.000000e+00, !dbg !122
  %call127 = tail call double @sqrt(double %add126) #6, !dbg !122
  %add128 = fadd double %call124, %call127, !dbg !122
  %div129 = fdiv double 1.000000e+00, %add128, !dbg !122
  tail call void @llvm.dbg.value(metadata !{double %div129}, i64 0, metadata !26), !dbg !122
  %cmp130 = fcmp olt double %div123, 0.000000e+00, !dbg !123
  br i1 %cmp130, label %if.then132, label %if.end135, !dbg !123

if.then132:                                       ; preds = %if.else117
  %sub133 = fsub double -0.000000e+00, %div129, !dbg !123
  tail call void @llvm.dbg.value(metadata !{double %sub133}, i64 0, metadata !26), !dbg !123
  br label %if.end135, !dbg !123

if.end135:                                        ; preds = %if.else117, %if.then132, %if.then111
  %t.0 = phi double [ %div116, %if.then111 ], [ %sub133, %if.then132 ], [ %div129, %if.else117 ]
  %mul136 = fmul double %t.0, %t.0, !dbg !124
  %add137 = fadd double %mul136, 1.000000e+00, !dbg !124
  %call138 = tail call double @sqrt(double %add137) #6, !dbg !124
  %div139 = fdiv double 1.000000e+00, %call138, !dbg !124
  tail call void @llvm.dbg.value(metadata !{double %div139}, i64 0, metadata !31), !dbg !124
  %mul140 = fmul double %t.0, %div139, !dbg !125
  tail call void @llvm.dbg.value(metadata !{double %mul140}, i64 0, metadata !28), !dbg !125
  %add141 = fadd double %div139, 1.000000e+00, !dbg !126
  %div142 = fdiv double %mul140, %add141, !dbg !126
  tail call void @llvm.dbg.value(metadata !{double %div142}, i64 0, metadata !25), !dbg !126
  %23 = load double** %arrayidx69, align 8, !dbg !127, !tbaa !72
  %arrayidx146 = getelementptr inbounds double* %23, i64 %indvars.iv600, !dbg !127
  %24 = load double* %arrayidx146, align 8, !dbg !127, !tbaa !76
  %mul147 = fmul double %t.0, %24, !dbg !127
  tail call void @llvm.dbg.value(metadata !{double %mul147}, i64 0, metadata !29), !dbg !127
  %25 = load double* %arrayidx149, align 8, !dbg !113, !tbaa !76
  %sub150 = fsub double %25, %mul147, !dbg !113
  store double %sub150, double* %arrayidx149, align 8, !dbg !113, !tbaa !76
  %arrayidx152 = getelementptr inbounds double* %1, i64 %indvars.iv600, !dbg !128
  %26 = load double* %arrayidx152, align 8, !dbg !128, !tbaa !76
  %add153 = fadd double %mul147, %26, !dbg !128
  store double %add153, double* %arrayidx152, align 8, !dbg !128, !tbaa !76
  %27 = load double* %arrayidx76, align 8, !dbg !129, !tbaa !76
  %sub156 = fsub double %27, %mul147, !dbg !129
  store double %sub156, double* %arrayidx76, align 8, !dbg !129, !tbaa !76
  %28 = load double* %arrayidx103, align 8, !dbg !130, !tbaa !76
  %add159 = fadd double %mul147, %28, !dbg !130
  store double %add159, double* %arrayidx103, align 8, !dbg !130, !tbaa !76
  store double 0.000000e+00, double* %arrayidx146, align 8, !dbg !131, !tbaa !76
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !108
  br i1 %cmp165538, label %for.body167, label %for.cond196.loopexit, !dbg !108

for.body167:                                      ; preds = %if.end135, %for.body167
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %for.body167 ], [ 0, %if.end135 ]
  %arrayidx170 = getelementptr inbounds double** %a, i64 %indvars.iv568, !dbg !132
  %29 = load double** %arrayidx170, align 8, !dbg !132, !tbaa !72
  %arrayidx171 = getelementptr inbounds double* %29, i64 %indvars.iv606, !dbg !132
  %30 = load double* %arrayidx171, align 8, !dbg !132, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %30}, i64 0, metadata !30), !dbg !132
  %arrayidx175 = getelementptr inbounds double* %29, i64 %indvars.iv600, !dbg !132
  %31 = load double* %arrayidx175, align 8, !dbg !132, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %31}, i64 0, metadata !29), !dbg !132
  %mul176 = fmul double %div142, %30, !dbg !132
  %add177 = fadd double %31, %mul176, !dbg !132
  %mul178 = fmul double %mul140, %add177, !dbg !132
  %sub179 = fsub double %30, %mul178, !dbg !132
  store double %sub179, double* %arrayidx171, align 8, !dbg !132, !tbaa !76
  %mul184 = fmul double %div142, %31, !dbg !132
  %sub185 = fsub double %30, %mul184, !dbg !132
  %mul186 = fmul double %mul140, %sub185, !dbg !132
  %add187 = fadd double %31, %mul186, !dbg !132
  store double %add187, double* %arrayidx175, align 8, !dbg !132, !tbaa !76
  %indvars.iv.next569 = add i64 %indvars.iv568, 1, !dbg !108
  %lftr.wideiv572 = trunc i64 %indvars.iv.next569 to i32, !dbg !108
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %indvars.iv570, !dbg !108
  br i1 %exitcond573, label %for.cond196.loopexit, label %for.body167, !dbg !108

for.cond196.loopexit:                             ; preds = %for.body167, %if.end135
  %32 = trunc i64 %indvars.iv600 to i32, !dbg !105
  %cmp197540 = icmp slt i32 %14, %32, !dbg !105
  br i1 %cmp197540, label %for.body199, label %for.cond228.loopexit, !dbg !105

for.body199:                                      ; preds = %for.cond196.loopexit, %for.body199
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.body199 ], [ %indvars.iv598, %for.cond196.loopexit ], !dbg !99
  %arrayidx203 = getelementptr inbounds double* %23, i64 %indvars.iv576, !dbg !134
  %33 = load double* %arrayidx203, align 8, !dbg !134, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %33}, i64 0, metadata !30), !dbg !134
  %arrayidx206 = getelementptr inbounds double** %a, i64 %indvars.iv576, !dbg !134
  %34 = load double** %arrayidx206, align 8, !dbg !134, !tbaa !72
  %arrayidx207 = getelementptr inbounds double* %34, i64 %indvars.iv600, !dbg !134
  %35 = load double* %arrayidx207, align 8, !dbg !134, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !29), !dbg !134
  %mul208 = fmul double %div142, %33, !dbg !134
  %add209 = fadd double %mul208, %35, !dbg !134
  %mul210 = fmul double %mul140, %add209, !dbg !134
  %sub211 = fsub double %33, %mul210, !dbg !134
  store double %sub211, double* %arrayidx203, align 8, !dbg !134, !tbaa !76
  %mul216 = fmul double %div142, %35, !dbg !134
  %sub217 = fsub double %33, %mul216, !dbg !134
  %mul218 = fmul double %mul140, %sub217, !dbg !134
  %add219 = fadd double %35, %mul218, !dbg !134
  store double %add219, double* %arrayidx207, align 8, !dbg !134, !tbaa !76
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !105
  %lftr.wideiv583 = trunc i64 %indvars.iv.next577 to i32, !dbg !105
  %exitcond584 = icmp eq i32 %lftr.wideiv583, %indvars.iv581, !dbg !105
  br i1 %exitcond584, label %for.cond228.loopexit, label %for.body199, !dbg !105

for.cond228.loopexit:                             ; preds = %for.body199, %for.cond196.loopexit
  %j.2542 = add nsw i32 %indvars.iv581, 1, !dbg !136
  %cmp229543 = icmp slt i32 %j.2542, %n, !dbg !136
  br i1 %cmp229543, label %for.body231.lr.ph, label %for.cond259.loopexit, !dbg !136

for.body231.lr.ph:                                ; preds = %for.cond228.loopexit
  %arrayidx238 = getelementptr inbounds double** %a, i64 %indvars.iv600, !dbg !138
  %36 = load double** %arrayidx238, align 8, !dbg !138, !tbaa !72
  br label %for.body231, !dbg !136

for.body231:                                      ; preds = %for.body231, %for.body231.lr.ph
  %indvars.iv589 = phi i64 [ %indvars.iv587, %for.body231.lr.ph ], [ %indvars.iv.next590, %for.body231 ], !dbg !110
  %arrayidx235 = getelementptr inbounds double* %23, i64 %indvars.iv589, !dbg !138
  %37 = load double* %arrayidx235, align 8, !dbg !138, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %37}, i64 0, metadata !30), !dbg !138
  %arrayidx239 = getelementptr inbounds double* %36, i64 %indvars.iv589, !dbg !138
  %38 = load double* %arrayidx239, align 8, !dbg !138, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %38}, i64 0, metadata !29), !dbg !138
  %mul240 = fmul double %div142, %37, !dbg !138
  %add241 = fadd double %mul240, %38, !dbg !138
  %mul242 = fmul double %mul140, %add241, !dbg !138
  %sub243 = fsub double %37, %mul242, !dbg !138
  store double %sub243, double* %arrayidx235, align 8, !dbg !138, !tbaa !76
  %mul248 = fmul double %div142, %38, !dbg !138
  %sub249 = fsub double %37, %mul248, !dbg !138
  %mul250 = fmul double %mul140, %sub249, !dbg !138
  %add251 = fadd double %38, %mul250, !dbg !138
  store double %add251, double* %arrayidx239, align 8, !dbg !138, !tbaa !76
  %indvars.iv.next590 = add i64 %indvars.iv589, 1, !dbg !136
  %lftr.wideiv592 = trunc i64 %indvars.iv.next590 to i32, !dbg !136
  %exitcond593 = icmp eq i32 %lftr.wideiv592, %n, !dbg !136
  br i1 %exitcond593, label %for.cond259.loopexit, label %for.body231, !dbg !136

for.cond259.loopexit:                             ; preds = %for.body231, %for.cond228.loopexit
  br i1 %cmp559, label %for.body262, label %for.end289, !dbg !140

for.body262:                                      ; preds = %for.cond259.loopexit, %for.body262
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %for.body262 ], [ 0, %for.cond259.loopexit ]
  %arrayidx265 = getelementptr inbounds double** %v, i64 %indvars.iv594, !dbg !142
  %39 = load double** %arrayidx265, align 8, !dbg !142, !tbaa !72
  %arrayidx266 = getelementptr inbounds double* %39, i64 %indvars.iv606, !dbg !142
  %40 = load double* %arrayidx266, align 8, !dbg !142, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !30), !dbg !142
  %arrayidx270 = getelementptr inbounds double* %39, i64 %indvars.iv600, !dbg !142
  %41 = load double* %arrayidx270, align 8, !dbg !142, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !29), !dbg !142
  %mul271 = fmul double %div142, %40, !dbg !142
  %add272 = fadd double %41, %mul271, !dbg !142
  %mul273 = fmul double %mul140, %add272, !dbg !142
  %sub274 = fsub double %40, %mul273, !dbg !142
  store double %sub274, double* %arrayidx266, align 8, !dbg !142, !tbaa !76
  %mul279 = fmul double %div142, %41, !dbg !142
  %sub280 = fsub double %40, %mul279, !dbg !142
  %mul281 = fmul double %mul140, %sub280, !dbg !142
  %add282 = fadd double %41, %mul281, !dbg !142
  store double %add282, double* %arrayidx270, align 8, !dbg !142, !tbaa !76
  %indvars.iv.next595 = add i64 %indvars.iv594, 1, !dbg !140
  %lftr.wideiv596 = trunc i64 %indvars.iv.next595 to i32, !dbg !140
  %exitcond597 = icmp eq i32 %lftr.wideiv596, %n, !dbg !140
  br i1 %exitcond597, label %for.end289, label %for.body262, !dbg !140

for.end289:                                       ; preds = %for.body262, %for.cond259.loopexit
  %42 = load i32* %nrot, align 4, !dbg !144, !tbaa !81
  %inc290 = add nsw i32 %42, 1, !dbg !144
  store i32 %inc290, i32* %nrot, align 4, !dbg !144, !tbaa !81
  br label %for.inc293, !dbg !145

for.inc293:                                       ; preds = %if.then88, %for.end289, %if.else93
  %43 = phi double* [ %17, %if.then88 ], [ %23, %for.end289 ], [ %17, %if.else93 ]
  %indvars.iv.next582 = add i32 %indvars.iv581, 1, !dbg !110
  tail call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next582}, i64 0, metadata !21), !dbg !110
  %indvars.iv.next588 = add i64 %indvars.iv587, 1, !dbg !110
  %indvars.iv.next601 = add i64 %indvars.iv600, 1, !dbg !110
  %lftr.wideiv604 = trunc i64 %indvars.iv.next601 to i32, !dbg !110
  %exitcond605 = icmp eq i32 %lftr.wideiv604, %n, !dbg !110
  br i1 %exitcond605, label %for.cond57.loopexit, label %for.body66, !dbg !110

for.cond299.loopexit:                             ; preds = %for.cond57.loopexit, %if.end56
  br i1 %cmp559, label %for.body302, label %for.inc317, !dbg !146

for.body302:                                      ; preds = %for.cond299.loopexit, %for.body302
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %for.body302 ], [ 0, %for.cond299.loopexit ]
  %arrayidx304 = getelementptr inbounds double* %1, i64 %indvars.iv610, !dbg !148
  %44 = load double* %arrayidx304, align 8, !dbg !148, !tbaa !76
  %arrayidx306 = getelementptr inbounds double* %0, i64 %indvars.iv610, !dbg !148
  %45 = load double* %arrayidx306, align 8, !dbg !148, !tbaa !76
  %add307 = fadd double %44, %45, !dbg !148
  store double %add307, double* %arrayidx306, align 8, !dbg !148, !tbaa !76
  %arrayidx311 = getelementptr inbounds double* %d, i64 %indvars.iv610, !dbg !150
  store double %add307, double* %arrayidx311, align 8, !dbg !150, !tbaa !76
  store double 0.000000e+00, double* %arrayidx304, align 8, !dbg !151, !tbaa !76
  %indvars.iv.next611 = add i64 %indvars.iv610, 1, !dbg !146
  %lftr.wideiv612 = trunc i64 %indvars.iv.next611 to i32, !dbg !146
  %exitcond613 = icmp eq i32 %lftr.wideiv612, %n, !dbg !146
  br i1 %exitcond613, label %for.inc317, label %for.body302, !dbg !146

for.inc317:                                       ; preds = %for.body302, %for.cond299.loopexit
  %inc318 = add nsw i32 %i.0554, 1, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i32 %inc318}, i64 0, metadata !20), !dbg !83
  %cmp31 = icmp slt i32 %inc318, 51, !dbg !83
  br i1 %cmp31, label %for.cond33.preheader, label %for.end319, !dbg !83

for.end319:                                       ; preds = %for.inc317
  tail call void @llvm.dbg.value(metadata !152, i64 0, metadata !153) #5, !dbg !155
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !156
  br label %return, !dbg !154

return:                                           ; preds = %for.end319, %if.then
  ret void, !dbg !154
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind optsize uwtable
define i32 @m_inv_gen(float** nocapture %m, i32 %n, float** nocapture %minv) #0 {
entry:
  %nrot = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{float** %m}, i64 0, metadata !42), !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !43), !dbg !157
  call void @llvm.dbg.value(metadata !{float** %minv}, i64 0, metadata !44), !dbg !157
  call void @llvm.dbg.declare(metadata !{i32* %nrot}, metadata !54), !dbg !158
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 134, i32 %n, i32 8) #6, !dbg !159
  %0 = bitcast i8* %call to double**, !dbg !159
  call void @llvm.dbg.value(metadata !{double** %0}, i64 0, metadata !45), !dbg !159
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !160
  %cmp221 = icmp sgt i32 %n, 0, !dbg !160
  br i1 %cmp221, label %for.body, label %for.end.thread, !dbg !160

for.end.thread:                                   ; preds = %entry
  %call2264 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #6, !dbg !162
  %1 = bitcast i8* %call2264 to double**, !dbg !162
  call void @llvm.dbg.value(metadata !{double** %15}, i64 0, metadata !46), !dbg !162
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !163
  br label %for.end11.thread, !dbg !163

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.body ], [ 0, %entry ]
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 136, i32 %n, i32 8) #6, !dbg !165
  %2 = bitcast i8* %call1 to double*, !dbg !165
  %arrayidx = getelementptr inbounds double** %0, i64 %indvars.iv260, !dbg !165
  store double* %2, double** %arrayidx, align 8, !dbg !165, !tbaa !72
  %indvars.iv.next261 = add i64 %indvars.iv260, 1, !dbg !160
  %lftr.wideiv262 = trunc i64 %indvars.iv.next261 to i32, !dbg !160
  %exitcond263 = icmp eq i32 %lftr.wideiv262, %n, !dbg !160
  br i1 %exitcond263, label %for.end, label %for.body, !dbg !160

for.end:                                          ; preds = %for.body
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 137, i32 %n, i32 8) #6, !dbg !162
  %3 = bitcast i8* %call2 to double**, !dbg !162
  call void @llvm.dbg.value(metadata !{double** %15}, i64 0, metadata !46), !dbg !162
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !163
  br i1 %cmp221, label %for.body5, label %for.end11.thread, !dbg !163

for.body5:                                        ; preds = %for.end, %for.body5
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %for.body5 ], [ 0, %for.end ]
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 139, i32 %n, i32 8) #6, !dbg !166
  %4 = bitcast i8* %call6 to double*, !dbg !166
  %arrayidx8 = getelementptr inbounds double** %3, i64 %indvars.iv256, !dbg !166
  store double* %4, double** %arrayidx8, align 8, !dbg !166, !tbaa !72
  %indvars.iv.next257 = add i64 %indvars.iv256, 1, !dbg !163
  %lftr.wideiv258 = trunc i64 %indvars.iv.next257 to i32, !dbg !163
  %exitcond259 = icmp eq i32 %lftr.wideiv258, %n, !dbg !163
  br i1 %exitcond259, label %for.end11, label %for.body5, !dbg !163

for.end11.thread:                                 ; preds = %for.end.thread, %for.end
  %.ph = phi double** [ %1, %for.end.thread ], [ %3, %for.end ]
  %call2265.ph = phi i8* [ %call2264, %for.end.thread ], [ %call2, %for.end ]
  %call12266 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #6, !dbg !167
  %5 = bitcast i8* %call12266 to double*, !dbg !167
  call void @llvm.dbg.value(metadata !{double* %14}, i64 0, metadata !47), !dbg !167
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !168
  br label %for.cond33.preheader, !dbg !168

for.end11:                                        ; preds = %for.body5
  %call12 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %n, i32 8) #6, !dbg !167
  %6 = bitcast i8* %call12 to double*, !dbg !167
  call void @llvm.dbg.value(metadata !{double* %14}, i64 0, metadata !47), !dbg !167
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !168
  br i1 %cmp221, label %for.body18.lr.ph, label %for.end44.thread, !dbg !168

for.body18.lr.ph:                                 ; preds = %for.inc30, %for.end11
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.inc30 ], [ 0, %for.end11 ]
  %arrayidx21 = getelementptr inbounds float** %m, i64 %indvars.iv252, !dbg !170
  %7 = load float** %arrayidx21, align 8, !dbg !170, !tbaa !72
  %arrayidx25 = getelementptr inbounds double** %0, i64 %indvars.iv252, !dbg !170
  %8 = load double** %arrayidx25, align 8, !dbg !170, !tbaa !72
  br label %for.body18, !dbg !172

for.cond33.preheader:                             ; preds = %for.inc30, %for.end11.thread
  %9 = phi double* [ %5, %for.end11.thread ], [ %6, %for.inc30 ]
  %call12268 = phi i8* [ %call12266, %for.end11.thread ], [ %call12, %for.inc30 ]
  %call2265267 = phi i8* [ %call2265.ph, %for.end11.thread ], [ %call2, %for.inc30 ]
  %10 = phi double** [ %.ph, %for.end11.thread ], [ %3, %for.inc30 ]
  br i1 %cmp221, label %for.body36, label %for.end44.thread, !dbg !173

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv248 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next249, %for.body18 ]
  %arrayidx22 = getelementptr inbounds float* %7, i64 %indvars.iv248, !dbg !170
  %11 = load float* %arrayidx22, align 4, !dbg !170, !tbaa !175
  %conv = fpext float %11 to double, !dbg !170
  %arrayidx26 = getelementptr inbounds double* %8, i64 %indvars.iv248, !dbg !170
  store double %conv, double* %arrayidx26, align 8, !dbg !170, !tbaa !76
  %indvars.iv.next249 = add i64 %indvars.iv248, 1, !dbg !172
  %lftr.wideiv250 = trunc i64 %indvars.iv.next249 to i32, !dbg !172
  %exitcond251 = icmp eq i32 %lftr.wideiv250, %n, !dbg !172
  br i1 %exitcond251, label %for.inc30, label %for.body18, !dbg !172

for.inc30:                                        ; preds = %for.body18
  %indvars.iv.next253 = add i64 %indvars.iv252, 1, !dbg !168
  %lftr.wideiv254 = trunc i64 %indvars.iv.next253 to i32, !dbg !168
  %exitcond255 = icmp eq i32 %lftr.wideiv254, %n, !dbg !168
  br i1 %exitcond255, label %for.cond33.preheader, label %for.body18.lr.ph, !dbg !168

for.body36:                                       ; preds = %for.cond33.preheader, %for.body36
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.body36 ], [ 0, %for.cond33.preheader ]
  %tol.0212 = phi double [ %add, %for.body36 ], [ 0.000000e+00, %for.cond33.preheader ]
  %arrayidx39 = getelementptr inbounds double** %0, i64 %indvars.iv244, !dbg !176
  %12 = load double** %arrayidx39, align 8, !dbg !176, !tbaa !72
  %arrayidx40 = getelementptr inbounds double* %12, i64 %indvars.iv244, !dbg !176
  %13 = load double* %arrayidx40, align 8, !dbg !176, !tbaa !76
  %call41 = call double @fabs(double %13) #7, !dbg !176
  %add = fadd double %tol.0212, %call41, !dbg !176
  call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !48), !dbg !176
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !173
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32, !dbg !173
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %n, !dbg !173
  br i1 %exitcond247, label %for.end44, label %for.body36, !dbg !173

for.end44.thread:                                 ; preds = %for.cond33.preheader, %for.end11
  %.ph271 = phi double** [ %10, %for.cond33.preheader ], [ %3, %for.end11 ]
  %call2265267270.ph = phi i8* [ %call2265267, %for.cond33.preheader ], [ %call2, %for.end11 ]
  %call12268269.ph = phi i8* [ %call12268, %for.cond33.preheader ], [ %call12, %for.end11 ]
  %.ph272 = phi double* [ %9, %for.cond33.preheader ], [ %6, %for.end11 ]
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !48), !dbg !177
  call void @jacobi(double** %0, i32 %n, double* %.ph272, double** %.ph271, i32* %nrot) #8, !dbg !178
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !179
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !180
  br label %for.cond66.preheader, !dbg !180

for.end44:                                        ; preds = %for.body36
  %phitmp = fmul double %add, 1.000000e-06, !dbg !173
  %conv45 = sitofp i32 %n to double, !dbg !177
  %div = fdiv double %phitmp, %conv45, !dbg !177
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !48), !dbg !177
  call void @jacobi(double** %0, i32 %n, double* %9, double** %10, i32* %nrot) #8, !dbg !178
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !179
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !180
  br i1 %cmp221, label %for.body49, label %for.end104.thread, !dbg !180

for.cond66.preheader:                             ; preds = %for.inc63, %for.end44.thread
  %14 = phi double* [ %.ph272, %for.end44.thread ], [ %9, %for.inc63 ]
  %call12268269276 = phi i8* [ %call12268269.ph, %for.end44.thread ], [ %call12268, %for.inc63 ]
  %call2265267270275 = phi i8* [ %call2265267270.ph, %for.end44.thread ], [ %call2265267, %for.inc63 ]
  %15 = phi double** [ %.ph271, %for.end44.thread ], [ %10, %for.inc63 ]
  %nzero.0.lcssa = phi i32 [ 0, %for.end44.thread ], [ %nzero.1, %for.inc63 ]
  br i1 %cmp221, label %for.cond74.preheader.lr.ph, label %for.end104.thread, !dbg !182

for.body49:                                       ; preds = %for.end44, %for.inc63
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %for.inc63 ], [ 0, %for.end44 ]
  %nzero.0208 = phi i32 [ %nzero.1, %for.inc63 ], [ 0, %for.end44 ]
  %arrayidx51 = getelementptr inbounds double* %9, i64 %indvars.iv240, !dbg !184
  %16 = load double* %arrayidx51, align 8, !dbg !184, !tbaa !76
  %call52 = call double @fabs(double %16) #7, !dbg !184
  %cmp53 = fcmp olt double %call52, %div, !dbg !184
  br i1 %cmp53, label %if.then, label %if.else, !dbg !184

if.then:                                          ; preds = %for.body49
  store double 0.000000e+00, double* %arrayidx51, align 8, !dbg !185, !tbaa !76
  %inc57 = add nsw i32 %nzero.0208, 1, !dbg !187
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !50), !dbg !187
  br label %for.inc63, !dbg !188

if.else:                                          ; preds = %for.body49
  %div60 = fdiv double 1.000000e+00, %16, !dbg !189
  store double %div60, double* %arrayidx51, align 8, !dbg !189, !tbaa !76
  br label %for.inc63

for.inc63:                                        ; preds = %if.then, %if.else
  %nzero.1 = phi i32 [ %inc57, %if.then ], [ %nzero.0208, %if.else ]
  %indvars.iv.next241 = add i64 %indvars.iv240, 1, !dbg !180
  %lftr.wideiv242 = trunc i64 %indvars.iv.next241 to i32, !dbg !180
  %exitcond243 = icmp eq i32 %lftr.wideiv242, %n, !dbg !180
  br i1 %exitcond243, label %for.cond66.preheader, label %for.body49, !dbg !180

for.cond74.preheader.lr.ph:                       ; preds = %for.inc102, %for.cond66.preheader
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc102 ], [ 0, %for.cond66.preheader ]
  %arrayidx97 = getelementptr inbounds float** %minv, i64 %indvars.iv236, !dbg !190
  %17 = load float** %arrayidx97, align 8, !dbg !190, !tbaa !72
  %arrayidx82 = getelementptr inbounds double** %15, i64 %indvars.iv236, !dbg !193
  br label %for.body77.lr.ph, !dbg !195

for.body77.lr.ph:                                 ; preds = %for.cond74.preheader.lr.ph, %for.end93
  %indvars.iv232 = phi i64 [ 0, %for.cond74.preheader.lr.ph ], [ %indvars.iv.next233, %for.end93 ]
  %18 = load double** %arrayidx82, align 8, !dbg !193, !tbaa !72
  %arrayidx87 = getelementptr inbounds double** %15, i64 %indvars.iv232, !dbg !193
  %19 = load double** %arrayidx87, align 8, !dbg !193, !tbaa !72
  br label %for.body77, !dbg !196

for.body77:                                       ; preds = %for.body77, %for.body77.lr.ph
  %indvars.iv228 = phi i64 [ 0, %for.body77.lr.ph ], [ %indvars.iv.next229, %for.body77 ]
  %s.0201 = phi double [ 0.000000e+00, %for.body77.lr.ph ], [ %add90, %for.body77 ]
  %arrayidx79 = getelementptr inbounds double* %14, i64 %indvars.iv228, !dbg !193
  %20 = load double* %arrayidx79, align 8, !dbg !193, !tbaa !76
  %arrayidx83 = getelementptr inbounds double* %18, i64 %indvars.iv228, !dbg !193
  %21 = load double* %arrayidx83, align 8, !dbg !193, !tbaa !76
  %mul84 = fmul double %20, %21, !dbg !193
  %arrayidx88 = getelementptr inbounds double* %19, i64 %indvars.iv228, !dbg !193
  %22 = load double* %arrayidx88, align 8, !dbg !193, !tbaa !76
  %mul89 = fmul double %mul84, %22, !dbg !193
  %add90 = fadd double %s.0201, %mul89, !dbg !193
  call void @llvm.dbg.value(metadata !{double %add90}, i64 0, metadata !49), !dbg !193
  %indvars.iv.next229 = add i64 %indvars.iv228, 1, !dbg !196
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32, !dbg !196
  %exitcond231 = icmp eq i32 %lftr.wideiv230, %n, !dbg !196
  br i1 %exitcond231, label %for.end93, label %for.body77, !dbg !196

for.end93:                                        ; preds = %for.body77
  %phitmp223 = fptrunc double %add90 to float, !dbg !196
  %arrayidx98 = getelementptr inbounds float* %17, i64 %indvars.iv232, !dbg !190
  store float %phitmp223, float* %arrayidx98, align 4, !dbg !190, !tbaa !175
  %indvars.iv.next233 = add i64 %indvars.iv232, 1, !dbg !195
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32, !dbg !195
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %n, !dbg !195
  br i1 %exitcond235, label %for.inc102, label %for.body77.lr.ph, !dbg !195

for.inc102:                                       ; preds = %for.end93
  %indvars.iv.next237 = add i64 %indvars.iv236, 1, !dbg !182
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32, !dbg !182
  %exitcond239 = icmp eq i32 %lftr.wideiv238, %n, !dbg !182
  br i1 %exitcond239, label %for.end104, label %for.cond74.preheader.lr.ph, !dbg !182

for.end104.thread:                                ; preds = %for.cond66.preheader, %for.end44
  %nzero.0.lcssa279.ph = phi i32 [ %nzero.0.lcssa, %for.cond66.preheader ], [ 0, %for.end44 ]
  %call2265267270275278.ph = phi i8* [ %call2265267270275, %for.cond66.preheader ], [ %call2265267, %for.end44 ]
  %call12268269276277.ph = phi i8* [ %call12268269276, %for.cond66.preheader ], [ %call12268, %for.end44 ]
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %call12268269276277.ph) #6, !dbg !197
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !198
  br label %for.end113, !dbg !198

for.end104:                                       ; preds = %for.inc102
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %call12268269276) #6, !dbg !197
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !198
  br i1 %cmp221, label %for.body108, label %for.end113.thread, !dbg !198

for.end113.thread:                                ; preds = %for.end104
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %call2265267270275) #6, !dbg !200
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !201
  br label %for.end122, !dbg !201

for.body108:                                      ; preds = %for.end104, %for.body108
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.body108 ], [ 0, %for.end104 ]
  %arrayidx110 = getelementptr inbounds double** %15, i64 %indvars.iv224, !dbg !203
  %23 = load double** %arrayidx110, align 8, !dbg !203, !tbaa !72
  %24 = bitcast double* %23 to i8*, !dbg !203
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %24) #6, !dbg !203
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !198
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32, !dbg !198
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %n, !dbg !198
  br i1 %exitcond227, label %for.end113, label %for.body108, !dbg !198

for.end113:                                       ; preds = %for.body108, %for.end104.thread
  %call2265267270275278282 = phi i8* [ %call2265267270275278.ph, %for.end104.thread ], [ %call2265267270275, %for.body108 ]
  %nzero.0.lcssa279281 = phi i32 [ %nzero.0.lcssa279.ph, %for.end104.thread ], [ %nzero.0.lcssa, %for.body108 ]
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %call2265267270275278282) #6, !dbg !200
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !201
  br i1 %cmp221, label %for.body117, label %for.end122, !dbg !201

for.body117:                                      ; preds = %for.end113, %for.body117
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body117 ], [ 0, %for.end113 ]
  %arrayidx119 = getelementptr inbounds double** %0, i64 %indvars.iv, !dbg !204
  %25 = load double** %arrayidx119, align 8, !dbg !204, !tbaa !72
  %26 = bitcast double* %25 to i8*, !dbg !204
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %26) #6, !dbg !204
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !201
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !201
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !201
  br i1 %exitcond, label %for.end122, label %for.body117, !dbg !201

for.end122:                                       ; preds = %for.body117, %for.end113.thread, %for.end113
  %nzero.0.lcssa279281283 = phi i32 [ %nzero.0.lcssa, %for.end113.thread ], [ %nzero.0.lcssa279281, %for.end113 ], [ %nzero.0.lcssa279281, %for.body117 ]
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %call) #6, !dbg !205
  ret i32 %nzero.0.lcssa279281283, !dbg !206
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !34, metadata !55}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"jacobi", metadata !"jacobi", metadata !"", i32 47, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double**, i32, double*, double**, i32*)* @jacobi, null, null, metadata !13, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [jacobi]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !9, metadata !8, metadata !12}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!10 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!14 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777263, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 47]
!15 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 33554479, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 47]
!16 = metadata !{i32 786689, metadata !4, metadata !"d", metadata !5, i32 50331695, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 47]
!17 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !5, i32 67108911, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 47]
!18 = metadata !{i32 786689, metadata !4, metadata !"nrot", metadata !5, i32 83886127, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrot] [line 47]
!19 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 49]
!20 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 49]
!21 = metadata !{i32 786688, metadata !4, metadata !"iq", metadata !5, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iq] [line 50]
!22 = metadata !{i32 786688, metadata !4, metadata !"ip", metadata !5, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 50]
!23 = metadata !{i32 786688, metadata !4, metadata !"tresh", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tresh] [line 51]
!24 = metadata !{i32 786688, metadata !4, metadata !"theta", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 51]
!25 = metadata !{i32 786688, metadata !4, metadata !"tau", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tau] [line 51]
!26 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 51]
!27 = metadata !{i32 786688, metadata !4, metadata !"sm", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sm] [line 51]
!28 = metadata !{i32 786688, metadata !4, metadata !"s", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 51]
!29 = metadata !{i32 786688, metadata !4, metadata !"h", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 51]
!30 = metadata !{i32 786688, metadata !4, metadata !"g", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 51]
!31 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 51, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 51]
!32 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 51, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 51]
!33 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 51, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 51]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"m_inv_gen", metadata !"m_inv_gen", metadata !"", i32 129, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float**, i32, float**)* @m_inv_gen, null, null, metadata !41, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [m_inv_gen]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !11, metadata !37, metadata !11, metadata !37}
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!40 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!42 = metadata !{i32 786689, metadata !34, metadata !"m", metadata !5, i32 16777345, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 129]
!43 = metadata !{i32 786689, metadata !34, metadata !"n", metadata !5, i32 33554561, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 129]
!44 = metadata !{i32 786689, metadata !34, metadata !"minv", metadata !5, i32 50331777, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [minv] [line 129]
!45 = metadata !{i32 786688, metadata !34, metadata !"md", metadata !5, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [md] [line 131]
!46 = metadata !{i32 786688, metadata !34, metadata !"v", metadata !5, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 131]
!47 = metadata !{i32 786688, metadata !34, metadata !"eig", metadata !5, i32 131, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eig] [line 131]
!48 = metadata !{i32 786688, metadata !34, metadata !"tol", metadata !5, i32 131, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 131]
!49 = metadata !{i32 786688, metadata !34, metadata !"s", metadata !5, i32 131, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 131]
!50 = metadata !{i32 786688, metadata !34, metadata !"nzero", metadata !5, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzero] [line 132]
!51 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !5, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 132]
!52 = metadata !{i32 786688, metadata !34, metadata !"j", metadata !5, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 132]
!53 = metadata !{i32 786688, metadata !34, metadata !"k", metadata !5, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 132]
!54 = metadata !{i32 786688, metadata !34, metadata !"nrot", metadata !5, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrot] [line 132]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"jacobierror", metadata !"jacobierror", metadata !"", i32 42, metadata !56, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !60, i32 43} ; [ DW_TAG_subprogram ] [line 42] [local] [def] [scope 43] [jacobierror]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !58}
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786689, metadata !55, metadata !"error_text", metadata !5, i32 16777258, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [error_text] [line 42]
!62 = metadata !{i32 47, i32 0, metadata !4, null}
!63 = metadata !{i32 53, i32 0, metadata !4, null}
!64 = metadata !{i32 54, i32 0, metadata !4, null}
!65 = metadata !{i32 55, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!67 = metadata !{i32 59, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!69 = metadata !{i32 56, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !71, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!71 = metadata !{i32 786443, metadata !1, metadata !66, i32 55, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!72 = metadata !{metadata !"any pointer", metadata !73}
!73 = metadata !{metadata !"omnipotent char", metadata !74}
!74 = metadata !{metadata !"Simple C/C++ TBAA"}
!75 = metadata !{i32 57, i32 0, metadata !71, null}
!76 = metadata !{metadata !"double", metadata !73}
!77 = metadata !{i32 60, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !68, i32 59, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!79 = metadata !{i32 61, i32 0, metadata !78, null}
!80 = metadata !{i32 63, i32 0, metadata !4, null}
!81 = metadata !{metadata !"int", metadata !73}
!82 = metadata !{i32 1}
!83 = metadata !{i32 64, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !4, i32 64, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!85 = metadata !{i32 66, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 66, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 64, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!88 = metadata !{i32 76, i32 0, metadata !87, null}
!89 = metadata !{i32 67, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !91, i32 67, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!91 = metadata !{i32 786443, metadata !1, metadata !86, i32 66, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!92 = metadata !{i32 68, i32 0, metadata !90, null}
!93 = metadata !{i32 70, i32 0, metadata !87, null}
!94 = metadata !{i32 71, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !87, i32 70, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!96 = metadata !{i32 72, i32 0, metadata !95, null}
!97 = metadata !{i32 73, i32 0, metadata !95, null}
!98 = metadata !{i32 75, i32 0, metadata !87, null}
!99 = metadata !{i32 79, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !87, i32 79, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!101 = metadata !{i32 82, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !103, i32 80, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!103 = metadata !{i32 786443, metadata !1, metadata !104, i32 80, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!104 = metadata !{i32 786443, metadata !1, metadata !100, i32 79, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!105 = metadata !{i32 107, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !107, i32 107, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!107 = metadata !{i32 786443, metadata !1, metadata !102, i32 86, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!108 = metadata !{i32 104, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !107, i32 104, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!110 = metadata !{i32 80, i32 0, metadata !103, null}
!111 = metadata !{i32 81, i32 0, metadata !102, null}
!112 = metadata !{i32 83, i32 0, metadata !102, null}
!113 = metadata !{i32 99, i32 0, metadata !107, null}
!114 = metadata !{i32 84, i32 0, metadata !102, null}
!115 = metadata !{i32 85, i32 0, metadata !102, null}
!116 = metadata !{i32 86, i32 0, metadata !102, null}
!117 = metadata !{i32 87, i32 0, metadata !107, null}
!118 = metadata !{i32 88, i32 0, metadata !107, null}
!119 = metadata !{i32 89, i32 0, metadata !107, null}
!120 = metadata !{i32 91, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !107, i32 90, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!122 = metadata !{i32 92, i32 0, metadata !121, null}
!123 = metadata !{i32 93, i32 0, metadata !121, null}
!124 = metadata !{i32 95, i32 0, metadata !107, null}
!125 = metadata !{i32 96, i32 0, metadata !107, null}
!126 = metadata !{i32 97, i32 0, metadata !107, null}
!127 = metadata !{i32 98, i32 0, metadata !107, null}
!128 = metadata !{i32 100, i32 0, metadata !107, null}
!129 = metadata !{i32 101, i32 0, metadata !107, null}
!130 = metadata !{i32 102, i32 0, metadata !107, null}
!131 = metadata !{i32 103, i32 0, metadata !107, null}
!132 = metadata !{i32 105, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !109, i32 104, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!134 = metadata !{i32 108, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !106, i32 107, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!136 = metadata !{i32 110, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !107, i32 110, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!138 = metadata !{i32 111, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !137, i32 110, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!140 = metadata !{i32 113, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !107, i32 113, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!142 = metadata !{i32 114, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !141, i32 113, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!144 = metadata !{i32 116, i32 0, metadata !107, null}
!145 = metadata !{i32 117, i32 0, metadata !107, null}
!146 = metadata !{i32 120, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !87, i32 120, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!148 = metadata !{i32 121, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !147, i32 120, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!150 = metadata !{i32 122, i32 0, metadata !149, null}
!151 = metadata !{i32 123, i32 0, metadata !149, null}
!152 = metadata !{null}
!153 = metadata !{i32 786689, metadata !55, metadata !"error_text", metadata !5, i32 16777258, metadata !58, i32 0, metadata !154} ; [ DW_TAG_arg_variable ] [error_text] [line 42]
!154 = metadata !{i32 126, i32 0, metadata !4, null}
!155 = metadata !{i32 42, i32 0, metadata !55, metadata !154}
!156 = metadata !{i32 44, i32 0, metadata !55, metadata !154}
!157 = metadata !{i32 129, i32 0, metadata !34, null}
!158 = metadata !{i32 132, i32 0, metadata !34, null}
!159 = metadata !{i32 134, i32 0, metadata !34, null}
!160 = metadata !{i32 135, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !34, i32 135, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!162 = metadata !{i32 137, i32 0, metadata !34, null}
!163 = metadata !{i32 138, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !34, i32 138, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!165 = metadata !{i32 136, i32 0, metadata !161, null}
!166 = metadata !{i32 139, i32 0, metadata !164, null}
!167 = metadata !{i32 140, i32 0, metadata !34, null}
!168 = metadata !{i32 141, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !34, i32 141, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!170 = metadata !{i32 143, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !169, i32 142, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!172 = metadata !{i32 142, i32 0, metadata !171, null}
!173 = metadata !{i32 146, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !34, i32 146, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!175 = metadata !{metadata !"float", metadata !73}
!176 = metadata !{i32 147, i32 0, metadata !174, null}
!177 = metadata !{i32 148, i32 0, metadata !34, null}
!178 = metadata !{i32 150, i32 0, metadata !34, null}
!179 = metadata !{i32 152, i32 0, metadata !34, null}
!180 = metadata !{i32 153, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !34, i32 153, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!182 = metadata !{i32 160, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !34, i32 160, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!184 = metadata !{i32 154, i32 0, metadata !181, null}
!185 = metadata !{i32 155, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !181, i32 154, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!187 = metadata !{i32 156, i32 0, metadata !186, null}
!188 = metadata !{i32 157, i32 0, metadata !186, null}
!189 = metadata !{i32 158, i32 0, metadata !181, null}
!190 = metadata !{i32 165, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !192, i32 161, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!192 = metadata !{i32 786443, metadata !1, metadata !183, i32 161, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!193 = metadata !{i32 164, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !191, i32 163, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!195 = metadata !{i32 161, i32 0, metadata !192, null}
!196 = metadata !{i32 163, i32 0, metadata !194, null}
!197 = metadata !{i32 168, i32 0, metadata !34, null}
!198 = metadata !{i32 169, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !34, i32 169, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!200 = metadata !{i32 171, i32 0, metadata !34, null}
!201 = metadata !{i32 172, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !34, i32 172, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nrjac.c]
!203 = metadata !{i32 170, i32 0, metadata !199, null}
!204 = metadata !{i32 173, i32 0, metadata !202, null}
!205 = metadata !{i32 174, i32 0, metadata !34, null}
!206 = metadata !{i32 176, i32 0, metadata !34, null}
