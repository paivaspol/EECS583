; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in IV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_size(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_maxsize(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_entries(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IV_setEntry(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_owned(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._IV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2
  %1 = load i32* %owned, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IV_size(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._IV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_maxsize(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._IV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_entry(%struct._IV* %iv, i32 %loc) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %loc, 0
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, %loc
  br i1 %cmp2, label %if.else, label %return

if.else:                                          ; preds = %lor.lhs.false
  %idxprom = sext i32 %loc to i64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.else
  %retval.0 = phi i32 [ %3, %if.else ], [ -1, %lor.lhs.false ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32* @IV_entries(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  ret i32* %1
}

; Function Attrs: nounwind optsize uwtable
define void @IV_sizeAndEntries(%struct._IV* %iv, i32* %psize, i32** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i32* %psize, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %pentries, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32* %psize, i32** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  store i32 %1, i32* %psize, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  store i32* %2, i32** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV_setEntry(%struct._IV* %iv, i32 %loc, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %loc, i32 %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, %loc
  br i1 %cmp2, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp5 = icmp slt i32 %1, 10
  %.mul = select i1 %cmp5, i32 10, i32 %1
  %cmp8 = icmp sgt i32 %.mul, %loc
  %add = add nsw i32 %loc, 1
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %.mul.add) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %2, %loc
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1
  store i32 %add14, i32* %size, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.then13
  %idxprom = sext i32 %loc to i64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %3 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  store i32 %value, i32* %arrayidx, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

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
