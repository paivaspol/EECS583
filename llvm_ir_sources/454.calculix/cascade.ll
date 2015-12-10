; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [126 x i8] c"*ERROR in cascade: the DOF corresponding to \0A node %d in direction %d is detected on the \0A dependent side of a MPC and a SPC\0A\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"                    \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"CYCLIC\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"SUBCYCLIC\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"RIGID\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"PLANE\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"STRAIGHT\00", align 1
@.str9 = private unnamed_addr constant [49 x i8] c"*INFO in cascade: DOF %d of node %d is expanded\0A\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"*INFO in cascade: reallocating nodempc; new size = %d\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"*ERROR in cascade: zero coefficient on the\00"
@str13 = private unnamed_addr constant [37 x i8] c"       dependent side of an equation\00"
@str14 = private unnamed_addr constant [34 x i8] c"*INFO in cascade: linear MPCs and\00"
@str15 = private unnamed_addr constant [44 x i8] c"       nonlinear MPCs depend on each other\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @cascade(i32* nocapture %ipompc, double** nocapture %coefmpcp, i32** nocapture %nodempcp, i32* %nmpc, i32* nocapture %mpcfree, i32* nocapture %nodeboun, i32* nocapture %ndirboun, i32* %nboun, i32* %ikmpc, i32* nocapture %ilmpc, i32* %ikboun, i32* nocapture %ilboun, i32* nocapture %mpcend, i32* nocapture %mpcmult, i8* %labmpc, i32 %labmpcLen, i32* nocapture %nk, i32* nocapture %memmpc_, i32* nocapture %icascade, i32* nocapture %maxlenmpc, i32* nocapture %callfrommain) #0 {
entry:
  %id = alloca i32, align 4
  %idof = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %ipompc}, i64 0, metadata !17), !dbg !74
  call void @llvm.dbg.value(metadata !{double** %coefmpcp}, i64 0, metadata !18), !dbg !74
  call void @llvm.dbg.value(metadata !{i32** %nodempcp}, i64 0, metadata !19), !dbg !74
  call void @llvm.dbg.value(metadata !{i32* %nmpc}, i64 0, metadata !20), !dbg !74
  call void @llvm.dbg.value(metadata !{i32* %mpcfree}, i64 0, metadata !21), !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %nodeboun}, i64 0, metadata !22), !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %ndirboun}, i64 0, metadata !23), !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %nboun}, i64 0, metadata !24), !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %ikmpc}, i64 0, metadata !25), !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %ilmpc}, i64 0, metadata !26), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %ikboun}, i64 0, metadata !27), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %ilboun}, i64 0, metadata !28), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %mpcend}, i64 0, metadata !29), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %mpcmult}, i64 0, metadata !30), !dbg !76
  call void @llvm.dbg.value(metadata !{i8* %labmpc}, i64 0, metadata !31), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %labmpcLen}, i64 0, metadata !32), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %nk}, i64 0, metadata !33), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %memmpc_}, i64 0, metadata !34), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %icascade}, i64 0, metadata !35), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %maxlenmpc}, i64 0, metadata !36), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %callfrommain}, i64 0, metadata !37), !dbg !78
  call void @llvm.dbg.declare(metadata !{i32* %id}, metadata !41), !dbg !79
  call void @llvm.dbg.declare(metadata !{i32* %idof}, metadata !42), !dbg !79
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !51), !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !52), !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !54), !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !55), !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !68), !dbg !81
  call void @llvm.dbg.value(metadata !82, i64 0, metadata !71), !dbg !83
  call void @llvm.dbg.value(metadata !82, i64 0, metadata !72), !dbg !83
  %0 = load i32** %nodempcp, align 8, !dbg !84, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !54), !dbg !84
  %1 = load double** %coefmpcp, align 8, !dbg !88, !tbaa !85
  call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !72), !dbg !88
  %2 = load i32* %nmpc, align 4, !dbg !89, !tbaa !90
  %conv = sext i32 %2 to i64, !dbg !89
  %call = call i8* @u_calloc(i64 %conv, i64 4) #6, !dbg !89
  %3 = bitcast i8* %call to i32*, !dbg !89
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !68), !dbg !89
  store i32 0, i32* %icascade, align 4, !dbg !91, !tbaa !90
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !92
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !38), !dbg !93
  %4 = load i32* %nmpc, align 4, !dbg !93, !tbaa !90
  %cmp723 = icmp sgt i32 %4, 0, !dbg !93
  br i1 %cmp723, label %for.body, label %for.cond85.outer, !dbg !93

for.cond27.preheader:                             ; preds = %for.inc
  %cmp28720 = icmp sgt i32 %9, 0, !dbg !95
  br i1 %cmp28720, label %for.body30, label %for.cond85.outer, !dbg !95

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv753 = phi i64 [ 0, %entry ], [ %indvars.iv.next754, %for.inc ]
  %5 = load i32* %nboun, align 4, !dbg !97, !tbaa !90
  %cmp2 = icmp sgt i32 %5, 0, !dbg !97
  br i1 %cmp2, label %if.end, label %if.end.thread, !dbg !97

if.end.thread:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !41), !dbg !99
  store i32 0, i32* %id, align 4, !dbg !99, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32* %id}, i64 0, metadata !41), !dbg !101
  br label %for.inc, !dbg !101

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %ikmpc, i64 %indvars.iv753, !dbg !102
  call void @nident_(i32* %ikboun, i32* %arrayidx, i32* %nboun, i32* %id) #6, !dbg !102
  call void @llvm.dbg.value(metadata !{i32* %id}, i64 0, metadata !41), !dbg !101
  %.pr = load i32* %id, align 4, !dbg !101, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32* %id}, i64 0, metadata !41), !dbg !101
  %cmp4 = icmp sgt i32 %.pr, 0, !dbg !101
  br i1 %cmp4, label %if.then6, label %for.inc, !dbg !101

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %.pr, -1, !dbg !104
  %idxprom7 = sext i32 %sub to i64, !dbg !104
  %arrayidx8 = getelementptr inbounds i32* %ikboun, i64 %idxprom7, !dbg !104
  %6 = load i32* %arrayidx8, align 4, !dbg !104, !tbaa !90
  %7 = load i32* %arrayidx, align 4, !dbg !104, !tbaa !90
  %cmp11 = icmp eq i32 %6, %7, !dbg !104
  br i1 %cmp11, label %if.then13, label %for.inc, !dbg !104

if.then13:                                        ; preds = %if.then6
  %sub16 = add nsw i32 %6, -1, !dbg !106
  %div = sdiv i32 %sub16, 7, !dbg !106
  %add = add nsw i32 %div, 1, !dbg !106
  %8 = mul i32 %div, -3, !dbg !106
  %sub23 = add i32 %8, %6, !dbg !106
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([126 x i8]* @.str, i64 0, i64 0), i32 %add, i32 %sub23) #6, !dbg !106
  call void (...)* @stop_() #6, !dbg !108
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %if.then6, %if.end, %if.end.thread, %if.then13
  %indvars.iv.next754 = add i64 %indvars.iv753, 1, !dbg !93
  %9 = load i32* %nmpc, align 4, !dbg !93, !tbaa !90
  %10 = trunc i64 %indvars.iv.next754 to i32, !dbg !93
  %cmp = icmp slt i32 %10, %9, !dbg !93
  br i1 %cmp, label %for.body, label %for.cond27.preheader, !dbg !93

for.body30:                                       ; preds = %for.cond27.preheader, %for.inc82
  %indvars.iv751 = phi i64 [ %indvars.iv.next752, %for.inc82 ], [ 0, %for.cond27.preheader ]
  %sext755 = mul i64 %indvars.iv751, 85899345920, !dbg !110
  %idxprom32 = ashr exact i64 %sext755, 32, !dbg !110
  %arrayidx33 = getelementptr inbounds i8* %labmpc, i64 %idxprom32, !dbg !110
  %call34 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !110
  %cmp35 = icmp eq i32 %call34, 0, !dbg !110
  br i1 %cmp35, label %if.then50, label %lor.lhs.false, !dbg !110

lor.lhs.false:                                    ; preds = %for.body30
  %call40 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !112
  %cmp41 = icmp eq i32 %call40, 0, !dbg !112
  br i1 %cmp41, label %if.then50, label %lor.lhs.false43, !dbg !112

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %call47 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !113
  %cmp48 = icmp eq i32 %call47, 0, !dbg !113
  br i1 %cmp48, label %if.then50, label %if.else53, !dbg !113

if.then50:                                        ; preds = %lor.lhs.false43, %lor.lhs.false, %for.body30
  %arrayidx52 = getelementptr inbounds i32* %3, i64 %indvars.iv751, !dbg !113
  store i32 0, i32* %arrayidx52, align 4, !dbg !113, !tbaa !90
  br label %for.inc82, !dbg !113

if.else53:                                        ; preds = %lor.lhs.false43
  %call57 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !114
  %cmp58 = icmp eq i32 %call57, 0, !dbg !114
  br i1 %cmp58, label %if.then74, label %lor.lhs.false60, !dbg !114

lor.lhs.false60:                                  ; preds = %if.else53
  %call64 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !115
  %cmp65 = icmp eq i32 %call64, 0, !dbg !115
  br i1 %cmp65, label %if.then74, label %lor.lhs.false67, !dbg !115

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %call71 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !116
  %cmp72 = icmp eq i32 %call71, 0, !dbg !116
  br i1 %cmp72, label %if.then74, label %if.else77, !dbg !116

if.then74:                                        ; preds = %lor.lhs.false67, %lor.lhs.false60, %if.else53
  %arrayidx76 = getelementptr inbounds i32* %3, i64 %indvars.iv751, !dbg !116
  store i32 1, i32* %arrayidx76, align 4, !dbg !116, !tbaa !90
  br label %for.inc82, !dbg !116

if.else77:                                        ; preds = %lor.lhs.false67
  %arrayidx79 = getelementptr inbounds i32* %3, i64 %indvars.iv751, !dbg !117
  store i32 1, i32* %arrayidx79, align 4, !dbg !117, !tbaa !90
  store i32 1, i32* %icascade, align 4, !dbg !119, !tbaa !90
  br label %for.inc82

for.inc82:                                        ; preds = %if.then50, %if.else77, %if.then74
  %indvars.iv.next752 = add i64 %indvars.iv751, 1, !dbg !95
  %11 = load i32* %nmpc, align 4, !dbg !95, !tbaa !90
  %12 = trunc i64 %indvars.iv.next752 to i32, !dbg !95
  %cmp28 = icmp slt i32 %12, %11, !dbg !95
  br i1 %cmp28, label %for.body30, label %for.cond85.outer, !dbg !95

for.cond85:                                       ; preds = %for.cond85.outer, %for.end431
  %ichange.0 = phi i32 [ 0, %for.end431 ], [ %ichange.0.ph, %for.cond85.outer ]
  %i.2 = phi i32 [ 0, %for.end431 ], [ %i.2.ph, %for.cond85.outer ]
  %cmp86 = icmp slt i32 %i.2, %72, !dbg !120
  br i1 %cmp86, label %for.body88, label %for.end431, !dbg !120

for.body88:                                       ; preds = %for.cond85
  %idxprom89 = sext i32 %i.2 to i64, !dbg !123
  %arrayidx90 = getelementptr inbounds i32* %3, i64 %idxprom89, !dbg !123
  %13 = load i32* %arrayidx90, align 4, !dbg !123, !tbaa !90
  %cmp91 = icmp eq i32 %13, 1, !dbg !123
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !125
  %arrayidx97 = getelementptr inbounds i32* %ipompc, i64 %idxprom89, !dbg !126
  %14 = load i32* %arrayidx97, align 4, !dbg !126, !tbaa !90
  %mul98 = mul nsw i32 %14, 3, !dbg !126
  %sub99 = add nsw i32 %mul98, -1, !dbg !126
  %idxprom100 = sext i32 %sub99 to i64, !dbg !126
  %arrayidx101 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom100, !dbg !126
  %15 = load i32* %arrayidx101, align 4, !dbg !126, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !40), !dbg !126
  %cmp102 = icmp eq i32 %15, 0, !dbg !127
  br i1 %cmp102, label %for.inc429, label %do.body106.outer, !dbg !127

do.body106.outer:                                 ; preds = %for.body88, %if.then153
  %idepend.2.ph = phi i32 [ %idepend.3, %if.then153 ], [ %idepend.1.ph, %for.body88 ]
  %index.0.ph = phi i32 [ %27, %if.then153 ], [ %15, %for.body88 ]
  br label %do.body106

do.body106:                                       ; preds = %do.body106.outer, %if.else286
  %index.0 = phi i32 [ %52, %if.else286 ], [ %index.0.ph, %do.body106.outer ]
  %mul107 = mul nsw i32 %index.0, 3, !dbg !128
  %sub108 = add nsw i32 %mul107, -3, !dbg !128
  %idxprom109 = sext i32 %sub108 to i64, !dbg !128
  %arrayidx110 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom109, !dbg !128
  %16 = load i32* %arrayidx110, align 4, !dbg !128, !tbaa !90
  %17 = mul i32 %16, 7, !dbg !128
  %mul112 = add i32 %17, -7, !dbg !128
  %sub114 = add nsw i32 %mul107, -2, !dbg !128
  %idxprom115 = sext i32 %sub114 to i64, !dbg !128
  %arrayidx116 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom115, !dbg !128
  %18 = load i32* %arrayidx116, align 4, !dbg !128, !tbaa !90
  %add117 = add nsw i32 %mul112, %18, !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %add117}, i64 0, metadata !42), !dbg !128
  store i32 %add117, i32* %idof, align 4, !dbg !128, !tbaa !90
  call void @nident_(i32* %ikmpc, i32* %idof, i32* %nmpc, i32* %id) #6, !dbg !130
  call void @llvm.dbg.value(metadata !{i32* %id}, i64 0, metadata !41), !dbg !131
  %19 = load i32* %id, align 4, !dbg !131, !tbaa !90
  %cmp118 = icmp sgt i32 %19, 0, !dbg !131
  br i1 %cmp118, label %land.lhs.true, label %if.else286, !dbg !131

land.lhs.true:                                    ; preds = %do.body106
  %sub120 = add nsw i32 %19, -1, !dbg !131
  %idxprom121 = sext i32 %sub120 to i64, !dbg !131
  %arrayidx122 = getelementptr inbounds i32* %ikmpc, i64 %idxprom121, !dbg !131
  %20 = load i32* %arrayidx122, align 4, !dbg !131, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32* %idof}, i64 0, metadata !42), !dbg !131
  %21 = load i32* %idof, align 4, !dbg !131, !tbaa !90
  %cmp123 = icmp eq i32 %20, %21, !dbg !131
  br i1 %cmp123, label %if.then125, label %if.else286, !dbg !131

if.then125:                                       ; preds = %land.lhs.true
  %sub127 = add nsw i32 %mul107, -1, !dbg !132
  %idxprom128 = sext i32 %sub127 to i64, !dbg !132
  %arrayidx129 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom128, !dbg !132
  %22 = load i32* %arrayidx129, align 4, !dbg !132, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !60), !dbg !132
  %sub130 = add nsw i32 %index.0, -1, !dbg !134
  %idxprom131 = sext i32 %sub130 to i64, !dbg !134
  %arrayidx132 = getelementptr inbounds double* %coefmpc.1.ph, i64 %idxprom131, !dbg !134
  %23 = load double* %arrayidx132, align 8, !dbg !134, !tbaa !135
  call void @llvm.dbg.value(metadata !{double %23}, i64 0, metadata !70), !dbg !134
  %arrayidx135 = getelementptr inbounds i32* %ilmpc, i64 %idxprom121, !dbg !136
  %24 = load i32* %arrayidx135, align 4, !dbg !136, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !62), !dbg !136
  %sub136 = add nsw i32 %24, -1, !dbg !137
  %idxprom137 = sext i32 %sub136 to i64, !dbg !137
  %arrayidx138 = getelementptr inbounds i32* %3, i64 %idxprom137, !dbg !137
  %25 = load i32* %arrayidx138, align 4, !dbg !137, !tbaa !90
  %cmp139 = icmp eq i32 %25, 1, !dbg !137
  %or.cond = or i1 %cmp139, %cmp91, !dbg !137
  br i1 %or.cond, label %if.then144, label %if.end164, !dbg !137

if.then144:                                       ; preds = %if.then125
  store i32 2, i32* %icascade, align 4, !dbg !138, !tbaa !90
  %cmp145 = icmp eq i32 %idepend.2.ph, 0, !dbg !140
  br i1 %cmp145, label %if.then147, label %if.end150, !dbg !140

if.then147:                                       ; preds = %if.then144
  %puts675 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str14, i64 0, i64 0)), !dbg !141
  %puts676 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str15, i64 0, i64 0)), !dbg !143
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !48), !dbg !145
  br label %if.end150, !dbg !145

if.end150:                                        ; preds = %if.then147, %if.then144
  %idepend.3 = phi i32 [ 1, %if.then147 ], [ %idepend.2.ph, %if.then144 ]
  %26 = load i32* %callfrommain, align 4, !dbg !146, !tbaa !90
  %cmp151 = icmp eq i32 %26, 1, !dbg !146
  br i1 %cmp151, label %if.then153, label %if.end164, !dbg !146

if.then153:                                       ; preds = %if.end150
  %27 = load i32* %arrayidx129, align 4, !dbg !147, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !40), !dbg !147
  %cmp158 = icmp eq i32 %27, 0, !dbg !149
  br i1 %cmp158, label %for.inc429, label %do.body106.outer, !dbg !149

if.end164:                                        ; preds = %if.end150, %if.then125
  %idepend.4 = phi i32 [ %idepend.2.ph, %if.then125 ], [ %idepend.3, %if.end150 ]
  %28 = load i32* %arrayidx116, align 4, !dbg !150, !tbaa !90
  %29 = load i32* %arrayidx110, align 4, !dbg !150, !tbaa !90
  %call173 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str9, i64 0, i64 0), i32 %28, i32 %29) #6, !dbg !150
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !59), !dbg !151
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !58), !dbg !151
  %mul174 = mul nsw i32 %i.2, 20, !dbg !152
  %idxprom175 = sext i32 %mul174 to i64, !dbg !152
  %arrayidx176 = getelementptr inbounds i8* %labmpc, i64 %idxprom175, !dbg !152
  %call177 = call i32 @strcmp1(i8* %arrayidx176, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !152
  %cmp178 = icmp eq i32 %call177, 0, !dbg !152
  br i1 %cmp178, label %land.lhs.true180, label %if.end193, !dbg !152

land.lhs.true180:                                 ; preds = %if.end164
  %mul182 = mul nsw i32 %sub136, 20, !dbg !153
  %idxprom183 = sext i32 %mul182 to i64, !dbg !153
  %arrayidx184 = getelementptr inbounds i8* %labmpc, i64 %idxprom183, !dbg !153
  %call185 = call i32 @strcmp1(i8* %arrayidx184, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !153
  %cmp186 = icmp eq i32 %call185, 0, !dbg !153
  br i1 %cmp186, label %if.then188, label %if.end193, !dbg !153

if.then188:                                       ; preds = %land.lhs.true180
  %call192 = call i32 @strcpy1(i8* %arrayidx176, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 9) #6, !dbg !154
  br label %if.end193, !dbg !154

if.end193:                                        ; preds = %if.then188, %land.lhs.true180, %if.end164
  %arrayidx196 = getelementptr inbounds i32* %ipompc, i64 %idxprom137, !dbg !155
  %30 = load i32* %arrayidx196, align 4, !dbg !155, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !63), !dbg !155
  %sub197 = fsub double -0.000000e+00, %23, !dbg !156
  %sub198 = add nsw i32 %30, -1, !dbg !156
  %idxprom199 = sext i32 %sub198 to i64, !dbg !156
  %arrayidx200 = getelementptr inbounds double* %coefmpc.1.ph, i64 %idxprom199, !dbg !156
  %31 = load double* %arrayidx200, align 8, !dbg !156, !tbaa !135
  %div201 = fdiv double %sub197, %31, !dbg !156
  call void @llvm.dbg.value(metadata !{double %div201}, i64 0, metadata !70), !dbg !156
  %mul202 = mul nsw i32 %30, 3, !dbg !157
  %sub203 = add nsw i32 %mul202, -1, !dbg !157
  %idxprom204 = sext i32 %sub203 to i64, !dbg !157
  %arrayidx205 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom204, !dbg !157
  %32 = load i32* %arrayidx205, align 4, !dbg !157, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !63), !dbg !157
  br label %do.body206.outer, !dbg !158

do.body206.outer:                                 ; preds = %for.end275, %if.end193
  %nodempc.2.ph = phi i32* [ %nodempc.1.ph, %if.end193 ], [ %44, %for.end275 ]
  %index.1.ph = phi i32 [ %index.0, %if.end193 ], [ %38, %for.end275 ]
  %indexnew.0.ph = phi i32 [ %32, %if.end193 ], [ %36, %for.end275 ]
  %coefmpc.2.ph = phi double* [ %coefmpc.1.ph, %if.end193 ], [ %47, %for.end275 ]
  br label %do.body206

do.body206:                                       ; preds = %do.body206.outer, %if.then236
  %index.1 = phi i32 [ %38, %if.then236 ], [ %index.1.ph, %do.body206.outer ]
  %indexnew.0 = phi i32 [ %36, %if.then236 ], [ %indexnew.0.ph, %do.body206.outer ]
  %sub207 = add nsw i32 %indexnew.0, -1, !dbg !159
  %idxprom208 = sext i32 %sub207 to i64, !dbg !159
  %arrayidx209 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom208, !dbg !159
  %33 = load double* %arrayidx209, align 8, !dbg !159, !tbaa !135
  %mul210 = fmul double %div201, %33, !dbg !159
  %sub211 = add nsw i32 %index.1, -1, !dbg !159
  %idxprom212 = sext i32 %sub211 to i64, !dbg !159
  %arrayidx213 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom212, !dbg !159
  store double %mul210, double* %arrayidx213, align 8, !dbg !159, !tbaa !135
  %mul214 = mul nsw i32 %indexnew.0, 3, !dbg !161
  %sub215 = add nsw i32 %mul214, -3, !dbg !161
  %idxprom216 = sext i32 %sub215 to i64, !dbg !161
  %arrayidx217 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom216, !dbg !161
  %34 = load i32* %arrayidx217, align 4, !dbg !161, !tbaa !90
  %mul218 = mul nsw i32 %index.1, 3, !dbg !161
  %sub219 = add nsw i32 %mul218, -3, !dbg !161
  %idxprom220 = sext i32 %sub219 to i64, !dbg !161
  %arrayidx221 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom220, !dbg !161
  store i32 %34, i32* %arrayidx221, align 4, !dbg !161, !tbaa !90
  %sub223 = add nsw i32 %mul214, -2, !dbg !162
  %idxprom224 = sext i32 %sub223 to i64, !dbg !162
  %arrayidx225 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom224, !dbg !162
  %35 = load i32* %arrayidx225, align 4, !dbg !162, !tbaa !90
  %sub227 = add nsw i32 %mul218, -2, !dbg !162
  %idxprom228 = sext i32 %sub227 to i64, !dbg !162
  %arrayidx229 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom228, !dbg !162
  store i32 %35, i32* %arrayidx229, align 4, !dbg !162, !tbaa !90
  %sub231 = add nsw i32 %mul214, -1, !dbg !163
  %idxprom232 = sext i32 %sub231 to i64, !dbg !163
  %arrayidx233 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom232, !dbg !163
  %36 = load i32* %arrayidx233, align 4, !dbg !163, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !63), !dbg !163
  %cmp234 = icmp eq i32 %36, 0, !dbg !164
  br i1 %cmp234, label %if.end300, label %if.then236, !dbg !164

if.then236:                                       ; preds = %do.body206
  %37 = load i32* %mpcfree, align 4, !dbg !165, !tbaa !90
  %sub238 = add nsw i32 %mul218, -1, !dbg !165
  %idxprom239 = sext i32 %sub238 to i64, !dbg !165
  %arrayidx240 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom239, !dbg !165
  store i32 %37, i32* %arrayidx240, align 4, !dbg !165, !tbaa !90
  %38 = load i32* %mpcfree, align 4, !dbg !167, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !40), !dbg !167
  %mul241 = mul nsw i32 %38, 3, !dbg !168
  %sub242 = add nsw i32 %mul241, -1, !dbg !168
  %idxprom243 = sext i32 %sub242 to i64, !dbg !168
  %arrayidx244 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom243, !dbg !168
  %39 = load i32* %arrayidx244, align 4, !dbg !168, !tbaa !90
  store i32 %39, i32* %mpcfree, align 4, !dbg !168, !tbaa !90
  %cmp245 = icmp eq i32 %39, 0, !dbg !169
  br i1 %cmp245, label %if.then247, label %do.body206, !dbg !169

if.then247:                                       ; preds = %if.then236
  %40 = load i32* %memmpc_, align 4, !dbg !170, !tbaa !90
  %add248 = add nsw i32 %40, 1, !dbg !170
  store i32 %add248, i32* %mpcfree, align 4, !dbg !170, !tbaa !90
  store i32 %add248, i32* %arrayidx244, align 4, !dbg !172, !tbaa !90
  %41 = load i32* %memmpc_, align 4, !dbg !173, !tbaa !90
  %conv253 = sitofp i32 %41 to double, !dbg !173
  %mul254 = fmul double %conv253, 1.100000e+00, !dbg !173
  %conv255 = fptosi double %mul254 to i32, !dbg !173
  store i32 %conv255, i32* %memmpc_, align 4, !dbg !173, !tbaa !90
  %call256 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), i32 %conv255) #6, !dbg !174
  %42 = bitcast i32* %nodempc.2.ph to i8*, !dbg !175
  %43 = load i32* %memmpc_, align 4, !dbg !175, !tbaa !90
  %mul257 = mul nsw i32 %43, 3, !dbg !175
  %conv258 = sext i32 %mul257 to i64, !dbg !175
  %mul259 = shl nsw i64 %conv258, 2, !dbg !175
  %call260 = call i8* @realloc(i8* %42, i64 %mul259) #6, !dbg !175
  %44 = bitcast i8* %call260 to i32*, !dbg !175
  call void @llvm.dbg.value(metadata !{i32* %44}, i64 0, metadata !54), !dbg !175
  %45 = bitcast double* %coefmpc.2.ph to i8*, !dbg !176
  %46 = load i32* %memmpc_, align 4, !dbg !176, !tbaa !90
  %conv261 = sext i32 %46 to i64, !dbg !176
  %mul262 = shl nsw i64 %conv261, 3, !dbg !176
  %call263 = call i8* @realloc(i8* %45, i64 %mul262) #6, !dbg !176
  %47 = bitcast i8* %call263 to double*, !dbg !176
  call void @llvm.dbg.value(metadata !{double* %47}, i64 0, metadata !72), !dbg !176
  %48 = load i32* %mpcfree, align 4, !dbg !177, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !39), !dbg !177
  %49 = load i32* %memmpc_, align 4, !dbg !177, !tbaa !90
  %cmp265693 = icmp slt i32 %48, %49, !dbg !177
  br i1 %cmp265693, label %for.body267.lr.ph, label %for.end275, !dbg !177

for.body267.lr.ph:                                ; preds = %if.then247
  %50 = sext i32 %48 to i64
  br label %for.body267, !dbg !177

for.body267:                                      ; preds = %for.body267.lr.ph, %for.body267
  %indvars.iv747 = phi i64 [ %50, %for.body267.lr.ph ], [ %indvars.iv.next748, %for.body267 ]
  %indvars.iv.next748 = add i64 %indvars.iv747, 1, !dbg !177
  %sub270 = mul i64 %indvars.iv747, 12884901888, !dbg !179
  %sext = add i64 %sub270, -4294967296, !dbg !179
  %idxprom271 = ashr exact i64 %sext, 32, !dbg !179
  %arrayidx272 = getelementptr inbounds i32* %44, i64 %idxprom271, !dbg !179
  %51 = trunc i64 %indvars.iv.next748 to i32, !dbg !179
  store i32 %51, i32* %arrayidx272, align 4, !dbg !179, !tbaa !90
  %cmp265 = icmp slt i32 %51, %49, !dbg !177
  br i1 %cmp265, label %for.body267, label %for.end275, !dbg !177

for.end275:                                       ; preds = %for.body267, %if.then247
  %mul276 = mul nsw i32 %49, 3, !dbg !181
  %sub277 = add nsw i32 %mul276, -1, !dbg !181
  %idxprom278 = sext i32 %sub277 to i64, !dbg !181
  %arrayidx279 = getelementptr inbounds i32* %44, i64 %idxprom278, !dbg !181
  store i32 0, i32* %arrayidx279, align 4, !dbg !181, !tbaa !90
  br label %do.body206.outer, !dbg !182

if.else286:                                       ; preds = %land.lhs.true, %do.body106
  %sub288 = add nsw i32 %mul107, -1, !dbg !183
  %idxprom289 = sext i32 %sub288 to i64, !dbg !183
  %arrayidx290 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom289, !dbg !183
  %52 = load i32* %arrayidx290, align 4, !dbg !183, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !40), !dbg !183
  %cmp291 = icmp eq i32 %52, 0, !dbg !185
  br i1 %cmp291, label %for.inc429, label %do.body106, !dbg !185

if.end300:                                        ; preds = %do.body206
  %sub283 = add nsw i32 %mul218, -1, !dbg !186
  %idxprom284 = sext i32 %sub283 to i64, !dbg !186
  %arrayidx285 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom284, !dbg !186
  store i32 %22, i32* %arrayidx285, align 4, !dbg !186, !tbaa !90
  %53 = load i32* %arrayidx97, align 4, !dbg !188, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !64), !dbg !188
  br label %do.body303, !dbg !189

do.body303:                                       ; preds = %do.end373, %if.end300
  %index1.0 = phi i32 [ %53, %if.end300 ], [ %65, %do.end373 ]
  call void @llvm.dbg.value(metadata !{i32 %index1.0}, i64 0, metadata !67), !dbg !190
  %mul304 = mul nsw i32 %index1.0, 3, !dbg !192
  %sub305 = add nsw i32 %mul304, -1, !dbg !192
  %idxprom306 = sext i32 %sub305 to i64, !dbg !192
  %arrayidx307 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom306, !dbg !192
  %54 = load i32* %arrayidx307, align 4, !dbg !192, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !65), !dbg !192
  %cmp308 = icmp eq i32 %54, 0, !dbg !193
  br i1 %cmp308, label %do.end383, label %do.body312.preheader, !dbg !193

do.body312.preheader:                             ; preds = %do.body303
  %sub314 = add nsw i32 %mul304, -3, !dbg !194
  %idxprom315 = sext i32 %sub314 to i64, !dbg !194
  %arrayidx316 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom315, !dbg !194
  %sub325 = add nsw i32 %mul304, -2, !dbg !194
  %idxprom326 = sext i32 %sub325 to i64, !dbg !194
  %arrayidx327 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom326, !dbg !194
  %sub338 = add nsw i32 %index1.0, -1, !dbg !196
  %idxprom339 = sext i32 %sub338 to i64, !dbg !196
  %arrayidx340 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom339, !dbg !196
  br label %do.body312.outer, !dbg !194

do.body312.outer:                                 ; preds = %do.body312.preheader, %if.else362
  %index2.0.ph = phi i32 [ %64, %if.else362 ], [ %54, %do.body312.preheader ]
  %index2old.0.ph = phi i32 [ %index2.0, %if.else362 ], [ %index1.0, %do.body312.preheader ]
  %mul346 = mul nsw i32 %index2old.0.ph, 3, !dbg !198
  %sub347 = add nsw i32 %mul346, -1, !dbg !198
  %idxprom348 = sext i32 %sub347 to i64, !dbg !198
  %arrayidx349 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom348, !dbg !198
  br label %do.body312

do.body312:                                       ; preds = %if.then334, %do.body312.outer
  %index2.0 = phi i32 [ %index2.0.ph, %do.body312.outer ], [ %63, %if.then334 ]
  %55 = load i32* %arrayidx316, align 4, !dbg !194, !tbaa !90
  %mul317 = mul nsw i32 %index2.0, 3, !dbg !194
  %sub318 = add nsw i32 %mul317, -3, !dbg !194
  %idxprom319 = sext i32 %sub318 to i64, !dbg !194
  %arrayidx320 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom319, !dbg !194
  %56 = load i32* %arrayidx320, align 4, !dbg !194, !tbaa !90
  %cmp321 = icmp eq i32 %55, %56, !dbg !194
  br i1 %cmp321, label %land.lhs.true323, label %if.else362, !dbg !194

land.lhs.true323:                                 ; preds = %do.body312
  %57 = load i32* %arrayidx327, align 4, !dbg !194, !tbaa !90
  %sub329 = add nsw i32 %mul317, -2, !dbg !194
  %idxprom330 = sext i32 %sub329 to i64, !dbg !194
  %arrayidx331 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom330, !dbg !194
  %58 = load i32* %arrayidx331, align 4, !dbg !194, !tbaa !90
  %cmp332 = icmp eq i32 %57, %58, !dbg !194
  br i1 %cmp332, label %if.then334, label %if.else362, !dbg !194

if.then334:                                       ; preds = %land.lhs.true323
  %sub335 = add nsw i32 %index2.0, -1, !dbg !196
  %idxprom336 = sext i32 %sub335 to i64, !dbg !196
  %arrayidx337 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom336, !dbg !196
  %59 = load double* %arrayidx337, align 8, !dbg !196, !tbaa !135
  %60 = load double* %arrayidx340, align 8, !dbg !196, !tbaa !135
  %add341 = fadd double %59, %60, !dbg !196
  store double %add341, double* %arrayidx340, align 8, !dbg !196, !tbaa !135
  %sub343 = add nsw i32 %mul317, -1, !dbg !198
  %idxprom344 = sext i32 %sub343 to i64, !dbg !198
  %arrayidx345 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom344, !dbg !198
  %61 = load i32* %arrayidx345, align 4, !dbg !198, !tbaa !90
  store i32 %61, i32* %arrayidx349, align 4, !dbg !198, !tbaa !90
  %62 = load i32* %mpcfree, align 4, !dbg !199, !tbaa !90
  store i32 %62, i32* %arrayidx345, align 4, !dbg !199, !tbaa !90
  store i32 %index2.0, i32* %mpcfree, align 4, !dbg !200, !tbaa !90
  %63 = load i32* %arrayidx349, align 4, !dbg !201, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !65), !dbg !201
  %cmp358 = icmp eq i32 %63, 0, !dbg !202
  br i1 %cmp358, label %do.end373, label %do.body312, !dbg !202

if.else362:                                       ; preds = %land.lhs.true323, %do.body312
  call void @llvm.dbg.value(metadata !{i32 %index2.0}, i64 0, metadata !67), !dbg !203
  %sub364 = add nsw i32 %mul317, -1, !dbg !205
  %idxprom365 = sext i32 %sub364 to i64, !dbg !205
  %arrayidx366 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom365, !dbg !205
  %64 = load i32* %arrayidx366, align 4, !dbg !205, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %64}, i64 0, metadata !65), !dbg !205
  %cmp367 = icmp eq i32 %64, 0, !dbg !206
  br i1 %cmp367, label %do.end373, label %do.body312.outer, !dbg !206

do.end373:                                        ; preds = %if.else362, %if.then334
  %65 = load i32* %arrayidx307, align 4, !dbg !207, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !64), !dbg !207
  %cmp378 = icmp eq i32 %65, 0, !dbg !208
  br i1 %cmp378, label %do.end383, label %do.body303, !dbg !208

do.end383:                                        ; preds = %do.end373, %do.body303
  %66 = load i32* %arrayidx97, align 4, !dbg !209, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !64), !dbg !209
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !210
  br label %do.body386, !dbg !211

do.body386:                                       ; preds = %if.end422, %do.end383
  %index1.1 = phi i32 [ %66, %do.end383 ], [ %index1.2, %if.end422 ]
  %index1old.0 = phi i32 [ 0, %do.end383 ], [ %index1old.1, %if.end422 ]
  %sub387 = add nsw i32 %index1.1, -1, !dbg !212
  %idxprom388 = sext i32 %sub387 to i64, !dbg !212
  %arrayidx389 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom388, !dbg !212
  %67 = load double* %arrayidx389, align 8, !dbg !212, !tbaa !135
  %call390 = call double @fabs(double %67) #7, !dbg !212
  %cmp391 = fcmp olt double %call390, 1.000000e-10, !dbg !212
  br i1 %cmp391, label %if.then393, label %if.else417, !dbg !212

if.then393:                                       ; preds = %do.body386
  %cmp394 = icmp eq i32 %index1old.0, 0, !dbg !214
  br i1 %cmp394, label %if.then396, label %if.else399, !dbg !214

if.then396:                                       ; preds = %if.then393
  %puts = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str, i64 0, i64 0)), !dbg !216
  %puts674 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str13, i64 0, i64 0)), !dbg !218
  call void (...)* @stop_() #6, !dbg !219
  br label %if.end422, !dbg !220

if.else399:                                       ; preds = %if.then393
  %mul400 = mul nsw i32 %index1.1, 3, !dbg !221
  %sub401 = add nsw i32 %mul400, -1, !dbg !221
  %idxprom402 = sext i32 %sub401 to i64, !dbg !221
  %arrayidx403 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom402, !dbg !221
  %68 = load i32* %arrayidx403, align 4, !dbg !221, !tbaa !90
  %mul404 = mul nsw i32 %index1old.0, 3, !dbg !221
  %sub405 = add nsw i32 %mul404, -1, !dbg !221
  %idxprom406 = sext i32 %sub405 to i64, !dbg !221
  %arrayidx407 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom406, !dbg !221
  store i32 %68, i32* %arrayidx407, align 4, !dbg !221, !tbaa !90
  %69 = load i32* %mpcfree, align 4, !dbg !223, !tbaa !90
  store i32 %69, i32* %arrayidx403, align 4, !dbg !223, !tbaa !90
  store i32 %index1.1, i32* %mpcfree, align 4, !dbg !224, !tbaa !90
  %70 = load i32* %arrayidx407, align 4, !dbg !225, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !64), !dbg !225
  br label %if.end422

if.else417:                                       ; preds = %do.body386
  call void @llvm.dbg.value(metadata !{i32 %index1.1}, i64 0, metadata !66), !dbg !226
  %mul418 = mul nsw i32 %index1.1, 3, !dbg !228
  %sub419 = add nsw i32 %mul418, -1, !dbg !228
  %idxprom420 = sext i32 %sub419 to i64, !dbg !228
  %arrayidx421 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom420, !dbg !228
  %71 = load i32* %arrayidx421, align 4, !dbg !228, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !64), !dbg !228
  br label %if.end422

if.end422:                                        ; preds = %if.then396, %if.else399, %if.else417
  %index1.2 = phi i32 [ %index1.1, %if.then396 ], [ %70, %if.else399 ], [ %71, %if.else417 ]
  %index1old.1 = phi i32 [ 0, %if.then396 ], [ %index1old.0, %if.else399 ], [ %index1.1, %if.else417 ]
  %cmp423 = icmp eq i32 %index1.2, 0, !dbg !229
  br i1 %cmp423, label %for.inc429, label %do.body386, !dbg !229

for.inc429:                                       ; preds = %if.end422, %if.else286, %if.then153, %for.body88
  %nodempc.4 = phi i32* [ %nodempc.1.ph, %for.body88 ], [ %nodempc.1.ph, %if.then153 ], [ %nodempc.1.ph, %if.else286 ], [ %nodempc.2.ph, %if.end422 ]
  %idepend.6 = phi i32 [ %idepend.1.ph, %for.body88 ], [ %idepend.3, %if.then153 ], [ %idepend.2.ph, %if.else286 ], [ %idepend.4, %if.end422 ]
  %ichange.2 = phi i32 [ %ichange.0, %for.body88 ], [ %ichange.0, %if.then153 ], [ %ichange.0, %if.else286 ], [ 1, %if.end422 ]
  %coefmpc.4 = phi double* [ %coefmpc.1.ph, %for.body88 ], [ %coefmpc.1.ph, %if.then153 ], [ %coefmpc.1.ph, %if.else286 ], [ %coefmpc.2.ph, %if.end422 ]
  %inc430 = add nsw i32 %i.2, 1, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %inc430}, i64 0, metadata !38), !dbg !120
  %.pre = load i32* %nmpc, align 4, !dbg !120, !tbaa !90
  br label %for.cond85.outer, !dbg !120

for.cond85.outer:                                 ; preds = %entry, %for.cond27.preheader, %for.inc82, %for.inc429
  %72 = phi i32 [ %.pre, %for.inc429 ], [ %9, %for.cond27.preheader ], [ %11, %for.inc82 ], [ %4, %entry ], !dbg !120
  %nodempc.1.ph = phi i32* [ %nodempc.4, %for.inc429 ], [ %0, %for.cond27.preheader ], [ %0, %for.inc82 ], [ %0, %entry ]
  %idepend.1.ph = phi i32 [ %idepend.6, %for.inc429 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %ichange.0.ph = phi i32 [ %ichange.2, %for.inc429 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %i.2.ph = phi i32 [ %inc430, %for.inc429 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %coefmpc.1.ph = phi double* [ %coefmpc.4, %for.inc429 ], [ %1, %for.cond27.preheader ], [ %1, %for.inc82 ], [ %1, %entry ]
  br label %for.cond85

for.end431:                                       ; preds = %for.cond85
  %cmp432 = icmp eq i32 %ichange.0, 0, !dbg !230
  br i1 %cmp432, label %do.end437, label %for.cond85, !dbg !230

do.end437:                                        ; preds = %for.end431
  store i32 0, i32* %mpcend, align 4, !dbg !231, !tbaa !90
  store i32 0, i32* %mpcmult, align 4, !dbg !232, !tbaa !90
  store i32 0, i32* %maxlenmpc, align 4, !dbg !233, !tbaa !90
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !38), !dbg !234
  %73 = load i32* %nmpc, align 4, !dbg !234, !tbaa !90
  %cmp439687 = icmp sgt i32 %73, 0, !dbg !234
  br i1 %cmp439687, label %for.body441, label %for.end472, !dbg !234

for.body441:                                      ; preds = %do.end437, %if.then452
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then452 ], [ 0, %do.end437 ]
  %arrayidx443 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv, !dbg !236
  %74 = load i32* %arrayidx443, align 4, !dbg !236, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %74}, i64 0, metadata !40), !dbg !236
  %75 = load i32* %mpcend, align 4, !dbg !238, !tbaa !90
  %cmp444 = icmp slt i32 %75, %74, !dbg !238
  %.677 = select i1 %cmp444, i32 %74, i32 %75, !dbg !238
  store i32 %.677, i32* %mpcend, align 4, !dbg !238, !tbaa !90
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !43), !dbg !239
  %mul446681 = mul nsw i32 %74, 3, !dbg !240
  %sub447682 = add nsw i32 %mul446681, -1, !dbg !240
  %idxprom448683 = sext i32 %sub447682 to i64, !dbg !240
  %arrayidx449684 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom448683, !dbg !240
  %76 = load i32* %arrayidx449684, align 4, !dbg !240, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !40), !dbg !240
  %cmp450685 = icmp eq i32 %76, 0, !dbg !242
  br i1 %cmp450685, label %if.then452, label %if.end462, !dbg !242

if.then452:                                       ; preds = %if.end462, %for.body441
  %nterm.0.lcssa = phi i32 [ 1, %for.body441 ], [ %inc469, %if.end462 ]
  %sub453 = add nsw i32 %nterm.0.lcssa, -1, !dbg !243
  %mul454 = mul nsw i32 %sub453, %nterm.0.lcssa, !dbg !243
  %77 = load i32* %mpcmult, align 4, !dbg !243, !tbaa !90
  %add455 = add nsw i32 %77, %mul454, !dbg !243
  store i32 %add455, i32* %mpcmult, align 4, !dbg !243, !tbaa !90
  %78 = load i32* %maxlenmpc, align 4, !dbg !245, !tbaa !90
  %cmp456 = icmp slt i32 %78, %nterm.0.lcssa, !dbg !245
  %nterm.0. = select i1 %cmp456, i32 %nterm.0.lcssa, i32 %78, !dbg !245
  store i32 %nterm.0., i32* %maxlenmpc, align 4, !dbg !245, !tbaa !90
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !234
  %79 = load i32* %nmpc, align 4, !dbg !234, !tbaa !90
  %80 = trunc i64 %indvars.iv.next to i32, !dbg !234
  %cmp439 = icmp slt i32 %80, %79, !dbg !234
  br i1 %cmp439, label %for.body441, label %for.end472, !dbg !234

if.end462:                                        ; preds = %for.body441, %if.end462
  %81 = phi i32 [ %.678, %if.end462 ], [ %.677, %for.body441 ], !dbg !246
  %82 = phi i32 [ %83, %if.end462 ], [ %76, %for.body441 ]
  %nterm.0686 = phi i32 [ %inc469, %if.end462 ], [ 1, %for.body441 ]
  %cmp463 = icmp slt i32 %81, %82, !dbg !246
  %.678 = select i1 %cmp463, i32 %82, i32 %81, !dbg !246
  store i32 %.678, i32* %mpcend, align 4, !dbg !246, !tbaa !90
  %inc469 = add nsw i32 %nterm.0686, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc469}, i64 0, metadata !43), !dbg !247
  %mul446 = mul nsw i32 %82, 3, !dbg !240
  %sub447 = add nsw i32 %mul446, -1, !dbg !240
  %idxprom448 = sext i32 %sub447 to i64, !dbg !240
  %arrayidx449 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom448, !dbg !240
  %83 = load i32* %arrayidx449, align 4, !dbg !240, !tbaa !90
  call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !40), !dbg !240
  %cmp450 = icmp eq i32 %83, 0, !dbg !242
  br i1 %cmp450, label %if.then452, label %if.end462, !dbg !242

for.end472:                                       ; preds = %if.then452, %do.end437
  call void @free(i8* %call) #6, !dbg !248
  store i32* %nodempc.1.ph, i32** %nodempcp, align 8, !dbg !249, !tbaa !85
  store double* %coefmpc.1.ph, double** %coefmpcp, align 8, !dbg !250, !tbaa !85
  ret void, !dbg !251
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: optsize
declare void @nident_(i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @stop_(...) #2

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @strcpy1(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cascade", metadata !"cascade", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*)* @cascade, null, null, metadata !16, i32 31} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 31] [cascade]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !13, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !14, metadata !9, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!17 = metadata !{i32 786689, metadata !4, metadata !"ipompc", metadata !5, i32 16777243, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipompc] [line 27]
!18 = metadata !{i32 786689, metadata !4, metadata !"coefmpcp", metadata !5, i32 33554459, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coefmpcp] [line 27]
!19 = metadata !{i32 786689, metadata !4, metadata !"nodempcp", metadata !5, i32 50331675, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodempcp] [line 27]
!20 = metadata !{i32 786689, metadata !4, metadata !"nmpc", metadata !5, i32 67108891, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmpc] [line 27]
!21 = metadata !{i32 786689, metadata !4, metadata !"mpcfree", metadata !5, i32 83886108, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mpcfree] [line 28]
!22 = metadata !{i32 786689, metadata !4, metadata !"nodeboun", metadata !5, i32 100663324, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodeboun] [line 28]
!23 = metadata !{i32 786689, metadata !4, metadata !"ndirboun", metadata !5, i32 117440540, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndirboun] [line 28]
!24 = metadata !{i32 786689, metadata !4, metadata !"nboun", metadata !5, i32 134217756, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nboun] [line 28]
!25 = metadata !{i32 786689, metadata !4, metadata !"ikmpc", metadata !5, i32 150994972, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ikmpc] [line 28]
!26 = metadata !{i32 786689, metadata !4, metadata !"ilmpc", metadata !5, i32 167772189, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ilmpc] [line 29]
!27 = metadata !{i32 786689, metadata !4, metadata !"ikboun", metadata !5, i32 184549405, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ikboun] [line 29]
!28 = metadata !{i32 786689, metadata !4, metadata !"ilboun", metadata !5, i32 201326621, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ilboun] [line 29]
!29 = metadata !{i32 786689, metadata !4, metadata !"mpcend", metadata !5, i32 218103837, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mpcend] [line 29]
!30 = metadata !{i32 786689, metadata !4, metadata !"mpcmult", metadata !5, i32 234881053, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mpcmult] [line 29]
!31 = metadata !{i32 786689, metadata !4, metadata !"labmpc", metadata !5, i32 251658270, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [labmpc] [line 30]
!32 = metadata !{i32 786689, metadata !4, metadata !"labmpcLen", metadata !5, i32 268435486, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [labmpcLen] [line 30]
!33 = metadata !{i32 786689, metadata !4, metadata !"nk", metadata !5, i32 285212702, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nk] [line 30]
!34 = metadata !{i32 786689, metadata !4, metadata !"memmpc_", metadata !5, i32 301989918, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [memmpc_] [line 30]
!35 = metadata !{i32 786689, metadata !4, metadata !"icascade", metadata !5, i32 318767134, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icascade] [line 30]
!36 = metadata !{i32 786689, metadata !4, metadata !"maxlenmpc", metadata !5, i32 335544350, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlenmpc] [line 30]
!37 = metadata !{i32 786689, metadata !4, metadata !"callfrommain", metadata !5, i32 352321567, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [callfrommain] [line 31]
!38 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!39 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 52]
!40 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 52]
!41 = metadata !{i32 786688, metadata !4, metadata !"id", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 52]
!42 = metadata !{i32 786688, metadata !4, metadata !"idof", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idof] [line 52]
!43 = metadata !{i32 786688, metadata !4, metadata !"nterm", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nterm] [line 52]
!44 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 52]
!45 = metadata !{i32 786688, metadata !4, metadata !"icolumn", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icolumn] [line 52]
!46 = metadata !{i32 786688, metadata !4, metadata !"node", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 52]
!47 = metadata !{i32 786688, metadata !4, metadata !"idir", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idir] [line 52]
!48 = metadata !{i32 786688, metadata !4, metadata !"idepend", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idepend] [line 52]
!49 = metadata !{i32 786688, metadata !4, metadata !"irownl", metadata !5, i32 53, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irownl] [line 53]
!50 = metadata !{i32 786688, metadata !4, metadata !"icolnl", metadata !5, i32 53, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icolnl] [line 53]
!51 = metadata !{i32 786688, metadata !4, metadata !"ipointer", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipointer] [line 53]
!52 = metadata !{i32 786688, metadata !4, metadata !"icoef", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icoef] [line 53]
!53 = metadata !{i32 786688, metadata !4, metadata !"ifree", metadata !5, i32 53, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ifree] [line 53]
!54 = metadata !{i32 786688, metadata !4, metadata !"nodempc", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodempc] [line 53]
!55 = metadata !{i32 786688, metadata !4, metadata !"indepdof", metadata !5, i32 54, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indepdof] [line 54]
!56 = metadata !{i32 786688, metadata !4, metadata !"nindep", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nindep] [line 54]
!57 = metadata !{i32 786688, metadata !4, metadata !"ispooles", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ispooles] [line 54]
!58 = metadata !{i32 786688, metadata !4, metadata !"iexpand", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iexpand] [line 54]
!59 = metadata !{i32 786688, metadata !4, metadata !"ichange", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichange] [line 54]
!60 = metadata !{i32 786688, metadata !4, metadata !"indexold", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indexold] [line 54]
!61 = metadata !{i32 786688, metadata !4, metadata !"ip1", metadata !5, i32 54, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip1] [line 54]
!62 = metadata !{i32 786688, metadata !4, metadata !"mpc", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpc] [line 55]
!63 = metadata !{i32 786688, metadata !4, metadata !"indexnew", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indexnew] [line 55]
!64 = metadata !{i32 786688, metadata !4, metadata !"index1", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index1] [line 55]
!65 = metadata !{i32 786688, metadata !4, metadata !"index2", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index2] [line 55]
!66 = metadata !{i32 786688, metadata !4, metadata !"index1old", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index1old] [line 55]
!67 = metadata !{i32 786688, metadata !4, metadata !"index2old", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index2old] [line 55]
!68 = metadata !{i32 786688, metadata !4, metadata !"jmpc", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jmpc] [line 55]
!69 = metadata !{i32 786688, metadata !4, metadata !"nl", metadata !5, i32 55, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nl] [line 55]
!70 = metadata !{i32 786688, metadata !4, metadata !"coef", metadata !5, i32 57, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coef] [line 57]
!71 = metadata !{i32 786688, metadata !4, metadata !"xcoef", metadata !5, i32 57, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcoef] [line 57]
!72 = metadata !{i32 786688, metadata !4, metadata !"coefmpc", metadata !5, i32 57, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coefmpc] [line 57]
!73 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 57, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 57]
!74 = metadata !{i32 27, i32 0, metadata !4, null}
!75 = metadata !{i32 28, i32 0, metadata !4, null}
!76 = metadata !{i32 29, i32 0, metadata !4, null}
!77 = metadata !{i32 30, i32 0, metadata !4, null}
!78 = metadata !{i32 31, i32 0, metadata !4, null}
!79 = metadata !{i32 52, i32 0, metadata !4, null}
!80 = metadata !{i32* null}
!81 = metadata !{i32 55, i32 0, metadata !4, null}
!82 = metadata !{double* null}
!83 = metadata !{i32 57, i32 0, metadata !4, null}
!84 = metadata !{i32 59, i32 0, metadata !4, null}
!85 = metadata !{metadata !"any pointer", metadata !86}
!86 = metadata !{metadata !"omnipotent char", metadata !87}
!87 = metadata !{metadata !"Simple C/C++ TBAA"}
!88 = metadata !{i32 60, i32 0, metadata !4, null}
!89 = metadata !{i32 62, i32 0, metadata !4, null}
!90 = metadata !{metadata !"int", metadata !86}
!91 = metadata !{i32 63, i32 0, metadata !4, null}
!92 = metadata !{i32 64, i32 0, metadata !4, null}
!93 = metadata !{i32 69, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!95 = metadata !{i32 85, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!97 = metadata !{i32 70, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !94, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!99 = metadata !{i32 72, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !98, i32 72, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!101 = metadata !{i32 73, i32 0, metadata !98, null}
!102 = metadata !{i32 71, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !98, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!104 = metadata !{i32 74, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !98, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!106 = metadata !{i32 75, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !105, i32 74, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!108 = metadata !{i32 77, i32 0, metadata !107, null}
!109 = metadata !{i32 78, i32 0, metadata !107, null}
!110 = metadata !{i32 89, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !96, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!112 = metadata !{i32 90, i32 0, metadata !111, null}
!113 = metadata !{i32 91, i32 0, metadata !111, null}
!114 = metadata !{i32 95, i32 0, metadata !111, null}
!115 = metadata !{i32 96, i32 0, metadata !111, null}
!116 = metadata !{i32 97, i32 0, metadata !111, null}
!117 = metadata !{i32 102, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !111, i32 101, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!119 = metadata !{i32 103, i32 0, metadata !118, null}
!120 = metadata !{i32 116, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !122, i32 116, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!122 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!123 = metadata !{i32 117, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !121, i32 116, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!125 = metadata !{i32 119, i32 0, metadata !124, null}
!126 = metadata !{i32 120, i32 0, metadata !124, null}
!127 = metadata !{i32 121, i32 0, metadata !124, null}
!128 = metadata !{i32 123, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !124, i32 122, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!130 = metadata !{i32 124, i32 0, metadata !129, null}
!131 = metadata !{i32 125, i32 0, metadata !129, null}
!132 = metadata !{i32 133, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !129, i32 125, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!134 = metadata !{i32 134, i32 0, metadata !133, null}
!135 = metadata !{metadata !"double", metadata !86}
!136 = metadata !{i32 135, i32 0, metadata !133, null}
!137 = metadata !{i32 141, i32 0, metadata !133, null}
!138 = metadata !{i32 142, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !133, i32 141, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!140 = metadata !{i32 143, i32 0, metadata !139, null}
!141 = metadata !{i32 144, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !139, i32 143, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!143 = metadata !{i32 145, i32 0, metadata !142, null}
!144 = metadata !{i32 1}
!145 = metadata !{i32 146, i32 0, metadata !142, null}
!146 = metadata !{i32 148, i32 0, metadata !139, null}
!147 = metadata !{i32 149, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !139, i32 148, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!149 = metadata !{i32 150, i32 0, metadata !148, null}
!150 = metadata !{i32 158, i32 0, metadata !133, null}
!151 = metadata !{i32 161, i32 0, metadata !133, null}
!152 = metadata !{i32 162, i32 0, metadata !133, null}
!153 = metadata !{i32 163, i32 0, metadata !133, null}
!154 = metadata !{i32 164, i32 0, metadata !133, null}
!155 = metadata !{i32 165, i32 0, metadata !133, null}
!156 = metadata !{i32 166, i32 0, metadata !133, null}
!157 = metadata !{i32 167, i32 0, metadata !133, null}
!158 = metadata !{i32 168, i32 0, metadata !133, null}
!159 = metadata !{i32 169, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !133, i32 168, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!161 = metadata !{i32 170, i32 0, metadata !160, null}
!162 = metadata !{i32 171, i32 0, metadata !160, null}
!163 = metadata !{i32 172, i32 0, metadata !160, null}
!164 = metadata !{i32 173, i32 0, metadata !160, null}
!165 = metadata !{i32 174, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !160, i32 173, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!167 = metadata !{i32 175, i32 0, metadata !166, null}
!168 = metadata !{i32 176, i32 0, metadata !166, null}
!169 = metadata !{i32 177, i32 0, metadata !166, null}
!170 = metadata !{i32 178, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !166, i32 177, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!172 = metadata !{i32 179, i32 0, metadata !171, null}
!173 = metadata !{i32 180, i32 0, metadata !171, null}
!174 = metadata !{i32 181, i32 0, metadata !171, null}
!175 = metadata !{i32 182, i32 0, metadata !171, null}
!176 = metadata !{i32 183, i32 0, metadata !171, null}
!177 = metadata !{i32 184, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !171, i32 184, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!179 = metadata !{i32 185, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 184, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!181 = metadata !{i32 187, i32 0, metadata !171, null}
!182 = metadata !{i32 188, i32 0, metadata !171, null}
!183 = metadata !{i32 199, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !129, i32 198, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!185 = metadata !{i32 200, i32 0, metadata !184, null}
!186 = metadata !{i32 192, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !160, i32 191, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!188 = metadata !{i32 209, i32 0, metadata !124, null}
!189 = metadata !{i32 210, i32 0, metadata !124, null}
!190 = metadata !{i32 211, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !124, i32 210, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!192 = metadata !{i32 212, i32 0, metadata !191, null}
!193 = metadata !{i32 213, i32 0, metadata !191, null}
!194 = metadata !{i32 215, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !191, i32 214, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!196 = metadata !{i32 217, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !195, i32 216, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!198 = metadata !{i32 218, i32 0, metadata !197, null}
!199 = metadata !{i32 219, i32 0, metadata !197, null}
!200 = metadata !{i32 220, i32 0, metadata !197, null}
!201 = metadata !{i32 221, i32 0, metadata !197, null}
!202 = metadata !{i32 222, i32 0, metadata !197, null}
!203 = metadata !{i32 225, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !195, i32 224, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!205 = metadata !{i32 226, i32 0, metadata !204, null}
!206 = metadata !{i32 227, i32 0, metadata !204, null}
!207 = metadata !{i32 230, i32 0, metadata !191, null}
!208 = metadata !{i32 231, i32 0, metadata !191, null}
!209 = metadata !{i32 237, i32 0, metadata !124, null}
!210 = metadata !{i32 238, i32 0, metadata !124, null}
!211 = metadata !{i32 239, i32 0, metadata !124, null}
!212 = metadata !{i32 240, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !124, i32 239, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!214 = metadata !{i32 241, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 240, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!216 = metadata !{i32 242, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !215, i32 241, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!218 = metadata !{i32 243, i32 0, metadata !217, null}
!219 = metadata !{i32 244, i32 0, metadata !217, null}
!220 = metadata !{i32 245, i32 0, metadata !217, null}
!221 = metadata !{i32 247, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !215, i32 246, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!223 = metadata !{i32 248, i32 0, metadata !222, null}
!224 = metadata !{i32 249, i32 0, metadata !222, null}
!225 = metadata !{i32 250, i32 0, metadata !222, null}
!226 = metadata !{i32 254, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !213, i32 253, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!228 = metadata !{i32 255, i32 0, metadata !227, null}
!229 = metadata !{i32 257, i32 0, metadata !213, null}
!230 = metadata !{i32 260, i32 0, metadata !122, null}
!231 = metadata !{i32 266, i32 0, metadata !4, null}
!232 = metadata !{i32 267, i32 0, metadata !4, null}
!233 = metadata !{i32 268, i32 0, metadata !4, null}
!234 = metadata !{i32 270, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !4, i32 270, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!236 = metadata !{i32 271, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !235, i32 270, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!238 = metadata !{i32 272, i32 0, metadata !237, null}
!239 = metadata !{i32 273, i32 0, metadata !237, null}
!240 = metadata !{i32 277, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !237, i32 274, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!242 = metadata !{i32 278, i32 0, metadata !241, null}
!243 = metadata !{i32 279, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !241, i32 278, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c]
!245 = metadata !{i32 280, i32 0, metadata !244, null}
!246 = metadata !{i32 283, i32 0, metadata !241, null}
!247 = metadata !{i32 284, i32 0, metadata !241, null}
!248 = metadata !{i32 288, i32 0, metadata !4, null}
!249 = metadata !{i32 291, i32 0, metadata !4, null}
!250 = metadata !{i32 292, i32 0, metadata !4, null}
!251 = metadata !{i32 299, i32 0, metadata !4, null}
