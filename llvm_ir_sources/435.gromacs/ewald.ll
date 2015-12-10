; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_complex = type { float, float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }

@do_ewald.bFirst = internal unnamed_addr global i1 false
@do_ewald.nx = internal unnamed_addr global i32 0, align 4
@do_ewald.ny = internal unnamed_addr global i32 0, align 4
@do_ewald.nz = internal unnamed_addr global i32 0, align 4
@do_ewald.kmax = internal unnamed_addr global i32 0, align 4
@do_ewald.eir = internal unnamed_addr global [3 x %struct.t_complex]** null, align 8
@do_ewald.tab_xy = internal unnamed_addr global %struct.t_complex* null, align 8
@do_ewald.tab_qxyz = internal unnamed_addr global %struct.t_complex* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Will do ordinary reciprocal space Ewald sum.\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"No parallel Ewald. Use PME instead.\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"eir\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald.c\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"eir[n]\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"tab_xy\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"tab_qxyz\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"Go away! kmax = %d\0A\00", align 1

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
define float @do_ewald(%struct.__sFILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* nocapture readonly %box, %struct.t_commrec* readonly %cr, %struct.t_nsborder* nocapture readonly %nsb, [3 x float]* nocapture %lrvir, float %ewaldcoeff) #1 {
  %lll = alloca [3 x float], align 4
  %1 = fmul float %ewaldcoeff, 4.000000e+00
  %2 = fmul float %1, %ewaldcoeff
  %3 = fdiv float -1.000000e+00, %2
  %.b = load i1* @do_ewald.bFirst, align 1
  br i1 %.b, label %._crit_edge89, label %4

._crit_edge89:                                    ; preds = %0
  %.pre = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  br label %58

; <label>:4                                       ; preds = %0
  %5 = icmp eq i32 %bVerbose, 0
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %4
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %log)
  br label %8

; <label>:8                                       ; preds = %4, %6
  %9 = icmp eq %struct.t_commrec* %cr, null
  br i1 %9, label %19, label %10

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !2
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %18, label %14

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %16 = load i32* %15, align 4, !tbaa !7
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14, %10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0)) #7
  br label %19

; <label>:19                                      ; preds = %8, %14, %18
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %21 = load i32* %20, align 4, !tbaa !8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @do_ewald.nx, align 4, !tbaa !13
  %23 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %24 = load i32* %23, align 4, !tbaa !14
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @do_ewald.ny, align 4, !tbaa !13
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %27 = load i32* %26, align 4, !tbaa !15
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @do_ewald.nz, align 4, !tbaa !13
  %29 = icmp sgt i32 %25, %28
  %30 = select i1 %29, i32 %25, i32 %28
  %31 = icmp sgt i32 %22, %30
  %. = select i1 %31, i32 %22, i32 %30
  store i32 %., i32* @do_ewald.kmax, align 4, !tbaa !13
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 124, i32 %., i32 8) #7
  store i8* %32, i8** bitcast ([3 x %struct.t_complex]*** @do_ewald.eir to i8**), align 8, !tbaa !16
  %33 = load i32* @do_ewald.kmax, align 4, !tbaa !13
  %34 = icmp sgt i32 %33, 0
  %35 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %36 = load i32* %35, align 4, !tbaa !17
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %37
  %39 = load i32* %38, align 4, !tbaa !13
  br i1 %34, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %19, %.lr.ph58
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph58 ], [ 0, %19 ]
  %40 = phi i32 [ %51, %.lr.ph58 ], [ %39, %19 ]
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %40, i32 24) #7
  %42 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %43 = getelementptr inbounds [3 x %struct.t_complex]** %42, i64 %indvars.iv87
  %44 = bitcast [3 x %struct.t_complex]** %43 to i8**
  store i8* %41, i8** %44, align 8, !tbaa !16
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %45 = load i32* @do_ewald.kmax, align 4, !tbaa !13
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %indvars.iv.next88, %46
  %48 = load i32* %35, align 4, !tbaa !17
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %49
  %51 = load i32* %50, align 4, !tbaa !13
  br i1 %47, label %.lr.ph58, label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58, %19
  %.lcssa13 = phi i32 [ %39, %19 ], [ %51, %.lr.ph58 ]
  %52 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 127, i32 %.lcssa13, i32 8) #7
  store i8* %52, i8** bitcast (%struct.t_complex** @do_ewald.tab_xy to i8**), align 8, !tbaa !16
  %53 = load i32* %35, align 4, !tbaa !17
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %54
  %56 = load i32* %55, align 4, !tbaa !13
  %57 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 128, i32 %56, i32 8) #7
  store i8* %57, i8** bitcast (%struct.t_complex** @do_ewald.tab_qxyz to i8**), align 8, !tbaa !16
  store i1 true, i1* @do_ewald.bFirst, align 1
  br label %58

; <label>:58                                      ; preds = %._crit_edge89, %._crit_edge59
  %.pre-phi = phi i32* [ %.pre, %._crit_edge89 ], [ %35, %._crit_edge59 ]
  %59 = bitcast [3 x float]* %lrvir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 36, i32 4, i1 false) #6
  %60 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %61 = load float* %box, align 4, !tbaa !19
  %62 = fpext float %61 to double
  %63 = fdiv double 0x401921FB54442D18, %62
  %64 = fptrunc double %63 to float
  store float %64, float* %60, align 4, !tbaa !19
  %65 = getelementptr inbounds float* %box, i64 1
  %66 = load float* %65, align 4, !tbaa !19
  %67 = fpext float %66 to double
  %68 = fdiv double 0x401921FB54442D18, %67
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %69, float* %70, align 4, !tbaa !19
  %71 = getelementptr inbounds float* %box, i64 2
  %72 = load float* %71, align 4, !tbaa !19
  %73 = fpext float %72 to double
  %74 = fdiv double 0x401921FB54442D18, %73
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %75, float* %76, align 4, !tbaa !19
  %77 = load i32* %.pre-phi, align 4, !tbaa !17
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %78
  %80 = load i32* %79, align 4, !tbaa !13
  %81 = load i32* @do_ewald.kmax, align 4, !tbaa !13
  %82 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %83 = icmp slt i32 %81, 1
  br i1 %83, label %89, label %.preheader4.i

.preheader4.i:                                    ; preds = %58
  %84 = icmp sgt i32 %80, 0
  br i1 %84, label %.preheader3.lr.ph.i, label %tabulate_eir.exit.preheader

.preheader3.lr.ph.i:                              ; preds = %.preheader4.i
  %85 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 1
  %86 = icmp sgt i32 %81, 2
  %87 = add i32 %81, -1
  %88 = add i32 %80, -1
  br label %.preheader3.i

; <label>:89                                      ; preds = %58
  %90 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %81) #7
  tail call void @exit(i32 1) #8
  unreachable

.preheader3.i:                                    ; preds = %._crit_edge.i, %.preheader3.lr.ph.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader3.lr.ph.i ], [ %indvars.iv.next21.i, %._crit_edge.i ]
  %91 = load [3 x %struct.t_complex]** %82, align 8, !tbaa !16
  br label %93

.preheader2.i:                                    ; preds = %93
  %92 = load [3 x %struct.t_complex]** %85, align 8, !tbaa !16
  br label %96

; <label>:93                                      ; preds = %93, %.preheader3.i
  %indvars.iv.i = phi i64 [ 0, %.preheader3.i ], [ %indvars.iv.next.i, %93 ]
  %94 = getelementptr inbounds [3 x %struct.t_complex]* %91, i64 %indvars.iv20.i, i64 %indvars.iv.i, i32 0
  store float 1.000000e+00, float* %94, align 4, !tbaa !20
  %95 = getelementptr inbounds [3 x %struct.t_complex]* %91, i64 %indvars.iv20.i, i64 %indvars.iv.i, i32 1
  store float 0.000000e+00, float* %95, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %.preheader2.i, label %93

.preheader1.i:                                    ; preds = %96
  br i1 %86, label %.preheader.i, label %._crit_edge.i

; <label>:96                                      ; preds = %96, %.preheader2.i
  %indvars.iv11.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next12.i, %96 ]
  %97 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv20.i, i64 %indvars.iv11.i
  %98 = load float* %97, align 4, !tbaa !19
  %99 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 %indvars.iv11.i
  %100 = load float* %99, align 4, !tbaa !19
  %101 = fmul float %98, %100
  %102 = fpext float %101 to double
  %103 = tail call double @cos(double %102) #9
  %104 = fptrunc double %103 to float
  %105 = getelementptr inbounds [3 x %struct.t_complex]* %92, i64 %indvars.iv20.i, i64 %indvars.iv11.i, i32 0
  store float %104, float* %105, align 4, !tbaa !20
  %106 = load float* %97, align 4, !tbaa !19
  %107 = fmul float %106, %100
  %108 = fpext float %107 to double
  %109 = tail call double @sin(double %108) #9
  %110 = fptrunc double %109 to float
  %111 = getelementptr inbounds [3 x %struct.t_complex]* %92, i64 %indvars.iv20.i, i64 %indvars.iv11.i, i32 1
  store float %110, float* %111, align 4, !tbaa !22
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.i = icmp eq i64 %indvars.iv.next12.i, 3
  br i1 %exitcond13.i, label %.preheader1.i, label %96

.preheader.i:                                     ; preds = %.preheader1.i, %139
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %139 ], [ 2, %.preheader1.i ]
  %112 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 %indvars.iv17.i
  %113 = add nsw i64 %indvars.iv17.i, -1
  %114 = getelementptr inbounds [3 x %struct.t_complex]** %82, i64 %113
  br label %115

; <label>:115                                     ; preds = %115, %.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next15.i, %115 ]
  %116 = load [3 x %struct.t_complex]** %112, align 8, !tbaa !16
  %117 = getelementptr inbounds [3 x %struct.t_complex]* %116, i64 %indvars.iv20.i, i64 %indvars.iv14.i
  %118 = load [3 x %struct.t_complex]** %114, align 8, !tbaa !16
  %119 = getelementptr inbounds [3 x %struct.t_complex]* %118, i64 %indvars.iv20.i, i64 %indvars.iv14.i
  %120 = load [3 x %struct.t_complex]** %85, align 8, !tbaa !16
  %121 = getelementptr inbounds [3 x %struct.t_complex]* %120, i64 %indvars.iv20.i, i64 %indvars.iv14.i
  %122 = bitcast %struct.t_complex* %119 to <2 x float>*
  %123 = load <2 x float>* %122, align 1
  %124 = bitcast %struct.t_complex* %121 to <2 x float>*
  %125 = load <2 x float>* %124, align 1
  %126 = extractelement <2 x float> %123, i32 0
  %127 = extractelement <2 x float> %125, i32 0
  %128 = fmul float %126, %127
  %129 = extractelement <2 x float> %123, i32 1
  %130 = extractelement <2 x float> %125, i32 1
  %131 = fmul float %129, %130
  %132 = fsub float %128, %131
  %133 = fmul float %126, %130
  %134 = fmul float %129, %127
  %135 = fadd float %133, %134
  %136 = insertelement <2 x float> undef, float %132, i32 0
  %137 = insertelement <2 x float> %136, float %135, i32 1
  %138 = bitcast %struct.t_complex* %117 to <2 x float>*
  store <2 x float> %137, <2 x float>* %138, align 4
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond16.i = icmp eq i64 %indvars.iv.next15.i, 3
  br i1 %exitcond16.i, label %139, label %115

; <label>:139                                     ; preds = %115
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv17.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %87
  br i1 %exitcond, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %139, %.preheader1.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv20.i to i32
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %88
  br i1 %exitcond86, label %tabulate_eir.exit.preheader, label %.preheader3.i

tabulate_eir.exit.preheader:                      ; preds = %._crit_edge.i, %.preheader4.i
  %140 = load i32* @do_ewald.nx, align 4, !tbaa !13
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %.lr.ph54, label %tabulate_eir.exit._crit_edge

.lr.ph54:                                         ; preds = %tabulate_eir.exit.preheader
  %142 = load float* %60, align 4, !tbaa !19
  %143 = fpext float %3 to double
  %144 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0
  %145 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1
  %146 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2
  %147 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1
  %148 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2
  %149 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2
  br label %150

; <label>:150                                     ; preds = %.lr.ph54, %tabulate_eir.exit
  %indvars.iv83 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next84, %tabulate_eir.exit ]
  %energy.053 = phi float [ 0.000000e+00, %.lr.ph54 ], [ %energy.1.lcssa, %tabulate_eir.exit ]
  %lowiy.052 = phi i32 [ 0, %.lr.ph54 ], [ %lowiy.1.lcssa, %tabulate_eir.exit ]
  %lowiz.051 = phi i32 [ 1, %.lr.ph54 ], [ %lowiz.1.lcssa, %tabulate_eir.exit ]
  %151 = trunc i64 %indvars.iv83 to i32
  %152 = sitofp i32 %151 to float
  %153 = fmul float %152, %142
  %154 = load i32* @do_ewald.ny, align 4, !tbaa !13
  %155 = icmp slt i32 %lowiy.052, %154
  br i1 %155, label %.lr.ph44, label %tabulate_eir.exit

.lr.ph44:                                         ; preds = %150
  %156 = fmul float %153, %153
  %157 = sext i32 %lowiy.052 to i64
  br label %158

; <label>:158                                     ; preds = %.lr.ph44, %407
  %indvars.iv81 = phi i64 [ %157, %.lr.ph44 ], [ %indvars.iv.next82, %407 ]
  %energy.142 = phi float [ %energy.053, %.lr.ph44 ], [ %energy.2.lcssa, %407 ]
  %lowiz.141 = phi i32 [ %lowiz.051, %.lr.ph44 ], [ %lowiz.2.lcssa, %407 ]
  %159 = trunc i64 %indvars.iv81 to i32
  %160 = sitofp i32 %159 to float
  %161 = fmul float %160, %69
  %162 = icmp sgt i64 %indvars.iv81, -1
  %163 = load i32* %.pre-phi, align 4, !tbaa !17
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %164
  %166 = load i32* %165, align 4, !tbaa !13
  %167 = icmp sgt i32 %166, 0
  br i1 %162, label %.preheader10, label %.preheader11

.preheader11:                                     ; preds = %158
  br i1 %167, label %.lr.ph16, label %.preheader9

.lr.ph16:                                         ; preds = %.preheader11
  %168 = sub nsw i64 0, %indvars.iv81
  br label %207

.preheader10:                                     ; preds = %158
  br i1 %167, label %.lr.ph18, label %.preheader9

.preheader9:                                      ; preds = %207, %.lr.ph18, %.preheader11, %.preheader10
  %169 = phi i32 [ %163, %.preheader10 ], [ %163, %.preheader11 ], [ %201, %.lr.ph18 ], [ %234, %207 ]
  %170 = load i32* @do_ewald.nz, align 4, !tbaa !13
  %171 = icmp slt i32 %lowiz.141, %170
  br i1 %171, label %.lr.ph35, label %407

.lr.ph35:                                         ; preds = %.preheader9
  %172 = fmul float %161, %161
  %173 = fadd float %156, %172
  %174 = sext i32 %lowiz.141 to i64
  br label %240

.lr.ph18:                                         ; preds = %.preheader10, %.lr.ph18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph18 ], [ 0, %.preheader10 ]
  %175 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !16
  %176 = getelementptr inbounds %struct.t_complex* %175, i64 %indvars.iv69
  %177 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %178 = getelementptr inbounds [3 x %struct.t_complex]** %177, i64 %indvars.iv83
  %179 = load [3 x %struct.t_complex]** %178, align 8, !tbaa !16
  %180 = getelementptr inbounds [3 x %struct.t_complex]* %179, i64 %indvars.iv69, i64 0
  %181 = getelementptr inbounds [3 x %struct.t_complex]** %177, i64 %indvars.iv81
  %182 = load [3 x %struct.t_complex]** %181, align 8, !tbaa !16
  %183 = getelementptr inbounds [3 x %struct.t_complex]* %182, i64 %indvars.iv69, i64 1
  %184 = bitcast %struct.t_complex* %180 to <2 x float>*
  %185 = load <2 x float>* %184, align 1
  %186 = bitcast %struct.t_complex* %183 to <2 x float>*
  %187 = load <2 x float>* %186, align 1
  %188 = extractelement <2 x float> %185, i32 0
  %189 = extractelement <2 x float> %187, i32 0
  %190 = fmul float %188, %189
  %191 = extractelement <2 x float> %185, i32 1
  %192 = extractelement <2 x float> %187, i32 1
  %193 = fmul float %191, %192
  %194 = fsub float %190, %193
  %195 = fmul float %188, %192
  %196 = fmul float %191, %189
  %197 = fadd float %195, %196
  %198 = insertelement <2 x float> undef, float %194, i32 0
  %199 = insertelement <2 x float> %198, float %197, i32 1
  %200 = bitcast %struct.t_complex* %176 to <2 x float>*
  store <2 x float> %199, <2 x float>* %200, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %201 = load i32* %.pre-phi, align 4, !tbaa !17
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %202
  %204 = load i32* %203, align 4, !tbaa !13
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %indvars.iv.next70, %205
  br i1 %206, label %.lr.ph18, label %.preheader9

; <label>:207                                     ; preds = %.lr.ph16, %207
  %indvars.iv67 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next68, %207 ]
  %208 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !16
  %209 = getelementptr inbounds %struct.t_complex* %208, i64 %indvars.iv67
  %210 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %211 = getelementptr inbounds [3 x %struct.t_complex]** %210, i64 %indvars.iv83
  %212 = load [3 x %struct.t_complex]** %211, align 8, !tbaa !16
  %213 = getelementptr inbounds [3 x %struct.t_complex]* %212, i64 %indvars.iv67, i64 0
  %214 = getelementptr inbounds [3 x %struct.t_complex]** %210, i64 %168
  %215 = load [3 x %struct.t_complex]** %214, align 8, !tbaa !16
  %216 = getelementptr inbounds [3 x %struct.t_complex]* %215, i64 %indvars.iv67, i64 1
  %217 = bitcast %struct.t_complex* %213 to <2 x float>*
  %218 = load <2 x float>* %217, align 1
  %219 = bitcast %struct.t_complex* %216 to <2 x float>*
  %220 = load <2 x float>* %219, align 1
  %221 = extractelement <2 x float> %218, i32 0
  %222 = extractelement <2 x float> %220, i32 0
  %223 = fmul float %221, %222
  %224 = extractelement <2 x float> %218, i32 1
  %225 = extractelement <2 x float> %220, i32 1
  %226 = fmul float %224, %225
  %227 = fadd float %223, %226
  %228 = fmul float %224, %222
  %229 = fmul float %221, %225
  %230 = fsub float %228, %229
  %231 = insertelement <2 x float> undef, float %227, i32 0
  %232 = insertelement <2 x float> %231, float %230, i32 1
  %233 = bitcast %struct.t_complex* %209 to <2 x float>*
  store <2 x float> %232, <2 x float>* %233, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %234 = load i32* %.pre-phi, align 4, !tbaa !17
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %235
  %237 = load i32* %236, align 4, !tbaa !13
  %238 = sext i32 %237 to i64
  %239 = icmp slt i64 %indvars.iv.next68, %238
  br i1 %239, label %207, label %.preheader9

; <label>:240                                     ; preds = %.lr.ph35, %._crit_edge32
  %241 = phi i32 [ %169, %.lr.ph35 ], [ %265, %._crit_edge32 ]
  %indvars.iv79 = phi i64 [ %174, %.lr.ph35 ], [ %indvars.iv.next80, %._crit_edge32 ]
  %energy.234 = phi float [ %energy.142, %.lr.ph35 ], [ %357, %._crit_edge32 ]
  %242 = trunc i64 %indvars.iv79 to i32
  %243 = sitofp i32 %242 to float
  %244 = fmul float %243, %75
  %245 = fmul float %244, %244
  %246 = fadd float %173, %245
  %247 = fmul float %3, %246
  %248 = fpext float %247 to double
  %249 = tail call double @exp(double %248) #9
  %250 = fpext float %246 to double
  %251 = fdiv double %249, %250
  %252 = fptrunc double %251 to float
  %253 = fpext float %252 to double
  %254 = fmul double %253, 2.000000e+00
  %255 = fdiv double 1.000000e+00, %250
  %256 = fsub double %255, %143
  %257 = fmul double %256, %254
  %258 = fptrunc double %257 to float
  %259 = icmp sgt i64 %indvars.iv79, -1
  %260 = sext i32 %241 to i64
  %261 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %260
  %262 = load i32* %261, align 4, !tbaa !13
  %263 = icmp sgt i32 %262, 0
  br i1 %259, label %.preheader6, label %.preheader7

.preheader7:                                      ; preds = %240
  br i1 %263, label %.lr.ph20, label %.preheader

.lr.ph20:                                         ; preds = %.preheader7
  %264 = sub nsw i64 0, %indvars.iv79
  br label %307

.preheader6:                                      ; preds = %240
  br i1 %263, label %.lr.ph22, label %.preheader

.preheader:                                       ; preds = %307, %.lr.ph22, %.preheader7, %.preheader6
  %265 = phi i32 [ %241, %.preheader6 ], [ %241, %.preheader7 ], [ %301, %.lr.ph22 ], [ %337, %307 ]
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %266
  %268 = load i32* %267, align 4, !tbaa !13
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %.preheader
  %270 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !16
  %271 = sext i32 %268 to i64
  br label %343

.lr.ph22:                                         ; preds = %.preheader6, %.lr.ph22
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph22 ], [ 0, %.preheader6 ]
  %272 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !16
  %273 = getelementptr inbounds %struct.t_complex* %272, i64 %indvars.iv73
  %274 = getelementptr inbounds float* %charge, i64 %indvars.iv73
  %275 = load float* %274, align 4, !tbaa !19
  %276 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !16
  %277 = getelementptr inbounds %struct.t_complex* %276, i64 %indvars.iv73
  %278 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %279 = getelementptr inbounds [3 x %struct.t_complex]** %278, i64 %indvars.iv79
  %280 = load [3 x %struct.t_complex]** %279, align 8, !tbaa !16
  %281 = getelementptr inbounds [3 x %struct.t_complex]* %280, i64 %indvars.iv73, i64 2
  %282 = bitcast %struct.t_complex* %277 to <2 x float>*
  %283 = load <2 x float>* %282, align 1
  %284 = bitcast %struct.t_complex* %281 to <2 x float>*
  %285 = load <2 x float>* %284, align 1
  %286 = extractelement <2 x float> %283, i32 0
  %287 = extractelement <2 x float> %285, i32 0
  %288 = fmul float %286, %287
  %289 = extractelement <2 x float> %283, i32 1
  %290 = extractelement <2 x float> %285, i32 1
  %291 = fmul float %289, %290
  %292 = fsub float %288, %291
  %293 = fmul float %286, %290
  %294 = fmul float %289, %287
  %295 = fadd float %293, %294
  %296 = fmul float %275, %292
  %297 = fmul float %275, %295
  %298 = insertelement <2 x float> undef, float %296, i32 0
  %299 = insertelement <2 x float> %298, float %297, i32 1
  %300 = bitcast %struct.t_complex* %273 to <2 x float>*
  store <2 x float> %299, <2 x float>* %300, align 4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %301 = load i32* %.pre-phi, align 4, !tbaa !17
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %302
  %304 = load i32* %303, align 4, !tbaa !13
  %305 = sext i32 %304 to i64
  %306 = icmp slt i64 %indvars.iv.next74, %305
  br i1 %306, label %.lr.ph22, label %.preheader

; <label>:307                                     ; preds = %.lr.ph20, %307
  %indvars.iv71 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next72, %307 ]
  %308 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !16
  %309 = getelementptr inbounds %struct.t_complex* %308, i64 %indvars.iv71
  %310 = getelementptr inbounds float* %charge, i64 %indvars.iv71
  %311 = load float* %310, align 4, !tbaa !19
  %312 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !16
  %313 = getelementptr inbounds %struct.t_complex* %312, i64 %indvars.iv71
  %314 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !16
  %315 = getelementptr inbounds [3 x %struct.t_complex]** %314, i64 %264
  %316 = load [3 x %struct.t_complex]** %315, align 8, !tbaa !16
  %317 = getelementptr inbounds [3 x %struct.t_complex]* %316, i64 %indvars.iv71, i64 2
  %318 = bitcast %struct.t_complex* %313 to <2 x float>*
  %319 = load <2 x float>* %318, align 1
  %320 = bitcast %struct.t_complex* %317 to <2 x float>*
  %321 = load <2 x float>* %320, align 1
  %322 = extractelement <2 x float> %319, i32 0
  %323 = extractelement <2 x float> %321, i32 0
  %324 = fmul float %322, %323
  %325 = extractelement <2 x float> %319, i32 1
  %326 = extractelement <2 x float> %321, i32 1
  %327 = fmul float %325, %326
  %328 = fadd float %324, %327
  %329 = fmul float %325, %323
  %330 = fmul float %322, %326
  %331 = fsub float %329, %330
  %332 = fmul float %311, %328
  %333 = fmul float %311, %331
  %334 = insertelement <2 x float> undef, float %332, i32 0
  %335 = insertelement <2 x float> %334, float %333, i32 1
  %336 = bitcast %struct.t_complex* %309 to <2 x float>*
  store <2 x float> %335, <2 x float>* %336, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %337 = load i32* %.pre-phi, align 4, !tbaa !17
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %338
  %340 = load i32* %339, align 4, !tbaa !13
  %341 = sext i32 %340 to i64
  %342 = icmp slt i64 %indvars.iv.next72, %341
  br i1 %342, label %307, label %.preheader

; <label>:343                                     ; preds = %.lr.ph26, %343
  %indvars.iv75 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next76, %343 ]
  %344 = phi <2 x float> [ zeroinitializer, %.lr.ph26 ], [ %348, %343 ]
  %345 = getelementptr inbounds %struct.t_complex* %270, i64 %indvars.iv75, i32 0
  %346 = bitcast float* %345 to <2 x float>*
  %347 = load <2 x float>* %346, align 4, !tbaa !19
  %348 = fadd <2 x float> %344, %347
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %349 = icmp slt i64 %indvars.iv.next76, %271
  br i1 %349, label %343, label %._crit_edge27

._crit_edge27:                                    ; preds = %343, %.preheader
  %350 = phi <2 x float> [ zeroinitializer, %.preheader ], [ %348, %343 ]
  %351 = extractelement <2 x float> %350, i32 0
  %352 = fmul float %351, %351
  %353 = extractelement <2 x float> %350, i32 1
  %354 = fmul float %353, %353
  %355 = fadd float %354, %352
  %356 = fmul float %252, %355
  %357 = fadd float %energy.234, %356
  %358 = fmul float %258, %355
  %359 = fmul float %153, %358
  %360 = fmul float %153, %359
  %361 = load float* %144, align 4, !tbaa !19
  %362 = fsub float %361, %360
  store float %362, float* %144, align 4, !tbaa !19
  %363 = fmul float %161, %359
  %364 = load float* %145, align 4, !tbaa !19
  %365 = fsub float %364, %363
  store float %365, float* %145, align 4, !tbaa !19
  %366 = fmul float %244, %359
  %367 = load float* %146, align 4, !tbaa !19
  %368 = fsub float %367, %366
  store float %368, float* %146, align 4, !tbaa !19
  %369 = fmul float %161, %358
  %370 = fmul float %161, %369
  %371 = load float* %147, align 4, !tbaa !19
  %372 = fsub float %371, %370
  store float %372, float* %147, align 4, !tbaa !19
  %373 = fmul float %244, %369
  %374 = load float* %148, align 4, !tbaa !19
  %375 = fsub float %374, %373
  store float %375, float* %148, align 4, !tbaa !19
  %376 = fmul float %244, %358
  %377 = fmul float %244, %376
  %378 = load float* %149, align 4, !tbaa !19
  %379 = fsub float %378, %377
  store float %379, float* %149, align 4, !tbaa !19
  br i1 %269, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %._crit_edge27
  %380 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !16
  %381 = sext i32 %268 to i64
  br label %382

; <label>:382                                     ; preds = %.lr.ph31, %382
  %indvars.iv77 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next78, %382 ]
  %383 = getelementptr inbounds %struct.t_complex* %380, i64 %indvars.iv77, i32 1
  %384 = load float* %383, align 4, !tbaa !22
  %385 = fmul float %351, %384
  %386 = getelementptr inbounds %struct.t_complex* %380, i64 %indvars.iv77, i32 0
  %387 = load float* %386, align 4, !tbaa !20
  %388 = fmul float %353, %387
  %389 = fsub float %385, %388
  %390 = fmul float %252, %389
  %391 = fmul float %153, %390
  %392 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 0
  %393 = load float* %392, align 4, !tbaa !19
  %394 = fadd float %393, %391
  store float %394, float* %392, align 4, !tbaa !19
  %395 = fmul float %161, %390
  %396 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 1
  %397 = load float* %396, align 4, !tbaa !19
  %398 = fadd float %397, %395
  store float %398, float* %396, align 4, !tbaa !19
  %399 = fmul float %244, %390
  %400 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv77, i64 2
  %401 = load float* %400, align 4, !tbaa !19
  %402 = fadd float %401, %399
  store float %402, float* %400, align 4, !tbaa !19
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %403 = icmp slt i64 %indvars.iv.next78, %381
  br i1 %403, label %382, label %._crit_edge32

._crit_edge32:                                    ; preds = %382, %._crit_edge27
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %404 = sext i32 %170 to i64
  %405 = icmp slt i64 %indvars.iv.next80, %404
  br i1 %405, label %240, label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge32
  %406 = sub nsw i32 1, %170
  br label %407

; <label>:407                                     ; preds = %._crit_edge36, %.preheader9
  %energy.2.lcssa = phi float [ %357, %._crit_edge36 ], [ %energy.142, %.preheader9 ]
  %lowiz.2.lcssa = phi i32 [ %406, %._crit_edge36 ], [ %lowiz.141, %.preheader9 ]
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  %408 = sext i32 %154 to i64
  %409 = icmp slt i64 %indvars.iv.next82, %408
  br i1 %409, label %158, label %._crit_edge45

._crit_edge45:                                    ; preds = %407
  %410 = sub nsw i32 1, %154
  br label %tabulate_eir.exit

tabulate_eir.exit:                                ; preds = %._crit_edge45, %150
  %energy.1.lcssa = phi float [ %energy.2.lcssa, %._crit_edge45 ], [ %energy.053, %150 ]
  %lowiy.1.lcssa = phi i32 [ %410, %._crit_edge45 ], [ %lowiy.052, %150 ]
  %lowiz.1.lcssa = phi i32 [ %lowiz.2.lcssa, %._crit_edge45 ], [ %lowiz.051, %150 ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %411 = sext i32 %140 to i64
  %412 = icmp slt i64 %indvars.iv.next84, %411
  br i1 %412, label %150, label %tabulate_eir.exit._crit_edge

tabulate_eir.exit._crit_edge:                     ; preds = %tabulate_eir.exit, %tabulate_eir.exit.preheader
  %energy.0.lcssa = phi float [ 0.000000e+00, %tabulate_eir.exit.preheader ], [ %energy.1.lcssa, %tabulate_eir.exit ]
  %413 = load float* %box, align 4, !tbaa !19
  %414 = load float* %65, align 4, !tbaa !19
  %415 = fmul float %413, %414
  %416 = load float* %71, align 4, !tbaa !19
  %417 = fmul float %415, %416
  %418 = fpext float %417 to double
  %419 = fdiv double 0x402921FB54442D18, %418
  %420 = fmul double %419, 3.320636e+02
  %421 = fmul double %420, 4.184000e+00
  %422 = fmul double %421, 1.000000e-01
  %423 = fptrunc double %422 to float
  %424 = load i32* %.pre-phi, align 4, !tbaa !17
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %425
  %427 = load i32* %426, align 4, !tbaa !13
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tabulate_eir.exit._crit_edge
  %429 = fmul float %423, 2.000000e+00
  %430 = sext i32 %427 to i64
  br label %431

; <label>:431                                     ; preds = %.lr.ph, %431
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %431 ]
  %432 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %433 = load float* %432, align 4, !tbaa !19
  %434 = fmul float %429, %433
  store float %434, float* %432, align 4, !tbaa !19
  %435 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %436 = load float* %435, align 4, !tbaa !19
  %437 = fmul float %429, %436
  store float %437, float* %435, align 4, !tbaa !19
  %438 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  %439 = load float* %438, align 4, !tbaa !19
  %440 = fmul float %429, %439
  store float %440, float* %438, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %441 = icmp slt i64 %indvars.iv.next, %430
  br i1 %441, label %431, label %._crit_edge

._crit_edge:                                      ; preds = %431, %tabulate_eir.exit._crit_edge
  %442 = fpext float %423 to double
  %443 = fmul double %442, -5.000000e-01
  %444 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0
  %445 = load float* %444, align 4, !tbaa !19
  %446 = fadd float %energy.0.lcssa, %445
  %447 = fpext float %446 to double
  %448 = fmul double %443, %447
  %449 = fptrunc double %448 to float
  store float %449, float* %444, align 4, !tbaa !19
  %450 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1
  %451 = load float* %450, align 4, !tbaa !19
  %452 = fpext float %451 to double
  %453 = fmul double %443, %452
  %454 = fptrunc double %453 to float
  store float %454, float* %450, align 4, !tbaa !19
  %455 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2
  %456 = load float* %455, align 4, !tbaa !19
  %457 = fpext float %456 to double
  %458 = fmul double %443, %457
  %459 = fptrunc double %458 to float
  store float %459, float* %455, align 4, !tbaa !19
  %460 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1
  %461 = load float* %460, align 4, !tbaa !19
  %462 = fadd float %energy.0.lcssa, %461
  %463 = fpext float %462 to double
  %464 = fmul double %443, %463
  %465 = fptrunc double %464 to float
  store float %465, float* %460, align 4, !tbaa !19
  %466 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2
  %467 = load float* %466, align 4, !tbaa !19
  %468 = fpext float %467 to double
  %469 = fmul double %443, %468
  %470 = fptrunc double %469 to float
  store float %470, float* %466, align 4, !tbaa !19
  %471 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2
  %472 = load float* %471, align 4, !tbaa !19
  %473 = fadd float %energy.0.lcssa, %472
  %474 = fpext float %473 to double
  %475 = fmul double %443, %474
  %476 = fptrunc double %475 to float
  store float %476, float* %471, align 4, !tbaa !19
  %477 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 0
  store float %454, float* %477, align 4, !tbaa !19
  %478 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 0
  store float %459, float* %478, align 4, !tbaa !19
  %479 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 1
  store float %470, float* %479, align 4, !tbaa !19
  %480 = fmul float %energy.0.lcssa, %423
  ret float %480
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #3

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 4}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 20}
!8 = !{!9, !4, i64 68}
!9 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !10, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !10, i64 120, !5, i64 124, !5, i64 160, !4, i64 196, !10, i64 200, !10, i64 204, !4, i64 208, !10, i64 212, !10, i64 216, !4, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !4, i64 236, !10, i64 240, !10, i64 244, !4, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !4, i64 272, !4, i64 276, !4, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !4, i64 296, !10, i64 300, !10, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !10, i64 328, !4, i64 332, !10, i64 336, !10, i64 340, !4, i64 344, !10, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !10, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !11, i64 384, !5, i64 448, !5, i64 520}
!10 = !{!"float", !5, i64 0}
!11 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!9, !4, i64 72}
!15 = !{!9, !4, i64 76}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !4, i64 0}
!18 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !10, i64 4}
!22 = !{!21, !10, i64 4}
