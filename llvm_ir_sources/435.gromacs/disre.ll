; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/disre.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@interaction_function = external global [44 x %struct.t_interaction_function]
@.str = private unnamed_addr constant [7 x i8] c"dd->rt\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/disre.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"dd->rav\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"dd->Rt_6\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"dd->Rtl_6\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"There are %d distance restraints involving %d atom pairs\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"the number of distance restraints\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"Torda89a\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"vtot is inf: %f\0A\00", align 1

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
define void @init_disres(%struct.__sFILE* %log, i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, %struct.t_inputrec* nocapture readonly %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* nocapture %fcd) #3 {
  %1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 0
  store i32 %2, i32* %3, align 4, !tbaa !18
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %5 = bitcast float* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !20
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 2
  %8 = bitcast float* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %10 = load float* %9, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 3
  store float %10, float* %11, align 4, !tbaa !23
  %fabsf = tail call float @fabsf(float %10) #4
  %12 = fpext float %fabsf to double
  %13 = fcmp olt double %12, 1.200000e-38
  br i1 %13, label %24, label %14

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %16 = load i32* %15, align 4, !tbaa !24
  %17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %18 = load float* %17, align 4, !tbaa !25
  %19 = fdiv float %18, %10
  %20 = fsub float -0.000000e+00, %19
  %21 = fpext float %20 to double
  %22 = tail call double @exp(double %21) #8
  %23 = fptrunc double %22 to float
  br label %24

; <label>:24                                      ; preds = %0, %14
  %.sink2 = phi i32 [ %16, %14 ], [ 0, %0 ]
  %.sink = phi float [ %23, %14 ], [ 0.000000e+00, %0 ]
  %25 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 1
  store i32 %.sink2, i32* %25, align 4
  %26 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 4
  store float %.sink, float* %26, align 4
  %27 = fsub float 1.000000e+00, %.sink
  %28 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 5
  store float %27, float* %28, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  store float 1.000000e+00, float* %29, align 4, !tbaa !27
  %30 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 7
  store i32 0, i32* %30, align 4, !tbaa !28
  %31 = icmp sgt i32 %nfa, 0
  br i1 %31, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %24
  %32 = sext i32 %nfa to i64
  br label %33

; <label>:33                                      ; preds = %.lr.ph, %54
  %34 = phi i32 [ 0, %.lr.ph ], [ %55, %54 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %54 ]
  %35 = trunc i64 %indvars.iv to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

; <label>:37                                      ; preds = %33
  %38 = add nsw i64 %indvars.iv, -3
  %39 = getelementptr inbounds i32* %forceatoms, i64 %38
  %40 = load i32* %39, align 4, !tbaa !29
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %union.t_iparams* %ip, i64 %41, i32 0, i32 5
  %43 = bitcast float* %42 to i32*
  %44 = load i32* %43, align 4, !tbaa !30
  %45 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %46 = load i32* %45, align 4, !tbaa !29
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.t_iparams* %ip, i64 %47, i32 0, i32 5
  %49 = bitcast float* %48 to i32*
  %50 = load i32* %49, align 4, !tbaa !30
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %54, label %52

; <label>:52                                      ; preds = %37, %33
  %53 = add nsw i32 %34, 1
  store i32 %53, i32* %30, align 4, !tbaa !28
  br label %54

; <label>:54                                      ; preds = %37, %52
  %55 = phi i32 [ %34, %37 ], [ %53, %52 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %56 = icmp slt i64 %indvars.iv.next, %32
  br i1 %56, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %54, %24
  %57 = load i32* getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 21, i32 2), align 8, !tbaa !32
  %58 = add nsw i32 %57, 1
  %59 = sdiv i32 %nfa, %58
  %60 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 8
  store i32 %59, i32* %60, align 4, !tbaa !35
  %61 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 74, i32 %59, i32 4) #7
  %62 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %63 = bitcast float** %62 to i8**
  store i8* %61, i8** %63, align 8, !tbaa !36
  %64 = load i32* %60, align 4, !tbaa !35
  %65 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %64, i32 4) #7
  %66 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %67 = bitcast float** %66 to i8**
  store i8* %65, i8** %67, align 8, !tbaa !37
  %68 = load i32* %30, align 4, !tbaa !28
  %69 = shl nsw i32 %68, 1
  %70 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 79, i32 %69, i32 4) #7
  %71 = bitcast i8* %70 to float*
  %72 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  %73 = bitcast float** %72 to i8**
  store i8* %70, i8** %73, align 8, !tbaa !38
  %74 = load i32* %30, align 4, !tbaa !28
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float* %71, i64 %75
  %77 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  store float* %76, float** %77, align 8, !tbaa !39
  %78 = icmp ne %struct.t_commrec* %mcr, null
  br i1 %78, label %79, label %83

; <label>:79                                      ; preds = %._crit_edge
  %80 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 82, i32 %74, i32 4) #7
  %81 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %82 = bitcast float** %81 to i8**
  store i8* %80, i8** %82, align 8, !tbaa !40
  br label %87

; <label>:83                                      ; preds = %._crit_edge
  %84 = ptrtoint i8* %70 to i64
  %85 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %86 = bitcast float** %85 to i64*
  store i64 %84, i64* %86, align 8, !tbaa !40
  br label %87

; <label>:87                                      ; preds = %83, %79
  %88 = load i32* %60, align 4, !tbaa !35
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %99

; <label>:90                                      ; preds = %87
  %91 = icmp eq %struct.__sFILE* %log, null
  br i1 %91, label %95, label %92

; <label>:92                                      ; preds = %90
  %93 = load i32* %30, align 4, !tbaa !28
  %94 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i32 %93, i32 %88) #7
  br label %95

; <label>:95                                      ; preds = %90, %92
  br i1 %78, label %96, label %98

; <label>:96                                      ; preds = %95
  %97 = load i32* %30, align 4, !tbaa !41
  tail call void @check_multi_int(%struct.__sFILE* %log, %struct.t_commrec* %mcr, i32 %97, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0)) #7
  br label %98

; <label>:98                                      ; preds = %96, %95
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #7
  br label %99

; <label>:99                                      ; preds = %98, %87
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @check_multi_int(%struct.__sFILE*, %struct.t_commrec*, i32, i8*) #1

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_disres_R_6(%struct.t_commrec* %mcr, i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, [3 x float]* nocapture readonly %x, %struct.t_fcdata* nocapture %fcd) #3 {
  %1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 4
  %2 = load float* %1, align 4, !tbaa !44
  %3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 5
  %4 = load float* %3, align 4, !tbaa !26
  %5 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %6 = load float** %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %8 = load float** %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %10 = load float** %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  %12 = load float** %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  %14 = load float** %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  %16 = load float* %15, align 4, !tbaa !27
  %17 = fmul float %2, %16
  store float %17, float* %15, align 4, !tbaa !27
  %18 = fpext float %17 to double
  %19 = fsub double 1.000000e+00, %18
  %20 = fdiv double 1.000000e+00, %19
  %21 = fptrunc double %20 to float
  %22 = icmp ne %struct.t_commrec* %mcr, null
  br i1 %22, label %23, label %29

; <label>:23                                      ; preds = %0
  %24 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %25 = load i32* %24, align 4, !tbaa !45
  %26 = sitofp i32 %25 to double
  %27 = fdiv double 1.000000e+00, %26
  %28 = fptrunc double %27 to float
  br label %29

; <label>:29                                      ; preds = %23, %0
  %invn.0 = phi float [ %28, %23 ], [ 0.000000e+00, %0 ]
  %30 = icmp sgt i32 %nfa, 0
  br i1 %30, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %29
  %31 = fsub float %2, %17
  br label %32

; <label>:32                                      ; preds = %.lr.ph6, %107
  %indvars.iv8 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next9, %107 ]
  %fa.05 = phi i32 [ 0, %.lr.ph6 ], [ %fa.1.lcssa, %107 ]
  %33 = sext i32 %fa.05 to i64
  %34 = getelementptr inbounds i32* %forceatoms, i64 %33
  %35 = load i32* %34, align 4, !tbaa !29
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %union.t_iparams* %ip, i64 %36, i32 0, i32 5
  %38 = bitcast float* %37 to i32*
  %39 = load i32* %38, align 4, !tbaa !30
  %40 = getelementptr inbounds float* %14, i64 %indvars.iv8
  store float 0.000000e+00, float* %40, align 4, !tbaa !47
  %41 = getelementptr inbounds float* %12, i64 %indvars.iv8
  store float 0.000000e+00, float* %41, align 4, !tbaa !47
  %42 = icmp slt i32 %fa.05, %nfa
  br i1 %42, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %32, %._crit_edge10
  %43 = phi i32 [ %97, %._crit_edge10 ], [ %fa.05, %32 ]
  %fa.1116 = phi i32 [ %94, %._crit_edge10 ], [ %fa.05, %32 ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next, %._crit_edge10 ], [ %33, %32 ]
  %44 = sdiv i32 %43, 3
  %45 = add nsw i64 %indvars.iv15, 1
  %46 = getelementptr inbounds i32* %forceatoms, i64 %45
  %47 = load i32* %46, align 4, !tbaa !29
  %48 = add nsw i64 %indvars.iv15, 2
  %49 = getelementptr inbounds i32* %forceatoms, i64 %48
  %50 = load i32* %49, align 4, !tbaa !29
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds [3 x float]* %x, i64 %51, i64 0
  %53 = sext i32 %50 to i64
  %54 = getelementptr inbounds [3 x float]* %x, i64 %53, i64 0
  %55 = load float* %52, align 4, !tbaa !47
  %56 = load float* %54, align 4, !tbaa !47
  %57 = fsub float %55, %56
  %58 = getelementptr inbounds [3 x float]* %x, i64 %51, i64 1
  %59 = load float* %58, align 4, !tbaa !47
  %60 = getelementptr inbounds [3 x float]* %x, i64 %53, i64 1
  %61 = load float* %60, align 4, !tbaa !47
  %62 = fsub float %59, %61
  %63 = getelementptr inbounds [3 x float]* %x, i64 %51, i64 2
  %64 = load float* %63, align 4, !tbaa !47
  %65 = getelementptr inbounds [3 x float]* %x, i64 %53, i64 2
  %66 = load float* %65, align 4, !tbaa !47
  %67 = fsub float %64, %66
  %68 = fmul float %57, %57
  %69 = fmul float %62, %62
  %70 = fadd float %68, %69
  %71 = fmul float %67, %67
  %72 = fadd float %70, %71
  %73 = fpext float %72 to double
  %74 = tail call double @sqrt(double %73) #8
  %75 = fdiv double 1.000000e+00, %74
  %76 = fptrunc double %75 to float
  %77 = fmul float %76, %76
  %78 = fmul float %76, %77
  %79 = fptrunc double %74 to float
  %80 = sext i32 %44 to i64
  %81 = getelementptr inbounds float* %6, i64 %80
  store float %79, float* %81, align 4, !tbaa !47
  %82 = getelementptr inbounds float* %8, i64 %80
  %83 = load float* %82, align 4, !tbaa !47
  %84 = fmul float %31, %83
  %85 = fmul float %4, %78
  %86 = fadd float %84, %85
  %87 = fmul float %21, %86
  store float %87, float* %82, align 4, !tbaa !47
  %88 = fmul float %78, %78
  %89 = load float* %41, align 4, !tbaa !47
  %90 = fadd float %89, %88
  store float %90, float* %41, align 4, !tbaa !47
  %91 = fmul float %87, %87
  %92 = load float* %40, align 4, !tbaa !47
  %93 = fadd float %92, %91
  store float %93, float* %40, align 4, !tbaa !47
  %94 = add nsw i32 %fa.1116, 3
  %95 = icmp slt i32 %94, %nfa
  %indvars.iv.next = add i64 %indvars.iv15, 3
  br i1 %95, label %._crit_edge10, label %.critedge

._crit_edge10:                                    ; preds = %.lr.ph.preheader
  %.phi.trans.insert = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv.next
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !29
  %.phi.trans.insert11 = sext i32 %.pre to i64
  %.phi.trans.insert12 = getelementptr inbounds %union.t_iparams* %ip, i64 %.phi.trans.insert11, i32 0, i32 5
  %.phi.trans.insert13 = bitcast float* %.phi.trans.insert12 to i32*
  %.pre14 = load i32* %.phi.trans.insert13, align 4, !tbaa !30
  %96 = icmp eq i32 %.pre14, %39
  %97 = trunc i64 %indvars.iv.next to i32
  br i1 %96, label %.lr.ph.preheader, label %.critedge

.critedge:                                        ; preds = %._crit_edge10, %.lr.ph.preheader, %32
  %fa.1.lcssa = phi i32 [ %fa.05, %32 ], [ %97, %._crit_edge10 ], [ %94, %.lr.ph.preheader ]
  br i1 %22, label %98, label %107

; <label>:98                                      ; preds = %.critedge
  %99 = bitcast float* %41 to i32*
  %100 = load i32* %99, align 4, !tbaa !47
  %101 = getelementptr inbounds float* %10, i64 %indvars.iv8
  %102 = bitcast float* %101 to i32*
  store i32 %100, i32* %102, align 4, !tbaa !47
  %103 = load float* %41, align 4, !tbaa !47
  %104 = fmul float %invn.0, %103
  store float %104, float* %41, align 4, !tbaa !47
  %105 = load float* %40, align 4, !tbaa !47
  %106 = fmul float %invn.0, %105
  store float %106, float* %40, align 4, !tbaa !47
  br label %107

; <label>:107                                     ; preds = %98, %.critedge
  %indvars.iv.next9 = add nuw i64 %indvars.iv8, 1
  %108 = icmp slt i32 %fa.1.lcssa, %nfa
  br i1 %108, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %107, %29
  br i1 %22, label %109, label %121

; <label>:109                                     ; preds = %._crit_edge
  %110 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %111 = load i32* %110, align 4, !tbaa !45
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %117, label %113

; <label>:113                                     ; preds = %109
  %114 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5
  %115 = load i32* %114, align 4, !tbaa !48
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %121

; <label>:117                                     ; preds = %113, %109
  %118 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 7
  %119 = load i32* %118, align 4, !tbaa !28
  %120 = shl nsw i32 %119, 1
  tail call void @gmx_sumf(i32 %120, float* %12, %struct.t_commrec* %mcr) #7
  br label %121

; <label>:121                                     ; preds = %117, %113, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #4

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @ta_disres(i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !49
  %3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 2
  %4 = load float* %3, align 4, !tbaa !21
  %5 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %6 = load float** %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  %8 = load float** %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  %10 = load float** %9, align 8, !tbaa !39
  %11 = fpext float %4 to double
  %12 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  %13 = load float* %12, align 4, !tbaa !27
  %14 = fpext float %13 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = fmul double %11, %15
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %19 = load [3 x float]** %18, align 8, !tbaa !50
  %20 = icmp sgt i32 %nfa, 0
  br i1 %20, label %.lr.ph48, label %._crit_edge

.lr.ph48:                                         ; preds = %0
  %21 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 0
  %22 = load i32* %21, align 4, !tbaa !18
  %23 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %24 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %25 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %26 = icmp eq i32 %2, 0
  %27 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %28 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %29 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %30 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %31 = icmp eq i32 %22, 0
  %32 = sext i32 %nfa to i64
  br label %33

; <label>:33                                      ; preds = %.lr.ph48, %.thread11
  %indvars.iv62 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next63, %.thread11 ]
  %fa.047 = phi i32 [ 0, %.lr.ph48 ], [ %fa.2, %.thread11 ]
  %instant_viol_Rav7.044 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %instant_viol_Rav7.2, %.thread11 ]
  %tav_viol_Rav7.043 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %tav_viol_Rav7.2, %.thread11 ]
  %vtot.042 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %vtot.116, %.thread11 ]
  %violtot.041 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %violtot.115, %.thread11 ]
  %mixed_viol.040 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %mixed_viol.114, %.thread11 ]
  %instant_viol.039 = phi float [ 0.000000e+00, %.lr.ph48 ], [ %instant_viol.213, %.thread11 ]
  %34 = sext i32 %fa.047 to i64
  %35 = getelementptr inbounds i32* %forceatoms, i64 %34
  %36 = load i32* %35, align 4, !tbaa !29
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 5
  %39 = bitcast float* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !30
  %41 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 1
  %42 = load float* %41, align 4, !tbaa !52
  %43 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 2
  %44 = load float* %43, align 4, !tbaa !53
  %45 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 0
  %46 = load float* %45, align 4, !tbaa !54
  %47 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 3
  %48 = load float* %47, align 4, !tbaa !55
  %49 = fmul float %17, %48
  %50 = add nsw i32 %fa.047, 3
  %51 = icmp slt i32 %50, %nfa
  br i1 %51, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %33, %61
  %indvars.iv = phi i64 [ %indvars.iv.next, %61 ], [ 1, %33 ]
  %52 = phi i32 [ %65, %61 ], [ %50, %33 ]
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32* %forceatoms, i64 %53
  %55 = load i32* %54, align 4, !tbaa !29
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %union.t_iparams* %ip, i64 %56, i32 0, i32 5
  %58 = bitcast float* %57 to i32*
  %59 = load i32* %58, align 4, !tbaa !30
  %60 = icmp eq i32 %59, %40
  br i1 %60, label %61, label %..critedge_crit_edge30

; <label>:61                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %62 = mul nsw i64 %indvars.iv.next, 3
  %63 = add nsw i64 %62, %34
  %64 = icmp slt i64 %63, %32
  %65 = trunc i64 %63 to i32
  br i1 %64, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %61
  %66 = trunc i64 %indvars.iv.next to i32
  br label %.critedge

..critedge_crit_edge30:                           ; preds = %.lr.ph
  %67 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge30, %..critedge_crit_edge, %33
  %.lcssa = phi i32 [ %65, %..critedge_crit_edge ], [ %52, %..critedge_crit_edge30 ], [ %50, %33 ]
  %npairs.0.lcssa = phi i32 [ %66, %..critedge_crit_edge ], [ %67, %..critedge_crit_edge30 ], [ 1, %33 ]
  %68 = getelementptr inbounds %union.t_iparams* %ip, i64 %37, i32 0, i32 4
  %69 = bitcast float* %68 to i32*
  %70 = load i32* %69, align 4, !tbaa !56
  %71 = icmp eq i32 %70, 2
  %72 = icmp sgt i32 %npairs.0.lcssa, 1
  br i1 %71, label %85, label %73

; <label>:73                                      ; preds = %.critedge
  %. = and i1 %31, %72
  %74 = zext i1 %. to i32
  %75 = getelementptr inbounds float* %8, i64 %indvars.iv62
  %76 = load float* %75, align 4, !tbaa !47
  %77 = fpext float %76 to double
  %78 = tail call double @llvm.pow.f64(double %77, double 0xBFC5555560000000)
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds float* %10, i64 %indvars.iv62
  %81 = load float* %80, align 4, !tbaa !47
  %82 = fpext float %81 to double
  %83 = tail call double @llvm.pow.f64(double %82, double 0xBFC5555560000000)
  %84 = fptrunc double %83 to float
  br label %92

; <label>:85                                      ; preds = %.critedge
  %86 = zext i1 %72 to i32
  %87 = getelementptr inbounds float* %6, i64 %indvars.iv62
  %88 = load float* %87, align 4, !tbaa !47
  %89 = fpext float %88 to double
  %90 = tail call double @llvm.pow.f64(double %89, double 0xBFC5555560000000)
  %91 = fptrunc double %90 to float
  br label %92

; <label>:92                                      ; preds = %85, %73
  %Rav.0 = phi float [ %84, %73 ], [ %91, %85 ]
  %Rt.0 = phi float [ %79, %73 ], [ %91, %85 ]
  %bConservative.0 = phi i32 [ %74, %73 ], [ %86, %85 ]
  %bMixed.0 = phi i32 [ %2, %73 ], [ 0, %85 ]
  %93 = fcmp ogt float %Rav.0, %42
  br i1 %93, label %96, label %94

; <label>:94                                      ; preds = %92
  %95 = fcmp olt float %Rav.0, %46
  br i1 %95, label %96, label %.thread11

; <label>:96                                      ; preds = %92, %94
  %.sink = phi float [ %46, %94 ], [ %42, %92 ]
  %97 = fsub float %Rav.0, %.sink
  %98 = fpext float %49 to double
  %99 = fmul double %98, 5.000000e-01
  %100 = fmul float %97, %97
  %101 = fpext float %100 to double
  %102 = fmul double %99, %101
  %103 = fpext float %vtot.042 to double
  %104 = fadd double %103, %102
  %105 = fptrunc double %104 to float
  %106 = fdiv float 1.000000e+00, %105
  %fabsf = tail call float @fabsf(float %106) #4
  %107 = fpext float %fabsf to double
  %108 = fcmp olt double %107, 1.200000e-38
  br i1 %108, label %109, label %112

; <label>:109                                     ; preds = %96
  %110 = fpext float %105 to double
  %111 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0), double %110) #7
  br label %112

; <label>:112                                     ; preds = %109, %96
  %113 = icmp eq i32 %bMixed.0, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %112
  %fabsf1 = tail call float @fabsf(float %97) #4
  br label %125

; <label>:115                                     ; preds = %112
  %116 = fcmp ogt float %Rt.0, %42
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %115
  %118 = fcmp ogt float %97, 0.000000e+00
  br i1 %118, label %122, label %.thread11

; <label>:119                                     ; preds = %115
  %120 = fcmp olt float %Rt.0, %46
  %121 = fcmp olt float %97, 0.000000e+00
  %or.cond = and i1 %120, %121
  br i1 %or.cond, label %122, label %.thread11

; <label>:122                                     ; preds = %117, %119
  %.sink25 = phi float [ %46, %119 ], [ %42, %117 ]
  %123 = fsub float %Rt.0, %.sink25
  %124 = fmul float %97, %123
  %sqrtf = tail call float @sqrtf(float %124) #4
  br label %125

; <label>:125                                     ; preds = %122, %114
  %fabsf1.sink = phi float [ %fabsf1, %114 ], [ %sqrtf, %122 ]
  %.pn26 = phi float [ %97, %114 ], [ %sqrtf, %122 ]
  %instant_viol.2.ph = phi float [ %instant_viol.039, %114 ], [ %123, %122 ]
  %mixed_viol.1.ph = phi float [ %mixed_viol.040, %114 ], [ %sqrtf, %122 ]
  %.pn = fmul float %49, %.pn26
  %f_scal.1.ph = fsub float -0.000000e+00, %.pn
  %126 = fadd float %violtot.041, %fabsf1.sink
  %127 = fsub float %44, %42
  %128 = fmul float %127, %49
  %129 = fsub float -0.000000e+00, %128
  %130 = icmp ne i32 %bConservative.0, 0
  br i1 %130, label %131, label %148

; <label>:131                                     ; preds = %125
  %132 = fcmp olt float %.pn, %128
  %133 = select i1 %132, float %f_scal.1.ph, float %129
  %134 = getelementptr inbounds float* %10, i64 %indvars.iv62
  %135 = load float* %134, align 4
  br i1 %113, label %136, label %139

; <label>:136                                     ; preds = %131
  %137 = fdiv float %Rav.0, %135
  %138 = fmul float %133, %137
  br label %153

; <label>:139                                     ; preds = %131
  %140 = fmul float %mixed_viol.1.ph, 2.000000e+00
  %141 = fdiv float %133, %140
  %142 = fmul float %Rav.0, %97
  %143 = fdiv float %142, %135
  %144 = fmul float %Rt.0, %instant_viol.2.ph
  %145 = getelementptr inbounds float* %8, i64 %indvars.iv62
  %146 = load float* %145, align 4, !tbaa !47
  %147 = fdiv float %144, %146
  br label %153

; <label>:148                                     ; preds = %125
  %149 = sitofp i32 %npairs.0.lcssa to float
  %150 = fdiv float %f_scal.1.ph, %149
  %151 = fcmp ogt float %150, %129
  %152 = select i1 %151, float %150, float %129
  br label %153

; <label>:153                                     ; preds = %136, %139, %148
  %f_scal.2 = phi float [ %141, %139 ], [ %138, %136 ], [ %152, %148 ]
  %tav_viol_Rav7.1 = phi float [ %143, %139 ], [ %tav_viol_Rav7.043, %136 ], [ %tav_viol_Rav7.043, %148 ]
  %instant_viol_Rav7.1 = phi float [ %147, %139 ], [ %instant_viol_Rav7.044, %136 ], [ %instant_viol_Rav7.044, %148 ]
  %154 = icmp sgt i32 %npairs.0.lcssa, 0
  br i1 %154, label %.lr.ph36, label %.thread11

.lr.ph36:                                         ; preds = %153
  %155 = fpext float %tav_viol_Rav7.1 to double
  %156 = fpext float %instant_viol_Rav7.1 to double
  %157 = load i32* %29, align 4, !tbaa !57
  %158 = load [3 x i32]** %30, align 8, !tbaa !59
  %159 = add i32 %npairs.0.lcssa, -1
  %160 = mul i32 %159, 3
  %161 = add i32 %160, 3
  br label %162

; <label>:162                                     ; preds = %263, %.lr.ph36
  %indvars.iv59 = phi i64 [ %34, %.lr.ph36 ], [ %indvars.iv.next60, %263 ]
  %p.034 = phi i32 [ 0, %.lr.ph36 ], [ %264, %263 ]
  %163 = add nsw i64 %indvars.iv59, 1
  %164 = getelementptr inbounds i32* %forceatoms, i64 %163
  %165 = load i32* %164, align 4, !tbaa !29
  %166 = add nsw i64 %indvars.iv59, 2
  %167 = getelementptr inbounds i32* %forceatoms, i64 %166
  %168 = load i32* %167, align 4, !tbaa !29
  %169 = sext i32 %165 to i64
  %170 = getelementptr inbounds [3 x float]* %x, i64 %169, i64 0
  %171 = sext i32 %168 to i64
  %172 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 0
  %173 = load float* %170, align 4, !tbaa !47
  %174 = load float* %172, align 4, !tbaa !47
  %175 = fsub float %173, %174
  %176 = getelementptr inbounds [3 x float]* %x, i64 %169, i64 1
  %177 = load float* %176, align 4, !tbaa !47
  %178 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 1
  %179 = load float* %178, align 4, !tbaa !47
  %180 = fsub float %177, %179
  %181 = getelementptr inbounds [3 x float]* %x, i64 %169, i64 2
  %182 = load float* %181, align 4, !tbaa !47
  %183 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 2
  %184 = load float* %183, align 4, !tbaa !47
  %185 = fsub float %182, %184
  store float %175, float* %23, align 4, !tbaa !47
  store float %180, float* %24, align 4, !tbaa !47
  store float %185, float* %25, align 4, !tbaa !47
  %186 = fmul float %175, %175
  %187 = fmul float %180, %180
  %188 = fadd float %186, %187
  %189 = fmul float %185, %185
  %190 = fadd float %189, %188
  %191 = fpext float %190 to double
  %192 = tail call double @sqrt(double %191) #8
  %193 = fdiv double 1.000000e+00, %192
  %194 = fptrunc double %193 to float
  br i1 %130, label %195, label %220

; <label>:195                                     ; preds = %162
  %196 = trunc i64 %indvars.iv59 to i32
  %197 = sdiv i32 %196, 3
  %198 = sext i32 %197 to i64
  %199 = load float** %27, align 8, !tbaa !37
  %200 = getelementptr inbounds float* %199, i64 %198
  %201 = load float* %200, align 4, !tbaa !47
  %202 = fpext float %201 to double
  %203 = tail call double @llvm.pow.f64(double %202, double 0x4002AAAAA0000000)
  br i1 %26, label %204, label %208

; <label>:204                                     ; preds = %195
  %205 = fpext float %194 to double
  %206 = fmul double %205, %203
  %207 = fptrunc double %206 to float
  br label %220

; <label>:208                                     ; preds = %195
  %209 = fmul double %155, %203
  %210 = load float** %28, align 8, !tbaa !36
  %211 = getelementptr inbounds float* %210, i64 %198
  %212 = load float* %211, align 4, !tbaa !47
  %213 = fpext float %212 to double
  %214 = tail call double @llvm.pow.f64(double %213, double -7.000000e+00)
  %215 = fmul double %156, %214
  %216 = fadd double %209, %215
  %217 = fpext float %194 to double
  %218 = fmul double %217, %216
  %219 = fptrunc double %218 to float
  br label %220

; <label>:220                                     ; preds = %204, %208, %162
  %weight_rt_1.0 = phi float [ %219, %208 ], [ %207, %204 ], [ %194, %162 ]
  %221 = fmul float %f_scal.2, %weight_rt_1.0
  %222 = sub nsw i32 %165, %157
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [3 x i32]* %158, i64 %223, i64 0
  %225 = sub nsw i32 %168, %157
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [3 x i32]* %158, i64 %226, i64 0
  %228 = load i32* %224, align 4, !tbaa !29
  %229 = load i32* %227, align 4, !tbaa !29
  %230 = getelementptr inbounds [3 x i32]* %158, i64 %223, i64 1
  %231 = load i32* %230, align 4, !tbaa !29
  %232 = getelementptr inbounds [3 x i32]* %158, i64 %226, i64 1
  %233 = load i32* %232, align 4, !tbaa !29
  %234 = getelementptr inbounds [3 x i32]* %158, i64 %223, i64 2
  %235 = load i32* %234, align 4, !tbaa !29
  %236 = getelementptr inbounds [3 x i32]* %158, i64 %226, i64 2
  %237 = load i32* %236, align 4, !tbaa !29
  %238 = sub nsw i32 %235, %237
  %239 = mul i32 %238, 3
  %240 = add i32 %231, 3
  %241 = sub i32 %240, %233
  %242 = add i32 %241, %239
  %243 = mul i32 %242, 3
  %244 = add i32 %228, 4
  %245 = sub i32 %244, %229
  %246 = add i32 %245, %243
  %247 = sext i32 %246 to i64
  br label %248

; <label>:248                                     ; preds = %._crit_edge64, %220
  %249 = phi float [ %175, %220 ], [ %.pre, %._crit_edge64 ]
  %indvars.iv57 = phi i64 [ 0, %220 ], [ %indvars.iv.next58, %._crit_edge64 ]
  %250 = fmul float %221, %249
  %251 = getelementptr inbounds [3 x float]* %f, i64 %169, i64 %indvars.iv57
  %252 = load float* %251, align 4, !tbaa !47
  %253 = fadd float %252, %250
  store float %253, float* %251, align 4, !tbaa !47
  %254 = getelementptr inbounds [3 x float]* %f, i64 %171, i64 %indvars.iv57
  %255 = load float* %254, align 4, !tbaa !47
  %256 = fsub float %255, %250
  store float %256, float* %254, align 4, !tbaa !47
  %257 = getelementptr inbounds [3 x float]* %19, i64 %247, i64 %indvars.iv57
  %258 = load float* %257, align 4, !tbaa !47
  %259 = fadd float %250, %258
  store float %259, float* %257, align 4, !tbaa !47
  %260 = getelementptr inbounds [3 x float]* %19, i64 13, i64 %indvars.iv57
  %261 = load float* %260, align 4, !tbaa !47
  %262 = fsub float %261, %250
  store float %262, float* %260, align 4, !tbaa !47
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond = icmp eq i64 %indvars.iv.next58, 3
  br i1 %exitcond, label %263, label %._crit_edge64

._crit_edge64:                                    ; preds = %248
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next58
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !47
  br label %248

; <label>:263                                     ; preds = %248
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 3
  %264 = add nuw nsw i32 %p.034, 1
  %exitcond61 = icmp eq i32 %p.034, %159
  br i1 %exitcond61, label %..thread11.loopexit_crit_edge, label %162

..thread11.loopexit_crit_edge:                    ; preds = %263
  %265 = add i32 %161, %fa.047
  br label %.thread11

.thread11:                                        ; preds = %153, %..thread11.loopexit_crit_edge, %119, %117, %94
  %vtot.116 = phi float [ %vtot.042, %94 ], [ %105, %117 ], [ %105, %119 ], [ %105, %..thread11.loopexit_crit_edge ], [ %105, %153 ]
  %violtot.115 = phi float [ %violtot.041, %94 ], [ %violtot.041, %117 ], [ %violtot.041, %119 ], [ %126, %..thread11.loopexit_crit_edge ], [ %126, %153 ]
  %mixed_viol.114 = phi float [ %mixed_viol.040, %94 ], [ %mixed_viol.040, %117 ], [ %mixed_viol.040, %119 ], [ %mixed_viol.1.ph, %..thread11.loopexit_crit_edge ], [ %mixed_viol.1.ph, %153 ]
  %instant_viol.213 = phi float [ %instant_viol.039, %94 ], [ %instant_viol.039, %117 ], [ %instant_viol.039, %119 ], [ %instant_viol.2.ph, %..thread11.loopexit_crit_edge ], [ %instant_viol.2.ph, %153 ]
  %tav_viol_Rav7.2 = phi float [ %tav_viol_Rav7.043, %94 ], [ %tav_viol_Rav7.043, %117 ], [ %tav_viol_Rav7.043, %119 ], [ %tav_viol_Rav7.1, %..thread11.loopexit_crit_edge ], [ %tav_viol_Rav7.1, %153 ]
  %instant_viol_Rav7.2 = phi float [ %instant_viol_Rav7.044, %94 ], [ %instant_viol_Rav7.044, %117 ], [ %instant_viol_Rav7.044, %119 ], [ %instant_viol_Rav7.1, %..thread11.loopexit_crit_edge ], [ %instant_viol_Rav7.1, %153 ]
  %fa.2 = phi i32 [ %.lcssa, %94 ], [ %.lcssa, %117 ], [ %.lcssa, %119 ], [ %265, %..thread11.loopexit_crit_edge ], [ %fa.047, %153 ]
  %indvars.iv.next63 = add nuw i64 %indvars.iv62, 1
  %266 = icmp slt i32 %fa.2, %nfa
  br i1 %266, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %.thread11, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %vtot.116, %.thread11 ]
  %violtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %violtot.115, %.thread11 ]
  %267 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 9
  store float %violtot.0.lcssa, float* %267, align 4, !tbaa !60
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #6

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

declare float @fabsf(float)

declare float @sqrtf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
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
!14 = !{!15, !7, i64 272}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !16, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !16, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !16, i64 200, !16, i64 204, !7, i64 208, !16, i64 212, !16, i64 216, !7, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !7, i64 236, !16, i64 240, !16, i64 244, !7, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !16, i64 284, !16, i64 288, !16, i64 292, !7, i64 296, !16, i64 300, !16, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !16, i64 328, !7, i64 332, !16, i64 336, !16, i64 340, !7, i64 344, !16, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !16, i64 368, !16, i64 372, !16, i64 376, !16, i64 380, !17, i64 384, !5, i64 448, !5, i64 520}
!16 = !{!"float", !5, i64 0}
!17 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !7, i64 28, !7, i64 32, !16, i64 36, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!20 = !{!15, !16, i64 268}
!21 = !{!19, !16, i64 8}
!22 = !{!15, !16, i64 284}
!23 = !{!19, !16, i64 12}
!24 = !{!15, !7, i64 276}
!25 = !{!15, !16, i64 60}
!26 = !{!19, !16, i64 20}
!27 = !{!19, !16, i64 24}
!28 = !{!19, !7, i64 28}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !7, i64 20}
!31 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !7, i64 16, !7, i64 20}
!32 = !{!33, !7, i64 16}
!33 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !34, i64 32, !7, i64 40, !4, i64 48}
!34 = !{!"long", !5, i64 0}
!35 = !{!19, !7, i64 32}
!36 = !{!19, !4, i64 40}
!37 = !{!19, !4, i64 48}
!38 = !{!19, !4, i64 64}
!39 = !{!19, !4, i64 72}
!40 = !{!19, !4, i64 56}
!41 = !{!42, !7, i64 28}
!42 = !{!"", !19, i64 0, !43, i64 80}
!43 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !16, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !16, i64 152, !4, i64 160, !4, i64 168}
!44 = !{!19, !16, i64 16}
!45 = !{!46, !7, i64 4}
!46 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!47 = !{!16, !16, i64 0}
!48 = !{!46, !7, i64 20}
!49 = !{!19, !7, i64 4}
!50 = !{!51, !4, i64 2776}
!51 = !{!"", !7, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !7, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !7, i64 52, !7, i64 56, !16, i64 60, !7, i64 64, !16, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !16, i64 104, !16, i64 108, !4, i64 112, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !7, i64 136, !16, i64 140, !16, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !16, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !16, i64 2840}
!52 = !{!31, !16, i64 4}
!53 = !{!31, !16, i64 8}
!54 = !{!31, !16, i64 0}
!55 = !{!31, !16, i64 12}
!56 = !{!31, !7, i64 16}
!57 = !{!58, !7, i64 12}
!58 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!59 = !{!58, !4, i64 40}
!60 = !{!19, !16, i64 36}
