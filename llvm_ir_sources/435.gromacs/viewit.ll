; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@can_view_ftp = internal unnamed_addr constant [5 x i32] [i32 0, i32 36, i32 45, i32 19, i32 15], align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"Can not view %s, no DISPLAY environment variable.\0A\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @can_view(i32 %ftp) #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.06, 1
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.cond ]
  %i.06 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %1, %ftp
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ %i.06, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @do_view(i8* %fn, i8* nocapture %opts) #1 {
entry:
  %call = tail call i32 @bDoView() #4
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp eq i8* %fn, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i8* %fn) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @bDoView() #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @view_all(i32 %nf, %struct.t_filenm* %fnm) #1 {
entry:
  %cmp28 = icmp sgt i32 %nf, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv
  %ftp = getelementptr inbounds %struct.t_filenm* %arrayidx, i64 0, i32 0
  %0 = load i32* %ftp, align 4, !tbaa !0
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nsw i32 %i.06.i, 1
  %1 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp ult i32 %1, 5
  br i1 %cmp.i, label %for.body.i, label %for.inc

for.body.i:                                       ; preds = %for.cond.i, %for.body
  %indvars.iv.i = phi i64 [ 1, %for.body ], [ %indvars.iv.next.i, %for.cond.i ]
  %i.06.i = phi i32 [ 1, %for.body ], [ %inc.i, %for.cond.i ]
  %arrayidx.i = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv.i
  %2 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp2.i = icmp eq i32 %2, %0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %cmp2.i, label %can_view.exit, label %for.cond.i

can_view.exit:                                    ; preds = %for.body.i
  %tobool = icmp eq i32 %i.06.i, 0
  br i1 %tobool, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %can_view.exit
  %call3 = tail call i32 @is_output(%struct.t_filenm* %arrayidx) #4
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %for.inc, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call8 = tail call i32 @is_optional(%struct.t_filenm* %arrayidx) #4
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call12 = tail call i32 @is_set(%struct.t_filenm* %arrayidx) #4
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %for.inc, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true5
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %3 = load i8** %fn, align 8, !tbaa !3
  tail call void @do_view(i8* %3, i8* undef) #5
  br label %for.inc

for.inc:                                          ; preds = %for.cond.i, %lor.lhs.false, %land.lhs.true, %can_view.exit, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nf
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @is_output(%struct.t_filenm*) #2

; Function Attrs: optsize
declare i32 @is_optional(%struct.t_filenm*) #2

; Function Attrs: optsize
declare i32 @is_set(%struct.t_filenm*) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
