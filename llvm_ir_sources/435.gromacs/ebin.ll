; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }

@.str = private unnamed_addr constant [3 x i8] c"eb\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"eb->e\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"eb->enm\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"%s-%d: Energies out of range: index=%d nener=%d maxener=%d\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Invalid index in pr_ebin: %d\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str8 = private unnamed_addr constant [33 x i8] c"Invalid print mode %d in pr_ebin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"   %12.5e\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_ebin* @mk_ebin() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 24) #7
  %2 = bitcast i8* %1 to %struct.t_ebin*
  ret %struct.t_ebin* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_ebin_space(%struct.t_ebin* nocapture %eb, i32 %nener, i8** nocapture readonly %enm) #3 {
  %1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = add nsw i32 %2, %nener
  store i32 %3, i32* %1, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %5 = bitcast %struct.t_energy** %4 to i8**
  %6 = load i8** %5, align 8, !tbaa !16
  %7 = shl i32 %3, 5
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 75, i8* %6, i32 %7) #7
  store i8* %8, i8** %5, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1
  %10 = bitcast i8*** %9 to i8**
  %11 = load i8** %10, align 8, !tbaa !17
  %12 = load i32* %1, align 4, !tbaa !14
  %13 = shl i32 %12, 3
  %14 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 76, i8* %11, i32 %13) #7
  store i8* %14, i8** %10, align 8, !tbaa !17
  %15 = load i32* %1, align 4, !tbaa !14
  %16 = icmp slt i32 %2, %15
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %17 = sext i32 %2 to i64
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %18
  %indvars.iv = phi i64 [ %17, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %19 = load %struct.t_energy** %4, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.t_energy* %19, i64 %indvars.iv, i32 0
  store float 0.000000e+00, float* %20, align 4, !tbaa !18
  %21 = getelementptr inbounds %struct.t_energy* %19, i64 %indvars.iv, i32 1
  %22 = sub nsw i64 %indvars.iv, %17
  %23 = getelementptr inbounds i8** %enm, i64 %22
  %24 = bitcast double* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 20, i32 8, i1 false)
  %25 = load i8** %23, align 8, !tbaa !22
  %26 = tail call i8* @strdup(i8* %25) #7
  %27 = load i8*** %9, align 8, !tbaa !17
  %28 = getelementptr inbounds i8** %27, i64 %indvars.iv
  store i8* %26, i8** %28, align 8, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %29 = load i32* %1, align 4, !tbaa !14
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %indvars.iv.next, %30
  br i1 %31, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %18, %0
  ret i32 %2
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @add_ebin(%struct.t_ebin* nocapture readonly %eb, i32 %index, i32 %nener, float* nocapture readonly %ener, i32 %step) #3 {
  %1 = add nsw i32 %nener, %index
  %2 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !14
  %4 = icmp sgt i32 %1, %3
  %5 = icmp slt i32 %index, 0
  %or.cond = or i1 %5, %4
  br i1 %or.cond, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 95, i32 %index, i32 %nener, i32 %3) #7
  br label %7

; <label>:7                                       ; preds = %0, %6
  %8 = icmp sgt i32 %step, 0
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %7
  %10 = sitofp i32 %step to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = fadd double %10, 1.000000e+00
  %13 = fdiv double %11, %12
  br label %14

; <label>:14                                      ; preds = %7, %9
  %invmm.0 = phi double [ %13, %9 ], [ 0.000000e+00, %7 ]
  %15 = sext i32 %index to i64
  %16 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %17 = load %struct.t_energy** %16, align 8, !tbaa !16
  %18 = icmp sgt i32 %nener, 0
  br i1 %18, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %14
  %19 = sitofp i32 %step to double
  %20 = add i32 %nener, -1
  br label %21

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %22 = getelementptr inbounds float* %ener, i64 %indvars.iv
  %23 = load float* %22, align 4, !tbaa !23
  %24 = fpext float %23 to double
  %.sum = add nsw i64 %indvars.iv, %15
  %25 = getelementptr inbounds %struct.t_energy* %17, i64 %.sum, i32 0
  store float %23, float* %25, align 4, !tbaa !18
  %26 = fmul double %19, %24
  %27 = getelementptr inbounds %struct.t_energy* %17, i64 %.sum, i32 1
  %28 = bitcast double* %27 to <2 x double>*
  %29 = load <2 x double>* %28, align 8, !tbaa !24
  %30 = extractelement <2 x double> %29, i32 1
  %31 = fsub double %30, %26
  %32 = fptrunc double %31 to float
  %33 = fmul float %32, %32
  %34 = fpext float %33 to double
  %35 = fmul double %invmm.0, %34
  %36 = insertelement <2 x double> undef, double %35, i32 0
  %37 = insertelement <2 x double> %36, double %24, i32 1
  %38 = fadd <2 x double> %37, %29
  %39 = bitcast double* %27 to <2 x double>*
  store <2 x double> %38, <2 x double>* %39, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %20
  br i1 %exitcond, label %._crit_edge, label %21

._crit_edge:                                      ; preds = %21, %14
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_ebin(%struct.__sFILE* nocapture %fp, %struct.t_ebin* nocapture readonly %eb, i32 %index, i32 %nener, i32 %nperline, i32 %prmode, i32 %tsteps, i32 %bPrHead) #3 {
  %1 = icmp slt i32 %index, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %index) #7
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = icmp eq i32 %nener, -1
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !14
  br label %10

; <label>:8                                       ; preds = %3
  %9 = add nsw i32 %nener, %index
  br label %10

; <label>:10                                      ; preds = %8, %5
  %.0 = phi i32 [ %7, %5 ], [ %9, %8 ]
  %11 = icmp sgt i32 %.0, %index
  br i1 %11, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %10
  %12 = icmp eq i32 %bPrHead, 0
  %13 = icmp sgt i32 %nperline, 0
  %14 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %15 = sitofp i32 %tsteps to double
  %16 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1
  %17 = sub i32 0, %nperline
  %18 = sext i32 %.0 to i64
  %19 = add i32 %nperline, -1
  %20 = zext i32 %19 to i64
  %21 = xor i64 %20, -1
  br label %22

; <label>:22                                      ; preds = %.lr.ph17, %.critedge
  %ee.015 = phi float [ 0.000000e+00, %.lr.ph17 ], [ %ee.1.lcssa, %.critedge ]
  %i.014 = phi i32 [ %index, %.lr.ph17 ], [ %i.3.lcssa, %.critedge ]
  br i1 %12, label %.preheader, label %.preheader4

.preheader4:                                      ; preds = %22
  %23 = icmp slt i32 %i.014, %.0
  %.5 = and i1 %23, %13
  br i1 %.5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader4
  %24 = sext i32 %i.014 to i64
  %25 = sub i32 %i.014, %.0
  %26 = icmp ult i32 %25, %17
  %umax = select i1 %26, i32 %17, i32 %25
  %27 = xor i32 %umax, -1
  br label %28

; <label>:28                                      ; preds = %28, %.lr.ph
  %indvars.iv = phi i64 [ %24, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %j.07 = phi i32 [ 0, %.lr.ph ], [ %33, %28 ]
  %29 = load i8*** %16, align 8, !tbaa !17
  %30 = getelementptr inbounds i8** %29, i64 %indvars.iv
  %31 = load i8** %30, align 8, !tbaa !22
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %31) #7
  %33 = add nuw nsw i32 %j.07, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %j.07, %27
  br i1 %exitcond, label %._crit_edge, label %28

._crit_edge:                                      ; preds = %28, %.preheader4
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %.preheader

.preheader:                                       ; preds = %22, %._crit_edge
  %34 = icmp slt i32 %i.014, %.0
  %or.cond8 = and i1 %34, %13
  br i1 %or.cond8, label %.lr.ph12, label %.critedge

.lr.ph12:                                         ; preds = %.preheader
  %35 = sext i32 %i.014 to i64
  %36 = sub nsw i64 %35, %18
  %37 = icmp ugt i64 %36, %21
  %umax21 = select i1 %37, i64 %36, i64 %21
  %38 = sub i32 %i.014, %.0
  %39 = icmp ult i32 %38, %17
  %umax22 = select i1 %39, i32 %17, i32 %38
  %40 = xor i32 %umax22, -1
  br label %41

; <label>:41                                      ; preds = %70, %.lr.ph12
  %indvars.iv19 = phi i64 [ %35, %.lr.ph12 ], [ %indvars.iv.next20, %70 ]
  %ee.111 = phi float [ %ee.015, %.lr.ph12 ], [ %ee.2, %70 ]
  %j.110 = phi i32 [ 0, %.lr.ph12 ], [ %73, %70 ]
  switch i32 %prmode, label %69 [
    i32 0, label %42
    i32 2, label %46
    i32 1, label %63
  ]

; <label>:42                                      ; preds = %41
  %43 = load %struct.t_energy** %14, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.t_energy* %43, i64 %indvars.iv19, i32 0
  %45 = load float* %44, align 4, !tbaa !18
  br label %70

; <label>:46                                      ; preds = %41
  %47 = load %struct.t_energy** %14, align 8, !tbaa !16
  %48 = getelementptr inbounds %struct.t_energy* %47, i64 %indvars.iv19, i32 2
  %49 = load double* %48, align 8, !tbaa !25
  %50 = fdiv double %49, %15
  %51 = getelementptr inbounds %struct.t_energy* %47, i64 %indvars.iv19, i32 1
  %52 = load double* %51, align 8, !tbaa !26
  %53 = fdiv double %52, %15
  %54 = tail call double @sqrt(double %53) #8
  %55 = tail call double @fabs(double %50) #8
  %56 = fcmp ogt double %55, 1.200000e-38
  br i1 %56, label %57, label %rms_ener.exit

; <label>:57                                      ; preds = %46
  %58 = fdiv double %54, %50
  %59 = tail call double @fabs(double %58) #8
  %60 = fcmp olt double %59, 1.000000e-06
  br i1 %60, label %61, label %rms_ener.exit

; <label>:61                                      ; preds = %57
  br label %rms_ener.exit

rms_ener.exit:                                    ; preds = %46, %57, %61
  %rms.0.i = phi double [ 0.000000e+00, %61 ], [ %54, %57 ], [ %54, %46 ]
  %62 = fptrunc double %rms.0.i to float
  br label %70

; <label>:63                                      ; preds = %41
  %64 = load %struct.t_energy** %14, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.t_energy* %64, i64 %indvars.iv19, i32 2
  %66 = load double* %65, align 8, !tbaa !25
  %67 = fdiv double %66, %15
  %68 = fptrunc double %67 to float
  br label %70

; <label>:69                                      ; preds = %41
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %prmode) #7
  br label %70

; <label>:70                                      ; preds = %rms_ener.exit, %69, %63, %42
  %ee.2 = phi float [ %45, %42 ], [ %62, %rms_ener.exit ], [ %68, %63 ], [ %ee.111, %69 ]
  %71 = fpext float %ee.2 to double
  %72 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), double %71) #7
  %73 = add nuw nsw i32 %j.110, 1
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1
  %exitcond23 = icmp eq i32 %j.110, %40
  br i1 %exitcond23, label %..critedge_crit_edge, label %41

..critedge_crit_edge:                             ; preds = %70
  %74 = sub nsw i64 %35, %umax21
  %75 = trunc i64 %74 to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %ee.1.lcssa = phi float [ %ee.2, %..critedge_crit_edge ], [ %ee.015, %.preheader ]
  %i.3.lcssa = phi i32 [ %75, %..critedge_crit_edge ], [ %i.014, %.preheader ]
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  %76 = icmp slt i32 %i.3.lcssa, %.0
  br i1 %76, label %22, label %._crit_edge18

._crit_edge18:                                    ; preds = %.critedge, %10
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!16 = !{!15, !4, i64 16}
!17 = !{!15, !4, i64 8}
!18 = !{!19, !20, i64 0}
!19 = !{!"", !20, i64 0, !21, i64 8, !21, i64 16, !20, i64 24}
!20 = !{!"float", !5, i64 0}
!21 = !{!"double", !5, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!21, !21, i64 0}
!25 = !{!19, !21, i64 16}
!26 = !{!19, !21, i64 8}
