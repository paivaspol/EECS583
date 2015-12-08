; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._cell = type { i32, i32, i32, i32, %struct._cell*, %struct._cell* }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in BKL_fidmat(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"\0A fatal error in BKL_fidmatPass(%p,%p,%p,%p,%d)\0A bad input\0A\00", align 1
@Undo = internal global %struct._cell zeroinitializer, align 8
@Head = internal global %struct._cell zeroinitializer, align 8

; Function Attrs: nounwind optsize uwtable
define float @BKL_fidmat(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %ndom1 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %1 = load i32* %ndom1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 9
  br i1 %cmp2, label %if.then3, label %if.then9

if.then3:                                         ; preds = %if.end
  %sub = add nsw i32 %1, -1
  %call4 = tail call i32* @IVinit(i32 %sub, i32 -1) #4
  %call5 = tail call i32* @IVinit(i32 %sub, i32 -1) #4
  tail call void @IVramp(i32 %sub, i32* %call4, i32 1, i32 1) #4
  %call6 = tail call float @BKL_exhSearch(%struct._BKL* %bkl, i32 %sub, i32* %call4, i32* %call5) #4
  tail call void @IVfree(i32* %call4) #4
  tail call void @IVfree(i32* %call5) #4
  %call7 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #4
  br label %if.end48

if.then9:                                         ; preds = %if.end
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 5
  %call10 = tail call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call10 to %struct._cell*
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then13, label %for.body.lr.ph

if.then13:                                        ; preds = %if.then9
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 98, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %if.then9
  %call29 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %idom.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %cell.092 = phi %struct._cell* [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %domid = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 0
  store i32 %idom.093, i32* %domid, align 4, !tbaa !3
  %deltaW = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 3
  store i32 0, i32* %deltaW, align 4, !tbaa !3
  %deltaB = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 2
  store i32 0, i32* %deltaB, align 4, !tbaa !3
  %deltaS = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 1
  store i32 0, i32* %deltaS, align 4, !tbaa !3
  %next = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 5
  store %struct._cell* %cell.092, %struct._cell** %next, align 8, !tbaa !0
  %prev = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 4
  store %struct._cell* %cell.092, %struct._cell** %prev, align 8, !tbaa !0
  %inc = add nsw i32 %idom.093, 1
  %incdec.ptr = getelementptr inbounds %struct._cell* %cell.092, i64 1
  %exitcond = icmp eq i32 %inc, %1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %4 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %call32 = tail call %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG* %4) #4
  %npass = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 5
  store i32 1, i32* %npass, align 4, !tbaa !3
  %call34 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %2, i32* %call29, %struct._Graph* %call32, i32 1) #6
  br label %while.body

while.body:                                       ; preds = %while.body, %for.end
  %bestcost.0 = phi float [ %call34, %for.end ], [ %call38, %while.body ]
  %5 = load i32* %npass, align 4, !tbaa !3
  %inc36 = add nsw i32 %5, 1
  store i32 %inc36, i32* %npass, align 4, !tbaa !3
  %call38 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %2, i32* %call29, %struct._Graph* %call32, i32 %inc36) #6
  %cmp39 = fcmp olt float %call38, %bestcost.0
  br i1 %cmp39, label %while.body, label %if.end47

if.end47:                                         ; preds = %while.body
  tail call void @free(i8* %call10) #4
  tail call void @IVfree(i32* %call29) #4
  tail call void @Graph_free(%struct._Graph* %call32) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then3
  %cost.0 = phi float [ %call7, %if.then3 ], [ %call38, %if.end47 ]
  ret float %cost.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare float @BKL_exhSearch(%struct._BKL*, i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #0 {
entry:
  %size = alloca i32, align 4
  %doms = alloca i32*, align 8
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp eq %struct._cell* %cells, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %tags, null
  %or.cond230 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._Graph* %DomByDom, null
  %or.cond231 = or i1 %or.cond230, %cmp5
  br i1 %or.cond231, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %ndom6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %1 = load i32* %ndom6, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0
  %call8 = call float @BKL_evalfcn(%struct._BKL* %bkl) #4
  store %struct._cell* @Head, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !tbaa !0
  store %struct._cell* @Head, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !tbaa !0
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !tbaa !0
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  %cmp11238 = icmp sgt i32 %1, 0
  br i1 %cmp11238, label %for.body, label %while.end132

while.cond.preheader:                             ; preds = %for.inc
  %.pre = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !tbaa !0
  %cmp24236 = icmp eq %struct._cell* %.pre, @Head
  br i1 %cmp24236, label %while.cond119.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx29 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1
  %arrayidx32 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2
  %nimprove = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8
  br label %while.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241
  %domid = getelementptr inbounds %struct._cell* %arrayidx, i64 0, i32 0
  %2 = trunc i64 %indvars.iv241 to i32
  store i32 %2, i32* %domid, align 4, !tbaa !3
  %next12 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 5
  store %struct._cell* %arrayidx, %struct._cell** %next12, align 8, !tbaa !0
  %prev13 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 4
  store %struct._cell* %arrayidx, %struct._cell** %prev13, align 8, !tbaa !0
  %call14 = call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %2) #4
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  %deltaS = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 1
  %deltaB = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 2
  %deltaW = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 3
  call void @BKL_evalgain(%struct._BKL* %bkl, i32 %2, i32* %deltaS, i32* %deltaB, i32* %deltaW) #4
  %3 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !tbaa !0
  store %struct._cell* %3, %struct._cell** %prev13, align 8, !tbaa !0
  %next19 = getelementptr inbounds %struct._cell* %3, i64 0, i32 5
  store %struct._cell* %arrayidx, %struct._cell** %next19, align 8, !tbaa !0
  store %struct._cell* %arrayidx, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !tbaa !0
  store %struct._cell* @Head, %struct._cell** %next12, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then16
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next242 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %while.cond.preheader, label %for.body

while.cond.loopexit:                              ; preds = %for.inc116, %if.end87
  %4 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !tbaa !0
  %cmp24 = icmp eq %struct._cell* %4, @Head
  br i1 %cmp24, label %while.cond119.preheader, label %while.body

while.cond119.preheader:                          ; preds = %while.cond.loopexit, %while.cond.preheader
  %bestcost.0.lcssa.ph = phi float [ %bestcost.1, %while.cond.loopexit ], [ %call8, %while.cond.preheader ]
  %.pr = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  %cmp121232 = icmp eq %struct._cell* %.pr, @Undo
  br i1 %cmp121232, label %while.end132, label %while.body122

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %5 = phi %struct._cell* [ %.pre, %while.body.lr.ph ], [ %4, %while.cond.loopexit ]
  %bestcost.0237 = phi float [ %call8, %while.body.lr.ph ], [ %bestcost.1, %while.cond.loopexit ]
  %domid26 = getelementptr inbounds %struct._cell* %5, i64 0, i32 0
  %6 = load i32* %domid26, align 4, !tbaa !3
  %7 = load i32* %arraydecay, align 4, !tbaa !3
  %deltaS28 = getelementptr inbounds %struct._cell* %5, i64 0, i32 1
  %8 = load i32* %deltaS28, align 4, !tbaa !3
  %add = add nsw i32 %8, %7
  %9 = load i32* %arrayidx29, align 4, !tbaa !3
  %deltaB30 = getelementptr inbounds %struct._cell* %5, i64 0, i32 2
  %10 = load i32* %deltaB30, align 4, !tbaa !3
  %add31 = add nsw i32 %10, %9
  %11 = load i32* %arrayidx32, align 4, !tbaa !3
  %deltaW33 = getelementptr inbounds %struct._cell* %5, i64 0, i32 3
  %12 = load i32* %deltaW33, align 4, !tbaa !3
  %add34 = add nsw i32 %12, %11
  %call35 = call float @BKL_eval(%struct._BKL* %bkl, i32 %add, i32 %add31, i32 %add34) #4
  br label %for.cond37.outer

for.cond37.outer:                                 ; preds = %if.then51, %while.body
  %dom.1.ph = phi i32 [ %6, %while.body ], [ %19, %if.then51 ]
  %bettercost.0.ph = phi float [ %call35, %while.body ], [ %call49, %if.then51 ]
  %.pn.ph = phi %struct._cell* [ %5, %while.body ], [ %cell.0, %if.then51 ]
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.outer, %for.body39
  %.pn = phi %struct._cell* [ %cell.0, %for.body39 ], [ %.pn.ph, %for.cond37.outer ]
  %cell.0.in = getelementptr inbounds %struct._cell* %.pn, i64 0, i32 5
  %cell.0 = load %struct._cell** %cell.0.in, align 8
  %cmp38 = icmp eq %struct._cell* %cell.0, @Head
  br i1 %cmp38, label %for.end56, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %13 = load i32* %arraydecay, align 4, !tbaa !3
  %deltaS41 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 1
  %14 = load i32* %deltaS41, align 4, !tbaa !3
  %add42 = add nsw i32 %14, %13
  %15 = load i32* %arrayidx29, align 4, !tbaa !3
  %deltaB44 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 2
  %16 = load i32* %deltaB44, align 4, !tbaa !3
  %add45 = add nsw i32 %16, %15
  %17 = load i32* %arrayidx32, align 4, !tbaa !3
  %deltaW47 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 3
  %18 = load i32* %deltaW47, align 4, !tbaa !3
  %add48 = add nsw i32 %18, %17
  %call49 = call float @BKL_eval(%struct._BKL* %bkl, i32 %add42, i32 %add45, i32 %add48) #4
  %cmp50 = fcmp olt float %call49, %bettercost.0.ph
  br i1 %cmp50, label %if.then51, label %for.cond37

if.then51:                                        ; preds = %for.body39
  %domid52 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 0
  %19 = load i32* %domid52, align 4, !tbaa !3
  br label %for.cond37.outer

for.end56:                                        ; preds = %for.cond37
  %idxprom57 = sext i32 %dom.1.ph to i64
  %arrayidx58 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57
  %next59 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57, i32 5
  %20 = load %struct._cell** %next59, align 8, !tbaa !0
  %prev60 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57, i32 4
  %21 = load %struct._cell** %prev60, align 8, !tbaa !0
  %next61 = getelementptr inbounds %struct._cell* %21, i64 0, i32 5
  store %struct._cell* %20, %struct._cell** %next61, align 8, !tbaa !0
  %22 = load %struct._cell** %prev60, align 8, !tbaa !0
  %23 = load %struct._cell** %next59, align 8, !tbaa !0
  %prev64 = getelementptr inbounds %struct._cell* %23, i64 0, i32 4
  store %struct._cell* %22, %struct._cell** %prev64, align 8, !tbaa !0
  store %struct._cell* %arrayidx58, %struct._cell** %next59, align 8, !tbaa !0
  store %struct._cell* %arrayidx58, %struct._cell** %prev60, align 8, !tbaa !0
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %dom.1.ph) #4
  %24 = load i32* %arraydecay, align 4, !tbaa !3
  %25 = load i32* %arrayidx29, align 4, !tbaa !3
  %26 = load i32* %arrayidx32, align 4, !tbaa !3
  %call70 = call float @BKL_eval(%struct._BKL* %bkl, i32 %24, i32 %25, i32 %26) #4
  %cmp71 = fcmp ogt float %bestcost.0237, %call70
  %27 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  br i1 %cmp71, label %if.then72, label %if.else

if.then72:                                        ; preds = %for.end56
  %28 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !tbaa !0
  %next75 = getelementptr inbounds %struct._cell* %28, i64 0, i32 5
  store %struct._cell* %27, %struct._cell** %next75, align 8, !tbaa !0
  %29 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !tbaa !0
  %30 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  %prev78 = getelementptr inbounds %struct._cell* %30, i64 0, i32 4
  store %struct._cell* %29, %struct._cell** %prev78, align 8, !tbaa !0
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !tbaa !0
  %31 = load i32* %nimprove, align 4, !tbaa !3
  %inc81 = add nsw i32 %31, 1
  store i32 %inc81, i32* %nimprove, align 4, !tbaa !3
  br label %if.end87

if.else:                                          ; preds = %for.end56
  store %struct._cell* %27, %struct._cell** %next59, align 8, !tbaa !0
  %prev84 = getelementptr inbounds %struct._cell* %27, i64 0, i32 4
  store %struct._cell* %arrayidx58, %struct._cell** %prev84, align 8, !tbaa !0
  store %struct._cell* %arrayidx58, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  store %struct._cell* @Undo, %struct._cell** %prev60, align 8, !tbaa !0
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then72
  %bestcost.1 = phi float [ %call70, %if.then72 ], [ %bestcost.0237, %if.else ]
  %arrayidx89 = getelementptr inbounds i32* %tags, i64 %idxprom57
  store i32 %npass, i32* %arrayidx89, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %DomByDom, i32 %dom.1.ph, i32* %size, i32** %doms) #4
  %32 = load i32* %size, align 4, !tbaa !3
  %cmp91234 = icmp sgt i32 %32, 0
  br i1 %cmp91234, label %for.body92, label %while.cond.loopexit

for.body92:                                       ; preds = %for.inc116, %if.end87
  %indvars.iv = phi i64 [ 0, %if.end87 ], [ %indvars.iv.next, %for.inc116 ]
  %33 = load i32** %doms, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i32* %33, i64 %indvars.iv
  %34 = load i32* %arrayidx94, align 4, !tbaa !3
  %idxprom95 = sext i32 %34 to i64
  %arrayidx96 = getelementptr inbounds i32* %tags, i64 %idxprom95
  %35 = load i32* %arrayidx96, align 4, !tbaa !3
  %cmp97 = icmp slt i32 %35, %npass
  br i1 %cmp97, label %land.lhs.true, label %for.inc116

land.lhs.true:                                    ; preds = %for.body92
  %call98 = call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %34) #4
  %cmp99 = icmp eq i32 %call98, 1
  br i1 %cmp99, label %if.then100, label %for.inc116

if.then100:                                       ; preds = %land.lhs.true
  %arrayidx102 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95
  %deltaS103 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 1
  %deltaB104 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 2
  %deltaW105 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 3
  call void @BKL_evalgain(%struct._BKL* %bkl, i32 %34, i32* %deltaS103, i32* %deltaB104, i32* %deltaW105) #4
  %prev106 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 4
  %36 = load %struct._cell** %prev106, align 8, !tbaa !0
  %cmp107 = icmp eq %struct._cell* %36, %arrayidx102
  br i1 %cmp107, label %if.then108, label %for.inc116

if.then108:                                       ; preds = %if.then100
  %37 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !tbaa !0
  store %struct._cell* %37, %struct._cell** %prev106, align 8, !tbaa !0
  %next111 = getelementptr inbounds %struct._cell* %37, i64 0, i32 5
  store %struct._cell* %arrayidx102, %struct._cell** %next111, align 8, !tbaa !0
  store %struct._cell* %arrayidx102, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !tbaa !0
  %next113 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 5
  store %struct._cell* @Head, %struct._cell** %next113, align 8, !tbaa !0
  br label %for.inc116

for.inc116:                                       ; preds = %if.then100, %land.lhs.true, %for.body92, %if.then108
  %indvars.iv.next = add i64 %indvars.iv, 1
  %38 = load i32* %size, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next to i32
  %cmp91 = icmp slt i32 %39, %38
  br i1 %cmp91, label %for.body92, label %while.cond.loopexit

while.body122:                                    ; preds = %while.cond119.preheader, %while.body122
  %40 = phi %struct._cell* [ %46, %while.body122 ], [ %.pr, %while.cond119.preheader ]
  %next123 = getelementptr inbounds %struct._cell* %40, i64 0, i32 5
  %41 = load %struct._cell** %next123, align 8, !tbaa !0
  %prev124 = getelementptr inbounds %struct._cell* %40, i64 0, i32 4
  %42 = load %struct._cell** %prev124, align 8, !tbaa !0
  %next125 = getelementptr inbounds %struct._cell* %42, i64 0, i32 5
  store %struct._cell* %41, %struct._cell** %next125, align 8, !tbaa !0
  %43 = load %struct._cell** %prev124, align 8, !tbaa !0
  %44 = load %struct._cell** %next123, align 8, !tbaa !0
  %prev128 = getelementptr inbounds %struct._cell* %44, i64 0, i32 4
  store %struct._cell* %43, %struct._cell** %prev128, align 8, !tbaa !0
  store %struct._cell* %40, %struct._cell** %next123, align 8, !tbaa !0
  store %struct._cell* %40, %struct._cell** %prev124, align 8, !tbaa !0
  %domid131 = getelementptr inbounds %struct._cell* %40, i64 0, i32 0
  %45 = load i32* %domid131, align 4, !tbaa !3
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %45) #4
  %46 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !tbaa !0
  %cmp121 = icmp eq %struct._cell* %46, @Undo
  br i1 %cmp121, label %while.end132, label %while.body122

while.end132:                                     ; preds = %if.end, %while.body122, %while.cond119.preheader
  %bestcost.0.lcssa245 = phi float [ %bestcost.0.lcssa.ph, %while.body122 ], [ %bestcost.0.lcssa.ph, %while.cond119.preheader ], [ %call8, %if.end ]
  ret float %bestcost.0.lcssa245
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #3

; Function Attrs: optsize
declare i32 @BKL_domAdjToSep(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @BKL_evalgain(%struct._BKL*, i32, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare float @BKL_eval(%struct._BKL*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @BKL_flipDomain(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
