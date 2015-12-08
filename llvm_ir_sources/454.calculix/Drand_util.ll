; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in Drand_value(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillZvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillDvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillIvector(%p,%d,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @Drand_value(%struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8
  %1 = load i32* %mode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0
  %2 = load double* %seed1, align 8, !tbaa !4
  %mul = fmul double %2, 4.001400e+04
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %3 = load double* %base1, align 8, !tbaa !4
  %call3 = tail call double @fmod(double %mul, double %3) #3
  store double %call3, double* %seed1, align 8, !tbaa !4
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1
  %4 = load double* %seed2, align 8, !tbaa !4
  %mul5 = fmul double %4, 4.069200e+04
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3
  %5 = load double* %base2, align 8, !tbaa !4
  %call6 = tail call double @fmod(double %mul5, double %5) #3
  store double %call6, double* %seed2, align 8, !tbaa !4
  %6 = load double* %seed1, align 8, !tbaa !4
  %sub = fsub double %6, %call6
  %cmp10 = fcmp ole double %sub, 0.000000e+00
  %7 = load double* %base1, align 8, !tbaa !4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then2
  %sub13 = fadd double %7, -1.000000e+00
  %add = fadd double %sub, %sub13
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %if.then11
  %t.0 = phi double [ %add, %if.then11 ], [ %sub, %if.then2 ]
  %lower = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4
  %8 = load double* %lower, align 8, !tbaa !4
  %div = fdiv double %t.0, %7
  %upper = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5
  %9 = load double* %upper, align 8, !tbaa !4
  %sub17 = fsub double %9, %8
  %mul18 = fmul double %div, %sub17
  %add19 = fadd double %8, %mul18
  br label %if.end89

if.else:                                          ; preds = %if.end
  br i1 %cmp10, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.else
  %sub36 = fadd double %7, -1.000000e+00
  %add37 = fadd double %sub, %sub36
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then34
  %t.1 = phi double [ %add37, %if.then34 ], [ %sub, %if.else ]
  %div40 = fdiv double %t.1, %7
  %mul42 = fmul double %6, 4.001400e+04
  %call44 = tail call double @fmod(double %mul42, double %7) #3
  store double %call44, double* %seed1, align 8, !tbaa !4
  %10 = load double* %seed2, align 8, !tbaa !4
  %mul47 = fmul double %10, 4.069200e+04
  %11 = load double* %base2, align 8, !tbaa !4
  %call49 = tail call double @fmod(double %mul47, double %11) #3
  store double %call49, double* %seed2, align 8, !tbaa !4
  %12 = load double* %seed1, align 8, !tbaa !4
  %sub53 = fsub double %12, %call49
  %cmp54 = fcmp ugt double %sub53, 0.000000e+00
  %.pre146 = load double* %base1, align 8, !tbaa !4
  br i1 %cmp54, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end38
  %sub57 = fadd double %.pre146, -1.000000e+00
  %add58 = fadd double %sub53, %sub57
  br label %if.end59

if.end59:                                         ; preds = %if.end38, %if.then55
  %t.2 = phi double [ %add58, %if.then55 ], [ %sub53, %if.end38 ]
  %div61 = fdiv double %t.2, %.pre146
  %add62 = fadd double %div40, %div61
  %mul64 = fmul double %12, 4.001400e+04
  %call66 = tail call double @fmod(double %mul64, double %.pre146) #3
  store double %call66, double* %seed1, align 8, !tbaa !4
  %13 = load double* %seed2, align 8, !tbaa !4
  %mul69 = fmul double %13, 4.069200e+04
  %14 = load double* %base2, align 8, !tbaa !4
  %call71 = tail call double @fmod(double %mul69, double %14) #3
  store double %call71, double* %seed2, align 8, !tbaa !4
  %15 = load double* %seed1, align 8, !tbaa !4
  %sub75 = fsub double %15, %call71
  %cmp76 = fcmp ugt double %sub75, 0.000000e+00
  %.pre147 = load double* %base1, align 8, !tbaa !4
  br i1 %cmp76, label %if.end81, label %if.then77

if.then77:                                        ; preds = %if.end59
  %sub79 = fadd double %.pre147, -1.000000e+00
  %add80 = fadd double %sub75, %sub79
  br label %if.end81

if.end81:                                         ; preds = %if.end59, %if.then77
  %t.3 = phi double [ %add80, %if.then77 ], [ %sub75, %if.end59 ]
  %div83 = fdiv double %t.3, %.pre147
  %add84 = fadd double %add62, %div83
  %mean = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6
  %16 = load double* %mean, align 8, !tbaa !4
  %sigma = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7
  %17 = load double* %sigma, align 8, !tbaa !4
  %mul85 = fmul double %add84, 2.000000e+00
  %sub86 = fadd double %mul85, -3.000000e+00
  %mul87 = fmul double %17, %sub86
  %add88 = fadd double %16, %mul87
  br label %if.end89

if.end89:                                         ; preds = %if.end81, %if.end14
  %t.4 = phi double [ %add19, %if.end14 ], [ %add88, %if.end81 ]
  ret double %t.4
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare double @fmod(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillZvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %dvec, null
  %or.cond14 = or i1 %or.cond, %cmp3
  br i1 %or.cond14, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %mul = shl nsw i32 %size, 1
  %cmp415 = icmp sgt i32 %size, 0
  br i1 %cmp415, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #3
  tail call void @exit(i32 -1) #4
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #5
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv
  store double %call5, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %mul
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillDvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %dvec, null
  %or.cond14 = or i1 %or.cond, %cmp3
  br i1 %or.cond14, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp415 = icmp sgt i32 %size, 0
  br i1 %cmp415, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #3
  tail call void @exit(i32 -1) #4
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #5
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv
  store double %call5, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillIvector(%struct._Drand* %drand, i32 %size, i32* %ivec) #0 {
entry:
  %cmp = icmp eq %struct._Drand* %drand, null
  %cmp1 = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %ivec, null
  %or.cond14 = or i1 %or.cond, %cmp3
  br i1 %or.cond14, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp415 = icmp sgt i32 %size, 0
  br i1 %cmp415, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, i32 %size, i32* %ivec) #3
  tail call void @exit(i32 -1) #4
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #5
  %conv = fptosi double %call5 to i32
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
