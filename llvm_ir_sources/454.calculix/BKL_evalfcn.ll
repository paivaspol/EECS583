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
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !78), !dbg !111
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !112
  br i1 %cmp, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !113, !tbaa !115
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !113
  tail call void @exit(i32 -1) #6, !dbg !118
  unreachable, !dbg !118

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !119
  %1 = load i32* %arrayidx, align 4, !dbg !119, !tbaa !120
  %arrayidx2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !119
  %2 = load i32* %arrayidx2, align 4, !dbg !119, !tbaa !120
  %cmp3 = icmp sgt i32 %1, %2, !dbg !119
  %.39 = select i1 %cmp3, i32 %2, i32 %1
  %cmp14 = icmp eq i32 %.39, 0, !dbg !121
  br i1 %cmp14, label %if.then15, label %if.else18, !dbg !121

if.then15:                                        ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !122
  %3 = load i32* %totweight, align 4, !dbg !122, !tbaa !120
  %conv = sitofp i32 %3 to float, !dbg !122
  %mul = fmul float %conv, %conv, !dbg !122
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !79), !dbg !122
  br label %if.end28, !dbg !124

if.else18:                                        ; preds = %if.end
  %. = select i1 %cmp3, i32 %1, i32 %2
  %arrayidx20 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !125
  %4 = load i32* %arrayidx20, align 4, !dbg !125, !tbaa !120
  %conv21 = sitofp i32 %4 to double, !dbg !125
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !125
  %5 = load float* %alpha, align 4, !dbg !125, !tbaa !127
  %conv22 = sitofp i32 %. to float, !dbg !125
  %mul23 = fmul float %conv22, %5, !dbg !125
  %conv24 = sitofp i32 %.39 to float, !dbg !125
  %div = fdiv float %mul23, %conv24, !dbg !125
  %conv25 = fpext float %div to double, !dbg !125
  %add = fadd double %conv25, 1.000000e+00, !dbg !125
  %mul26 = fmul double %conv21, %add, !dbg !125
  %conv27 = fptrunc double %mul26 to float, !dbg !125
  tail call void @llvm.dbg.value(metadata !{float %conv27}, i64 0, metadata !79), !dbg !125
  br label %if.end28

if.end28:                                         ; preds = %if.else18, %if.then15
  %cost.0 = phi float [ %mul, %if.then15 ], [ %conv27, %if.else18 ]
  ret float %cost.0, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define float @BKL_eval(%struct._BKL* %bkl, i32 %Sweight, i32 %Bweight, i32 %Wweight) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !86), !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %Sweight}, i64 0, metadata !87), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %Bweight}, i64 0, metadata !88), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32 %Wweight}, i64 0, metadata !89), !dbg !132
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !133
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !134, !tbaa !115
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !134
  tail call void @exit(i32 -1) #6, !dbg !136
  unreachable, !dbg !136

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %Bweight, %Wweight, !dbg !137
  %Wweight.Bweight = select i1 %cmp1, i32 %Wweight, i32 %Bweight
  %cmp4 = icmp eq i32 %Wweight.Bweight, 0, !dbg !138
  br i1 %cmp4, label %if.then5, label %if.else8, !dbg !138

if.then5:                                         ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !139
  %1 = load i32* %totweight, align 4, !dbg !139, !tbaa !120
  %conv = sitofp i32 %1 to float, !dbg !139
  %mul = fmul float %conv, %conv, !dbg !139
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !90), !dbg !139
  br label %if.end16, !dbg !141

if.else8:                                         ; preds = %if.end
  %Bweight.Wweight = select i1 %cmp1, i32 %Bweight, i32 %Wweight
  %conv9 = sitofp i32 %Sweight to double, !dbg !142
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !142
  %2 = load float* %alpha, align 4, !dbg !142, !tbaa !127
  %conv10 = sitofp i32 %Bweight.Wweight to float, !dbg !142
  %mul11 = fmul float %conv10, %2, !dbg !142
  %conv12 = sitofp i32 %Wweight.Bweight to float, !dbg !142
  %div = fdiv float %mul11, %conv12, !dbg !142
  %conv13 = fpext float %div to double, !dbg !142
  %add = fadd double %conv13, 1.000000e+00, !dbg !142
  %mul14 = fmul double %conv9, %add, !dbg !142
  %conv15 = fptrunc double %mul14 to float, !dbg !142
  tail call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !90), !dbg !142
  br label %if.end16

if.end16:                                         ; preds = %if.else8, %if.then5
  %cost.0 = phi float [ %mul, %if.then5 ], [ %conv15, %if.else8 ]
  ret float %cost.0, !dbg !144
}

; Function Attrs: nounwind optsize uwtable
define void @BKL_evalgain(%struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %stats = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !97), !dbg !145
  call void @llvm.dbg.value(metadata !{i32 %dom}, i64 0, metadata !98), !dbg !146
  call void @llvm.dbg.value(metadata !{i32* %pdeltaS}, i64 0, metadata !99), !dbg !147
  call void @llvm.dbg.value(metadata !{i32* %pdeltaB}, i64 0, metadata !100), !dbg !148
  call void @llvm.dbg.value(metadata !{i32* %pdeltaW}, i64 0, metadata !101), !dbg !149
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !106), !dbg !150
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !107), !dbg !151
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %stats}, metadata !110), !dbg !152
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !153
  %cmp1 = icmp slt i32 %dom, 0, !dbg !153
  %or.cond = or i1 %cmp, %cmp1, !dbg !153
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !153

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !153
  %0 = load i32* %ndom, align 4, !dbg !153, !tbaa !120
  %cmp3 = icmp sle i32 %0, %dom, !dbg !153
  %cmp5 = icmp eq i32* %pdeltaS, null, !dbg !153
  %or.cond110 = or i1 %cmp3, %cmp5, !dbg !153
  %cmp7 = icmp eq i32* %pdeltaB, null, !dbg !153
  %or.cond111 = or i1 %or.cond110, %cmp7, !dbg !153
  %cmp9 = icmp eq i32* %pdeltaW, null, !dbg !153
  %or.cond112 = or i1 %or.cond111, %cmp9, !dbg !153
  br i1 %or.cond112, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !115
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #5, !dbg !154
  call void @exit(i32 -1) #6, !dbg !156
  unreachable, !dbg !156

if.end:                                           ; preds = %lor.lhs.false2
  %colors10 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !157
  %2 = load i32** %colors10, align 8, !dbg !157, !tbaa !115
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !108), !dbg !157
  %regwghts11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !158
  %3 = load i32** %regwghts11, align 8, !dbg !158, !tbaa !115
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !109), !dbg !158
  %arrayidx = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 2, !dbg !159
  store i32 0, i32* %arrayidx, align 4, !dbg !159, !tbaa !120
  %arrayidx12 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 1, !dbg !159
  store i32 0, i32* %arrayidx12, align 4, !dbg !159, !tbaa !120
  %arrayidx13 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 0, !dbg !159
  store i32 0, i32* %arrayidx13, align 4, !dbg !159, !tbaa !120
  %idxprom = sext i32 %dom to i64, !dbg !160
  %arrayidx14 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !160
  %4 = load i32* %arrayidx14, align 4, !dbg !160, !tbaa !120
  %cmp15 = icmp eq i32 %4, 1, !dbg !160
  %arrayidx18 = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !161
  %5 = load i32* %arrayidx18, align 4, !dbg !161, !tbaa !120
  %sub = sub nsw i32 0, %5, !dbg !161
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !160

if.then16:                                        ; preds = %if.end
  store i32 %sub, i32* %arrayidx12, align 4, !dbg !161, !tbaa !120
  store i32 %5, i32* %arrayidx, align 4, !dbg !163, !tbaa !120
  br label %if.end35, !dbg !164

if.else:                                          ; preds = %if.end
  store i32 %sub, i32* %arrayidx, align 4, !dbg !165, !tbaa !120
  store i32 %5, i32* %arrayidx12, align 4, !dbg !167, !tbaa !120
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then16
  %6 = phi i32 [ %sub, %if.else ], [ %5, %if.then16 ]
  %7 = phi i32 [ %5, %if.else ], [ %sub, %if.then16 ]
  %storemerge = phi i32 [ 1, %if.else ], [ 2, %if.then16 ]
  store i32 %storemerge, i32* %arrayidx14, align 4, !dbg !168, !tbaa !120
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !169
  %8 = load %struct._BPG** %bpg, align 8, !dbg !169, !tbaa !115
  %graph = getelementptr inbounds %struct._BPG* %8, i64 0, i32 2, !dbg !169
  %9 = load %struct._Graph** %graph, align 8, !dbg !169, !tbaa !115
  call void @Graph_adjAndSize(%struct._Graph* %9, i32 %dom, i32* %size, i32** %adj) #5, !dbg !169
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !170
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !106), !dbg !170
  %10 = load i32* %size, align 4, !dbg !170, !tbaa !120
  %cmp36113 = icmp sgt i32 %10, 0, !dbg !170
  br i1 %cmp36113, label %for.body, label %for.end, !dbg !170

for.body:                                         ; preds = %if.end35, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end35 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !107), !dbg !172
  %11 = load i32** %adj, align 8, !dbg !172, !tbaa !115
  %arrayidx38 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !172
  %12 = load i32* %arrayidx38, align 4, !dbg !172, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !105), !dbg !172
  %idxprom39 = sext i32 %12 to i64, !dbg !174
  %arrayidx40 = getelementptr inbounds i32* %2, i64 %idxprom39, !dbg !174
  %13 = load i32* %arrayidx40, align 4, !dbg !174, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !104), !dbg !174
  %call41 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %12) #5, !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %call41}, i64 0, metadata !103), !dbg !175
  %cmp42 = icmp eq i32 %13, %call41, !dbg !176
  br i1 %cmp42, label %for.inc, label %if.then43, !dbg !176

if.then43:                                        ; preds = %for.body
  %arrayidx45 = getelementptr inbounds i32* %3, i64 %idxprom39, !dbg !177
  %14 = load i32* %arrayidx45, align 4, !dbg !177, !tbaa !120
  %idxprom46 = sext i32 %13 to i64, !dbg !177
  %arrayidx47 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %idxprom46, !dbg !177
  %15 = load i32* %arrayidx47, align 4, !dbg !177, !tbaa !120
  %sub48 = sub nsw i32 %15, %14, !dbg !177
  store i32 %sub48, i32* %arrayidx47, align 4, !dbg !177, !tbaa !120
  %idxprom51 = sext i32 %call41 to i64, !dbg !179
  %arrayidx52 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %idxprom51, !dbg !179
  %16 = load i32* %arrayidx52, align 4, !dbg !179, !tbaa !120
  %add53 = add nsw i32 %16, %14, !dbg !179
  store i32 %add53, i32* %arrayidx52, align 4, !dbg !179, !tbaa !120
  br label %for.inc, !dbg !180

for.inc:                                          ; preds = %for.body, %if.then43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !170
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !106), !dbg !170
  %17 = load i32* %size, align 4, !dbg !170, !tbaa !120
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !170
  %cmp36 = icmp slt i32 %18, %17, !dbg !170
  br i1 %cmp36, label %for.body, label %for.cond.for.end_crit_edge, !dbg !170

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %.pre = load i32* %arrayidx13, align 4, !dbg !181, !tbaa !120
  %.pre115 = load i32* %arrayidx12, align 4, !dbg !182, !tbaa !120
  %.pre116 = load i32* %arrayidx, align 4, !dbg !183, !tbaa !120
  br label %for.end, !dbg !170

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end35
  %19 = phi i32 [ %.pre116, %for.cond.for.end_crit_edge ], [ %6, %if.end35 ]
  %20 = phi i32 [ %.pre115, %for.cond.for.end_crit_edge ], [ %7, %if.end35 ]
  %21 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %if.end35 ]
  store i32 %21, i32* %pdeltaS, align 4, !dbg !181, !tbaa !120
  store i32 %20, i32* %pdeltaB, align 4, !dbg !182, !tbaa !120
  store i32 %19, i32* %pdeltaW, align 4, !dbg !183, !tbaa !120
  %22 = load i32* %arrayidx14, align 4, !dbg !184, !tbaa !120
  %cmp60 = icmp eq i32 %22, 1, !dbg !184
  %. = select i1 %cmp60, i32 2, i32 1, !dbg !185
  store i32 %., i32* %arrayidx14, align 4, !dbg !187, !tbaa !120
  %ngaineval = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 9, !dbg !188
  %23 = load i32* %ngaineval, align 4, !dbg !188, !tbaa !120
  %inc68 = add nsw i32 %23, 1, !dbg !188
  store i32 %inc68, i32* %ngaineval, align 4, !dbg !188, !tbaa !120
  ret void, !dbg !189
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @BKL_segColor(%struct._BKL*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !82, metadata !93}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_evalfcn", metadata !"BKL_evalfcn", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*)* @BKL_evalfcn, null, null, metadata !77, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [BKL_evalfcn]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BKL]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"BKL", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [BKL] [line 45, size 0, align 0, offset 0] [from _BKL]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_BKL", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BKL] [line 46, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !75, metadata !76}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bpg", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [bpg] [line 47, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !59, metadata !60}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!37 = metadata !{i32 786454, metadata !27, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47, metadata !49, metadata !50}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!44 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!45 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!50 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !51} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!52 = metadata !{i32 786454, metadata !39, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!53 = metadata !{i32 786451, metadata !39, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58}
!55 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!56 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!57 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!58 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!61 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ndom", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [ndom] [line 48, size 32, align 32, offset 64] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nseg", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nseg] [line 49, size 32, align 32, offset 96] [from int]
!63 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nreg", i32 50, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [nreg] [line 50, size 32, align 32, offset 128] [from int]
!64 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totweight", i32 51, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totweight] [line 51, size 32, align 32, offset 160] [from int]
!65 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npass", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [npass] [line 52, size 32, align 32, offset 192] [from int]
!66 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npatch", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [npatch] [line 53, size 32, align 32, offset 224] [from int]
!67 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nflips", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [nflips] [line 54, size 32, align 32, offset 256] [from int]
!68 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nimprove", i32 55, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [nimprove] [line 55, size 32, align 32, offset 288] [from int]
!69 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ngaineval", i32 56, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ngaineval] [line 56, size 32, align 32, offset 320] [from int]
!70 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colors", i32 57, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [colors] [line 57, size 64, align 64, offset 384] [from ]
!71 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cweights", i32 58, i64 96, i64 32, i64 448, i32 0, metadata !72} ; [ DW_TAG_member ] [cweights] [line 58, size 96, align 32, offset 448] [from ]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !21, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!75 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"regwghts", i32 59, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [regwghts] [line 59, size 64, align 64, offset 576] [from ]
!76 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"alpha", i32 60, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [alpha] [line 60, size 32, align 32, offset 640] [from float]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81}
!78 = metadata !{i32 786689, metadata !4, metadata !"bkl", metadata !5, i32 16777233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 17]
!79 = metadata !{i32 786688, metadata !4, metadata !"cost", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 19]
!80 = metadata !{i32 786688, metadata !4, metadata !"wmax", metadata !5, i32 20, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wmax] [line 20]
!81 = metadata !{i32 786688, metadata !4, metadata !"wmin", metadata !5, i32 20, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wmin] [line 20]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_eval", metadata !"BKL_eval", metadata !"", i32 54, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*, i32, i32, i32)* @BKL_eval, null, null, metadata !85, i32 59} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 59] [BKL_eval]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !8, metadata !9, metadata !21, metadata !21, metadata !21}
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!86 = metadata !{i32 786689, metadata !82, metadata !"bkl", metadata !5, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 55]
!87 = metadata !{i32 786689, metadata !82, metadata !"Sweight", metadata !5, i32 33554488, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Sweight] [line 56]
!88 = metadata !{i32 786689, metadata !82, metadata !"Bweight", metadata !5, i32 50331705, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Bweight] [line 57]
!89 = metadata !{i32 786689, metadata !82, metadata !"Wweight", metadata !5, i32 67108922, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Wweight] [line 58]
!90 = metadata !{i32 786688, metadata !82, metadata !"cost", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 60]
!91 = metadata !{i32 786688, metadata !82, metadata !"wmax", metadata !5, i32 61, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wmax] [line 61]
!92 = metadata !{i32 786688, metadata !82, metadata !"wmin", metadata !5, i32 61, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wmin] [line 61]
!93 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_evalgain", metadata !"BKL_evalgain", metadata !"", i32 95, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*, i32, i32*, i32*, i32*)* @BKL_evalgain, null, null, metadata !96, i32 101} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 101] [BKL_evalgain]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !9, metadata !21, metadata !46, metadata !46, metadata !46}
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110}
!97 = metadata !{i32 786689, metadata !93, metadata !"bkl", metadata !5, i32 16777312, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 96]
!98 = metadata !{i32 786689, metadata !93, metadata !"dom", metadata !5, i32 33554529, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dom] [line 97]
!99 = metadata !{i32 786689, metadata !93, metadata !"pdeltaS", metadata !5, i32 50331746, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pdeltaS] [line 98]
!100 = metadata !{i32 786689, metadata !93, metadata !"pdeltaB", metadata !5, i32 67108963, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pdeltaB] [line 99]
!101 = metadata !{i32 786689, metadata !93, metadata !"pdeltaW", metadata !5, i32 83886180, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pdeltaW] [line 100]
!102 = metadata !{i32 786688, metadata !93, metadata !"ii", metadata !5, i32 102, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 102]
!103 = metadata !{i32 786688, metadata !93, metadata !"newc", metadata !5, i32 102, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newc] [line 102]
!104 = metadata !{i32 786688, metadata !93, metadata !"oldc", metadata !5, i32 102, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldc] [line 102]
!105 = metadata !{i32 786688, metadata !93, metadata !"seg", metadata !5, i32 102, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seg] [line 102]
!106 = metadata !{i32 786688, metadata !93, metadata !"size", metadata !5, i32 102, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 102]
!107 = metadata !{i32 786688, metadata !93, metadata !"adj", metadata !5, i32 103, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 103]
!108 = metadata !{i32 786688, metadata !93, metadata !"colors", metadata !5, i32 103, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 103]
!109 = metadata !{i32 786688, metadata !93, metadata !"regwghts", metadata !5, i32 103, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regwghts] [line 103]
!110 = metadata !{i32 786688, metadata !93, metadata !"stats", metadata !5, i32 104, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stats] [line 104]
!111 = metadata !{i32 17, i32 0, metadata !4, null}
!112 = metadata !{i32 26, i32 0, metadata !4, null}
!113 = metadata !{i32 27, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!115 = metadata !{metadata !"any pointer", metadata !116}
!116 = metadata !{metadata !"omnipotent char", metadata !117}
!117 = metadata !{metadata !"Simple C/C++ TBAA"}
!118 = metadata !{i32 29, i32 0, metadata !114, null}
!119 = metadata !{i32 31, i32 0, metadata !4, null}
!120 = metadata !{metadata !"int", metadata !116}
!121 = metadata !{i32 38, i32 0, metadata !4, null}
!122 = metadata !{i32 39, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!124 = metadata !{i32 40, i32 0, metadata !123, null}
!125 = metadata !{i32 41, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!127 = metadata !{metadata !"float", metadata !116}
!128 = metadata !{i32 43, i32 0, metadata !4, null}
!129 = metadata !{i32 55, i32 0, metadata !82, null}
!130 = metadata !{i32 56, i32 0, metadata !82, null}
!131 = metadata !{i32 57, i32 0, metadata !82, null}
!132 = metadata !{i32 58, i32 0, metadata !82, null} ; [ DW_TAG_imported_module ]
!133 = metadata !{i32 67, i32 0, metadata !82, null}
!134 = metadata !{i32 68, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !82, i32 67, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!136 = metadata !{i32 70, i32 0, metadata !135, null}
!137 = metadata !{i32 72, i32 0, metadata !82, null}
!138 = metadata !{i32 79, i32 0, metadata !82, null}
!139 = metadata !{i32 80, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !82, i32 79, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!141 = metadata !{i32 81, i32 0, metadata !140, null}
!142 = metadata !{i32 82, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !82, i32 81, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!144 = metadata !{i32 84, i32 0, metadata !82, null}
!145 = metadata !{i32 96, i32 0, metadata !93, null}
!146 = metadata !{i32 97, i32 0, metadata !93, null}
!147 = metadata !{i32 98, i32 0, metadata !93, null}
!148 = metadata !{i32 99, i32 0, metadata !93, null}
!149 = metadata !{i32 100, i32 0, metadata !93, null}
!150 = metadata !{i32 102, i32 0, metadata !93, null}
!151 = metadata !{i32 103, i32 0, metadata !93, null}
!152 = metadata !{i32 104, i32 0, metadata !93, null}
!153 = metadata !{i32 110, i32 0, metadata !93, null}
!154 = metadata !{i32 112, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !93, i32 111, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!156 = metadata !{i32 114, i32 0, metadata !155, null}
!157 = metadata !{i32 116, i32 0, metadata !93, null}
!158 = metadata !{i32 117, i32 0, metadata !93, null}
!159 = metadata !{i32 118, i32 0, metadata !93, null}
!160 = metadata !{i32 124, i32 0, metadata !93, null}
!161 = metadata !{i32 129, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !93, i32 124, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!163 = metadata !{i32 130, i32 0, metadata !162, null}
!164 = metadata !{i32 132, i32 0, metadata !162, null}
!165 = metadata !{i32 137, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !93, i32 132, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!167 = metadata !{i32 138, i32 0, metadata !166, null}
!168 = metadata !{i32 131, i32 0, metadata !162, null}
!169 = metadata !{i32 146, i32 0, metadata !93, null}
!170 = metadata !{i32 147, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !93, i32 147, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!172 = metadata !{i32 148, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !171, i32 147, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!174 = metadata !{i32 149, i32 0, metadata !173, null}
!175 = metadata !{i32 150, i32 0, metadata !173, null}
!176 = metadata !{i32 157, i32 0, metadata !173, null}
!177 = metadata !{i32 158, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !173, i32 157, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!179 = metadata !{i32 159, i32 0, metadata !178, null}
!180 = metadata !{i32 166, i32 0, metadata !178, null}
!181 = metadata !{i32 178, i32 0, metadata !93, null}
!182 = metadata !{i32 179, i32 0, metadata !93, null}
!183 = metadata !{i32 180, i32 0, metadata !93, null}
!184 = metadata !{i32 186, i32 0, metadata !93, null}
!185 = metadata !{i32 188, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !93, i32 186, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c]
!187 = metadata !{i32 187, i32 0, metadata !186, null}
!188 = metadata !{i32 196, i32 0, metadata !93, null}
!189 = metadata !{i32 198, i32 0, metadata !93, null}
