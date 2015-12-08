; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_entry(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DV_setEntry(%p,%d,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DV_owned(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  %1 = load i32* %owned, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DV_maxsize(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_size(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define double @DV_entry(%struct._DV* %dv, i32 %loc) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %0 = load double** %vec, align 8, !tbaa !0
  %cmp1 = icmp eq double* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp slt i32 %loc, 0
  br i1 %cmp2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %2, %loc
  br i1 %cmp4, label %if.else, label %return

if.else:                                          ; preds = %lor.lhs.false3
  %idxprom = sext i32 %loc to i64
  %arrayidx = getelementptr inbounds double* %0, i64 %idxprom
  %3 = load double* %arrayidx, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false3, %if.else
  %retval.0 = phi double [ %3, %if.else ], [ 0.000000e+00, %lor.lhs.false3 ], [ 0.000000e+00, %if.end ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_entries(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  ret double* %1
}

; Function Attrs: nounwind optsize uwtable
define void @DV_sizeAndEntries(%struct._DV* %dv, i32* %psize, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  %cmp1 = icmp eq i32* %psize, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double** %pentries, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32* %psize, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  store i32 %1, i32* %psize, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  store double* %2, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DV_setEntry(%struct._DV* %dv, i32 %loc, double %value) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %loc, double %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, %loc
  br i1 %cmp2, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp5 = icmp slt i32 %1, 10
  %.mul = select i1 %cmp5, i32 10, i32 %1
  %cmp8 = icmp sgt i32 %.mul, %loc
  %add = add nsw i32 %loc, 1
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %.mul.add) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %2, %loc
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1
  store i32 %add14, i32* %size, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.then13
  %idxprom = sext i32 %loc to i64
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %3 = load double** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  store double %value, double* %arrayidx, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

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
!4 = metadata !{metadata !"double", metadata !1}
