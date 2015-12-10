; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shift_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@A = internal unnamed_addr global float 0.000000e+00, align 4
@B = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [34 x i8] c"r1 (%f) >= rc (%f) in %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shift_util.c\00", align 1
@A_3 = internal unnamed_addr global float 0.000000e+00, align 4
@B_4 = internal unnamed_addr global float 0.000000e+00, align 4
@C = internal unnamed_addr global float 0.000000e+00, align 4
@N0 = internal unnamed_addr global float 0.000000e+00, align 4
@Vol = internal unnamed_addr global float 0.000000e+00, align 4
@FourPi_V = internal unnamed_addr global float 0.000000e+00, align 4
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [131 x i8] c"Constants for short-range and fourier stuff:\0Ar1 = %10.3f,  rc = %10.3f\0AA  = %10.3e,  B  = %10.3e,  C  = %10.3e, FourPi_V = %10.3e\0A\00", align 1
@c1 = internal unnamed_addr global float 0.000000e+00, align 4
@c2 = internal unnamed_addr global float 0.000000e+00, align 4
@c3 = internal unnamed_addr global float 0.000000e+00, align 4
@c4 = internal unnamed_addr global float 0.000000e+00, align 4
@c5 = internal unnamed_addr global float 0.000000e+00, align 4
@c6 = internal unnamed_addr global float 0.000000e+00, align 4
@.str3 = private unnamed_addr constant [95 x i8] c"c1 = %10.3e,  c2 = %10.3e,  c3 = %10.3e\0Ac4 = %10.3e,  c5 = %10.3e,  c6 = %10.3e,  N0 = %10.3e\0A\00", align 1
@One_4pi = internal unnamed_addr global float 0.000000e+00, align 4
@.str4 = private unnamed_addr constant [48 x i8] c"There were %d short range interactions, vsr=%g\0A\00", align 1
@shift_LRcorrection.bFirst = internal unnamed_addr global i1 false
@shift_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str5 = private unnamed_addr constant [50 x i8] c"Long Range corrections for shifted interactions:\0A\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"r1 = %g, rc=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"qq = %g, Vself=%g\0A\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"i: %d, k: %d, dr: %.3f fscal: %.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str11 = private unnamed_addr constant [36 x i8] c"%12s  %12s  %12s  %12s  %12s  %12s\0A\00", align 1
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str13 = private unnamed_addr constant [5 x i8] c"Vphi\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"Vself\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"Vexcl\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"Vtot\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"1Mol\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"%12s  %12.5e  %12.5e  %12.5e  %12.5e  %12.5e\0A\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"phi_aver = %10.3e\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str20 = private unnamed_addr constant [32 x i8] c"All values zero, see .out file\0A\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"%10d  %12.5e\0A\00", align 1
@.str25 = private unnamed_addr constant [57 x i8] c"%-6s%5d  %-4.4s%3.3s %c%4d    %8.3f%8.3f%8.3f%6.2f%6.2f\0A\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str28 = private unnamed_addr constant [57 x i8] c"\0A********************************\0AERROR ANALYSIS for %s\0A\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"%-10s%12s%12s\0A\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@.str31 = private unnamed_addr constant [8 x i8] c"Max Abs\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@.str33 = private unnamed_addr constant [23 x i8] c"%-10s  %10.3f  %10.3f\0A\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"Potential\00", align 1
@.str36 = private unnamed_addr constant [21 x i8] c"LR Force Correlation\00", align 1
@.str37 = private unnamed_addr constant [11 x i8] c"Four-Force\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"PPPM-Force\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"%10.3f  %10.3f\0A\00", align 1
@.str40 = private unnamed_addr constant [25 x i8] c"LR Potential Correlation\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"Four-Pot\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"PPPM-Pot\00", align 1
@.str43 = private unnamed_addr constant [28 x i8] c"Total Potential Correlation\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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
define void @set_shift_consts(%struct.__sFILE* %log, float %r1, float %rc, float* nocapture readonly %box, %struct.t_forcerec* nocapture readnone %fr) #1 {
  %1 = fcmp olt float %r1, %rc
  br i1 %1, label %2, label %17

; <label>:2                                       ; preds = %0
  %3 = fmul float %r1, 2.000000e+00
  %4 = fmul float %rc, 5.000000e+00
  %5 = fsub float %3, %4
  %6 = fmul float %rc, %rc
  %7 = fmul float %6, %rc
  %8 = fsub float %rc, %r1
  %9 = fmul float %8, %8
  %10 = fmul float %7, %9
  %11 = fdiv float %5, %10
  store float %11, float* @A, align 4, !tbaa !2
  %12 = fmul float %rc, 4.000000e+00
  %13 = fsub float %12, %3
  %14 = fmul float %8, %9
  %15 = fmul float %7, %14
  %16 = fdiv float %13, %15
  store float %16, float* @B, align 4, !tbaa !2
  br label %20

; <label>:17                                      ; preds = %0
  %18 = fpext float %r1 to double
  %19 = fpext float %rc to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), double %18, double %19, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i32 64) #8
  %.pre = load float* @A, align 4, !tbaa !2
  %.pre4 = load float* @B, align 4, !tbaa !2
  %.pre6 = fsub float %rc, %r1
  %.pre7 = fmul float %.pre6, %.pre6
  %.pre9 = fmul float %.pre6, %.pre7
  %.pre11 = fmul float %rc, %rc
  %.pre13 = fmul float %.pre11, %rc
  br label %20

; <label>:20                                      ; preds = %17, %2
  %.pre-phi14 = phi float [ %.pre13, %17 ], [ %7, %2 ]
  %.pre-phi10 = phi float [ %.pre9, %17 ], [ %14, %2 ]
  %.pre-phi = phi float [ %.pre6, %17 ], [ %8, %2 ]
  %21 = phi float [ %.pre4, %17 ], [ %16, %2 ]
  %22 = phi float [ %.pre, %17 ], [ %11, %2 ]
  %23 = fdiv float %22, 3.000000e+00
  store float %23, float* @A_3, align 4, !tbaa !2
  %24 = fmul float %21, 2.500000e-01
  store float %24, float* @B_4, align 4, !tbaa !2
  %25 = fdiv float 1.000000e+00, %rc
  %26 = fmul float %.pre-phi10, %23
  %27 = fsub float %25, %26
  %28 = fmul float %.pre-phi, %.pre-phi10
  %29 = fmul float %28, %24
  %30 = fsub float %27, %29
  store float %30, float* @C, align 4, !tbaa !2
  %31 = fpext float %.pre-phi14 to double
  %32 = fmul double %31, 0x401921FB54442D18
  %33 = fpext float %.pre-phi10 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  store float %35, float* @N0, align 4, !tbaa !2
  %36 = load float* %box, align 4, !tbaa !2
  %37 = getelementptr inbounds float* %box, i64 1
  %38 = load float* %37, align 4, !tbaa !2
  %39 = fmul float %36, %38
  %40 = getelementptr inbounds float* %box, i64 2
  %41 = load float* %40, align 4, !tbaa !2
  %42 = fmul float %39, %41
  store float %42, float* @Vol, align 4, !tbaa !2
  %43 = fpext float %42 to double
  %44 = fdiv double 0x402921FB54442D18, %43
  %45 = fptrunc double %44 to float
  store float %45, float* @FourPi_V, align 4, !tbaa !2
  %46 = load %struct.__sFILE** @debug, align 8, !tbaa !6
  %47 = icmp ne %struct.__sFILE* %46, null
  %48 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %48, %47
  br i1 %or.cond, label %49, label %57

; <label>:49                                      ; preds = %20
  %50 = fpext float %r1 to double
  %51 = fpext float %rc to double
  %52 = fpext float %22 to double
  %53 = fpext float %21 to double
  %54 = fpext float %30 to double
  %55 = fpext float %45 to double
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([131 x i8]* @.str2, i64 0, i64 0), double %50, double %51, double %52, double %53, double %54, double %55) #8
  %.pre5 = load %struct.__sFILE** @debug, align 8, !tbaa !6
  br label %57

; <label>:57                                      ; preds = %49, %20
  %58 = phi %struct.__sFILE* [ %.pre5, %49 ], [ %46, %20 ]
  %59 = fmul float %rc, -4.000000e+01
  %60 = fmul float %59, %rc
  %61 = fmul float %rc, 5.000000e+01
  %62 = fmul float %61, %r1
  %63 = fadd float %60, %62
  %64 = fmul float %r1, 1.600000e+01
  %65 = fmul float %64, %r1
  %66 = fsub float %63, %65
  store float %66, float* @c1, align 4, !tbaa !2
  %67 = fmul float %rc, 6.000000e+01
  %68 = fmul float %r1, 3.000000e+01
  %69 = fsub float %67, %68
  store float %69, float* @c2, align 4, !tbaa !2
  %70 = fmul float %rc, -1.000000e+01
  %71 = fmul float %70, %rc
  %72 = fmul float %71, %rc
  %73 = fmul float %rc, 2.000000e+01
  %74 = fmul float %73, %rc
  %75 = fmul float %74, %r1
  %76 = fadd float %72, %75
  %77 = fmul float %rc, 1.300000e+01
  %78 = fmul float %77, %r1
  %79 = fmul float %78, %r1
  %80 = fsub float %76, %79
  %81 = fmul float %r1, 3.000000e+00
  %82 = fmul float %81, %r1
  %83 = fmul float %82, %r1
  %84 = fadd float %83, %80
  store float %84, float* @c3, align 4, !tbaa !2
  %85 = fmul float %rc, -2.000000e+01
  %86 = fmul float %85, %rc
  %87 = fmul float %rc, 4.000000e+01
  %88 = fmul float %87, %r1
  %89 = fadd float %86, %88
  %90 = fmul float %r1, 1.400000e+01
  %91 = fmul float %90, %r1
  %92 = fsub float %89, %91
  store float %92, float* @c4, align 4, !tbaa !2
  %93 = fsub float -0.000000e+00, %69
  store float %93, float* @c5, align 4, !tbaa !2
  %94 = fmul float %rc, -5.000000e+00
  %95 = fmul float %94, %rc
  %96 = fmul float %95, %r1
  %97 = fmul float %rc, 7.000000e+00
  %98 = fmul float %97, %r1
  %99 = fmul float %98, %r1
  %100 = fadd float %96, %99
  %101 = fmul float %r1, 2.000000e+00
  %102 = fmul float %101, %r1
  %103 = fmul float %102, %r1
  %104 = fsub float %100, %103
  store float %104, float* @c6, align 4, !tbaa !2
  %105 = icmp ne %struct.__sFILE* %58, null
  %or.cond3 = and i1 %48, %105
  br i1 %or.cond3, label %106, label %116

; <label>:106                                     ; preds = %57
  %107 = fpext float %66 to double
  %108 = fpext float %69 to double
  %109 = fpext float %84 to double
  %110 = fpext float %92 to double
  %111 = fpext float %93 to double
  %112 = fpext float %104 to double
  %113 = load float* @N0, align 4, !tbaa !2
  %114 = fpext float %113 to double
  %115 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0), double %107, double %108, double %109, double %110, double %111, double %112, double %114) #8
  br label %116

; <label>:116                                     ; preds = %106, %57
  store float 0x3FB45F3060000000, float* @One_4pi, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @gk(float %k, float %rc, float %r1) #4 {
  %1 = load float* @N0, align 4, !tbaa !2
  %2 = fmul float %k, %k
  %3 = fmul float %2, %k
  %4 = fmul float %3, %k
  %5 = fmul float %4, %1
  %6 = load float* @FourPi_V, align 4, !tbaa !2
  %7 = fmul float %5, %k
  %8 = fdiv float %6, %7
  %9 = fpext float %8 to double
  %10 = load float* @c1, align 4, !tbaa !2
  %11 = fmul float %10, %k
  %12 = fpext float %11 to double
  %13 = fmul float %k, %rc
  %14 = fpext float %13 to double
  %15 = tail call double @cos(double %14) #9
  %16 = fmul double %15, %12
  %17 = load float* @c2, align 4, !tbaa !2
  %18 = load float* @c3, align 4, !tbaa !2
  %19 = fmul float %18, %k
  %20 = fmul float %19, %k
  %21 = fadd float %17, %20
  %22 = fpext float %21 to double
  %23 = tail call double @sin(double %14) #9
  %24 = fmul double %23, %22
  %25 = fadd double %16, %24
  %26 = load float* @c4, align 4, !tbaa !2
  %27 = fmul float %26, %k
  %28 = fpext float %27 to double
  %29 = fmul float %k, %r1
  %30 = fpext float %29 to double
  %31 = tail call double @cos(double %30) #9
  %32 = fmul double %31, %28
  %33 = fadd double %32, %25
  %34 = load float* @c5, align 4, !tbaa !2
  %35 = load float* @c6, align 4, !tbaa !2
  %36 = fmul float %35, %k
  %37 = fmul float %36, %k
  %38 = fadd float %34, %37
  %39 = fpext float %38 to double
  %40 = tail call double @sin(double %30) #9
  %41 = fmul double %40, %39
  %42 = fadd double %33, %41
  %43 = fmul double %9, %42
  %44 = fptrunc double %43 to float
  ret float %44
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #5

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @gknew(float %k, float %rc, float %r1) #4 {
  %1 = fmul float %k, %rc
  %2 = fmul float %1, %1
  %3 = fpext float %2 to double
  %4 = fadd double %3, -3.000000e+00
  %5 = fpext float %1 to double
  %6 = tail call double @sin(double %5) #9
  %7 = fmul double %4, %6
  %8 = fmul float %1, 3.000000e+00
  %9 = fpext float %8 to double
  %10 = tail call double @cos(double %5) #9
  %11 = fmul double %9, %10
  %12 = fadd double %7, %11
  %13 = fmul double %12, -1.500000e+01
  %14 = load float* @Vol, align 4, !tbaa !2
  %15 = fmul float %2, %14
  %16 = fmul float %2, %15
  %17 = fmul float %1, %16
  %18 = fpext float %17 to double
  %19 = fdiv double %13, %18
  %20 = fptrunc double %19 to float
  ret float %20
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_dx2dx(float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture readonly %box, float* nocapture %dx) #1 {
  br label %1

; <label>:1                                       ; preds = %20, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %20 ]
  %dx2.02 = phi float [ 0.000000e+00, %0 ], [ %23, %20 ]
  %2 = getelementptr inbounds float* %xj, i64 %indvars.iv
  %3 = load float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds float* %xi, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !2
  %6 = fsub float %3, %5
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float* %box, i64 %indvars.iv
  %9 = load float* %8, align 4, !tbaa !2
  %10 = fpext float %9 to double
  %11 = fmul double %10, -5.000000e-01
  %12 = fcmp olt double %7, %11
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %1
  %14 = fadd float %6, %9
  br label %20

; <label>:15                                      ; preds = %1
  %16 = fmul double %10, 5.000000e-01
  %17 = fcmp ult double %7, %16
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %15
  %19 = fsub float %6, %9
  br label %20

; <label>:20                                      ; preds = %15, %18, %13
  %ddx.0 = phi float [ %14, %13 ], [ %19, %18 ], [ %6, %15 ]
  %21 = getelementptr inbounds float* %dx, i64 %indvars.iv
  store float %ddx.0, float* %21, align 4, !tbaa !2
  %22 = fmul float %ddx.0, %ddx.0
  %23 = fadd float %dx2.02, %22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %24, label %1

; <label>:24                                      ; preds = %20
  ret float %23
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_dx2(float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture readonly %box) #1 {
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %2 = call float @calc_dx2dx(float* %xi, float* %xj, float* %box, float* %1) #10
  ret float %2
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @shiftfunction(float %r1, float %rc, float %R) #4 {
  %1 = fcmp ugt float %R, %r1
  br i1 %1, label %2, label %17

; <label>:2                                       ; preds = %0
  %3 = fcmp ult float %R, %rc
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %2
  %5 = fmul float %R, %R
  %6 = fdiv float -1.000000e+00, %5
  br label %17

; <label>:7                                       ; preds = %2
  %8 = fsub float %R, %r1
  %9 = load float* @A, align 4, !tbaa !2
  %10 = fmul float %8, %9
  %11 = fmul float %8, %10
  %12 = load float* @B, align 4, !tbaa !2
  %13 = fmul float %8, %12
  %14 = fmul float %8, %13
  %15 = fmul float %8, %14
  %16 = fadd float %11, %15
  br label %17

; <label>:17                                      ; preds = %0, %7, %4
  %.0 = phi float [ %6, %4 ], [ %16, %7 ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @new_f(float %r, float %rc) #6 {
  %1 = fdiv float %r, %rc
  %2 = fmul float %1, %1
  %3 = fmul float %1, %2
  %4 = fpext float %2 to double
  %5 = fmul double %4, 1.500000e+00
  %6 = fpext float %3 to double
  %7 = fmul double %5, %6
  %8 = fmul double %6, 2.500000e+00
  %9 = fsub double %7, %8
  %10 = fadd double %9, 1.000000e+00
  %11 = fptrunc double %10 to float
  ret float %11
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @new_phi(float %r, float %rc) #6 {
  %1 = fdiv float %r, %rc
  %2 = fmul float %1, %1
  %3 = fdiv float 1.000000e+00, %r
  %4 = fpext float %3 to double
  %5 = fpext float %rc to double
  %6 = fdiv double 1.250000e-01, %5
  %7 = fmul float %2, 3.000000e+00
  %8 = fmul float %2, %7
  %9 = fadd float %8, 1.500000e+01
  %10 = fmul float %2, 1.000000e+01
  %11 = fsub float %9, %10
  %12 = fpext float %11 to double
  %13 = fmul double %6, %12
  %14 = fsub double %4, %13
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @old_f(float %r, float %rc, float %r1) #4 {
  %1 = fcmp ugt float %r, %r1
  br i1 %1, label %2, label %18

; <label>:2                                       ; preds = %0
  %3 = fcmp ult float %r, %rc
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %2
  %5 = fsub float %r, %r1
  %6 = fmul float %r, %r
  %7 = load float* @A, align 4, !tbaa !2
  %8 = fmul float %6, %7
  %9 = fmul float %5, %8
  %10 = fmul float %5, %9
  %11 = fadd float %10, 1.000000e+00
  %12 = load float* @B, align 4, !tbaa !2
  %13 = fmul float %6, %12
  %14 = fmul float %5, %13
  %15 = fmul float %5, %14
  %16 = fmul float %5, %15
  %17 = fadd float %11, %16
  br label %18

; <label>:18                                      ; preds = %2, %0, %4
  %.0 = phi float [ %17, %4 ], [ 1.000000e+00, %0 ], [ 0.000000e+00, %2 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @old_phi(float %r, float %rc, float %r1) #4 {
  %1 = fcmp ugt float %r, %r1
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = fdiv float 1.000000e+00, %r
  %4 = load float* @C, align 4, !tbaa !2
  %5 = fsub float %3, %4
  br label %24

; <label>:6                                       ; preds = %0
  %7 = fcmp ult float %r, %rc
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %6
  %9 = fsub float %r, %r1
  %10 = fdiv float 1.000000e+00, %r
  %11 = load float* @A_3, align 4, !tbaa !2
  %12 = fmul float %9, %11
  %13 = fmul float %9, %12
  %14 = fmul float %9, %13
  %15 = fsub float %10, %14
  %16 = load float* @B_4, align 4, !tbaa !2
  %17 = fmul float %9, %16
  %18 = fmul float %9, %17
  %19 = fmul float %9, %18
  %20 = fmul float %9, %19
  %21 = fsub float %15, %20
  %22 = load float* @C, align 4, !tbaa !2
  %23 = fsub float %21, %22
  br label %24

; <label>:24                                      ; preds = %6, %8, %2
  %.0 = phi float [ %5, %2 ], [ %23, %8 ], [ 0.000000e+00, %6 ]
  ret float %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define float @phi_sr(%struct.__sFILE* %log, i32 %nj, [3 x float]* nocapture readonly %x, float* nocapture readonly %charge, float %rc, float %r1, float* nocapture readonly %box, float* nocapture %phi, %struct.t_block* nocapture readonly %excl, [3 x float]* nocapture %f_sr, i32 %bOld) #1 {
  %dx = alloca [3 x float], align 4
  %1 = fmul float %rc, %rc
  %2 = add i32 %nj, -1
  %3 = icmp sgt i32 %nj, 1
  br i1 %3, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %5 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %6 = icmp eq i32 %bOld, 0
  %7 = fpext float %rc to double
  %8 = fdiv double 1.250000e-01, %7
  %9 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %10 = sext i32 %nj to i64
  %11 = sext i32 %2 to i64
  br label %13

.loopexit:                                        ; preds = %123, %13
  %vsr.1.lcssa = phi float [ %vsr.013, %13 ], [ %vsr.2, %123 ]
  %ni.1.lcssa = phi i32 [ %ni.012, %13 ], [ %ni.2, %123 ]
  %12 = icmp slt i64 %indvars.iv.next29, %11
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br i1 %12, label %13, label %._crit_edge17

; <label>:13                                      ; preds = %.lr.ph16, %.loopexit
  %indvars.iv28 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next29, %.loopexit ]
  %indvars.iv23 = phi i64 [ 1, %.lr.ph16 ], [ %indvars.iv.next24, %.loopexit ]
  %vsr.013 = phi float [ 0.000000e+00, %.lr.ph16 ], [ %vsr.1.lcssa, %.loopexit ]
  %ni.012 = phi i32 [ 0, %.lr.ph16 ], [ %ni.1.lcssa, %.loopexit ]
  %14 = getelementptr inbounds float* %charge, i64 %indvars.iv28
  %15 = load float* %14, align 4, !tbaa !2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %16 = icmp slt i64 %indvars.iv.next29, %10
  br i1 %16, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %13
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv28, i64 0
  %18 = getelementptr inbounds float* %phi, i64 %indvars.iv28
  %19 = fmul float %15, 0x40615DEEE0000000
  br label %20

; <label>:20                                      ; preds = %123, %.lr.ph9
  %indvars.iv25 = phi i64 [ %indvars.iv23, %.lr.ph9 ], [ %indvars.iv.next26, %123 ]
  %vsr.17 = phi float [ %vsr.013, %.lr.ph9 ], [ %vsr.2, %123 ]
  %ni.15 = phi i32 [ %ni.012, %.lr.ph9 ], [ %ni.2, %123 ]
  %21 = load i32** %4, align 8, !tbaa !8
  %22 = getelementptr inbounds i32* %21, i64 %indvars.iv28
  %23 = load i32* %22, align 4, !tbaa !11
  %24 = getelementptr inbounds i32* %21, i64 %indvars.iv.next29
  %25 = load i32* %24, align 4, !tbaa !11
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %20
  %27 = load i32** %9, align 8, !tbaa !12
  %28 = sext i32 %23 to i64
  %29 = sext i32 %25 to i64
  br label %30

; <label>:30                                      ; preds = %.lr.ph, %35
  %indvars.iv = phi i64 [ %28, %.lr.ph ], [ %indvars.iv.next, %35 ]
  %31 = getelementptr inbounds i32* %27, i64 %indvars.iv
  %32 = load i32* %31, align 4, !tbaa !11
  %33 = trunc i64 %indvars.iv25 to i32
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %._crit_edge, label %35

; <label>:35                                      ; preds = %30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %36 = icmp slt i64 %indvars.iv.next, %29
  br i1 %36, label %30, label %._crit_edge2

._crit_edge:                                      ; preds = %30
  %37 = trunc i64 %indvars.iv to i32
  br label %39

._crit_edge2:                                     ; preds = %35
  %38 = trunc i64 %indvars.iv.next to i32
  br label %39

; <label>:39                                      ; preds = %._crit_edge2, %._crit_edge, %20
  %k.0.lcssa = phi i32 [ %37, %._crit_edge ], [ %38, %._crit_edge2 ], [ %23, %20 ]
  %40 = icmp eq i32 %k.0.lcssa, %25
  br i1 %40, label %41, label %123

; <label>:41                                      ; preds = %39
  %42 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv25, i64 0
  %43 = call float @calc_dx2dx(float* %17, float* %42, float* %box, float* %5) #10
  %44 = fcmp olt float %43, %1
  br i1 %44, label %45, label %123

; <label>:45                                      ; preds = %41
  %46 = getelementptr inbounds float* %charge, i64 %indvars.iv25
  %47 = load float* %46, align 4, !tbaa !2
  %48 = fpext float %43 to double
  %49 = tail call double @sqrt(double %48) #9
  %50 = fdiv double 1.000000e+00, %49
  %51 = fptrunc double %50 to float
  %52 = fmul float %51, %51
  %53 = fpext float %52 to double
  %54 = tail call double @sqrt(double %53) #9
  %55 = fdiv double 1.000000e+00, %54
  %56 = fptrunc double %55 to float
  br i1 %6, label %76, label %57

; <label>:57                                      ; preds = %45
  %58 = fcmp ugt float %56, %r1
  br i1 %58, label %59, label %old_f.exit

; <label>:59                                      ; preds = %57
  %60 = fcmp ult float %56, %rc
  br i1 %60, label %61, label %old_f.exit

; <label>:61                                      ; preds = %59
  %62 = fsub float %56, %r1
  %63 = fmul float %56, %56
  %64 = load float* @A, align 4, !tbaa !2
  %65 = fmul float %63, %64
  %66 = fmul float %62, %65
  %67 = fmul float %62, %66
  %68 = fadd float %67, 1.000000e+00
  %69 = load float* @B, align 4, !tbaa !2
  %70 = fmul float %63, %69
  %71 = fmul float %62, %70
  %72 = fmul float %62, %71
  %73 = fmul float %62, %72
  %74 = fadd float %68, %73
  br label %old_f.exit

old_f.exit:                                       ; preds = %57, %59, %61
  %.0.i = phi float [ %74, %61 ], [ 1.000000e+00, %57 ], [ 0.000000e+00, %59 ]
  %75 = tail call float @old_phi(float %56, float %rc, float %r1) #10
  br label %99

; <label>:76                                      ; preds = %45
  %77 = fdiv float %56, %rc
  %78 = fmul float %77, %77
  %79 = fmul float %77, %78
  %80 = fpext float %78 to double
  %81 = fmul double %80, 1.500000e+00
  %82 = fpext float %79 to double
  %83 = fmul double %81, %82
  %84 = fmul double %82, 2.500000e+00
  %85 = fsub double %83, %84
  %86 = fadd double %85, 1.000000e+00
  %87 = fptrunc double %86 to float
  %88 = fdiv float 1.000000e+00, %56
  %89 = fpext float %88 to double
  %90 = fmul float %78, 3.000000e+00
  %91 = fmul float %78, %90
  %92 = fadd float %91, 1.500000e+01
  %93 = fmul float %78, 1.000000e+01
  %94 = fsub float %92, %93
  %95 = fpext float %94 to double
  %96 = fmul double %8, %95
  %97 = fsub double %89, %96
  %98 = fptrunc double %97 to float
  br label %99

; <label>:99                                      ; preds = %76, %old_f.exit
  %pp.0 = phi float [ %75, %old_f.exit ], [ %98, %76 ]
  %.pn = phi float [ %.0.i, %old_f.exit ], [ %87, %76 ]
  %fscal.0 = fmul float %52, %.pn
  %100 = fmul float %47, 0x40615DEEE0000000
  %101 = fmul float %100, %pp.0
  %102 = load float* %18, align 4, !tbaa !2
  %103 = fadd float %101, %102
  store float %103, float* %18, align 4, !tbaa !2
  %104 = fmul float %19, %pp.0
  %105 = getelementptr inbounds float* %phi, i64 %indvars.iv25
  %106 = load float* %105, align 4, !tbaa !2
  %107 = fadd float %104, %106
  store float %107, float* %105, align 4, !tbaa !2
  %108 = fmul float %15, %100
  %109 = fmul float %108, %pp.0
  br label %110

; <label>:110                                     ; preds = %110, %99
  %indvars.iv21 = phi i64 [ 0, %99 ], [ %indvars.iv.next22, %110 ]
  %111 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv21
  %112 = load float* %111, align 4, !tbaa !2
  %113 = fmul float %fscal.0, %112
  %114 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv28, i64 %indvars.iv21
  %115 = load float* %114, align 4, !tbaa !2
  %116 = fadd float %115, %113
  store float %116, float* %114, align 4, !tbaa !2
  %117 = getelementptr inbounds [3 x float]* %f_sr, i64 %indvars.iv25, i64 %indvars.iv21
  %118 = load float* %117, align 4, !tbaa !2
  %119 = fsub float %118, %113
  store float %119, float* %117, align 4, !tbaa !2
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond = icmp eq i64 %indvars.iv.next22, 3
  br i1 %exitcond, label %120, label %110

; <label>:120                                     ; preds = %110
  %121 = fadd float %vsr.17, %109
  %122 = add nsw i32 %ni.15, 1
  br label %123

; <label>:123                                     ; preds = %39, %120, %41
  %ni.2 = phi i32 [ %122, %120 ], [ %ni.15, %41 ], [ %ni.15, %39 ]
  %vsr.2 = phi float [ %121, %120 ], [ %vsr.17, %41 ], [ %vsr.17, %39 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %lftr.wideiv = trunc i64 %indvars.iv25 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond27, label %.loopexit, label %20

._crit_edge17:                                    ; preds = %.loopexit, %0
  %vsr.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %vsr.1.lcssa, %.loopexit ]
  %ni.0.lcssa = phi i32 [ 0, %0 ], [ %ni.1.lcssa, %.loopexit ]
  %124 = icmp eq %struct.__sFILE* %log, null
  br i1 %124, label %128, label %125

; <label>:125                                     ; preds = %._crit_edge17
  %126 = fpext float %vsr.0.lcssa to double
  %127 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i32 %ni.0.lcssa, double %126) #8
  br label %128

; <label>:128                                     ; preds = %._crit_edge17, %125
  ret float %vsr.0.lcssa
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @spreadfunction(float %r1, float %rc, float %R) #4 {
  %1 = fcmp ugt float %R, %r1
  %2 = fcmp ult float %R, %rc
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %3, label %22

; <label>:3                                       ; preds = %0
  %4 = fsub float %R, %r1
  %5 = load float* @One_4pi, align 4, !tbaa !2
  %6 = fdiv float %4, %R
  %7 = fmul float %5, %6
  %8 = load float* @A, align 4, !tbaa !2
  %9 = fmul float %8, 2.000000e+00
  %10 = fmul float %R, 2.000000e+00
  %11 = fsub float %10, %r1
  %12 = fmul float %11, %9
  %13 = load float* @B, align 4, !tbaa !2
  %14 = fmul float %4, %13
  %15 = fmul float %R, 5.000000e+00
  %16 = fmul float %r1, 2.000000e+00
  %17 = fsub float %15, %16
  %18 = fmul float %17, %14
  %19 = fadd float %12, %18
  %20 = fmul float %7, %19
  %21 = fsub float -0.000000e+00, %20
  br label %22

; <label>:22                                      ; preds = %0, %3
  %.0 = phi float [ %21, %3 ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @potential(float %r1, float %rc, float %R) #4 {
  %1 = fcmp olt float %R, %r1
  br i1 %1, label %2, label %9

; <label>:2                                       ; preds = %0
  %3 = fpext float %R to double
  %4 = fdiv double 1.000000e+00, %3
  %5 = load float* @C, align 4, !tbaa !2
  %6 = fpext float %5 to double
  %7 = fsub double %4, %6
  %8 = fptrunc double %7 to float
  br label %30

; <label>:9                                       ; preds = %0
  %10 = fcmp ugt float %R, %rc
  br i1 %10, label %30, label %11

; <label>:11                                      ; preds = %9
  %12 = fpext float %R to double
  %13 = fdiv double 1.000000e+00, %12
  %14 = load float* @A_3, align 4, !tbaa !2
  %15 = fsub float %R, %r1
  %16 = fmul float %15, %15
  %17 = fmul float %15, %16
  %18 = fmul float %17, %14
  %19 = fpext float %18 to double
  %20 = fsub double %13, %19
  %21 = load float* @B_4, align 4, !tbaa !2
  %22 = fmul float %15, %17
  %23 = fmul float %22, %21
  %24 = fpext float %23 to double
  %25 = fsub double %20, %24
  %26 = load float* @C, align 4, !tbaa !2
  %27 = fpext float %26 to double
  %28 = fsub double %25, %27
  %29 = fptrunc double %28 to float
  br label %30

; <label>:30                                      ; preds = %9, %11, %2
  %.0 = phi float [ %8, %2 ], [ %29, %11 ], [ 0.000000e+00, %9 ]
  ret float %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define float @shift_LRcorrection(%struct.__sFILE* %fp, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_commrec* nocapture readnone %cr, %struct.t_forcerec* nocapture readonly %fr, float* nocapture readonly %charge, %struct.t_block* nocapture readonly %excl, [3 x float]* nocapture readonly %x, i32 %bOld, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %lr_vir) #1 {
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %2 = load float* %1, align 4, !tbaa !13
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %4 = load float* %3, align 4, !tbaa !15
  %5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !16
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %7
  %9 = load i32* %8, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %7
  %11 = load i32* %10, align 4, !tbaa !11
  %.b8 = load i1* @shift_LRcorrection.bFirst, align 1
  %.pre44 = add nsw i32 %11, %9
  br i1 %.b8, label %._crit_edge43, label %.preheader11

.preheader11:                                     ; preds = %0
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %.preheader11
  %13 = sext i32 %9 to i64
  %14 = sext i32 %.pre44 to i64
  br label %15

; <label>:15                                      ; preds = %.lr.ph24, %15
  %indvars.iv38 = phi i64 [ %13, %.lr.ph24 ], [ %indvars.iv.next39, %15 ]
  %qq.022 = phi double [ 0.000000e+00, %.lr.ph24 ], [ %20, %15 ]
  %16 = getelementptr inbounds float* %charge, i64 %indvars.iv38
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fmul float %17, %17
  %19 = fpext float %18 to double
  %20 = fadd double %qq.022, %19
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1
  %21 = icmp slt i64 %indvars.iv.next39, %14
  br i1 %21, label %15, label %._crit_edge25

._crit_edge25:                                    ; preds = %15, %.preheader11
  %qq.0.lcssa = phi double [ 0.000000e+00, %.preheader11 ], [ %20, %15 ]
  %22 = load float* @C, align 4, !tbaa !2
  %23 = fpext float %22 to double
  %24 = fmul double %23, 5.000000e-01
  %25 = fmul double %24, 3.320636e+02
  %26 = fmul double %25, 4.184000e+00
  %27 = fmul double %26, 1.000000e-01
  %28 = fmul double %qq.0.lcssa, %27
  %29 = fptrunc double %28 to float
  store float %29, float* @shift_LRcorrection.Vself, align 4, !tbaa !2
  %30 = load %struct.__sFILE** @debug, align 8, !tbaa !6
  %31 = icmp ne %struct.__sFILE* %30, null
  %32 = icmp ne %struct.__sFILE* %fp, null
  %or.cond = and i1 %32, %31
  br i1 %or.cond, label %33, label %._crit_edge43

; <label>:33                                      ; preds = %._crit_edge25
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), i64 49, i64 1, %struct.__sFILE* %fp)
  %35 = fpext float %2 to double
  %36 = fpext float %4 to double
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), double %35, double %36) #8
  %38 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %9, i32 %11) #8
  %39 = load float* @shift_LRcorrection.Vself, align 4, !tbaa !2
  %40 = fpext float %39 to double
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %qq.0.lcssa, double %40) #8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %0, %._crit_edge25, %33
  %42 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %43 = load i32** %42, align 8, !tbaa !12
  %44 = icmp sgt i32 %11, 0
  br i1 %44, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %._crit_edge43
  %45 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %46 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %47 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %48 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %49 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0
  %50 = getelementptr inbounds [3 x float]* %df, i64 0, i64 1
  %51 = getelementptr inbounds [3 x float]* %df, i64 0, i64 2
  %52 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %53 = sext i32 %9 to i64
  %54 = sext i32 %.pre44 to i64
  br label %56

.loopexit10:                                      ; preds = %.loopexit, %56
  %Vexcl.1.lcssa = phi float [ %Vexcl.018, %56 ], [ %Vexcl.2, %.loopexit ]
  %55 = icmp slt i64 %indvars.iv.next37, %54
  br i1 %55, label %56, label %._crit_edge

; <label>:56                                      ; preds = %.lr.ph20, %.loopexit10
  %indvars.iv36 = phi i64 [ %53, %.lr.ph20 ], [ %indvars.iv.next37, %.loopexit10 ]
  %Vexcl.018 = phi float [ 0.000000e+00, %.lr.ph20 ], [ %Vexcl.1.lcssa, %.loopexit10 ]
  %57 = load i32** %45, align 8, !tbaa !8
  %58 = getelementptr inbounds i32* %57, i64 %indvars.iv36
  %59 = load i32* %58, align 4, !tbaa !11
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %60 = getelementptr inbounds i32* %57, i64 %indvars.iv.next37
  %61 = load i32* %60, align 4, !tbaa !11
  %62 = getelementptr inbounds float* %charge, i64 %indvars.iv36
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fpext float %63 to double
  %65 = fmul double %64, 3.320636e+02
  %66 = fmul double %65, 4.184000e+00
  %67 = fmul double %66, 1.000000e-01
  %68 = fptrunc double %67 to float
  %69 = icmp slt i32 %59, %61
  br i1 %69, label %.lr.ph, label %.loopexit10

.lr.ph:                                           ; preds = %56
  %70 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv36, i64 0
  %71 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv36, i64 1
  %72 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv36, i64 2
  %73 = sext i32 %59 to i64
  %74 = add i32 %61, -1
  br label %75

; <label>:75                                      ; preds = %.loopexit, %.lr.ph
  %indvars.iv33 = phi i64 [ %73, %.lr.ph ], [ %indvars.iv.next34, %.loopexit ]
  %Vexcl.116 = phi float [ %Vexcl.018, %.lr.ph ], [ %Vexcl.2, %.loopexit ]
  %76 = getelementptr inbounds i32* %43, i64 %indvars.iv33
  %77 = load i32* %76, align 4, !tbaa !11
  %78 = sext i32 %77 to i64
  %79 = icmp sgt i64 %78, %indvars.iv36
  br i1 %79, label %80, label %.loopexit

; <label>:80                                      ; preds = %75
  %81 = getelementptr inbounds float* %charge, i64 %78
  %82 = load float* %81, align 4, !tbaa !2
  %83 = fmul float %68, %82
  %84 = fpext float %83 to double
  %fabsf = tail call float @fabsf(float %83) #5
  %85 = fpext float %fabsf to double
  %86 = fcmp ogt double %85, 1.200000e-38
  br i1 %86, label %87, label %.loopexit

; <label>:87                                      ; preds = %80
  %88 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 0
  %89 = load float* %70, align 4, !tbaa !2
  %90 = load float* %88, align 4, !tbaa !2
  %91 = fsub float %89, %90
  %92 = load float* %71, align 4, !tbaa !2
  %93 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 1
  %94 = load float* %93, align 4, !tbaa !2
  %95 = fsub float %92, %94
  %96 = load float* %72, align 4, !tbaa !2
  %97 = getelementptr inbounds [3 x float]* %x, i64 %78, i64 2
  %98 = load float* %97, align 4, !tbaa !2
  %99 = fsub float %96, %98
  store float %91, float* %46, align 4, !tbaa !2
  store float %95, float* %47, align 4, !tbaa !2
  store float %99, float* %48, align 4, !tbaa !2
  br label %100

; <label>:100                                     ; preds = %._crit_edge40, %87
  %101 = phi float [ %99, %87 ], [ %137, %._crit_edge40 ]
  %102 = phi float [ %95, %87 ], [ %138, %._crit_edge40 ]
  %103 = phi float [ %91, %87 ], [ %139, %._crit_edge40 ]
  %104 = phi float [ %99, %87 ], [ %.pre, %._crit_edge40 ]
  %indvars.iv = phi i64 [ 2, %87 ], [ %indvars.iv.next, %._crit_edge40 ]
  %dr2.012 = phi float [ 0.000000e+00, %87 ], [ %142, %._crit_edge40 ]
  %105 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %106 = fpext float %104 to double
  %107 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %108 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %109 = load float* %108, align 4, !tbaa !2
  %110 = fpext float %109 to double
  %111 = fmul double %110, 5.000000e-01
  %112 = fcmp ogt double %106, %111
  br i1 %112, label %113, label %123

; <label>:113                                     ; preds = %100
  %114 = getelementptr inbounds [3 x float]* %107, i64 0, i64 0
  %115 = load float* %114, align 4, !tbaa !2
  %116 = fsub float %103, %115
  %117 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %118 = load float* %117, align 4, !tbaa !2
  %119 = fsub float %102, %118
  %120 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %121 = load float* %120, align 4, !tbaa !2
  %122 = fsub float %101, %121
  store float %116, float* %46, align 4, !tbaa !2
  store float %119, float* %47, align 4, !tbaa !2
  store float %122, float* %48, align 4, !tbaa !2
  br label %136

; <label>:123                                     ; preds = %100
  %124 = fmul double %110, -5.000000e-01
  %125 = fcmp olt double %106, %124
  br i1 %125, label %126, label %136

; <label>:126                                     ; preds = %123
  %127 = getelementptr inbounds [3 x float]* %107, i64 0, i64 0
  %128 = load float* %127, align 4, !tbaa !2
  %129 = fadd float %103, %128
  %130 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %131 = load float* %130, align 4, !tbaa !2
  %132 = fadd float %102, %131
  %133 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %134 = load float* %133, align 4, !tbaa !2
  %135 = fadd float %101, %134
  store float %129, float* %46, align 4, !tbaa !2
  store float %132, float* %47, align 4, !tbaa !2
  store float %135, float* %48, align 4, !tbaa !2
  br label %136

; <label>:136                                     ; preds = %123, %126, %113
  %137 = phi float [ %101, %123 ], [ %135, %126 ], [ %122, %113 ]
  %138 = phi float [ %102, %123 ], [ %132, %126 ], [ %119, %113 ]
  %139 = phi float [ %103, %123 ], [ %129, %126 ], [ %116, %113 ]
  %140 = load float* %105, align 4, !tbaa !2
  %141 = fmul float %140, %140
  %142 = fadd float %dr2.012, %141
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %143 = icmp sgt i64 %indvars.iv, 0
  br i1 %143, label %._crit_edge40, label %144

._crit_edge40:                                    ; preds = %136
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  br label %100

; <label>:144                                     ; preds = %136
  %145 = fpext float %142 to double
  %146 = tail call double @sqrt(double %145) #9
  %147 = fdiv double 1.000000e+00, %146
  %148 = fptrunc double %147 to float
  %149 = fdiv float 1.000000e+00, %148
  %150 = fmul float %148, %148
  %151 = fmul float %148, %150
  %152 = tail call float @potential(float %2, float %4, float %149) #10
  %153 = fsub float %148, %152
  %154 = fpext float %153 to double
  %155 = fmul double %84, %154
  %156 = fpext float %Vexcl.116 to double
  %157 = fadd double %156, %155
  %158 = fptrunc double %157 to float
  %159 = fcmp ugt float %149, %2
  br i1 %159, label %160, label %shiftfunction.exit

; <label>:160                                     ; preds = %144
  %161 = fcmp ult float %149, %4
  br i1 %161, label %165, label %162

; <label>:162                                     ; preds = %160
  %163 = fmul float %149, %149
  %164 = fdiv float -1.000000e+00, %163
  br label %shiftfunction.exit

; <label>:165                                     ; preds = %160
  %166 = fsub float %149, %2
  %167 = load float* @A, align 4, !tbaa !2
  %168 = fmul float %166, %167
  %169 = fmul float %166, %168
  %170 = load float* @B, align 4, !tbaa !2
  %171 = fmul float %166, %170
  %172 = fmul float %166, %171
  %173 = fmul float %166, %172
  %174 = fadd float %169, %173
  br label %shiftfunction.exit

shiftfunction.exit:                               ; preds = %144, %162, %165
  %.0.i = phi float [ %164, %162 ], [ %174, %165 ], [ 0.000000e+00, %144 ]
  %175 = fsub float -0.000000e+00, %.0.i
  %176 = fpext float %175 to double
  %177 = fmul double %84, %176
  %178 = fpext float %151 to double
  %179 = fmul double %178, %177
  %180 = fptrunc double %179 to float
  %fabsf9 = tail call float @fabsf(float %180) #5
  %181 = fpext float %fabsf9 to double
  %182 = fcmp ogt double %181, 1.200000e-38
  %183 = load %struct.__sFILE** @debug, align 8
  %184 = icmp ne %struct.__sFILE* %183, null
  %or.cond3 = and i1 %182, %184
  br i1 %or.cond3, label %185, label %190

; <label>:185                                     ; preds = %shiftfunction.exit
  %186 = fpext float %180 to double
  %187 = fpext float %149 to double
  %188 = trunc i64 %indvars.iv36 to i32
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %183, i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i32 %188, i32 %77, double %187, double %186) #8
  br label %190

; <label>:190                                     ; preds = %185, %shiftfunction.exit
  %191 = fmul float %180, %139
  store float %191, float* %49, align 4, !tbaa !2
  %192 = fmul float %180, %138
  store float %192, float* %50, align 4, !tbaa !2
  %193 = fmul float %180, %137
  store float %193, float* %51, align 4, !tbaa !2
  %194 = load [3 x float]** %52, align 8, !tbaa !18
  %195 = getelementptr inbounds [3 x float]* %194, i64 %78, i64 0
  %196 = load float* %195, align 4, !tbaa !2
  %197 = fadd float %196, %191
  %198 = getelementptr inbounds [3 x float]* %194, i64 %78, i64 1
  %199 = load float* %198, align 4, !tbaa !2
  %200 = fadd float %199, %192
  %201 = getelementptr inbounds [3 x float]* %194, i64 %78, i64 2
  %202 = load float* %201, align 4, !tbaa !2
  %203 = fadd float %193, %202
  store float %197, float* %195, align 4, !tbaa !2
  store float %200, float* %198, align 4, !tbaa !2
  store float %203, float* %201, align 4, !tbaa !2
  %204 = getelementptr inbounds [3 x float]* %194, i64 %indvars.iv36, i64 0
  %205 = load float* %204, align 4, !tbaa !2
  %206 = fsub float %205, %191
  %207 = getelementptr inbounds [3 x float]* %194, i64 %indvars.iv36, i64 1
  %208 = load float* %207, align 4, !tbaa !2
  %209 = fsub float %208, %192
  %210 = getelementptr inbounds [3 x float]* %194, i64 %indvars.iv36, i64 2
  %211 = load float* %210, align 4, !tbaa !2
  %212 = fsub float %211, %193
  store float %206, float* %204, align 4, !tbaa !2
  store float %209, float* %207, align 4, !tbaa !2
  store float %212, float* %210, align 4, !tbaa !2
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %190
  %213 = phi float [ %139, %190 ], [ %.pre42, %..preheader_crit_edge ]
  %indvars.iv30 = phi i64 [ 0, %190 ], [ %indvars.iv.next31, %..preheader_crit_edge ]
  %214 = fpext float %213 to double
  %215 = fmul double %214, 5.000000e-01
  br label %216

; <label>:216                                     ; preds = %216, %.preheader
  %indvars.iv28 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next29, %216 ]
  %217 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv28
  %218 = load float* %217, align 4, !tbaa !2
  %219 = fpext float %218 to double
  %220 = fmul double %215, %219
  %221 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv30, i64 %indvars.iv28
  %222 = load float* %221, align 4, !tbaa !2
  %223 = fpext float %222 to double
  %224 = fadd double %223, %220
  %225 = fptrunc double %224 to float
  store float %225, float* %221, align 4, !tbaa !2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond, label %226, label %216

; <label>:226                                     ; preds = %216
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 3
  br i1 %exitcond32, label %.loopexit, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %226
  %.phi.trans.insert41 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next31
  %.pre42 = load float* %.phi.trans.insert41, align 4, !tbaa !2
  br label %.preheader

.loopexit:                                        ; preds = %226, %75, %80
  %Vexcl.2 = phi float [ %Vexcl.116, %80 ], [ %Vexcl.116, %75 ], [ %158, %226 ]
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %lftr.wideiv = trunc i64 %indvars.iv33 to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv, %74
  br i1 %exitcond35, label %.loopexit10, label %75

._crit_edge:                                      ; preds = %.loopexit10, %._crit_edge43
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %._crit_edge43 ], [ %Vexcl.1.lcssa, %.loopexit10 ]
  %.b = load i1* @shift_LRcorrection.bFirst, align 1
  %227 = xor i1 %.b, true
  %228 = load %struct.__sFILE** @debug, align 8
  %229 = icmp ne %struct.__sFILE* %228, null
  %or.cond5 = and i1 %229, %227
  %230 = icmp ne %struct.__sFILE* %fp, null
  %or.cond7 = and i1 %230, %or.cond5
  br i1 %or.cond7, label %231, label %234

; <label>:231                                     ; preds = %._crit_edge
  %232 = fpext float %Vexcl.0.lcssa to double
  %233 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str10, i64 0, i64 0), double %232) #8
  br label %234

; <label>:234                                     ; preds = %231, %._crit_edge
  store i1 true, i1* @shift_LRcorrection.bFirst, align 1
  %235 = load float* @shift_LRcorrection.Vself, align 4, !tbaa !2
  %236 = fadd float %Vexcl.0.lcssa, %235
  %237 = fsub float -0.000000e+00, %236
  ret float %237
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_ener(%struct.__sFILE* %fp, i8* %title, i32 %bHeader, i32 %nmol, i32 %natoms, float* nocapture readonly %phi, float* nocapture readonly %charge, %struct.t_block* nocapture readonly %excl) #1 {
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.lr.ph12, label %16

.lr.ph12:                                         ; preds = %0
  %2 = add i32 %natoms, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph12
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %3 ]
  %4 = phi <2 x float> [ zeroinitializer, %.lr.ph12 ], [ %13, %3 ]
  %5 = getelementptr inbounds float* %charge, i64 %indvars.iv20
  %6 = load float* %5, align 4, !tbaa !2
  %7 = getelementptr inbounds float* %phi, i64 %indvars.iv20
  %8 = load float* %7, align 4, !tbaa !2
  %9 = insertelement <2 x float> undef, float %6, i32 0
  %10 = insertelement <2 x float> %9, float %8, i32 1
  %11 = insertelement <2 x float> %9, float %6, i32 1
  %12 = fmul <2 x float> %10, %11
  %13 = fadd <2 x float> %4, %12
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %lftr.wideiv22 = trunc i64 %indvars.iv20 to i32
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %2
  br i1 %exitcond23, label %._crit_edge13, label %3

._crit_edge13:                                    ; preds = %3
  %14 = extractelement <2 x float> %13, i32 1
  %phitmp = fmul float %14, 5.000000e-01
  %15 = extractelement <2 x float> %13, i32 0
  %phitmp16 = fpext float %15 to double
  br label %16

; <label>:16                                      ; preds = %._crit_edge13, %0
  %qq.0.lcssa = phi double [ %phitmp16, %._crit_edge13 ], [ 0.000000e+00, %0 ]
  %V.0.lcssa = phi float [ %phitmp, %._crit_edge13 ], [ 0.000000e+00, %0 ]
  %17 = load float* @C, align 4, !tbaa !2
  %18 = fpext float %17 to double
  %19 = fmul double %18, 5.000000e-01
  %20 = fmul double %19, 3.320636e+02
  %21 = fmul double %20, 4.184000e+00
  %22 = fmul double %21, 1.000000e-01
  %23 = fmul double %qq.0.lcssa, %22
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 1
  %26 = load i32* %25, align 4, !tbaa !19
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %16
  %28 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %29 = load i32** %28, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %31 = sext i32 %26 to i64
  %.pre = load i32* %29, align 4, !tbaa !11
  br label %33

.loopexit:                                        ; preds = %54, %33
  %qq.2.lcssa = phi float [ %qq.14, %33 ], [ %qq.3, %54 ]
  %32 = icmp slt i64 %indvars.iv.next19, %31
  br i1 %32, label %33, label %._crit_edge

; <label>:33                                      ; preds = %.lr.ph6, %.loopexit
  %34 = phi i32 [ %.pre, %.lr.ph6 ], [ %36, %.loopexit ]
  %indvars.iv18 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next19, %.loopexit ]
  %qq.14 = phi float [ 0.000000e+00, %.lr.ph6 ], [ %qq.2.lcssa, %.loopexit ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %35 = getelementptr inbounds i32* %29, i64 %indvars.iv.next19
  %36 = load i32* %35, align 4, !tbaa !11
  %37 = getelementptr inbounds float* %charge, i64 %indvars.iv18
  %38 = load float* %37, align 4, !tbaa !2
  %39 = icmp slt i32 %34, %36
  br i1 %39, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %33
  %40 = load i32** %30, align 8, !tbaa !12
  %41 = sext i32 %34 to i64
  %42 = add i32 %36, -1
  br label %43

; <label>:43                                      ; preds = %54, %.lr.ph
  %indvars.iv = phi i64 [ %41, %.lr.ph ], [ %indvars.iv.next, %54 ]
  %qq.22 = phi float [ %qq.14, %.lr.ph ], [ %qq.3, %54 ]
  %44 = getelementptr inbounds i32* %40, i64 %indvars.iv
  %45 = load i32* %44, align 4, !tbaa !11
  %46 = trunc i64 %indvars.iv18 to i32
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

; <label>:48                                      ; preds = %43
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds float* %charge, i64 %49
  %51 = load float* %50, align 4, !tbaa !2
  %52 = fmul float %38, %51
  %53 = fadd float %qq.22, %52
  br label %54

; <label>:54                                      ; preds = %43, %48
  %qq.3 = phi float [ %53, %48 ], [ %qq.22, %43 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %42
  br i1 %exitcond, label %.loopexit, label %43

._crit_edge:                                      ; preds = %.loopexit, %16
  %qq.1.lcssa = phi float [ 0.000000e+00, %16 ], [ %qq.2.lcssa, %.loopexit ]
  %55 = fpext float %qq.1.lcssa to double
  %56 = fmul double %55, 5.000000e-01
  %57 = fmul double %56, %18
  %58 = fmul double %57, 3.320636e+02
  %59 = fmul double %58, 4.184000e+00
  %60 = fmul double %59, 1.000000e-01
  %61 = fptrunc double %60 to float
  %62 = fsub float %V.0.lcssa, %24
  %63 = fsub float %62, %61
  %64 = icmp ne i32 %bHeader, 0
  %65 = icmp ne %struct.__sFILE* %fp, null
  %or.cond = and i1 %65, %64
  br i1 %or.cond, label %66, label %68

; <label>:66                                      ; preds = %._crit_edge
  %67 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #8
  br label %68

; <label>:68                                      ; preds = %66, %._crit_edge
  br i1 %65, label %69, label %78

; <label>:69                                      ; preds = %68
  %70 = fpext float %V.0.lcssa to double
  %71 = fpext float %24 to double
  %72 = fpext float %61 to double
  %73 = fpext float %63 to double
  %74 = sitofp i32 %nmol to float
  %75 = fdiv float %63, %74
  %76 = fpext float %75 to double
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i8* %title, double %70, double %71, double %72, double %73, double %76) #8
  br label %78

; <label>:78                                      ; preds = %69, %68
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @phi_aver(i32 %natoms, float* nocapture readonly %phi) #4 {
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %natoms, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %phitot.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %6, %3 ]
  %4 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !2
  %6 = fadd float %phitot.01, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  %phitot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %6, %3 ]
  %7 = sitofp i32 %natoms to float
  %8 = fdiv float %phitot.0.lcssa, %7
  ret float %8
}

; Function Attrs: nounwind optsize ssp uwtable
define float @symmetrize_phi(%struct.__sFILE* %log, i32 %natoms, float* nocapture %phi, i32 %bVerbose) #1 {
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.lr.ph.i, label %phi_aver.exit

.lr.ph.i:                                         ; preds = %0
  %2 = add i32 %natoms, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %3 ]
  %phitot.01.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %6, %3 ]
  %4 = getelementptr inbounds float* %phi, i64 %indvars.iv.i
  %5 = load float* %4, align 4, !tbaa !2
  %6 = fadd float %phitot.01.i, %5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv3 = trunc i64 %indvars.iv.i to i32
  %exitcond4 = icmp eq i32 %lftr.wideiv3, %2
  br i1 %exitcond4, label %phi_aver.exit, label %3

phi_aver.exit:                                    ; preds = %3, %0
  %phitot.0.lcssa.i = phi float [ 0.000000e+00, %0 ], [ %6, %3 ]
  %7 = sitofp i32 %natoms to float
  %8 = fdiv float %phitot.0.lcssa.i, %7
  %9 = icmp ne i32 %bVerbose, 0
  %10 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %10, %9
  br i1 %or.cond, label %11, label %.preheader

; <label>:11                                      ; preds = %phi_aver.exit
  %12 = fpext float %8 to double
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), double %12) #8
  br label %.preheader

.preheader:                                       ; preds = %11, %phi_aver.exit
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = add i32 %natoms, -1
  br label %15

; <label>:15                                      ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %16 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fsub float %17, %8
  store float %18, float* %16, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %15, %.preheader
  ret float %8
}

; Function Attrs: nounwind optsize ssp uwtable
define void @plot_phi(i8* %fn, float* nocapture readonly %box, i32 %natoms, [3 x float]* nocapture readonly %x, float* nocapture readonly %phi) #1 {
  %1 = load float* %phi, align 4, !tbaa !2
  %2 = icmp sgt i32 %natoms, 0
  br i1 %2, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %0
  %3 = add i32 %natoms, -1
  %fabsf113 = tail call float @fabsf(float %1) #5
  %4 = fcmp ogt float %1, %fabsf113
  %phi_max.0.fabsf114 = select i1 %4, float %1, float %fabsf113
  %exitcond1115 = icmp eq i32 %3, 0
  br i1 %exitcond1115, label %._crit_edge7, label %._crit_edge12

._crit_edge12:                                    ; preds = %.lr.ph6, %._crit_edge12
  %indvars.iv.next917 = phi i64 [ %indvars.iv.next9, %._crit_edge12 ], [ 1, %.lr.ph6 ]
  %phi_max.0.fabsf116 = phi float [ %phi_max.0.fabsf1, %._crit_edge12 ], [ %phi_max.0.fabsf114, %.lr.ph6 ]
  %.phi.trans.insert = getelementptr inbounds float* %phi, i64 %indvars.iv.next917
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  %fabsf1 = tail call float @fabsf(float %.pre) #5
  %5 = fcmp ogt float %phi_max.0.fabsf116, %fabsf1
  %phi_max.0.fabsf1 = select i1 %5, float %phi_max.0.fabsf116, float %fabsf1
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv.next917, 1
  %lftr.wideiv10 = trunc i64 %indvars.iv.next917 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %3
  br i1 %exitcond11, label %._crit_edge7, label %._crit_edge12

._crit_edge7:                                     ; preds = %.lr.ph6, %._crit_edge12, %0
  %phi_max.0.lcssa = phi float [ %1, %0 ], [ %phi_max.0.fabsf114, %.lr.ph6 ], [ %phi_max.0.fabsf1, %._crit_edge12 ]
  %fabsf = tail call float @fabsf(float %phi_max.0.lcssa) #5
  %6 = fpext float %fabsf to double
  %7 = fcmp olt double %6, 1.200000e-38
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %._crit_edge7
  %9 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %9)
  br label %65

; <label>:11                                      ; preds = %._crit_edge7
  %12 = load float* %box, align 4, !tbaa !2
  %13 = fmul float %12, 1.500000e+01
  %14 = fadd float %13, 4.000000e+01
  %15 = getelementptr inbounds float* %box, i64 1
  %16 = load float* %15, align 4, !tbaa !2
  %17 = fmul float %16, 1.500000e+01
  %18 = fadd float %17, 4.000000e+01
  %19 = tail call %struct.__sFILE* @ps_open(i8* %fn, float 0.000000e+00, float 0.000000e+00, float %14, float %18) #8
  tail call void @ps_translate(%struct.__sFILE* %19, float 2.000000e+01, float 2.000000e+01) #8
  tail call void @ps_color(%struct.__sFILE* %19, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00) #8
  %20 = load float* %box, align 4, !tbaa !2
  %21 = fmul float %20, 1.500000e+01
  %22 = fadd float %21, -1.000000e+00
  %23 = load float* %15, align 4, !tbaa !2
  %24 = fmul float %23, 1.500000e+01
  %25 = fadd float %24, -1.000000e+00
  tail call void @ps_box(%struct.__sFILE* %19, float 1.000000e+00, float 1.000000e+00, float %22, float %25) #8
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %11
  %26 = add i32 %natoms, -1
  br label %27

; <label>:27                                      ; preds = %36, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %28 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %29 = load float* %28, align 4, !tbaa !2
  %30 = fcmp olt float %29, 0.000000e+00
  %31 = fdiv float %29, %phi_max.0.lcssa
  br i1 %30, label %32, label %34

; <label>:32                                      ; preds = %27
  %33 = fadd float %31, 1.000000e+00
  br label %36

; <label>:34                                      ; preds = %27
  %35 = fsub float 1.000000e+00, %31
  br label %36

; <label>:36                                      ; preds = %34, %32
  %bb.0 = phi float [ %33, %32 ], [ 1.000000e+00, %34 ]
  %gg.0 = phi float [ %33, %32 ], [ %35, %34 ]
  %rr.0 = phi float [ 1.000000e+00, %32 ], [ %35, %34 ]
  %37 = fpext float %rr.0 to double
  %38 = fmul double %37, 3.200000e+01
  %39 = fptosi double %38 to i32
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 3.125000e-02
  %42 = fptrunc double %41 to float
  %43 = fpext float %gg.0 to double
  %44 = fmul double %43, 3.200000e+01
  %45 = fptosi double %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = fmul double %46, 3.125000e-02
  %48 = fptrunc double %47 to float
  %49 = fpext float %bb.0 to double
  %50 = fmul double %49, 3.200000e+01
  %51 = fptosi double %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 3.125000e-02
  %54 = fptrunc double %53 to float
  tail call void @ps_color(%struct.__sFILE* %19, float %42, float %48, float %54) #8
  %55 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %56 = load float* %55, align 4, !tbaa !2
  %57 = fmul float %56, 1.500000e+01
  %58 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %59 = load float* %58, align 4, !tbaa !2
  %60 = fmul float %59, 1.500000e+01
  %61 = fadd float %57, -2.250000e+00
  %62 = fadd float %60, -2.250000e+00
  %63 = fadd float %57, 2.250000e+00
  %64 = fadd float %60, 2.250000e+00
  tail call void @ps_fillbox(%struct.__sFILE* %19, float %61, float %62, float %63, float %64) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %26
  br i1 %exitcond, label %._crit_edge, label %27

._crit_edge:                                      ; preds = %36, %11
  tail call void @ps_close(%struct.__sFILE* %19) #8
  br label %65

; <label>:65                                      ; preds = %._crit_edge, %8
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ps_open(i8*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_translate(%struct.__sFILE*, float, float) #2

; Function Attrs: optsize
declare void @ps_color(%struct.__sFILE*, float, float, float) #2

; Function Attrs: optsize
declare void @ps_box(%struct.__sFILE*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_fillbox(%struct.__sFILE*, float, float, float, float) #2

; Function Attrs: optsize
declare void @ps_close(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @plot_qtab(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %qtab) #1 {
  %box = alloca [3 x float], align 4
  %1 = sitofp i32 %nx to float
  %2 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  store float %1, float* %2, align 4, !tbaa !2
  %3 = sitofp i32 %ny to float
  %4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %3, float* %4, align 4, !tbaa !2
  %5 = sitofp i32 %nz to float
  %6 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %5, float* %6, align 4, !tbaa !2
  %7 = fmul float %1, %3
  %8 = fmul float %5, %7
  %9 = fptosi float %8 to i32
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i32 523, i32 %9, i32 12) #8
  %11 = bitcast i8* %10 to [3 x float]*
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i32 524, i32 %9, i32 4) #8
  %13 = bitcast i8* %12 to float*
  %14 = sdiv i32 %nx, 2
  %15 = sdiv i32 %ny, 2
  %16 = sdiv i32 %nz, 2
  %17 = sub nsw i32 0, %14
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %0
  %19 = sub nsw i32 0, %15
  %20 = icmp sgt i32 %15, %19
  %21 = sub nsw i32 0, %16
  %22 = icmp sgt i32 %16, %21
  %23 = sext i32 %21 to i64
  %24 = sext i32 %16 to i64
  %25 = shl nsw i32 %16, 1
  %26 = add nsw i32 %16, -1
  %27 = sext i32 %19 to i64
  %28 = sext i32 %15 to i64
  %29 = add nsw i32 %15, -1
  %30 = sext i32 %17 to i64
  %31 = sext i32 %14 to i64
  %32 = add nsw i32 %14, -1
  br label %33

; <label>:33                                      ; preds = %._crit_edge7, %.lr.ph12
  %indvars.iv20 = phi i64 [ %30, %.lr.ph12 ], [ %indvars.iv.next21, %._crit_edge7 ]
  %i.09 = phi i32 [ 0, %.lr.ph12 ], [ %i.1.lcssa, %._crit_edge7 ]
  br i1 %20, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %33
  %34 = add nsw i64 %indvars.iv20, %31
  %35 = trunc i64 %34 to i32
  %36 = sitofp i32 %35 to double
  %37 = fadd double %36, 5.000000e-01
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds float*** %qtab, i64 %34
  br label %40

; <label>:40                                      ; preds = %65, %.lr.ph6
  %indvars.iv16 = phi i64 [ %27, %.lr.ph6 ], [ %indvars.iv.next17, %65 ]
  %i.13 = phi i32 [ %i.09, %.lr.ph6 ], [ %i.2.lcssa, %65 ]
  br i1 %22, label %.lr.ph, label %65

.lr.ph:                                           ; preds = %40
  %41 = add nsw i64 %indvars.iv16, %28
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, 5.000000e-01
  %45 = fptrunc double %44 to float
  %46 = load float*** %39, align 8, !tbaa !6
  %47 = getelementptr inbounds float** %46, i64 %41
  %48 = load float** %47, align 8, !tbaa !6
  %49 = sext i32 %i.13 to i64
  br label %50

; <label>:50                                      ; preds = %50, %.lr.ph
  %indvars.iv14 = phi i64 [ %49, %.lr.ph ], [ %indvars.iv.next15, %50 ]
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %50 ]
  %51 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv14, i64 0
  store float %38, float* %51, align 4, !tbaa !2
  %52 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv14, i64 1
  store float %45, float* %52, align 4, !tbaa !2
  %53 = add nsw i64 %indvars.iv, %24
  %54 = trunc i64 %53 to i32
  %55 = sitofp i32 %54 to double
  %56 = fadd double %55, 5.000000e-01
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv14, i64 2
  store float %57, float* %58, align 4, !tbaa !2
  %59 = getelementptr inbounds float* %48, i64 %53
  %60 = bitcast float* %59 to i32*
  %61 = load i32* %60, align 4, !tbaa !2
  %62 = getelementptr inbounds float* %13, i64 %indvars.iv14
  %63 = bitcast float* %62 to i32*
  store i32 %61, i32* %63, align 4, !tbaa !2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %26
  br i1 %exitcond, label %._crit_edge, label %50

._crit_edge:                                      ; preds = %50
  %64 = add i32 %25, %i.13
  br label %65

; <label>:65                                      ; preds = %._crit_edge, %40
  %i.2.lcssa = phi i32 [ %64, %._crit_edge ], [ %i.13, %40 ]
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %lftr.wideiv18 = trunc i64 %indvars.iv16 to i32
  %exitcond19 = icmp eq i32 %lftr.wideiv18, %29
  br i1 %exitcond19, label %._crit_edge7, label %40

._crit_edge7:                                     ; preds = %65, %33
  %i.1.lcssa = phi i32 [ %i.09, %33 ], [ %i.2.lcssa, %65 ]
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  %lftr.wideiv22 = trunc i64 %indvars.iv20 to i32
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %32
  br i1 %exitcond23, label %._crit_edge13, label %33

._crit_edge13:                                    ; preds = %._crit_edge7, %0
  call void @plot_phi(i8* %fn, float* %2, i32 %9, [3 x float]* %11, float* %13) #10
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i32 540, i8* %10) #8
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i32 541, i8* %12) #8
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @print_phi(i8* %fn, i32 %natoms, [3 x float]* nocapture readnone %x, float* nocapture readonly %phi) #1 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #8
  %2 = icmp sgt i32 %natoms, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = add i32 %natoms, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %6 = load float* %5, align 4, !tbaa !2
  %7 = fpext float %6 to double
  %8 = trunc i64 %indvars.iv to i32
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i32 %8, double %7) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %8, %3
  br i1 %exitcond, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %4, %0
  tail call void @ffclose(%struct.__sFILE* %1) #8
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_pqr(i8* %fn, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture readonly %x, float* nocapture readonly %phi, float %dx) #1 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #8
  %2 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %6 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %9 = load %struct.t_atom** %5, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.t_atom* %9, i64 %indvars.iv, i32 7
  %11 = load i32* %10, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i8**** %6, align 8, !tbaa !26
  %13 = getelementptr inbounds i8*** %12, i64 %indvars.iv
  %14 = load i8*** %13, align 8, !tbaa !6
  %15 = load i8** %14, align 8, !tbaa !6
  %16 = sext i32 %11 to i64
  %17 = load i8**** %7, align 8, !tbaa !27
  %18 = getelementptr inbounds i8*** %17, i64 %16
  %19 = load i8*** %18, align 8, !tbaa !6
  %20 = load i8** %19, align 8, !tbaa !6
  %21 = add nsw i32 %11, 1
  %22 = srem i32 %21, 10000
  %23 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %24 = load float* %23, align 4, !tbaa !2
  %25 = fadd float %24, %dx
  %26 = fmul float %25, 1.000000e+01
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %29 = load float* %28, align 4, !tbaa !2
  %30 = fmul float %29, 1.000000e+01
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %33 = load float* %32, align 4, !tbaa !2
  %34 = fmul float %33, 1.000000e+01
  %35 = fpext float %34 to double
  %36 = getelementptr inbounds float* %phi, i64 %indvars.iv
  %37 = load float* %36, align 4, !tbaa !2
  %38 = fpext float %37 to double
  %39 = trunc i64 %indvars.iv.next to i32
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %39, i8* %15, i8* %20, i32 32, i32 %22, double %27, double %31, double %35, double 0.000000e+00, double %38) #8
  %41 = load i32* %2, align 4, !tbaa !20
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %indvars.iv.next, %42
  br i1 %43, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %8, %0
  tail call void @ffclose(%struct.__sFILE* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_grid_pqr(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %phi) #1 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #8
  %2 = icmp sgt i32 %nx, 0
  br i1 %2, label %.preheader1.lr.ph, label %._crit_edge10

.preheader1.lr.ph:                                ; preds = %0
  %3 = icmp sgt i32 %ny, 0
  %4 = icmp sgt i32 %nz, 0
  %5 = add i32 %nz, -1
  %6 = add i32 %ny, -1
  %7 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge6, %.preheader1.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader1.lr.ph ], [ %8, %._crit_edge6 ]
  %rnr.08 = phi i32 [ 0, %.preheader1.lr.ph ], [ %rnr.1.lcssa, %._crit_edge6 ]
  %8 = add nuw nsw i64 %indvars.iv15, 1
  %9 = trunc i64 %indvars.iv15 to i32
  br i1 %3, label %.preheader.lr.ph, label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %.preheader1
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 4.000000e+00
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds float*** %phi, i64 %indvars.iv15
  br label %.preheader

.preheader:                                       ; preds = %.preheader._crit_edge, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %.preheader._crit_edge ]
  %rnr.15 = phi i32 [ %rnr.08, %.preheader.lr.ph ], [ %rnr.2.lcssa, %.preheader._crit_edge ]
  %14 = trunc i64 %indvars.iv11 to i32
  br i1 %4, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %15 = sitofp i32 %14 to float
  %16 = fmul float %15, 4.000000e+00
  %17 = fpext float %16 to double
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %rnr.23 = phi i32 [ %rnr.15, %.lr.ph ], [ %19, %18 ]
  %19 = add nsw i32 %rnr.23, 1
  %20 = srem i32 %19, 10000
  %21 = add nsw i32 %20, 1
  %22 = trunc i64 %indvars.iv to i32
  %23 = sitofp i32 %22 to float
  %24 = fmul float %23, 4.000000e+00
  %25 = fpext float %24 to double
  %26 = load float*** %13, align 8, !tbaa !6
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv11
  %28 = load float** %27, align 8, !tbaa !6
  %29 = getelementptr inbounds float* %28, i64 %indvars.iv
  %30 = load float* %29, align 4, !tbaa !2
  %31 = fpext float %30 to double
  %32 = trunc i64 %8 to i32
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), i32 32, i32 %21, double %12, double %17, double %25, double 0.000000e+00, double %31) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %22, %5
  br i1 %exitcond, label %._crit_edge, label %18

._crit_edge:                                      ; preds = %18
  %34 = add i32 %rnr.15, %nz
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %rnr.2.lcssa = phi i32 [ %34, %._crit_edge ], [ %rnr.15, %.preheader ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14 = icmp eq i32 %14, %6
  br i1 %exitcond14, label %._crit_edge6, label %.preheader

._crit_edge6:                                     ; preds = %.preheader._crit_edge, %.preheader1
  %rnr.1.lcssa = phi i32 [ %rnr.08, %.preheader1 ], [ %rnr.2.lcssa, %.preheader._crit_edge ]
  %exitcond18 = icmp eq i32 %9, %7
  br i1 %exitcond18, label %._crit_edge10, label %.preheader1

._crit_edge10:                                    ; preds = %._crit_edge6, %0
  tail call void @ffclose(%struct.__sFILE* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @analyse_diff(%struct.__sFILE* %log, i8* %label, i32 %natom, [3 x float]* nocapture readonly %ffour, [3 x float]* nocapture readonly %fpppm, float* nocapture readonly %phi_f, float* nocapture readonly %phi_p, float* nocapture readonly %phi_sr, i8* %fcorr, i8* %pcorr, i8* nocapture readnone %ftotcorr, i8* %ptotcorr) #1 {
  %1 = getelementptr inbounds [3 x float]* %ffour, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !2
  %3 = getelementptr inbounds [3 x float]* %fpppm, i64 0, i64 0
  %4 = load float* %3, align 4, !tbaa !2
  %5 = fsub float %2, %4
  %fabsf = tail call float @fabsf(float %5) #5
  %6 = load float* %phi_f, align 4, !tbaa !2
  %7 = load float* %phi_p, align 4, !tbaa !2
  %8 = fsub float %6, %7
  %fabsf1 = tail call float @fabsf(float %8) #5
  %9 = icmp sgt i32 %natom, 0
  br i1 %9, label %.lr.ph17, label %30

.lr.ph17:                                         ; preds = %0
  %10 = add i32 %natom, -1
  br label %11

; <label>:11                                      ; preds = %._crit_edge39, %.lr.ph17
  %12 = phi float [ %7, %.lr.ph17 ], [ %.pre41, %._crit_edge39 ]
  %13 = phi float [ %6, %.lr.ph17 ], [ %.pre, %._crit_edge39 ]
  %indvars.iv35 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next36, %._crit_edge39 ]
  %pmax.014 = phi float [ %fabsf1, %.lr.ph17 ], [ %28, %._crit_edge39 ]
  %fmax.013 = phi float [ %fabsf, %.lr.ph17 ], [ %24, %._crit_edge39 ]
  %p2sum.012 = phi float [ 0.000000e+00, %.lr.ph17 ], [ %29, %._crit_edge39 ]
  %f2sum.011 = phi float [ 0.000000e+00, %.lr.ph17 ], [ %26, %._crit_edge39 ]
  %14 = fsub float %13, %12
  %fabsf2 = tail call float @fabsf(float %14) #5
  %15 = fcmp ogt float %fabsf2, %pmax.014
  %16 = fmul float %fabsf2, %fabsf2
  br label %17

; <label>:17                                      ; preds = %17, %11
  %indvars.iv32 = phi i64 [ 0, %11 ], [ %indvars.iv.next33, %17 ]
  %fmax.19 = phi float [ %fmax.013, %11 ], [ %24, %17 ]
  %f2sum.18 = phi float [ %f2sum.011, %11 ], [ %26, %17 ]
  %18 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv35, i64 %indvars.iv32
  %19 = load float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv35, i64 %indvars.iv32
  %21 = load float* %20, align 4, !tbaa !2
  %22 = fsub float %19, %21
  %fabsf3 = tail call float @fabsf(float %22) #5
  %23 = fcmp ogt float %fabsf3, %fmax.19
  %24 = select i1 %23, float %fabsf3, float %fmax.19
  %25 = fmul float %fabsf3, %fabsf3
  %26 = fadd float %f2sum.18, %25
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 3
  br i1 %exitcond34, label %27, label %17

; <label>:27                                      ; preds = %17
  %28 = select i1 %15, float %fabsf2, float %pmax.014
  %29 = fadd float %p2sum.012, %16
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %10
  br i1 %exitcond38, label %._crit_edge18, label %._crit_edge39

._crit_edge39:                                    ; preds = %27
  %.phi.trans.insert = getelementptr inbounds float* %phi_f, i64 %indvars.iv.next36
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  %.phi.trans.insert40 = getelementptr inbounds float* %phi_p, i64 %indvars.iv.next36
  %.pre41 = load float* %.phi.trans.insert40, align 4, !tbaa !2
  br label %11

._crit_edge18:                                    ; preds = %27
  %phitmp = fpext float %26 to double
  br label %30

; <label>:30                                      ; preds = %._crit_edge18, %0
  %pmax.0.lcssa = phi float [ %28, %._crit_edge18 ], [ %fabsf1, %0 ]
  %fmax.0.lcssa = phi float [ %24, %._crit_edge18 ], [ %fabsf, %0 ]
  %p2sum.0.lcssa = phi float [ %29, %._crit_edge18 ], [ 0.000000e+00, %0 ]
  %f2sum.0.lcssa = phi double [ %phitmp, %._crit_edge18 ], [ 0.000000e+00, %0 ]
  %31 = sitofp i32 %natom to double
  %32 = fmul double %31, 3.000000e+00
  %33 = fdiv double %f2sum.0.lcssa, %32
  %34 = tail call double @sqrt(double %33) #9
  %35 = fptrunc double %34 to float
  %36 = icmp eq %struct.__sFILE* %log, null
  br i1 %36, label %49, label %37

; <label>:37                                      ; preds = %30
  %38 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0), i8* %label) #8
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0)) #8
  %40 = fpext float %fmax.0.lcssa to double
  %41 = fpext float %35 to double
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %40, double %41) #8
  %43 = fpext float %pmax.0.lcssa to double
  %44 = sitofp i32 %natom to float
  %45 = fdiv float %p2sum.0.lcssa, %44
  %46 = fpext float %45 to double
  %47 = tail call double @sqrt(double %46) #9
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), double %43, double %47) #8
  br label %49

; <label>:49                                      ; preds = %30, %37
  %50 = icmp eq i8* %fcorr, null
  br i1 %50, label %63, label %51

; <label>:51                                      ; preds = %49
  %52 = tail call %struct.__sFILE* @xvgropen(i8* %fcorr, i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0)) #8
  br i1 %9, label %.preheader.lr.ph, label %._crit_edge7

.preheader.lr.ph:                                 ; preds = %51
  %53 = add i32 %natom, -1
  br label %.preheader

.preheader:                                       ; preds = %62, %.preheader.lr.ph
  %indvars.iv28 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next29, %62 ]
  br label %54

; <label>:54                                      ; preds = %54, %.preheader
  %indvars.iv25 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next26, %54 ]
  %55 = getelementptr inbounds [3 x float]* %ffour, i64 %indvars.iv28, i64 %indvars.iv25
  %56 = load float* %55, align 4, !tbaa !2
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds [3 x float]* %fpppm, i64 %indvars.iv28, i64 %indvars.iv25
  %59 = load float* %58, align 4, !tbaa !2
  %60 = fpext float %59 to double
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %57, double %60) #8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %62, label %54

; <label>:62                                      ; preds = %54
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv28 to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %53
  br i1 %exitcond31, label %._crit_edge7, label %.preheader

._crit_edge7:                                     ; preds = %62, %51
  tail call void @ffclose(%struct.__sFILE* %52) #8
  tail call void @do_view(i8* %fcorr, i8* null) #8
  br label %63

; <label>:63                                      ; preds = %49, %._crit_edge7
  %fp.0 = phi %struct.__sFILE* [ %52, %._crit_edge7 ], [ null, %49 ]
  %64 = icmp ne i8* %pcorr, null
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %63
  %66 = tail call %struct.__sFILE* @xvgropen(i8* %pcorr, i8* getelementptr inbounds ([25 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #8
  br label %67

; <label>:67                                      ; preds = %65, %63
  %fp.1 = phi %struct.__sFILE* [ %66, %65 ], [ %fp.0, %63 ]
  %68 = icmp ne i8* %ptotcorr, null
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %67
  %70 = tail call %struct.__sFILE* @xvgropen(i8* %ptotcorr, i8* getelementptr inbounds ([28 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0)) #8
  br label %71

; <label>:71                                      ; preds = %69, %67
  %gp.0 = phi %struct.__sFILE* [ %70, %69 ], [ null, %67 ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %71
  %72 = add i32 %natom, -1
  br label %73

; <label>:73                                      ; preds = %95, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %95 ]
  br i1 %64, label %74, label %82

; <label>:74                                      ; preds = %73
  %75 = getelementptr inbounds float* %phi_f, i64 %indvars.iv
  %76 = load float* %75, align 4, !tbaa !2
  %77 = fpext float %76 to double
  %78 = getelementptr inbounds float* %phi_p, i64 %indvars.iv
  %79 = load float* %78, align 4, !tbaa !2
  %80 = fpext float %79 to double
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp.1, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %77, double %80) #8
  br label %82

; <label>:82                                      ; preds = %74, %73
  br i1 %68, label %83, label %95

; <label>:83                                      ; preds = %82
  %84 = getelementptr inbounds float* %phi_f, i64 %indvars.iv
  %85 = load float* %84, align 4, !tbaa !2
  %86 = getelementptr inbounds float* %phi_sr, i64 %indvars.iv
  %87 = load float* %86, align 4, !tbaa !2
  %88 = fadd float %85, %87
  %89 = fpext float %88 to double
  %90 = getelementptr inbounds float* %phi_p, i64 %indvars.iv
  %91 = load float* %90, align 4, !tbaa !2
  %92 = fadd float %87, %91
  %93 = fpext float %92 to double
  %94 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %gp.0, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %89, double %93) #8
  br label %95

; <label>:95                                      ; preds = %82, %83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %72
  br i1 %exitcond, label %._crit_edge, label %73

._crit_edge:                                      ; preds = %95, %71
  br i1 %64, label %96, label %97

; <label>:96                                      ; preds = %._crit_edge
  tail call void @ffclose(%struct.__sFILE* %fp.1) #8
  tail call void @do_view(i8* %pcorr, i8* null) #8
  br label %97

; <label>:97                                      ; preds = %96, %._crit_edge
  br i1 %68, label %98, label %99

; <label>:98                                      ; preds = %97
  tail call void @ffclose(%struct.__sFILE* %gp.0) #8
  tail call void @do_view(i8* %ptotcorr, i8* null) #8
  br label %99

; <label>:99                                      ; preds = %98, %97
  ret float %35
}

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare void @do_view(i8*, i8*) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 1032}
!9 = !{!"", !4, i64 0, !10, i64 1024, !7, i64 1032, !10, i64 1040, !7, i64 1048}
!10 = !{!"int", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !7, i64 1048}
!13 = !{!14, !3, i64 104}
!14 = !{!"", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !10, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !10, i64 52, !10, i64 56, !3, i64 60, !10, i64 64, !3, i64 68, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !3, i64 104, !3, i64 108, !7, i64 112, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !10, i64 136, !3, i64 140, !3, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !4, i64 180, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !4, i64 240, !4, i64 1488, !10, i64 2736, !10, i64 2740, !7, i64 2744, !7, i64 2752, !7, i64 2760, !10, i64 2768, !3, i64 2772, !7, i64 2776, !10, i64 2784, !7, i64 2792, !7, i64 2800, !10, i64 2808, !10, i64 2812, !10, i64 2816, !7, i64 2824, !7, i64 2832, !3, i64 2840}
!15 = !{!14, !3, i64 108}
!16 = !{!17, !10, i64 0}
!17 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
!18 = !{!14, !7, i64 2760}
!19 = !{!9, !10, i64 1024}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56, !7, i64 64, !9, i64 72, !4, i64 1128, !7, i64 1272}
!22 = !{!21, !7, i64 8}
!23 = !{!24, !10, i64 24}
!24 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !25, i64 16, !25, i64 18, !10, i64 20, !10, i64 24, !4, i64 28, !4, i64 37}
!25 = !{!"short", !4, i64 0}
!26 = !{!21, !7, i64 16}
!27 = !{!21, !7, i64 48}
