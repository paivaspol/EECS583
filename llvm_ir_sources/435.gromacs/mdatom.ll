; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdatom.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdatom.c\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"md->massA\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"md->massB\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"md->massT\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"md->invmass\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"md->chargeA\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"md->chargeB\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"md->chargeT\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"md->resnr\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"md->typeA\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"md->typeB\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"md->ptype\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"md->cTC\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"md->cENER\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"md->cACC\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"md->cFREEZE\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"md->cXTC\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"md->cVCM\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"md->cORF\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"md->bPerturbed\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"md->cU1\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"md->cU2\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str24 = private unnamed_addr constant [49 x i8] c"There are %d atoms for free energy perturbation\0A\00", align 1
@init_mdatoms.lambda0 = internal unnamed_addr global float 0.000000e+00, align 4

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
define %struct.t_mdatoms* @atoms2md(%struct.__sFILE* %fp, %struct.t_atoms* nocapture %atoms, [3 x i32]* nocapture readonly %nFreeze, i32 %bBD, float %delta_t, float %fric, float* nocapture readonly %tau_t, i32 %bPert, i32 %bFree) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 50, i32 1, i32 176) #6
  %2 = bitcast i8* %1 to %struct.t_mdatoms*
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds i8* %1, i64 4
  %6 = bitcast i8* %5 to i32*
  store i32 %4, i32* %6, align 4, !tbaa !17
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 52, i32 %4, i32 4) #6
  %8 = getelementptr inbounds i8* %1, i64 8
  %9 = bitcast i8* %8 to float**
  %10 = bitcast i8* %8 to i8**
  store i8* %7, i8** %10, align 8, !tbaa !20
  %11 = load i32* %6, align 4, !tbaa !17
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %11, i32 4) #6
  %13 = getelementptr inbounds i8* %1, i64 16
  %14 = bitcast i8* %13 to float**
  %15 = bitcast i8* %13 to i8**
  store i8* %12, i8** %15, align 8, !tbaa !21
  %16 = load i32* %6, align 4, !tbaa !17
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %16, i32 4) #6
  %18 = getelementptr inbounds i8* %1, i64 24
  %19 = bitcast i8* %18 to float**
  %20 = bitcast i8* %18 to i8**
  store i8* %17, i8** %20, align 8, !tbaa !22
  %21 = load i32* %6, align 4, !tbaa !17
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %21, i32 4) #6
  %23 = getelementptr inbounds i8* %1, i64 32
  %24 = bitcast i8* %23 to float**
  %25 = bitcast i8* %23 to i8**
  store i8* %22, i8** %25, align 8, !tbaa !23
  %26 = load i32* %6, align 4, !tbaa !17
  %27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 56, i32 %26, i32 4) #6
  %28 = getelementptr inbounds i8* %1, i64 40
  %29 = bitcast i8* %28 to float**
  %30 = bitcast i8* %28 to i8**
  store i8* %27, i8** %30, align 8, !tbaa !24
  %31 = load i32* %6, align 4, !tbaa !17
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %31, i32 4) #6
  %33 = getelementptr inbounds i8* %1, i64 48
  %34 = bitcast i8* %33 to float**
  %35 = bitcast i8* %33 to i8**
  store i8* %32, i8** %35, align 8, !tbaa !25
  %36 = load i32* %6, align 4, !tbaa !17
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 58, i32 %36, i32 4) #6
  %38 = getelementptr inbounds i8* %1, i64 56
  %39 = bitcast i8* %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !26
  %40 = load i32* %6, align 4, !tbaa !17
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 59, i32 %40, i32 4) #6
  %42 = getelementptr inbounds i8* %1, i64 72
  %43 = bitcast i8* %42 to i32**
  %44 = bitcast i8* %42 to i8**
  store i8* %41, i8** %44, align 8, !tbaa !27
  %45 = load i32* %6, align 4, !tbaa !17
  %46 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 60, i32 %45, i32 4) #6
  %47 = getelementptr inbounds i8* %1, i64 80
  %48 = bitcast i8* %47 to i32**
  %49 = bitcast i8* %47 to i8**
  store i8* %46, i8** %49, align 8, !tbaa !28
  %50 = load i32* %6, align 4, !tbaa !17
  %51 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %50, i32 4) #6
  %52 = getelementptr inbounds i8* %1, i64 88
  %53 = bitcast i8* %52 to i32**
  %54 = bitcast i8* %52 to i8**
  store i8* %51, i8** %54, align 8, !tbaa !29
  %55 = load i32* %6, align 4, !tbaa !17
  %56 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %55, i32 2) #6
  %57 = getelementptr inbounds i8* %1, i64 96
  %58 = bitcast i8* %57 to i16**
  %59 = bitcast i8* %57 to i8**
  store i8* %56, i8** %59, align 8, !tbaa !30
  %60 = load i32* %6, align 4, !tbaa !17
  %61 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %60, i32 2) #6
  %62 = getelementptr inbounds i8* %1, i64 104
  %63 = bitcast i8* %62 to i16**
  %64 = bitcast i8* %62 to i8**
  store i8* %61, i8** %64, align 8, !tbaa !31
  %65 = load i32* %6, align 4, !tbaa !17
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %65, i32 2) #6
  %67 = getelementptr inbounds i8* %1, i64 112
  %68 = bitcast i8* %67 to i16**
  %69 = bitcast i8* %67 to i8**
  store i8* %66, i8** %69, align 8, !tbaa !32
  %70 = load i32* %6, align 4, !tbaa !17
  %71 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 65, i32 %70, i32 2) #6
  %72 = getelementptr inbounds i8* %1, i64 120
  %73 = bitcast i8* %72 to i16**
  %74 = bitcast i8* %72 to i8**
  store i8* %71, i8** %74, align 8, !tbaa !33
  %75 = load i32* %6, align 4, !tbaa !17
  %76 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %75, i32 2) #6
  %77 = getelementptr inbounds i8* %1, i64 128
  %78 = bitcast i8* %77 to i16**
  %79 = bitcast i8* %77 to i8**
  store i8* %76, i8** %79, align 8, !tbaa !34
  %80 = load i32* %6, align 4, !tbaa !17
  %81 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %80, i32 2) #6
  %82 = getelementptr inbounds i8* %1, i64 136
  %83 = bitcast i8* %82 to i16**
  %84 = bitcast i8* %82 to i8**
  store i8* %81, i8** %84, align 8, !tbaa !35
  %85 = load i32* %6, align 4, !tbaa !17
  %86 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %85, i32 2) #6
  %87 = getelementptr inbounds i8* %1, i64 144
  %88 = bitcast i8* %87 to i16**
  %89 = bitcast i8* %87 to i8**
  store i8* %86, i8** %89, align 8, !tbaa !36
  %90 = load i32* %6, align 4, !tbaa !17
  %91 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %90, i32 2) #6
  %92 = getelementptr inbounds i8* %1, i64 168
  %93 = bitcast i8* %92 to i16**
  %94 = bitcast i8* %92 to i8**
  store i8* %91, i8** %94, align 8, !tbaa !37
  %95 = load i32* %6, align 4, !tbaa !17
  %96 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 70, i32 %95, i32 4) #6
  %97 = getelementptr inbounds i8* %1, i64 64
  %98 = bitcast i8* %97 to i32**
  %99 = bitcast i8* %97 to i8**
  store i8* %96, i8** %99, align 8, !tbaa !38
  %100 = load i32* %6, align 4, !tbaa !17
  %101 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %100, i32 2) #6
  %102 = getelementptr inbounds i8* %1, i64 152
  %103 = bitcast i8* %102 to i16**
  %104 = bitcast i8* %102 to i8**
  store i8* %101, i8** %104, align 8, !tbaa !39
  %105 = load i32* %6, align 4, !tbaa !17
  %106 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 73, i32 %105, i32 2) #6
  %107 = getelementptr inbounds i8* %1, i64 160
  %108 = bitcast i8* %107 to i8**
  store i8* %106, i8** %108, align 8, !tbaa !40
  %109 = load i32* %6, align 4, !tbaa !17
  %110 = icmp sgt i32 %109, 0
  %111 = bitcast i8* %106 to i16*
  br i1 %110, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %112 = icmp eq i32 %bBD, 0
  %113 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %114 = icmp eq i32 %bPert, 0
  %115 = fmul float %delta_t, %fric
  br label %116

; <label>:116                                     ; preds = %.lr.ph, %296
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %296 ]
  %tm.06 = phi double [ 0.000000e+00, %.lr.ph ], [ %tm.1, %296 ]
  %np.05 = phi i32 [ 0, %.lr.ph ], [ %np.1, %296 ]
  br i1 %112, label %143, label %117

; <label>:117                                     ; preds = %116
  %fabsf4 = tail call float @fabsf(float %fric) #4
  %118 = fpext float %fabsf4 to double
  %119 = fcmp ogt double %118, 1.200000e-38
  br i1 %119, label %120, label %125

; <label>:120                                     ; preds = %117
  %121 = load float** %9, align 8, !tbaa !20
  %122 = getelementptr inbounds float* %121, i64 %indvars.iv
  store float %115, float* %122, align 4, !tbaa !41
  %123 = load float** %14, align 8, !tbaa !21
  %124 = getelementptr inbounds float* %123, i64 %indvars.iv
  store float %115, float* %124, align 4, !tbaa !41
  %.pre = load %struct.t_atom** %113, align 8, !tbaa !42
  br label %157

; <label>:125                                     ; preds = %117
  %126 = load %struct.t_atom** %113, align 8, !tbaa !42
  %127 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 8, i64 0
  %128 = load i8* %127, align 1, !tbaa !13
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds float* %tau_t, i64 %129
  %131 = load float* %130, align 4, !tbaa !41
  %132 = fdiv float %delta_t, %131
  %133 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 0
  %134 = load float* %133, align 4, !tbaa !43
  %135 = fmul float %132, %134
  %136 = load float** %9, align 8, !tbaa !20
  %137 = getelementptr inbounds float* %136, i64 %indvars.iv
  store float %135, float* %137, align 4, !tbaa !41
  %138 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 2
  %139 = load float* %138, align 4, !tbaa !45
  %140 = fmul float %132, %139
  %141 = load float** %14, align 8, !tbaa !21
  %142 = getelementptr inbounds float* %141, i64 %indvars.iv
  store float %140, float* %142, align 4, !tbaa !41
  br label %157

; <label>:143                                     ; preds = %116
  %144 = load %struct.t_atom** %113, align 8, !tbaa !42
  %145 = getelementptr inbounds %struct.t_atom* %144, i64 %indvars.iv, i32 0
  %146 = bitcast float* %145 to i32*
  %147 = load i32* %146, align 4, !tbaa !43
  %148 = load float** %9, align 8, !tbaa !20
  %149 = getelementptr inbounds float* %148, i64 %indvars.iv
  %150 = bitcast float* %149 to i32*
  store i32 %147, i32* %150, align 4, !tbaa !41
  %151 = getelementptr inbounds %struct.t_atom* %144, i64 %indvars.iv, i32 2
  %152 = bitcast float* %151 to i32*
  %153 = load i32* %152, align 4, !tbaa !45
  %154 = load float** %14, align 8, !tbaa !21
  %155 = getelementptr inbounds float* %154, i64 %indvars.iv
  %156 = bitcast float* %155 to i32*
  store i32 %153, i32* %156, align 4, !tbaa !41
  br label %157

; <label>:157                                     ; preds = %120, %125, %143
  %158 = phi %struct.t_atom* [ %.pre, %120 ], [ %126, %125 ], [ %144, %143 ]
  %159 = phi float* [ %121, %120 ], [ %136, %125 ], [ %148, %143 ]
  %160 = getelementptr inbounds float* %159, i64 %indvars.iv
  %161 = bitcast float* %160 to i32*
  %162 = load i32* %161, align 4, !tbaa !41
  %163 = load float** %19, align 8, !tbaa !22
  %164 = getelementptr inbounds float* %163, i64 %indvars.iv
  %165 = bitcast float* %164 to i32*
  store i32 %162, i32* %165, align 4, !tbaa !41
  %166 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 1
  %167 = bitcast float* %166 to i32*
  %168 = load i32* %167, align 4, !tbaa !46
  %169 = load float** %29, align 8, !tbaa !24
  %170 = getelementptr inbounds float* %169, i64 %indvars.iv
  %171 = bitcast float* %170 to i32*
  store i32 %168, i32* %171, align 4, !tbaa !41
  %172 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 3
  %173 = bitcast float* %172 to i32*
  %174 = load i32* %173, align 4, !tbaa !47
  %175 = load float** %34, align 8, !tbaa !25
  %176 = getelementptr inbounds float* %175, i64 %indvars.iv
  %177 = bitcast float* %176 to i32*
  store i32 %174, i32* %177, align 4, !tbaa !41
  %178 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 7
  %179 = load i32* %178, align 4, !tbaa !48
  %180 = load i32** %43, align 8, !tbaa !27
  %181 = getelementptr inbounds i32* %180, i64 %indvars.iv
  store i32 %179, i32* %181, align 4, !tbaa !49
  %182 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 4
  %183 = load i16* %182, align 2, !tbaa !50
  %184 = zext i16 %183 to i32
  %185 = load i32** %48, align 8, !tbaa !28
  %186 = getelementptr inbounds i32* %185, i64 %indvars.iv
  store i32 %184, i32* %186, align 4, !tbaa !49
  %187 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 5
  %188 = load i16* %187, align 2, !tbaa !51
  %189 = zext i16 %188 to i32
  %190 = load i32** %53, align 8, !tbaa !29
  %191 = getelementptr inbounds i32* %190, i64 %indvars.iv
  store i32 %189, i32* %191, align 4, !tbaa !49
  %192 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 6
  %193 = load i32* %192, align 4, !tbaa !52
  %194 = trunc i32 %193 to i16
  %195 = load i16** %58, align 8, !tbaa !30
  %196 = getelementptr inbounds i16* %195, i64 %indvars.iv
  store i16 %194, i16* %196, align 2, !tbaa !53
  %197 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 0
  %198 = load i8* %197, align 1, !tbaa !13
  %199 = zext i8 %198 to i16
  %200 = load i16** %63, align 8, !tbaa !31
  %201 = getelementptr inbounds i16* %200, i64 %indvars.iv
  store i16 %199, i16* %201, align 2, !tbaa !53
  %202 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 1
  %203 = load i8* %202, align 1, !tbaa !13
  %204 = zext i8 %203 to i16
  %205 = load i16** %68, align 8, !tbaa !32
  %206 = getelementptr inbounds i16* %205, i64 %indvars.iv
  store i16 %204, i16* %206, align 2, !tbaa !53
  %207 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 2
  %208 = load i8* %207, align 1, !tbaa !13
  %209 = zext i8 %208 to i16
  %210 = load i16** %73, align 8, !tbaa !33
  %211 = getelementptr inbounds i16* %210, i64 %indvars.iv
  store i16 %209, i16* %211, align 2, !tbaa !53
  %212 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 3
  %213 = load i8* %212, align 1, !tbaa !13
  %214 = zext i8 %213 to i16
  %215 = load i16** %78, align 8, !tbaa !34
  %216 = getelementptr inbounds i16* %215, i64 %indvars.iv
  store i16 %214, i16* %216, align 2, !tbaa !53
  %217 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 7
  %218 = load i8* %217, align 1, !tbaa !13
  %219 = zext i8 %218 to i16
  %220 = load i16** %83, align 8, !tbaa !35
  %221 = getelementptr inbounds i16* %220, i64 %indvars.iv
  store i16 %219, i16* %221, align 2, !tbaa !53
  %222 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 6
  %223 = load i8* %222, align 1, !tbaa !13
  %224 = zext i8 %223 to i16
  %225 = load i16** %88, align 8, !tbaa !36
  %226 = getelementptr inbounds i16* %225, i64 %indvars.iv
  store i16 %224, i16* %226, align 2, !tbaa !53
  %227 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 8
  %228 = load i8* %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i16
  %230 = load i16** %93, align 8, !tbaa !37
  %231 = getelementptr inbounds i16* %230, i64 %indvars.iv
  store i16 %229, i16* %231, align 2, !tbaa !53
  %232 = load float* %160, align 4, !tbaa !41
  %fabsf = tail call float @fabsf(float %232) #4
  %233 = fpext float %fabsf to double
  %234 = fcmp ogt double %233, 1.200000e-38
  br i1 %234, label %235, label %267

; <label>:235                                     ; preds = %157
  %236 = load float** %19, align 8, !tbaa !22
  %237 = getelementptr inbounds float* %236, i64 %indvars.iv
  %238 = load float* %237, align 4, !tbaa !41
  %239 = fpext float %238 to double
  %240 = fadd double %tm.06, %239
  %241 = load i16* %216, align 2, !tbaa !53
  %242 = zext i16 %241 to i64
  %243 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 0
  %244 = load i32* %243, align 4, !tbaa !49
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %257, label %246

; <label>:246                                     ; preds = %235
  %247 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 1
  %248 = load i32* %247, align 4, !tbaa !49
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

; <label>:250                                     ; preds = %246
  %251 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 2
  %252 = load i32* %251, align 4, !tbaa !49
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

; <label>:254                                     ; preds = %250
  %255 = load float** %24, align 8, !tbaa !23
  %256 = getelementptr inbounds float* %255, i64 %indvars.iv
  store float 0x39B4484C00000000, float* %256, align 4, !tbaa !41
  br label %267

; <label>:257                                     ; preds = %250, %246, %235
  %fabsf3 = tail call float @fabsf(float %238) #4
  %258 = fpext float %fabsf3 to double
  %259 = fcmp olt double %258, 1.200000e-38
  br i1 %259, label %260, label %263

; <label>:260                                     ; preds = %257
  %261 = load float** %24, align 8, !tbaa !23
  %262 = getelementptr inbounds float* %261, i64 %indvars.iv
  store float 0.000000e+00, float* %262, align 4, !tbaa !41
  br label %267

; <label>:263                                     ; preds = %257
  %264 = fdiv float 1.000000e+00, %238
  %265 = load float** %24, align 8, !tbaa !23
  %266 = getelementptr inbounds float* %265, i64 %indvars.iv
  store float %264, float* %266, align 4, !tbaa !41
  br label %267

; <label>:267                                     ; preds = %254, %263, %260, %157
  %tm.1 = phi double [ %240, %254 ], [ %240, %260 ], [ %240, %263 ], [ %tm.06, %157 ]
  br i1 %114, label %296, label %268

; <label>:268                                     ; preds = %267
  %269 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 2
  %270 = load float* %269, align 4, !tbaa !45
  %271 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 0
  %272 = load float* %271, align 4, !tbaa !43
  %273 = fsub float %270, %272
  %fabsf1 = tail call float @fabsf(float %273) #4
  %274 = fpext float %fabsf1 to double
  %275 = fcmp ogt double %274, 1.200000e-38
  br i1 %275, label %291, label %276

; <label>:276                                     ; preds = %268
  %277 = load float* %172, align 4, !tbaa !47
  %278 = load float* %166, align 4, !tbaa !46
  %279 = fsub float %277, %278
  %fabsf2 = tail call float @fabsf(float %279) #4
  %280 = fpext float %fabsf2 to double
  %281 = fcmp ogt double %280, 1.200000e-38
  br i1 %281, label %291, label %282

; <label>:282                                     ; preds = %276
  %283 = load i16* %187, align 2, !tbaa !51
  %284 = zext i16 %283 to i32
  %285 = load i16* %182, align 2, !tbaa !50
  %286 = zext i16 %285 to i32
  %287 = sub nsw i32 %284, %286
  %288 = sitofp i32 %287 to double
  %289 = tail call double @fabs(double %288) #7
  %290 = fcmp ogt double %289, 1.200000e-38
  br label %291

; <label>:291                                     ; preds = %282, %276, %268
  %292 = phi i1 [ true, %276 ], [ true, %268 ], [ %290, %282 ]
  %293 = zext i1 %292 to i32
  %294 = load i32** %98, align 8, !tbaa !38
  %295 = getelementptr inbounds i32* %294, i64 %indvars.iv
  store i32 %293, i32* %295, align 4, !tbaa !49
  %np.0. = add nsw i32 %293, %np.05
  br label %296

; <label>:296                                     ; preds = %291, %267
  %np.1 = phi i32 [ %np.05, %267 ], [ %np.0., %291 ]
  %297 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 4
  %298 = load i8* %297, align 1, !tbaa !13
  %299 = zext i8 %298 to i16
  %300 = load i16** %103, align 8, !tbaa !39
  %301 = getelementptr inbounds i16* %300, i64 %indvars.iv
  store i16 %299, i16* %301, align 2, !tbaa !53
  %302 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 5
  %303 = load i8* %302, align 1, !tbaa !13
  %304 = zext i8 %303 to i16
  %305 = getelementptr inbounds i16* %111, i64 %indvars.iv
  store i16 %304, i16* %305, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %306 = load i32* %6, align 4, !tbaa !17
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %indvars.iv.next, %307
  br i1 %308, label %116, label %._crit_edge

._crit_edge:                                      ; preds = %296, %0
  %tm.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %tm.1, %296 ]
  %np.0.lcssa = phi i32 [ 0, %0 ], [ %np.1, %296 ]
  %309 = fptrunc double %tm.0.lcssa to float
  %310 = bitcast i8* %1 to float*
  store float %309, float* %310, align 4, !tbaa !54
  %311 = icmp eq i32 %bFree, 0
  br i1 %311, label %316, label %312

; <label>:312                                     ; preds = %._crit_edge
  %313 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %314 = bitcast %struct.t_atom** %313 to i8**
  %315 = load i8** %314, align 8, !tbaa !42
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 133, i8* %315) #6
  store %struct.t_atom* null, %struct.t_atom** %313, align 8, !tbaa !42
  br label %316

; <label>:316                                     ; preds = %._crit_edge, %312
  %317 = icmp eq %struct.__sFILE* %fp, null
  br i1 %317, label %320, label %318

; <label>:318                                     ; preds = %316
  %319 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), i32 %np.0.lcssa) #6
  br label %320

; <label>:320                                     ; preds = %316, %318
  ret %struct.t_mdatoms* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @md2atoms(%struct.t_mdatoms* %md, %struct.t_atoms* nocapture %atoms, i32 %bFree) #3 {
  %1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !17
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 147, i32 %2, i32 40) #6
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %5 = bitcast %struct.t_atom** %4 to i8**
  store i8* %3, i8** %5, align 8, !tbaa !42
  %6 = load i32* %1, align 4, !tbaa !17
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %8 = bitcast i8* %3 to %struct.t_atom*
  %9 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %10 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10
  %12 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %13 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %15 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %16 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %17 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %18 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %19 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %20 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %21 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20
  %22 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21
  br label %23

; <label>:23                                      ; preds = %._crit_edge2, %.lr.ph
  %24 = phi %struct.t_atom* [ %8, %.lr.ph ], [ %.pre, %._crit_edge2 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %25 = load float** %9, align 8, !tbaa !22
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv
  %27 = bitcast float* %26 to i32*
  %28 = load i32* %27, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv
  %30 = bitcast %struct.t_atom* %29 to i32*
  store i32 %28, i32* %30, align 4, !tbaa !43
  %31 = load float** %10, align 8, !tbaa !26
  %32 = getelementptr inbounds float* %31, i64 %indvars.iv
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !41
  %35 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 1
  %36 = bitcast float* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !46
  %37 = load i32** %11, align 8, !tbaa !27
  %38 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %39 = load i32* %38, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 7
  store i32 %39, i32* %40, align 4, !tbaa !48
  %41 = load i32** %12, align 8, !tbaa !28
  %42 = getelementptr inbounds i32* %41, i64 %indvars.iv
  %43 = load i32* %42, align 4, !tbaa !49
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 4
  store i16 %44, i16* %45, align 2, !tbaa !50
  %46 = load i16** %13, align 8, !tbaa !30
  %47 = getelementptr inbounds i16* %46, i64 %indvars.iv
  %48 = load i16* %47, align 2, !tbaa !53
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 6
  store i32 %49, i32* %50, align 4, !tbaa !52
  %51 = load i16** %14, align 8, !tbaa !31
  %52 = getelementptr inbounds i16* %51, i64 %indvars.iv
  %53 = load i16* %52, align 2, !tbaa !53
  %54 = trunc i16 %53 to i8
  %55 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 8, i64 0
  store i8 %54, i8* %55, align 1, !tbaa !13
  %56 = load i16** %15, align 8, !tbaa !32
  %57 = getelementptr inbounds i16* %56, i64 %indvars.iv
  %58 = load i16* %57, align 2, !tbaa !53
  %59 = trunc i16 %58 to i8
  %60 = load %struct.t_atom** %4, align 8, !tbaa !42
  %61 = getelementptr inbounds %struct.t_atom* %60, i64 %indvars.iv, i32 8, i64 1
  store i8 %59, i8* %61, align 1, !tbaa !13
  %62 = load i16** %16, align 8, !tbaa !33
  %63 = getelementptr inbounds i16* %62, i64 %indvars.iv
  %64 = load i16* %63, align 2, !tbaa !53
  %65 = trunc i16 %64 to i8
  %66 = load %struct.t_atom** %4, align 8, !tbaa !42
  %67 = getelementptr inbounds %struct.t_atom* %66, i64 %indvars.iv, i32 8, i64 2
  store i8 %65, i8* %67, align 1, !tbaa !13
  %68 = load i16** %17, align 8, !tbaa !34
  %69 = getelementptr inbounds i16* %68, i64 %indvars.iv
  %70 = load i16* %69, align 2, !tbaa !53
  %71 = trunc i16 %70 to i8
  %72 = load %struct.t_atom** %4, align 8, !tbaa !42
  %73 = getelementptr inbounds %struct.t_atom* %72, i64 %indvars.iv, i32 8, i64 3
  store i8 %71, i8* %73, align 1, !tbaa !13
  %74 = load i16** %18, align 8, !tbaa !36
  %75 = getelementptr inbounds i16* %74, i64 %indvars.iv
  %76 = load i16* %75, align 2, !tbaa !53
  %77 = trunc i16 %76 to i8
  %78 = load %struct.t_atom** %4, align 8, !tbaa !42
  %79 = getelementptr inbounds %struct.t_atom* %78, i64 %indvars.iv, i32 8, i64 6
  store i8 %77, i8* %79, align 1, !tbaa !13
  %80 = load i16** %19, align 8, !tbaa !35
  %81 = getelementptr inbounds i16* %80, i64 %indvars.iv
  %82 = load i16* %81, align 2, !tbaa !53
  %83 = trunc i16 %82 to i8
  %84 = load %struct.t_atom** %4, align 8, !tbaa !42
  %85 = getelementptr inbounds %struct.t_atom* %84, i64 %indvars.iv, i32 8, i64 7
  store i8 %83, i8* %85, align 1, !tbaa !13
  %86 = load i16** %20, align 8, !tbaa !37
  %87 = getelementptr inbounds i16* %86, i64 %indvars.iv
  %88 = load i16* %87, align 2, !tbaa !53
  %89 = trunc i16 %88 to i8
  %90 = load %struct.t_atom** %4, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.t_atom* %90, i64 %indvars.iv, i32 8, i64 8
  store i8 %89, i8* %91, align 1, !tbaa !13
  %92 = load i16** %21, align 8, !tbaa !39
  %93 = getelementptr inbounds i16* %92, i64 %indvars.iv
  %94 = load i16* %93, align 2, !tbaa !53
  %95 = trunc i16 %94 to i8
  %96 = load %struct.t_atom** %4, align 8, !tbaa !42
  %97 = getelementptr inbounds %struct.t_atom* %96, i64 %indvars.iv, i32 8, i64 4
  store i8 %95, i8* %97, align 1, !tbaa !13
  %98 = load i16** %22, align 8, !tbaa !40
  %99 = getelementptr inbounds i16* %98, i64 %indvars.iv
  %100 = load i16* %99, align 2, !tbaa !53
  %101 = trunc i16 %100 to i8
  %102 = load %struct.t_atom** %4, align 8, !tbaa !42
  %103 = getelementptr inbounds %struct.t_atom* %102, i64 %indvars.iv, i32 8, i64 5
  store i8 %101, i8* %103, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %104 = load i32* %1, align 4, !tbaa !17
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %indvars.iv.next, %105
  br i1 %106, label %._crit_edge2, label %._crit_edge

._crit_edge2:                                     ; preds = %23
  %.pre = load %struct.t_atom** %4, align 8, !tbaa !42
  br label %23

._crit_edge:                                      ; preds = %23, %0
  %107 = icmp eq i32 %bFree, 0
  br i1 %107, label %169, label %108

; <label>:108                                     ; preds = %._crit_edge
  %109 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %110 = bitcast float** %109 to i8**
  %111 = load i8** %110, align 8, !tbaa !20
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %111) #6
  %112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %113 = bitcast float** %112 to i8**
  %114 = load i8** %113, align 8, !tbaa !21
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %114) #6
  %115 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %116 = bitcast float** %115 to i8**
  %117 = load i8** %116, align 8, !tbaa !22
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %117) #6
  %118 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %119 = bitcast float** %118 to i8**
  %120 = load i8** %119, align 8, !tbaa !23
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %120) #6
  %121 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %122 = bitcast float** %121 to i8**
  %123 = load i8** %122, align 8, !tbaa !24
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %123) #6
  %124 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %125 = bitcast float** %124 to i8**
  %126 = load i8** %125, align 8, !tbaa !25
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 172, i8* %126) #6
  %127 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %128 = bitcast float** %127 to i8**
  %129 = load i8** %128, align 8, !tbaa !26
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %129) #6
  %130 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10
  %131 = bitcast i32** %130 to i8**
  %132 = load i8** %131, align 8, !tbaa !27
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %132) #6
  %133 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %134 = bitcast i32** %133 to i8**
  %135 = load i8** %134, align 8, !tbaa !28
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 175, i8* %135) #6
  %136 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %137 = bitcast i32** %136 to i8**
  %138 = load i8** %137, align 8, !tbaa !29
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 176, i8* %138) #6
  %139 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %140 = bitcast i16** %139 to i8**
  %141 = load i8** %140, align 8, !tbaa !30
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 177, i8* %141) #6
  %142 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %143 = bitcast i16** %142 to i8**
  %144 = load i8** %143, align 8, !tbaa !31
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 178, i8* %144) #6
  %145 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %146 = bitcast i16** %145 to i8**
  %147 = load i8** %146, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 179, i8* %147) #6
  %148 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %149 = bitcast i16** %148 to i8**
  %150 = load i8** %149, align 8, !tbaa !33
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %150) #6
  %151 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %152 = bitcast i16** %151 to i8**
  %153 = load i8** %152, align 8, !tbaa !34
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 181, i8* %153) #6
  %154 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %155 = bitcast i16** %154 to i8**
  %156 = load i8** %155, align 8, !tbaa !36
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 182, i8* %156) #6
  %157 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %158 = bitcast i16** %157 to i8**
  %159 = load i8** %158, align 8, !tbaa !35
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %159) #6
  %160 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %161 = bitcast i16** %160 to i8**
  %162 = load i8** %161, align 8, !tbaa !37
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 184, i8* %162) #6
  %163 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20
  %164 = bitcast i16** %163 to i8**
  %165 = load i8** %164, align 8, !tbaa !39
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %165) #6
  %166 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21
  %167 = bitcast i16** %166 to i8**
  %168 = load i8** %167, align 8, !tbaa !40
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 187, i8* %168) #6
  br label %169

; <label>:169                                     ; preds = %._crit_edge, %108
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_mdatoms(%struct.t_mdatoms* nocapture readonly %md, float %lambda, i32 %bFirst) #3 {
  %1 = fsub float 1.000000e+00, %lambda
  %2 = icmp eq i32 %bFirst, 0
  br i1 %2, label %3, label %.thread

.thread:                                          ; preds = %0
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !tbaa !41
  br label %.preheader

; <label>:3                                       ; preds = %0
  %4 = load float* @init_mdatoms.lambda0, align 4, !tbaa !41
  %5 = fsub float %4, %lambda
  %fabsf = tail call float @fabsf(float %5) #4
  %6 = fpext float %fabsf to double
  %7 = fcmp ogt double %6, 1.200000e-38
  br i1 %7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %3, %.thread
  %.ph.in = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %.ph = load i32* %.ph.in, align 4
  %8 = icmp sgt i32 %.ph, 0
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %9 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %10 = load i32** %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %12 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %13 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %15 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %16 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %17 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %18 = add i32 %.ph, -1
  br label %19

; <label>:19                                      ; preds = %55, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  %20 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %21 = load i32* %20, align 4, !tbaa !49
  %22 = or i32 %21, %bFirst
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

; <label>:24                                      ; preds = %19
  %25 = load float** %11, align 8, !tbaa !20
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv
  %27 = load float* %26, align 4, !tbaa !41
  %28 = fmul float %1, %27
  %29 = load float** %12, align 8, !tbaa !21
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv
  %31 = load float* %30, align 4, !tbaa !41
  %32 = fmul float %31, %lambda
  %33 = fadd float %28, %32
  %34 = load float** %13, align 8, !tbaa !22
  %35 = getelementptr inbounds float* %34, i64 %indvars.iv
  store float %33, float* %35, align 4, !tbaa !41
  %36 = load float** %14, align 8, !tbaa !23
  %37 = getelementptr inbounds float* %36, i64 %indvars.iv
  %38 = load float* %37, align 4, !tbaa !41
  %39 = fpext float %38 to double
  %40 = fcmp ogt double %39, 0x39B64F86CB9CEFB1
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %24
  %42 = fdiv float 1.000000e+00, %33
  store float %42, float* %37, align 4, !tbaa !41
  br label %43

; <label>:43                                      ; preds = %41, %24
  %44 = load float** %15, align 8, !tbaa !24
  %45 = getelementptr inbounds float* %44, i64 %indvars.iv
  %46 = load float* %45, align 4, !tbaa !41
  %47 = fmul float %1, %46
  %48 = load float** %16, align 8, !tbaa !25
  %49 = getelementptr inbounds float* %48, i64 %indvars.iv
  %50 = load float* %49, align 4, !tbaa !41
  %51 = fmul float %50, %lambda
  %52 = fadd float %47, %51
  %53 = load float** %17, align 8, !tbaa !26
  %54 = getelementptr inbounds float* %53, i64 %indvars.iv
  store float %52, float* %54, align 4, !tbaa !41
  br label %55

; <label>:55                                      ; preds = %19, %43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %18
  br i1 %exitcond, label %.loopexit, label %19

.loopexit:                                        ; preds = %55, %.preheader, %3
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !tbaa !41
  ret void
}

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

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
!15 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !16, i64 72, !5, i64 1128, !4, i64 1272}
!16 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!17 = !{!18, !7, i64 4}
!18 = !{!"", !19, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!19 = !{!"float", !5, i64 0}
!20 = !{!18, !4, i64 8}
!21 = !{!18, !4, i64 16}
!22 = !{!18, !4, i64 24}
!23 = !{!18, !4, i64 32}
!24 = !{!18, !4, i64 40}
!25 = !{!18, !4, i64 48}
!26 = !{!18, !4, i64 56}
!27 = !{!18, !4, i64 72}
!28 = !{!18, !4, i64 80}
!29 = !{!18, !4, i64 88}
!30 = !{!18, !4, i64 96}
!31 = !{!18, !4, i64 104}
!32 = !{!18, !4, i64 112}
!33 = !{!18, !4, i64 120}
!34 = !{!18, !4, i64 128}
!35 = !{!18, !4, i64 136}
!36 = !{!18, !4, i64 144}
!37 = !{!18, !4, i64 168}
!38 = !{!18, !4, i64 64}
!39 = !{!18, !4, i64 152}
!40 = !{!18, !4, i64 160}
!41 = !{!19, !19, i64 0}
!42 = !{!15, !4, i64 8}
!43 = !{!44, !19, i64 0}
!44 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!45 = !{!44, !19, i64 8}
!46 = !{!44, !19, i64 4}
!47 = !{!44, !19, i64 12}
!48 = !{!44, !7, i64 24}
!49 = !{!7, !7, i64 0}
!50 = !{!44, !8, i64 16}
!51 = !{!44, !8, i64 18}
!52 = !{!44, !7, i64 20}
!53 = !{!8, !8, i64 0}
!54 = !{!18, !19, i64 0}
