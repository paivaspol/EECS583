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
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp slt i32 %nX, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nY, 1
  %or.cond100 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._Graph* %graph, null
  %or.cond101 = or i1 %or.cond100, %cmp5
  br i1 %or.cond101, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i32 %nX, i32 %nY, %struct._Graph* %graph) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #5
  %nX6 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  store i32 %nX, i32* %nX6, align 4, !tbaa !3
  %nY7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  store i32 %nY, i32* %nY7, align 4, !tbaa !3
  %graph8 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  store %struct._Graph* %graph, %struct._Graph** %graph8, align 8, !tbaa !0
  %adjIVL9 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %1 = load %struct._IVL** %adjIVL9, align 8, !tbaa !0
  %cmp10124 = icmp sgt i32 %nX, 0
  %add = add nsw i32 %nY, %nX
  br i1 %cmp10124, label %for.body, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %if.end, %while.end
  %cmp25112 = icmp sgt i32 %nY, 0
  br i1 %cmp25112, label %for.body26, label %for.end50

for.body:                                         ; preds = %if.end, %while.end
  %v.0125 = phi i32 [ %inc22, %while.end ], [ 0, %if.end ]
  call void @IVL_listAndSize(%struct._IVL* %1, i32 %v.0125, i32* %vsize, i32** %vadj) #5
  %2 = load i32* %vsize, align 4, !tbaa !3
  %cmp11116120 = icmp slt i32 %2, 1
  br i1 %cmp11116120, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %for.body
  %sub = add nsw i32 %2, -1
  %3 = load i32** %vadj, align 8, !tbaa !0
  %4 = sext i32 %2 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.else
  %indvars.iv139.in = phi i64 [ %4, %while.body.lr.ph.lr.ph ], [ %indvars.iv139, %if.else ]
  %ii.0.ph122 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %ii.0117, %if.else ]
  %jj.0.ph121 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.else ]
  %indvars.iv139 = add i64 %indvars.iv139.in, -1
  %5 = sext i32 %ii.0.ph122 to i64
  br label %while.body

while.cond:                                       ; preds = %land.lhs.true
  %indvars.iv.next138 = add i64 %indvars.iv137, 1
  %6 = trunc i64 %indvars.iv137 to i32
  %7 = trunc i64 %indvars.iv139 to i32
  %cmp11 = icmp slt i32 %6, %7
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %while.body.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %while.cond ], [ %5, %while.body.lr.ph ]
  %ii.0117 = phi i32 [ %inc, %while.cond ], [ %ii.0.ph122, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv137
  %8 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %8, %nX
  br i1 %cmp12, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %cmp13 = icmp slt i32 %8, %add
  %inc = add nsw i32 %ii.0117, 1
  br i1 %cmp13, label %while.cond, label %if.else

if.else:                                          ; preds = %while.body, %land.lhs.true
  %arrayidx16 = getelementptr inbounds i32* %3, i64 %indvars.iv139
  %9 = load i32* %arrayidx16, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx, align 4, !tbaa !3
  store i32 %8, i32* %arrayidx16, align 4, !tbaa !3
  %dec = add nsw i32 %jj.0.ph121, -1
  %cmp11116 = icmp sgt i32 %ii.0117, %dec
  br i1 %cmp11116, label %while.end, label %while.body.lr.ph

while.end:                                        ; preds = %for.body, %if.else, %while.cond
  %ii.0.lcssa = phi i32 [ %inc, %while.cond ], [ 0, %for.body ], [ %ii.0117, %if.else ]
  store i32 %ii.0.lcssa, i32* %vsize, align 4, !tbaa !3
  call void @IVL_setList(%struct._IVL* %1, i32 %v.0125, i32 %ii.0.lcssa, i32* null) #5
  %inc22 = add nsw i32 %v.0125, 1
  %exitcond = icmp eq i32 %inc22, %nX
  br i1 %exitcond, label %for.cond23.preheader, label %for.body

for.body26:                                       ; preds = %for.cond23.preheader, %while.end47
  %v.1113 = phi i32 [ %inc49, %while.end47 ], [ %nX, %for.cond23.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %1, i32 %v.1113, i32* %vsize, i32** %vadj) #5
  %10 = load i32* %vsize, align 4, !tbaa !3
  %cmp29105108 = icmp slt i32 %10, 1
  br i1 %cmp29105108, label %while.end47, label %while.body30.lr.ph.lr.ph

while.body30.lr.ph.lr.ph:                         ; preds = %for.body26
  %sub27 = add nsw i32 %10, -1
  %11 = load i32** %vadj, align 8, !tbaa !0
  %12 = sext i32 %10 to i64
  br label %while.body30.lr.ph

while.body30.lr.ph:                               ; preds = %while.body30.lr.ph.lr.ph, %if.else38
  %indvars.iv130.in = phi i64 [ %12, %while.body30.lr.ph.lr.ph ], [ %indvars.iv130, %if.else38 ]
  %ii.1.ph110 = phi i32 [ 0, %while.body30.lr.ph.lr.ph ], [ %ii.1106, %if.else38 ]
  %jj.1.ph109 = phi i32 [ %sub27, %while.body30.lr.ph.lr.ph ], [ %dec45, %if.else38 ]
  %indvars.iv130 = add i64 %indvars.iv130.in, -1
  %13 = sext i32 %ii.1.ph110 to i64
  br label %while.body30

while.cond28:                                     ; preds = %while.body30
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv to i32
  %15 = trunc i64 %indvars.iv130 to i32
  %cmp29 = icmp slt i32 %14, %15
  br i1 %cmp29, label %while.body30, label %while.end47

while.body30:                                     ; preds = %while.cond28, %while.body30.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond28 ], [ %13, %while.body30.lr.ph ]
  %ii.1106 = phi i32 [ %inc37, %while.cond28 ], [ %ii.1.ph110, %while.body30.lr.ph ]
  %arrayidx32 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %16 = load i32* %arrayidx32, align 4, !tbaa !3
  %cmp33 = icmp sgt i32 %16, -1
  %cmp35 = icmp slt i32 %16, %nX
  %or.cond102 = and i1 %cmp33, %cmp35
  %inc37 = add nsw i32 %ii.1106, 1
  br i1 %or.cond102, label %while.cond28, label %if.else38

if.else38:                                        ; preds = %while.body30
  %arrayidx40 = getelementptr inbounds i32* %11, i64 %indvars.iv130
  %17 = load i32* %arrayidx40, align 4, !tbaa !3
  store i32 %17, i32* %arrayidx32, align 4, !tbaa !3
  store i32 %16, i32* %arrayidx40, align 4, !tbaa !3
  %dec45 = add nsw i32 %jj.1.ph109, -1
  %cmp29105 = icmp sgt i32 %ii.1106, %dec45
  br i1 %cmp29105, label %while.end47, label %while.body30.lr.ph

while.end47:                                      ; preds = %for.body26, %if.else38, %while.cond28
  %ii.1.lcssa = phi i32 [ %inc37, %while.cond28 ], [ 0, %for.body26 ], [ %ii.1106, %if.else38 ]
  store i32 %ii.1.lcssa, i32* %vsize, align 4, !tbaa !3
  call void @IVL_setList(%struct._IVL* %1, i32 %v.1113, i32 %ii.1.lcssa, i32* null) #5
  %inc49 = add nsw i32 %v.1113, 1
  %cmp25 = icmp slt i32 %inc49, %add
  br i1 %cmp25, label %for.body26, label %for.end50

for.end50:                                        ; preds = %while.end47, %for.cond23.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @BPG_initFromColoring(%struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap, i32* nocapture %indX, i32* nocapture %indY) #0 {
entry:
  %ierr = alloca i32, align 4
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %vewghts = alloca i32*, align 8
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._Graph* %graph, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %colors, null
  %or.cond441 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %cX, 0
  %or.cond442 = or i1 %or.cond441, %cmp5
  %cmp7 = icmp slt i32 %cY, 0
  %or.cond443 = or i1 %or.cond442, %cmp7
  %cmp9 = icmp eq i32 %cX, %cY
  %or.cond444 = or i1 %or.cond443, %cmp9
  %cmp11 = icmp eq i32* %cmap, null
  %or.cond445 = or i1 %or.cond444, %cmp11
  br i1 %or.cond445, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), %struct._BPG* %bpg, %struct._Graph* %graph, i32* %colors, i32 %cX, i32 %cY, i32* %cmap) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #5
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %1 = load i32* %nvtx, align 4, !tbaa !3
  call void @IVfill(i32 %1, i32* %cmap, i32 -1) #5
  %cmp12487 = icmp sgt i32 %1, 0
  br i1 %cmp12487, label %for.body, label %for.end51

for.cond21.preheader:                             ; preds = %for.inc
  %cmp22482 = icmp sgt i32 %nX.1, 0
  br i1 %cmp22482, label %for.body23, label %for.end51

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %for.inc ], [ 0, %if.end ]
  %nX.0488 = phi i32 [ %nX.1, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %colors, i64 %indvars.iv527
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %2, %cX
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body
  %idxprom15 = sext i32 %nX.0488 to i64
  %arrayidx16 = getelementptr inbounds i32* %indX, i64 %idxprom15
  %3 = trunc i64 %indvars.iv527 to i32
  store i32 %3, i32* %arrayidx16, align 4, !tbaa !3
  %inc = add nsw i32 %nX.0488, 1
  %arrayidx18 = getelementptr inbounds i32* %cmap, i64 %indvars.iv527
  store i32 %nX.0488, i32* %arrayidx18, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then14
  %nX.1 = phi i32 [ %inc, %if.then14 ], [ %nX.0488, %for.body ]
  %indvars.iv.next528 = add i64 %indvars.iv527, 1
  %lftr.wideiv529 = trunc i64 %indvars.iv.next528 to i32
  %exitcond530 = icmp eq i32 %lftr.wideiv529, %1
  br i1 %exitcond530, label %for.cond21.preheader, label %for.body

for.body23:                                       ; preds = %for.cond21.preheader, %for.inc49
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %for.inc49 ], [ 0, %for.cond21.preheader ]
  %nY.0484 = phi i32 [ %nY.1.lcssa, %for.inc49 ], [ 0, %for.cond21.preheader ]
  %arrayidx25 = getelementptr inbounds i32* %indX, i64 %indvars.iv523
  %4 = load i32* %arrayidx25, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %4, i32* %vsize, i32** %vadj) #5
  %5 = load i32* %vsize, align 4, !tbaa !3
  %cmp27477 = icmp sgt i32 %5, 0
  br i1 %cmp27477, label %for.body28.lr.ph, label %for.inc49

for.body28.lr.ph:                                 ; preds = %for.body23
  %6 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %for.inc46
  %indvars.iv521 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next522, %for.inc46 ]
  %nY.1478 = phi i32 [ %nY.0484, %for.body28.lr.ph ], [ %nY.2, %for.inc46 ]
  %arrayidx30 = getelementptr inbounds i32* %6, i64 %indvars.iv521
  %7 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp31 = icmp slt i32 %7, %1
  br i1 %cmp31, label %land.lhs.true, label %for.inc46

land.lhs.true:                                    ; preds = %for.body28
  %idxprom32 = sext i32 %7 to i64
  %arrayidx33 = getelementptr inbounds i32* %colors, i64 %idxprom32
  %8 = load i32* %arrayidx33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %8, %cY
  br i1 %cmp34, label %land.lhs.true35, label %for.inc46

land.lhs.true35:                                  ; preds = %land.lhs.true
  %arrayidx37 = getelementptr inbounds i32* %cmap, i64 %idxprom32
  %9 = load i32* %arrayidx37, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %9, -1
  br i1 %cmp38, label %if.then39, label %for.inc46

if.then39:                                        ; preds = %land.lhs.true35
  %idxprom40 = sext i32 %nY.1478 to i64
  %arrayidx41 = getelementptr inbounds i32* %indY, i64 %idxprom40
  store i32 %7, i32* %arrayidx41, align 4, !tbaa !3
  %inc42 = add nsw i32 %nY.1478, 1
  %add = add nsw i32 %nY.1478, %nX.1
  store i32 %add, i32* %arrayidx37, align 4, !tbaa !3
  br label %for.inc46

for.inc46:                                        ; preds = %for.body28, %land.lhs.true, %land.lhs.true35, %if.then39
  %nY.2 = phi i32 [ %inc42, %if.then39 ], [ %nY.1478, %land.lhs.true35 ], [ %nY.1478, %land.lhs.true ], [ %nY.1478, %for.body28 ]
  %indvars.iv.next522 = add i64 %indvars.iv521, 1
  %10 = trunc i64 %indvars.iv.next522 to i32
  %cmp27 = icmp slt i32 %10, %5
  br i1 %cmp27, label %for.body28, label %for.inc49

for.inc49:                                        ; preds = %for.inc46, %for.body23
  %nY.1.lcssa = phi i32 [ %nY.0484, %for.body23 ], [ %nY.2, %for.inc46 ]
  %indvars.iv.next524 = add i64 %indvars.iv523, 1
  %lftr.wideiv525 = trunc i64 %indvars.iv.next524 to i32
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %nX.1
  br i1 %exitcond526, label %for.end51, label %for.body23

for.end51:                                        ; preds = %if.end, %for.inc49, %for.cond21.preheader
  %cmp22482537 = phi i1 [ false, %for.cond21.preheader ], [ %cmp22482, %for.inc49 ], [ false, %if.end ]
  %nX.0.lcssa536 = phi i32 [ %nX.1, %for.cond21.preheader ], [ %nX.1, %for.inc49 ], [ 0, %if.end ]
  %nY.0.lcssa = phi i32 [ 0, %for.cond21.preheader ], [ %nY.1.lcssa, %for.inc49 ], [ 0, %if.end ]
  %nX52 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  store i32 %nX.0.lcssa536, i32* %nX52, align 4, !tbaa !3
  %nY53 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  store i32 %nY.0.lcssa, i32* %nY53, align 4, !tbaa !3
  %cmp55 = icmp eq i32 %nX.0.lcssa536, 0
  %cmp58 = icmp eq i32 %nY.0.lcssa, 0
  %or.cond446 = or i1 %cmp55, %cmp58
  br i1 %or.cond446, label %if.then59, label %if.end65

if.then59:                                        ; preds = %for.end51
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 %nX.0.lcssa536, i32 %nY.0.lcssa) #5
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call62 = call i32 @IVfp80(%struct._IO_FILE* %14, i32 %1, i32* %colors, i32 80, i32* %ierr) #5
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %15)
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call64 = call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %17) #5
  call void @exit(i32 -1) #6
  unreachable

if.end65:                                         ; preds = %for.end51
  %call66 = call %struct._Graph* @Graph_new() #5
  %graph67 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  store %struct._Graph* %call66, %struct._Graph** %graph67, align 8, !tbaa !0
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %18 = load i32* %type, align 4, !tbaa !3
  %add68 = add nsw i32 %nY.0.lcssa, %nX.0.lcssa536
  call void @Graph_init1(%struct._Graph* %call66, i32 %18, i32 %add68, i32 0, i32 0, i32 1, i32 1) #5
  %19 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %19, 2
  %cmp70 = icmp eq i32 %rem, 1
  br i1 %cmp70, label %for.cond72.preheader, label %if.end103

for.cond72.preheader:                             ; preds = %if.end65
  br i1 %cmp22482537, label %for.body74.lr.ph, label %for.cond85.preheader

for.body74.lr.ph:                                 ; preds = %for.cond72.preheader
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %20 = load i32** %vwghts, align 8, !tbaa !0
  %vwghts80 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7
  %21 = load i32** %vwghts80, align 8, !tbaa !0
  br label %for.body74

for.cond85.preheader:                             ; preds = %for.body74, %for.cond72.preheader
  %cmp86472 = icmp sgt i32 %nY.0.lcssa, 0
  br i1 %cmp86472, label %for.body87.lr.ph, label %for.cond85.preheader.for.end99_crit_edge

for.cond85.preheader.for.end99_crit_edge:         ; preds = %for.cond85.preheader
  %vwghts101.phi.trans.insert = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7
  %.pre534 = load i32** %vwghts101.phi.trans.insert, align 8, !tbaa !0
  br label %for.end99

for.body87.lr.ph:                                 ; preds = %for.cond85.preheader
  %vwghts91 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %22 = load i32** %vwghts91, align 8, !tbaa !0
  %vwghts94 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 7
  %23 = load i32** %vwghts94, align 8, !tbaa !0
  %24 = sext i32 %nX.0.lcssa536 to i64
  br label %for.body87

for.body74:                                       ; preds = %for.body74, %for.body74.lr.ph
  %indvars.iv517 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next518, %for.body74 ]
  %arrayidx76 = getelementptr inbounds i32* %indX, i64 %indvars.iv517
  %25 = load i32* %arrayidx76, align 4, !tbaa !3
  %idxprom77 = sext i32 %25 to i64
  %arrayidx78 = getelementptr inbounds i32* %20, i64 %idxprom77
  %26 = load i32* %arrayidx78, align 4, !tbaa !3
  %arrayidx81 = getelementptr inbounds i32* %21, i64 %indvars.iv517
  store i32 %26, i32* %arrayidx81, align 4, !tbaa !3
  %indvars.iv.next518 = add i64 %indvars.iv517, 1
  %lftr.wideiv519 = trunc i64 %indvars.iv.next518 to i32
  %exitcond520 = icmp eq i32 %lftr.wideiv519, %nX.0.lcssa536
  br i1 %exitcond520, label %for.cond85.preheader, label %for.body74

for.body87:                                       ; preds = %for.body87, %for.body87.lr.ph
  %indvars.iv513 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next514, %for.body87 ]
  %indvars.iv511 = phi i64 [ %24, %for.body87.lr.ph ], [ %indvars.iv.next512, %for.body87 ]
  %arrayidx89 = getelementptr inbounds i32* %indY, i64 %indvars.iv513
  %27 = load i32* %arrayidx89, align 4, !tbaa !3
  %idxprom90 = sext i32 %27 to i64
  %arrayidx92 = getelementptr inbounds i32* %22, i64 %idxprom90
  %28 = load i32* %arrayidx92, align 4, !tbaa !3
  %arrayidx95 = getelementptr inbounds i32* %23, i64 %indvars.iv511
  store i32 %28, i32* %arrayidx95, align 4, !tbaa !3
  %indvars.iv.next514 = add i64 %indvars.iv513, 1
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %lftr.wideiv515 = trunc i64 %indvars.iv.next514 to i32
  %exitcond516 = icmp eq i32 %lftr.wideiv515, %nY.0.lcssa
  br i1 %exitcond516, label %for.end99, label %for.body87

for.end99:                                        ; preds = %for.body87, %for.cond85.preheader.for.end99_crit_edge
  %29 = phi i32* [ %.pre534, %for.cond85.preheader.for.end99_crit_edge ], [ %23, %for.body87 ]
  %call102 = call i32 @IVsum(i32 %add68, i32* %29) #5
  %totvwght = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 4
  store i32 %call102, i32* %totvwght, align 4, !tbaa !3
  %.pr = load i32* %type, align 4, !tbaa !3
  br label %if.end103

if.end103:                                        ; preds = %for.end99, %if.end65
  %30 = phi i32 [ %.pr, %for.end99 ], [ %19, %if.end65 ]
  %cmp105 = icmp slt i32 %30, 2
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %31 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call107 = call i32 @IVL_maxListSize(%struct._IVL* %31) #5
  %call108 = call i32* @IVinit2(i32 %call107) #5
  br i1 %cmp105, label %for.cond109.preheader, label %if.else

for.cond109.preheader:                            ; preds = %if.end103
  br i1 %cmp22482537, label %for.body111.lr.ph, label %for.cond138.preheader

for.body111.lr.ph:                                ; preds = %for.cond109.preheader
  %adjIVL134 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6
  br label %for.body111

for.cond138.preheader:                            ; preds = %for.end133, %for.cond109.preheader
  %cmp139450 = icmp sgt i32 %nY.0.lcssa, 0
  br i1 %cmp139450, label %for.body140.lr.ph, label %for.end167

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %adjIVL163 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6
  br label %for.body140

for.body111:                                      ; preds = %for.end133, %for.body111.lr.ph
  %indvars.iv495 = phi i64 [ 0, %for.body111.lr.ph ], [ %indvars.iv.next496, %for.end133 ]
  %arrayidx113 = getelementptr inbounds i32* %indX, i64 %indvars.iv495
  %32 = load i32* %arrayidx113, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %32, i32* %vsize, i32** %vadj) #5
  %33 = load i32* %vsize, align 4, !tbaa !3
  %cmp115453 = icmp sgt i32 %33, 0
  br i1 %cmp115453, label %for.body116.lr.ph, label %for.end133

for.body116.lr.ph:                                ; preds = %for.body111
  %34 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc131
  %35 = phi i32 [ %33, %for.body116.lr.ph ], [ %39, %for.inc131 ]
  %indvars.iv493 = phi i64 [ 0, %for.body116.lr.ph ], [ %indvars.iv.next494, %for.inc131 ]
  %count.0455 = phi i32 [ 0, %for.body116.lr.ph ], [ %count.1, %for.inc131 ]
  %arrayidx118 = getelementptr inbounds i32* %34, i64 %indvars.iv493
  %36 = load i32* %arrayidx118, align 4, !tbaa !3
  %cmp119 = icmp slt i32 %36, %1
  br i1 %cmp119, label %land.lhs.true120, label %for.inc131

land.lhs.true120:                                 ; preds = %for.body116
  %idxprom121 = sext i32 %36 to i64
  %arrayidx122 = getelementptr inbounds i32* %colors, i64 %idxprom121
  %37 = load i32* %arrayidx122, align 4, !tbaa !3
  %cmp123 = icmp eq i32 %37, %cY
  br i1 %cmp123, label %if.then124, label %for.inc131

if.then124:                                       ; preds = %land.lhs.true120
  %arrayidx126 = getelementptr inbounds i32* %cmap, i64 %idxprom121
  %38 = load i32* %arrayidx126, align 4, !tbaa !3
  %inc127 = add nsw i32 %count.0455, 1
  %idxprom128 = sext i32 %count.0455 to i64
  %arrayidx129 = getelementptr inbounds i32* %call108, i64 %idxprom128
  store i32 %38, i32* %arrayidx129, align 4, !tbaa !3
  %.pre533 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc131

for.inc131:                                       ; preds = %for.body116, %land.lhs.true120, %if.then124
  %39 = phi i32 [ %.pre533, %if.then124 ], [ %35, %land.lhs.true120 ], [ %35, %for.body116 ]
  %count.1 = phi i32 [ %inc127, %if.then124 ], [ %count.0455, %land.lhs.true120 ], [ %count.0455, %for.body116 ]
  %indvars.iv.next494 = add i64 %indvars.iv493, 1
  %40 = trunc i64 %indvars.iv.next494 to i32
  %cmp115 = icmp slt i32 %40, %39
  br i1 %cmp115, label %for.body116, label %for.end133

for.end133:                                       ; preds = %for.inc131, %for.body111
  %count.0.lcssa = phi i32 [ 0, %for.body111 ], [ %count.1, %for.inc131 ]
  call void @IVqsortUp(i32 %count.0.lcssa, i32* %call108) #5
  %41 = load %struct._IVL** %adjIVL134, align 8, !tbaa !0
  %42 = trunc i64 %indvars.iv495 to i32
  call void @IVL_setList(%struct._IVL* %41, i32 %42, i32 %count.0.lcssa, i32* %call108) #5
  %indvars.iv.next496 = add i64 %indvars.iv495, 1
  %lftr.wideiv497 = trunc i64 %indvars.iv.next496 to i32
  %exitcond498 = icmp eq i32 %lftr.wideiv497, %nX.0.lcssa536
  br i1 %exitcond498, label %for.cond138.preheader, label %for.body111

for.body140:                                      ; preds = %for.end162, %for.body140.lr.ph
  %indvars.iv491 = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next492, %for.end162 ]
  %y.1452 = phi i32 [ %nX.0.lcssa536, %for.body140.lr.ph ], [ %inc166, %for.end162 ]
  %arrayidx142 = getelementptr inbounds i32* %indY, i64 %indvars.iv491
  %43 = load i32* %arrayidx142, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %43, i32* %vsize, i32** %vadj) #5
  %44 = load i32* %vsize, align 4, !tbaa !3
  %cmp144447 = icmp sgt i32 %44, 0
  br i1 %cmp144447, label %for.body145.lr.ph, label %for.end162

for.body145.lr.ph:                                ; preds = %for.body140
  %45 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body145

for.body145:                                      ; preds = %for.body145.lr.ph, %for.inc160
  %46 = phi i32 [ %44, %for.body145.lr.ph ], [ %50, %for.inc160 ]
  %indvars.iv = phi i64 [ 0, %for.body145.lr.ph ], [ %indvars.iv.next, %for.inc160 ]
  %count.2449 = phi i32 [ 0, %for.body145.lr.ph ], [ %count.3, %for.inc160 ]
  %arrayidx147 = getelementptr inbounds i32* %45, i64 %indvars.iv
  %47 = load i32* %arrayidx147, align 4, !tbaa !3
  %cmp148 = icmp slt i32 %47, %1
  br i1 %cmp148, label %land.lhs.true149, label %for.inc160

land.lhs.true149:                                 ; preds = %for.body145
  %idxprom150 = sext i32 %47 to i64
  %arrayidx151 = getelementptr inbounds i32* %colors, i64 %idxprom150
  %48 = load i32* %arrayidx151, align 4, !tbaa !3
  %cmp152 = icmp eq i32 %48, %cX
  br i1 %cmp152, label %if.then153, label %for.inc160

if.then153:                                       ; preds = %land.lhs.true149
  %arrayidx155 = getelementptr inbounds i32* %cmap, i64 %idxprom150
  %49 = load i32* %arrayidx155, align 4, !tbaa !3
  %inc156 = add nsw i32 %count.2449, 1
  %idxprom157 = sext i32 %count.2449 to i64
  %arrayidx158 = getelementptr inbounds i32* %call108, i64 %idxprom157
  store i32 %49, i32* %arrayidx158, align 4, !tbaa !3
  %.pre532 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc160

for.inc160:                                       ; preds = %for.body145, %land.lhs.true149, %if.then153
  %50 = phi i32 [ %.pre532, %if.then153 ], [ %46, %land.lhs.true149 ], [ %46, %for.body145 ]
  %count.3 = phi i32 [ %inc156, %if.then153 ], [ %count.2449, %land.lhs.true149 ], [ %count.2449, %for.body145 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %51 = trunc i64 %indvars.iv.next to i32
  %cmp144 = icmp slt i32 %51, %50
  br i1 %cmp144, label %for.body145, label %for.end162

for.end162:                                       ; preds = %for.inc160, %for.body140
  %count.2.lcssa = phi i32 [ 0, %for.body140 ], [ %count.3, %for.inc160 ]
  call void @IVqsortUp(i32 %count.2.lcssa, i32* %call108) #5
  %52 = load %struct._IVL** %adjIVL163, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %52, i32 %y.1452, i32 %count.2.lcssa, i32* %call108) #5
  %indvars.iv.next492 = add i64 %indvars.iv491, 1
  %inc166 = add nsw i32 %y.1452, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next492 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nY.0.lcssa
  br i1 %exitcond, label %for.end167, label %for.body140

for.end167:                                       ; preds = %for.end162, %for.cond138.preheader
  call void @IVfree(i32* %call108) #5
  br label %if.end238

if.else:                                          ; preds = %if.end103
  %call171 = call i32* @IVinit2(i32 %call107) #5
  br i1 %cmp22482537, label %for.body174.lr.ph, label %for.cond205.preheader

for.body174.lr.ph:                                ; preds = %if.else
  %adjIVL201 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6
  %ewghtIVL = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 8
  br label %for.body174

for.cond205.preheader:                            ; preds = %for.end200, %if.else
  %cmp206463 = icmp sgt i32 %nY.0.lcssa, 0
  br i1 %cmp206463, label %for.body207.lr.ph, label %for.end237

for.body207.lr.ph:                                ; preds = %for.cond205.preheader
  %adjIVL232 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 6
  %ewghtIVL233 = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 8
  br label %for.body207

for.body174:                                      ; preds = %for.end200, %for.body174.lr.ph
  %indvars.iv507 = phi i64 [ 0, %for.body174.lr.ph ], [ %indvars.iv.next508, %for.end200 ]
  %arrayidx176 = getelementptr inbounds i32* %indX, i64 %indvars.iv507
  %53 = load i32* %arrayidx176, align 4, !tbaa !3
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %53, i32* %vsize, i32** %vadj, i32** %vewghts) #5
  %54 = load i32* %vsize, align 4, !tbaa !3
  %cmp178466 = icmp sgt i32 %54, 0
  br i1 %cmp178466, label %for.body179.lr.ph, label %for.end200

for.body179.lr.ph:                                ; preds = %for.body174
  %55 = load i32** %vadj, align 8, !tbaa !0
  %56 = load i32** %vewghts, align 8, !tbaa !0
  br label %for.body179

for.body179:                                      ; preds = %for.body179.lr.ph, %for.inc198
  %57 = phi i32 [ %54, %for.body179.lr.ph ], [ %62, %for.inc198 ]
  %indvars.iv505 = phi i64 [ 0, %for.body179.lr.ph ], [ %indvars.iv.next506, %for.inc198 ]
  %count.4468 = phi i32 [ 0, %for.body179.lr.ph ], [ %count.5, %for.inc198 ]
  %arrayidx181 = getelementptr inbounds i32* %55, i64 %indvars.iv505
  %58 = load i32* %arrayidx181, align 4, !tbaa !3
  %cmp182 = icmp slt i32 %58, %1
  br i1 %cmp182, label %land.lhs.true183, label %for.inc198

land.lhs.true183:                                 ; preds = %for.body179
  %idxprom184 = sext i32 %58 to i64
  %arrayidx185 = getelementptr inbounds i32* %colors, i64 %idxprom184
  %59 = load i32* %arrayidx185, align 4, !tbaa !3
  %cmp186 = icmp eq i32 %59, %cY
  br i1 %cmp186, label %if.then187, label %for.inc198

if.then187:                                       ; preds = %land.lhs.true183
  %arrayidx189 = getelementptr inbounds i32* %cmap, i64 %idxprom184
  %60 = load i32* %arrayidx189, align 4, !tbaa !3
  %idxprom190 = sext i32 %count.4468 to i64
  %arrayidx191 = getelementptr inbounds i32* %call108, i64 %idxprom190
  store i32 %60, i32* %arrayidx191, align 4, !tbaa !3
  %arrayidx193 = getelementptr inbounds i32* %56, i64 %indvars.iv505
  %61 = load i32* %arrayidx193, align 4, !tbaa !3
  %arrayidx195 = getelementptr inbounds i32* %call171, i64 %idxprom190
  store i32 %61, i32* %arrayidx195, align 4, !tbaa !3
  %inc196 = add nsw i32 %count.4468, 1
  %.pre531 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc198

for.inc198:                                       ; preds = %for.body179, %land.lhs.true183, %if.then187
  %62 = phi i32 [ %.pre531, %if.then187 ], [ %57, %land.lhs.true183 ], [ %57, %for.body179 ]
  %count.5 = phi i32 [ %inc196, %if.then187 ], [ %count.4468, %land.lhs.true183 ], [ %count.4468, %for.body179 ]
  %indvars.iv.next506 = add i64 %indvars.iv505, 1
  %63 = trunc i64 %indvars.iv.next506 to i32
  %cmp178 = icmp slt i32 %63, %62
  br i1 %cmp178, label %for.body179, label %for.end200

for.end200:                                       ; preds = %for.inc198, %for.body174
  %count.4.lcssa = phi i32 [ 0, %for.body174 ], [ %count.5, %for.inc198 ]
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call108, i32* %call171) #5
  %64 = load %struct._IVL** %adjIVL201, align 8, !tbaa !0
  %65 = trunc i64 %indvars.iv507 to i32
  call void @IVL_setList(%struct._IVL* %64, i32 %65, i32 %count.4.lcssa, i32* %call108) #5
  %66 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %66, i32 %65, i32 %count.4.lcssa, i32* %call171) #5
  %indvars.iv.next508 = add i64 %indvars.iv507, 1
  %lftr.wideiv509 = trunc i64 %indvars.iv.next508 to i32
  %exitcond510 = icmp eq i32 %lftr.wideiv509, %nX.0.lcssa536
  br i1 %exitcond510, label %for.cond205.preheader, label %for.body174

for.body207:                                      ; preds = %for.end231, %for.body207.lr.ph
  %indvars.iv501 = phi i64 [ 0, %for.body207.lr.ph ], [ %indvars.iv.next502, %for.end231 ]
  %y.2465 = phi i32 [ %nX.0.lcssa536, %for.body207.lr.ph ], [ %inc236, %for.end231 ]
  %arrayidx209 = getelementptr inbounds i32* %indY, i64 %indvars.iv501
  %67 = load i32* %arrayidx209, align 4, !tbaa !3
  call void @Graph_adjAndEweights(%struct._Graph* %graph, i32 %67, i32* %vsize, i32** %vadj, i32** %vewghts) #5
  %68 = load i32* %vsize, align 4, !tbaa !3
  %cmp211459 = icmp sgt i32 %68, 0
  br i1 %cmp211459, label %for.body212.lr.ph, label %for.end231

for.body212.lr.ph:                                ; preds = %for.body207
  %69 = load i32** %vadj, align 8, !tbaa !0
  %70 = load i32** %vewghts, align 8, !tbaa !0
  br label %for.body212

for.body212:                                      ; preds = %for.body212.lr.ph, %for.inc229
  %71 = phi i32 [ %68, %for.body212.lr.ph ], [ %76, %for.inc229 ]
  %indvars.iv499 = phi i64 [ 0, %for.body212.lr.ph ], [ %indvars.iv.next500, %for.inc229 ]
  %count.6461 = phi i32 [ 0, %for.body212.lr.ph ], [ %count.7, %for.inc229 ]
  %arrayidx214 = getelementptr inbounds i32* %69, i64 %indvars.iv499
  %72 = load i32* %arrayidx214, align 4, !tbaa !3
  %idxprom215 = sext i32 %72 to i64
  %arrayidx216 = getelementptr inbounds i32* %colors, i64 %idxprom215
  %73 = load i32* %arrayidx216, align 4, !tbaa !3
  %cmp217 = icmp eq i32 %73, %cX
  br i1 %cmp217, label %if.then218, label %for.inc229

if.then218:                                       ; preds = %for.body212
  %arrayidx220 = getelementptr inbounds i32* %cmap, i64 %idxprom215
  %74 = load i32* %arrayidx220, align 4, !tbaa !3
  %idxprom221 = sext i32 %count.6461 to i64
  %arrayidx222 = getelementptr inbounds i32* %call108, i64 %idxprom221
  store i32 %74, i32* %arrayidx222, align 4, !tbaa !3
  %arrayidx224 = getelementptr inbounds i32* %70, i64 %indvars.iv499
  %75 = load i32* %arrayidx224, align 4, !tbaa !3
  %arrayidx226 = getelementptr inbounds i32* %call171, i64 %idxprom221
  store i32 %75, i32* %arrayidx226, align 4, !tbaa !3
  %inc227 = add nsw i32 %count.6461, 1
  %.pre = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc229

for.inc229:                                       ; preds = %for.body212, %if.then218
  %76 = phi i32 [ %.pre, %if.then218 ], [ %71, %for.body212 ]
  %count.7 = phi i32 [ %inc227, %if.then218 ], [ %count.6461, %for.body212 ]
  %indvars.iv.next500 = add i64 %indvars.iv499, 1
  %77 = trunc i64 %indvars.iv.next500 to i32
  %cmp211 = icmp slt i32 %77, %76
  br i1 %cmp211, label %for.body212, label %for.end231

for.end231:                                       ; preds = %for.inc229, %for.body207
  %count.6.lcssa = phi i32 [ 0, %for.body207 ], [ %count.7, %for.inc229 ]
  call void @IV2qsortUp(i32 %count.6.lcssa, i32* %call108, i32* %call171) #5
  %78 = load %struct._IVL** %adjIVL232, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %78, i32 %y.2465, i32 %count.6.lcssa, i32* %call108) #5
  %79 = load %struct._IVL** %ewghtIVL233, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %79, i32 %y.2465, i32 %count.6.lcssa, i32* %call171) #5
  %indvars.iv.next502 = add i64 %indvars.iv501, 1
  %inc236 = add nsw i32 %y.2465, 1
  %lftr.wideiv503 = trunc i64 %indvars.iv.next502 to i32
  %exitcond504 = icmp eq i32 %lftr.wideiv503, %nY.0.lcssa
  br i1 %exitcond504, label %for.end237, label %for.body207

for.end237:                                       ; preds = %for.end231, %for.cond205.preheader
  call void @IVfree(i32* %call108) #5
  call void @IVfree(i32* %call171) #5
  br label %if.end238

if.end238:                                        ; preds = %for.end237, %for.end167
  %80 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %sizes = getelementptr inbounds %struct._IVL* %80, i64 0, i32 4
  %81 = load i32** %sizes, align 8, !tbaa !0
  %call241 = call i32 @IVsum(i32 %add68, i32* %81) #5
  %nedges = getelementptr inbounds %struct._Graph* %call66, i64 0, i32 3
  store i32 %call241, i32* %nedges, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare i32 @IVL_maxListSize(%struct._IVL*) #3

; Function Attrs: optsize
declare i32* @IVinit2(i32) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Graph_adjAndEweights(%struct._Graph*, i32, i32*, i32**, i32**) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
