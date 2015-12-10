; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in BPG_init(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"\0A fatal error in BPG_initFromColoring(%p,%p,%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in BPG_initFromColoring\0A nX = %d, nY = %d\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"\0A colors\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"\0A graph\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BPG_init(%struct._BPG* %bpg, i32 %nX, i32 %nY, %struct._Graph* %graph) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !55), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %nX}, i64 0, metadata !56), !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %nY}, i64 0, metadata !57), !dbg !100
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !58), !dbg !101
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !63), !dbg !102
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !65), !dbg !103
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !104
  %cmp1 = icmp slt i32 %nX, 1, !dbg !104
  %or.cond = or i1 %cmp, %cmp1, !dbg !104
  %cmp3 = icmp slt i32 %nY, 1, !dbg !104
  %or.cond100 = or i1 %or.cond, %cmp3, !dbg !104
  %cmp5 = icmp eq %struct._Graph* %graph, null, !dbg !104
  %or.cond101 = or i1 %or.cond100, %cmp5, !dbg !104
  br i1 %or.cond101, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !107
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i32 %nX, i32 %nY, %struct._Graph* %graph) #6, !dbg !105
  call void @exit(i32 -1) #7, !dbg !110
  unreachable, !dbg !110

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !111
  %nX6 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !112
  store i32 %nX, i32* %nX6, align 4, !dbg !112, !tbaa !113
  %nY7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !114
  store i32 %nY, i32* %nY7, align 4, !dbg !114, !tbaa !113
  %graph8 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !115
  store %struct._Graph* %graph, %struct._Graph** %graph8, align 8, !dbg !115, !tbaa !107
  %adjIVL9 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !116
  %1 = load %struct._IVL** %adjIVL9, align 8, !dbg !116, !tbaa !107
  call void @llvm.dbg.value(metadata !{%struct._IVL* %1}, i64 0, metadata !66), !dbg !116
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !117
  %cmp10124 = icmp sgt i32 %nX, 0, !dbg !117
  %add = add nsw i32 %nY, %nX, !dbg !119
  br i1 %cmp10124, label %for.body, label %for.cond23.preheader, !dbg !117

for.cond23.preheader:                             ; preds = %if.end, %while.end
  %cmp25112 = icmp sgt i32 %nY, 0, !dbg !122
  br i1 %cmp25112, label %for.body26, label %for.end50, !dbg !122

for.body:                                         ; preds = %if.end, %while.end
  %v.0125 = phi i32 [ %inc22, %while.end ], [ 0, %if.end ]
  call void @IVL_listAndSize(%struct._IVL* %1, i32 %v.0125, i32* %vsize, i32** %vadj) #6, !dbg !124
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !125
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !63), !dbg !125
  %2 = load i32* %vsize, align 4, !dbg !125, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !61), !dbg !125
  %cmp11116120 = icmp slt i32 %2, 1, !dbg !126
  br i1 %cmp11116120, label %while.end, label %while.body.lr.ph.lr.ph, !dbg !126

while.body.lr.ph.lr.ph:                           ; preds = %for.body
  %sub = add nsw i32 %2, -1, !dbg !125
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !127
  %3 = load i32** %vadj, align 8, !dbg !127, !tbaa !107
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !128
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !130
  %4 = sext i32 %2 to i64
  br label %while.body.lr.ph, !dbg !126

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.else
  %indvars.iv139.in = phi i64 [ %4, %while.body.lr.ph.lr.ph ], [ %indvars.iv139, %if.else ]
  %ii.0.ph122 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %ii.0117, %if.else ]
  %jj.0.ph121 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.else ]
  %indvars.iv139 = add i64 %indvars.iv139.in, -1, !dbg !126
  %5 = sext i32 %ii.0.ph122 to i64
  br label %while.body, !dbg !126

while.cond:                                       ; preds = %land.lhs.true
  %indvars.iv.next138 = add i64 %indvars.iv137, 1, !dbg !126
  %6 = trunc i64 %indvars.iv137 to i32, !dbg !126
  %7 = trunc i64 %indvars.iv139 to i32, !dbg !126
  %cmp11 = icmp slt i32 %6, %7, !dbg !126
  br i1 %cmp11, label %while.body, label %while.end, !dbg !126

while.body:                                       ; preds = %while.cond, %while.body.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %while.cond ], [ %5, %while.body.lr.ph ]
  %ii.0117 = phi i32 [ %inc, %while.cond ], [ %ii.0.ph122, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !127
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv137, !dbg !127
  %8 = load i32* %arrayidx, align 4, !dbg !127, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !64), !dbg !127
  %cmp12 = icmp slt i32 %8, %nX, !dbg !119
  br i1 %cmp12, label %if.else, label %land.lhs.true, !dbg !119

land.lhs.true:                                    ; preds = %while.body
  %cmp13 = icmp slt i32 %8, %add, !dbg !119
  %inc = add nsw i32 %ii.0117, 1, !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !60), !dbg !131
  br i1 %cmp13, label %while.cond, label %if.else, !dbg !119

if.else:                                          ; preds = %while.body, %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !128
  %arrayidx16 = getelementptr inbounds i32* %3, i64 %indvars.iv139, !dbg !128
  %9 = load i32* %arrayidx16, align 4, !dbg !128, !tbaa !113
  store i32 %9, i32* %arrayidx, align 4, !dbg !128, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !130
  store i32 %8, i32* %arrayidx16, align 4, !dbg !130, !tbaa !113
  %dec = add nsw i32 %jj.0.ph121, -1, !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !61), !dbg !133
  %cmp11116 = icmp sgt i32 %ii.0117, %dec, !dbg !126
  br i1 %cmp11116, label %while.end, label %while.body.lr.ph, !dbg !126

while.end:                                        ; preds = %for.body, %if.else, %while.cond
  %ii.0.lcssa = phi i32 [ %inc, %while.cond ], [ 0, %for.body ], [ %ii.0117, %if.else ]
  call void @llvm.dbg.value(metadata !{i32 %ii.0117}, i64 0, metadata !63), !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %ii.0.lcssa}, i64 0, metadata !63), !dbg !134
  store i32 %ii.0.lcssa, i32* %vsize, align 4, !dbg !134, !tbaa !113
  call void @IVL_setList(%struct._IVL* %1, i32 %v.0125, i32 %ii.0.lcssa, i32* null) #6, !dbg !135
  %inc22 = add nsw i32 %v.0125, 1, !dbg !117
  call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !62), !dbg !117
  %exitcond = icmp eq i32 %inc22, %nX, !dbg !117
  br i1 %exitcond, label %for.cond23.preheader, label %for.body, !dbg !117

for.body26:                                       ; preds = %for.cond23.preheader, %while.end47
  %v.1113 = phi i32 [ %inc49, %while.end47 ], [ %nX, %for.cond23.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %1, i32 %v.1113, i32* %vsize, i32** %vadj) #6, !dbg !136
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !138
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !63), !dbg !138
  %10 = load i32* %vsize, align 4, !dbg !138, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %sub27}, i64 0, metadata !61), !dbg !138
  %cmp29105108 = icmp slt i32 %10, 1, !dbg !139
  br i1 %cmp29105108, label %while.end47, label %while.body30.lr.ph.lr.ph, !dbg !139

while.body30.lr.ph.lr.ph:                         ; preds = %for.body26
  %sub27 = add nsw i32 %10, -1, !dbg !138
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !140
  %11 = load i32** %vadj, align 8, !dbg !140, !tbaa !107
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !142
  %12 = sext i32 %10 to i64
  br label %while.body30.lr.ph, !dbg !139

while.body30.lr.ph:                               ; preds = %while.body30.lr.ph.lr.ph, %if.else38
  %indvars.iv130.in = phi i64 [ %12, %while.body30.lr.ph.lr.ph ], [ %indvars.iv130, %if.else38 ]
  %ii.1.ph110 = phi i32 [ 0, %while.body30.lr.ph.lr.ph ], [ %ii.1106, %if.else38 ]
  %jj.1.ph109 = phi i32 [ %sub27, %while.body30.lr.ph.lr.ph ], [ %dec45, %if.else38 ]
  %indvars.iv130 = add i64 %indvars.iv130.in, -1, !dbg !139
  %13 = sext i32 %ii.1.ph110 to i64
  br label %while.body30, !dbg !139

while.cond28:                                     ; preds = %while.body30
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !139
  %14 = trunc i64 %indvars.iv to i32, !dbg !139
  %15 = trunc i64 %indvars.iv130 to i32, !dbg !139
  %cmp29 = icmp slt i32 %14, %15, !dbg !139
  br i1 %cmp29, label %while.body30, label %while.end47, !dbg !139

while.body30:                                     ; preds = %while.cond28, %while.body30.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond28 ], [ %13, %while.body30.lr.ph ]
  %ii.1106 = phi i32 [ %inc37, %while.cond28 ], [ %ii.1.ph110, %while.body30.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !140
  %arrayidx32 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !140
  %16 = load i32* %arrayidx32, align 4, !dbg !140, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !64), !dbg !140
  %cmp33 = icmp sgt i32 %16, -1, !dbg !144
  %cmp35 = icmp slt i32 %16, %nX, !dbg !144
  %or.cond102 = and i1 %cmp33, %cmp35, !dbg !144
  %inc37 = add nsw i32 %ii.1106, 1, !dbg !145
  call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !60), !dbg !145
  br i1 %or.cond102, label %while.cond28, label %if.else38, !dbg !144

if.else38:                                        ; preds = %while.body30
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !147
  %arrayidx40 = getelementptr inbounds i32* %11, i64 %indvars.iv130, !dbg !147
  %17 = load i32* %arrayidx40, align 4, !dbg !147, !tbaa !113
  store i32 %17, i32* %arrayidx32, align 4, !dbg !147, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !65), !dbg !142
  store i32 %16, i32* %arrayidx40, align 4, !dbg !142, !tbaa !113
  %dec45 = add nsw i32 %jj.1.ph109, -1, !dbg !148
  call void @llvm.dbg.value(metadata !{i32 %dec45}, i64 0, metadata !61), !dbg !148
  %cmp29105 = icmp sgt i32 %ii.1106, %dec45, !dbg !139
  br i1 %cmp29105, label %while.end47, label %while.body30.lr.ph, !dbg !139

while.end47:                                      ; preds = %for.body26, %if.else38, %while.cond28
  %ii.1.lcssa = phi i32 [ %inc37, %while.cond28 ], [ 0, %for.body26 ], [ %ii.1106, %if.else38 ]
  call void @llvm.dbg.value(metadata !{i32 %ii.1106}, i64 0, metadata !63), !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %ii.1.lcssa}, i64 0, metadata !63), !dbg !149
  store i32 %ii.1.lcssa, i32* %vsize, align 4, !dbg !149, !tbaa !113
  call void @IVL_setList(%struct._IVL* %1, i32 %v.1113, i32 %ii.1.lcssa, i32* null) #6, !dbg !150
  %inc49 = add nsw i32 %v.1113, 1, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %inc49}, i64 0, metadata !62), !dbg !122
  %cmp25 = icmp slt i32 %inc49, %add, !dbg !122
  br i1 %cmp25, label %for.body26, label %for.end50, !dbg !122

for.end50:                                        ; preds = %while.end47, %for.cond23.preheader
  ret void, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #4

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @BPG_initFromColoring(%struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap, i32* nocapture %indX, i32* nocapture %indY) #0 {
entry:
  %ierr = alloca i32, align 4
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %vewghts = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !71), !dbg !152
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !72), !dbg !153
  call void @llvm.dbg.value(metadata !{i32* %colors}, i64 0, metadata !73), !dbg !154
  call void @llvm.dbg.value(metadata !{i32 %cX}, i64 0, metadata !74), !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %cY}, i64 0, metadata !75), !dbg !156
  call void @llvm.dbg.value(metadata !{i32* %cmap}, i64 0, metadata !76), !dbg !157
  call void @llvm.dbg.value(metadata !{i32* %indX}, i64 0, metadata !77), !dbg !158
  call void @llvm.dbg.value(metadata !{i32* %indY}, i64 0, metadata !78), !dbg !159
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !81), !dbg !160
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !90), !dbg !160
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !96), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32** %vewghts}, metadata !97), !dbg !161
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !162
  %cmp1 = icmp eq %struct._Graph* %graph, null, !dbg !162
  %or.cond = or i1 %cmp, %cmp1, !dbg !162
  %cmp3 = icmp eq i32* %colors, null, !dbg !162
  %or.cond441 = or i1 %or.cond, %cmp3, !dbg !162
  %cmp5 = icmp slt i32 %cX, 0, !dbg !162
  %or.cond442 = or i1 %or.cond441, %cmp5, !dbg !162
  %cmp7 = icmp slt i32 %cY, 0, !dbg !162
  %or.cond443 = or i1 %or.cond442, %cmp7, !dbg !162
  %cmp9 = icmp eq i32 %cX, %cY, !dbg !162
  %or.cond444 = or i1 %or.cond443, %cmp9, !dbg !162
  %cmp11 = icmp eq i32* %cmap, null, !dbg !162
  %or.cond445 = or i1 %or.cond444, %cmp11, !dbg !162
  br i1 %or.cond445, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !107
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), %struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap) #6, !dbg !163
  call void @exit(i32 -1) #7, !dbg !165
  unreachable, !dbg !165

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !166
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !167
  %1 = load i32* %nvtx, align 4, !dbg !167, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !86), !dbg !167
  call void @IVfill(i32 %1, i32* %cmap, i32 -1) #6, !dbg !168
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !89), !dbg !169
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !169
  %cmp12487 = icmp sgt i32 %1, 0, !dbg !169
  br i1 %cmp12487, label %for.body, label %for.end51, !dbg !169

for.cond21.preheader:                             ; preds = %for.inc
  %cmp22482 = icmp sgt i32 %nX.1, 0, !dbg !171
  br i1 %cmp22482, label %for.body23, label %for.end51, !dbg !171

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %for.inc ], [ 0, %if.end ]
  %nX.0488 = phi i32 [ %nX.1, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %colors, i64 %indvars.iv527, !dbg !173
  %2 = load i32* %arrayidx, align 4, !dbg !173, !tbaa !113
  %cmp13 = icmp eq i32 %2, %cX, !dbg !173
  br i1 %cmp13, label %if.then14, label %for.inc, !dbg !173

if.then14:                                        ; preds = %for.body
  %idxprom15 = sext i32 %nX.0488 to i64, !dbg !175
  %arrayidx16 = getelementptr inbounds i32* %indX, i64 %idxprom15, !dbg !175
  %3 = trunc i64 %indvars.iv527 to i32, !dbg !175
  store i32 %3, i32* %arrayidx16, align 4, !dbg !175, !tbaa !113
  %inc = add nsw i32 %nX.0488, 1, !dbg !177
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !87), !dbg !177
  %arrayidx18 = getelementptr inbounds i32* %cmap, i64 %indvars.iv527, !dbg !177
  store i32 %nX.0488, i32* %arrayidx18, align 4, !dbg !177, !tbaa !113
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %for.body, %if.then14
  %nX.1 = phi i32 [ %inc, %if.then14 ], [ %nX.0488, %for.body ]
  %indvars.iv.next528 = add i64 %indvars.iv527, 1, !dbg !169
  %lftr.wideiv529 = trunc i64 %indvars.iv.next528 to i32, !dbg !169
  %exitcond530 = icmp eq i32 %lftr.wideiv529, %1, !dbg !169
  br i1 %exitcond530, label %for.cond21.preheader, label %for.body, !dbg !169

for.body23:                                       ; preds = %for.cond21.preheader, %for.inc49
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %for.inc49 ], [ 0, %for.cond21.preheader ]
  %nY.0484 = phi i32 [ %nY.1.lcssa, %for.inc49 ], [ 0, %for.cond21.preheader ]
  %arrayidx25 = getelementptr inbounds i32* %indX, i64 %indvars.iv523, !dbg !179
  %4 = load i32* %arrayidx25, align 4, !dbg !179, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !89), !dbg !179
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %4, i32* %vsize, i32** %vadj) #6, !dbg !181
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !182
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !182
  %5 = load i32* %vsize, align 4, !dbg !182, !tbaa !113
  %cmp27477 = icmp sgt i32 %5, 0, !dbg !182
  br i1 %cmp27477, label %for.body28.lr.ph, label %for.inc49, !dbg !182

for.body28.lr.ph:                                 ; preds = %for.body23
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !184
  %6 = load i32** %vadj, align 8, !dbg !184, !tbaa !107
  br label %for.body28, !dbg !182

for.body28:                                       ; preds = %for.body28.lr.ph, %for.inc46
  %indvars.iv521 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next522, %for.inc46 ]
  %nY.1478 = phi i32 [ %nY.0484, %for.body28.lr.ph ], [ %nY.2, %for.inc46 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !184
  %arrayidx30 = getelementptr inbounds i32* %6, i64 %indvars.iv521, !dbg !184
  %7 = load i32* %arrayidx30, align 4, !dbg !184, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !91), !dbg !184
  %cmp31 = icmp slt i32 %7, %1, !dbg !184
  br i1 %cmp31, label %land.lhs.true, label %for.inc46, !dbg !184

land.lhs.true:                                    ; preds = %for.body28
  %idxprom32 = sext i32 %7 to i64, !dbg !184
  %arrayidx33 = getelementptr inbounds i32* %colors, i64 %idxprom32, !dbg !184
  %8 = load i32* %arrayidx33, align 4, !dbg !184, !tbaa !113
  %cmp34 = icmp eq i32 %8, %cY, !dbg !184
  br i1 %cmp34, label %land.lhs.true35, label %for.inc46, !dbg !184

land.lhs.true35:                                  ; preds = %land.lhs.true
  %arrayidx37 = getelementptr inbounds i32* %cmap, i64 %idxprom32, !dbg !184
  %9 = load i32* %arrayidx37, align 4, !dbg !184, !tbaa !113
  %cmp38 = icmp eq i32 %9, -1, !dbg !184
  br i1 %cmp38, label %if.then39, label %for.inc46, !dbg !184

if.then39:                                        ; preds = %land.lhs.true35
  %idxprom40 = sext i32 %nY.1478 to i64, !dbg !186
  %arrayidx41 = getelementptr inbounds i32* %indY, i64 %idxprom40, !dbg !186
  store i32 %7, i32* %arrayidx41, align 4, !dbg !186, !tbaa !113
  %inc42 = add nsw i32 %nY.1478, 1, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !88), !dbg !188
  %add = add nsw i32 %nY.1478, %nX.1, !dbg !188
  store i32 %add, i32* %arrayidx37, align 4, !dbg !188, !tbaa !113
  br label %for.inc46, !dbg !189

for.inc46:                                        ; preds = %for.body28, %land.lhs.true, %land.lhs.true35, %if.then39
  %nY.2 = phi i32 [ %inc42, %if.then39 ], [ %nY.1478, %land.lhs.true35 ], [ %nY.1478, %land.lhs.true ], [ %nY.1478, %for.body28 ]
  %indvars.iv.next522 = add i64 %indvars.iv521, 1, !dbg !182
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !182
  %10 = trunc i64 %indvars.iv.next522 to i32, !dbg !182
  %cmp27 = icmp slt i32 %10, %5, !dbg !182
  br i1 %cmp27, label %for.body28, label %for.inc49, !dbg !182

for.inc49:                                        ; preds = %for.inc46, %for.body23
  %nY.1.lcssa = phi i32 [ %nY.0484, %for.body23 ], [ %nY.2, %for.inc46 ]
  %indvars.iv.next524 = add i64 %indvars.iv523, 1, !dbg !171
  %lftr.wideiv525 = trunc i64 %indvars.iv.next524 to i32, !dbg !171
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %nX.1, !dbg !171
  br i1 %exitcond526, label %for.end51, label %for.body23, !dbg !171

for.end51:                                        ; preds = %if.end, %for.inc49, %for.cond21.preheader
  %cmp22482537 = phi i1 [ false, %for.cond21.preheader ], [ %cmp22482, %for.inc49 ], [ false, %if.end ]
  %nX.0.lcssa536 = phi i32 [ %nX.1, %for.cond21.preheader ], [ %nX.1, %for.inc49 ], [ 0, %if.end ]
  %nY.0.lcssa = phi i32 [ 0, %for.cond21.preheader ], [ %nY.1.lcssa, %for.inc49 ], [ 0, %if.end ]
  %nX52 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !190
  store i32 %nX.0.lcssa536, i32* %nX52, align 4, !dbg !190, !tbaa !113
  %nY53 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !191
  store i32 %nY.0.lcssa, i32* %nY53, align 4, !dbg !191, !tbaa !113
  %cmp55 = icmp eq i32 %nX.0.lcssa536, 0, !dbg !192
  %cmp58 = icmp eq i32 %nY.0.lcssa, 0, !dbg !192
  %or.cond446 = or i1 %cmp55, %cmp58, !dbg !192
  br i1 %or.cond446, label %if.then59, label %if.end65, !dbg !192

if.then59:                                        ; preds = %for.end51
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !193, !tbaa !107
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 %nX.0.lcssa536, i32 %nY.0.lcssa) #6, !dbg !193
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !195, !tbaa !107
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %12), !dbg !195
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !107
  %call62 = call i32 @IVfp80(%struct._IO_FILE* %14, i32 %1, i32* %colors, i32 80, i32* %ierr) #6, !dbg !196
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !107
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %15), !dbg !197
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !107
  %call64 = call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %17) #6, !dbg !198
  call void @exit(i32 -1) #7, !dbg !199
  unreachable, !dbg !199

if.end65:                                         ; preds = %for.end51
  %call66 = call %struct._Graph* @Graph_new() #6, !dbg !200
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call66}, i64 0, metadata !79), !dbg !200
  %graph67 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !200
  store %struct._Graph* %call66, %struct._Graph** %graph67, align 8, !dbg !200, !tbaa !107
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !201
  %18 = load i32* %type, align 4, !dbg !201, !tbaa !113
  %add68 = add nsw i32 %nY.0.lcssa, %nX.0.lcssa536, !dbg !201
  call void @Graph_init1(%struct._Graph* %call66, i32 %18, i32 %add68, i32 0, i32 0, i32 1, i32 1) #6, !dbg !201
  %19 = load i32* %type, align 4, !dbg !202, !tbaa !113
  %rem = srem i32 %19, 2, !dbg !202
  %cmp70 = icmp eq i32 %rem, 1, !dbg !202
  br i1 %cmp70, label %for.cond72.preheader, label %if.end103, !dbg !202

for.cond72.preheader:                             ; preds = %if.end65
  br i1 %cmp22482537, label %for.body74.lr.ph, label %for.cond85.preheader, !dbg !203

for.body74.lr.ph:                                 ; preds = %for.cond72.preheader
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !206
  %20 = load i32** %vwghts, align 8, !dbg !206, !tbaa !107
  %vwghts80 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7, !dbg !206
  %21 = load i32** %vwghts80, align 8, !dbg !206, !tbaa !107
  br label %for.body74, !dbg !203

for.cond85.preheader:                             ; preds = %for.body74, %for.cond72.preheader
  %cmp86472 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !208
  br i1 %cmp86472, label %for.body87.lr.ph, label %for.cond85.preheader.for.end99_crit_edge, !dbg !208

for.cond85.preheader.for.end99_crit_edge:         ; preds = %for.cond85.preheader
  %vwghts101.phi.trans.insert = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7
  %.pre534 = load i32** %vwghts101.phi.trans.insert, align 8, !dbg !210, !tbaa !107
  br label %for.end99, !dbg !208

for.body87.lr.ph:                                 ; preds = %for.cond85.preheader
  %vwghts91 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !211
  %22 = load i32** %vwghts91, align 8, !dbg !211, !tbaa !107
  %vwghts94 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7, !dbg !211
  %23 = load i32** %vwghts94, align 8, !dbg !211, !tbaa !107
  %24 = sext i32 %nX.0.lcssa536 to i64
  br label %for.body87, !dbg !208

for.body74:                                       ; preds = %for.body74, %for.body74.lr.ph
  %indvars.iv517 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next518, %for.body74 ]
  %arrayidx76 = getelementptr inbounds i32* %indX, i64 %indvars.iv517, !dbg !213
  %25 = load i32* %arrayidx76, align 4, !dbg !213, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !89), !dbg !213
  %idxprom77 = sext i32 %25 to i64, !dbg !206
  %arrayidx78 = getelementptr inbounds i32* %20, i64 %idxprom77, !dbg !206
  %26 = load i32* %arrayidx78, align 4, !dbg !206, !tbaa !113
  %arrayidx81 = getelementptr inbounds i32* %21, i64 %indvars.iv517, !dbg !206
  store i32 %26, i32* %arrayidx81, align 4, !dbg !206, !tbaa !113
  %indvars.iv.next518 = add i64 %indvars.iv517, 1, !dbg !203
  %lftr.wideiv519 = trunc i64 %indvars.iv.next518 to i32, !dbg !203
  %exitcond520 = icmp eq i32 %lftr.wideiv519, %nX.0.lcssa536, !dbg !203
  br i1 %exitcond520, label %for.cond85.preheader, label %for.body74, !dbg !203

for.body87:                                       ; preds = %for.body87, %for.body87.lr.ph
  %indvars.iv513 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next514, %for.body87 ], !dbg !208
  %indvars.iv511 = phi i64 [ %24, %for.body87.lr.ph ], [ %indvars.iv.next512, %for.body87 ]
  %arrayidx89 = getelementptr inbounds i32* %indY, i64 %indvars.iv513, !dbg !214
  %27 = load i32* %arrayidx89, align 4, !dbg !214, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !89), !dbg !214
  %idxprom90 = sext i32 %27 to i64, !dbg !211
  %arrayidx92 = getelementptr inbounds i32* %22, i64 %idxprom90, !dbg !211
  %28 = load i32* %arrayidx92, align 4, !dbg !211, !tbaa !113
  %arrayidx95 = getelementptr inbounds i32* %23, i64 %indvars.iv511, !dbg !211
  store i32 %28, i32* %arrayidx95, align 4, !dbg !211, !tbaa !113
  %indvars.iv.next514 = add i64 %indvars.iv513, 1, !dbg !208
  %indvars.iv.next512 = add i64 %indvars.iv511, 1, !dbg !208
  %lftr.wideiv515 = trunc i64 %indvars.iv.next514 to i32, !dbg !208
  %exitcond516 = icmp eq i32 %lftr.wideiv515, %nY.0.lcssa, !dbg !208
  br i1 %exitcond516, label %for.end99, label %for.body87, !dbg !208

for.end99:                                        ; preds = %for.body87, %for.cond85.preheader.for.end99_crit_edge
  %29 = phi i32* [ %.pre534, %for.cond85.preheader.for.end99_crit_edge ], [ %23, %for.body87 ]
  %call102 = call i32 @IVsum(i32 %add68, i32* %29) #6, !dbg !210
  %totvwght = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 4, !dbg !210
  store i32 %call102, i32* %totvwght, align 4, !dbg !210, !tbaa !113
  %.pr = load i32* %type, align 4, !dbg !215, !tbaa !113
  br label %if.end103, !dbg !216

if.end103:                                        ; preds = %for.end99, %if.end65
  %30 = phi i32 [ %.pr, %for.end99 ], [ %19, %if.end65 ], !dbg !215
  %cmp105 = icmp slt i32 %30, 2, !dbg !215
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !217
  %31 = load %struct._IVL** %adjIVL, align 8, !dbg !217, !tbaa !107
  %call107 = call i32 @IVL_maxListSize(%struct._IVL* %31) #6, !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %call107}, i64 0, metadata !85), !dbg !217
  %call108 = call i32* @IVinit2(i32 %call107) #6, !dbg !219
  call void @llvm.dbg.value(metadata !{i32* %call108}, i64 0, metadata !95), !dbg !219
  br i1 %cmp105, label %for.cond109.preheader, label %if.else, !dbg !215

for.cond109.preheader:                            ; preds = %if.end103
  br i1 %cmp22482537, label %for.body111.lr.ph, label %for.cond138.preheader, !dbg !220

for.body111.lr.ph:                                ; preds = %for.cond109.preheader
  %adjIVL134 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6, !dbg !222
  br label %for.body111, !dbg !220

for.cond138.preheader:                            ; preds = %for.end133, %for.cond109.preheader
  %cmp139450 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !224
  br i1 %cmp139450, label %for.body140.lr.ph, label %for.end167, !dbg !224

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %adjIVL163 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6, !dbg !226
  br label %for.body140, !dbg !224

for.body111:                                      ; preds = %for.end133, %for.body111.lr.ph
  %indvars.iv495 = phi i64 [ 0, %for.body111.lr.ph ], [ %indvars.iv.next496, %for.end133 ]
  %arrayidx113 = getelementptr inbounds i32* %indX, i64 %indvars.iv495, !dbg !228
  %32 = load i32* %arrayidx113, align 4, !dbg !228, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !89), !dbg !228
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %32, i32* %vsize, i32** %vadj) #6, !dbg !229
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !230
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !230
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !230
  %33 = load i32* %vsize, align 4, !dbg !230, !tbaa !113
  %cmp115453 = icmp sgt i32 %33, 0, !dbg !230
  br i1 %cmp115453, label %for.body116.lr.ph, label %for.end133, !dbg !230

for.body116.lr.ph:                                ; preds = %for.body111
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !232
  %34 = load i32** %vadj, align 8, !dbg !232, !tbaa !107
  br label %for.body116, !dbg !230

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc131
  %35 = phi i32 [ %33, %for.body116.lr.ph ], [ %39, %for.inc131 ]
  %indvars.iv493 = phi i64 [ 0, %for.body116.lr.ph ], [ %indvars.iv.next494, %for.inc131 ]
  %count.0455 = phi i32 [ 0, %for.body116.lr.ph ], [ %count.1, %for.inc131 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !232
  %arrayidx118 = getelementptr inbounds i32* %34, i64 %indvars.iv493, !dbg !232
  %36 = load i32* %arrayidx118, align 4, !dbg !232, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !91), !dbg !232
  %cmp119 = icmp slt i32 %36, %1, !dbg !232
  br i1 %cmp119, label %land.lhs.true120, label %for.inc131, !dbg !232

land.lhs.true120:                                 ; preds = %for.body116
  %idxprom121 = sext i32 %36 to i64, !dbg !232
  %arrayidx122 = getelementptr inbounds i32* %colors, i64 %idxprom121, !dbg !232
  %37 = load i32* %arrayidx122, align 4, !dbg !232, !tbaa !113
  %cmp123 = icmp eq i32 %37, %cY, !dbg !232
  br i1 %cmp123, label %if.then124, label %for.inc131, !dbg !232

if.then124:                                       ; preds = %land.lhs.true120
  %arrayidx126 = getelementptr inbounds i32* %cmap, i64 %idxprom121, !dbg !234
  %38 = load i32* %arrayidx126, align 4, !dbg !234, !tbaa !113
  %inc127 = add nsw i32 %count.0455, 1, !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !80), !dbg !234
  %idxprom128 = sext i32 %count.0455 to i64, !dbg !234
  %arrayidx129 = getelementptr inbounds i32* %call108, i64 %idxprom128, !dbg !234
  store i32 %38, i32* %arrayidx129, align 4, !dbg !234, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !230
  %.pre533 = load i32* %vsize, align 4, !dbg !230, !tbaa !113
  br label %for.inc131, !dbg !236

for.inc131:                                       ; preds = %for.body116, %land.lhs.true120, %if.then124
  %39 = phi i32 [ %.pre533, %if.then124 ], [ %35, %land.lhs.true120 ], [ %35, %for.body116 ], !dbg !230
  %count.1 = phi i32 [ %inc127, %if.then124 ], [ %count.0455, %land.lhs.true120 ], [ %count.0455, %for.body116 ]
  %indvars.iv.next494 = add i64 %indvars.iv493, 1, !dbg !230
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !230
  %40 = trunc i64 %indvars.iv.next494 to i32, !dbg !230
  %cmp115 = icmp slt i32 %40, %39, !dbg !230
  br i1 %cmp115, label %for.body116, label %for.end133, !dbg !230

for.end133:                                       ; preds = %for.inc131, %for.body111
  %count.0.lcssa = phi i32 [ 0, %for.body111 ], [ %count.1, %for.inc131 ]
  call void @IVqsortUp(i32 %count.0.lcssa, i32* %call108) #6, !dbg !237
  %41 = load %struct._IVL** %adjIVL134, align 8, !dbg !222, !tbaa !107
  %42 = trunc i64 %indvars.iv495 to i32, !dbg !222
  call void @IVL_setList(%struct._IVL* %41, i32 %42, i32 %count.0.lcssa, i32* %call108) #6, !dbg !222
  %indvars.iv.next496 = add i64 %indvars.iv495, 1, !dbg !220
  %lftr.wideiv497 = trunc i64 %indvars.iv.next496 to i32, !dbg !220
  %exitcond498 = icmp eq i32 %lftr.wideiv497, %nX.0.lcssa536, !dbg !220
  br i1 %exitcond498, label %for.cond138.preheader, label %for.body111, !dbg !220

for.body140:                                      ; preds = %for.end162, %for.body140.lr.ph
  %indvars.iv491 = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next492, %for.end162 ]
  %y.1452 = phi i32 [ %nX.0.lcssa536, %for.body140.lr.ph ], [ %inc166, %for.end162 ]
  %arrayidx142 = getelementptr inbounds i32* %indY, i64 %indvars.iv491, !dbg !238
  %43 = load i32* %arrayidx142, align 4, !dbg !238, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !89), !dbg !238
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %43, i32* %vsize, i32** %vadj) #6, !dbg !239
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !240
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !240
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !240
  %44 = load i32* %vsize, align 4, !dbg !240, !tbaa !113
  %cmp144447 = icmp sgt i32 %44, 0, !dbg !240
  br i1 %cmp144447, label %for.body145.lr.ph, label %for.end162, !dbg !240

for.body145.lr.ph:                                ; preds = %for.body140
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !242
  %45 = load i32** %vadj, align 8, !dbg !242, !tbaa !107
  br label %for.body145, !dbg !240

for.body145:                                      ; preds = %for.body145.lr.ph, %for.inc160
  %46 = phi i32 [ %44, %for.body145.lr.ph ], [ %50, %for.inc160 ]
  %indvars.iv = phi i64 [ 0, %for.body145.lr.ph ], [ %indvars.iv.next, %for.inc160 ]
  %count.2449 = phi i32 [ 0, %for.body145.lr.ph ], [ %count.3, %for.inc160 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !242
  %arrayidx147 = getelementptr inbounds i32* %45, i64 %indvars.iv, !dbg !242
  %47 = load i32* %arrayidx147, align 4, !dbg !242, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !91), !dbg !242
  %cmp148 = icmp slt i32 %47, %1, !dbg !242
  br i1 %cmp148, label %land.lhs.true149, label %for.inc160, !dbg !242

land.lhs.true149:                                 ; preds = %for.body145
  %idxprom150 = sext i32 %47 to i64, !dbg !242
  %arrayidx151 = getelementptr inbounds i32* %colors, i64 %idxprom150, !dbg !242
  %48 = load i32* %arrayidx151, align 4, !dbg !242, !tbaa !113
  %cmp152 = icmp eq i32 %48, %cX, !dbg !242
  br i1 %cmp152, label %if.then153, label %for.inc160, !dbg !242

if.then153:                                       ; preds = %land.lhs.true149
  %arrayidx155 = getelementptr inbounds i32* %cmap, i64 %idxprom150, !dbg !244
  %49 = load i32* %arrayidx155, align 4, !dbg !244, !tbaa !113
  %inc156 = add nsw i32 %count.2449, 1, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %inc156}, i64 0, metadata !80), !dbg !244
  %idxprom157 = sext i32 %count.2449 to i64, !dbg !244
  %arrayidx158 = getelementptr inbounds i32* %call108, i64 %idxprom157, !dbg !244
  store i32 %49, i32* %arrayidx158, align 4, !dbg !244, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !240
  %.pre532 = load i32* %vsize, align 4, !dbg !240, !tbaa !113
  br label %for.inc160, !dbg !246

for.inc160:                                       ; preds = %for.body145, %land.lhs.true149, %if.then153
  %50 = phi i32 [ %.pre532, %if.then153 ], [ %46, %land.lhs.true149 ], [ %46, %for.body145 ], !dbg !240
  %count.3 = phi i32 [ %inc156, %if.then153 ], [ %count.2449, %land.lhs.true149 ], [ %count.2449, %for.body145 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !240
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !240
  %51 = trunc i64 %indvars.iv.next to i32, !dbg !240
  %cmp144 = icmp slt i32 %51, %50, !dbg !240
  br i1 %cmp144, label %for.body145, label %for.end162, !dbg !240

for.end162:                                       ; preds = %for.inc160, %for.body140
  %count.2.lcssa = phi i32 [ 0, %for.body140 ], [ %count.3, %for.inc160 ]
  call void @IVqsortUp(i32 %count.2.lcssa, i32* %call108) #6, !dbg !247
  %52 = load %struct._IVL** %adjIVL163, align 8, !dbg !226, !tbaa !107
  call void @IVL_setList(%struct._IVL* %52, i32 %y.1452, i32 %count.2.lcssa, i32* %call108) #6, !dbg !226
  %indvars.iv.next492 = add i64 %indvars.iv491, 1, !dbg !224
  %inc166 = add nsw i32 %y.1452, 1, !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %inc166}, i64 0, metadata !93), !dbg !224
  %lftr.wideiv = trunc i64 %indvars.iv.next492 to i32, !dbg !224
  %exitcond = icmp eq i32 %lftr.wideiv, %nY.0.lcssa, !dbg !224
  br i1 %exitcond, label %for.end167, label %for.body140, !dbg !224

for.end167:                                       ; preds = %for.end162, %for.cond138.preheader
  call void @IVfree(i32* %call108) #6, !dbg !248
  br label %if.end238, !dbg !249

if.else:                                          ; preds = %if.end103
  %call171 = call i32* @IVinit2(i32 %call107) #6, !dbg !250
  call void @llvm.dbg.value(metadata !{i32* %call171}, i64 0, metadata !94), !dbg !250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !252
  br i1 %cmp22482537, label %for.body174.lr.ph, label %for.cond205.preheader, !dbg !252

for.body174.lr.ph:                                ; preds = %if.else
  %adjIVL201 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6, !dbg !254
  %ewghtIVL = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 8, !dbg !256
  br label %for.body174, !dbg !252

for.cond205.preheader:                            ; preds = %for.end200, %if.else
  %cmp206463 = icmp sgt i32 %nY.0.lcssa, 0, !dbg !257
  br i1 %cmp206463, label %for.body207.lr.ph, label %for.end237, !dbg !257

for.body207.lr.ph:                                ; preds = %for.cond205.preheader
  %adjIVL232 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6, !dbg !259
  %ewghtIVL233 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 8, !dbg !261
  br label %for.body207, !dbg !257

for.body174:                                      ; preds = %for.end200, %for.body174.lr.ph
  %indvars.iv507 = phi i64 [ 0, %for.body174.lr.ph ], [ %indvars.iv.next508, %for.end200 ]
  %arrayidx176 = getelementptr inbounds i32* %indX, i64 %indvars.iv507, !dbg !262
  %53 = load i32* %arrayidx176, align 4, !dbg !262, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !89), !dbg !262
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %53, i32* %vsize, i32** %vadj, i32** %vewghts) #6, !dbg !263
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !264
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !264
  %54 = load i32* %vsize, align 4, !dbg !264, !tbaa !113
  %cmp178466 = icmp sgt i32 %54, 0, !dbg !264
  br i1 %cmp178466, label %for.body179.lr.ph, label %for.end200, !dbg !264

for.body179.lr.ph:                                ; preds = %for.body174
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !266
  %55 = load i32** %vadj, align 8, !dbg !266, !tbaa !107
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !97), !dbg !268
  %56 = load i32** %vewghts, align 8, !dbg !268, !tbaa !107
  br label %for.body179, !dbg !264

for.body179:                                      ; preds = %for.body179.lr.ph, %for.inc198
  %57 = phi i32 [ %54, %for.body179.lr.ph ], [ %62, %for.inc198 ]
  %indvars.iv505 = phi i64 [ 0, %for.body179.lr.ph ], [ %indvars.iv.next506, %for.inc198 ]
  %count.4468 = phi i32 [ 0, %for.body179.lr.ph ], [ %count.5, %for.inc198 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !266
  %arrayidx181 = getelementptr inbounds i32* %55, i64 %indvars.iv505, !dbg !266
  %58 = load i32* %arrayidx181, align 4, !dbg !266, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !91), !dbg !266
  %cmp182 = icmp slt i32 %58, %1, !dbg !266
  br i1 %cmp182, label %land.lhs.true183, label %for.inc198, !dbg !266

land.lhs.true183:                                 ; preds = %for.body179
  %idxprom184 = sext i32 %58 to i64, !dbg !266
  %arrayidx185 = getelementptr inbounds i32* %colors, i64 %idxprom184, !dbg !266
  %59 = load i32* %arrayidx185, align 4, !dbg !266, !tbaa !113
  %cmp186 = icmp eq i32 %59, %cY, !dbg !266
  br i1 %cmp186, label %if.then187, label %for.inc198, !dbg !266

if.then187:                                       ; preds = %land.lhs.true183
  %arrayidx189 = getelementptr inbounds i32* %cmap, i64 %idxprom184, !dbg !270
  %60 = load i32* %arrayidx189, align 4, !dbg !270, !tbaa !113
  %idxprom190 = sext i32 %count.4468 to i64, !dbg !270
  %arrayidx191 = getelementptr inbounds i32* %call108, i64 %idxprom190, !dbg !270
  store i32 %60, i32* %arrayidx191, align 4, !dbg !270, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !97), !dbg !268
  %arrayidx193 = getelementptr inbounds i32* %56, i64 %indvars.iv505, !dbg !268
  %61 = load i32* %arrayidx193, align 4, !dbg !268, !tbaa !113
  %arrayidx195 = getelementptr inbounds i32* %call171, i64 %idxprom190, !dbg !268
  store i32 %61, i32* %arrayidx195, align 4, !dbg !268, !tbaa !113
  %inc196 = add nsw i32 %count.4468, 1, !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %inc196}, i64 0, metadata !80), !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !264
  %.pre531 = load i32* %vsize, align 4, !dbg !264, !tbaa !113
  br label %for.inc198, !dbg !272

for.inc198:                                       ; preds = %for.body179, %land.lhs.true183, %if.then187
  %62 = phi i32 [ %.pre531, %if.then187 ], [ %57, %land.lhs.true183 ], [ %57, %for.body179 ], !dbg !264
  %count.5 = phi i32 [ %inc196, %if.then187 ], [ %count.4468, %land.lhs.true183 ], [ %count.4468, %for.body179 ]
  %indvars.iv.next506 = add i64 %indvars.iv505, 1, !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !264
  %63 = trunc i64 %indvars.iv.next506 to i32, !dbg !264
  %cmp178 = icmp slt i32 %63, %62, !dbg !264
  br i1 %cmp178, label %for.body179, label %for.end200, !dbg !264

for.end200:                                       ; preds = %for.inc198, %for.body174
  %count.4.lcssa = phi i32 [ 0, %for.body174 ], [ %count.5, %for.inc198 ]
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call108, i32* %call171) #6, !dbg !273
  %64 = load %struct._IVL** %adjIVL201, align 8, !dbg !254, !tbaa !107
  %65 = trunc i64 %indvars.iv507 to i32, !dbg !254
  call void @IVL_setList(%struct._IVL* %64, i32 %65, i32 %count.4.lcssa, i32* %call108) #6, !dbg !254
  %66 = load %struct._IVL** %ewghtIVL, align 8, !dbg !256, !tbaa !107
  call void @IVL_setList(%struct._IVL* %66, i32 %65, i32 %count.4.lcssa, i32* %call171) #6, !dbg !256
  %indvars.iv.next508 = add i64 %indvars.iv507, 1, !dbg !252
  %lftr.wideiv509 = trunc i64 %indvars.iv.next508 to i32, !dbg !252
  %exitcond510 = icmp eq i32 %lftr.wideiv509, %nX.0.lcssa536, !dbg !252
  br i1 %exitcond510, label %for.cond205.preheader, label %for.body174, !dbg !252

for.body207:                                      ; preds = %for.end231, %for.body207.lr.ph
  %indvars.iv501 = phi i64 [ 0, %for.body207.lr.ph ], [ %indvars.iv.next502, %for.end231 ]
  %y.2465 = phi i32 [ %nX.0.lcssa536, %for.body207.lr.ph ], [ %inc236, %for.end231 ]
  %arrayidx209 = getelementptr inbounds i32* %indY, i64 %indvars.iv501, !dbg !274
  %67 = load i32* %arrayidx209, align 4, !dbg !274, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !89), !dbg !274
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %67, i32* %vsize, i32** %vadj, i32** %vewghts) #6, !dbg !275
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !276
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !276
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !276
  %68 = load i32* %vsize, align 4, !dbg !276, !tbaa !113
  %cmp211459 = icmp sgt i32 %68, 0, !dbg !276
  br i1 %cmp211459, label %for.body212.lr.ph, label %for.end231, !dbg !276

for.body212.lr.ph:                                ; preds = %for.body207
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !278
  %69 = load i32** %vadj, align 8, !dbg !278, !tbaa !107
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !97), !dbg !280
  %70 = load i32** %vewghts, align 8, !dbg !280, !tbaa !107
  br label %for.body212, !dbg !276

for.body212:                                      ; preds = %for.body212.lr.ph, %for.inc229
  %71 = phi i32 [ %68, %for.body212.lr.ph ], [ %76, %for.inc229 ]
  %indvars.iv499 = phi i64 [ 0, %for.body212.lr.ph ], [ %indvars.iv.next500, %for.inc229 ]
  %count.6461 = phi i32 [ 0, %for.body212.lr.ph ], [ %count.7, %for.inc229 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !96), !dbg !278
  %arrayidx214 = getelementptr inbounds i32* %69, i64 %indvars.iv499, !dbg !278
  %72 = load i32* %arrayidx214, align 4, !dbg !278, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32 %72}, i64 0, metadata !91), !dbg !278
  %idxprom215 = sext i32 %72 to i64, !dbg !282
  %arrayidx216 = getelementptr inbounds i32* %colors, i64 %idxprom215, !dbg !282
  %73 = load i32* %arrayidx216, align 4, !dbg !282, !tbaa !113
  %cmp217 = icmp eq i32 %73, %cX, !dbg !282
  br i1 %cmp217, label %if.then218, label %for.inc229, !dbg !282

if.then218:                                       ; preds = %for.body212
  %arrayidx220 = getelementptr inbounds i32* %cmap, i64 %idxprom215, !dbg !283
  %74 = load i32* %arrayidx220, align 4, !dbg !283, !tbaa !113
  %idxprom221 = sext i32 %count.6461 to i64, !dbg !283
  %arrayidx222 = getelementptr inbounds i32* %call108, i64 %idxprom221, !dbg !283
  store i32 %74, i32* %arrayidx222, align 4, !dbg !283, !tbaa !113
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !97), !dbg !280
  %arrayidx224 = getelementptr inbounds i32* %70, i64 %indvars.iv499, !dbg !280
  %75 = load i32* %arrayidx224, align 4, !dbg !280, !tbaa !113
  %arrayidx226 = getelementptr inbounds i32* %call171, i64 %idxprom221, !dbg !280
  store i32 %75, i32* %arrayidx226, align 4, !dbg !280, !tbaa !113
  %inc227 = add nsw i32 %count.6461, 1, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %inc227}, i64 0, metadata !80), !dbg !284
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !276
  %.pre = load i32* %vsize, align 4, !dbg !276, !tbaa !113
  br label %for.inc229, !dbg !285

for.inc229:                                       ; preds = %for.body212, %if.then218
  %76 = phi i32 [ %.pre, %if.then218 ], [ %71, %for.body212 ], !dbg !276
  %count.7 = phi i32 [ %inc227, %if.then218 ], [ %count.6461, %for.body212 ]
  %indvars.iv.next500 = add i64 %indvars.iv499, 1, !dbg !276
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !90), !dbg !276
  %77 = trunc i64 %indvars.iv.next500 to i32, !dbg !276
  %cmp211 = icmp slt i32 %77, %76, !dbg !276
  br i1 %cmp211, label %for.body212, label %for.end231, !dbg !276

for.end231:                                       ; preds = %for.inc229, %for.body207
  %count.6.lcssa = phi i32 [ 0, %for.body207 ], [ %count.7, %for.inc229 ]
  call void @IV2qsortUp(i32 %count.6.lcssa, i32* %call108, i32* %call171) #6, !dbg !286
  %78 = load %struct._IVL** %adjIVL232, align 8, !dbg !259, !tbaa !107
  call void @IVL_setList(%struct._IVL* %78, i32 %y.2465, i32 %count.6.lcssa, i32* %call108) #6, !dbg !259
  %79 = load %struct._IVL** %ewghtIVL233, align 8, !dbg !261, !tbaa !107
  call void @IVL_setList(%struct._IVL* %79, i32 %y.2465, i32 %count.6.lcssa, i32* %call171) #6, !dbg !261
  %indvars.iv.next502 = add i64 %indvars.iv501, 1, !dbg !257
  %inc236 = add nsw i32 %y.2465, 1, !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %inc236}, i64 0, metadata !93), !dbg !257
  %lftr.wideiv503 = trunc i64 %indvars.iv.next502 to i32, !dbg !257
  %exitcond504 = icmp eq i32 %lftr.wideiv503, %nY.0.lcssa, !dbg !257
  br i1 %exitcond504, label %for.end237, label %for.body207, !dbg !257

for.end237:                                       ; preds = %for.end231, %for.cond205.preheader
  call void @IVfree(i32* %call108) #6, !dbg !287
  call void @IVfree(i32* %call171) #6, !dbg !288
  br label %if.end238

if.end238:                                        ; preds = %for.end237, %for.end167
  %80 = load %struct._IVL** %adjIVL, align 8, !dbg !289, !tbaa !107
  %sizes = getelementptr inbounds %struct._IVL* %80, i64 0, i32 4, !dbg !289
  %81 = load i32** %sizes, align 8, !dbg !289, !tbaa !107
  %call241 = call i32 @IVsum(i32 %add68, i32* %81) #6, !dbg !289
  %nedges = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 3, !dbg !289
  store i32 %call241, i32* %nedges, align 4, !dbg !289, !tbaa !113
  ret void, !dbg !290
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #4

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #4

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #4

; Function Attrs: optsize
declare i32 @IVL_maxListSize(%struct._IVL*) #4

; Function Attrs: optsize
declare i32* @IVinit2(i32) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @Graph_adjAndEweights(%struct._Graph*, i32, i32*, i32**, i32**) #4

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !67}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_init", metadata !"BPG_init", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BPG*, i32, i32, %struct._Graph*)* @BPG_init, null, null, metadata !54, i32 24} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 24] [BPG_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !17}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !52, metadata !53}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!30 = metadata !{i32 786454, metadata !20, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !40, metadata !42, metadata !43}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!45 = metadata !{i32 786454, metadata !32, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!46 = metadata !{i32 786451, metadata !32, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!49 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!50 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!51 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!53 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!55 = metadata !{i32 786689, metadata !4, metadata !"bpg", metadata !5, i32 16777236, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 20]
!56 = metadata !{i32 786689, metadata !4, metadata !"nX", metadata !5, i32 33554453, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nX] [line 21]
!57 = metadata !{i32 786689, metadata !4, metadata !"nY", metadata !5, i32 50331670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nY] [line 22]
!58 = metadata !{i32 786689, metadata !4, metadata !"graph", metadata !5, i32 67108887, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 23]
!59 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 25]
!60 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 25]
!61 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 25]
!62 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 25]
!63 = metadata !{i32 786688, metadata !4, metadata !"vsize", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 25]
!64 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 25]
!65 = metadata !{i32 786688, metadata !4, metadata !"vadj", metadata !5, i32 26, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 26]
!66 = metadata !{i32 786688, metadata !4, metadata !"adjIVL", metadata !5, i32 27, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjIVL] [line 27]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_initFromColoring", metadata !"BPG_initFromColoring", metadata !"", i32 129, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BPG*, %struct._Graph*, i32*, i32, i32, i32*, i32*, i32*)* @BPG_initFromColoring, null, null, metadata !70, i32 138} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 138] [BPG_initFromColoring]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !8, metadata !17, metadata !39, metadata !14, metadata !14, metadata !39, metadata !39, metadata !39}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!71 = metadata !{i32 786689, metadata !67, metadata !"bpg", metadata !5, i32 16777346, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 130]
!72 = metadata !{i32 786689, metadata !67, metadata !"graph", metadata !5, i32 33554563, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 131]
!73 = metadata !{i32 786689, metadata !67, metadata !"colors", metadata !5, i32 50331780, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colors] [line 132]
!74 = metadata !{i32 786689, metadata !67, metadata !"cX", metadata !5, i32 67108997, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cX] [line 133]
!75 = metadata !{i32 786689, metadata !67, metadata !"cY", metadata !5, i32 83886214, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cY] [line 134]
!76 = metadata !{i32 786689, metadata !67, metadata !"cmap", metadata !5, i32 100663431, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmap] [line 135]
!77 = metadata !{i32 786689, metadata !67, metadata !"indX", metadata !5, i32 117440648, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indX] [line 136]
!78 = metadata !{i32 786689, metadata !67, metadata !"indY", metadata !5, i32 134217865, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indY] [line 137]
!79 = metadata !{i32 786688, metadata !67, metadata !"bpg_g", metadata !5, i32 139, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpg_g] [line 139]
!80 = metadata !{i32 786688, metadata !67, metadata !"count", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 140]
!81 = metadata !{i32 786688, metadata !67, metadata !"ierr", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 140]
!82 = metadata !{i32 786688, metadata !67, metadata !"ii", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 140]
!83 = metadata !{i32 786688, metadata !67, metadata !"iX", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iX] [line 140]
!84 = metadata !{i32 786688, metadata !67, metadata !"iy", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 140]
!85 = metadata !{i32 786688, metadata !67, metadata !"msize", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msize] [line 140]
!86 = metadata !{i32 786688, metadata !67, metadata !"nV", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nV] [line 140]
!87 = metadata !{i32 786688, metadata !67, metadata !"nX", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nX] [line 140]
!88 = metadata !{i32 786688, metadata !67, metadata !"nY", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nY] [line 140]
!89 = metadata !{i32 786688, metadata !67, metadata !"v", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 140]
!90 = metadata !{i32 786688, metadata !67, metadata !"vsize", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 140]
!91 = metadata !{i32 786688, metadata !67, metadata !"w", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 140]
!92 = metadata !{i32 786688, metadata !67, metadata !"x", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 140]
!93 = metadata !{i32 786688, metadata !67, metadata !"y", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 140]
!94 = metadata !{i32 786688, metadata !67, metadata !"ewghts", metadata !5, i32 141, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghts] [line 141]
!95 = metadata !{i32 786688, metadata !67, metadata !"list", metadata !5, i32 141, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 141]
!96 = metadata !{i32 786688, metadata !67, metadata !"vadj", metadata !5, i32 141, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 141]
!97 = metadata !{i32 786688, metadata !67, metadata !"vewghts", metadata !5, i32 141, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vewghts] [line 141]
!98 = metadata !{i32 20, i32 0, metadata !4, null}
!99 = metadata !{i32 21, i32 0, metadata !4, null}
!100 = metadata !{i32 22, i32 0, metadata !4, null}
!101 = metadata !{i32 23, i32 0, metadata !4, null}
!102 = metadata !{i32 25, i32 0, metadata !4, null}
!103 = metadata !{i32 26, i32 0, metadata !4, null}
!104 = metadata !{i32 33, i32 0, metadata !4, null}
!105 = metadata !{i32 34, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!107 = metadata !{metadata !"any pointer", metadata !108}
!108 = metadata !{metadata !"omnipotent char", metadata !109}
!109 = metadata !{metadata !"Simple C/C++ TBAA"}
!110 = metadata !{i32 36, i32 0, metadata !106, null}
!111 = metadata !{i32 43, i32 0, metadata !4, null}
!112 = metadata !{i32 44, i32 0, metadata !4, null}
!113 = metadata !{metadata !"int", metadata !108}
!114 = metadata !{i32 45, i32 0, metadata !4, null}
!115 = metadata !{i32 46, i32 0, metadata !4, null}
!116 = metadata !{i32 53, i32 0, metadata !4, null}
!117 = metadata !{i32 54, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!119 = metadata !{i32 64, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!121 = metadata !{i32 786443, metadata !1, metadata !118, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!122 = metadata !{i32 80, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!124 = metadata !{i32 55, i32 0, metadata !121, null}
!125 = metadata !{i32 61, i32 0, metadata !121, null}
!126 = metadata !{i32 62, i32 0, metadata !121, null}
!127 = metadata !{i32 63, i32 0, metadata !120, null}
!128 = metadata !{i32 67, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !120, i32 66, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!130 = metadata !{i32 68, i32 0, metadata !129, null}
!131 = metadata !{i32 65, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !120, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!133 = metadata !{i32 69, i32 0, metadata !129, null}
!134 = metadata !{i32 72, i32 0, metadata !121, null}
!135 = metadata !{i32 78, i32 0, metadata !121, null}
!136 = metadata !{i32 81, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !123, i32 80, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!138 = metadata !{i32 87, i32 0, metadata !137, null}
!139 = metadata !{i32 88, i32 0, metadata !137, null}
!140 = metadata !{i32 89, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !137, i32 88, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!142 = metadata !{i32 94, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !141, i32 92, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!144 = metadata !{i32 90, i32 0, metadata !141, null}
!145 = metadata !{i32 91, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !141, i32 90, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!147 = metadata !{i32 93, i32 0, metadata !143, null}
!148 = metadata !{i32 95, i32 0, metadata !143, null}
!149 = metadata !{i32 98, i32 0, metadata !137, null}
!150 = metadata !{i32 99, i32 0, metadata !137, null}
!151 = metadata !{i32 107, i32 0, metadata !4, null}
!152 = metadata !{i32 130, i32 0, metadata !67, null}
!153 = metadata !{i32 131, i32 0, metadata !67, null}
!154 = metadata !{i32 132, i32 0, metadata !67, null}
!155 = metadata !{i32 133, i32 0, metadata !67, null}
!156 = metadata !{i32 134, i32 0, metadata !67, null}
!157 = metadata !{i32 135, i32 0, metadata !67, null}
!158 = metadata !{i32 136, i32 0, metadata !67, null}
!159 = metadata !{i32 137, i32 0, metadata !67, null}
!160 = metadata !{i32 140, i32 0, metadata !67, null}
!161 = metadata !{i32 141, i32 0, metadata !67, null}
!162 = metadata !{i32 147, i32 0, metadata !67, null}
!163 = metadata !{i32 149, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !67, i32 148, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!165 = metadata !{i32 152, i32 0, metadata !164, null}
!166 = metadata !{i32 154, i32 0, metadata !67, null}
!167 = metadata !{i32 155, i32 0, metadata !67, null}
!168 = metadata !{i32 156, i32 0, metadata !67, null}
!169 = metadata !{i32 168, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !67, i32 168, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!171 = metadata !{i32 180, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !67, i32 180, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!173 = metadata !{i32 169, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !170, i32 168, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!175 = metadata !{i32 170, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 169, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!177 = metadata !{i32 171, i32 0, metadata !176, null}
!178 = metadata !{i32 172, i32 0, metadata !176, null}
!179 = metadata !{i32 181, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !172, i32 180, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!181 = metadata !{i32 182, i32 0, metadata !180, null}
!182 = metadata !{i32 183, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 183, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!184 = metadata !{i32 184, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 183, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!186 = metadata !{i32 186, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !185, i32 185, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!188 = metadata !{i32 187, i32 0, metadata !187, null}
!189 = metadata !{i32 188, i32 0, metadata !187, null}
!190 = metadata !{i32 191, i32 0, metadata !67, null}
!191 = metadata !{i32 192, i32 0, metadata !67, null}
!192 = metadata !{i32 205, i32 0, metadata !67, null}
!193 = metadata !{i32 206, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !67, i32 205, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!195 = metadata !{i32 208, i32 0, metadata !194, null}
!196 = metadata !{i32 209, i32 0, metadata !194, null}
!197 = metadata !{i32 210, i32 0, metadata !194, null}
!198 = metadata !{i32 211, i32 0, metadata !194, null}
!199 = metadata !{i32 212, i32 0, metadata !194, null}
!200 = metadata !{i32 219, i32 0, metadata !67, null}
!201 = metadata !{i32 220, i32 0, metadata !67, null}
!202 = metadata !{i32 227, i32 0, metadata !67, null}
!203 = metadata !{i32 228, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 228, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!205 = metadata !{i32 786443, metadata !1, metadata !67, i32 227, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!206 = metadata !{i32 230, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 228, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!208 = metadata !{i32 232, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !205, i32 232, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!210 = metadata !{i32 236, i32 0, metadata !205, null}
!211 = metadata !{i32 234, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !209, i32 232, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!213 = metadata !{i32 229, i32 0, metadata !207, null}
!214 = metadata !{i32 233, i32 0, metadata !212, null}
!215 = metadata !{i32 252, i32 0, metadata !67, null}
!216 = metadata !{i32 246, i32 0, metadata !205, null}
!217 = metadata !{i32 258, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !67, i32 252, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!219 = metadata !{i32 259, i32 0, metadata !218, null}
!220 = metadata !{i32 260, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !218, i32 260, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!222 = metadata !{i32 269, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !221, i32 260, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!224 = metadata !{i32 276, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !218, i32 276, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!226 = metadata !{i32 285, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !225, i32 276, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!228 = metadata !{i32 261, i32 0, metadata !223, null}
!229 = metadata !{i32 262, i32 0, metadata !223, null}
!230 = metadata !{i32 263, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !223, i32 263, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!232 = metadata !{i32 264, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 263, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!234 = metadata !{i32 265, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 264, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!236 = metadata !{i32 266, i32 0, metadata !235, null}
!237 = metadata !{i32 268, i32 0, metadata !223, null}
!238 = metadata !{i32 277, i32 0, metadata !227, null}
!239 = metadata !{i32 278, i32 0, metadata !227, null}
!240 = metadata !{i32 279, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !227, i32 279, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!242 = metadata !{i32 280, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !241, i32 279, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!244 = metadata !{i32 281, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 280, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!246 = metadata !{i32 282, i32 0, metadata !245, null}
!247 = metadata !{i32 284, i32 0, metadata !227, null}
!248 = metadata !{i32 292, i32 0, metadata !218, null}
!249 = metadata !{i32 293, i32 0, metadata !218, null}
!250 = metadata !{i32 301, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !67, i32 293, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!252 = metadata !{i32 302, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 302, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!254 = metadata !{i32 313, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 302, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!256 = metadata !{i32 314, i32 0, metadata !255, null}
!257 = metadata !{i32 316, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !251, i32 316, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!259 = metadata !{i32 328, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !258, i32 316, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!261 = metadata !{i32 329, i32 0, metadata !260, null}
!262 = metadata !{i32 303, i32 0, metadata !255, null}
!263 = metadata !{i32 304, i32 0, metadata !255, null}
!264 = metadata !{i32 305, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !255, i32 305, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!266 = metadata !{i32 306, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 305, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!268 = metadata !{i32 308, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 306, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!270 = metadata !{i32 307, i32 0, metadata !269, null}
!271 = metadata !{i32 309, i32 0, metadata !269, null}
!272 = metadata !{i32 310, i32 0, metadata !269, null}
!273 = metadata !{i32 312, i32 0, metadata !255, null}
!274 = metadata !{i32 317, i32 0, metadata !260, null}
!275 = metadata !{i32 318, i32 0, metadata !260, null}
!276 = metadata !{i32 319, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !260, i32 319, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!278 = metadata !{i32 320, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !277, i32 319, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!280 = metadata !{i32 323, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 321, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_init.c]
!282 = metadata !{i32 321, i32 0, metadata !279, null}
!283 = metadata !{i32 322, i32 0, metadata !281, null}
!284 = metadata !{i32 324, i32 0, metadata !281, null}
!285 = metadata !{i32 325, i32 0, metadata !281, null}
!286 = metadata !{i32 327, i32 0, metadata !260, null}
!287 = metadata !{i32 331, i32 0, metadata !251, null}
!288 = metadata !{i32 332, i32 0, metadata !251, null}
!289 = metadata !{i32 334, i32 0, metadata !67, null}
!290 = metadata !{i32 336, i32 0, metadata !67, null}
