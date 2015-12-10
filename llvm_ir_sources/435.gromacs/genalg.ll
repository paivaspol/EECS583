; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/genalg.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_genalg = type { i32, i32, i32, i32, i32, i32, i32, float, float, float**, float**, float*, float*, float*, float*, float*, float* }
%struct.t_range = type { i32, i32, i32, float, float, float, float }

@.str = private unnamed_addr constant [3 x i8] c"ga\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/genalg.c\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"ga->tmp\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ga->best\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"ga->bestit\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"ga->cost\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"ga->rmsf\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"ga->energy\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"CR=%f, should be ex [0,1]\00", align 1
@.str12 = private unnamed_addr constant [23 x i8] c"seed=%d, should be > 0\00", align 1
@.str13 = private unnamed_addr constant [33 x i8] c"strategy=%d, should be ex {1-10}\00", align 1
@stdlog = external global %struct.__sFILE*
@.str14 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1
@.str15 = private unnamed_addr constant [30 x i8] c"Genetic algorithm parameters\0A\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"Population size:       %d\0A\00", align 1
@.str17 = private unnamed_addr constant [27 x i8] c"Strategy:              %s\0A\00", align 1
@strat = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str37, i32 0, i32 0)], align 16
@.str18 = private unnamed_addr constant [27 x i8] c"Weight factor:         %g\0A\00", align 1
@.str19 = private unnamed_addr constant [27 x i8] c"Crossing over factor:  %g\0A\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"Random seed:           %d\0A\00", align 1
@update_ga.i_init = internal unnamed_addr global i32 0, align 4
@print_ga.nfeval = internal unnamed_addr global i32 0, align 4
@.str21 = private unnamed_addr constant [62 x i8] c"\0AGen: %6d Cost:%8.3f  Ener: %8.3f RMSF: %8.3f  <Cost>: %8.3f\0A\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"\09best[%d]=%-15.10g\0A\00", align 1
@.str23 = private unnamed_addr constant [51 x i8] c"Animal: %3d Cost:%8.3f  Ener: %8.3f RMSF: %8.3f%s\0A\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c" ***\00", align 1
@.str25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str26 = private unnamed_addr constant [24 x i8] c"\09Param[%d][%d]=%15.10g\0A\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"r[i]\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"DE/best/1/exp\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"DE/rand/1/exp\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"DE/rand-to-best/1/exp\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"DE/best/2/exp\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"DE/rand/2/exp\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"DE/best/1/bin\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"DE/rand/1/bin\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"DE/rand-to-best/1/bin\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"DE/best/2/bin\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"DE/rand/2/bin\00", align 1

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
define %struct.t_genalg* @init_ga(i8* %infile, i32 %D, %struct.t_range* %range) #1 {
  %ff = alloca double, align 8
  %cr = alloca double, align 8
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 121, i32 1, i32 104) #6
  %2 = bitcast i8* %1 to %struct.t_genalg*
  %3 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6
  %4 = bitcast i8* %1 to i32*
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %1) #6
  %6 = getelementptr inbounds i8* %1, i64 8
  %7 = bitcast i8* %6 to i32*
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %6) #6
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), double* %ff) #6
  %10 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), double* %cr) #6
  %11 = getelementptr inbounds i8* %1, i64 12
  %12 = bitcast i8* %11 to i32*
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* %11) #6
  call void @ffclose(%struct.__sFILE* %3) #6
  %14 = load double* %ff, align 8, !tbaa !2
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds i8* %1, i64 32
  %17 = bitcast i8* %16 to float*
  store float %15, float* %17, align 4, !tbaa !6
  %18 = load double* %cr, align 8, !tbaa !2
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds i8* %1, i64 28
  %21 = bitcast i8* %20 to float*
  store float %19, float* %21, align 4, !tbaa !11
  %22 = getelementptr inbounds i8* %1, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %D, i32* %23, align 4, !tbaa !12
  %24 = getelementptr inbounds i8* %1, i64 16
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4, !tbaa !13
  %26 = getelementptr inbounds i8* %1, i64 20
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 4, !tbaa !14
  %28 = load i32* %4, align 4, !tbaa !15
  %29 = call fastcc float** @make2d(i32 %28, i32 %D) #7
  %30 = getelementptr inbounds i8* %1, i64 40
  %31 = bitcast i8* %30 to float***
  store float** %29, float*** %31, align 8, !tbaa !16
  %32 = load i32* %4, align 4, !tbaa !15
  %33 = load i32* %23, align 4, !tbaa !12
  %34 = call fastcc float** @make2d(i32 %32, i32 %33) #7
  %35 = getelementptr inbounds i8* %1, i64 48
  %36 = bitcast i8* %35 to float***
  store float** %34, float*** %36, align 8, !tbaa !17
  %37 = load i32* %23, align 4, !tbaa !12
  %38 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 140, i32 %37, i32 4) #6
  %39 = getelementptr inbounds i8* %1, i64 80
  %40 = bitcast i8* %39 to i8**
  store i8* %38, i8** %40, align 8, !tbaa !18
  %41 = load i32* %23, align 4, !tbaa !12
  %42 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %41, i32 4) #6
  %43 = getelementptr inbounds i8* %1, i64 56
  %44 = bitcast i8* %43 to i8**
  store i8* %42, i8** %44, align 8, !tbaa !19
  %45 = load i32* %23, align 4, !tbaa !12
  %46 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 142, i32 %45, i32 4) #6
  %47 = getelementptr inbounds i8* %1, i64 64
  %48 = bitcast i8* %47 to i8**
  store i8* %46, i8** %48, align 8, !tbaa !20
  %49 = load i32* %4, align 4, !tbaa !15
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 143, i32 %49, i32 4) #6
  %51 = getelementptr inbounds i8* %1, i64 72
  %52 = bitcast i8* %51 to i8**
  store i8* %50, i8** %52, align 8, !tbaa !21
  %53 = load i32* %4, align 4, !tbaa !15
  %54 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %53, i32 4) #6
  %55 = getelementptr inbounds i8* %1, i64 88
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !22
  %57 = load i32* %4, align 4, !tbaa !15
  %58 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %57, i32 4) #6
  %59 = getelementptr inbounds i8* %1, i64 96
  %60 = bitcast i8* %59 to i8**
  store i8* %58, i8** %60, align 8, !tbaa !23
  %61 = load float* %21, align 4, !tbaa !11
  %62 = fcmp olt float %61, 0.000000e+00
  %63 = fcmp ogt float %61, 1.000000e+00
  %or.cond = or i1 %62, %63
  br i1 %or.cond, label %64, label %66

; <label>:64                                      ; preds = %0
  %65 = fpext float %61 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), double %65) #6
  br label %66

; <label>:66                                      ; preds = %0, %64
  %67 = load i32* %12, align 4, !tbaa !24
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %66
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i64 0, i64 0), i32 %67) #6
  br label %70

; <label>:70                                      ; preds = %69, %66
  %71 = load i32* %7, align 4, !tbaa !25
  %72 = icmp ugt i32 %71, 10
  br i1 %72, label %73, label %.preheader2

; <label>:73                                      ; preds = %70
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0), i32 %71) #6
  br label %.preheader2

.preheader2:                                      ; preds = %70, %73
  %74 = load i32* %4, align 4, !tbaa !15
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %.preheader.lr.ph, label %._crit_edge5

.preheader.lr.ph:                                 ; preds = %.preheader2
  %.pre = load i32* %23, align 4, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %88
  %76 = phi i32 [ %74, %.preheader.lr.ph ], [ %89, %88 ]
  %77 = phi i32 [ %.pre, %.preheader.lr.ph ], [ %90, %88 ]
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %88 ]
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %.lr.ph, label %88

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %79 = getelementptr inbounds %struct.t_range* %range, i64 %indvars.iv
  %80 = call float @value_rand(%struct.t_range* %79, i32* %12) #6
  %81 = load float*** %31, align 8, !tbaa !16
  %82 = getelementptr inbounds float** %81, i64 %indvars.iv6
  %83 = load float** %82, align 8, !tbaa !26
  %84 = getelementptr inbounds float* %83, i64 %indvars.iv
  store float %80, float* %84, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %85 = load i32* %23, align 4, !tbaa !12
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %indvars.iv.next, %86
  br i1 %87, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %.pre8 = load i32* %4, align 4, !tbaa !15
  br label %88

; <label>:88                                      ; preds = %._crit_edge, %.preheader
  %89 = phi i32 [ %.pre8, %._crit_edge ], [ %76, %.preheader ]
  %90 = phi i32 [ %85, %._crit_edge ], [ %77, %.preheader ]
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %91 = sext i32 %89 to i64
  %92 = icmp slt i64 %indvars.iv.next7, %91
  br i1 %92, label %.preheader, label %._crit_edge5

._crit_edge5:                                     ; preds = %88, %.preheader2
  %93 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %94 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %93)
  %95 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %96 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str15, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %95)
  %97 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %98 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %97)
  %99 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %100 = load i32* %4, align 4, !tbaa !15
  %101 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %99, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %100) #6
  %102 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %103 = load i32* %7, align 4, !tbaa !25
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i8*]* @strat, i64 0, i64 %104
  %106 = load i8** %105, align 8, !tbaa !26
  %107 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %102, i8* getelementptr inbounds ([27 x i8]* @.str17, i64 0, i64 0), i8* %106) #6
  %108 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %109 = load float* %17, align 4, !tbaa !6
  %110 = fpext float %109 to double
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %108, i8* getelementptr inbounds ([27 x i8]* @.str18, i64 0, i64 0), double %110) #6
  %112 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %113 = load float* %21, align 4, !tbaa !11
  %114 = fpext float %113 to double
  %115 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %112, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %114) #6
  %116 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %117 = load i32* %12, align 4, !tbaa !24
  %118 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %116, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), i32 %117) #6
  %119 = load %struct.__sFILE** @stdlog, align 8, !tbaa !26
  %120 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %119)
  ret %struct.t_genalg* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float** @make2d(i32 %n, i32 %m) #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 88, i32 %n, i32 8) #6
  %2 = bitcast i8* %1 to float**
  %3 = icmp sgt i32 %n, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = add i32 %n, -1
  br label %5

; <label>:5                                       ; preds = %5, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 90, i32 %m, i32 4) #6
  %7 = getelementptr inbounds float** %2, i64 %indvars.iv
  %8 = bitcast float** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %5, %0
  ret float** %2
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare float @value_rand(%struct.t_range*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @update_ga(%struct.__sFILE* nocapture readnone %fpout_ptr, %struct.t_range* nocapture %range, %struct.t_genalg* %ga) #1 {
  %1 = load i32* @update_ga.i_init, align 4, !tbaa !28
  %2 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !15
  %4 = icmp slt i32 %1, %3
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !12
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %10 = load float*** %9, align 8, !tbaa !16
  %11 = getelementptr inbounds float** %10, i64 %8
  %12 = load float** %11, align 8, !tbaa !26
  tail call fastcc void @copy2range(i32 %7, float* %12, %struct.t_range* %range) #7
  %13 = load i32* @update_ga.i_init, align 4, !tbaa !28
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @update_ga.i_init, align 4, !tbaa !28
  br label %505

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 4
  %17 = load i32* %16, align 4, !tbaa !13
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %.preheader42

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 5
  %21 = load i32* %20, align 4, !tbaa !14
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !14
  store i32 0, i32* %16, align 4, !tbaa !13
  br label %.preheader42

.preheader42:                                     ; preds = %19, %15
  %i.0.ph = phi i32 [ %17, %15 ], [ 0, %19 ]
  %23 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 3
  br label %24

; <label>:24                                      ; preds = %.preheader42, %24
  %25 = tail call float @rando(i32* %23) #6
  %26 = load i32* %2, align 4, !tbaa !15
  %27 = sitofp i32 %26 to float
  %28 = fmul float %25, %27
  %29 = fptosi float %28 to i32
  %30 = icmp eq i32 %29, %i.0.ph
  br i1 %30, label %24, label %.critedge

.critedge:                                        ; preds = %24, %.critedge
  %31 = tail call float @rando(i32* %23) #6
  %32 = load i32* %2, align 4, !tbaa !15
  %33 = sitofp i32 %32 to float
  %34 = fmul float %31, %33
  %35 = fptosi float %34 to i32
  %36 = icmp eq i32 %35, %i.0.ph
  %37 = icmp eq i32 %35, %29
  %or.cond = or i1 %36, %37
  br i1 %or.cond, label %.critedge, label %.critedge1

.critedge1:                                       ; preds = %.critedge, %.critedge1
  %38 = tail call float @rando(i32* %23) #6
  %39 = load i32* %2, align 4, !tbaa !15
  %40 = sitofp i32 %39 to float
  %41 = fmul float %38, %40
  %42 = fptosi float %41 to i32
  %43 = icmp eq i32 %42, %i.0.ph
  %44 = icmp eq i32 %42, %29
  %or.cond15 = or i1 %43, %44
  %45 = icmp eq i32 %42, %35
  %or.cond16 = or i1 %45, %or.cond15
  br i1 %or.cond16, label %.critedge1, label %.critedge3

.critedge3:                                       ; preds = %.critedge1, %.critedge3
  %46 = tail call float @rando(i32* %23) #6
  %47 = load i32* %2, align 4, !tbaa !15
  %48 = sitofp i32 %47 to float
  %49 = fmul float %46, %48
  %50 = fptosi float %49 to i32
  %51 = icmp eq i32 %50, %i.0.ph
  %52 = icmp eq i32 %50, %29
  %or.cond17 = or i1 %51, %52
  %53 = icmp eq i32 %50, %35
  %or.cond18 = or i1 %53, %or.cond17
  %54 = icmp eq i32 %50, %42
  %or.cond19 = or i1 %54, %or.cond18
  br i1 %or.cond19, label %.critedge3, label %.critedge6

.critedge6:                                       ; preds = %.critedge3, %.critedge6
  %55 = tail call float @rando(i32* %23) #6
  %56 = load i32* %2, align 4, !tbaa !15
  %57 = sitofp i32 %56 to float
  %58 = fmul float %55, %57
  %59 = fptosi float %58 to i32
  %60 = icmp eq i32 %59, %i.0.ph
  %61 = icmp eq i32 %59, %29
  %or.cond20 = or i1 %60, %61
  %62 = icmp eq i32 %59, %35
  %or.cond21 = or i1 %62, %or.cond20
  %63 = icmp eq i32 %59, %42
  %or.cond22 = or i1 %63, %or.cond21
  %64 = icmp eq i32 %59, %50
  %or.cond23 = or i1 %64, %or.cond22
  br i1 %or.cond23, label %.critedge6, label %65

; <label>:65                                      ; preds = %.critedge6
  %66 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 14
  %67 = bitcast float** %66 to i8**
  %68 = load i8** %67, align 8, !tbaa !18
  %69 = sext i32 %i.0.ph to i64
  %70 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %71 = load float*** %70, align 8, !tbaa !16
  %72 = getelementptr inbounds float** %71, i64 %69
  %73 = bitcast float** %72 to i8**
  %74 = load i8** %73, align 8, !tbaa !26
  %75 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %76 = load i32* %75, align 4, !tbaa !12
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 2
  %79 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %68, i1 false)
  %80 = tail call i8* @__memcpy_chk(i8* %68, i8* %74, i64 %78, i64 %79) #6
  %81 = tail call float @rando(i32* %23) #6
  %82 = load i32* %75, align 4, !tbaa !12
  %83 = sitofp i32 %82 to float
  %84 = fmul float %81, %83
  %85 = fptosi float %84 to i32
  %86 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 2
  %87 = load i32* %86, align 4, !tbaa !25
  switch i32 %87, label %.preheader [
    i32 1, label %.preheader24
    i32 2, label %.preheader26
    i32 3, label %.preheader28
    i32 4, label %.preheader30
    i32 5, label %.preheader32
    i32 6, label %.preheader34
    i32 7, label %.preheader36
    i32 8, label %.preheader38
    i32 9, label %.preheader40
  ]

.preheader40:                                     ; preds = %65
  %88 = icmp sgt i32 %82, 0
  br i1 %88, label %.lr.ph61, label %.critedge10

.lr.ph61:                                         ; preds = %.preheader40
  %89 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %90 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %91 = sext i32 %29 to i64
  %92 = sext i32 %35 to i64
  %93 = sext i32 %42 to i64
  %94 = sext i32 %50 to i64
  %95 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  br label %422

.preheader38:                                     ; preds = %65
  %96 = icmp sgt i32 %82, 0
  br i1 %96, label %.lr.ph58, label %.critedge10

.lr.ph58:                                         ; preds = %.preheader38
  %97 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %98 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %99 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %100 = sext i32 %29 to i64
  %101 = sext i32 %35 to i64
  br label %388

.preheader36:                                     ; preds = %65
  %102 = icmp sgt i32 %82, 0
  br i1 %102, label %.lr.ph55, label %.critedge10

.lr.ph55:                                         ; preds = %.preheader36
  %103 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %104 = sext i32 %29 to i64
  %105 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %106 = sext i32 %35 to i64
  %107 = sext i32 %42 to i64
  br label %357

.preheader34:                                     ; preds = %65
  %108 = icmp sgt i32 %82, 0
  br i1 %108, label %.lr.ph52, label %.critedge10

.lr.ph52:                                         ; preds = %.preheader34
  %109 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %110 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %111 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %112 = sext i32 %35 to i64
  %113 = sext i32 %42 to i64
  br label %327

.preheader32:                                     ; preds = %65
  %114 = sext i32 %59 to i64
  %115 = sext i32 %29 to i64
  %116 = sext i32 %35 to i64
  %117 = sext i32 %42 to i64
  %118 = sext i32 %50 to i64
  %119 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %120 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %286

.preheader30:                                     ; preds = %65
  %121 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %122 = sext i32 %29 to i64
  %123 = sext i32 %35 to i64
  %124 = sext i32 %42 to i64
  %125 = sext i32 %50 to i64
  %126 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %127 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %246

.preheader28:                                     ; preds = %65
  %128 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %129 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %130 = sext i32 %29 to i64
  %131 = sext i32 %35 to i64
  %132 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %212

.preheader26:                                     ; preds = %65
  %133 = sext i32 %29 to i64
  %134 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %135 = sext i32 %35 to i64
  %136 = sext i32 %42 to i64
  %137 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %181

.preheader24:                                     ; preds = %65
  %138 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %139 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  %140 = sext i32 %35 to i64
  %141 = sext i32 %42 to i64
  %142 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  br label %151

.preheader:                                       ; preds = %65
  %143 = icmp sgt i32 %82, 0
  br i1 %143, label %.lr.ph, label %.critedge10

.lr.ph:                                           ; preds = %.preheader
  %144 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 7
  %145 = sext i32 %59 to i64
  %146 = sext i32 %29 to i64
  %147 = sext i32 %35 to i64
  %148 = sext i32 %42 to i64
  %149 = sext i32 %50 to i64
  %150 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 8
  br label %462

; <label>:151                                     ; preds = %.preheader24, %176
  %152 = phi i32 [ %179, %176 ], [ %82, %.preheader24 ]
  %n.0 = phi i32 [ %178, %176 ], [ %85, %.preheader24 ]
  %L.0 = phi i32 [ %172, %176 ], [ 0, %.preheader24 ]
  %153 = sext i32 %n.0 to i64
  %154 = load float** %138, align 8, !tbaa !20
  %155 = getelementptr inbounds float* %154, i64 %153
  %156 = load float* %155, align 4, !tbaa !27
  %157 = load float* %139, align 4, !tbaa !6
  %158 = load float*** %70, align 8, !tbaa !16
  %159 = getelementptr inbounds float** %158, i64 %140
  %160 = load float** %159, align 8, !tbaa !26
  %161 = getelementptr inbounds float* %160, i64 %153
  %162 = load float* %161, align 4, !tbaa !27
  %163 = getelementptr inbounds float** %158, i64 %141
  %164 = load float** %163, align 8, !tbaa !26
  %165 = getelementptr inbounds float* %164, i64 %153
  %166 = load float* %165, align 4, !tbaa !27
  %167 = fsub float %162, %166
  %168 = fmul float %157, %167
  %169 = fadd float %156, %168
  %170 = load float** %66, align 8, !tbaa !18
  %171 = getelementptr inbounds float* %170, i64 %153
  store float %169, float* %171, align 4, !tbaa !27
  %172 = add nuw nsw i32 %L.0, 1
  %173 = tail call float @rando(i32* %23) #6
  %174 = load float* %142, align 4, !tbaa !11
  %175 = fcmp olt float %173, %174
  br i1 %175, label %176, label %.critedge10

; <label>:176                                     ; preds = %151
  %177 = add nsw i32 %n.0, 1
  %178 = srem i32 %177, %152
  %179 = load i32* %75, align 4, !tbaa !12
  %180 = icmp slt i32 %172, %179
  br i1 %180, label %151, label %.critedge10

; <label>:181                                     ; preds = %.preheader26, %207
  %182 = phi i32 [ %210, %207 ], [ %82, %.preheader26 ]
  %n.1 = phi i32 [ %209, %207 ], [ %85, %.preheader26 ]
  %L.1 = phi i32 [ %203, %207 ], [ 0, %.preheader26 ]
  %183 = sext i32 %n.1 to i64
  %184 = load float*** %70, align 8, !tbaa !16
  %185 = getelementptr inbounds float** %184, i64 %133
  %186 = load float** %185, align 8, !tbaa !26
  %187 = getelementptr inbounds float* %186, i64 %183
  %188 = load float* %187, align 4, !tbaa !27
  %189 = load float* %134, align 4, !tbaa !6
  %190 = getelementptr inbounds float** %184, i64 %135
  %191 = load float** %190, align 8, !tbaa !26
  %192 = getelementptr inbounds float* %191, i64 %183
  %193 = load float* %192, align 4, !tbaa !27
  %194 = getelementptr inbounds float** %184, i64 %136
  %195 = load float** %194, align 8, !tbaa !26
  %196 = getelementptr inbounds float* %195, i64 %183
  %197 = load float* %196, align 4, !tbaa !27
  %198 = fsub float %193, %197
  %199 = fmul float %189, %198
  %200 = fadd float %188, %199
  %201 = load float** %66, align 8, !tbaa !18
  %202 = getelementptr inbounds float* %201, i64 %183
  store float %200, float* %202, align 4, !tbaa !27
  %203 = add nuw nsw i32 %L.1, 1
  %204 = tail call float @rando(i32* %23) #6
  %205 = load float* %137, align 4, !tbaa !11
  %206 = fcmp olt float %204, %205
  br i1 %206, label %207, label %.critedge10

; <label>:207                                     ; preds = %181
  %208 = add nsw i32 %n.1, 1
  %209 = srem i32 %208, %182
  %210 = load i32* %75, align 4, !tbaa !12
  %211 = icmp slt i32 %203, %210
  br i1 %211, label %181, label %.critedge10

; <label>:212                                     ; preds = %.preheader28, %241
  %213 = phi i32 [ %244, %241 ], [ %82, %.preheader28 ]
  %n.2 = phi i32 [ %243, %241 ], [ %85, %.preheader28 ]
  %L.2 = phi i32 [ %237, %241 ], [ 0, %.preheader28 ]
  %214 = sext i32 %n.2 to i64
  %215 = load float** %66, align 8, !tbaa !18
  %216 = getelementptr inbounds float* %215, i64 %214
  %217 = load float* %216, align 4, !tbaa !27
  %218 = load float* %128, align 4, !tbaa !6
  %219 = load float** %129, align 8, !tbaa !20
  %220 = getelementptr inbounds float* %219, i64 %214
  %221 = load float* %220, align 4, !tbaa !27
  %222 = fsub float %221, %217
  %223 = fmul float %218, %222
  %224 = fadd float %217, %223
  %225 = load float*** %70, align 8, !tbaa !16
  %226 = getelementptr inbounds float** %225, i64 %130
  %227 = load float** %226, align 8, !tbaa !26
  %228 = getelementptr inbounds float* %227, i64 %214
  %229 = load float* %228, align 4, !tbaa !27
  %230 = getelementptr inbounds float** %225, i64 %131
  %231 = load float** %230, align 8, !tbaa !26
  %232 = getelementptr inbounds float* %231, i64 %214
  %233 = load float* %232, align 4, !tbaa !27
  %234 = fsub float %229, %233
  %235 = fmul float %218, %234
  %236 = fadd float %224, %235
  store float %236, float* %216, align 4, !tbaa !27
  %237 = add nuw nsw i32 %L.2, 1
  %238 = tail call float @rando(i32* %23) #6
  %239 = load float* %132, align 4, !tbaa !11
  %240 = fcmp olt float %238, %239
  br i1 %240, label %241, label %.critedge10

; <label>:241                                     ; preds = %212
  %242 = add nsw i32 %n.2, 1
  %243 = srem i32 %242, %213
  %244 = load i32* %75, align 4, !tbaa !12
  %245 = icmp slt i32 %237, %244
  br i1 %245, label %212, label %.critedge10

; <label>:246                                     ; preds = %.preheader30, %281
  %247 = phi i32 [ %284, %281 ], [ %82, %.preheader30 ]
  %n.3 = phi i32 [ %283, %281 ], [ %85, %.preheader30 ]
  %L.3 = phi i32 [ %277, %281 ], [ 0, %.preheader30 ]
  %248 = sext i32 %n.3 to i64
  %249 = load float** %121, align 8, !tbaa !20
  %250 = getelementptr inbounds float* %249, i64 %248
  %251 = load float* %250, align 4, !tbaa !27
  %252 = load float*** %70, align 8, !tbaa !16
  %253 = getelementptr inbounds float** %252, i64 %122
  %254 = load float** %253, align 8, !tbaa !26
  %255 = getelementptr inbounds float* %254, i64 %248
  %256 = load float* %255, align 4, !tbaa !27
  %257 = getelementptr inbounds float** %252, i64 %123
  %258 = load float** %257, align 8, !tbaa !26
  %259 = getelementptr inbounds float* %258, i64 %248
  %260 = load float* %259, align 4, !tbaa !27
  %261 = fadd float %256, %260
  %262 = getelementptr inbounds float** %252, i64 %124
  %263 = load float** %262, align 8, !tbaa !26
  %264 = getelementptr inbounds float* %263, i64 %248
  %265 = load float* %264, align 4, !tbaa !27
  %266 = fsub float %261, %265
  %267 = getelementptr inbounds float** %252, i64 %125
  %268 = load float** %267, align 8, !tbaa !26
  %269 = getelementptr inbounds float* %268, i64 %248
  %270 = load float* %269, align 4, !tbaa !27
  %271 = fsub float %266, %270
  %272 = load float* %126, align 4, !tbaa !6
  %273 = fmul float %271, %272
  %274 = fadd float %251, %273
  %275 = load float** %66, align 8, !tbaa !18
  %276 = getelementptr inbounds float* %275, i64 %248
  store float %274, float* %276, align 4, !tbaa !27
  %277 = add nuw nsw i32 %L.3, 1
  %278 = tail call float @rando(i32* %23) #6
  %279 = load float* %127, align 4, !tbaa !11
  %280 = fcmp olt float %278, %279
  br i1 %280, label %281, label %.critedge10

; <label>:281                                     ; preds = %246
  %282 = add nsw i32 %n.3, 1
  %283 = srem i32 %282, %247
  %284 = load i32* %75, align 4, !tbaa !12
  %285 = icmp slt i32 %277, %284
  br i1 %285, label %246, label %.critedge10

; <label>:286                                     ; preds = %.preheader32, %322
  %287 = phi i32 [ %325, %322 ], [ %82, %.preheader32 ]
  %n.4 = phi i32 [ %324, %322 ], [ %85, %.preheader32 ]
  %L.4 = phi i32 [ %318, %322 ], [ 0, %.preheader32 ]
  %288 = sext i32 %n.4 to i64
  %289 = load float*** %70, align 8, !tbaa !16
  %290 = getelementptr inbounds float** %289, i64 %114
  %291 = load float** %290, align 8, !tbaa !26
  %292 = getelementptr inbounds float* %291, i64 %288
  %293 = load float* %292, align 4, !tbaa !27
  %294 = getelementptr inbounds float** %289, i64 %115
  %295 = load float** %294, align 8, !tbaa !26
  %296 = getelementptr inbounds float* %295, i64 %288
  %297 = load float* %296, align 4, !tbaa !27
  %298 = getelementptr inbounds float** %289, i64 %116
  %299 = load float** %298, align 8, !tbaa !26
  %300 = getelementptr inbounds float* %299, i64 %288
  %301 = load float* %300, align 4, !tbaa !27
  %302 = fadd float %297, %301
  %303 = getelementptr inbounds float** %289, i64 %117
  %304 = load float** %303, align 8, !tbaa !26
  %305 = getelementptr inbounds float* %304, i64 %288
  %306 = load float* %305, align 4, !tbaa !27
  %307 = fsub float %302, %306
  %308 = getelementptr inbounds float** %289, i64 %118
  %309 = load float** %308, align 8, !tbaa !26
  %310 = getelementptr inbounds float* %309, i64 %288
  %311 = load float* %310, align 4, !tbaa !27
  %312 = fsub float %307, %311
  %313 = load float* %119, align 4, !tbaa !6
  %314 = fmul float %312, %313
  %315 = fadd float %293, %314
  %316 = load float** %66, align 8, !tbaa !18
  %317 = getelementptr inbounds float* %316, i64 %288
  store float %315, float* %317, align 4, !tbaa !27
  %318 = add nuw nsw i32 %L.4, 1
  %319 = tail call float @rando(i32* %23) #6
  %320 = load float* %120, align 4, !tbaa !11
  %321 = fcmp olt float %319, %320
  br i1 %321, label %322, label %.critedge10

; <label>:322                                     ; preds = %286
  %323 = add nsw i32 %n.4, 1
  %324 = srem i32 %323, %287
  %325 = load i32* %75, align 4, !tbaa !12
  %326 = icmp slt i32 %318, %325
  br i1 %326, label %286, label %.critedge10

; <label>:327                                     ; preds = %.lr.ph52, %352
  %L.551 = phi i32 [ 0, %.lr.ph52 ], [ %355, %352 ]
  %n.550 = phi i32 [ %85, %.lr.ph52 ], [ %354, %352 ]
  %328 = tail call float @rando(i32* %23) #6
  %329 = load float* %109, align 4, !tbaa !11
  %330 = fcmp olt float %328, %329
  %.pre68.pre = load i32* %75, align 4, !tbaa !12
  %331 = add nsw i32 %.pre68.pre, -1
  %332 = icmp eq i32 %L.551, %331
  %or.cond80 = or i1 %330, %332
  br i1 %or.cond80, label %._crit_edge75, label %352

._crit_edge75:                                    ; preds = %327
  %333 = sext i32 %n.550 to i64
  %334 = load float** %110, align 8, !tbaa !20
  %335 = getelementptr inbounds float* %334, i64 %333
  %336 = load float* %335, align 4, !tbaa !27
  %337 = load float* %111, align 4, !tbaa !6
  %338 = load float*** %70, align 8, !tbaa !16
  %339 = getelementptr inbounds float** %338, i64 %112
  %340 = load float** %339, align 8, !tbaa !26
  %341 = getelementptr inbounds float* %340, i64 %333
  %342 = load float* %341, align 4, !tbaa !27
  %343 = getelementptr inbounds float** %338, i64 %113
  %344 = load float** %343, align 8, !tbaa !26
  %345 = getelementptr inbounds float* %344, i64 %333
  %346 = load float* %345, align 4, !tbaa !27
  %347 = fsub float %342, %346
  %348 = fmul float %337, %347
  %349 = fadd float %336, %348
  %350 = load float** %66, align 8, !tbaa !18
  %351 = getelementptr inbounds float* %350, i64 %333
  store float %349, float* %351, align 4, !tbaa !27
  br label %352

; <label>:352                                     ; preds = %327, %._crit_edge75
  %353 = add nsw i32 %n.550, 1
  %354 = srem i32 %353, %.pre68.pre
  %355 = add nuw nsw i32 %L.551, 1
  %356 = icmp slt i32 %355, %.pre68.pre
  br i1 %356, label %327, label %.critedge10

; <label>:357                                     ; preds = %.lr.ph55, %383
  %L.654 = phi i32 [ 0, %.lr.ph55 ], [ %386, %383 ]
  %n.653 = phi i32 [ %85, %.lr.ph55 ], [ %385, %383 ]
  %358 = tail call float @rando(i32* %23) #6
  %359 = load float* %103, align 4, !tbaa !11
  %360 = fcmp olt float %358, %359
  %.pre67.pre = load i32* %75, align 4, !tbaa !12
  %361 = add nsw i32 %.pre67.pre, -1
  %362 = icmp eq i32 %L.654, %361
  %or.cond82 = or i1 %360, %362
  br i1 %or.cond82, label %._crit_edge73, label %383

._crit_edge73:                                    ; preds = %357
  %363 = sext i32 %n.653 to i64
  %364 = load float*** %70, align 8, !tbaa !16
  %365 = getelementptr inbounds float** %364, i64 %104
  %366 = load float** %365, align 8, !tbaa !26
  %367 = getelementptr inbounds float* %366, i64 %363
  %368 = load float* %367, align 4, !tbaa !27
  %369 = load float* %105, align 4, !tbaa !6
  %370 = getelementptr inbounds float** %364, i64 %106
  %371 = load float** %370, align 8, !tbaa !26
  %372 = getelementptr inbounds float* %371, i64 %363
  %373 = load float* %372, align 4, !tbaa !27
  %374 = getelementptr inbounds float** %364, i64 %107
  %375 = load float** %374, align 8, !tbaa !26
  %376 = getelementptr inbounds float* %375, i64 %363
  %377 = load float* %376, align 4, !tbaa !27
  %378 = fsub float %373, %377
  %379 = fmul float %369, %378
  %380 = fadd float %368, %379
  %381 = load float** %66, align 8, !tbaa !18
  %382 = getelementptr inbounds float* %381, i64 %363
  store float %380, float* %382, align 4, !tbaa !27
  br label %383

; <label>:383                                     ; preds = %357, %._crit_edge73
  %384 = add nsw i32 %n.653, 1
  %385 = srem i32 %384, %.pre67.pre
  %386 = add nuw nsw i32 %L.654, 1
  %387 = icmp slt i32 %386, %.pre67.pre
  br i1 %387, label %357, label %.critedge10

; <label>:388                                     ; preds = %.lr.ph58, %417
  %L.757 = phi i32 [ 0, %.lr.ph58 ], [ %420, %417 ]
  %n.756 = phi i32 [ %85, %.lr.ph58 ], [ %419, %417 ]
  %389 = tail call float @rando(i32* %23) #6
  %390 = load float* %97, align 4, !tbaa !11
  %391 = fcmp olt float %389, %390
  %.pre66.pre = load i32* %75, align 4, !tbaa !12
  %392 = add nsw i32 %.pre66.pre, -1
  %393 = icmp eq i32 %L.757, %392
  %or.cond84 = or i1 %391, %393
  br i1 %or.cond84, label %._crit_edge71, label %417

._crit_edge71:                                    ; preds = %388
  %394 = sext i32 %n.756 to i64
  %395 = load float** %66, align 8, !tbaa !18
  %396 = getelementptr inbounds float* %395, i64 %394
  %397 = load float* %396, align 4, !tbaa !27
  %398 = load float* %98, align 4, !tbaa !6
  %399 = load float** %99, align 8, !tbaa !20
  %400 = getelementptr inbounds float* %399, i64 %394
  %401 = load float* %400, align 4, !tbaa !27
  %402 = fsub float %401, %397
  %403 = fmul float %398, %402
  %404 = fadd float %397, %403
  %405 = load float*** %70, align 8, !tbaa !16
  %406 = getelementptr inbounds float** %405, i64 %100
  %407 = load float** %406, align 8, !tbaa !26
  %408 = getelementptr inbounds float* %407, i64 %394
  %409 = load float* %408, align 4, !tbaa !27
  %410 = getelementptr inbounds float** %405, i64 %101
  %411 = load float** %410, align 8, !tbaa !26
  %412 = getelementptr inbounds float* %411, i64 %394
  %413 = load float* %412, align 4, !tbaa !27
  %414 = fsub float %409, %413
  %415 = fmul float %398, %414
  %416 = fadd float %404, %415
  store float %416, float* %396, align 4, !tbaa !27
  br label %417

; <label>:417                                     ; preds = %388, %._crit_edge71
  %418 = add nsw i32 %n.756, 1
  %419 = srem i32 %418, %.pre66.pre
  %420 = add nuw nsw i32 %L.757, 1
  %421 = icmp slt i32 %420, %.pre66.pre
  br i1 %421, label %388, label %.critedge10

; <label>:422                                     ; preds = %.lr.ph61, %457
  %L.860 = phi i32 [ 0, %.lr.ph61 ], [ %460, %457 ]
  %n.859 = phi i32 [ %85, %.lr.ph61 ], [ %459, %457 ]
  %423 = tail call float @rando(i32* %23) #6
  %424 = load float* %89, align 4, !tbaa !11
  %425 = fcmp olt float %423, %424
  %.pre.pre = load i32* %75, align 4, !tbaa !12
  %426 = add nsw i32 %.pre.pre, -1
  %427 = icmp eq i32 %L.860, %426
  %or.cond86 = or i1 %425, %427
  br i1 %or.cond86, label %._crit_edge, label %457

._crit_edge:                                      ; preds = %422
  %428 = sext i32 %n.859 to i64
  %429 = load float** %90, align 8, !tbaa !20
  %430 = getelementptr inbounds float* %429, i64 %428
  %431 = load float* %430, align 4, !tbaa !27
  %432 = load float*** %70, align 8, !tbaa !16
  %433 = getelementptr inbounds float** %432, i64 %91
  %434 = load float** %433, align 8, !tbaa !26
  %435 = getelementptr inbounds float* %434, i64 %428
  %436 = load float* %435, align 4, !tbaa !27
  %437 = getelementptr inbounds float** %432, i64 %92
  %438 = load float** %437, align 8, !tbaa !26
  %439 = getelementptr inbounds float* %438, i64 %428
  %440 = load float* %439, align 4, !tbaa !27
  %441 = fadd float %436, %440
  %442 = getelementptr inbounds float** %432, i64 %93
  %443 = load float** %442, align 8, !tbaa !26
  %444 = getelementptr inbounds float* %443, i64 %428
  %445 = load float* %444, align 4, !tbaa !27
  %446 = fsub float %441, %445
  %447 = getelementptr inbounds float** %432, i64 %94
  %448 = load float** %447, align 8, !tbaa !26
  %449 = getelementptr inbounds float* %448, i64 %428
  %450 = load float* %449, align 4, !tbaa !27
  %451 = fsub float %446, %450
  %452 = load float* %95, align 4, !tbaa !6
  %453 = fmul float %451, %452
  %454 = fadd float %431, %453
  %455 = load float** %66, align 8, !tbaa !18
  %456 = getelementptr inbounds float* %455, i64 %428
  store float %454, float* %456, align 4, !tbaa !27
  br label %457

; <label>:457                                     ; preds = %422, %._crit_edge
  %458 = add nsw i32 %n.859, 1
  %459 = srem i32 %458, %.pre.pre
  %460 = add nuw nsw i32 %L.860, 1
  %461 = icmp slt i32 %460, %.pre.pre
  br i1 %461, label %422, label %.critedge10

; <label>:462                                     ; preds = %.lr.ph, %498
  %L.949 = phi i32 [ 0, %.lr.ph ], [ %501, %498 ]
  %n.948 = phi i32 [ %85, %.lr.ph ], [ %500, %498 ]
  %463 = tail call float @rando(i32* %23) #6
  %464 = load float* %144, align 4, !tbaa !11
  %465 = fcmp olt float %463, %464
  %.pre69.pre = load i32* %75, align 4, !tbaa !12
  %466 = add nsw i32 %.pre69.pre, -1
  %467 = icmp eq i32 %L.949, %466
  %or.cond88 = or i1 %465, %467
  br i1 %or.cond88, label %._crit_edge77, label %498

._crit_edge77:                                    ; preds = %462
  %468 = sext i32 %n.948 to i64
  %469 = load float*** %70, align 8, !tbaa !16
  %470 = getelementptr inbounds float** %469, i64 %145
  %471 = load float** %470, align 8, !tbaa !26
  %472 = getelementptr inbounds float* %471, i64 %468
  %473 = load float* %472, align 4, !tbaa !27
  %474 = getelementptr inbounds float** %469, i64 %146
  %475 = load float** %474, align 8, !tbaa !26
  %476 = getelementptr inbounds float* %475, i64 %468
  %477 = load float* %476, align 4, !tbaa !27
  %478 = getelementptr inbounds float** %469, i64 %147
  %479 = load float** %478, align 8, !tbaa !26
  %480 = getelementptr inbounds float* %479, i64 %468
  %481 = load float* %480, align 4, !tbaa !27
  %482 = fadd float %477, %481
  %483 = getelementptr inbounds float** %469, i64 %148
  %484 = load float** %483, align 8, !tbaa !26
  %485 = getelementptr inbounds float* %484, i64 %468
  %486 = load float* %485, align 4, !tbaa !27
  %487 = fsub float %482, %486
  %488 = getelementptr inbounds float** %469, i64 %149
  %489 = load float** %488, align 8, !tbaa !26
  %490 = getelementptr inbounds float* %489, i64 %468
  %491 = load float* %490, align 4, !tbaa !27
  %492 = fsub float %487, %491
  %493 = load float* %150, align 4, !tbaa !6
  %494 = fmul float %492, %493
  %495 = fadd float %473, %494
  %496 = load float** %66, align 8, !tbaa !18
  %497 = getelementptr inbounds float* %496, i64 %468
  store float %495, float* %497, align 4, !tbaa !27
  br label %498

; <label>:498                                     ; preds = %462, %._crit_edge77
  %499 = add nsw i32 %n.948, 1
  %500 = srem i32 %499, %.pre69.pre
  %501 = add nuw nsw i32 %L.949, 1
  %502 = icmp slt i32 %501, %.pre69.pre
  br i1 %502, label %462, label %.critedge10

.critedge10:                                      ; preds = %457, %417, %383, %352, %286, %322, %246, %281, %212, %241, %181, %207, %151, %176, %498, %.preheader40, %.preheader38, %.preheader36, %.preheader34, %.preheader
  %503 = load i32* %75, align 4, !tbaa !12
  %504 = load float** %66, align 8, !tbaa !18
  tail call fastcc void @copy2range(i32 %503, float* %504, %struct.t_range* %range) #7
  br label %505

; <label>:505                                     ; preds = %5, %.critedge10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @copy2range(i32 %D, float* nocapture %c, %struct.t_range* nocapture %r) #1 {
  %1 = icmp sgt i32 %D, 0
  br i1 %1, label %.preheader1.lr.ph, label %._crit_edge8

.preheader1.lr.ph:                                ; preds = %0
  %2 = add i32 %D, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge, %.preheader1.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next, %._crit_edge ]
  %3 = getelementptr inbounds float* %c, i64 %indvars.iv
  %4 = load float* %3, align 4, !tbaa !27
  %5 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 3
  %6 = load float* %5, align 4, !tbaa !29
  %7 = fcmp olt float %4, %6
  br i1 %7, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader1
  %8 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 5
  br label %14

.preheader:                                       ; preds = %14, %.preheader1
  %9 = phi float [ %4, %.preheader1 ], [ %17, %14 ]
  %10 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 4
  %11 = load float* %10, align 4, !tbaa !31
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %.preheader
  %13 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 5
  br label %20

; <label>:14                                      ; preds = %.lr.ph, %14
  %15 = phi float [ %4, %.lr.ph ], [ %17, %14 ]
  %16 = load float* %8, align 4, !tbaa !32
  %17 = fadd float %15, %16
  store float %17, float* %3, align 4, !tbaa !27
  %18 = load float* %5, align 4, !tbaa !29
  %19 = fcmp olt float %17, %18
  br i1 %19, label %14, label %.preheader

; <label>:20                                      ; preds = %.lr.ph5, %20
  %21 = phi float [ %9, %.lr.ph5 ], [ %23, %20 ]
  %22 = load float* %13, align 4, !tbaa !32
  %23 = fsub float %21, %22
  store float %23, float* %3, align 4, !tbaa !27
  %24 = load float* %10, align 4, !tbaa !31
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %20, %.preheader
  %.lcssa3 = phi float [ %9, %.preheader ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.t_range* %r, i64 %indvars.iv, i32 6
  store float %.lcssa3, float* %26, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge8, label %.preheader1

._crit_edge8:                                     ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: optsize
declare float @rando(i32*) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @print_ga(%struct.__sFILE* nocapture %fp, %struct.t_genalg* %ga, float %rmsf, float %energy, %struct.t_range* nocapture readnone %range, float %tol) #1 {
  %1 = tail call float @cost(float %rmsf, float %energy) #6
  %2 = load i32* @print_ga.nfeval, align 4, !tbaa !28
  %3 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !15
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %9 = load float** %8, align 8, !tbaa !21
  %10 = getelementptr inbounds float* %9, i64 %7
  store float %1, float* %10, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %12 = load float** %11, align 8, !tbaa !22
  %13 = getelementptr inbounds float* %12, i64 %7
  store float %rmsf, float* %13, align 4, !tbaa !27
  %14 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %15 = load float** %14, align 8, !tbaa !23
  %16 = getelementptr inbounds float* %15, i64 %7
  store float %energy, float* %16, align 4, !tbaa !27
  %17 = add nsw i32 %2, 1
  store i32 %17, i32* @print_ga.nfeval, align 4, !tbaa !28
  br label %.loopexit

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 4
  %20 = icmp eq i32 %2, %4
  br i1 %20, label %21, label %70

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  store i32 0, i32* %22, align 4, !tbaa !34
  %23 = icmp sgt i32 %2, 1
  br i1 %23, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %21
  %24 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %25 = load float** %24, align 8, !tbaa !21
  %26 = sext i32 %2 to i64
  br label %27

; <label>:27                                      ; preds = %.lr.ph16, %37
  %28 = phi i32 [ 0, %.lr.ph16 ], [ %38, %37 ]
  %indvars.iv25 = phi i64 [ 1, %.lr.ph16 ], [ %indvars.iv.next26, %37 ]
  %29 = getelementptr inbounds float* %25, i64 %indvars.iv25
  %30 = load float* %29, align 4, !tbaa !27
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds float* %25, i64 %31
  %33 = load float* %32, align 4, !tbaa !27
  %34 = fcmp olt float %30, %33
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %27
  %36 = trunc i64 %indvars.iv25 to i32
  store i32 %36, i32* %22, align 4, !tbaa !34
  br label %37

; <label>:37                                      ; preds = %27, %35
  %38 = phi i32 [ %28, %27 ], [ %36, %35 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %39 = icmp slt i64 %indvars.iv.next26, %26
  br i1 %39, label %27, label %._crit_edge17

._crit_edge17:                                    ; preds = %37, %21
  %40 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %42 = bitcast float** %41 to i8**
  %43 = load i8** %42, align 8, !tbaa !19
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %46 = load float*** %45, align 8, !tbaa !16
  %47 = getelementptr inbounds float** %46, i64 %44
  %48 = bitcast float** %47 to i8**
  %49 = load i8** %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %51 = load i32* %50, align 4, !tbaa !12
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 2
  %54 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false)
  %55 = tail call i8* @__memcpy_chk(i8* %43, i8* %49, i64 %53, i64 %54) #6
  %56 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %57 = bitcast float** %56 to i8**
  %58 = load i8** %57, align 8, !tbaa !20
  %59 = load i32* %22, align 4, !tbaa !34
  %60 = sext i32 %59 to i64
  %61 = load float*** %45, align 8, !tbaa !16
  %62 = getelementptr inbounds float** %61, i64 %60
  %63 = bitcast float** %62 to i8**
  %64 = load i8** %63, align 8, !tbaa !26
  %65 = load i32* %50, align 4, !tbaa !12
  %66 = sext i32 %65 to i64
  %67 = shl nsw i64 %66, 2
  %68 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %58, i1 false)
  %69 = tail call i8* @__memcpy_chk(i8* %58, i8* %64, i64 %67, i64 %68) #6
  br label %70

; <label>:70                                      ; preds = %._crit_edge17, %18
  %71 = load i32* %19, align 4, !tbaa !13
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 13
  %74 = load float** %73, align 8, !tbaa !21
  %75 = getelementptr inbounds float* %74, i64 %72
  %76 = load float* %75, align 4, !tbaa !27
  %77 = fcmp ugt float %1, %76
  br i1 %77, label %117, label %78

; <label>:78                                      ; preds = %70
  store float %1, float* %75, align 4, !tbaa !27
  %79 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %80 = load float** %79, align 8, !tbaa !22
  %81 = getelementptr inbounds float* %80, i64 %72
  store float %rmsf, float* %81, align 4, !tbaa !27
  %82 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %83 = load float** %82, align 8, !tbaa !23
  %84 = getelementptr inbounds float* %83, i64 %72
  store float %energy, float* %84, align 4, !tbaa !27
  %85 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %86 = load float*** %85, align 8, !tbaa !17
  %87 = getelementptr inbounds float** %86, i64 %72
  %88 = bitcast float** %87 to i8**
  %89 = load i8** %88, align 8, !tbaa !26
  %90 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 14
  %91 = bitcast float** %90 to i8**
  %92 = load i8** %91, align 8, !tbaa !18
  %93 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %94 = load i32* %93, align 4, !tbaa !12
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 2
  %97 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %89, i1 false)
  %98 = tail call i8* @__memcpy_chk(i8* %89, i8* %92, i64 %96, i64 %97) #6
  %99 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  %100 = load i32* %99, align 4, !tbaa !34
  %101 = sext i32 %100 to i64
  %102 = load float** %73, align 8, !tbaa !21
  %103 = getelementptr inbounds float* %102, i64 %101
  %104 = load float* %103, align 4, !tbaa !27
  %105 = fcmp olt float %1, %104
  br i1 %105, label %106, label %134

; <label>:106                                     ; preds = %78
  %107 = load i32* %19, align 4, !tbaa !13
  store i32 %107, i32* %99, align 4, !tbaa !34
  %108 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %109 = bitcast float** %108 to i8**
  %110 = load i8** %109, align 8, !tbaa !19
  %111 = load i8** %91, align 8, !tbaa !18
  %112 = load i32* %93, align 4, !tbaa !12
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 2
  %115 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %110, i1 false)
  %116 = tail call i8* @__memcpy_chk(i8* %110, i8* %111, i64 %114, i64 %115) #6
  br label %134

; <label>:117                                     ; preds = %70
  %118 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %119 = load float*** %118, align 8, !tbaa !17
  %120 = getelementptr inbounds float** %119, i64 %72
  %121 = bitcast float** %120 to i8**
  %122 = load i8** %121, align 8, !tbaa !26
  %123 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %124 = load float*** %123, align 8, !tbaa !16
  %125 = getelementptr inbounds float** %124, i64 %72
  %126 = bitcast float** %125 to i8**
  %127 = load i8** %126, align 8, !tbaa !26
  %128 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %129 = load i32* %128, align 4, !tbaa !12
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 2
  %132 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %122, i1 false)
  %133 = tail call i8* @__memcpy_chk(i8* %122, i8* %127, i64 %131, i64 %132) #6
  br label %134

; <label>:134                                     ; preds = %78, %106, %117
  %135 = load i32* %19, align 4, !tbaa !13
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4, !tbaa !13
  %137 = load i32* %3, align 4, !tbaa !15
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %243

; <label>:139                                     ; preds = %134
  %140 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 12
  %141 = bitcast float** %140 to i8**
  %142 = load i8** %141, align 8, !tbaa !20
  %143 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 11
  %144 = bitcast float** %143 to i8**
  %145 = load i8** %144, align 8, !tbaa !19
  %146 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 1
  %147 = load i32* %146, align 4, !tbaa !12
  %148 = sext i32 %147 to i64
  %149 = shl nsw i64 %148, 2
  %150 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %142, i1 false)
  %151 = tail call i8* @__memcpy_chk(i8* %142, i8* %145, i64 %149, i64 %150) #6
  %152 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 9
  %153 = bitcast float*** %152 to i64*
  %154 = load i64* %153, align 8, !tbaa !16
  %155 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 10
  %156 = bitcast float*** %155 to i64*
  %157 = load i64* %156, align 8, !tbaa !17
  store i64 %157, i64* %153, align 8, !tbaa !16
  store i64 %154, i64* %156, align 8, !tbaa !17
  %158 = load i32* %3, align 4, !tbaa !15
  %159 = icmp sgt i32 %158, 0
  %160 = load float** %73, align 8, !tbaa !21
  br i1 %159, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %139
  %161 = sext i32 %158 to i64
  br label %162

; <label>:162                                     ; preds = %.lr.ph11, %162
  %indvars.iv23 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next24, %162 ]
  %cmean.08 = phi float [ 0.000000e+00, %.lr.ph11 ], [ %165, %162 ]
  %163 = getelementptr inbounds float* %160, i64 %indvars.iv23
  %164 = load float* %163, align 4, !tbaa !27
  %165 = fadd float %cmean.08, %164
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %166 = icmp slt i64 %indvars.iv.next24, %161
  br i1 %166, label %162, label %._crit_edge12

._crit_edge12:                                    ; preds = %162, %139
  %cmean.0.lcssa = phi float [ 0.000000e+00, %139 ], [ %165, %162 ]
  %167 = sitofp i32 %158 to float
  %168 = fdiv float %cmean.0.lcssa, %167
  %169 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 5
  %170 = load i32* %169, align 4, !tbaa !14
  %171 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 6
  %172 = load i32* %171, align 4, !tbaa !34
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float* %160, i64 %173
  %175 = load float* %174, align 4, !tbaa !27
  %176 = fpext float %175 to double
  %177 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 16
  %178 = load float** %177, align 8, !tbaa !23
  %179 = getelementptr inbounds float* %178, i64 %173
  %180 = load float* %179, align 4, !tbaa !27
  %181 = fpext float %180 to double
  %182 = getelementptr inbounds %struct.t_genalg* %ga, i64 0, i32 15
  %183 = load float** %182, align 8, !tbaa !22
  %184 = getelementptr inbounds float* %183, i64 %173
  %185 = load float* %184, align 4, !tbaa !27
  %186 = fpext float %185 to double
  %187 = fpext float %168 to double
  %188 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), i32 %170, double %176, double %181, double %186, double %187) #6
  %189 = load i32* %146, align 4, !tbaa !12
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge12, %.lr.ph6
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph6 ], [ 0, %._crit_edge12 ]
  %191 = load float** %143, align 8, !tbaa !19
  %192 = getelementptr inbounds float* %191, i64 %indvars.iv21
  %193 = load float* %192, align 4, !tbaa !27
  %194 = fpext float %193 to double
  %195 = trunc i64 %indvars.iv21 to i32
  %196 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i32 %195, double %194) #6
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %197 = load i32* %146, align 4, !tbaa !12
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %indvars.iv.next22, %198
  br i1 %199, label %.lr.ph6, label %._crit_edge7

._crit_edge7:                                     ; preds = %.lr.ph6, %._crit_edge12
  %200 = load i32* %171, align 4, !tbaa !34
  %201 = sext i32 %200 to i64
  %202 = load float** %73, align 8, !tbaa !21
  %203 = getelementptr inbounds float* %202, i64 %201
  %204 = load float* %203, align 4, !tbaa !27
  %205 = fcmp olt float %204, %tol
  br i1 %205, label %.preheader, label %241

.preheader:                                       ; preds = %._crit_edge7
  %206 = load i32* %3, align 4, !tbaa !15
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %.lr.ph3, label %.loopexit

.lr.ph3:                                          ; preds = %.preheader, %._crit_edge28
  %208 = phi i32 [ %.pre30, %._crit_edge28 ], [ %200, %.preheader ]
  %209 = phi float* [ %.pre29, %._crit_edge28 ], [ %202, %.preheader ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %._crit_edge28 ], [ 0, %.preheader ]
  %210 = getelementptr inbounds float* %209, i64 %indvars.iv19
  %211 = load float* %210, align 4, !tbaa !27
  %212 = fpext float %211 to double
  %213 = load float** %177, align 8, !tbaa !23
  %214 = getelementptr inbounds float* %213, i64 %indvars.iv19
  %215 = load float* %214, align 4, !tbaa !27
  %216 = fpext float %215 to double
  %217 = load float** %182, align 8, !tbaa !22
  %218 = getelementptr inbounds float* %217, i64 %indvars.iv19
  %219 = load float* %218, align 4, !tbaa !27
  %220 = fpext float %219 to double
  %221 = trunc i64 %indvars.iv19 to i32
  %222 = icmp eq i32 %221, %208
  %223 = select i1 %222, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str25, i64 0, i64 0)
  %224 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str23, i64 0, i64 0), i32 %221, double %212, double %216, double %220, i8* %223) #6
  %225 = load i32* %146, align 4, !tbaa !12
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph3, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph3 ]
  %227 = load float*** %152, align 8, !tbaa !16
  %228 = getelementptr inbounds float** %227, i64 %indvars.iv19
  %229 = load float** %228, align 8, !tbaa !26
  %230 = getelementptr inbounds float* %229, i64 %indvars.iv
  %231 = load float* %230, align 4, !tbaa !27
  %232 = fpext float %231 to double
  %233 = trunc i64 %indvars.iv to i32
  %234 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str26, i64 0, i64 0), i32 %221, i32 %233, double %232) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %235 = load i32* %146, align 4, !tbaa !12
  %236 = sext i32 %235 to i64
  %237 = icmp slt i64 %indvars.iv.next, %236
  br i1 %237, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph3
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %238 = load i32* %3, align 4, !tbaa !15
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %indvars.iv.next20, %239
  br i1 %240, label %._crit_edge28, label %.loopexit

._crit_edge28:                                    ; preds = %._crit_edge
  %.pre29 = load float** %73, align 8, !tbaa !21
  %.pre30 = load i32* %171, align 4, !tbaa !34
  br label %.lr.ph3

; <label>:241                                     ; preds = %._crit_edge7
  %242 = tail call i32 @fflush(%struct.__sFILE* %fp) #6
  br label %243

; <label>:243                                     ; preds = %241, %134
  %244 = load i32* @print_ga.nfeval, align 4, !tbaa !28
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @print_ga.nfeval, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %243, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %243 ], [ 1, %.preheader ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: optsize
declare float @cost(float, float) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !9, i64 32}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !9, i64 28, !9, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!8 = !{!"int", !4, i64 0}
!9 = !{!"float", !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!7, !9, i64 28}
!12 = !{!7, !8, i64 4}
!13 = !{!7, !8, i64 16}
!14 = !{!7, !8, i64 20}
!15 = !{!7, !8, i64 0}
!16 = !{!7, !10, i64 40}
!17 = !{!7, !10, i64 48}
!18 = !{!7, !10, i64 80}
!19 = !{!7, !10, i64 56}
!20 = !{!7, !10, i64 64}
!21 = !{!7, !10, i64 72}
!22 = !{!7, !10, i64 88}
!23 = !{!7, !10, i64 96}
!24 = !{!7, !8, i64 12}
!25 = !{!7, !8, i64 8}
!26 = !{!10, !10, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !9, i64 12}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!31 = !{!30, !9, i64 16}
!32 = !{!30, !9, i64 20}
!33 = !{!30, !9, i64 24}
!34 = !{!7, !8, i64 24}
