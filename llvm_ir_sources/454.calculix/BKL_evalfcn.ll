; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in BKL_evalfcn(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BKL_evalGain(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @BKL_evalfcn(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2
  %2 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, %2
  %.39 = select i1 %cmp3, i32 %2, i32 %1
  %cmp14 = icmp eq i32 %.39, 0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4
  %3 = load i32* %totweight, align 4, !tbaa !3
  %conv = sitofp i32 %3 to float
  %mul = fmul float %conv, %conv
  br label %if.end28

if.else18:                                        ; preds = %if.end
  %. = select i1 %cmp3, i32 %1, i32 %2
  %arrayidx20 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0
  %4 = load i32* %arrayidx20, align 4, !tbaa !3
  %conv21 = sitofp i32 %4 to double
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13
  %5 = load float* %alpha, align 4, !tbaa !4
  %conv22 = sitofp i32 %. to float
  %mul23 = fmul float %conv22, %5
  %conv24 = sitofp i32 %.39 to float
  %div = fdiv float %mul23, %conv24
  %conv25 = fpext float %div to double
  %add = fadd double %conv25, 1.000000e+00
  %mul26 = fmul double %conv21, %add
  %conv27 = fptrunc double %mul26 to float
  br label %if.end28

if.end28:                                         ; preds = %if.else18, %if.then15
  %cost.0 = phi float [ %mul, %if.then15 ], [ %conv27, %if.else18 ]
  ret float %cost.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define float @BKL_eval(%struct._BKL* %bkl, i32 %Sweight, i32 %Bweight, i32 %Wweight) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %Bweight, %Wweight
  %Wweight.Bweight = select i1 %cmp1, i32 %Wweight, i32 %Bweight
  %cmp4 = icmp eq i32 %Wweight.Bweight, 0
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4
  %1 = load i32* %totweight, align 4, !tbaa !3
  %conv = sitofp i32 %1 to float
  %mul = fmul float %conv, %conv
  br label %if.end16

if.else8:                                         ; preds = %if.end
  %Bweight.Wweight = select i1 %cmp1, i32 %Bweight, i32 %Wweight
  %conv9 = sitofp i32 %Sweight to double
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13
  %2 = load float* %alpha, align 4, !tbaa !4
  %conv10 = sitofp i32 %Bweight.Wweight to float
  %mul11 = fmul float %conv10, %2
  %conv12 = sitofp i32 %Wweight.Bweight to float
  %div = fdiv float %mul11, %conv12
  %conv13 = fpext float %div to double
  %add = fadd double %conv13, 1.000000e+00
  %mul14 = fmul double %conv9, %add
  %conv15 = fptrunc double %mul14 to float
  br label %if.end16

if.end16:                                         ; preds = %if.else8, %if.then5
  %cost.0 = phi float [ %mul, %if.then5 ], [ %conv15, %if.else8 ]
  ret float %cost.0
}

; Function Attrs: nounwind optsize uwtable
define void @BKL_evalgain(%struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %stats = alloca [3 x i32], align 4
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp slt i32 %dom, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %0 = load i32* %ndom, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %dom
  %cmp5 = icmp eq i32* %pdeltaS, null
  %or.cond110 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32* %pdeltaB, null
  %or.cond111 = or i1 %or.cond110, %cmp7
  %cmp9 = icmp eq i32* %pdeltaW, null
  %or.cond112 = or i1 %or.cond111, %cmp9
  br i1 %or.cond112, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %colors10 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %2 = load i32** %colors10, align 8, !tbaa !0
  %regwghts11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  %3 = load i32** %regwghts11, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 2
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 1
  store i32 0, i32* %arrayidx12, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 0
  store i32 0, i32* %arrayidx13, align 4, !tbaa !3
  %idxprom = sext i32 %dom to i64
  %arrayidx14 = getelementptr inbounds i32* %2, i64 %idxprom
  %4 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %4, 1
  %arrayidx18 = getelementptr inbounds i32* %3, i64 %idxprom
  %5 = load i32* %arrayidx18, align 4, !tbaa !3
  %sub = sub nsw i32 0, %5
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  store i32 %sub, i32* %arrayidx12, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx, align 4, !tbaa !3
  br label %if.end35

if.else:                                          ; preds = %if.end
  store i32 %sub, i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx12, align 4, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then16
  %6 = phi i32 [ %sub, %if.else ], [ %5, %if.then16 ]
  %7 = phi i32 [ %5, %if.else ], [ %sub, %if.then16 ]
  %storemerge = phi i32 [ 1, %if.else ], [ 2, %if.then16 ]
  store i32 %storemerge, i32* %arrayidx14, align 4, !tbaa !3
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %8 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %graph = getelementptr inbounds %struct._BPG* %8, i64 0, i32 2
  %9 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %9, i32 %dom, i32* %size, i32** %adj) #4
  %10 = load i32* %size, align 4, !tbaa !3
  %cmp36113 = icmp sgt i32 %10, 0
  br i1 %cmp36113, label %for.body, label %for.end

for.body:                                         ; preds = %if.end35, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end35 ]
  %11 = load i32** %adj, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx38, align 4, !tbaa !3
  %idxprom39 = sext i32 %12 to i64
  %arrayidx40 = getelementptr inbounds i32* %2, i64 %idxprom39
  %13 = load i32* %arrayidx40, align 4, !tbaa !3
  %call41 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %12) #4
  %cmp42 = icmp eq i32 %13, %call41
  br i1 %cmp42, label %for.inc, label %if.then43

if.then43:                                        ; preds = %for.body
  %arrayidx45 = getelementptr inbounds i32* %3, i64 %idxprom39
  %14 = load i32* %arrayidx45, align 4, !tbaa !3
  %idxprom46 = sext i32 %13 to i64
  %arrayidx47 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %idxprom46
  %15 = load i32* %arrayidx47, align 4, !tbaa !3
  %sub48 = sub nsw i32 %15, %14
  store i32 %sub48, i32* %arrayidx47, align 4, !tbaa !3
  %idxprom51 = sext i32 %call41 to i64
  %arrayidx52 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %idxprom51
  %16 = load i32* %arrayidx52, align 4, !tbaa !3
  %add53 = add nsw i32 %16, %14
  store i32 %add53, i32* %arrayidx52, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then43
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %size, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp36 = icmp slt i32 %18, %17
  br i1 %cmp36, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %.pre = load i32* %arrayidx13, align 4, !tbaa !3
  %.pre115 = load i32* %arrayidx12, align 4, !tbaa !3
  %.pre116 = load i32* %arrayidx, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end35
  %19 = phi i32 [ %.pre116, %for.cond.for.end_crit_edge ], [ %6, %if.end35 ]
  %20 = phi i32 [ %.pre115, %for.cond.for.end_crit_edge ], [ %7, %if.end35 ]
  %21 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %if.end35 ]
  store i32 %21, i32* %pdeltaS, align 4, !tbaa !3
  store i32 %20, i32* %pdeltaB, align 4, !tbaa !3
  store i32 %19, i32* %pdeltaW, align 4, !tbaa !3
  %22 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp60 = icmp eq i32 %22, 1
  %. = select i1 %cmp60, i32 2, i32 1
  store i32 %., i32* %arrayidx14, align 4, !tbaa !3
  %ngaineval = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 9
  %23 = load i32* %ngaineval, align 4, !tbaa !3
  %inc68 = add nsw i32 %23, 1
  store i32 %inc68, i32* %ngaineval, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @BKL_segColor(%struct._BKL*, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
