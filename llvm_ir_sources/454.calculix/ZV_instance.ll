; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in ZV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in ZV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ZV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ZV_setEntry(%p,%d,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_owned(%struct._ZV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 2
  %1 = load i32* %owned, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_maxsize(%struct._ZV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_size(%struct._ZV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_entry(%struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  %cmp1 = icmp eq double* %pReal, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pImag, null
  %or.cond39 = or i1 %or.cond, %cmp3
  br i1 %or.cond39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %loc, -1
  %size10.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %size10.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %loc
  %or.cond40 = and i1 %cmp4, %cmp6
  br i1 %or.cond40, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp8 = icmp eq double* %1, null
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end, %lor.lhs.false7
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %3 = load double** %vec11, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag, i32 %.pre, double* %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false7
  %mul = shl nsw i32 %loc, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double* %1, i64 %idxprom
  %4 = load double* %arrayidx, align 8, !tbaa !4
  store double %4, double* %pReal, align 8, !tbaa !4
  %add38 = or i32 %mul, 1
  %idxprom16 = sext i32 %add38 to i64
  %arrayidx18 = getelementptr inbounds double* %1, i64 %idxprom16
  %5 = load double* %arrayidx18, align 8, !tbaa !4
  store double %5, double* %pImag, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_pointersToEntry(%struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  %cmp1 = icmp eq double** %ppReal, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double** %ppImag, null
  %or.cond39 = or i1 %or.cond, %cmp3
  br i1 %or.cond39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %loc, -1
  %size10.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %size10.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %loc
  %or.cond40 = and i1 %cmp4, %cmp6
  br i1 %or.cond40, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp8 = icmp eq double* %1, null
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end, %lor.lhs.false7
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %3 = load double** %vec11, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag, i32 %.pre, double* %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false7
  %mul = shl nsw i32 %loc, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double* %1, i64 %idxprom
  store double* %arrayidx, double** %ppReal, align 8, !tbaa !0
  %add38 = or i32 %mul, 1
  %idxprom16 = sext i32 %add38 to i64
  %4 = load double** %vec, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %4, i64 %idxprom16
  store double* %arrayidx18, double** %ppImag, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double* @ZV_entries(%struct._ZV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  ret double* %1
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_sizeAndEntries(%struct._ZV* %dv, i32* %psize, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  %cmp1 = icmp eq i32* %psize, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double** %pentries, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._ZV* %dv, i32* %psize, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  store i32 %1, i32* %psize, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  store double* %2, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_setEntry(%struct._ZV* %dv, i32 %loc, double %real, double %imag) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %dv, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double %real, double %imag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, %loc
  br i1 %cmp2, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp5 = icmp slt i32 %1, 10
  %.mul = select i1 %cmp5, i32 10, i32 %1
  %cmp8 = icmp sgt i32 %.mul, %loc
  %add = add nsw i32 %loc, 1
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add
  tail call void @ZV_setMaxsize(%struct._ZV* %dv, i32 %.mul.add) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %2, %loc
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1
  store i32 %add14, i32* %size, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.then13
  %mul17 = shl nsw i32 %loc, 1
  %idxprom = sext i32 %mul17 to i64
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3
  %3 = load double** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  store double %real, double* %arrayidx, align 8, !tbaa !4
  %add1943 = or i32 %mul17, 1
  %idxprom20 = sext i32 %add1943 to i64
  %arrayidx22 = getelementptr inbounds double* %3, i64 %idxprom20
  store double %imag, double* %arrayidx22, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare void @ZV_setMaxsize(%struct._ZV*, i32) #3

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
