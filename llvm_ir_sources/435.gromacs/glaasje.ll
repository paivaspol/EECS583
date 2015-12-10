; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/glaasje.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@do_glas.bFirst = internal unnamed_addr global i1 false
@do_glas.bGlas = internal unnamed_addr global i32 0, align 4
@do_glas.d = internal unnamed_addr global [2 x float] zeroinitializer, align 4
@do_glas.pi6 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.pi12 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc9 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc4 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc10 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc3 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.c6 = internal unnamed_addr global float* null, align 8
@do_glas.c12 = internal unnamed_addr global float* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can not have Long Range C6 corrections and GLASMD\00", align 1
@.str1 = private unnamed_addr constant [185 x i8] c"Constants for GLASMD: pi6 = %10g, pi12 = %10g\0A                      d1  = %10g, d2   = %10g\0A                      rc3 = %10g, rc4  = %10g\0A                      rc9 = %10g, rc10 = %10g\0A\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"d1 > d2 for GLASMD (check log file)\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/glaasje.c\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"c12\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [12 x i8] c"No glasmd!\0A\00", align 1

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
define void @do_glas(%struct.__sFILE* nocapture %log, i32 %start, i32 %homenr, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_mdatoms* nocapture readonly %md, i32 %atnr, %struct.t_inputrec* nocapture readonly %ir, float* nocapture %ener) #1 {
  %1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %2 = load i32** %1, align 8, !tbaa !2
  %.b = load i1* @do_glas.bFirst, align 1
  br i1 %.b, label %95, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %5 = bitcast float* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !9
  store i32 %6, i32* bitcast (float* @do_glas.pi6 to i32*), align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %8 = bitcast float* %7 to i32*
  %9 = load i32* %8, align 4, !tbaa !13
  store i32 %9, i32* bitcast (float* @do_glas.pi12 to i32*), align 4, !tbaa !12
  %10 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %11 = bitcast float* %10 to i32*
  %12 = load i32* %11, align 4, !tbaa !14
  store i32 %12, i32* bitcast ([2 x float]* @do_glas.d to i32*), align 4, !tbaa !12
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %14 = load float* %13, align 4, !tbaa !15
  store float %14, float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !12
  %15 = bitcast i32 %6 to float
  %fabsf2 = tail call float @fabsf(float %15) #4
  %16 = fpext float %fabsf2 to double
  %17 = fcmp ogt double %16, 1.200000e-38
  %18 = bitcast i32 %9 to float
  %19 = bitcast i32 %12 to float
  br i1 %17, label %20, label %.thread

; <label>:20                                      ; preds = %3
  %fabsf3 = tail call float @fabsf(float %18) #4
  %21 = fpext float %fabsf3 to double
  %22 = fcmp ogt double %21, 1.200000e-38
  br i1 %22, label %23, label %.thread

; <label>:23                                      ; preds = %20
  %fabsf4 = tail call float @fabsf(float %19) #4
  %24 = fpext float %fabsf4 to double
  %25 = fcmp ogt double %24, 1.200000e-38
  br i1 %25, label %26, label %.thread

.thread:                                          ; preds = %23, %20, %3
  store i32 0, i32* @do_glas.bGlas, align 4, !tbaa !16
  br label %92

; <label>:26                                      ; preds = %23
  %fabsf5 = tail call float @fabsf(float %14) #4
  %27 = fpext float %fabsf5 to double
  %28 = fcmp ogt double %27, 1.200000e-38
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @do_glas.bGlas, align 4, !tbaa !16
  br i1 %28, label %30, label %92

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %32 = load i32* %31, align 4, !tbaa !17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

; <label>:34                                      ; preds = %30
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #6
  %.pre = load float* @do_glas.pi6, align 4, !tbaa !12
  %.pre20 = load float* @do_glas.pi12, align 4, !tbaa !12
  %.pre21 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !tbaa !12
  %.pre22 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !12
  br label %35

; <label>:35                                      ; preds = %30, %34
  %36 = phi float [ %14, %30 ], [ %.pre22, %34 ]
  %37 = phi float [ %19, %30 ], [ %.pre21, %34 ]
  %38 = phi float [ %18, %30 ], [ %.pre20, %34 ]
  %39 = phi float [ %15, %30 ], [ %.pre, %34 ]
  %40 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %41 = load float* %40, align 4, !tbaa !18
  %42 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %43 = load float* %42, align 4, !tbaa !20
  %44 = fcmp ogt float %41, %43
  %. = select i1 %44, float %41, float %43
  store float %., float* @do_glas.rc, align 4, !tbaa !12
  %45 = fmul float %., %.
  %46 = fmul float %., %45
  store float %46, float* @do_glas.rc3, align 4, !tbaa !12
  %47 = fmul float %., %46
  store float %47, float* @do_glas.rc4, align 4, !tbaa !12
  %48 = fmul float %46, %46
  %49 = fmul float %46, %48
  store float %49, float* @do_glas.rc9, align 4, !tbaa !12
  %50 = fmul float %., %49
  store float %50, float* @do_glas.rc10, align 4, !tbaa !12
  %51 = fpext float %39 to double
  %52 = fpext float %38 to double
  %53 = fpext float %37 to double
  %54 = fpext float %36 to double
  %55 = fpext float %46 to double
  %56 = fpext float %47 to double
  %57 = fpext float %49 to double
  %58 = fpext float %50 to double
  %59 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([185 x i8]* @.str1, i64 0, i64 0), double %51, double %52, double %53, double %54, double %55, double %56, double %57, double %58) #6
  %60 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !tbaa !12
  %61 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !12
  %62 = fcmp ogt float %60, %61
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %35
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #6
  br label %64

; <label>:64                                      ; preds = %63, %35
  %65 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), i32 84, i32 %atnr, i32 4) #6
  store i8* %65, i8** bitcast (float** @do_glas.c6 to i8**), align 8, !tbaa !21
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), i32 85, i32 %atnr, i32 4) #6
  store i8* %66, i8** bitcast (float** @do_glas.c12 to i8**), align 8, !tbaa !21
  %67 = icmp sgt i32 %atnr, 0
  %68 = bitcast i8* %66 to float*
  br i1 %67, label %.lr.ph14, label %.loopexit6

.lr.ph14:                                         ; preds = %64
  %69 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %70 = load float** %69, align 8, !tbaa !22
  %71 = load float** @do_glas.c6, align 8, !tbaa !21
  %72 = add i32 %atnr, -1
  br label %73

; <label>:73                                      ; preds = %73, %.lr.ph14
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %73 ]
  %i.012 = phi i32 [ 0, %.lr.ph14 ], [ %91, %73 ]
  %74 = mul nsw i32 %i.012, %atnr
  %75 = trunc i64 %indvars.iv17 to i32
  %76 = add nsw i32 %74, %75
  %77 = shl nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float* %70, i64 %78
  %80 = bitcast float* %79 to i32*
  %81 = load i32* %80, align 4, !tbaa !12
  %82 = getelementptr inbounds float* %71, i64 %indvars.iv17
  %83 = bitcast float* %82 to i32*
  store i32 %81, i32* %83, align 4, !tbaa !12
  %84 = or i32 %77, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float* %70, i64 %85
  %87 = bitcast float* %86 to i32*
  %88 = load i32* %87, align 4, !tbaa !12
  %89 = getelementptr inbounds float* %68, i64 %indvars.iv17
  %90 = bitcast float* %89 to i32*
  store i32 %88, i32* %90, align 4, !tbaa !12
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %91 = add nuw nsw i32 %i.012, 1
  %exitcond19 = icmp eq i32 %75, %72
  br i1 %exitcond19, label %.loopexit6, label %73

; <label>:92                                      ; preds = %.thread, %26
  %93 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !21
  %94 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %93)
  br label %.loopexit6

.loopexit6:                                       ; preds = %73, %64, %92
  store i1 true, i1* @do_glas.bFirst, align 1
  br label %95

; <label>:95                                      ; preds = %0, %.loopexit6
  %96 = load i32* @do_glas.bGlas, align 4, !tbaa !16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %197, label %.preheader

.preheader:                                       ; preds = %95
  %98 = icmp sgt i32 %homenr, 0
  br i1 %98, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %99 = add nsw i32 %homenr, %start
  %100 = load float** @do_glas.c6, align 8, !tbaa !21
  %101 = load float** @do_glas.c12, align 8, !tbaa !21
  %102 = sext i32 %start to i64
  %103 = sext i32 %99 to i64
  br label %104

; <label>:104                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv15 = phi i64 [ %102, %.lr.ph ], [ %indvars.iv.next16, %.loopexit ]
  %wd.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %wd.2, %.loopexit ]
  %105 = getelementptr inbounds i32* %2, i64 %indvars.iv15
  %106 = load i32* %105, align 4, !tbaa !16
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float* %100, i64 %107
  %109 = load float* %108, align 4, !tbaa !12
  %fabsf = tail call float @fabsf(float %109) #4
  %110 = fpext float %fabsf to double
  %111 = fcmp ogt double %110, 1.200000e-38
  %.phi.trans.insert = getelementptr inbounds float* %101, i64 %107
  %.pre24 = load float* %.phi.trans.insert, align 4, !tbaa !12
  br i1 %111, label %._crit_edge23, label %112

; <label>:112                                     ; preds = %104
  %fabsf1 = tail call float @fabsf(float %.pre24) #4
  %113 = fpext float %fabsf1 to double
  %114 = fcmp ogt double %113, 1.200000e-38
  br i1 %114, label %._crit_edge23, label %.loopexit

._crit_edge23:                                    ; preds = %104, %112
  %115 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv15, i64 2
  %116 = load float* %115, align 4, !tbaa !12
  %117 = load float* @do_glas.pi6, align 4, !tbaa !12
  %118 = fmul float %109, %117
  %119 = fpext float %118 to double
  %120 = tail call double @sqrt(double %119) #7
  %121 = fmul double %120, 0x400921FB54442D18
  %122 = fptrunc double %121 to float
  %123 = load float* @do_glas.pi12, align 4, !tbaa !12
  %124 = fmul float %.pre24, %123
  %125 = fpext float %124 to double
  %126 = tail call double @sqrt(double %125) #7
  %127 = fmul double %126, 0x400921FB54442D18
  %128 = fptrunc double %127 to float
  %129 = fpext float %128 to double
  %130 = fpext float %122 to double
  %131 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv15, i64 2
  br label %132

; <label>:132                                     ; preds = %190, %._crit_edge23
  %indvars.iv = phi i64 [ 0, %._crit_edge23 ], [ %indvars.iv.next, %190 ]
  %wd.19 = phi float [ %wd.011, %._crit_edge23 ], [ %191, %190 ]
  %sign.07 = phi float [ 1.000000e+00, %._crit_edge23 ], [ %194, %190 ]
  %133 = getelementptr inbounds [2 x float]* @do_glas.d, i64 0, i64 %indvars.iv
  %134 = load float* %133, align 4, !tbaa !12
  %135 = fsub float %116, %134
  %136 = fmul float %sign.07, %135
  %137 = load float* @do_glas.rc, align 4, !tbaa !12
  %138 = fcmp ult float %136, %137
  br i1 %138, label %162, label %139

; <label>:139                                     ; preds = %132
  %140 = fmul float %136, %136
  %141 = fmul float %136, %140
  %142 = fmul float %141, %141
  %143 = fmul float %141, %142
  %144 = fpext float %143 to double
  %145 = fmul double %144, 4.500000e+01
  %146 = fdiv double %129, %145
  %147 = fpext float %141 to double
  %148 = fmul double %147, 6.000000e+00
  %149 = fdiv double %130, %148
  %150 = fsub double %146, %149
  %151 = fmul float %136, %141
  %152 = fmul float %136, %143
  %153 = fpext float %sign.07 to double
  %154 = fpext float %152 to double
  %155 = fmul double %154, 5.000000e+00
  %156 = fdiv double %129, %155
  %157 = fpext float %151 to double
  %158 = fmul double %157, 2.000000e+00
  %159 = fdiv double %130, %158
  %160 = fsub double %156, %159
  %161 = fmul double %153, %160
  br label %190

; <label>:162                                     ; preds = %132
  %163 = load float* @do_glas.rc9, align 4, !tbaa !12
  %164 = fpext float %163 to double
  %165 = fmul double %164, 9.000000e+00
  %166 = fdiv double 2.000000e+00, %165
  %167 = fpext float %136 to double
  %168 = load float* @do_glas.rc10, align 4, !tbaa !12
  %169 = fpext float %168 to double
  %170 = fmul double %169, 5.000000e+00
  %171 = fdiv double %167, %170
  %172 = fsub double %166, %171
  %173 = fmul double %129, %172
  %174 = load float* @do_glas.rc3, align 4, !tbaa !12
  %175 = fpext float %174 to double
  %176 = fmul double %175, 3.000000e+00
  %177 = fdiv double 2.000000e+00, %176
  %178 = load float* @do_glas.rc4, align 4, !tbaa !12
  %179 = fpext float %178 to double
  %180 = fmul double %179, 2.000000e+00
  %181 = fdiv double %167, %180
  %182 = fsub double %177, %181
  %183 = fmul double %130, %182
  %184 = fsub double %173, %183
  %185 = fpext float %sign.07 to double
  %186 = fdiv double %129, %170
  %187 = fdiv double %130, %180
  %188 = fsub double %186, %187
  %189 = fmul double %185, %188
  br label %190

; <label>:190                                     ; preds = %162, %139
  %fz.0.in = phi double [ %161, %139 ], [ %189, %162 ]
  %wdd.0.in = phi double [ %150, %139 ], [ %184, %162 ]
  %wdd.0 = fptrunc double %wdd.0.in to float
  %fz.0 = fptrunc double %fz.0.in to float
  %191 = fadd float %wd.19, %wdd.0
  %192 = load float* %131, align 4, !tbaa !12
  %193 = fadd float %fz.0, %192
  store float %193, float* %131, align 4, !tbaa !12
  %194 = fsub float -0.000000e+00, %sign.07
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %.loopexit, label %132

.loopexit:                                        ; preds = %190, %112
  %wd.2 = phi float [ %wd.011, %112 ], [ %191, %190 ]
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1
  %195 = icmp slt i64 %indvars.iv.next16, %103
  br i1 %195, label %104, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %wd.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %wd.2, %.loopexit ]
  %196 = getelementptr inbounds float* %ener, i64 15
  store float %wd.0.lcssa, float* %196, align 4, !tbaa !12
  br label %197

; <label>:197                                     ; preds = %95, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !8, i64 80}
!3 = !{!"", !4, i64 0, !7, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !4, i64 368}
!10 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !4, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !4, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !4, i64 200, !4, i64 204, !7, i64 208, !4, i64 212, !4, i64 216, !7, i64 220, !4, i64 224, !4, i64 228, !4, i64 232, !7, i64 236, !4, i64 240, !4, i64 244, !7, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !4, i64 288, !4, i64 292, !7, i64 296, !4, i64 300, !4, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !4, i64 328, !7, i64 332, !4, i64 336, !4, i64 340, !7, i64 344, !4, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !4, i64 368, !4, i64 372, !4, i64 376, !4, i64 380, !11, i64 384, !5, i64 448, !5, i64 520}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!12 = !{!4, !4, i64 0}
!13 = !{!10, !4, i64 372}
!14 = !{!10, !4, i64 376}
!15 = !{!10, !4, i64 380}
!16 = !{!7, !7, i64 0}
!17 = !{!10, !7, i64 236}
!18 = !{!19, !4, i64 124}
!19 = !{!"", !7, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !7, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !7, i64 52, !7, i64 56, !4, i64 60, !7, i64 64, !4, i64 68, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !4, i64 104, !4, i64 108, !8, i64 112, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !7, i64 136, !4, i64 140, !4, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !8, i64 2744, !8, i64 2752, !8, i64 2760, !7, i64 2768, !4, i64 2772, !8, i64 2776, !7, i64 2784, !8, i64 2792, !8, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !8, i64 2824, !8, i64 2832, !4, i64 2840}
!20 = !{!19, !4, i64 4}
!21 = !{!8, !8, i64 0}
!22 = !{!19, !8, i64 2824}
