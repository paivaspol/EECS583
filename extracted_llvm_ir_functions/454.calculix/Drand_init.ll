; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_init(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in Drand_setSeed(%p,%d)\0A first seed must in in (0,%.0f)\00", align 1
@.str2 = private unnamed_addr constant [108 x i8] c"\0A fatal error in Drand_setSeeds(%p,%d,%d)\0A first seed must in in (0,%.0f)\0A second seed must in in (0,%.0f)\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Drand_setUniform(%p,%f,%f)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setNormal(%p,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Drand_init(%struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: nounwind optsize uwtable
define void @Drand_setSeed(%struct._Drand* %drand, i32 %u) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = icmp slt i32 %u, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  %base15.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %base15.phi.trans.insert, align 8, !tbaa !3
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %conv = sitofp i32 %u to double
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %0 = load double* %base1, align 8, !tbaa !3
  %cmp3 = fcmp ult double %conv, %0
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false2
  %1 = phi double [ %.pre, %entry.if.then_crit_edge ], [ %0, %lor.lhs.false2 ]
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %u, double %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0
  store double %conv, double* %seed1, align 8, !tbaa !3
  %mul = fmul double %conv, 2.718000e+03
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3
  %3 = load double* %base2, align 8, !tbaa !3
  %call8 = tail call double @fmod(double %mul, double %3) #4
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1
  store double %call8, double* %seed2, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare double @fmod(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @Drand_setSeeds(%struct._Drand* %drand, i32 %u, i32 %v) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = icmp slt i32 %u, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  %base112.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %base112.phi.trans.insert, align 8, !tbaa !3
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %conv = sitofp i32 %u to double
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %0 = load double* %base1, align 8, !tbaa !3
  %cmp3 = fcmp oge double %conv, %0
  %cmp6 = icmp slt i32 %v, 1
  %or.cond29 = or i1 %cmp3, %cmp6
  br i1 %or.cond29, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %conv9 = sitofp i32 %v to double
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3
  %1 = load double* %base2, align 8, !tbaa !3
  %cmp10 = fcmp ult double %conv9, %1
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry.if.then_crit_edge, %lor.lhs.false8
  %2 = phi double [ %.pre, %entry.if.then_crit_edge ], [ %0, %lor.lhs.false8 ], [ %0, %lor.lhs.false2 ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %base213 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3
  %4 = load double* %base213, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %u, i32 %v, double %2, double %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false8
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0
  store double %conv, double* %seed1, align 8, !tbaa !3
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1
  store double %conv9, double* %seed2, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_setUniform(%struct._Drand* %drand, double %lower, double %upper) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = fcmp ogt double %lower, %upper
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, double %lower, double %upper) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8
  store i32 1, i32* %mode, align 4, !tbaa !4
  %lower2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4
  store double %lower, double* %lower2, align 8, !tbaa !3
  %upper3 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5
  store double %upper, double* %upper3, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_setNormal(%struct._Drand* %drand, double %mean, double %sigma) #0 {
entry:
  %cmp = icmp ne %struct._Drand* %drand, null
  %cmp1 = fcmp ugt double %sigma, 0.000000e+00
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Drand* %drand, double %mean, double %sigma) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8
  store i32 2, i32* %mode, align 4, !tbaa !4
  %mean2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6
  store double %mean, double* %mean2, align 8, !tbaa !3
  %sigma3 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7
  store double %sigma, double* %sigma3, align 8, !tbaa !3
  ret void
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
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
