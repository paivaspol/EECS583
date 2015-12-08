; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@n = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%8.3f\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"%8.3f%8.3f%8.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @write_gms(%struct._IO_FILE* nocapture %fp, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* %box) #0 {
entry:
  store i32 0, i32* @n, align 4, !tbaa !0
  %cmp46 = icmp sgt i32 %natoms, 0
  br i1 %cmp46, label %for.cond1.preheader, label %if.end17

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc10 ], [ 0, %entry ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv48, i64 %indvars.iv
  %0 = load float* %arrayidx5, align 4, !tbaa !3
  %conv = fpext float %0 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %conv) #3
  %1 = load i32* @n, align 4, !tbaa !0
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @n, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %inc, 10
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %fputc44 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  store i32 0, i32* @n, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %2 = phi i32 [ %inc, %for.body3 ], [ 0, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:                                        ; preds = %for.inc
  %indvars.iv.next49 = add i64 %indvars.iv48, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %natoms
  br i1 %exitcond51, label %for.end12, label %for.cond1.preheader

for.end12:                                        ; preds = %for.inc10
  %cmp13 = icmp eq i32 %2, 0
  br i1 %cmp13, label %if.end17, label %if.then15

if.then15:                                        ; preds = %for.end12
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end17

if.end17:                                         ; preds = %entry, %for.end12, %if.then15
  %cmp18 = icmp eq [3 x float]* %box, null
  br i1 %cmp18, label %if.end31, label %if.then20

if.then20:                                        ; preds = %if.end17
  %arrayidx22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %3 = load float* %arrayidx22, align 4, !tbaa !3
  %conv23 = fpext float %3 to double
  %arrayidx25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %4 = load float* %arrayidx25, align 4, !tbaa !3
  %conv26 = fpext float %4 to double
  %arrayidx28 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %5 = load float* %arrayidx28, align 4, !tbaa !3
  %conv29 = fpext float %5 to double
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %conv23, double %conv26, double %conv29) #3
  br label %if.end31

if.end31:                                         ; preds = %if.end17, %if.then20
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @write_gms_ndx(%struct._IO_FILE* nocapture %fp, i32 %isize, i32* nocapture %index, [3 x float]* nocapture %x, [3 x float]* %box) #0 {
entry:
  store i32 0, i32* @n, align 4, !tbaa !0
  %cmp48 = icmp sgt i32 %isize, 0
  br i1 %cmp48, label %for.cond1.preheader, label %if.end19

for.cond1.preheader:                              ; preds = %entry, %for.inc12
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc12 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv50
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom5 = sext i32 %0 to i64
  %arrayidx7 = getelementptr inbounds [3 x float]* %x, i64 %idxprom5, i64 %indvars.iv
  %1 = load float* %arrayidx7, align 4, !tbaa !3
  %conv = fpext float %1 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %conv) #3
  %2 = load i32* @n, align 4, !tbaa !0
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @n, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %inc, 10
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %fputc46 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  store i32 0, i32* @n, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %3 = phi i32 [ %inc, %for.body3 ], [ 0, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc12, label %for.body3

for.inc12:                                        ; preds = %for.inc
  %indvars.iv.next51 = add i64 %indvars.iv50, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv.next51 to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %isize
  br i1 %exitcond53, label %for.end14, label %for.cond1.preheader

for.end14:                                        ; preds = %for.inc12
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %if.end19, label %if.then17

if.then17:                                        ; preds = %for.end14
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end19

if.end19:                                         ; preds = %entry, %for.end14, %if.then17
  %cmp20 = icmp eq [3 x float]* %box, null
  br i1 %cmp20, label %if.end33, label %if.then22

if.then22:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %4 = load float* %arrayidx24, align 4, !tbaa !3
  %conv25 = fpext float %4 to double
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %5 = load float* %arrayidx27, align 4, !tbaa !3
  %conv28 = fpext float %5 to double
  %arrayidx30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %6 = load float* %arrayidx30, align 4, !tbaa !3
  %conv31 = fpext float %6 to double
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %conv25, double %conv28, double %conv31) #3
  br label %if.end33

if.end33:                                         ; preds = %if.end19, %if.then22
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
