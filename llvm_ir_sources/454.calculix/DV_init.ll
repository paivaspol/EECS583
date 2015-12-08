; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A dv->maxsize = %d, dv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A dv->size = %d, dv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in DV_setSize(%p,%d)\0A dv->maxsize = %d, newsize = %d, dv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DV_init(%struct._DV* %dv, i32 %size, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  %cmp1 = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DV* %dv, i32 %size, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DV_clearData(%struct._DV* %dv) #4
  %size2 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  store i32 %size, i32* %size2, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  store i32 %size, i32* %maxsize, align 4, !tbaa !3
  %cmp3 = icmp eq double* %entries, null
  br i1 %cmp3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  store i32 0, i32* %owned, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  store double* %entries, double** %vec, align 8, !tbaa !0
  br label %if.end11

if.else:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %size, 0
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.else
  %owned7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  store i32 1, i32* %owned7, align 4, !tbaa !3
  %call8 = tail call double* @DVinit2(i32 %size) #4
  %vec9 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  store double* %call8, double** %vec9, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6, %if.then4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: optsize
declare double* @DVinit2(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_init1(%struct._DV* %dv, i32 %size) #0 {
entry:
  tail call void @DV_init(%struct._DV* %dv, i32 %size, double* null) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DV_init2(%struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._DV* null, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %size, 0
  %cmp2 = icmp slt i32 %maxsize, %size
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %size, i32 %maxsize) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end5:                                          ; preds = %if.end
  %2 = icmp ugt i32 %owned, 1
  br i1 %2, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %owned) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end5
  %cmp12 = icmp eq i32 %owned, 1
  %cmp13 = icmp eq double* %vec, null
  %or.cond64 = and i1 %cmp12, %cmp13
  br i1 %or.cond64, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 1, double* null, i32 1, double* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end11
  tail call void @DV_clearData(%struct._DV* %dv) #4
  br i1 %cmp13, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  tail call void @DV_init(%struct._DV* %dv, i32 %size, double* null) #6
  br label %if.end23

if.else:                                          ; preds = %if.end16
  %size19 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  store i32 %size, i32* %size19, align 4, !tbaa !3
  %maxsize20 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  store i32 %maxsize, i32* %maxsize20, align 4, !tbaa !3
  %owned21 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  store i32 %owned, i32* %owned21, align 4, !tbaa !3
  %vec22 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  store double* %vec, double** %vec22, align 8, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DV_setMaxsize(%struct._DV* %dv, i32 %newmaxsize) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  %cmp1 = icmp slt i32 %newmaxsize, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  %2 = load i32* %owned, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize, i32 %1, i32 0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %cmp10 = icmp eq i32 %1, %newmaxsize
  br i1 %cmp10, label %if.end38, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = tail call double* @DVinit2(i32 %newmaxsize) #4
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %4 = load i32* %size, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %4, 0
  %vec15 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  br i1 %cmp13, label %if.then14, label %if.end29

if.then14:                                        ; preds = %if.then11
  %5 = load double** %vec15, align 8, !tbaa !0
  %cmp16 = icmp eq double* %5, null
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then14
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize, i32 %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end20:                                         ; preds = %if.then14
  %cmp22 = icmp sgt i32 %4, %newmaxsize
  br i1 %cmp22, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call void @DVcopy(i32 %4, double* %call12, double* %5) #4
  br label %if.end29

if.else:                                          ; preds = %if.end20
  tail call void @DVcopy(i32 %newmaxsize, double* %call12, double* %5) #4
  store i32 %newmaxsize, i32* %size, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.then11, %if.then23, %if.else
  %7 = load double** %vec15, align 8, !tbaa !0
  %cmp31 = icmp eq double* %7, null
  br i1 %cmp31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end29
  tail call void @DVfree(double* %7) #4
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %if.then32
  store i32 %newmaxsize, i32* %maxsize, align 4, !tbaa !3
  %owned36 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  store i32 1, i32* %owned36, align 4, !tbaa !3
  store double* %call12, double** %vec15, align 8, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.end8, %if.end34
  ret void
}

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_setSize(%struct._DV* %dv, i32 %newsize) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  %cmp1 = icmp slt i32 %newsize, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, i32 %newsize) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %1 = load i32* %maxsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 0
  %cmp4 = icmp slt i32 %1, %newsize
  %or.cond33 = and i1 %cmp2, %cmp4
  br i1 %or.cond33, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %if.end
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  %2 = load i32* %owned, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %land.lhs.true5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._DV* %dv, i32 %newsize, i32 %1, i32 %newsize, i32 0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  br i1 %cmp4, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %newsize) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  store i32 %newsize, i32* %size, align 4, !tbaa !3
  ret void
}

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
