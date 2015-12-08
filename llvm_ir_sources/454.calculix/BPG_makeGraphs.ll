; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._BPG = type { i32, i32, %struct._Graph* }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in BPG_makeGraphXbyX(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG* %bpg) #0 {
entry:
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  %xadj = alloca i32*, align 8
  %yadj = alloca i32*, align 8
  %cmp = icmp eq %struct._BPG* %bpg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %graph1 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %1 = load %struct._Graph** %graph1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %1, null
  br i1 %cmp2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nX3 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %2 = load i32* %nX3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %2, 1
  br i1 %cmp4, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %call7 = call %struct._Graph* @Graph_new() #4
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  call void @Graph_init1(%struct._Graph* %call7, i32 %3, i32 %2, i32 0, i32 0, i32 1, i32 1) #4
  %call8 = call i32* @IVinit(i32 %2, i32 -1) #4
  %call9 = call i32* @IVinit(i32 %2, i32 -1) #4
  %adjIVL = getelementptr inbounds %struct._Graph* %call7, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc37, %for.body.lr.ph
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.inc37 ]
  %4 = trunc i64 %indvars.iv92 to i32
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %4, i32* %xsize, i32** %xadj) #4
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv92
  store i32 %4, i32* %arrayidx, align 4, !tbaa !3
  %5 = load i32* %xsize, align 4, !tbaa !3
  %cmp1284 = icmp sgt i32 %5, 0
  br i1 %cmp1284, label %for.body13, label %for.inc37

for.body13:                                       ; preds = %for.body, %for.inc31
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc31 ], [ 0, %for.body ]
  %count.086 = phi i32 [ %count.1.lcssa, %for.inc31 ], [ 0, %for.body ]
  %6 = load i32** %xadj, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %indvars.iv90
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %7, i32* %ysize, i32** %yadj) #4
  %8 = load i32* %ysize, align 4, !tbaa !3
  %cmp1781 = icmp sgt i32 %8, 0
  br i1 %cmp1781, label %for.body18.lr.ph, label %for.inc31

for.body18.lr.ph:                                 ; preds = %for.body13
  %9 = load i32** %yadj, align 8, !tbaa !0
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc
  %10 = phi i32 [ %8, %for.body18.lr.ph ], [ %13, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.183 = phi i32 [ %count.086, %for.body18.lr.ph ], [ %count.2, %for.inc ]
  %arrayidx20 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %11 = load i32* %arrayidx20, align 4, !tbaa !3
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds i32* %call8, i64 %idxprom21
  %12 = load i32* %arrayidx22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %12, %4
  br i1 %cmp23, label %for.inc, label %if.then24

if.then24:                                        ; preds = %for.body18
  store i32 %4, i32* %arrayidx22, align 4, !tbaa !3
  %inc = add nsw i32 %count.183, 1
  %idxprom27 = sext i32 %count.183 to i64
  %arrayidx28 = getelementptr inbounds i32* %call9, i64 %idxprom27
  store i32 %11, i32* %arrayidx28, align 4, !tbaa !3
  %.pre = load i32* %ysize, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then24
  %13 = phi i32 [ %.pre, %if.then24 ], [ %10, %for.body18 ]
  %count.2 = phi i32 [ %inc, %if.then24 ], [ %count.183, %for.body18 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp17 = icmp slt i32 %14, %13
  br i1 %cmp17, label %for.body18, label %for.inc31

for.inc31:                                        ; preds = %for.inc, %for.body13
  %count.1.lcssa = phi i32 [ %count.086, %for.body13 ], [ %count.2, %for.inc ]
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %15 = load i32* %xsize, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next91 to i32
  %cmp12 = icmp slt i32 %16, %15
  br i1 %cmp12, label %for.body13, label %for.end33

for.end33:                                        ; preds = %for.inc31
  %cmp34 = icmp sgt i32 %count.1.lcssa, 0
  br i1 %cmp34, label %if.then35, label %for.inc37

if.then35:                                        ; preds = %for.end33
  call void @IVqsortUp(i32 %count.1.lcssa, i32* %call9) #4
  %17 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %17, i32 %4, i32 %count.1.lcssa, i32* %call9) #4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body, %for.end33, %if.then35
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next93 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end39, label %for.body

for.end39:                                        ; preds = %for.inc37
  call void @IVfree(i32* %call9) #4
  call void @IVfree(i32* %call8) #4
  %18 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %18, 2
  %cmp41 = icmp eq i32 %rem, 1
  br i1 %cmp41, label %if.then42, label %return

if.then42:                                        ; preds = %for.end39
  %vwghts = getelementptr inbounds %struct._Graph* %call7, i64 0, i32 7
  %19 = load i32** %vwghts, align 8, !tbaa !0
  %vwghts43 = getelementptr inbounds %struct._Graph* %1, i64 0, i32 7
  %20 = load i32** %vwghts43, align 8, !tbaa !0
  call void @IVcopy(i32 %2, i32* %19, i32* %20) #4
  br label %return

return:                                           ; preds = %for.end39, %if.then42, %if.end, %lor.lhs.false
  %retval.0 = phi %struct._Graph* [ null, %lor.lhs.false ], [ null, %if.end ], [ %call7, %if.then42 ], [ %call7, %for.end39 ]
  ret %struct._Graph* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @BPG_makeGraphYbyY(%struct._BPG* %bpg) #0 {
entry:
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  %xadj = alloca i32*, align 8
  %yadj = alloca i32*, align 8
  %cmp = icmp eq %struct._BPG* %bpg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %graph1 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %1 = load %struct._Graph** %graph1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %1, null
  br i1 %cmp2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nY3 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %2 = load i32* %nY3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %2, 1
  br i1 %cmp4, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %nX7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %3 = load i32* %nX7, align 4, !tbaa !3
  %call8 = call %struct._Graph* @Graph_new() #4
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  call void @Graph_init1(%struct._Graph* %call8, i32 %4, i32 %2, i32 0, i32 0, i32 1, i32 1) #4
  %call9 = call i32* @IVinit(i32 %2, i32 -1) #4
  %call10 = call i32* @IVinit(i32 %2, i32 -1) #4
  %adjIVL = getelementptr inbounds %struct._Graph* %call8, i64 0, i32 6
  %5 = zext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc39, %for.body.lr.ph
  %indvars.iv97 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next98, %for.inc39 ]
  %6 = add nsw i64 %indvars.iv97, %5
  %7 = trunc i64 %6 to i32
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %7, i32* %ysize, i32** %yadj) #4
  %arrayidx = getelementptr inbounds i32* %call9, i64 %indvars.iv97
  %8 = trunc i64 %indvars.iv97 to i32
  store i32 %8, i32* %arrayidx, align 4, !tbaa !3
  %9 = load i32* %ysize, align 4, !tbaa !3
  %cmp1389 = icmp sgt i32 %9, 0
  br i1 %cmp1389, label %for.body14, label %for.inc39

for.body14:                                       ; preds = %for.body, %for.inc32
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc32 ], [ 0, %for.body ]
  %count.091 = phi i32 [ %count.1.lcssa, %for.inc32 ], [ 0, %for.body ]
  %10 = load i32** %yadj, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %10, i64 %indvars.iv95
  %11 = load i32* %arrayidx16, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %11, i32* %xsize, i32** %xadj) #4
  %12 = load i32* %xsize, align 4, !tbaa !3
  %cmp1886 = icmp sgt i32 %12, 0
  br i1 %cmp1886, label %for.body19.lr.ph, label %for.inc32

for.body19.lr.ph:                                 ; preds = %for.body14
  %13 = load i32** %xadj, align 8, !tbaa !0
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc
  %14 = phi i32 [ %12, %for.body19.lr.ph ], [ %17, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.188 = phi i32 [ %count.091, %for.body19.lr.ph ], [ %count.2, %for.inc ]
  %arrayidx21 = getelementptr inbounds i32* %13, i64 %indvars.iv
  %15 = load i32* %arrayidx21, align 4, !tbaa !3
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22
  %16 = load i32* %arrayidx23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %16, %8
  br i1 %cmp24, label %for.inc, label %if.then25

if.then25:                                        ; preds = %for.body19
  store i32 %8, i32* %arrayidx23, align 4, !tbaa !3
  %inc = add nsw i32 %count.188, 1
  %idxprom28 = sext i32 %count.188 to i64
  %arrayidx29 = getelementptr inbounds i32* %call10, i64 %idxprom28
  store i32 %15, i32* %arrayidx29, align 4, !tbaa !3
  %.pre = load i32* %xsize, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body19, %if.then25
  %17 = phi i32 [ %.pre, %if.then25 ], [ %14, %for.body19 ]
  %count.2 = phi i32 [ %inc, %if.then25 ], [ %count.188, %for.body19 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %18, %17
  br i1 %cmp18, label %for.body19, label %for.inc32

for.inc32:                                        ; preds = %for.inc, %for.body14
  %count.1.lcssa = phi i32 [ %count.091, %for.body14 ], [ %count.2, %for.inc ]
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %19 = load i32* %ysize, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next96 to i32
  %cmp13 = icmp slt i32 %20, %19
  br i1 %cmp13, label %for.body14, label %for.end34

for.end34:                                        ; preds = %for.inc32
  %cmp35 = icmp sgt i32 %count.1.lcssa, 0
  br i1 %cmp35, label %if.then36, label %for.inc39

if.then36:                                        ; preds = %for.end34
  call void @IVqsortUp(i32 %count.1.lcssa, i32* %call10) #4
  %21 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  call void @IVL_setList(%struct._IVL* %21, i32 %7, i32 %count.1.lcssa, i32* %call10) #4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body, %for.end34, %if.then36
  %indvars.iv.next98 = add i64 %indvars.iv97, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end41, label %for.body

for.end41:                                        ; preds = %for.inc39
  call void @IVfree(i32* %call10) #4
  call void @IVfree(i32* %call9) #4
  %22 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %22, 2
  %cmp43 = icmp eq i32 %rem, 1
  br i1 %cmp43, label %if.then44, label %return

if.then44:                                        ; preds = %for.end41
  %vwghts = getelementptr inbounds %struct._Graph* %call8, i64 0, i32 7
  %23 = load i32** %vwghts, align 8, !tbaa !0
  %vwghts45 = getelementptr inbounds %struct._Graph* %1, i64 0, i32 7
  %24 = load i32** %vwghts45, align 8, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32* %24, i64 %idx.ext
  call void @IVcopy(i32 %2, i32* %23, i32* %add.ptr) #4
  br label %return

return:                                           ; preds = %for.end41, %if.then44, %if.end, %lor.lhs.false
  %retval.0 = phi %struct._Graph* [ null, %lor.lhs.false ], [ null, %if.end ], [ %call8, %if.then44 ], [ %call8, %for.end41 ]
  ret %struct._Graph* %retval.0
}

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
