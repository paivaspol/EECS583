; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Drand_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Drand* @Drand_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 72) #3
  %0 = bitcast i8* %call to %struct._Drand*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %0) #5
  ret %struct._Drand* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Drand_setDefaultFields(%struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._Drand* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0
  store double 0x419D6F3454000000, double* %seed1, align 8, !tbaa !3
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1
  store double 0x41CD6F3458800000, double* %seed2, align 8, !tbaa !3
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  store double 0x41DFFFFFEAC00000, double* %base1, align 8, !tbaa !3
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3
  store double 0x41DFFFFFC1C00000, double* %base2, align 8, !tbaa !3
  %lower = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4
  store double 0.000000e+00, double* %lower, align 8, !tbaa !3
  %upper = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5
  store double 1.000000e+00, double* %upper, align 8, !tbaa !3
  %mean = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6
  store double 0.000000e+00, double* %mean, align 8, !tbaa !3
  %sigma = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7
  store double 1.000000e+00, double* %sigma, align 8, !tbaa !3
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8
  store i32 1, i32* %mode, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_clearData(%struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._Drand* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._Drand* @Drand_free(%struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._Drand* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Drand_clearData(%struct._Drand* %drand) #5
  %1 = bitcast %struct._Drand* %drand to i8*
  tail call void @free(i8* %1) #3
  ret %struct._Drand* null
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
