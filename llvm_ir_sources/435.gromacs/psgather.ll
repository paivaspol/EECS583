; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psgather.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@ps_gather_f.bFirst = internal unnamed_addr global i1 false
@ps_gather_f.nnx = internal global i32* null, align 8
@ps_gather_f.nny = internal global i32* null, align 8
@ps_gather_f.nnz = internal global i32* null, align 8
@ps_gather_f.JCXYZ = internal global [81 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [57 x i8] c"Gathering Forces using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"beta = %10g,%10g,%10g\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"c1   = %10g,%10g,%10g\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"c2   = %10g,%10g,%10g\0A\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
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
define float @ps_gather_inner(i32* nocapture readonly %JCXYZ, float* nocapture readonly %WXYZ, i32* nocapture readonly %ixw, i32* nocapture readonly %iyw, i32* nocapture readonly %izw, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float*** nocapture readonly %ptr) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %1 ]
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = phi <4 x float> [ zeroinitializer, %0 ], [ %163, %1 ]
  %3 = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv10
  %4 = load i32* %3, align 4, !tbaa !14
  %5 = add nuw nsw i64 %indvars.iv10, 1
  %6 = getelementptr inbounds i32* %JCXYZ, i64 %5
  %7 = load i32* %6, align 4, !tbaa !14
  %8 = add nuw nsw i64 %indvars.iv10, 2
  %9 = getelementptr inbounds i32* %JCXYZ, i64 %8
  %10 = load i32* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !15
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds i32* %ixw, i64 %13
  %15 = load i32* %14, align 4, !tbaa !14
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds i32* %iyw, i64 %16
  %18 = load i32* %17, align 4, !tbaa !14
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds i32* %izw, i64 %19
  %21 = load i32* %20, align 4, !tbaa !14
  %22 = sext i32 %21 to i64
  %23 = sext i32 %18 to i64
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds float*** %ptr, i64 %24
  %26 = load float*** %25, align 8, !tbaa !17
  %27 = getelementptr inbounds float** %26, i64 %23
  %28 = load float** %27, align 8, !tbaa !17
  %29 = getelementptr inbounds float* %28, i64 %22
  %30 = load float* %29, align 4, !tbaa !15
  %31 = add nsw i32 %4, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32* %ixw, i64 %32
  %34 = load i32* %33, align 4, !tbaa !14
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float*** %ptr, i64 %35
  %37 = load float*** %36, align 8, !tbaa !17
  %38 = getelementptr inbounds float** %37, i64 %23
  %39 = load float** %38, align 8, !tbaa !17
  %40 = getelementptr inbounds float* %39, i64 %22
  %41 = load float* %40, align 4, !tbaa !15
  %42 = add nsw i32 %4, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32* %ixw, i64 %43
  %45 = load i32* %44, align 4, !tbaa !14
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float*** %ptr, i64 %46
  %48 = load float*** %47, align 8, !tbaa !17
  %49 = getelementptr inbounds float** %48, i64 %23
  %50 = load float** %49, align 8, !tbaa !17
  %51 = getelementptr inbounds float* %50, i64 %22
  %52 = load float* %51, align 4, !tbaa !15
  %53 = fsub float %41, %52
  %54 = fmul float %53, %c1x
  %55 = add nsw i32 %4, -2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32* %ixw, i64 %56
  %58 = load i32* %57, align 4, !tbaa !14
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float*** %ptr, i64 %59
  %61 = load float*** %60, align 8, !tbaa !17
  %62 = getelementptr inbounds float** %61, i64 %23
  %63 = load float** %62, align 8, !tbaa !17
  %64 = getelementptr inbounds float* %63, i64 %22
  %65 = load float* %64, align 4, !tbaa !15
  %66 = add nsw i32 %4, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32* %ixw, i64 %67
  %69 = load i32* %68, align 4, !tbaa !14
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*** %ptr, i64 %70
  %72 = load float*** %71, align 8, !tbaa !17
  %73 = getelementptr inbounds float** %72, i64 %23
  %74 = load float** %73, align 8, !tbaa !17
  %75 = getelementptr inbounds float* %74, i64 %22
  %76 = load float* %75, align 4, !tbaa !15
  %77 = fsub float %65, %76
  %78 = fmul float %77, %c2x
  %79 = fadd float %54, %78
  %80 = add nsw i32 %7, -1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32* %iyw, i64 %81
  %83 = load i32* %82, align 4, !tbaa !14
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float** %26, i64 %84
  %86 = load float** %85, align 8, !tbaa !17
  %87 = getelementptr inbounds float* %86, i64 %22
  %88 = load float* %87, align 4, !tbaa !15
  %89 = add nsw i32 %7, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32* %iyw, i64 %90
  %92 = load i32* %91, align 4, !tbaa !14
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float** %26, i64 %93
  %95 = load float** %94, align 8, !tbaa !17
  %96 = getelementptr inbounds float* %95, i64 %22
  %97 = load float* %96, align 4, !tbaa !15
  %98 = fsub float %88, %97
  %99 = fmul float %98, %c1y
  %100 = add nsw i32 %7, -2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32* %iyw, i64 %101
  %103 = load i32* %102, align 4, !tbaa !14
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float** %26, i64 %104
  %106 = load float** %105, align 8, !tbaa !17
  %107 = getelementptr inbounds float* %106, i64 %22
  %108 = load float* %107, align 4, !tbaa !15
  %109 = add nsw i32 %7, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32* %iyw, i64 %110
  %112 = load i32* %111, align 4, !tbaa !14
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float** %26, i64 %113
  %115 = load float** %114, align 8, !tbaa !17
  %116 = getelementptr inbounds float* %115, i64 %22
  %117 = load float* %116, align 4, !tbaa !15
  %118 = fsub float %108, %117
  %119 = fmul float %118, %c2y
  %120 = fadd float %99, %119
  %121 = add nsw i32 %10, -1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32* %izw, i64 %122
  %124 = load i32* %123, align 4, !tbaa !14
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float* %28, i64 %125
  %127 = load float* %126, align 4, !tbaa !15
  %128 = add nsw i32 %10, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32* %izw, i64 %129
  %131 = load i32* %130, align 4, !tbaa !14
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float* %28, i64 %132
  %134 = load float* %133, align 4, !tbaa !15
  %135 = fsub float %127, %134
  %136 = fmul float %135, %c1z
  %137 = add nsw i32 %10, -2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32* %izw, i64 %138
  %140 = load i32* %139, align 4, !tbaa !14
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float* %28, i64 %141
  %143 = load float* %142, align 4, !tbaa !15
  %144 = add nsw i32 %10, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32* %izw, i64 %145
  %147 = load i32* %146, align 4, !tbaa !14
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float* %28, i64 %148
  %150 = load float* %149, align 4, !tbaa !15
  %151 = fsub float %143, %150
  %152 = fmul float %151, %c2z
  %153 = fadd float %136, %152
  %154 = insertelement <4 x float> undef, float %12, i32 0
  %155 = insertelement <4 x float> %154, float %12, i32 1
  %156 = insertelement <4 x float> %155, float %12, i32 2
  %157 = insertelement <4 x float> %156, float %12, i32 3
  %158 = insertelement <4 x float> undef, float %30, i32 0
  %159 = insertelement <4 x float> %158, float %79, i32 1
  %160 = insertelement <4 x float> %159, float %120, i32 2
  %161 = insertelement <4 x float> %160, float %153, i32 3
  %162 = fmul <4 x float> %157, %161
  %163 = fadd <4 x float> %2, %162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 3
  %exitcond = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond, label %164, label %1

; <label>:164                                     ; preds = %1
  %165 = extractelement <4 x float> %163, i32 1
  %166 = fmul float %165, %qi
  %167 = load float* %f, align 4, !tbaa !15
  %168 = fadd float %166, %167
  store float %168, float* %f, align 4, !tbaa !15
  %169 = extractelement <4 x float> %163, i32 2
  %170 = fmul float %169, %qi
  %171 = getelementptr inbounds float* %f, i64 1
  %172 = load float* %171, align 4, !tbaa !15
  %173 = fadd float %170, %172
  store float %173, float* %171, align 4, !tbaa !15
  %174 = extractelement <4 x float> %163, i32 3
  %175 = fmul float %174, %qi
  %176 = getelementptr inbounds float* %f, i64 2
  %177 = load float* %176, align 4, !tbaa !15
  %178 = fadd float %175, %177
  store float %178, float* %176, align 4, !tbaa !15
  %179 = extractelement <4 x float> %163, i32 0
  ret float %179
}

; Function Attrs: nounwind optsize ssp uwtable
define float @ps_gather_f(%struct.__sFILE* nocapture %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* %box, float* nocapture %pot, %struct.t_PSgrid* %grid, float* nocapture readonly %beta, %struct.t_nrnb* nocapture %nrnb) #3 {
  %ixyz = alloca [3 x i32], align 4
  %invh = alloca [3 x float], align 4
  %c1 = alloca [3 x float], align 4
  %c2 = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixw = alloca [7 x i32], align 16
  %iyw = alloca [7 x i32], align 16
  %izw = alloca [7 x i32], align 16
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %ptr = alloca float***, align 8
  %1 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %1) #4
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %ptr) #6
  %2 = load i32* %nx, align 4, !tbaa !14
  %3 = load i32* %ny, align 4, !tbaa !14
  %4 = load i32* %nz, align 4, !tbaa !14
  %5 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %6 = sitofp i32 %2 to float
  %7 = load float* %box, align 4, !tbaa !15
  %8 = fdiv float %6, %7
  store float %8, float* %5, align 4, !tbaa !15
  %9 = sitofp i32 %3 to float
  %10 = getelementptr inbounds float* %box, i64 1
  %11 = load float* %10, align 4, !tbaa !15
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %12, float* %13, align 4, !tbaa !15
  %14 = sitofp i32 %4 to float
  %15 = getelementptr inbounds float* %box, i64 2
  %16 = load float* %15, align 4, !tbaa !15
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %17, float* %18, align 4, !tbaa !15
  br label %19

; <label>:19                                      ; preds = %._crit_edge23, %0
  %20 = phi float [ %8, %0 ], [ %.pre, %._crit_edge23 ]
  %indvars.iv20 = phi i64 [ 0, %0 ], [ %indvars.iv.next21, %._crit_edge23 ]
  %21 = getelementptr inbounds float* %beta, i64 %indvars.iv20
  %22 = load float* %21, align 4, !tbaa !15
  %23 = fpext float %22 to double
  %24 = fmul double %23, 5.000000e-01
  %25 = fpext float %20 to double
  %26 = fmul double %24, %25
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv20
  store float %27, float* %28, align 4, !tbaa !15
  %29 = fsub double 1.000000e+00, %23
  %30 = fmul double %29, 2.500000e-01
  %31 = fmul double %25, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv20
  store float %32, float* %33, align 4, !tbaa !15
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 3
  br i1 %exitcond22, label %34, label %._crit_edge23

._crit_edge23:                                    ; preds = %19
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next21
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !15
  br label %19

; <label>:34                                      ; preds = %19
  %ixw6 = bitcast [7 x i32]* %ixw to i8*
  %iyw9 = bitcast [7 x i32]* %iyw to i8*
  %izw13 = bitcast [7 x i32]* %izw to i8*
  %35 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0
  %36 = load float* %35, align 4, !tbaa !15
  %37 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1
  %38 = load float* %37, align 4, !tbaa !15
  %39 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2
  %40 = load float* %39, align 4, !tbaa !15
  %41 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0
  %42 = load float* %41, align 4, !tbaa !15
  %43 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1
  %44 = load float* %43, align 4, !tbaa !15
  %45 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2
  %46 = load float* %45, align 4, !tbaa !15
  %.b = load i1* @ps_gather_f.bFirst, align 1
  br i1 %.b, label %.preheader, label %47

; <label>:47                                      ; preds = %34
  %48 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #6
  %49 = load float* %beta, align 4, !tbaa !15
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds float* %beta, i64 1
  %52 = load float* %51, align 4, !tbaa !15
  %53 = fpext float %52 to double
  %54 = getelementptr inbounds float* %beta, i64 2
  %55 = load float* %54, align 4, !tbaa !15
  %56 = fpext float %55 to double
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), double %50, double %53, double %56) #6
  %58 = fpext float %36 to double
  %59 = fpext float %38 to double
  %60 = fpext float %40 to double
  %61 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %58, double %59, double %60) #6
  %62 = fpext float %42 to double
  %63 = fpext float %44 to double
  %64 = fpext float %46 to double
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %62, double %63, double %64) #6
  %66 = load float* %5, align 4, !tbaa !15
  %67 = fpext float %66 to double
  %68 = load float* %13, align 4, !tbaa !15
  %69 = fpext float %68 to double
  %70 = load float* %18, align 4, !tbaa !15
  %71 = fpext float %70 to double
  %72 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), double %67, double %69, double %71) #6
  %73 = load i32* %nx, align 4, !tbaa !14
  %74 = load i32* %ny, align 4, !tbaa !14
  %75 = load i32* %nz, align 4, !tbaa !14
  call void @calc_nxyz(i32 %73, i32 %74, i32 %75, i32** @ps_gather_f.nnx, i32** @ps_gather_f.nny, i32** @ps_gather_f.nnz) #6
  br label %76

; <label>:76                                      ; preds = %76, %47
  %indvars.iv17 = phi i64 [ 0, %47 ], [ %indvars.iv.next18, %76 ]
  %77 = trunc i64 %indvars.iv17 to i32
  %78 = sdiv i32 %77, 9
  %79 = add nsw i32 %78, 2
  %80 = mul nsw i64 %indvars.iv17, 3
  %81 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %80
  store i32 %79, i32* %81, align 4, !tbaa !14
  %82 = sdiv i32 %77, 3
  %83 = srem i32 %82, 3
  %84 = add nsw i32 %83, 2
  %85 = add nuw nsw i64 %80, 1
  %86 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %85
  store i32 %84, i32* %86, align 4, !tbaa !14
  %87 = srem i32 %77, 3
  %88 = add nsw i32 %87, 2
  %89 = add nuw nsw i64 %80, 2
  %90 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %89
  store i32 %88, i32* %90, align 4, !tbaa !14
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 27
  br i1 %exitcond19, label %91, label %76

; <label>:91                                      ; preds = %76
  store i1 true, i1* @ps_gather_f.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %34, %91
  %92 = icmp sgt i32 %natoms, 0
  br i1 %92, label %.lr.ph, label %133

.lr.ph:                                           ; preds = %.preheader
  %93 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %94 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %95 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %96 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %97 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0
  %98 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0
  %99 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0
  %100 = add i32 %natoms, -1
  br label %101

; <label>:101                                     ; preds = %101, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %101 ]
  %energy.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %131, %101 ]
  %102 = load i32* %nx, align 4, !tbaa !14
  %103 = load i32* %ny, align 4, !tbaa !14
  %104 = load i32* %nz, align 4, !tbaa !14
  %105 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %106 = trunc i64 %indvars.iv to i32
  call void @calc_weights(i32 %106, i32 %102, i32 %103, i32 %104, float* %105, float* %box, float* %5, i32* %93, float* %94) #6
  %107 = load i32* %93, align 4, !tbaa !14
  %108 = load i32* %nx, align 4, !tbaa !14
  %109 = load i32** @ps_gather_f.nnx, align 8, !tbaa !17
  %110 = load i32* %95, align 4, !tbaa !14
  %111 = load i32* %ny, align 4, !tbaa !14
  %112 = load i32** @ps_gather_f.nny, align 8, !tbaa !17
  %113 = load i32* %96, align 4, !tbaa !14
  %114 = load i32* %nz, align 4, !tbaa !14
  %115 = load i32** @ps_gather_f.nnz, align 8, !tbaa !17
  %116 = sext i32 %107 to i64
  %117 = sext i32 %108 to i64
  %118 = add nsw i64 %116, %117
  %scevgep.sum = add nsw i64 %118, -3
  %scevgep7 = getelementptr i32* %109, i64 %scevgep.sum
  %scevgep78 = bitcast i32* %scevgep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw6, i8* %scevgep78, i64 28, i32 4, i1 false)
  %119 = sext i32 %110 to i64
  %120 = sext i32 %111 to i64
  %121 = add nsw i64 %119, %120
  %scevgep10.sum = add nsw i64 %121, -3
  %scevgep11 = getelementptr i32* %112, i64 %scevgep10.sum
  %scevgep1112 = bitcast i32* %scevgep11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw9, i8* %scevgep1112, i64 28, i32 4, i1 false)
  %122 = sext i32 %113 to i64
  %123 = sext i32 %114 to i64
  %124 = add nsw i64 %122, %123
  %scevgep14.sum = add nsw i64 %124, -3
  %scevgep15 = getelementptr i32* %115, i64 %scevgep14.sum
  %scevgep1516 = bitcast i32* %scevgep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw13, i8* %scevgep1516, i64 28, i32 4, i1 false)
  %125 = getelementptr inbounds float* %charge, i64 %indvars.iv
  %126 = load float* %125, align 4, !tbaa !15
  %127 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %128 = load float**** %ptr, align 8, !tbaa !17
  %129 = call float @ps_gather_inner(i32* getelementptr inbounds ([81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 0), float* %94, i32* %97, i32* %98, i32* %99, float %36, float %38, float %40, float %42, float %44, float %46, float %126, float* %127, float*** %128) #7
  %130 = fmul float %126, %129
  %131 = fadd float %energy.02, %130
  %132 = getelementptr inbounds float* %pot, i64 %indvars.iv
  store float %129, float* %132, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %106, %100
  br i1 %exitcond, label %._crit_edge, label %101

._crit_edge:                                      ; preds = %101
  %phitmp = fmul float %131, 5.000000e-01
  br label %133

; <label>:133                                     ; preds = %._crit_edge, %.preheader
  %energy.0.lcssa = phi float [ %phitmp, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %134 = mul nsw i32 %natoms, 27
  %135 = sitofp i32 %134 to double
  %136 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82
  %137 = load double* %136, align 8, !tbaa !18
  %138 = fadd double %135, %137
  store double %138, double* %136, align 8, !tbaa !18
  %139 = mul nsw i32 %natoms, 3
  %140 = sitofp i32 %139 to double
  %141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %142 = load double* %141, align 8, !tbaa !18
  %143 = fadd double %140, %142
  store double %143, double* %141, align 8, !tbaa !18
  call void @llvm.lifetime.end(i64 108, i8* %1) #4
  ret float %energy.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #1

; Function Attrs: optsize
declare void @calc_weights(i32, i32, i32, i32, float*, float*, float*, i32*, float*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !5, i64 0}
