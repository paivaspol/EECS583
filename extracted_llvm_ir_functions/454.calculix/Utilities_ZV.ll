; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZVinit(%d,%f,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVdotU(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVdotC(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ZVdotiU(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVaxpy(%d,%p,%f,%f,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ZVscale(%d,%p,%f,%f)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [49 x i8] c"\0A fatal error in ZVfprintf(%p,%d,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"\0A < %12.4e, %12.4e >\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVminabs(%d,%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVmaxabs(%d,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZVcopy(%d,%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVsub(%d,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVscale2(%d,%p,%p,...)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [81 x i8] c"\0A fatal error in ZVgather, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str17 = private unnamed_addr constant [81 x i8] c"\0A fatal error in ZVscatter, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str18 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ZVzero(%d,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @Zabs(double %real, double %imag) #0 {
entry:
  %cmp = fcmp oeq double %real, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call double @fabs(double %imag) #4
  br label %if.end18

if.else:                                          ; preds = %entry
  %cmp1 = fcmp oeq double %imag, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %call3 = tail call double @fabs(double %real) #4
  br label %if.end18

if.else4:                                         ; preds = %if.else
  %cmp5 = fcmp ult double %real, %imag
  br i1 %cmp5, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else4
  %div = fdiv double %imag, %real
  %call7 = tail call double @fabs(double %real) #4
  %mul = fmul double %div, %div
  %add = fadd double %mul, 1.000000e+00
  %call8 = tail call double @sqrt(double %add) #5
  %mul9 = fmul double %call7, %call8
  br label %if.end18

if.else10:                                        ; preds = %if.else4
  %div11 = fdiv double %real, %imag
  %call12 = tail call double @fabs(double %imag) #4
  %mul13 = fmul double %div11, %div11
  %add14 = fadd double %mul13, 1.000000e+00
  %call15 = tail call double @sqrt(double %add14) #5
  %mul16 = fmul double %call12, %call15
  br label %if.end18

if.end18:                                         ; preds = %if.then2, %if.else10, %if.then6, %if.then
  %abs.0 = phi double [ %call, %if.then ], [ %call3, %if.then2 ], [ %mul9, %if.then6 ], [ %mul16, %if.else10 ]
  ret double %abs.0
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Zrecip(double %areal, double %aimag, double* nocapture %pbreal, double* nocapture %pbimag) #0 {
entry:
  %cmp = fcmp oeq double %areal, 0.000000e+00
  %cmp1 = fcmp oeq double %aimag, 0.000000e+00
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call double @fabs(double %areal) #4
  %call2 = tail call double @fabs(double %aimag) #4
  %cmp3 = fcmp ult double %call, %call2
  br i1 %cmp3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %div = fdiv double %aimag, %areal
  %mul = fmul double %div, %aimag
  %add = fadd double %mul, %areal
  %div5 = fdiv double 1.000000e+00, %add
  %0 = fmul double %div, %div5
  %mul6 = fsub double -0.000000e+00, %0
  br label %if.end13

if.else:                                          ; preds = %if.end
  %div7 = fdiv double %areal, %aimag
  %mul8 = fmul double %div7, %areal
  %add9 = fadd double %mul8, %aimag
  %div10 = fdiv double -1.000000e+00, %add9
  %1 = fmul double %div7, %div10
  %mul12 = fsub double -0.000000e+00, %1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  %bimag.0 = phi double [ %mul6, %if.then4 ], [ %div10, %if.else ]
  %breal.0 = phi double [ %div5, %if.then4 ], [ %mul12, %if.else ]
  store double %breal.0, double* %pbreal, align 8, !tbaa !0
  store double %bimag.0, double* %pbimag, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Zrecip2(double %areal, double %aimag, double %breal, double %bimag, double %creal, double %cimag, double %dreal, double %dimag, double* %pereal, double* %peimag, double* %pfreal, double* %pfimag, double* %pgreal, double* %pgimag, double* %phreal, double* %phimag) #0 {
entry:
  %yreal = alloca double, align 8
  %yimag = alloca double, align 8
  %mul = fmul double %areal, %dreal
  %mul1 = fmul double %aimag, %dimag
  %sub = fsub double %mul, %mul1
  %mul2 = fmul double %breal, %creal
  %sub3 = fsub double %sub, %mul2
  %mul4 = fmul double %bimag, %cimag
  %add = fadd double %mul4, %sub3
  %mul5 = fmul double %areal, %dimag
  %mul6 = fmul double %aimag, %dreal
  %add7 = fadd double %mul6, %mul5
  %mul8 = fmul double %breal, %cimag
  %sub9 = fsub double %add7, %mul8
  %mul10 = fmul double %bimag, %creal
  %sub11 = fsub double %sub9, %mul10
  %call = call i32 @Zrecip(double %add, double %sub11, double* %yreal, double* %yimag) #6
  %cmp = icmp eq double* %pereal, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load double* %yreal, align 8, !tbaa !0
  %mul12 = fmul double %0, %dreal
  %1 = load double* %yimag, align 8, !tbaa !0
  %mul13 = fmul double %1, %dimag
  %sub14 = fsub double %mul12, %mul13
  store double %sub14, double* %pereal, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp15 = icmp eq double* %peimag, null
  br i1 %cmp15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end
  %2 = load double* %yimag, align 8, !tbaa !0
  %mul17 = fmul double %2, %dreal
  %3 = load double* %yreal, align 8, !tbaa !0
  %mul18 = fmul double %3, %dimag
  %add19 = fadd double %mul17, %mul18
  store double %add19, double* %peimag, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then16
  %cmp21 = icmp eq double* %pfreal, null
  br i1 %cmp21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end20
  %4 = load double* %yreal, align 8, !tbaa !0
  %5 = fmul double %4, %breal
  %6 = load double* %yimag, align 8, !tbaa !0
  %mul25 = fmul double %6, %bimag
  %add26 = fsub double %mul25, %5
  store double %add26, double* %pfreal, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then22
  %cmp28 = icmp eq double* %pfimag, null
  br i1 %cmp28, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end27
  %7 = load double* %yimag, align 8, !tbaa !0
  %8 = fmul double %7, %breal
  %mul31 = fsub double -0.000000e+00, %8
  %9 = load double* %yreal, align 8, !tbaa !0
  %mul32 = fmul double %9, %bimag
  %sub33 = fsub double %mul31, %mul32
  store double %sub33, double* %pfimag, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %if.then29
  %cmp35 = icmp eq double* %pgreal, null
  br i1 %cmp35, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end34
  %10 = load double* %yreal, align 8, !tbaa !0
  %11 = fmul double %10, %creal
  %12 = load double* %yimag, align 8, !tbaa !0
  %mul39 = fmul double %12, %cimag
  %add40 = fsub double %mul39, %11
  store double %add40, double* %pgreal, align 8, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.end34, %if.then36
  %cmp42 = icmp eq double* %pgimag, null
  br i1 %cmp42, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end41
  %13 = load double* %yimag, align 8, !tbaa !0
  %14 = fmul double %13, %creal
  %mul45 = fsub double -0.000000e+00, %14
  %15 = load double* %yreal, align 8, !tbaa !0
  %mul46 = fmul double %15, %cimag
  %sub47 = fsub double %mul45, %mul46
  store double %sub47, double* %pgimag, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.end41, %if.then43
  %cmp49 = icmp eq double* %phreal, null
  br i1 %cmp49, label %if.end54, label %if.then50

if.then50:                                        ; preds = %if.end48
  %16 = load double* %yreal, align 8, !tbaa !0
  %mul51 = fmul double %16, %areal
  %17 = load double* %yimag, align 8, !tbaa !0
  %mul52 = fmul double %17, %aimag
  %sub53 = fsub double %mul51, %mul52
  store double %sub53, double* %phreal, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.then50
  %cmp55 = icmp eq double* %phimag, null
  br i1 %cmp55, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.end54
  %18 = load double* %yimag, align 8, !tbaa !0
  %mul57 = fmul double %18, %areal
  %19 = load double* %yreal, align 8, !tbaa !0
  %mul58 = fmul double %19, %aimag
  %add59 = fadd double %mul57, %mul58
  store double %add59, double* %phimag, align 8, !tbaa !0
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.then56
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define noalias double* @ZVinit(i32 %n, double %real, double %imag) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %if.then, label %if.then2

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i32 %n, double %real, double %imag) #5
  tail call void @exit(i32 -1) #7
  unreachable

if.then2:                                         ; preds = %entry
  %mul = shl nsw i32 %n, 1
  %conv = sext i32 %mul to i64
  %mul4 = shl nsw i64 %conv, 3
  %call5 = tail call noalias i8* @malloc(i64 %mul4) #5
  %1 = bitcast i8* %call5 to double*
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then2
  %cmp2645 = icmp sgt i32 %n, 0
  br i1 %cmp2645, label %for.body, label %for.end

if.then8:                                         ; preds = %if.then2
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul4, i32 181, i8* getelementptr inbounds ([83 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.046 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %1, i64 %indvars.iv
  store double %real, double* %arrayidx, align 8, !tbaa !0
  %3 = or i64 %indvars.iv, 1
  %arrayidx29 = getelementptr inbounds double* %1, i64 %3
  store double %imag, double* %arrayidx29, align 8, !tbaa !0
  %inc = add nsw i32 %ii.046, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret double* %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU(i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond47 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %prdot, null
  %or.cond48 = or i1 %or.cond47, %cmp5
  %cmp7 = icmp eq double* %pidot, null
  %or.cond49 = or i1 %or.cond48, %cmp7
  br i1 %or.cond49, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp850 = icmp sgt i32 %size, 0
  br i1 %cmp850, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.053 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %isum.052 = phi double [ %add21, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.051 = phi double [ %add17, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx10 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %y, i64 %indvars.iv
  %4 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds double* %y, i64 %2
  %5 = load double* %arrayidx15, align 8, !tbaa !0
  %mul = fmul double %1, %4
  %mul16 = fmul double %3, %5
  %sub = fsub double %mul, %mul16
  %add17 = fadd double %rsum.051, %sub
  %mul18 = fmul double %1, %5
  %mul19 = fmul double %3, %4
  %add20 = fadd double %mul19, %mul18
  %add21 = fadd double %isum.052, %add20
  %inc = add nsw i32 %ii.053, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add21, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add17, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !tbaa !0
  store double %isum.0.lcssa, double* %pidot, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC(i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond48 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %prdot, null
  %or.cond49 = or i1 %or.cond48, %cmp5
  %cmp7 = icmp eq double* %pidot, null
  %or.cond50 = or i1 %or.cond49, %cmp7
  br i1 %or.cond50, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp851 = icmp sgt i32 %size, 0
  br i1 %cmp851, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.054 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %isum.053 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.052 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx10 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %y, i64 %indvars.iv
  %4 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds double* %y, i64 %2
  %5 = load double* %arrayidx15, align 8, !tbaa !0
  %mul = fmul double %1, %4
  %mul16 = fmul double %3, %5
  %add17 = fadd double %mul, %mul16
  %add18 = fadd double %rsum.052, %add17
  %6 = fmul double %1, %5
  %mul20 = fmul double %3, %4
  %add21 = fsub double %mul20, %6
  %add22 = fadd double %isum.053, %add21
  %inc = add nsw i32 %ii.054, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !tbaa !0
  store double %isum.0.lcssa, double* %pidot, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotiU(i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %index, null
  %or.cond59 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %x, null
  %or.cond60 = or i1 %or.cond59, %cmp5
  %cmp7 = icmp eq double* %prdot, null
  %or.cond61 = or i1 %or.cond60, %cmp7
  %cmp9 = icmp eq double* %pidot, null
  %or.cond62 = or i1 %or.cond61, %cmp9
  br i1 %or.cond62, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1063 = icmp sgt i32 %size, 0
  br i1 %cmp1063, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body ], [ 0, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %isum.065 = phi double [ %add29, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.064 = phi double [ %add25, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx12 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %index, i64 %indvars.iv70
  %4 = load i32* %arrayidx14, align 4, !tbaa !4
  %mul = shl nsw i32 %4, 1
  %idxprom15 = sext i32 %mul to i64
  %arrayidx16 = getelementptr inbounds double* %y, i64 %idxprom15
  %5 = load double* %arrayidx16, align 8, !tbaa !0
  %add2058 = or i32 %mul, 1
  %idxprom21 = sext i32 %add2058 to i64
  %arrayidx22 = getelementptr inbounds double* %y, i64 %idxprom21
  %6 = load double* %arrayidx22, align 8, !tbaa !0
  %mul23 = fmul double %1, %5
  %mul24 = fmul double %3, %6
  %sub = fsub double %mul23, %mul24
  %add25 = fadd double %rsum.064, %sub
  %mul26 = fmul double %1, %6
  %mul27 = fmul double %3, %5
  %add28 = fadd double %mul27, %mul26
  %add29 = fadd double %isum.065, %add28
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next71 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add29, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add25, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !tbaa !0
  store double %isum.0.lcssa, double* %pidot, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotiC(i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %index, null
  %or.cond60 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %x, null
  %or.cond61 = or i1 %or.cond60, %cmp5
  %cmp7 = icmp eq double* %prdot, null
  %or.cond62 = or i1 %or.cond61, %cmp7
  %cmp9 = icmp eq double* %pidot, null
  %or.cond63 = or i1 %or.cond62, %cmp9
  br i1 %or.cond63, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1064 = icmp sgt i32 %size, 0
  br i1 %cmp1064, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body ], [ 0, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %isum.066 = phi double [ %add30, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.065 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx12 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %index, i64 %indvars.iv71
  %4 = load i32* %arrayidx14, align 4, !tbaa !4
  %mul = shl nsw i32 %4, 1
  %idxprom15 = sext i32 %mul to i64
  %arrayidx16 = getelementptr inbounds double* %y, i64 %idxprom15
  %5 = load double* %arrayidx16, align 8, !tbaa !0
  %add2059 = or i32 %mul, 1
  %idxprom21 = sext i32 %add2059 to i64
  %arrayidx22 = getelementptr inbounds double* %y, i64 %idxprom21
  %6 = load double* %arrayidx22, align 8, !tbaa !0
  %mul23 = fmul double %1, %5
  %mul24 = fmul double %3, %6
  %add25 = fadd double %mul23, %mul24
  %add26 = fadd double %rsum.065, %add25
  %7 = fmul double %1, %6
  %mul28 = fmul double %3, %5
  %add29 = fsub double %mul28, %7
  %add30 = fadd double %isum.066, %add29
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next72 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add30, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !tbaa !0
  store double %isum.0.lcssa, double* %pidot, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVaxpy(i32 %size, double* %y, double %areal, double %aimag, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond39 = or i1 %or.cond, %cmp3
  br i1 %or.cond39, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp440 = icmp sgt i32 %size, 0
  br i1 %cmp440, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.041 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %mul = fmul double %1, %areal
  %mul7 = fmul double %3, %aimag
  %sub = fsub double %mul, %mul7
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv
  %4 = load double* %arrayidx9, align 8, !tbaa !0
  %add10 = fadd double %4, %sub
  store double %add10, double* %arrayidx9, align 8, !tbaa !0
  %mul11 = fmul double %3, %areal
  %mul12 = fmul double %1, %aimag
  %add13 = fadd double %mul12, %mul11
  %arrayidx16 = getelementptr inbounds double* %y, i64 %2
  %5 = load double* %arrayidx16, align 8, !tbaa !0
  %add17 = fadd double %5, %add13
  store double %add17, double* %arrayidx16, align 8, !tbaa !0
  %inc = add nsw i32 %ii.041, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscale(i32 %size, double* %y, double %areal, double %aimag) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp234 = icmp sgt i32 %size, 0
  br i1 %cmp234, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str8, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.035 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds double* %y, i64 %2
  %3 = load double* %arrayidx4, align 8, !tbaa !0
  %mul = fmul double %1, %areal
  %mul5 = fmul double %3, %aimag
  %sub = fsub double %mul, %mul5
  store double %sub, double* %arrayidx, align 8, !tbaa !0
  %mul8 = fmul double %3, %areal
  %mul9 = fmul double %1, %aimag
  %add10 = fadd double %mul9, %mul8
  store double %add10, double* %arrayidx4, align 8, !tbaa !0
  %inc = add nsw i32 %ii.035, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVfprintf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp217 = icmp sgt i32 %size, 0
  br i1 %cmp217, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str9, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* %y) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.018 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds double* %y, i64 %2
  %3 = load double* %arrayidx4, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), double %1, double %3) #5
  %inc = add nsw i32 %ii.018, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @ZVminabs(i32 %size, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %x, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp256 = icmp sgt i32 %size, 0
  br i1 %cmp256, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), i32 %size, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %ii.058 = phi i32 [ %inc, %if.end25 ], [ 0, %for.cond.preheader ]
  %minabs.057 = phi double [ %minabs.1, %if.end25 ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %call3 = tail call double @fabs(double %1) #4
  %2 = or i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx5, align 8, !tbaa !0
  %call6 = tail call double @fabs(double %3) #4
  %cmp7 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp7, label %if.end25, label %if.else

if.else:                                          ; preds = %for.body
  %cmp9 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp9, label %if.end25, label %if.else11

if.else11:                                        ; preds = %if.else
  %cmp12 = fcmp ult double %call3, %call6
  br i1 %cmp12, label %if.else17, label %if.then13

if.then13:                                        ; preds = %if.else11
  %div = fdiv double %call6, %call3
  %mul = fmul double %div, %div
  %add14 = fadd double %mul, 1.000000e+00
  %call15 = tail call double @sqrt(double %add14) #5
  %mul16 = fmul double %call3, %call15
  br label %if.end25

if.else17:                                        ; preds = %if.else11
  %div18 = fdiv double %call3, %call6
  %mul19 = fmul double %div18, %div18
  %add20 = fadd double %mul19, 1.000000e+00
  %call21 = tail call double @sqrt(double %add20) #5
  %mul22 = fmul double %call6, %call21
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.body, %if.else17, %if.then13
  %abs.0 = phi double [ %mul16, %if.then13 ], [ %mul22, %if.else17 ], [ %call6, %for.body ], [ %call3, %if.else ]
  %cmp26 = icmp eq i32 %ii.058, 0
  %cmp28 = fcmp ogt double %minabs.057, %abs.0
  %or.cond55 = or i1 %cmp26, %cmp28
  %minabs.1 = select i1 %or.cond55, double %abs.0, double %minabs.057
  %inc = add nsw i32 %ii.058, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %minabs.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %minabs.1, %if.end25 ]
  ret double %minabs.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define double @ZVmaxabs(i32 %size, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %x, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp256 = icmp sgt i32 %size, 0
  br i1 %cmp256, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str12, i64 0, i64 0), i32 %size, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %ii.058 = phi i32 [ %inc, %if.end25 ], [ 0, %for.cond.preheader ]
  %maxabs.057 = phi double [ %maxabs.1, %if.end25 ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %call3 = tail call double @fabs(double %1) #4
  %2 = or i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx5, align 8, !tbaa !0
  %call6 = tail call double @fabs(double %3) #4
  %cmp7 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp7, label %if.end25, label %if.else

if.else:                                          ; preds = %for.body
  %cmp9 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp9, label %if.end25, label %if.else11

if.else11:                                        ; preds = %if.else
  %cmp12 = fcmp ult double %call3, %call6
  br i1 %cmp12, label %if.else17, label %if.then13

if.then13:                                        ; preds = %if.else11
  %div = fdiv double %call6, %call3
  %mul = fmul double %div, %div
  %add14 = fadd double %mul, 1.000000e+00
  %call15 = tail call double @sqrt(double %add14) #5
  %mul16 = fmul double %call3, %call15
  br label %if.end25

if.else17:                                        ; preds = %if.else11
  %div18 = fdiv double %call3, %call6
  %mul19 = fmul double %div18, %div18
  %add20 = fadd double %mul19, 1.000000e+00
  %call21 = tail call double @sqrt(double %add20) #5
  %mul22 = fmul double %call6, %call21
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.body, %if.else17, %if.then13
  %abs.0 = phi double [ %mul16, %if.then13 ], [ %mul22, %if.else17 ], [ %call6, %for.body ], [ %call3, %if.else ]
  %cmp26 = icmp eq i32 %ii.058, 0
  %cmp28 = fcmp olt double %maxabs.057, %abs.0
  %or.cond55 = or i1 %cmp26, %cmp28
  %maxabs.1 = select i1 %or.cond55, double %abs.0, double %maxabs.057
  %inc = add nsw i32 %ii.058, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %maxabs.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %maxabs.1, %if.end25 ]
  ret double %maxabs.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @ZVcopy(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond27 = or i1 %or.cond, %cmp3
  br i1 %or.cond27, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp428 = icmp sgt i32 %size, 0
  br i1 %cmp428, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str13, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.029 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %1, double* %arrayidx6, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx8 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2
  store double %3, double* %arrayidx11, align 8, !tbaa !0
  %inc = add nsw i32 %ii.029, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVsub(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond28 = or i1 %or.cond, %cmp3
  br i1 %or.cond28, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp429 = icmp sgt i32 %size, 0
  br i1 %cmp429, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str14, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.030 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !0
  %sub = fsub double %2, %1
  store double %sub, double* %arrayidx6, align 8, !tbaa !0
  %3 = or i64 %indvars.iv, 1
  %arrayidx8 = getelementptr inbounds double* %x, i64 %3
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds double* %y, i64 %3
  %5 = load double* %arrayidx11, align 8, !tbaa !0
  %sub12 = fsub double %5, %4
  store double %sub12, double* %arrayidx11, align 8, !tbaa !0
  %inc = add nsw i32 %ii.030, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVaxpy2(i32 %size, double* nocapture %z, double %areal, double %aimag, double* %x, double %breal, double %bimag, double* %y) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond59 = or i1 %or.cond, %cmp3
  br i1 %or.cond59, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp460 = icmp sgt i32 %size, 0
  br i1 %cmp460, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.061 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2
  %5 = load double* %arrayidx11, align 8, !tbaa !0
  %mul = fmul double %1, %areal
  %mul12 = fmul double %3, %aimag
  %sub = fsub double %mul, %mul12
  %mul13 = fmul double %4, %breal
  %add14 = fadd double %sub, %mul13
  %mul15 = fmul double %5, %bimag
  %sub16 = fsub double %add14, %mul15
  %arrayidx18 = getelementptr inbounds double* %z, i64 %indvars.iv
  %6 = load double* %arrayidx18, align 8, !tbaa !0
  %add19 = fadd double %6, %sub16
  store double %add19, double* %arrayidx18, align 8, !tbaa !0
  %mul20 = fmul double %3, %areal
  %mul21 = fmul double %1, %aimag
  %add22 = fadd double %mul21, %mul20
  %mul23 = fmul double %5, %breal
  %add24 = fadd double %add22, %mul23
  %mul25 = fmul double %4, %bimag
  %add26 = fadd double %mul25, %add24
  %arrayidx29 = getelementptr inbounds double* %z, i64 %2
  %7 = load double* %arrayidx29, align 8, !tbaa !0
  %add30 = fadd double %7, %add26
  store double %add30, double* %arrayidx29, align 8, !tbaa !0
  %inc = add nsw i32 %ii.061, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscale2(i32 %size, double* %x, double* %y, double %areal, double %aimag, double %breal, double %bimag, double %creal, double %cimag, double %dreal, double %dimag) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %x, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %y, null
  %or.cond91 = or i1 %or.cond, %cmp3
  br i1 %or.cond91, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp492 = icmp sgt i32 %size, 0
  br i1 %cmp492, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), i32 %size, double* %x, double* %y) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.093 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %2 = or i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2
  %5 = load double* %arrayidx11, align 8, !tbaa !0
  %mul = fmul double %1, %areal
  %mul12 = fmul double %3, %aimag
  %sub = fsub double %mul, %mul12
  %mul13 = fmul double %4, %breal
  %add14 = fadd double %sub, %mul13
  %mul15 = fmul double %5, %bimag
  %sub16 = fsub double %add14, %mul15
  store double %sub16, double* %arrayidx, align 8, !tbaa !0
  %mul19 = fmul double %3, %areal
  %mul20 = fmul double %1, %aimag
  %add21 = fadd double %mul20, %mul19
  %mul22 = fmul double %5, %breal
  %add23 = fadd double %add21, %mul22
  %mul24 = fmul double %4, %bimag
  %add25 = fadd double %mul24, %add23
  store double %add25, double* %arrayidx6, align 8, !tbaa !0
  %mul29 = fmul double %1, %creal
  %mul30 = fmul double %3, %cimag
  %sub31 = fsub double %mul29, %mul30
  %mul32 = fmul double %4, %dreal
  %add33 = fadd double %sub31, %mul32
  %mul34 = fmul double %5, %dimag
  %sub35 = fsub double %add33, %mul34
  store double %sub35, double* %arrayidx8, align 8, !tbaa !0
  %mul38 = fmul double %3, %creal
  %mul39 = fmul double %1, %cimag
  %add40 = fadd double %mul39, %mul38
  %mul41 = fmul double %5, %dreal
  %add42 = fadd double %add40, %mul41
  %mul43 = fmul double %4, %dimag
  %add44 = fadd double %mul43, %add42
  store double %add44, double* %arrayidx11, align 8, !tbaa !0
  %inc = add nsw i32 %ii.093, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVgather(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond35 = or i1 %or.cond, %cmp4
  br i1 %or.cond35, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str16, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body ], [ 0, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %mul = shl nsw i32 %1, 1
  %idxprom7 = sext i32 %mul to i64
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7
  %2 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv39
  store double %2, double* %arrayidx10, align 8, !tbaa !0
  %add33 = or i32 %mul, 1
  %idxprom11 = sext i32 %add33 to i64
  %arrayidx12 = getelementptr inbounds double* %x, i64 %idxprom11
  %3 = load double* %arrayidx12, align 8, !tbaa !0
  %4 = or i64 %indvars.iv39, 1
  %arrayidx15 = getelementptr inbounds double* %y, i64 %4
  store double %3, double* %arrayidx15, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next40 = add i64 %indvars.iv39, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end17, label %for.body

if.end17:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscatter(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond35 = or i1 %or.cond, %cmp4
  br i1 %or.cond35, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str17, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body ], [ 0, %if.then ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %mul = shl nsw i32 %1, 1
  %arrayidx8 = getelementptr inbounds double* %x, i64 %indvars.iv39
  %2 = load double* %arrayidx8, align 8, !tbaa !0
  %idxprom9 = sext i32 %mul to i64
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9
  store double %2, double* %arrayidx10, align 8, !tbaa !0
  %3 = or i64 %indvars.iv39, 1
  %arrayidx12 = getelementptr inbounds double* %x, i64 %3
  %4 = load double* %arrayidx12, align 8, !tbaa !0
  %add1334 = or i32 %mul, 1
  %idxprom14 = sext i32 %add1334 to i64
  %arrayidx15 = getelementptr inbounds double* %y, i64 %idxprom14
  store double %4, double* %arrayidx15, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next40 = add i64 %indvars.iv39, 2
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end17, label %for.body

if.end17:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU33(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp226 = icmp sgt i32 %n, 0
  br i1 %cmp226, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0245 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0244 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0243 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0242 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0241 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0240 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0239 = phi double [ %add67, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0238 = phi double [ %add75, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0237 = phi double [ %add83, %for.body ], [ 0.000000e+00, %entry ]
  %i22.0236 = phi double [ %add91, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0235 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0234 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0233 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %r22.0232 = phi double [ %add87, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0231 = phi double [ %add79, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0230 = phi double [ %add71, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0229 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0228 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0227 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv265
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv265
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv265
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv265
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv265
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %10 = load double* %arrayidx20, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds double* %x2, i64 %indvars.iv265
  %11 = load double* %arrayidx22, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul23 = fmul double %1, %7
  %sub = fsub double %mul, %mul23
  %add = fadd double %r00.0235, %sub
  %mul24 = fmul double %0, %7
  %mul25 = fmul double %1, %6
  %add26 = fadd double %mul25, %mul24
  %add27 = fadd double %i00.0244, %add26
  %mul28 = fmul double %0, %8
  %mul29 = fmul double %1, %9
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %r01.0234, %sub30
  %mul32 = fmul double %0, %9
  %mul33 = fmul double %1, %8
  %add34 = fadd double %mul33, %mul32
  %add35 = fadd double %i01.0243, %add34
  %mul36 = fmul double %0, %10
  %mul37 = fmul double %1, %11
  %sub38 = fsub double %mul36, %mul37
  %add39 = fadd double %r02.0233, %sub38
  %mul40 = fmul double %0, %11
  %mul41 = fmul double %1, %10
  %add42 = fadd double %mul41, %mul40
  %add43 = fadd double %i02.0242, %add42
  %mul44 = fmul double %2, %6
  %mul45 = fmul double %3, %7
  %sub46 = fsub double %mul44, %mul45
  %add47 = fadd double %r10.0227, %sub46
  %mul48 = fmul double %2, %7
  %mul49 = fmul double %3, %6
  %add50 = fadd double %mul49, %mul48
  %add51 = fadd double %i10.0241, %add50
  %mul52 = fmul double %2, %8
  %mul53 = fmul double %3, %9
  %sub54 = fsub double %mul52, %mul53
  %add55 = fadd double %r11.0228, %sub54
  %mul56 = fmul double %2, %9
  %mul57 = fmul double %3, %8
  %add58 = fadd double %mul57, %mul56
  %add59 = fadd double %i11.0240, %add58
  %mul60 = fmul double %2, %10
  %mul61 = fmul double %3, %11
  %sub62 = fsub double %mul60, %mul61
  %add63 = fadd double %r12.0229, %sub62
  %mul64 = fmul double %2, %11
  %mul65 = fmul double %3, %10
  %add66 = fadd double %mul65, %mul64
  %add67 = fadd double %i12.0239, %add66
  %mul68 = fmul double %4, %6
  %mul69 = fmul double %5, %7
  %sub70 = fsub double %mul68, %mul69
  %add71 = fadd double %r20.0230, %sub70
  %mul72 = fmul double %4, %7
  %mul73 = fmul double %5, %6
  %add74 = fadd double %mul73, %mul72
  %add75 = fadd double %i20.0238, %add74
  %mul76 = fmul double %4, %8
  %mul77 = fmul double %5, %9
  %sub78 = fsub double %mul76, %mul77
  %add79 = fadd double %r21.0231, %sub78
  %mul80 = fmul double %4, %9
  %mul81 = fmul double %5, %8
  %add82 = fadd double %mul81, %mul80
  %add83 = fadd double %i21.0237, %add82
  %mul84 = fmul double %4, %10
  %mul85 = fmul double %5, %11
  %sub86 = fsub double %mul84, %mul85
  %add87 = fadd double %r22.0232, %sub86
  %mul88 = fmul double %4, %11
  %mul89 = fmul double %5, %10
  %add90 = fadd double %mul89, %mul88
  %add91 = fadd double %i22.0236, %add90
  %inc = add nsw i32 %ii.0245, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next266 = add i64 %indvars.iv265, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add67, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add75, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add83, %for.body ]
  %i22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add91, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %r22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add87, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add79, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add71, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx95, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx99, align 8, !tbaa !0
  %arrayidx100 = getelementptr inbounds double* %sums, i64 6
  store double %r10.0.lcssa, double* %arrayidx100, align 8, !tbaa !0
  %arrayidx101 = getelementptr inbounds double* %sums, i64 7
  store double %i10.0.lcssa, double* %arrayidx101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds double* %sums, i64 8
  store double %r11.0.lcssa, double* %arrayidx102, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds double* %sums, i64 9
  store double %i11.0.lcssa, double* %arrayidx103, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds double* %sums, i64 10
  store double %r12.0.lcssa, double* %arrayidx104, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds double* %sums, i64 11
  store double %i12.0.lcssa, double* %arrayidx105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds double* %sums, i64 12
  store double %r20.0.lcssa, double* %arrayidx106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds double* %sums, i64 13
  store double %i20.0.lcssa, double* %arrayidx107, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds double* %sums, i64 14
  store double %r21.0.lcssa, double* %arrayidx108, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds double* %sums, i64 15
  store double %i21.0.lcssa, double* %arrayidx109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds double* %sums, i64 16
  store double %r22.0.lcssa, double* %arrayidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds double* %sums, i64 17
  store double %i22.0.lcssa, double* %arrayidx111, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU32(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp155 = icmp sgt i32 %n, 0
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv182
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv182
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv182
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul19 = fmul double %1, %7
  %sub = fsub double %mul, %mul19
  %add = fadd double %r00.0161, %sub
  %mul20 = fmul double %0, %7
  %mul21 = fmul double %1, %6
  %add22 = fadd double %mul21, %mul20
  %add23 = fadd double %i00.0167, %add22
  %mul24 = fmul double %0, %8
  %mul25 = fmul double %1, %9
  %sub26 = fsub double %mul24, %mul25
  %add27 = fadd double %r01.0160, %sub26
  %mul28 = fmul double %0, %9
  %mul29 = fmul double %1, %8
  %add30 = fadd double %mul29, %mul28
  %add31 = fadd double %i01.0166, %add30
  %mul32 = fmul double %2, %6
  %mul33 = fmul double %3, %7
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %r10.0159, %sub34
  %mul36 = fmul double %2, %7
  %mul37 = fmul double %3, %6
  %add38 = fadd double %mul37, %mul36
  %add39 = fadd double %i10.0165, %add38
  %mul40 = fmul double %2, %8
  %mul41 = fmul double %3, %9
  %sub42 = fsub double %mul40, %mul41
  %add43 = fadd double %r11.0158, %sub42
  %mul44 = fmul double %2, %9
  %mul45 = fmul double %3, %8
  %add46 = fadd double %mul45, %mul44
  %add47 = fadd double %i11.0164, %add46
  %mul48 = fmul double %4, %6
  %mul49 = fmul double %5, %7
  %sub50 = fsub double %mul48, %mul49
  %add51 = fadd double %r20.0156, %sub50
  %mul52 = fmul double %4, %7
  %mul53 = fmul double %5, %6
  %add54 = fadd double %mul53, %mul52
  %add55 = fadd double %i20.0163, %add54
  %mul56 = fmul double %4, %8
  %mul57 = fmul double %5, %9
  %sub58 = fsub double %mul56, %mul57
  %add59 = fadd double %r21.0157, %sub58
  %mul60 = fmul double %4, %9
  %mul61 = fmul double %5, %8
  %add62 = fadd double %mul61, %mul60
  %add63 = fadd double %i21.0162, %add62
  %inc = add nsw i32 %ii.0168, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next183 = add i64 %indvars.iv182, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4
  store double %r10.0.lcssa, double* %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5
  store double %i10.0.lcssa, double* %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6
  store double %r11.0.lcssa, double* %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7
  store double %i11.0.lcssa, double* %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8
  store double %r20.0.lcssa, double* %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9
  store double %i20.0.lcssa, double* %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10
  store double %r21.0.lcssa, double* %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11
  store double %i21.0.lcssa, double* %arrayidx77, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU31(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp84 = icmp sgt i32 %n, 0
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i10.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i20.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r10.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r20.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv99
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv99
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv99
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul15 = fmul double %1, %7
  %sub = fsub double %mul, %mul15
  %add = fadd double %r00.087, %sub
  %mul16 = fmul double %0, %7
  %mul17 = fmul double %1, %6
  %add18 = fadd double %mul17, %mul16
  %add19 = fadd double %i00.090, %add18
  %mul20 = fmul double %2, %6
  %mul21 = fmul double %3, %7
  %sub22 = fsub double %mul20, %mul21
  %add23 = fadd double %r10.086, %sub22
  %mul24 = fmul double %2, %7
  %mul25 = fmul double %3, %6
  %add26 = fadd double %mul25, %mul24
  %add27 = fadd double %i10.089, %add26
  %mul28 = fmul double %4, %6
  %mul29 = fmul double %5, %7
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %r20.085, %sub30
  %mul32 = fmul double %4, %7
  %mul33 = fmul double %5, %6
  %add34 = fadd double %mul33, %mul32
  %add35 = fadd double %i20.088, %add34
  %inc = add nsw i32 %ii.091, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next100 = add i64 %indvars.iv99, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2
  store double %r10.0.lcssa, double* %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3
  store double %i10.0.lcssa, double* %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4
  store double %r20.0.lcssa, double* %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5
  store double %i20.0.lcssa, double* %arrayidx43, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU23(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp155 = icmp sgt i32 %n, 0
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv182
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv182
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x2, i64 %indvars.iv182
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul19 = fmul double %1, %5
  %sub = fsub double %mul, %mul19
  %add = fadd double %r00.0161, %sub
  %mul20 = fmul double %0, %5
  %mul21 = fmul double %1, %4
  %add22 = fadd double %mul21, %mul20
  %add23 = fadd double %i00.0167, %add22
  %mul24 = fmul double %0, %6
  %mul25 = fmul double %1, %7
  %sub26 = fsub double %mul24, %mul25
  %add27 = fadd double %r01.0160, %sub26
  %mul28 = fmul double %0, %7
  %mul29 = fmul double %1, %6
  %add30 = fadd double %mul29, %mul28
  %add31 = fadd double %i01.0166, %add30
  %mul32 = fmul double %0, %8
  %mul33 = fmul double %1, %9
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %r02.0159, %sub34
  %mul36 = fmul double %0, %9
  %mul37 = fmul double %1, %8
  %add38 = fadd double %mul37, %mul36
  %add39 = fadd double %i02.0165, %add38
  %mul40 = fmul double %2, %4
  %mul41 = fmul double %3, %5
  %sub42 = fsub double %mul40, %mul41
  %add43 = fadd double %r10.0158, %sub42
  %mul44 = fmul double %2, %5
  %mul45 = fmul double %3, %4
  %add46 = fadd double %mul45, %mul44
  %add47 = fadd double %i10.0164, %add46
  %mul48 = fmul double %2, %6
  %mul49 = fmul double %3, %7
  %sub50 = fsub double %mul48, %mul49
  %add51 = fadd double %r11.0156, %sub50
  %mul52 = fmul double %2, %7
  %mul53 = fmul double %3, %6
  %add54 = fadd double %mul53, %mul52
  %add55 = fadd double %i11.0163, %add54
  %mul56 = fmul double %2, %8
  %mul57 = fmul double %3, %9
  %sub58 = fsub double %mul56, %mul57
  %add59 = fadd double %r12.0157, %sub58
  %mul60 = fmul double %2, %9
  %mul61 = fmul double %3, %8
  %add62 = fadd double %mul61, %mul60
  %add63 = fadd double %i12.0162, %add62
  %inc = add nsw i32 %ii.0168, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next183 = add i64 %indvars.iv182, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6
  store double %r10.0.lcssa, double* %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7
  store double %i10.0.lcssa, double* %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8
  store double %r11.0.lcssa, double* %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9
  store double %i11.0.lcssa, double* %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10
  store double %r12.0.lcssa, double* %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11
  store double %i12.0.lcssa, double* %arrayidx77, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU22(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp106 = icmp sgt i32 %n, 0
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0115 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0114 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0113 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0112 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0111 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0110 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0109 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0108 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0107 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv125
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv125
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv125
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv125
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul15 = fmul double %1, %5
  %sub = fsub double %mul, %mul15
  %add = fadd double %r00.0110, %sub
  %mul16 = fmul double %0, %5
  %mul17 = fmul double %1, %4
  %add18 = fadd double %mul17, %mul16
  %add19 = fadd double %i00.0114, %add18
  %mul20 = fmul double %0, %6
  %mul21 = fmul double %1, %7
  %sub22 = fsub double %mul20, %mul21
  %add23 = fadd double %r01.0109, %sub22
  %mul24 = fmul double %0, %7
  %mul25 = fmul double %1, %6
  %add26 = fadd double %mul25, %mul24
  %add27 = fadd double %i01.0113, %add26
  %mul28 = fmul double %2, %4
  %mul29 = fmul double %3, %5
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %r10.0108, %sub30
  %mul32 = fmul double %2, %5
  %mul33 = fmul double %3, %4
  %add34 = fadd double %mul33, %mul32
  %add35 = fadd double %i10.0112, %add34
  %mul36 = fmul double %2, %6
  %mul37 = fmul double %3, %7
  %sub38 = fsub double %mul36, %mul37
  %add39 = fadd double %r11.0107, %sub38
  %mul40 = fmul double %2, %7
  %mul41 = fmul double %3, %6
  %add42 = fadd double %mul41, %mul40
  %add43 = fadd double %i11.0111, %add42
  %inc = add nsw i32 %ii.0115, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next126 = add i64 %indvars.iv125, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds double* %sums, i64 4
  store double %r10.0.lcssa, double* %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds double* %sums, i64 5
  store double %i10.0.lcssa, double* %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds double* %sums, i64 6
  store double %r11.0.lcssa, double* %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds double* %sums, i64 7
  store double %i11.0.lcssa, double* %arrayidx53, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU21(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp57 = icmp sgt i32 %n, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i10.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r10.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv68
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv68
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul11 = fmul double %1, %5
  %sub = fsub double %mul, %mul11
  %add = fadd double %r00.059, %sub
  %mul12 = fmul double %0, %5
  %mul13 = fmul double %1, %4
  %add14 = fadd double %mul13, %mul12
  %add15 = fadd double %i00.061, %add14
  %mul16 = fmul double %2, %4
  %mul17 = fmul double %3, %5
  %sub18 = fsub double %mul16, %mul17
  %add19 = fadd double %r10.058, %sub18
  %mul20 = fmul double %2, %5
  %mul21 = fmul double %3, %4
  %add22 = fadd double %mul21, %mul20
  %add23 = fadd double %i10.060, %add22
  %inc = add nsw i32 %ii.062, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next69 = add i64 %indvars.iv68, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2
  store double %r10.0.lcssa, double* %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3
  store double %i10.0.lcssa, double* %arrayidx29, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU13(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp84 = icmp sgt i32 %n, 0
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i02.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r02.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv99
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv99
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x2, i64 %indvars.iv99
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul15 = fmul double %1, %3
  %sub = fsub double %mul, %mul15
  %add = fadd double %r00.087, %sub
  %mul16 = fmul double %0, %3
  %mul17 = fmul double %1, %2
  %add18 = fadd double %mul17, %mul16
  %add19 = fadd double %i00.090, %add18
  %mul20 = fmul double %0, %4
  %mul21 = fmul double %1, %5
  %sub22 = fsub double %mul20, %mul21
  %add23 = fadd double %r01.086, %sub22
  %mul24 = fmul double %0, %5
  %mul25 = fmul double %1, %4
  %add26 = fadd double %mul25, %mul24
  %add27 = fadd double %i01.089, %add26
  %mul28 = fmul double %0, %6
  %mul29 = fmul double %1, %7
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %r02.085, %sub30
  %mul32 = fmul double %0, %7
  %mul33 = fmul double %1, %6
  %add34 = fadd double %mul33, %mul32
  %add35 = fadd double %i02.088, %add34
  %inc = add nsw i32 %ii.091, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next100 = add i64 %indvars.iv99, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx43, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU12(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp57 = icmp sgt i32 %n, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i01.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv68
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv68
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul11 = fmul double %1, %3
  %sub = fsub double %mul, %mul11
  %add = fadd double %r00.059, %sub
  %mul12 = fmul double %0, %3
  %mul13 = fmul double %1, %2
  %add14 = fadd double %mul13, %mul12
  %add15 = fadd double %i00.061, %add14
  %mul16 = fmul double %0, %4
  %mul17 = fmul double %1, %5
  %sub18 = fsub double %mul16, %mul17
  %add19 = fadd double %r01.058, %sub18
  %mul20 = fmul double %0, %5
  %mul21 = fmul double %1, %4
  %add22 = fadd double %mul21, %mul20
  %add23 = fadd double %i01.060, %add22
  %inc = add nsw i32 %ii.062, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next69 = add i64 %indvars.iv68, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx29, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU11(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp30 = icmp sgt i32 %n, 0
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.033 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.032 = phi double [ %add11, %for.body ], [ 0.000000e+00, %entry ]
  %r00.031 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv37
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv37
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul7 = fmul double %1, %3
  %sub = fsub double %mul, %mul7
  %add = fadd double %r00.031, %sub
  %mul8 = fmul double %0, %3
  %mul9 = fmul double %1, %2
  %add10 = fadd double %mul9, %mul8
  %add11 = fadd double %i00.032, %add10
  %inc = add nsw i32 %ii.033, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next38 = add i64 %indvars.iv37, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add11, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx15, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC33(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp226 = icmp sgt i32 %n, 0
  br i1 %cmp226, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0245 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0244 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0243 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0242 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0241 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0240 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0239 = phi double [ %add67, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0238 = phi double [ %add75, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0237 = phi double [ %add83, %for.body ], [ 0.000000e+00, %entry ]
  %i22.0236 = phi double [ %add91, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0235 = phi double [ %add24, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0234 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0233 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %r22.0232 = phi double [ %add87, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0231 = phi double [ %add79, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0230 = phi double [ %add71, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0229 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0228 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0227 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv265
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv265
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv265
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv265
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv265
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %10 = load double* %arrayidx20, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds double* %x2, i64 %indvars.iv265
  %11 = load double* %arrayidx22, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul23 = fmul double %1, %7
  %add = fadd double %mul, %mul23
  %add24 = fadd double %r00.0235, %add
  %mul25 = fmul double %0, %7
  %mul26 = fmul double %1, %6
  %sub = fsub double %mul25, %mul26
  %add27 = fadd double %i00.0244, %sub
  %mul28 = fmul double %0, %8
  %mul29 = fmul double %1, %9
  %add30 = fadd double %mul28, %mul29
  %add31 = fadd double %r01.0234, %add30
  %mul32 = fmul double %0, %9
  %mul33 = fmul double %1, %8
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %i01.0243, %sub34
  %mul36 = fmul double %0, %10
  %mul37 = fmul double %1, %11
  %add38 = fadd double %mul36, %mul37
  %add39 = fadd double %r02.0233, %add38
  %mul40 = fmul double %0, %11
  %mul41 = fmul double %1, %10
  %sub42 = fsub double %mul40, %mul41
  %add43 = fadd double %i02.0242, %sub42
  %mul44 = fmul double %2, %6
  %mul45 = fmul double %3, %7
  %add46 = fadd double %mul44, %mul45
  %add47 = fadd double %r10.0227, %add46
  %mul48 = fmul double %2, %7
  %mul49 = fmul double %3, %6
  %sub50 = fsub double %mul48, %mul49
  %add51 = fadd double %i10.0241, %sub50
  %mul52 = fmul double %2, %8
  %mul53 = fmul double %3, %9
  %add54 = fadd double %mul52, %mul53
  %add55 = fadd double %r11.0228, %add54
  %mul56 = fmul double %2, %9
  %mul57 = fmul double %3, %8
  %sub58 = fsub double %mul56, %mul57
  %add59 = fadd double %i11.0240, %sub58
  %mul60 = fmul double %2, %10
  %mul61 = fmul double %3, %11
  %add62 = fadd double %mul60, %mul61
  %add63 = fadd double %r12.0229, %add62
  %mul64 = fmul double %2, %11
  %mul65 = fmul double %3, %10
  %sub66 = fsub double %mul64, %mul65
  %add67 = fadd double %i12.0239, %sub66
  %mul68 = fmul double %4, %6
  %mul69 = fmul double %5, %7
  %add70 = fadd double %mul68, %mul69
  %add71 = fadd double %r20.0230, %add70
  %mul72 = fmul double %4, %7
  %mul73 = fmul double %5, %6
  %sub74 = fsub double %mul72, %mul73
  %add75 = fadd double %i20.0238, %sub74
  %mul76 = fmul double %4, %8
  %mul77 = fmul double %5, %9
  %add78 = fadd double %mul76, %mul77
  %add79 = fadd double %r21.0231, %add78
  %mul80 = fmul double %4, %9
  %mul81 = fmul double %5, %8
  %sub82 = fsub double %mul80, %mul81
  %add83 = fadd double %i21.0237, %sub82
  %mul84 = fmul double %4, %10
  %mul85 = fmul double %5, %11
  %add86 = fadd double %mul84, %mul85
  %add87 = fadd double %r22.0232, %add86
  %mul88 = fmul double %4, %11
  %mul89 = fmul double %5, %10
  %sub90 = fsub double %mul88, %mul89
  %add91 = fadd double %i22.0236, %sub90
  %inc = add nsw i32 %ii.0245, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next266 = add i64 %indvars.iv265, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add67, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add75, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add83, %for.body ]
  %i22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add91, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add24, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %r22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add87, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add79, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add71, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx95, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx99, align 8, !tbaa !0
  %arrayidx100 = getelementptr inbounds double* %sums, i64 6
  store double %r10.0.lcssa, double* %arrayidx100, align 8, !tbaa !0
  %arrayidx101 = getelementptr inbounds double* %sums, i64 7
  store double %i10.0.lcssa, double* %arrayidx101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds double* %sums, i64 8
  store double %r11.0.lcssa, double* %arrayidx102, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds double* %sums, i64 9
  store double %i11.0.lcssa, double* %arrayidx103, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds double* %sums, i64 10
  store double %r12.0.lcssa, double* %arrayidx104, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds double* %sums, i64 11
  store double %i12.0.lcssa, double* %arrayidx105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds double* %sums, i64 12
  store double %r20.0.lcssa, double* %arrayidx106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds double* %sums, i64 13
  store double %i20.0.lcssa, double* %arrayidx107, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds double* %sums, i64 14
  store double %r21.0.lcssa, double* %arrayidx108, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds double* %sums, i64 15
  store double %i21.0.lcssa, double* %arrayidx109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds double* %sums, i64 16
  store double %r22.0.lcssa, double* %arrayidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds double* %sums, i64 17
  store double %i22.0.lcssa, double* %arrayidx111, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC32(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp155 = icmp sgt i32 %n, 0
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv182
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv182
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv182
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul19 = fmul double %1, %7
  %add = fadd double %mul, %mul19
  %add20 = fadd double %r00.0161, %add
  %mul21 = fmul double %0, %7
  %mul22 = fmul double %1, %6
  %sub = fsub double %mul21, %mul22
  %add23 = fadd double %i00.0167, %sub
  %mul24 = fmul double %0, %8
  %mul25 = fmul double %1, %9
  %add26 = fadd double %mul24, %mul25
  %add27 = fadd double %r01.0160, %add26
  %mul28 = fmul double %0, %9
  %mul29 = fmul double %1, %8
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %i01.0166, %sub30
  %mul32 = fmul double %2, %6
  %mul33 = fmul double %3, %7
  %add34 = fadd double %mul32, %mul33
  %add35 = fadd double %r10.0159, %add34
  %mul36 = fmul double %2, %7
  %mul37 = fmul double %3, %6
  %sub38 = fsub double %mul36, %mul37
  %add39 = fadd double %i10.0165, %sub38
  %mul40 = fmul double %2, %8
  %mul41 = fmul double %3, %9
  %add42 = fadd double %mul40, %mul41
  %add43 = fadd double %r11.0158, %add42
  %mul44 = fmul double %2, %9
  %mul45 = fmul double %3, %8
  %sub46 = fsub double %mul44, %mul45
  %add47 = fadd double %i11.0164, %sub46
  %mul48 = fmul double %4, %6
  %mul49 = fmul double %5, %7
  %add50 = fadd double %mul48, %mul49
  %add51 = fadd double %r20.0156, %add50
  %mul52 = fmul double %4, %7
  %mul53 = fmul double %5, %6
  %sub54 = fsub double %mul52, %mul53
  %add55 = fadd double %i20.0163, %sub54
  %mul56 = fmul double %4, %8
  %mul57 = fmul double %5, %9
  %add58 = fadd double %mul56, %mul57
  %add59 = fadd double %r21.0157, %add58
  %mul60 = fmul double %4, %9
  %mul61 = fmul double %5, %8
  %sub62 = fsub double %mul60, %mul61
  %add63 = fadd double %i21.0162, %sub62
  %inc = add nsw i32 %ii.0168, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next183 = add i64 %indvars.iv182, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4
  store double %r10.0.lcssa, double* %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5
  store double %i10.0.lcssa, double* %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6
  store double %r11.0.lcssa, double* %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7
  store double %i11.0.lcssa, double* %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8
  store double %r20.0.lcssa, double* %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9
  store double %i20.0.lcssa, double* %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10
  store double %r21.0.lcssa, double* %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11
  store double %i21.0.lcssa, double* %arrayidx77, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC31(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp84 = icmp sgt i32 %n, 0
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i10.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i20.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r10.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r20.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv99
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv99
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv99
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %6
  %mul15 = fmul double %1, %7
  %add = fadd double %mul, %mul15
  %add16 = fadd double %r00.087, %add
  %mul17 = fmul double %0, %7
  %mul18 = fmul double %1, %6
  %sub = fsub double %mul17, %mul18
  %add19 = fadd double %i00.090, %sub
  %mul20 = fmul double %2, %6
  %mul21 = fmul double %3, %7
  %add22 = fadd double %mul20, %mul21
  %add23 = fadd double %r10.086, %add22
  %mul24 = fmul double %2, %7
  %mul25 = fmul double %3, %6
  %sub26 = fsub double %mul24, %mul25
  %add27 = fadd double %i10.089, %sub26
  %mul28 = fmul double %4, %6
  %mul29 = fmul double %5, %7
  %add30 = fadd double %mul28, %mul29
  %add31 = fadd double %r20.085, %add30
  %mul32 = fmul double %4, %7
  %mul33 = fmul double %5, %6
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %i20.088, %sub34
  %inc = add nsw i32 %ii.091, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next100 = add i64 %indvars.iv99, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2
  store double %r10.0.lcssa, double* %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3
  store double %i10.0.lcssa, double* %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4
  store double %r20.0.lcssa, double* %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5
  store double %i20.0.lcssa, double* %arrayidx43, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC23(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp155 = icmp sgt i32 %n, 0
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv182
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv182
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %8 = load double* %arrayidx16, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds double* %x2, i64 %indvars.iv182
  %9 = load double* %arrayidx18, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul19 = fmul double %1, %5
  %add = fadd double %mul, %mul19
  %add20 = fadd double %r00.0161, %add
  %mul21 = fmul double %0, %5
  %mul22 = fmul double %1, %4
  %sub = fsub double %mul21, %mul22
  %add23 = fadd double %i00.0167, %sub
  %mul24 = fmul double %0, %6
  %mul25 = fmul double %1, %7
  %add26 = fadd double %mul24, %mul25
  %add27 = fadd double %r01.0160, %add26
  %mul28 = fmul double %0, %7
  %mul29 = fmul double %1, %6
  %sub30 = fsub double %mul28, %mul29
  %add31 = fadd double %i01.0166, %sub30
  %mul32 = fmul double %0, %8
  %mul33 = fmul double %1, %9
  %add34 = fadd double %mul32, %mul33
  %add35 = fadd double %r02.0159, %add34
  %mul36 = fmul double %0, %9
  %mul37 = fmul double %1, %8
  %sub38 = fsub double %mul36, %mul37
  %add39 = fadd double %i02.0165, %sub38
  %mul40 = fmul double %2, %4
  %mul41 = fmul double %3, %5
  %add42 = fadd double %mul40, %mul41
  %add43 = fadd double %r10.0158, %add42
  %mul44 = fmul double %2, %5
  %mul45 = fmul double %3, %4
  %sub46 = fsub double %mul44, %mul45
  %add47 = fadd double %i10.0164, %sub46
  %mul48 = fmul double %2, %6
  %mul49 = fmul double %3, %7
  %add50 = fadd double %mul48, %mul49
  %add51 = fadd double %r11.0156, %add50
  %mul52 = fmul double %2, %7
  %mul53 = fmul double %3, %6
  %sub54 = fsub double %mul52, %mul53
  %add55 = fadd double %i11.0163, %sub54
  %mul56 = fmul double %2, %8
  %mul57 = fmul double %3, %9
  %add58 = fadd double %mul56, %mul57
  %add59 = fadd double %r12.0157, %add58
  %mul60 = fmul double %2, %9
  %mul61 = fmul double %3, %8
  %sub62 = fsub double %mul60, %mul61
  %add63 = fadd double %i12.0162, %sub62
  %inc = add nsw i32 %ii.0168, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next183 = add i64 %indvars.iv182, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6
  store double %r10.0.lcssa, double* %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7
  store double %i10.0.lcssa, double* %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8
  store double %r11.0.lcssa, double* %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9
  store double %i11.0.lcssa, double* %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10
  store double %r12.0.lcssa, double* %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11
  store double %i12.0.lcssa, double* %arrayidx77, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC22(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp106 = icmp sgt i32 %n, 0
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0115 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0114 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0113 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0112 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0111 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0110 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0109 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0108 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0107 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv125
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv125
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv125
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv125
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul15 = fmul double %1, %5
  %add = fadd double %mul, %mul15
  %add16 = fadd double %r00.0110, %add
  %mul17 = fmul double %0, %5
  %mul18 = fmul double %1, %4
  %sub = fsub double %mul17, %mul18
  %add19 = fadd double %i00.0114, %sub
  %mul20 = fmul double %0, %6
  %mul21 = fmul double %1, %7
  %add22 = fadd double %mul20, %mul21
  %add23 = fadd double %r01.0109, %add22
  %mul24 = fmul double %0, %7
  %mul25 = fmul double %1, %6
  %sub26 = fsub double %mul24, %mul25
  %add27 = fadd double %i01.0113, %sub26
  %mul28 = fmul double %2, %4
  %mul29 = fmul double %3, %5
  %add30 = fadd double %mul28, %mul29
  %add31 = fadd double %r10.0108, %add30
  %mul32 = fmul double %2, %5
  %mul33 = fmul double %3, %4
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %i10.0112, %sub34
  %mul36 = fmul double %2, %6
  %mul37 = fmul double %3, %7
  %add38 = fadd double %mul36, %mul37
  %add39 = fadd double %r11.0107, %add38
  %mul40 = fmul double %2, %7
  %mul41 = fmul double %3, %6
  %sub42 = fsub double %mul40, %mul41
  %add43 = fadd double %i11.0111, %sub42
  %inc = add nsw i32 %ii.0115, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next126 = add i64 %indvars.iv125, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds double* %sums, i64 4
  store double %r10.0.lcssa, double* %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds double* %sums, i64 5
  store double %i10.0.lcssa, double* %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds double* %sums, i64 6
  store double %r11.0.lcssa, double* %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds double* %sums, i64 7
  store double %i11.0.lcssa, double* %arrayidx53, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC21(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp57 = icmp sgt i32 %n, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i10.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %r10.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv68
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv68
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %mul = fmul double %0, %4
  %mul11 = fmul double %1, %5
  %add = fadd double %mul, %mul11
  %add12 = fadd double %r00.059, %add
  %mul13 = fmul double %0, %5
  %mul14 = fmul double %1, %4
  %sub = fsub double %mul13, %mul14
  %add15 = fadd double %i00.061, %sub
  %mul16 = fmul double %2, %4
  %mul17 = fmul double %3, %5
  %add18 = fadd double %mul16, %mul17
  %add19 = fadd double %r10.058, %add18
  %mul20 = fmul double %2, %5
  %mul21 = fmul double %3, %4
  %sub22 = fsub double %mul20, %mul21
  %add23 = fadd double %i10.060, %sub22
  %inc = add nsw i32 %ii.062, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next69 = add i64 %indvars.iv68, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add12, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2
  store double %r10.0.lcssa, double* %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3
  store double %i10.0.lcssa, double* %arrayidx29, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC13(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  %cmp84 = icmp sgt i32 %n, 0
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i02.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r01.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r02.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv99
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv99
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds double* %x2, i64 %indvars.iv
  %6 = load double* %arrayidx12, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds double* %x2, i64 %indvars.iv99
  %7 = load double* %arrayidx14, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul15 = fmul double %1, %3
  %add = fadd double %mul, %mul15
  %add16 = fadd double %r00.087, %add
  %mul17 = fmul double %0, %3
  %mul18 = fmul double %1, %2
  %sub = fsub double %mul17, %mul18
  %add19 = fadd double %i00.090, %sub
  %mul20 = fmul double %0, %4
  %mul21 = fmul double %1, %5
  %add22 = fadd double %mul20, %mul21
  %add23 = fadd double %r01.086, %add22
  %mul24 = fmul double %0, %5
  %mul25 = fmul double %1, %4
  %sub26 = fsub double %mul24, %mul25
  %add27 = fadd double %i01.089, %sub26
  %mul28 = fmul double %0, %6
  %mul29 = fmul double %1, %7
  %add30 = fadd double %mul28, %mul29
  %add31 = fadd double %r02.085, %add30
  %mul32 = fmul double %0, %7
  %mul33 = fmul double %1, %6
  %sub34 = fsub double %mul32, %mul33
  %add35 = fadd double %i02.088, %sub34
  %inc = add nsw i32 %ii.091, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next100 = add i64 %indvars.iv99, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4
  store double %r02.0.lcssa, double* %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5
  store double %i02.0.lcssa, double* %arrayidx43, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC12(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  %cmp57 = icmp sgt i32 %n, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i01.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %r01.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv68
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %4 = load double* %arrayidx8, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv68
  %5 = load double* %arrayidx10, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul11 = fmul double %1, %3
  %add = fadd double %mul, %mul11
  %add12 = fadd double %r00.059, %add
  %mul13 = fmul double %0, %3
  %mul14 = fmul double %1, %2
  %sub = fsub double %mul13, %mul14
  %add15 = fadd double %i00.061, %sub
  %mul16 = fmul double %0, %4
  %mul17 = fmul double %1, %5
  %add18 = fadd double %mul16, %mul17
  %add19 = fadd double %r01.058, %add18
  %mul20 = fmul double %0, %5
  %mul21 = fmul double %1, %4
  %sub22 = fsub double %mul20, %mul21
  %add23 = fadd double %i01.060, %sub22
  %inc = add nsw i32 %ii.062, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next69 = add i64 %indvars.iv68, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add12, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2
  store double %r01.0.lcssa, double* %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3
  store double %i01.0.lcssa, double* %arrayidx29, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC11(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  %cmp30 = icmp sgt i32 %n, 0
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.033 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.032 = phi double [ %add11, %for.body ], [ 0.000000e+00, %entry ]
  %r00.031 = phi double [ %add8, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv37
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv37
  %3 = load double* %arrayidx6, align 8, !tbaa !0
  %mul = fmul double %0, %2
  %mul7 = fmul double %1, %3
  %add = fadd double %mul, %mul7
  %add8 = fadd double %r00.031, %add
  %mul9 = fmul double %0, %3
  %mul10 = fmul double %1, %2
  %sub = fsub double %mul9, %mul10
  %add11 = fadd double %i00.032, %sub
  %inc = add nsw i32 %ii.033, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %indvars.iv.next38 = add i64 %indvars.iv37, 2
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add11, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds double* %sums, i64 1
  store double %i00.0.lcssa, double* %arrayidx15, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZVzero(i32 %size, double* %y) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp215 = icmp sgt i32 %size, 0
  br i1 %cmp215, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str18, i64 0, i64 0), i32 %size, double* %y) #5
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.016 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %1 = or i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds double* %y, i64 %1
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double 0.000000e+00, double* %arrayidx4, align 8, !tbaa !0
  %inc = add nsw i32 %ii.016, 1
  %indvars.iv.next = add i64 %indvars.iv, 2
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
