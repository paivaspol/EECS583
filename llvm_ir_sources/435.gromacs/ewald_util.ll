; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@ewald_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported Ewald geometry\00", align 1
@debug = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [48 x i8] c"dr=%8.4f, fscal=%8.0f, df=%10.0f,%10.0f,%10.0f\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Long Range corrections for Ewald interactions:\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"q2sum = %g, Vself=%g\0A\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"Total charge correction: Vcharge=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Total dipole correction: Vdipole=%g\0A\00", align 1

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

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @calc_ewaldcoeff(float %rc, float %dtol) #1 {
  %1 = fpext float %dtol to double
  br label %2

; <label>:2                                       ; preds = %2, %0
  %x.0 = phi float [ 5.000000e+00, %0 ], [ %4, %2 ]
  %i.0 = phi i32 [ 0, %0 ], [ %3, %2 ]
  %3 = add nuw nsw i32 %i.0, 1
  %4 = fmul float %x.0, 2.000000e+00
  %5 = fmul float %4, %rc
  %6 = fpext float %5 to double
  %7 = tail call double @erfc(double %6) #7
  %8 = fcmp ogt double %7, %1
  br i1 %8, label %2, label %9

; <label>:9                                       ; preds = %2
  %10 = icmp sgt i32 %i.0, -61
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %9, %.lr.ph
  %i.14 = phi i32 [ %17, %.lr.ph ], [ 0, %9 ]
  %high.03 = phi float [ %high.0., %.lr.ph ], [ %4, %9 ]
  %low.02 = phi float [ %.low.0, %.lr.ph ], [ 0.000000e+00, %9 ]
  %11 = fadd float %low.02, %high.03
  %12 = fmul float %11, 5.000000e-01
  %13 = fmul float %12, %rc
  %14 = fpext float %13 to double
  %15 = tail call double @erfc(double %14) #7
  %16 = fcmp ogt double %15, %1
  %.low.0 = select i1 %16, float %12, float %low.02
  %high.0. = select i1 %16, float %high.03, float %12
  %17 = add nuw nsw i32 %i.14, 1
  %18 = add nsw i32 %i.0, 60
  %19 = icmp slt i32 %i.14, %18
  br i1 %19, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %9
  %x.1.lcssa = phi float [ %4, %9 ], [ %12, %.lr.ph ]
  ret float %x.1.lcssa
}

; Function Attrs: nounwind optsize readnone
declare double @erfc(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define float @ewald_LRcorrection(%struct.__sFILE* nocapture readnone %fp, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_commrec* nocapture readonly %cr, %struct.t_forcerec* nocapture readonly %fr, float* nocapture readonly %charge, %struct.t_block* nocapture readonly %excl, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %box, float* nocapture readonly %mu_tot, float %qsum, i32 %ewald_geometry, float %epsilon_surface, [3 x float]* nocapture %lr_vir) #3 {
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %2 = load float* %1, align 4, !tbaa !2
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %4 = load [3 x float]** %3, align 8, !tbaa !9
  %5 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %5, align 4, !tbaa !10
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %8 = load float* %7, align 4, !tbaa !10
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %11 = load float* %10, align 4, !tbaa !10
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %14 = load i32* %13, align 4, !tbaa !11
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %15
  %17 = load i32* %16, align 4, !tbaa !13
  %18 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %15
  %19 = load i32* %18, align 4, !tbaa !13
  %20 = add nsw i32 %19, %17
  %21 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %22 = load i32** %21, align 8, !tbaa !14
  %fabsf = tail call float @fabsf(float %epsilon_surface) #2
  %23 = fpext float %fabsf to double
  %24 = fcmp olt double %23, 1.200000e-38
  br i1 %24, label %38, label %25

; <label>:25                                      ; preds = %0
  switch i32 %ewald_geometry, label %37 [
    i32 0, label %26
    i32 1, label %33
  ]

; <label>:26                                      ; preds = %25
  %27 = fmul float %epsilon_surface, 2.000000e+00
  %28 = fadd float %27, 1.000000e+00
  %29 = fmul float %28, %12
  %30 = fpext float %29 to double
  %31 = fdiv double 0x408B47A7CA01D8DF, %30
  %32 = fptrunc double %31 to float
  br label %38

; <label>:33                                      ; preds = %25
  %34 = fpext float %12 to double
  %35 = fdiv double 0x408B47A7CA01D8DF, %34
  %36 = fptrunc double %35 to float
  br label %38

; <label>:37                                      ; preds = %25
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0)) #8
  br label %38

; <label>:38                                      ; preds = %0, %26, %33, %37
  %dipole_coeff.0 = phi float [ 0.000000e+00, %37 ], [ %36, %33 ], [ %32, %26 ], [ 0.000000e+00, %0 ]
  %39 = icmp sgt i32 %19, 0
  br i1 %39, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %38
  %40 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %41 = fpext float %dipole_coeff.0 to double
  %fabsf2 = tail call float @fabsf(float %dipole_coeff.0) #2
  %42 = fpext float %fabsf2 to double
  %43 = fcmp ogt double %42, 1.200000e-38
  %44 = fmul double %41, 2.000000e+00
  %45 = fmul double %44, 2.081941e-02
  %46 = getelementptr inbounds float* %mu_tot, i64 2
  %47 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %48 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %49 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %50 = fpext float %2 to double
  %51 = fmul float %2, %2
  %52 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0
  %53 = getelementptr inbounds [3 x float]* %df, i64 0, i64 1
  %54 = getelementptr inbounds [3 x float]* %df, i64 0, i64 2
  %55 = sext i32 %17 to i64
  %56 = sext i32 %20 to i64
  br label %57

; <label>:57                                      ; preds = %.lr.ph18, %.backedge
  %indvars.iv37 = phi i64 [ %55, %.lr.ph18 ], [ %indvars.iv.next38, %.backedge ]
  %q2sum.015 = phi double [ 0.000000e+00, %.lr.ph18 ], [ %72, %.backedge ]
  %Vexcl.014 = phi float [ 0.000000e+00, %.lr.ph18 ], [ %Vexcl.1.lcssa, %.backedge ]
  %58 = getelementptr inbounds float* %charge, i64 %indvars.iv37
  %59 = load float* %58, align 4, !tbaa !10
  %60 = fpext float %59 to double
  %61 = fmul double %60, 3.320636e+02
  %62 = fmul double %61, 4.184000e+00
  %63 = fmul double %62, 1.000000e-01
  %64 = fptrunc double %63 to float
  %65 = load i32** %40, align 8, !tbaa !16
  %66 = getelementptr inbounds i32* %65, i64 %indvars.iv37
  %67 = load i32* %66, align 4, !tbaa !13
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1
  %68 = getelementptr inbounds i32* %65, i64 %indvars.iv.next38
  %69 = load i32* %68, align 4, !tbaa !13
  %70 = fmul float %59, %59
  %71 = fpext float %70 to double
  %72 = fadd double %q2sum.015, %71
  %73 = icmp slt i32 %67, %69
  br i1 %73, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %57
  %74 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 0
  %75 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 1
  %76 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 2
  %77 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 0
  %78 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 1
  %79 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 2
  %80 = sext i32 %67 to i64
  %81 = add i32 %69, -1
  br label %82

; <label>:82                                      ; preds = %.loopexit, %.lr.ph
  %indvars.iv31 = phi i64 [ %80, %.lr.ph ], [ %indvars.iv.next32, %.loopexit ]
  %Vexcl.111 = phi float [ %Vexcl.014, %.lr.ph ], [ %Vexcl.2, %.loopexit ]
  %83 = getelementptr inbounds i32* %22, i64 %indvars.iv31
  %84 = load i32* %83, align 4, !tbaa !13
  %85 = sext i32 %84 to i64
  %86 = icmp sgt i64 %85, %indvars.iv37
  br i1 %86, label %87, label %.loopexit

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds float* %charge, i64 %85
  %89 = load float* %88, align 4, !tbaa !10
  %90 = fmul float %64, %89
  %91 = fpext float %90 to double
  %fabsf3 = tail call float @fabsf(float %90) #2
  %92 = fpext float %fabsf3 to double
  %93 = fcmp ogt double %92, 1.200000e-38
  br i1 %93, label %94, label %.loopexit

; <label>:94                                      ; preds = %87
  %95 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 0
  %96 = load float* %74, align 4, !tbaa !10
  %97 = load float* %95, align 4, !tbaa !10
  %98 = fsub float %96, %97
  %99 = load float* %75, align 4, !tbaa !10
  %100 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 1
  %101 = load float* %100, align 4, !tbaa !10
  %102 = fsub float %99, %101
  %103 = load float* %76, align 4, !tbaa !10
  %104 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 2
  %105 = load float* %104, align 4, !tbaa !10
  %106 = fsub float %103, %105
  store float %98, float* %47, align 4, !tbaa !10
  store float %102, float* %48, align 4, !tbaa !10
  store float %106, float* %49, align 4, !tbaa !10
  br label %107

; <label>:107                                     ; preds = %._crit_edge39, %94
  %108 = phi float [ %106, %94 ], [ %144, %._crit_edge39 ]
  %109 = phi float [ %102, %94 ], [ %145, %._crit_edge39 ]
  %110 = phi float [ %98, %94 ], [ %146, %._crit_edge39 ]
  %111 = phi float [ %106, %94 ], [ %.pre, %._crit_edge39 ]
  %indvars.iv23 = phi i64 [ 2, %94 ], [ %indvars.iv.next24, %._crit_edge39 ]
  %dr2.07 = phi float [ 0.000000e+00, %94 ], [ %149, %._crit_edge39 ]
  %112 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv23
  %113 = fpext float %111 to double
  %114 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23
  %115 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 %indvars.iv23
  %116 = load float* %115, align 4, !tbaa !10
  %117 = fpext float %116 to double
  %118 = fmul double %117, 5.000000e-01
  %119 = fcmp ogt double %113, %118
  br i1 %119, label %120, label %130

; <label>:120                                     ; preds = %107
  %121 = getelementptr inbounds [3 x float]* %114, i64 0, i64 0
  %122 = load float* %121, align 4, !tbaa !10
  %123 = fsub float %110, %122
  %124 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 1
  %125 = load float* %124, align 4, !tbaa !10
  %126 = fsub float %109, %125
  %127 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 2
  %128 = load float* %127, align 4, !tbaa !10
  %129 = fsub float %108, %128
  store float %123, float* %47, align 4, !tbaa !10
  store float %126, float* %48, align 4, !tbaa !10
  store float %129, float* %49, align 4, !tbaa !10
  br label %143

; <label>:130                                     ; preds = %107
  %131 = fmul double %117, -5.000000e-01
  %132 = fcmp olt double %113, %131
  br i1 %132, label %133, label %143

; <label>:133                                     ; preds = %130
  %134 = getelementptr inbounds [3 x float]* %114, i64 0, i64 0
  %135 = load float* %134, align 4, !tbaa !10
  %136 = fadd float %110, %135
  %137 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 1
  %138 = load float* %137, align 4, !tbaa !10
  %139 = fadd float %109, %138
  %140 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 2
  %141 = load float* %140, align 4, !tbaa !10
  %142 = fadd float %108, %141
  store float %136, float* %47, align 4, !tbaa !10
  store float %139, float* %48, align 4, !tbaa !10
  store float %142, float* %49, align 4, !tbaa !10
  br label %143

; <label>:143                                     ; preds = %130, %133, %120
  %144 = phi float [ %108, %130 ], [ %142, %133 ], [ %129, %120 ]
  %145 = phi float [ %109, %130 ], [ %139, %133 ], [ %126, %120 ]
  %146 = phi float [ %110, %130 ], [ %136, %133 ], [ %123, %120 ]
  %147 = load float* %112, align 4, !tbaa !10
  %148 = fmul float %147, %147
  %149 = fadd float %dr2.07, %148
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %150 = icmp sgt i64 %indvars.iv23, 0
  br i1 %150, label %._crit_edge39, label %151

._crit_edge39:                                    ; preds = %143
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next24
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !10
  br label %107

; <label>:151                                     ; preds = %143
  %152 = fpext float %149 to double
  %153 = tail call double @sqrt(double %152) #7
  %154 = fdiv double 1.000000e+00, %153
  %155 = fptrunc double %154 to float
  %156 = fmul float %155, %155
  %157 = fpext float %155 to double
  %158 = fdiv float 1.000000e+00, %155
  %159 = fmul float %2, %158
  %160 = fpext float %159 to double
  %161 = tail call double @erf(double %160) #7
  %162 = fmul double %91, %161
  %163 = fmul double %157, %162
  %164 = fptrunc double %163 to float
  %165 = fadd float %Vexcl.111, %164
  %166 = fpext float %156 to double
  %167 = fpext float %164 to double
  %168 = fmul double %91, 2.000000e+00
  %169 = fmul double %50, %168
  %170 = fmul double %169, 0x3FE20DD750429B6A
  %171 = fmul float %51, %149
  %172 = fsub float -0.000000e+00, %171
  %173 = fpext float %172 to double
  %174 = tail call double @exp(double %173) #7
  %175 = fmul double %170, %174
  %176 = fsub double %167, %175
  %177 = fmul double %166, %176
  %178 = fptrunc double %177 to float
  %179 = fmul float %146, %178
  store float %179, float* %52, align 4, !tbaa !10
  %180 = fmul float %145, %178
  store float %180, float* %53, align 4, !tbaa !10
  %181 = fmul float %144, %178
  store float %181, float* %54, align 4, !tbaa !10
  %182 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %183 = icmp eq %struct.__sFILE* %182, null
  br i1 %183, label %191, label %184

; <label>:184                                     ; preds = %151
  %185 = fpext float %158 to double
  %186 = fpext float %178 to double
  %187 = fpext float %179 to double
  %188 = fpext float %180 to double
  %189 = fpext float %181 to double
  %190 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %182, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), double %185, double %186, double %187, double %188, double %189) #8
  br label %191

; <label>:191                                     ; preds = %151, %184
  %192 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 0
  %193 = load float* %192, align 4, !tbaa !10
  %194 = fadd float %193, %179
  %195 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 1
  %196 = load float* %195, align 4, !tbaa !10
  %197 = fadd float %196, %180
  %198 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 2
  %199 = load float* %198, align 4, !tbaa !10
  %200 = fadd float %199, %181
  store float %194, float* %192, align 4, !tbaa !10
  store float %197, float* %195, align 4, !tbaa !10
  store float %200, float* %198, align 4, !tbaa !10
  %201 = load float* %77, align 4, !tbaa !10
  %202 = fsub float %201, %179
  %203 = load float* %78, align 4, !tbaa !10
  %204 = fsub float %203, %180
  %205 = load float* %79, align 4, !tbaa !10
  %206 = fsub float %205, %181
  store float %202, float* %77, align 4, !tbaa !10
  store float %204, float* %78, align 4, !tbaa !10
  store float %206, float* %79, align 4, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %191
  %207 = phi float [ %146, %191 ], [ %.pre41, %..preheader_crit_edge ]
  %indvars.iv28 = phi i64 [ 0, %191 ], [ %indvars.iv.next29, %..preheader_crit_edge ]
  %208 = fpext float %207 to double
  %209 = fmul double %208, 5.000000e-01
  br label %210

; <label>:210                                     ; preds = %210, %.preheader
  %indvars.iv25 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next26, %210 ]
  %211 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv25
  %212 = load float* %211, align 4, !tbaa !10
  %213 = fpext float %212 to double
  %214 = fmul double %209, %213
  %215 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv28, i64 %indvars.iv25
  %216 = load float* %215, align 4, !tbaa !10
  %217 = fpext float %216 to double
  %218 = fadd double %217, %214
  %219 = fptrunc double %218 to float
  store float %219, float* %215, align 4, !tbaa !10
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %220, label %210

; <label>:220                                     ; preds = %210
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %.loopexit, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %220
  %.phi.trans.insert40 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next29
  %.pre41 = load float* %.phi.trans.insert40, align 4, !tbaa !10
  br label %.preheader

.loopexit:                                        ; preds = %220, %82, %87
  %Vexcl.2 = phi float [ %Vexcl.111, %87 ], [ %Vexcl.111, %82 ], [ %165, %220 ]
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %lftr.wideiv = trunc i64 %indvars.iv31 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv, %81
  br i1 %exitcond33, label %._crit_edge, label %82

._crit_edge:                                      ; preds = %.loopexit, %57
  %Vexcl.1.lcssa = phi float [ %Vexcl.014, %57 ], [ %Vexcl.2, %.loopexit ]
  br i1 %43, label %221, label %.backedge

; <label>:221                                     ; preds = %._crit_edge
  switch i32 %ewald_geometry, label %.backedge [
    i32 0, label %.preheader4
    i32 1, label %235
  ]

.backedge:                                        ; preds = %.preheader4, %221, %._crit_edge, %235
  %222 = icmp slt i64 %indvars.iv.next38, %56
  br i1 %222, label %57, label %._crit_edge19

.preheader4:                                      ; preds = %221, %.preheader4
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %.preheader4 ], [ 0, %221 ]
  %223 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv34
  %224 = load float* %223, align 4, !tbaa !10
  %225 = fpext float %224 to double
  %226 = fmul double %45, %225
  %227 = load float* %58, align 4, !tbaa !10
  %228 = fpext float %227 to double
  %229 = fmul double %226, %228
  %230 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 %indvars.iv34
  %231 = load float* %230, align 4, !tbaa !10
  %232 = fpext float %231 to double
  %233 = fsub double %232, %229
  %234 = fptrunc double %233 to float
  store float %234, float* %230, align 4, !tbaa !10
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3
  br i1 %exitcond36, label %.backedge, label %.preheader4

; <label>:235                                     ; preds = %221
  %236 = load float* %46, align 4, !tbaa !10
  %237 = fpext float %236 to double
  %238 = fmul double %45, %237
  %239 = load float* %58, align 4, !tbaa !10
  %240 = fpext float %239 to double
  %241 = fmul double %238, %240
  %242 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 2
  %243 = load float* %242, align 4, !tbaa !10
  %244 = fpext float %243 to double
  %245 = fsub double %244, %241
  %246 = fptrunc double %245 to float
  store float %246, float* %242, align 4, !tbaa !10
  br label %.backedge

._crit_edge19:                                    ; preds = %.backedge, %38
  %q2sum.0.lcssa = phi double [ 0.000000e+00, %38 ], [ %72, %.backedge ]
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %38 ], [ %Vexcl.1.lcssa, %.backedge ]
  %247 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %248 = load i32* %247, align 4, !tbaa !18
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %305

; <label>:250                                     ; preds = %._crit_edge19
  %251 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %252 = load i32* %251, align 4, !tbaa !20
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %305

; <label>:254                                     ; preds = %250
  %255 = fmul float %qsum, %qsum
  %256 = fpext float %255 to double
  %257 = fmul double %256, 0x400921FB54442D18
  %258 = fmul double %257, 3.320636e+02
  %259 = fmul double %258, 4.184000e+00
  %260 = fmul double %259, 1.000000e-01
  %261 = fpext float %12 to double
  %262 = fmul double %261, 2.000000e+00
  %263 = fmul double %261, %262
  %264 = fpext float %2 to double
  %265 = fmul double %264, %263
  %266 = fmul double %264, %265
  %267 = fdiv double %260, %266
  %268 = fptrunc double %267 to float
  br label %269

; <label>:269                                     ; preds = %269, %254
  %indvars.iv = phi i64 [ 0, %254 ], [ %indvars.iv.next, %269 ]
  %270 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv, i64 %indvars.iv
  %271 = load float* %270, align 4, !tbaa !10
  %272 = fadd float %268, %271
  store float %272, float* %270, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %273, label %269

; <label>:273                                     ; preds = %269
  %274 = fmul float %12, %268
  %275 = fsub float -0.000000e+00, %274
  %276 = fpext float %dipole_coeff.0 to double
  %fabsf1 = tail call float @fabsf(float %dipole_coeff.0) #2
  %277 = fpext float %fabsf1 to double
  %278 = fcmp ogt double %277, 1.200000e-38
  br i1 %278, label %279, label %305

; <label>:279                                     ; preds = %273
  switch i32 %ewald_geometry, label %305 [
    i32 0, label %280
    i32 1, label %296
  ]

; <label>:280                                     ; preds = %279
  %281 = fmul double %276, 2.081941e-02
  %282 = fmul double %281, 2.081941e-02
  %283 = load float* %mu_tot, align 4, !tbaa !10
  %284 = fmul float %283, %283
  %285 = getelementptr inbounds float* %mu_tot, i64 1
  %286 = load float* %285, align 4, !tbaa !10
  %287 = fmul float %286, %286
  %288 = fadd float %284, %287
  %289 = getelementptr inbounds float* %mu_tot, i64 2
  %290 = load float* %289, align 4, !tbaa !10
  %291 = fmul float %290, %290
  %292 = fadd float %288, %291
  %293 = fpext float %292 to double
  %294 = fmul double %282, %293
  %295 = fptrunc double %294 to float
  br label %305

; <label>:296                                     ; preds = %279
  %297 = fmul double %276, 2.081941e-02
  %298 = fmul double %297, 2.081941e-02
  %299 = getelementptr inbounds float* %mu_tot, i64 2
  %300 = load float* %299, align 4, !tbaa !10
  %301 = fpext float %300 to double
  %302 = fmul double %298, %301
  %303 = fmul double %301, %302
  %304 = fptrunc double %303 to float
  br label %305

; <label>:305                                     ; preds = %279, %273, %296, %280, %250, %._crit_edge19
  %Vcharge.0 = phi float [ %275, %280 ], [ %275, %296 ], [ %275, %273 ], [ 0.000000e+00, %250 ], [ 0.000000e+00, %._crit_edge19 ], [ %275, %279 ]
  %Vdipole.0 = phi float [ %295, %280 ], [ %304, %296 ], [ 0.000000e+00, %273 ], [ 0.000000e+00, %250 ], [ 0.000000e+00, %._crit_edge19 ], [ 0.000000e+00, %279 ]
  %306 = fpext float %2 to double
  %307 = fmul double %306, 3.320636e+02
  %308 = fmul double %307, 4.184000e+00
  %309 = fmul double %308, 1.000000e-01
  %310 = fmul double %309, %q2sum.0.lcssa
  %311 = fdiv double %310, 0x3FFC5BF891B4EF6A
  %312 = fptrunc double %311 to float
  store float %312, float* @ewald_LRcorrection.Vself, align 4, !tbaa !10
  %313 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %314 = icmp eq %struct.__sFILE* %313, null
  br i1 %314, label %341, label %315

; <label>:315                                     ; preds = %305
  %316 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %313)
  %317 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %318 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %317, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %17, i32 %19) #8
  %319 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %320 = load float* @ewald_LRcorrection.Vself, align 4, !tbaa !10
  %321 = fpext float %320 to double
  %322 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %319, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), double %q2sum.0.lcssa, double %321) #8
  %323 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %324 = fpext float %Vexcl.0.lcssa to double
  %325 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %323, i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), double %324) #8
  %326 = load i32* %247, align 4, !tbaa !18
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %341

; <label>:328                                     ; preds = %315
  %329 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %330 = load i32* %329, align 4, !tbaa !20
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %341

; <label>:332                                     ; preds = %328
  %333 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %334 = fpext float %Vcharge.0 to double
  %335 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %333, i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), double %334) #8
  %336 = fcmp ogt float %epsilon_surface, 0.000000e+00
  br i1 %336, label %337, label %341

; <label>:337                                     ; preds = %332
  %338 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %339 = fpext float %Vdipole.0 to double
  %340 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %338, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), double %339) #8
  br label %341

; <label>:341                                     ; preds = %305, %315, %328, %337, %332
  %342 = fadd float %Vcharge.0, %Vdipole.0
  %343 = load float* @ewald_LRcorrection.Vself, align 4, !tbaa !10
  %344 = fsub float %342, %343
  %345 = fsub float %344, %Vexcl.0.lcssa
  ret float %345
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readnone
declare double @erf(double) #2

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 2772}
!3 = !{!"", !4, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !4, i64 56, !7, i64 60, !4, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !7, i64 104, !7, i64 108, !8, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !4, i64 136, !7, i64 140, !7, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !5, i64 180, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !5, i64 240, !5, i64 1488, !4, i64 2736, !4, i64 2740, !8, i64 2744, !8, i64 2752, !8, i64 2760, !4, i64 2768, !7, i64 2772, !8, i64 2776, !4, i64 2784, !8, i64 2792, !8, i64 2800, !4, i64 2808, !4, i64 2812, !4, i64 2816, !8, i64 2824, !8, i64 2832, !7, i64 2840}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"float", !5, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!3, !8, i64 2760}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !4, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!13 = !{!4, !4, i64 0}
!14 = !{!15, !8, i64 1048}
!15 = !{!"", !5, i64 0, !4, i64 1024, !8, i64 1032, !4, i64 1040, !8, i64 1048}
!16 = !{!15, !8, i64 1032}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !4, i64 0}
!19 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!20 = !{!19, !4, i64 16}
