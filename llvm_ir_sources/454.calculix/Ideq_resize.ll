; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in Ideq_resize(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_resize(%struct._Ideq* %deq, i32 %newsize) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  %cmp1 = icmp slt i32 %newsize, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Ideq* %deq, i32 %newsize) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %tail2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %1 = load i32* %tail2, align 4, !tbaa !3
  %head3 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %2 = load i32* %head3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %if.else, label %if.end14

if.else:                                          ; preds = %if.end
  %size9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0
  %3 = load i32* %size9, align 4, !tbaa !3
  %add10 = add nsw i32 %3, %1
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.else
  %.pn = phi i32 [ %add10, %if.else ], [ %1, %if.end ]
  %size.0.in = sub nsw i32 %.pn, %2
  %size.0 = add nsw i32 %size.0.in, 1
  %cmp15 = icmp slt i32 %size.0.in, %newsize
  br i1 %cmp15, label %if.end17, label %return

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32* @IVinit(i32 %size.0, i32 -1) #4
  %4 = load i32* %head3, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %4, -1
  br i1 %cmp20, label %if.end40, label %if.then21

if.then21:                                        ; preds = %if.end17
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %5 = load i32** %vec, align 8, !tbaa !0
  %6 = load i32* %tail2, align 4, !tbaa !3
  %cmp2478 = icmp eq i32 %4, %6
  %idxprom79 = sext i32 %4 to i64
  %arrayidx80 = getelementptr inbounds i32* %5, i64 %idxprom79
  %7 = load i32* %arrayidx80, align 4, !tbaa !3
  store i32 %7, i32* %call18, align 4, !tbaa !3
  br i1 %cmp2478, label %if.end40, label %while.body

while.body:                                       ; preds = %if.then21, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.then21 ]
  %count.082 = phi i32 [ %inc, %while.body ], [ 0, %if.then21 ]
  %j.081 = phi i32 [ %.inc31, %while.body ], [ %4, %if.then21 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %count.082, 1
  %cmp28 = icmp eq i32 %j.081, %size.0.in
  %inc31 = add nsw i32 %j.081, 1
  %.inc31 = select i1 %cmp28, i32 0, i32 %inc31
  %8 = load i32* %tail2, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %.inc31, %8
  %idxprom = sext i32 %.inc31 to i64
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %call18, i64 %indvars.iv.next
  store i32 %9, i32* %arrayidx26, align 4, !tbaa !3
  br i1 %cmp24, label %if.end40, label %while.body

if.end40:                                         ; preds = %if.then21, %while.body, %if.end17
  %head.0 = phi i32 [ -1, %if.end17 ], [ 0, %while.body ], [ 0, %if.then21 ]
  %tail.0 = phi i32 [ -1, %if.end17 ], [ %inc, %while.body ], [ 0, %if.then21 ]
  tail call void @Ideq_clearData(%struct._Ideq* %deq) #4
  %iv41 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3
  tail call void @IV_init(%struct._IV* %iv41, i32 %newsize, i32* null) #4
  %cmp42 = icmp sgt i32 %size.0.in, -1
  br i1 %cmp42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end40
  %vec45 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %10 = load i32** %vec45, align 8, !tbaa !0
  tail call void @IVcopy(i32 %size.0, i32* %10, i32* %call18) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40
  tail call void @IVfree(i32* %call18) #4
  store i32 %head.0, i32* %head3, align 4, !tbaa !3
  store i32 %tail.0, i32* %tail2, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 0
  store i32 %newsize, i32* %maxsize, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end14, %if.end46
  %retval.0 = phi i32 [ 1, %if.end46 ], [ -1, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Ideq_clearData(%struct._Ideq*) #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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
