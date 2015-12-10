; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psspread.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@spread_q_poisson.bFirst = internal unnamed_addr global i1 false
@spread_q_poisson.nnx = internal global i32* null, align 8
@spread_q_poisson.nny = internal global i32* null, align 8
@spread_q_poisson.nnz = internal global i32* null, align 8
@spread_q_poisson.NCELLS = internal unnamed_addr global i32 0, align 4
@spread_q_poisson.MAXCELLS = internal unnamed_addr global i32 0, align 4
@spread_q_poisson.cells = internal unnamed_addr global [3 x i32]* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Spreading %s using spread function on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"charges\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"ncells = %d,%d,%d\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"cells\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psspread.c\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"There are %d cells (maximum was %d)\0A\00", align 1

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
define void @spread_q_poisson(%struct.__sFILE* nocapture %log, i32 %bVerbose, i32 %bCoulomb, i32 %natoms, [3 x float]* nocapture readonly %x, float* nocapture readonly %prop, float* nocapture readonly %box, float %rc, %struct.t_PSgrid* %grid, %struct.t_nrnb* nocapture readnone %nrnb, i32 %bOld, float %r1) #3 {
  %invh = alloca [3 x float], align 4
  %ixyz = alloca [3 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %rho = alloca float***, align 8
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %rho) #6
  %1 = load i32* %nx, align 4, !tbaa !14
  %2 = load i32* %ny, align 4, !tbaa !14
  %3 = load i32* %nz, align 4, !tbaa !14
  %4 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %5 = sitofp i32 %1 to float
  %6 = load float* %box, align 4, !tbaa !15
  %7 = fdiv float %5, %6
  store float %7, float* %4, align 4, !tbaa !15
  %8 = sitofp i32 %2 to float
  %9 = getelementptr inbounds float* %box, i64 1
  %10 = load float* %9, align 4, !tbaa !15
  %11 = fdiv float %8, %10
  %12 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %11, float* %12, align 4, !tbaa !15
  %13 = sitofp i32 %3 to float
  %14 = getelementptr inbounds float* %box, i64 2
  %15 = load float* %14, align 4, !tbaa !15
  %16 = fdiv float %13, %15
  %17 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %16, float* %17, align 4, !tbaa !15
  %18 = fdiv float 1.000000e+00, %7
  %19 = fdiv float 1.000000e+00, %11
  %20 = fdiv float 1.000000e+00, %16
  %21 = fdiv float %rc, %6
  %22 = fmul float %21, %5
  %23 = fptosi float %22 to i32
  %24 = fdiv float %rc, %10
  %25 = fmul float %24, %8
  %26 = fptosi float %25 to i32
  %27 = fdiv float %rc, %15
  %28 = fmul float %27, %13
  %29 = fptosi float %28 to i32
  %.b = load i1* @spread_q_poisson.bFirst, align 1
  br i1 %.b, label %._crit_edge23, label %30

._crit_edge23:                                    ; preds = %0
  %.pre24 = fpext float %rc to double
  br label %112

; <label>:30                                      ; preds = %0
  %31 = icmp ne i32 %bCoulomb, 0
  %32 = select i1 %31, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)
  %33 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %1, i32 %2, i32 %3) #6
  %34 = fpext float %7 to double
  %35 = fpext float %11 to double
  %36 = fpext float %16 to double
  %37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %34, double %35, double %36) #6
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %23, i32 %26, i32 %29) #6
  %39 = load i32* %nx, align 4, !tbaa !14
  %40 = load i32* %ny, align 4, !tbaa !14
  %41 = load i32* %nz, align 4, !tbaa !14
  call void @calc_nxyz(i32 %39, i32 %40, i32 %41, i32** @spread_q_poisson.nnx, i32** @spread_q_poisson.nny, i32** @spread_q_poisson.nnz) #6
  %42 = shl i32 %23, 1
  %43 = add nsw i32 %42, 2
  %44 = shl i32 %26, 1
  %45 = add nsw i32 %44, 2
  %46 = mul nsw i32 %45, %43
  %47 = shl i32 %29, 1
  %48 = add nsw i32 %47, 2
  %49 = mul nsw i32 %46, %48
  store i32 %49, i32* @spread_q_poisson.MAXCELLS, align 4, !tbaa !14
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 83, i32 %49, i32 12) #6
  store i8* %50, i8** bitcast ([3 x i32]** @spread_q_poisson.cells to i8**), align 8, !tbaa !17
  %51 = fpext float %rc to double
  %52 = fmul float %18, %18
  %53 = fmul float %19, %19
  %54 = fadd float %52, %53
  %55 = fmul float %20, %20
  %56 = fadd float %54, %55
  %sqrtf.i = call float @sqrtf(float %56) #7
  %57 = fpext float %sqrtf.i to double
  %58 = fmul double %57, 5.000000e-01
  %59 = fadd double %51, %58
  %60 = fptrunc double %59 to float
  %61 = fmul float %60, %60
  store i32 0, i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  %62 = xor i32 %23, -1
  %63 = add nsw i32 %23, 1
  %64 = icmp slt i32 %63, %62
  %65 = bitcast i8* %50 to [3 x i32]*
  br i1 %64, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %30
  %66 = xor i32 %26, -1
  %67 = add nsw i32 %26, 1
  %68 = icmp slt i32 %67, %66
  %69 = xor i32 %29, -1
  %70 = add nsw i32 %29, 1
  %71 = icmp slt i32 %70, %69
  br label %72

; <label>:72                                      ; preds = %._crit_edge12, %.lr.ph15
  %73 = phi i32 [ 0, %.lr.ph15 ], [ %106, %._crit_edge12 ]
  %i.013 = phi i32 [ %62, %.lr.ph15 ], [ %107, %._crit_edge12 ]
  %74 = sitofp i32 %i.013 to float
  %75 = fmul float %18, %74
  %76 = fmul float %75, %75
  br i1 %68, label %._crit_edge12, label %.lr.ph11

.lr.ph11:                                         ; preds = %72, %.loopexit1
  %77 = phi i32 [ %103, %.loopexit1 ], [ %73, %72 ]
  %j.09 = phi i32 [ %104, %.loopexit1 ], [ %66, %72 ]
  %78 = sitofp i32 %j.09 to float
  %79 = fmul float %19, %78
  %80 = fmul float %79, %79
  %81 = fadd float %76, %80
  %.not = fcmp uge float %81, %61
  %brmerge = or i1 %.not, %71
  br i1 %brmerge, label %.loopexit1, label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph11, %99
  %82 = phi i32 [ %100, %99 ], [ %77, %.lr.ph11 ]
  %k.06 = phi i32 [ %101, %99 ], [ %69, %.lr.ph11 ]
  %83 = sitofp i32 %k.06 to float
  %84 = fmul float %20, %83
  %85 = fmul float %84, %84
  %86 = fadd float %81, %85
  %87 = fcmp olt float %86, %61
  br i1 %87, label %88, label %99

; <label>:88                                      ; preds = %.lr.ph8
  %89 = sext i32 %82 to i64
  %90 = getelementptr inbounds [3 x i32]* %65, i64 %89, i64 0
  store i32 %i.013, i32* %90, align 4, !tbaa !14
  %91 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i32]* %65, i64 %92, i64 1
  store i32 %j.09, i32* %93, align 4, !tbaa !14
  %94 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32]* %65, i64 %95, i64 2
  store i32 %k.06, i32* %96, align 4, !tbaa !14
  %97 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  br label %99

; <label>:99                                      ; preds = %.lr.ph8, %88
  %100 = phi i32 [ %82, %.lr.ph8 ], [ %98, %88 ]
  %101 = add nsw i32 %k.06, 1
  %102 = icmp slt i32 %k.06, %70
  br i1 %102, label %.lr.ph8, label %.loopexit1

.loopexit1:                                       ; preds = %99, %.lr.ph11
  %103 = phi i32 [ %77, %.lr.ph11 ], [ %100, %99 ]
  %104 = add nsw i32 %j.09, 1
  %105 = icmp slt i32 %j.09, %67
  br i1 %105, label %.lr.ph11, label %._crit_edge12

._crit_edge12:                                    ; preds = %.loopexit1, %72
  %106 = phi i32 [ %73, %72 ], [ %103, %.loopexit1 ]
  %107 = add nsw i32 %i.013, 1
  %108 = icmp slt i32 %i.013, %63
  br i1 %108, label %72, label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge12, %30
  %109 = phi i32 [ 0, %30 ], [ %106, %._crit_edge12 ]
  %110 = load i32* @spread_q_poisson.MAXCELLS, align 4, !tbaa !14
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), i32 %109, i32 %110) #6
  store i1 true, i1* @spread_q_poisson.bFirst, align 1
  br label %112

; <label>:112                                     ; preds = %._crit_edge23, %._crit_edge16
  %.pre-phi = phi double [ %.pre24, %._crit_edge23 ], [ %51, %._crit_edge16 ]
  %113 = fmul float %rc, %rc
  %114 = icmp eq i32 %bCoulomb, 0
  br i1 %114, label %120, label %115

; <label>:115                                     ; preds = %112
  %116 = call double @llvm.pow.f64(double %.pre-phi, double -5.000000e+00)
  %117 = fmul double %116, 0xC090480FF35D5A4F
  %118 = call double @llvm.pow.f64(double %.pre-phi, double -3.000000e+00)
  %119 = fmul double %118, 0x4090480FF35D5A4F
  br label %125

; <label>:120                                     ; preds = %112
  %121 = call double @llvm.pow.f64(double %.pre-phi, double -1.000000e+01)
  %122 = fmul double %121, 1.200000e+02
  %123 = call double @llvm.pow.f64(double %.pre-phi, double -8.000000e+00)
  %124 = fmul double %123, -9.000000e+01
  br label %125

; <label>:125                                     ; preds = %120, %115
  %B.0.in = phi double [ %119, %115 ], [ %124, %120 ]
  %A.0.in = phi double [ %117, %115 ], [ %122, %120 ]
  %A.0 = fptrunc double %A.0.in to float
  %B.0 = fptrunc double %B.0.in to float
  %126 = icmp sgt i32 %natoms, 0
  br i1 %126, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %125
  %127 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %128 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %129 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %130 = icmp eq i32 %bOld, 0
  %131 = add i32 %natoms, -1
  br label %132

; <label>:132                                     ; preds = %.loopexit, %.lr.ph5
  %indvars.iv19 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next20, %.loopexit ]
  %133 = getelementptr inbounds float* %prop, i64 %indvars.iv19
  %134 = load float* %133, align 4, !tbaa !15
  %fabsf = call float @fabsf(float %134) #7
  %135 = fpext float %fabsf to double
  %136 = fcmp ogt double %135, 1.200000e-38
  br i1 %136, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %132, %156
  %indvars.iv = phi i64 [ %indvars.iv.next, %156 ], [ 0, %132 ]
  %137 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 %indvars.iv
  %138 = load float* %137, align 4, !tbaa !15
  %139 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv
  %140 = load float* %139, align 4, !tbaa !15
  %141 = fmul float %138, %140
  %142 = fptosi float %141 to i32
  %143 = getelementptr inbounds float* %box, i64 %indvars.iv
  %144 = load float* %143, align 4, !tbaa !15
  %145 = fmul float %140, %144
  %146 = icmp slt i32 %142, 0
  %147 = sitofp i32 %142 to float
  br i1 %146, label %148, label %151

; <label>:148                                     ; preds = %.preheader
  %149 = fadd float %145, %147
  %150 = fptosi float %149 to i32
  br label %156

; <label>:151                                     ; preds = %.preheader
  %152 = fcmp ult float %147, %145
  br i1 %152, label %156, label %153

; <label>:153                                     ; preds = %151
  %154 = fsub float %147, %145
  %155 = fptosi float %154 to i32
  br label %156

; <label>:156                                     ; preds = %151, %153, %148
  %ttt.0 = phi i32 [ %150, %148 ], [ %155, %153 ], [ %142, %151 ]
  %157 = sitofp i32 %ttt.0 to float
  %158 = fadd float %157, 5.000000e-01
  %159 = fptosi float %158 to i32
  %160 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 %indvars.iv
  store i32 %159, i32* %160, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %161, label %.preheader

; <label>:161                                     ; preds = %156
  %162 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 0
  %163 = load float* %162, align 4, !tbaa !15
  %164 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 1
  %165 = load float* %164, align 4, !tbaa !15
  %166 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 2
  %167 = load float* %166, align 4, !tbaa !15
  %168 = load i32* %127, align 4, !tbaa !14
  %169 = load i32* %128, align 4, !tbaa !14
  %170 = load i32* %129, align 4, !tbaa !14
  %171 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %161, %237
  %173 = phi i32 [ %238, %237 ], [ %171, %161 ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %237 ], [ 0, %161 ]
  %174 = load [3 x i32]** @spread_q_poisson.cells, align 8, !tbaa !17
  %175 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 0
  %176 = load i32* %175, align 4, !tbaa !14
  %177 = add nsw i32 %176, %168
  %178 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 1
  %179 = load i32* %178, align 4, !tbaa !14
  %180 = add nsw i32 %179, %169
  %181 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 2
  %182 = load i32* %181, align 4, !tbaa !14
  %183 = add nsw i32 %182, %170
  %184 = sitofp i32 %177 to float
  %185 = fmul float %18, %184
  %186 = fsub float %163, %185
  %187 = fmul float %186, %186
  %188 = sitofp i32 %180 to float
  %189 = fmul float %19, %188
  %190 = fsub float %165, %189
  %191 = fmul float %190, %190
  %192 = sitofp i32 %183 to float
  %193 = fmul float %20, %192
  %194 = fsub float %167, %193
  %195 = fmul float %194, %194
  %196 = fadd float %187, %191
  %197 = fadd float %196, %195
  %198 = fcmp olt float %197, %113
  br i1 %198, label %199, label %237

; <label>:199                                     ; preds = %.lr.ph
  br i1 %130, label %203, label %200

; <label>:200                                     ; preds = %199
  %sqrtf = call float @sqrtf(float %197) #7
  %201 = call float @spreadfunction(float %r1, float %rc, float %sqrtf) #6
  %202 = fmul float %201, 0x409B47AAC0000000
  %.pre.pre = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !14
  br label %206

; <label>:203                                     ; preds = %199
  %204 = fmul float %A.0, %197
  %205 = fadd float %B.0, %204
  br label %206

; <label>:206                                     ; preds = %203, %200
  %.pre = phi i32 [ %.pre.pre, %200 ], [ %173, %203 ]
  %sf.0 = phi float [ %202, %200 ], [ %205, %203 ]
  %207 = load i32* %nx, align 4, !tbaa !14
  %208 = add nsw i32 %207, %177
  %209 = sext i32 %208 to i64
  %210 = load i32** @spread_q_poisson.nnx, align 8, !tbaa !17
  %211 = getelementptr inbounds i32* %210, i64 %209
  %212 = load i32* %211, align 4, !tbaa !14
  %213 = load i32* %ny, align 4, !tbaa !14
  %214 = add nsw i32 %213, %180
  %215 = sext i32 %214 to i64
  %216 = load i32** @spread_q_poisson.nny, align 8, !tbaa !17
  %217 = getelementptr inbounds i32* %216, i64 %215
  %218 = load i32* %217, align 4, !tbaa !14
  %219 = load i32* %nz, align 4, !tbaa !14
  %220 = add nsw i32 %219, %183
  %221 = sext i32 %220 to i64
  %222 = load i32** @spread_q_poisson.nnz, align 8, !tbaa !17
  %223 = getelementptr inbounds i32* %222, i64 %221
  %224 = load i32* %223, align 4, !tbaa !14
  %225 = fmul float %134, %sf.0
  %226 = sext i32 %224 to i64
  %227 = sext i32 %218 to i64
  %228 = sext i32 %212 to i64
  %229 = load float**** %rho, align 8, !tbaa !17
  %230 = getelementptr inbounds float*** %229, i64 %228
  %231 = load float*** %230, align 8, !tbaa !17
  %232 = getelementptr inbounds float** %231, i64 %227
  %233 = load float** %232, align 8, !tbaa !17
  %234 = getelementptr inbounds float* %233, i64 %226
  %235 = load float* %234, align 4, !tbaa !15
  %236 = fadd float %225, %235
  store float %236, float* %234, align 4, !tbaa !15
  br label %237

; <label>:237                                     ; preds = %.lr.ph, %206
  %238 = phi i32 [ %173, %.lr.ph ], [ %.pre, %206 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %indvars.iv.next18, %239
  br i1 %240, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %237, %161, %132
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv = trunc i64 %indvars.iv19 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv, %131
  br i1 %exitcond21, label %._crit_edge, label %132

._crit_edge:                                      ; preds = %.loopexit, %125
  ret void
}

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #5

; Function Attrs: optsize
declare float @spreadfunction(float, float, float) #1

declare float @fabsf(float)

declare float @sqrtf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
