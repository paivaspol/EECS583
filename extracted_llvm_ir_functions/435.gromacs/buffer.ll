; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: (%s) data: 0x%.8x, expected: 0x%.8x\0A\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @mask(i32 %i) #0 {
entry:
  %and = and i32 %i, 255
  %add = shl i32 %i, 8
  %and1 = add i32 %add, 256
  %shl = and i32 %and1, 65280
  %add2 = shl i32 %i, 16
  %and3 = add i32 %add2, 131072
  %shl4 = and i32 %and3, 16711680
  %add6 = shl i32 %i, 24
  %shl8 = add i32 %add6, 50331648
  %or = or i32 %shl8, %and
  %or5 = or i32 %or, %shl
  %or9 = or i32 %or5, %shl4
  ret i32 %or9
}

; Function Attrs: nounwind optsize uwtable
define void @clear_buff(i32* nocapture %data, i32 %items) #1 {
entry:
  %cmp3 = icmp sgt i32 %items, 0
  br i1 %cmp3, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data5 = bitcast i32* %data to i8*
  %0 = add i32 %items, -1
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2
  %3 = add i64 %2, 4
  call void @llvm.memset.p0i8.i64(i8* %data5, i8 0, i64 %3, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fill_buff(i32* nocapture %data, i32 %items) #1 {
entry:
  %cmp4 = icmp sgt i32 %items, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = trunc i64 %indvars.iv to i32
  %and.i = and i32 %0, 255
  %add.i = shl i32 %0, 8
  %and1.i = add i32 %add.i, 256
  %shl.i = and i32 %and1.i, 65280
  %add2.i = shl i32 %0, 16
  %and3.i = add i32 %add2.i, 131072
  %shl4.i = and i32 %and3.i, 16711680
  %add6.i = shl i32 %0, 24
  %shl8.i = add i32 %add6.i, 50331648
  %or.i = or i32 %shl8.i, %and.i
  %or5.i = or i32 %or.i, %shl.i
  %or9.i = or i32 %or5.i, %shl4.i
  %arrayidx = getelementptr inbounds i32* %data, i64 %indvars.iv
  store i32 %or9.i, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %items
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @check_buff(%struct._IO_FILE* %fp, i8* %title, i32* nocapture %data, i32 %items, i32 %verbose) #1 {
entry:
  %tobool = icmp eq i32 %verbose, 0
  %cmp48 = icmp sgt i32 %items, 0
  br i1 %tobool, label %for.cond.preheader, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %entry
  br i1 %cmp48, label %for.body6.lr.ph, label %if.end21

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %tobool12 = icmp eq %struct._IO_FILE* %fp, null
  br label %for.body6

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp48, label %for.body, label %if.end21

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %errs.049 = phi i32 [ %errs.0.inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %data, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %1 = trunc i64 %indvars.iv to i32
  %and.i = and i32 %1, 255
  %add.i = shl i32 %1, 8
  %and1.i = add i32 %add.i, 256
  %shl.i = and i32 %and1.i, 65280
  %add2.i = shl i32 %1, 16
  %and3.i = add i32 %add2.i, 131072
  %shl4.i = and i32 %and3.i, 16711680
  %add6.i = shl i32 %1, 24
  %shl8.i = add i32 %add6.i, 50331648
  %or.i = or i32 %shl8.i, %and.i
  %or5.i = or i32 %or.i, %shl.i
  %or9.i = or i32 %or5.i, %shl4.i
  %not.cmp1 = icmp ne i32 %0, %or9.i
  %inc = zext i1 %not.cmp1 to i32
  %errs.0.inc = add nsw i32 %inc, %errs.049
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %items
  br i1 %exitcond, label %if.end21, label %for.body

for.body6:                                        ; preds = %for.inc18, %for.body6.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next57, %for.inc18 ]
  %errs.253 = phi i32 [ 0, %for.body6.lr.ph ], [ %errs.3, %for.inc18 ]
  %arrayidx8 = getelementptr inbounds i32* %data, i64 %indvars.iv56
  %2 = load i32* %arrayidx8, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv56 to i32
  %and.i36 = and i32 %3, 255
  %add.i37 = shl i32 %3, 8
  %and1.i38 = add i32 %add.i37, 256
  %shl.i39 = and i32 %and1.i38, 65280
  %add2.i40 = shl i32 %3, 16
  %and3.i41 = add i32 %add2.i40, 131072
  %shl4.i42 = and i32 %and3.i41, 16711680
  %add6.i43 = shl i32 %3, 24
  %shl8.i44 = add i32 %add6.i43, 50331648
  %or.i45 = or i32 %shl8.i44, %and.i36
  %or5.i46 = or i32 %or.i45, %shl.i39
  %or9.i47 = or i32 %or5.i46, %shl4.i42
  %cmp10 = icmp eq i32 %2, %or9.i47
  br i1 %cmp10, label %for.inc18, label %if.then11

if.then11:                                        ; preds = %for.body6
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* %title, i32 %2, i32 %or9.i47) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then13
  %inc16 = add nsw i32 %errs.253, 1
  br label %for.inc18

for.inc18:                                        ; preds = %for.body6, %if.end15
  %errs.3 = phi i32 [ %inc16, %if.end15 ], [ %errs.253, %for.body6 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %items
  br i1 %exitcond59, label %if.end21, label %for.body6

if.end21:                                         ; preds = %for.cond4.preheader, %for.inc18, %for.cond.preheader, %for.body
  %errs.4 = phi i32 [ 0, %for.cond.preheader ], [ %errs.0.inc, %for.body ], [ 0, %for.cond4.preheader ], [ %errs.3, %for.inc18 ]
  ret i32 %errs.4
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
