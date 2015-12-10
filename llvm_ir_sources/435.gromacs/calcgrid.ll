; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcgrid.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@factor = global [6 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13], align 16
@.str = private unnamed_addr constant [33 x i8] c"invalid fourier grid spacing: %g\00", align 1
@ng = common global i32 0, align 4
@ng_max = common global i32 0, align 4
@n_list = common global i32 0, align 4
@n_list_alloc = common global i32 0, align 4
@list = common global i32* null, align 8
@decomp = common global [6 x i32] zeroinitializer, align 16
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [47 x i8] c"Calculating fourier grid dimensions for%s%s%s\0A\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c" Y\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c" Z\00", align 1
@debug = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [10 x i8] c"grid: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [84 x i8] c"the x or y grid spacing (nx %d, ny %d) is not divisible by the number of nodes (%d)\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"could not find a grid spacing with nx and ny divisible by the number of nodes (%d)\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"Using a fourier grid of %dx%dx%d, spacing %.3f %.3f %.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str11 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcgrid.c\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !74, metadata !135), !dbg !136
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !75, metadata !135), !dbg !137
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !138
  %2 = load i32* %1, align 4, !dbg !140, !tbaa !141
  %3 = add nsw i32 %2, -1, !dbg !140
  store i32 %3, i32* %1, align 4, !dbg !140, !tbaa !141
  %4 = icmp sgt i32 %2, 0, !dbg !150
  br i1 %4, label %._crit_edge, label %5, !dbg !151

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !152
  br label %10, !dbg !151

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !153
  %7 = load i32* %6, align 4, !dbg !153, !tbaa !154
  %8 = icmp sle i32 %2, %7, !dbg !155
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !156
  %or.cond = or i1 %9, %8, !dbg !157
  br i1 %or.cond, label %15, label %10, !dbg !157

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !152
  %11 = trunc i32 %_c to i8, !dbg !158
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !159
  %13 = load i8** %12, align 8, !dbg !160, !tbaa !161
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !160
  store i8* %14, i8** %12, align 8, !dbg !160, !tbaa !161
  store i8 %11, i8* %13, align 1, !dbg !162, !tbaa !163
  br label %17, !dbg !164

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !165
  br label %17, !dbg !166

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !167
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !81, metadata !135), !dbg !168
  %1 = icmp sgt i32 %__signo, 32, !dbg !169
  br i1 %1, label %5, label %2, !dbg !170

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !171
  %4 = shl i32 1, %3, !dbg !172
  br label %5, !dbg !170

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !170
  ret i32 %6, !dbg !173
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_grid([3 x float]* nocapture readonly %box, float %gr_sp, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32 %nnodes) #4 {
  %n = alloca [3 x i32], align 4
  %nmin = alloca [3 x i32], align 4
  %box_size = alloca [3 x float], align 4
  %spacing = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !91, metadata !135), !dbg !174
  tail call void @llvm.dbg.value(metadata float %gr_sp, i64 0, metadata !92, metadata !135), !dbg !175
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !93, metadata !135), !dbg !176
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !94, metadata !135), !dbg !177
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !95, metadata !135), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %nnodes, i64 0, metadata !96, metadata !135), !dbg !179
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %n, metadata !98, metadata !135), !dbg !180
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %nmin, metadata !101, metadata !135), !dbg !181
  tail call void @llvm.dbg.declare(metadata [3 x float]* %box_size, metadata !102, metadata !135), !dbg !182
  tail call void @llvm.dbg.declare(metadata [3 x float]* %spacing, metadata !104, metadata !135), !dbg !183
  %1 = fcmp ugt float %gr_sp, 0.000000e+00, !dbg !184
  br i1 %1, label %.preheader4, label %2, !dbg !186

; <label>:2                                       ; preds = %0
  %3 = fpext float %gr_sp to double, !dbg !187
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0), double %3) #8, !dbg !188
  br label %.preheader4, !dbg !188

.preheader4:                                      ; preds = %2, %0, %.preheader4
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.preheader4 ], [ 0, %0 ], [ 0, %2 ]
  %4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv28, i64 %indvars.iv28, !dbg !189
  %5 = bitcast float* %4 to i32*, !dbg !189
  %6 = load i32* %5, align 4, !dbg !189, !tbaa !192
  %7 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv28, !dbg !194
  %8 = bitcast float* %7 to i32*, !dbg !195
  store i32 %6, i32* %8, align 4, !dbg !195, !tbaa !192
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !196
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3, !dbg !196
  br i1 %exitcond30, label %9, label %.preheader4, !dbg !196

; <label>:9                                       ; preds = %.preheader4
  %10 = load i32* %nx, align 4, !dbg !197, !tbaa !198
  %11 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 0, !dbg !199
  store i32 %10, i32* %11, align 4, !dbg !200, !tbaa !198
  %12 = load i32* %ny, align 4, !dbg !201, !tbaa !198
  %13 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 1, !dbg !202
  store i32 %12, i32* %13, align 4, !dbg !203, !tbaa !198
  %14 = load i32* %nz, align 4, !dbg !204, !tbaa !198
  %15 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 2, !dbg !205
  store i32 %14, i32* %15, align 4, !dbg !206, !tbaa !198
  store i32 1, i32* @ng, align 4, !dbg !207, !tbaa !198
  store i32 1, i32* @ng_max, align 4, !dbg !208, !tbaa !198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !97, metadata !135), !dbg !209
  br label %16, !dbg !210

; <label>:16                                      ; preds = %28, %9
  %17 = phi i32 [ 1, %9 ], [ %29, %28 ], !dbg !212
  %indvars.iv25 = phi i64 [ 0, %9 ], [ %indvars.iv.next26, %28 ]
  %18 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv25, !dbg !212
  %19 = load float* %18, align 4, !dbg !212, !tbaa !192
  %20 = fdiv float %19, %gr_sp, !dbg !215
  %21 = fpext float %20 to double, !dbg !212
  %22 = fadd double %21, 9.990000e-01, !dbg !216
  %23 = fptosi double %22 to i32, !dbg !217
  %24 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv25, !dbg !218
  store i32 %23, i32* %24, align 4, !dbg !219, !tbaa !198
  %25 = shl nsw i32 %23, 1, !dbg !220
  %26 = icmp sgt i32 %25, %17, !dbg !222
  br i1 %26, label %27, label %28, !dbg !223

; <label>:27                                      ; preds = %16
  store i32 %25, i32* @ng_max, align 4, !dbg !224, !tbaa !198
  br label %28, !dbg !225

; <label>:28                                      ; preds = %16, %27
  %29 = phi i32 [ %17, %16 ], [ %25, %27 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !210
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3, !dbg !210
  br i1 %exitcond27, label %30, label %16, !dbg !210

; <label>:30                                      ; preds = %28
  store i32 0, i32* @n_list, align 4, !dbg !226, !tbaa !198
  store i32 0, i32* @n_list_alloc, align 4, !dbg !227, !tbaa !198
  store i32* null, i32** @list, align 8, !dbg !228, !tbaa !229
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !100, metadata !135), !dbg !230
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @decomp to i8*), i8 0, i64 24, i32 16, i1 false), !dbg !231
  tail call fastcc void @make_list(i32 0) #9, !dbg !234
  %31 = load i32* %nx, align 4, !dbg !235, !tbaa !198
  %32 = icmp slt i32 %31, 1, !dbg !237
  %.pre = load i32* %ny, align 4, !dbg !238, !tbaa !198
  %33 = icmp slt i32 %.pre, 1, !dbg !239
  %or.cond = or i1 %32, %33, !dbg !240
  br i1 %or.cond, label %._crit_edge, label %34, !dbg !240

; <label>:34                                      ; preds = %30
  %35 = load i32* %nz, align 4, !dbg !241, !tbaa !198
  %36 = icmp slt i32 %35, 1, !dbg !242
  br i1 %36, label %._crit_edge, label %46, !dbg !243

._crit_edge:                                      ; preds = %30, %34
  %37 = load %struct.__sFILE** @__stderrp, align 8, !dbg !244, !tbaa !229
  %38 = icmp sgt i32 %31, 0, !dbg !245
  %39 = select i1 %38, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), !dbg !246
  %40 = icmp sgt i32 %.pre, 0, !dbg !247
  %41 = select i1 %40, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), !dbg !238
  %42 = load i32* %nz, align 4, !dbg !248, !tbaa !198
  %43 = icmp sgt i32 %42, 0, !dbg !249
  %44 = select i1 %43, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), !dbg !248
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i8* %39, i8* %41, i8* %44) #8, !dbg !250
  br label %46, !dbg !250

; <label>:46                                      ; preds = %._crit_edge, %34
  %47 = load i8** bitcast (i32** @list to i8**), align 8, !dbg !251, !tbaa !229
  %48 = load i32* @n_list, align 4, !dbg !252, !tbaa !198
  %49 = sext i32 %48 to i64, !dbg !252
  tail call void @qsort(i8* %47, i64 %49, i64 4, i32 (i8*, i8*)* @list_comp) #8, !dbg !253
  %50 = load %struct.__sFILE** @debug, align 8, !dbg !254, !tbaa !229
  %51 = icmp ne %struct.__sFILE* %50, null, !dbg !254
  %52 = load i32* @n_list, align 4
  %53 = icmp sgt i32 %52, 0, !dbg !256
  %or.cond38 = and i1 %51, %53, !dbg !259
  br i1 %or.cond38, label %.lr.ph11.preheader, label %.loopexit, !dbg !259

.lr.ph11.preheader:                               ; preds = %46
  %54 = load i32** @list, align 8, !dbg !260, !tbaa !229
  %55 = load i32* %54, align 4, !dbg !260, !tbaa !198
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %55) #8, !dbg !261
  %57 = load i32* @n_list, align 4, !dbg !262, !tbaa !198
  %58 = icmp sgt i32 %57, 1, !dbg !256
  br i1 %58, label %._crit_edge31, label %.loopexit, !dbg !263

._crit_edge31:                                    ; preds = %.lr.ph11.preheader, %._crit_edge31
  %indvars.iv.next2139 = phi i64 [ %indvars.iv.next21, %._crit_edge31 ], [ 1, %.lr.ph11.preheader ]
  %.pre32 = load %struct.__sFILE** @debug, align 8, !dbg !264, !tbaa !229
  %59 = load i32** @list, align 8, !dbg !260, !tbaa !229
  %60 = getelementptr inbounds i32* %59, i64 %indvars.iv.next2139, !dbg !260
  %61 = load i32* %60, align 4, !dbg !260, !tbaa !198
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %.pre32, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %61) #8, !dbg !261
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv.next2139, 1, !dbg !263
  %63 = load i32* @n_list, align 4, !dbg !262, !tbaa !198
  %64 = sext i32 %63 to i64, !dbg !256
  %65 = icmp slt i64 %indvars.iv.next21, %64, !dbg !256
  br i1 %65, label %._crit_edge31, label %.loopexit, !dbg !263

.loopexit:                                        ; preds = %.lr.ph11.preheader, %._crit_edge31, %46
  %66 = load i32* %nx, align 4, !dbg !265, !tbaa !198
  %67 = icmp sgt i32 %66, 0, !dbg !267
  br i1 %67, label %68, label %71, !dbg !268

; <label>:68                                      ; preds = %.loopexit
  %69 = srem i32 %66, %nnodes, !dbg !269
  %70 = icmp eq i32 %69, 0, !dbg !270
  br i1 %70, label %71, label %._crit_edge33, !dbg !271

._crit_edge33:                                    ; preds = %68
  %.pre34 = load i32* %ny, align 4, !dbg !272, !tbaa !198
  br label %77, !dbg !271

; <label>:71                                      ; preds = %68, %.loopexit
  %72 = load i32* %ny, align 4, !dbg !273, !tbaa !198
  %73 = icmp sgt i32 %72, 0, !dbg !274
  br i1 %73, label %74, label %.preheader1, !dbg !275

; <label>:74                                      ; preds = %71
  %75 = srem i32 %72, %nnodes, !dbg !276
  %76 = icmp eq i32 %75, 0, !dbg !277
  br i1 %76, label %.preheader1, label %77, !dbg !278

; <label>:77                                      ; preds = %._crit_edge33, %74
  %78 = phi i32 [ %.pre34, %._crit_edge33 ], [ %72, %74 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0), i32 %66, i32 %78, i32 %nnodes) #8, !dbg !279
  br label %.preheader1, !dbg !279

.preheader1:                                      ; preds = %71, %77, %74, %.critedge.thread
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.critedge.thread ], [ 0, %74 ], [ 0, %77 ], [ 0, %71 ]
  %79 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv17, !dbg !280
  %80 = load i32* @n_list, align 4, !dbg !286, !tbaa !198
  %81 = icmp sgt i32 %80, 0, !dbg !287
  br i1 %81, label %.lr.ph, label %.preheader1..critedge_crit_edge, !dbg !288

.preheader1..critedge_crit_edge:                  ; preds = %.preheader1
  %.pre36 = load i32* %79, align 4, !dbg !289, !tbaa !198
  br label %.critedge, !dbg !288

.lr.ph:                                           ; preds = %.preheader1
  %82 = load i32** @list, align 8, !dbg !291, !tbaa !229
  %83 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv17, !dbg !293
  %84 = trunc i64 %indvars.iv17 to i32, !dbg !294
  %85 = icmp eq i32 %84, 2, !dbg !294
  %86 = sext i32 %80 to i64, !dbg !288
  %.pre35 = load i32* %79, align 4, !dbg !280, !tbaa !198
  br label %87, !dbg !288

; <label>:87                                      ; preds = %.lr.ph, %100
  %88 = phi i32 [ %.pre35, %.lr.ph ], [ %101, %100 ], !dbg !280
  %indvars.iv15 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next16, %100 ]
  %89 = icmp slt i32 %88, 1, !dbg !295
  br i1 %89, label %90, label %.critedge.thread, !dbg !296

; <label>:90                                      ; preds = %87
  %91 = getelementptr inbounds i32* %82, i64 %indvars.iv15, !dbg !291
  %92 = load i32* %91, align 4, !dbg !291, !tbaa !198
  %93 = load i32* %83, align 4, !dbg !293, !tbaa !198
  %94 = icmp slt i32 %92, %93, !dbg !297
  br i1 %94, label %100, label %95, !dbg !298

; <label>:95                                      ; preds = %90
  br i1 %85, label %99, label %96, !dbg !299

; <label>:96                                      ; preds = %95
  %97 = srem i32 %92, %nnodes, !dbg !300
  %98 = icmp eq i32 %97, 0, !dbg !301
  br i1 %98, label %99, label %100, !dbg !302

; <label>:99                                      ; preds = %96, %95
  store i32 %92, i32* %79, align 4, !dbg !303, !tbaa !198
  br label %100, !dbg !304

; <label>:100                                     ; preds = %90, %96, %99
  %101 = phi i32 [ %88, %90 ], [ %88, %96 ], [ %92, %99 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !288
  %102 = icmp slt i64 %indvars.iv.next16, %86, !dbg !287
  br i1 %102, label %87, label %.critedge, !dbg !288

.critedge:                                        ; preds = %100, %.preheader1..critedge_crit_edge
  %103 = phi i32 [ %.pre36, %.preheader1..critedge_crit_edge ], [ %101, %100 ]
  %104 = icmp slt i32 %103, 1, !dbg !305
  br i1 %104, label %105, label %.critedge.thread, !dbg !306

; <label>:105                                     ; preds = %.critedge
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), i32 %nnodes) #8, !dbg !307
  br label %.critedge.thread, !dbg !307

.critedge.thread:                                 ; preds = %87, %.critedge, %105
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !308
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 3, !dbg !308
  br i1 %exitcond19, label %.preheader, label %.preheader1, !dbg !308

.preheader:                                       ; preds = %.critedge.thread, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.critedge.thread ]
  %max_spacing.06 = phi float [ %max_spacing.1, %.preheader ], [ 0.000000e+00, %.critedge.thread ]
  %106 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv, !dbg !309
  %107 = load float* %106, align 4, !dbg !309, !tbaa !192
  %108 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv, !dbg !313
  %109 = load i32* %108, align 4, !dbg !313, !tbaa !198
  %110 = sitofp i32 %109 to float, !dbg !313
  %111 = fdiv float %107, %110, !dbg !314
  %112 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv, !dbg !315
  store float %111, float* %112, align 4, !dbg !316, !tbaa !192
  %113 = fcmp ogt float %111, %max_spacing.06, !dbg !317
  tail call void @llvm.dbg.value(metadata float %111, i64 0, metadata !105, metadata !135), !dbg !319
  %max_spacing.1 = select i1 %113, float %111, float %max_spacing.06, !dbg !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !321
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !321
  br i1 %exitcond, label %114, label %.preheader, !dbg !321

; <label>:114                                     ; preds = %.preheader
  %115 = load i32* %11, align 4, !dbg !322, !tbaa !198
  store i32 %115, i32* %nx, align 4, !dbg !323, !tbaa !198
  %116 = load i32* %13, align 4, !dbg !324, !tbaa !198
  store i32 %116, i32* %ny, align 4, !dbg !325, !tbaa !198
  %117 = load i32* %15, align 4, !dbg !326, !tbaa !198
  store i32 %117, i32* %nz, align 4, !dbg !327, !tbaa !198
  %118 = load %struct.__sFILE** @__stderrp, align 8, !dbg !328, !tbaa !229
  %119 = load i32* %nx, align 4, !dbg !329, !tbaa !198
  %120 = load i32* %ny, align 4, !dbg !330, !tbaa !198
  %121 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0, !dbg !331
  %122 = load float* %121, align 4, !dbg !331, !tbaa !192
  %123 = fpext float %122 to double, !dbg !331
  %124 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 1, !dbg !332
  %125 = load float* %124, align 4, !dbg !332, !tbaa !192
  %126 = fpext float %125 to double, !dbg !332
  %127 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 2, !dbg !333
  %128 = load float* %127, align 4, !dbg !333, !tbaa !192
  %129 = fpext float %128 to double, !dbg !333
  %130 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %118, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %119, i32 %120, i32 %117, double %123, double %126, double %129) #8, !dbg !334
  ret float %max_spacing.1, !dbg !335
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @make_list(i32 %start_fac) #4 {
  tail call void @llvm.dbg.value(metadata i32 %start_fac, i64 0, metadata !110, metadata !135), !dbg !336
  %1 = load i32* @ng, align 4, !dbg !337, !tbaa !198
  %2 = load i32* @ng_max, align 4, !dbg !339, !tbaa !198
  %3 = icmp slt i32 %1, %2, !dbg !340
  br i1 %3, label %4, label %.loopexit, !dbg !341

; <label>:4                                       ; preds = %0
  %5 = load i32* @n_list, align 4, !dbg !342, !tbaa !198
  %6 = load i32* @n_list_alloc, align 4, !dbg !345, !tbaa !198
  %7 = icmp slt i32 %5, %6, !dbg !346
  br i1 %7, label %._crit_edge, label %8, !dbg !347

._crit_edge:                                      ; preds = %4
  %.pre3 = load i32** @list, align 8, !dbg !348, !tbaa !229
  br label %14, !dbg !347

; <label>:8                                       ; preds = %4
  %9 = add nsw i32 %6, 100, !dbg !349
  store i32 %9, i32* @n_list_alloc, align 4, !dbg !349, !tbaa !198
  %10 = load i8** bitcast (i32** @list to i8**), align 8, !dbg !351, !tbaa !229
  %11 = shl i32 %9, 2, !dbg !351
  %12 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str11, i64 0, i64 0), i32 50, i8* %10, i32 %11) #8, !dbg !351
  store i8* %12, i8** bitcast (i32** @list to i8**), align 8, !dbg !351, !tbaa !229
  %.pre = load i32* @ng, align 4, !dbg !352, !tbaa !198
  %.pre2 = load i32* @n_list, align 4, !dbg !353, !tbaa !198
  %13 = bitcast i8* %12 to i32*
  br label %14, !dbg !354

; <label>:14                                      ; preds = %._crit_edge, %8
  %15 = phi i32* [ %.pre3, %._crit_edge ], [ %13, %8 ]
  %16 = phi i32 [ %5, %._crit_edge ], [ %.pre2, %8 ]
  %17 = phi i32 [ %1, %._crit_edge ], [ %.pre, %8 ]
  %18 = sext i32 %16 to i64, !dbg !348
  %19 = getelementptr inbounds i32* %15, i64 %18, !dbg !348
  store i32 %17, i32* %19, align 4, !dbg !355, !tbaa !198
  %20 = load i32* @n_list, align 4, !dbg !356, !tbaa !198
  %21 = add nsw i32 %20, 1, !dbg !356
  store i32 %21, i32* @n_list, align 4, !dbg !356, !tbaa !198
  tail call void @llvm.dbg.value(metadata i32 %start_fac, i64 0, metadata !111, metadata !135), !dbg !357
  %22 = icmp slt i32 %start_fac, 6, !dbg !358
  br i1 %22, label %.lr.ph, label %.loopexit, !dbg !361

.lr.ph:                                           ; preds = %14
  %23 = sext i32 %start_fac to i64
  br label %24, !dbg !361

; <label>:24                                      ; preds = %47, %.lr.ph
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %25 = icmp slt i64 %indvars.iv, 4, !dbg !362
  br i1 %25, label %33, label %26, !dbg !365

; <label>:26                                      ; preds = %24
  %27 = load i64* bitcast (i32* getelementptr inbounds ([6 x i32]* @decomp, i64 0, i64 4) to i64*), align 16, !dbg !366
  %28 = trunc i64 %27 to i32, !dbg !366
  %29 = lshr i64 %27, 32
  %30 = trunc i64 %29 to i32
  %31 = sub i32 0, %30, !dbg !367
  %32 = icmp eq i32 %28, %31, !dbg !367
  br i1 %32, label %33, label %._crit_edge4, !dbg !368

._crit_edge4:                                     ; preds = %26
  %.pre5 = trunc i64 %indvars.iv to i32, !dbg !361
  br label %47, !dbg !368

; <label>:33                                      ; preds = %26, %24
  %34 = getelementptr inbounds [6 x i32]* @factor, i64 0, i64 %indvars.iv, !dbg !369
  %35 = load i32* %34, align 4, !dbg !369, !tbaa !198
  %36 = load i32* @ng, align 4, !dbg !371, !tbaa !198
  %37 = mul nsw i32 %36, %35, !dbg !371
  store i32 %37, i32* @ng, align 4, !dbg !371, !tbaa !198
  %38 = getelementptr inbounds [6 x i32]* @decomp, i64 0, i64 %indvars.iv, !dbg !372
  %39 = load i32* %38, align 4, !dbg !373, !tbaa !198
  %40 = add nsw i32 %39, 1, !dbg !373
  store i32 %40, i32* %38, align 4, !dbg !373, !tbaa !198
  %41 = trunc i64 %indvars.iv to i32, !dbg !374
  tail call fastcc void @make_list(i32 %41) #9, !dbg !374
  %42 = load i32* %34, align 4, !dbg !375, !tbaa !198
  %43 = load i32* @ng, align 4, !dbg !376, !tbaa !198
  %44 = sdiv i32 %43, %42, !dbg !376
  store i32 %44, i32* @ng, align 4, !dbg !376, !tbaa !198
  %45 = load i32* %38, align 4, !dbg !377, !tbaa !198
  %46 = add nsw i32 %45, -1, !dbg !377
  store i32 %46, i32* %38, align 4, !dbg !377, !tbaa !198
  br label %47, !dbg !378

; <label>:47                                      ; preds = %._crit_edge4, %33
  %lftr.wideiv.pre-phi = phi i32 [ %.pre5, %._crit_edge4 ], [ %41, %33 ], !dbg !361
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !361
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, 5, !dbg !361
  br i1 %exitcond, label %.loopexit, label %24, !dbg !361

.loopexit:                                        ; preds = %47, %14, %0
  ret void, !dbg !379
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @list_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #6 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !118, metadata !135), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* %b, i64 0, metadata !119, metadata !135), !dbg !381
  %1 = bitcast i8* %a to i32*, !dbg !382
  %2 = load i32* %1, align 4, !dbg !383, !tbaa !198
  %3 = bitcast i8* %b to i32*, !dbg !384
  %4 = load i32* %3, align 4, !dbg !385, !tbaa !198
  %5 = sub nsw i32 %2, %4, !dbg !386
  ret i32 %5, !dbg !387
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132, !133}
!llvm.ident = !{!134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !120, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcgrid.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!7 = !{!8, !76, !82, !106, !112}
!8 = !DISubprogram(name: "__sputc", scope: !9, file: !9, line: 348, type: !10, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !73)
!9 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !5, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !9, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !32, !36, !41, !51, !57, !58, !61, !62, !66, !70, !71, !72}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !9, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !9, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !9, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !9, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !9, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !9, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !9, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !9, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !9, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !9, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !9, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !31}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !9, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!5, !31, !40, !5}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !9, line: 135, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !31, !45, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !9, line: 77, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !47, line: 71, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !9, line: 136, baseType: !52, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!5, !31, !55, !5}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !9, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !9, line: 140, baseType: !59, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !9, line: 94, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !9, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !9, line: 144, baseType: !63, size: 24, align: 8, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !9, line: 145, baseType: !67, size: 8, align: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !9, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !9, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !9, line: 152, baseType: !45, size: 64, align: 64, offset: 1152)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !8, file: !9, line: 348, type: !5)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !8, file: !9, line: 348, type: !12)
!76 = !DISubprogram(name: "__sigbits", scope: !77, file: !77, line: 114, type: !78, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !80)
!77 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!78 = !DISubroutineType(types: !79)
!79 = !{!5, !5}
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !76, file: !77, line: 114, type: !5)
!82 = !DISubprogram(name: "calc_grid", scope: !1, file: !1, line: 73, type: !83, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: float ([3 x float]*, float, i32*, i32*, i32*, i32)* @calc_grid, variables: !90)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !88, !85, !6, !6, !6, !5}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !86, line: 87, baseType: !87)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 96, align: 32, elements: !64)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 1, scope: !82, file: !1, line: 73, type: !88)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gr_sp", arg: 2, scope: !82, file: !1, line: 73, type: !85)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 3, scope: !82, file: !1, line: 73, type: !6)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 4, scope: !82, file: !1, line: 73, type: !6)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 5, scope: !82, file: !1, line: 73, type: !6)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 6, scope: !82, file: !1, line: 73, type: !5)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !82, file: !1, line: 75, type: !5)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !82, file: !1, line: 75, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, align: 32, elements: !64)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !82, file: !1, line: 76, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmin", scope: !82, file: !1, line: 76, type: !99)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "box_size", scope: !82, file: !1, line: 77, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !86, line: 101, baseType: !89)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "spacing", scope: !82, file: !1, line: 77, type: !103)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_spacing", scope: !82, file: !1, line: 78, type: !85)
!106 = !DISubprogram(name: "make_list", scope: !1, file: !1, line: 43, type: !107, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @make_list, variables: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !5}
!109 = !{!110, !111}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start_fac", arg: 1, scope: !106, file: !1, line: 43, type: !5)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !106, file: !1, line: 45, type: !5)
!112 = !DISubprogram(name: "list_comp", scope: !1, file: !1, line: 68, type: !113, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @list_comp, variables: !117)
!113 = !DISubroutineType(types: !114)
!114 = !{!5, !115, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!117 = !{!118, !119}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !112, file: !1, line: 68, type: !115)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !112, file: !1, line: 68, type: !115)
!120 = !{!121, !125, !126, !127, !128, !129, !130}
!121 = !DIGlobalVariable(name: "factor", scope: !0, file: !1, line: 39, type: !122, isLocal: false, isDefinition: true, variable: [6 x i32]* @factor)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, align: 32, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 6)
!125 = !DIGlobalVariable(name: "decomp", scope: !0, file: !1, line: 40, type: !122, isLocal: false, isDefinition: true, variable: [6 x i32]* @decomp)
!126 = !DIGlobalVariable(name: "ng", scope: !0, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, variable: i32* @ng)
!127 = !DIGlobalVariable(name: "ng_max", scope: !0, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, variable: i32* @ng_max)
!128 = !DIGlobalVariable(name: "list", scope: !0, file: !1, line: 41, type: !6, isLocal: false, isDefinition: true, variable: i32** @list)
!129 = !DIGlobalVariable(name: "n_list", scope: !0, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, variable: i32* @n_list)
!130 = !DIGlobalVariable(name: "n_list_alloc", scope: !0, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, variable: i32* @n_list_alloc)
!131 = !{i32 2, !"Dwarf Version", i32 2}
!132 = !{i32 2, !"Debug Info Version", i32 700000003}
!133 = !{i32 1, !"PIC Level", i32 2}
!134 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!135 = !DIExpression()
!136 = !DILocation(line: 348, column: 40, scope: !8)
!137 = !DILocation(line: 348, column: 50, scope: !8)
!138 = !DILocation(line: 349, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !8, file: !9, line: 349, column: 6)
!140 = !DILocation(line: 349, column: 6, scope: !139)
!141 = !{!142, !146, i64 12}
!142 = !{!"__sFILE", !143, i64 0, !146, i64 8, !146, i64 12, !147, i64 16, !147, i64 18, !148, i64 24, !146, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !148, i64 88, !143, i64 104, !146, i64 112, !144, i64 116, !144, i64 119, !148, i64 120, !146, i64 136, !149, i64 144}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C/C++ TBAA"}
!146 = !{!"int", !144, i64 0}
!147 = !{!"short", !144, i64 0}
!148 = !{!"__sbuf", !143, i64 0, !146, i64 8}
!149 = !{!"long long", !144, i64 0}
!150 = !DILocation(line: 349, column: 15, scope: !139)
!151 = !DILocation(line: 349, column: 20, scope: !139)
!152 = !DILocation(line: 350, column: 10, scope: !139)
!153 = !DILocation(line: 349, column: 38, scope: !139)
!154 = !{!142, !146, i64 40}
!155 = !DILocation(line: 349, column: 31, scope: !139)
!156 = !DILocation(line: 349, column: 59, scope: !139)
!157 = !DILocation(line: 349, column: 47, scope: !139)
!158 = !DILocation(line: 350, column: 23, scope: !139)
!159 = !DILocation(line: 350, column: 16, scope: !139)
!160 = !DILocation(line: 350, column: 18, scope: !139)
!161 = !{!142, !143, i64 0}
!162 = !DILocation(line: 350, column: 21, scope: !139)
!163 = !{!144, !144, i64 0}
!164 = !DILocation(line: 350, column: 3, scope: !139)
!165 = !DILocation(line: 352, column: 11, scope: !139)
!166 = !DILocation(line: 352, column: 3, scope: !139)
!167 = !DILocation(line: 353, column: 1, scope: !8)
!168 = !DILocation(line: 114, column: 15, scope: !76)
!169 = !DILocation(line: 116, column: 20, scope: !76)
!170 = !DILocation(line: 116, column: 12, scope: !76)
!171 = !DILocation(line: 116, column: 57, scope: !76)
!172 = !DILocation(line: 116, column: 45, scope: !76)
!173 = !DILocation(line: 116, column: 5, scope: !76)
!174 = !DILocation(line: 73, column: 23, scope: !82)
!175 = !DILocation(line: 73, column: 32, scope: !82)
!176 = !DILocation(line: 73, column: 43, scope: !82)
!177 = !DILocation(line: 73, column: 51, scope: !82)
!178 = !DILocation(line: 73, column: 59, scope: !82)
!179 = !DILocation(line: 73, column: 66, scope: !82)
!180 = !DILocation(line: 75, column: 10, scope: !82)
!181 = !DILocation(line: 76, column: 10, scope: !82)
!182 = !DILocation(line: 77, column: 8, scope: !82)
!183 = !DILocation(line: 77, column: 17, scope: !82)
!184 = !DILocation(line: 80, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !82, file: !1, line: 80, column: 7)
!186 = !DILocation(line: 80, column: 7, scope: !82)
!187 = !DILocation(line: 81, column: 54, scope: !185)
!188 = !DILocation(line: 81, column: 5, scope: !185)
!189 = !DILocation(line: 84, column: 19, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 83, column: 3)
!191 = distinct !DILexicalBlock(scope: !82, file: !1, line: 83, column: 3)
!192 = !{!193, !193, i64 0}
!193 = !{!"float", !144, i64 0}
!194 = !DILocation(line: 84, column: 5, scope: !190)
!195 = !DILocation(line: 84, column: 17, scope: !190)
!196 = !DILocation(line: 83, column: 3, scope: !191)
!197 = !DILocation(line: 86, column: 11, scope: !82)
!198 = !{!146, !146, i64 0}
!199 = !DILocation(line: 86, column: 3, scope: !82)
!200 = !DILocation(line: 86, column: 9, scope: !82)
!201 = !DILocation(line: 87, column: 11, scope: !82)
!202 = !DILocation(line: 87, column: 3, scope: !82)
!203 = !DILocation(line: 87, column: 9, scope: !82)
!204 = !DILocation(line: 88, column: 11, scope: !82)
!205 = !DILocation(line: 88, column: 3, scope: !82)
!206 = !DILocation(line: 88, column: 9, scope: !82)
!207 = !DILocation(line: 90, column: 6, scope: !82)
!208 = !DILocation(line: 91, column: 10, scope: !82)
!209 = !DILocation(line: 75, column: 8, scope: !82)
!210 = !DILocation(line: 92, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !82, file: !1, line: 92, column: 3)
!212 = !DILocation(line: 93, column: 21, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 92, column: 24)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 92, column: 3)
!215 = !DILocation(line: 93, column: 32, scope: !213)
!216 = !DILocation(line: 93, column: 39, scope: !213)
!217 = !DILocation(line: 93, column: 15, scope: !213)
!218 = !DILocation(line: 93, column: 5, scope: !213)
!219 = !DILocation(line: 93, column: 13, scope: !213)
!220 = !DILocation(line: 94, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !1, line: 94, column: 9)
!222 = !DILocation(line: 94, column: 19, scope: !221)
!223 = !DILocation(line: 94, column: 9, scope: !213)
!224 = !DILocation(line: 95, column: 14, scope: !221)
!225 = !DILocation(line: 95, column: 7, scope: !221)
!226 = !DILocation(line: 97, column: 9, scope: !82)
!227 = !DILocation(line: 98, column: 15, scope: !82)
!228 = !DILocation(line: 99, column: 7, scope: !82)
!229 = !{!143, !143, i64 0}
!230 = !DILocation(line: 76, column: 8, scope: !82)
!231 = !DILocation(line: 101, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 100, column: 3)
!233 = distinct !DILexicalBlock(scope: !82, file: !1, line: 100, column: 3)
!234 = !DILocation(line: 102, column: 3, scope: !82)
!235 = !DILocation(line: 104, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !82, file: !1, line: 104, column: 7)
!237 = !DILocation(line: 104, column: 11, scope: !236)
!238 = !DILocation(line: 106, column: 24, scope: !236)
!239 = !DILocation(line: 104, column: 23, scope: !236)
!240 = !DILocation(line: 104, column: 16, scope: !236)
!241 = !DILocation(line: 104, column: 32, scope: !236)
!242 = !DILocation(line: 104, column: 35, scope: !236)
!243 = !DILocation(line: 104, column: 7, scope: !82)
!244 = !DILocation(line: 105, column: 13, scope: !236)
!245 = !DILocation(line: 106, column: 10, scope: !236)
!246 = !DILocation(line: 106, column: 6, scope: !236)
!247 = !DILocation(line: 106, column: 28, scope: !236)
!248 = !DILocation(line: 106, column: 42, scope: !236)
!249 = !DILocation(line: 106, column: 46, scope: !236)
!250 = !DILocation(line: 105, column: 5, scope: !236)
!251 = !DILocation(line: 108, column: 9, scope: !82)
!252 = !DILocation(line: 108, column: 14, scope: !82)
!253 = !DILocation(line: 108, column: 3, scope: !82)
!254 = !DILocation(line: 109, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !82, file: !1, line: 109, column: 7)
!256 = !DILocation(line: 110, column: 15, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 110, column: 5)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 110, column: 5)
!259 = !DILocation(line: 109, column: 7, scope: !82)
!260 = !DILocation(line: 111, column: 34, scope: !257)
!261 = !DILocation(line: 111, column: 7, scope: !257)
!262 = !DILocation(line: 110, column: 16, scope: !257)
!263 = !DILocation(line: 110, column: 5, scope: !258)
!264 = !DILocation(line: 111, column: 15, scope: !257)
!265 = !DILocation(line: 113, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !82, file: !1, line: 113, column: 7)
!267 = !DILocation(line: 113, column: 12, scope: !266)
!268 = !DILocation(line: 113, column: 16, scope: !266)
!269 = !DILocation(line: 113, column: 33, scope: !266)
!270 = !DILocation(line: 113, column: 24, scope: !266)
!271 = !DILocation(line: 113, column: 49, scope: !266)
!272 = !DILocation(line: 115, column: 109, scope: !266)
!273 = !DILocation(line: 114, column: 9, scope: !266)
!274 = !DILocation(line: 114, column: 12, scope: !266)
!275 = !DILocation(line: 114, column: 16, scope: !266)
!276 = !DILocation(line: 114, column: 33, scope: !266)
!277 = !DILocation(line: 114, column: 24, scope: !266)
!278 = !DILocation(line: 113, column: 7, scope: !82)
!279 = !DILocation(line: 115, column: 5, scope: !266)
!280 = !DILocation(line: 118, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 118, column: 5)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 118, column: 5)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 117, column: 24)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 117, column: 3)
!285 = distinct !DILexicalBlock(scope: !82, file: !1, line: 117, column: 3)
!286 = !DILocation(line: 118, column: 17, scope: !281)
!287 = !DILocation(line: 118, column: 16, scope: !281)
!288 = !DILocation(line: 118, column: 25, scope: !281)
!289 = !DILocation(line: 122, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !1, line: 122, column: 9)
!291 = !DILocation(line: 119, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !281, file: !1, line: 119, column: 11)
!293 = !DILocation(line: 119, column: 23, scope: !292)
!294 = !DILocation(line: 120, column: 8, scope: !292)
!295 = !DILocation(line: 118, column: 33, scope: !281)
!296 = !DILocation(line: 118, column: 5, scope: !282)
!297 = !DILocation(line: 119, column: 20, scope: !292)
!298 = !DILocation(line: 119, column: 32, scope: !292)
!299 = !DILocation(line: 120, column: 15, scope: !292)
!300 = !DILocation(line: 120, column: 36, scope: !292)
!301 = !DILocation(line: 120, column: 27, scope: !292)
!302 = !DILocation(line: 119, column: 11, scope: !281)
!303 = !DILocation(line: 121, column: 7, scope: !292)
!304 = !DILocation(line: 121, column: 2, scope: !292)
!305 = !DILocation(line: 122, column: 14, scope: !290)
!306 = !DILocation(line: 122, column: 9, scope: !283)
!307 = !DILocation(line: 123, column: 7, scope: !290)
!308 = !DILocation(line: 117, column: 3, scope: !285)
!309 = !DILocation(line: 128, column: 18, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 127, column: 24)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 127, column: 3)
!312 = distinct !DILexicalBlock(scope: !82, file: !1, line: 127, column: 3)
!313 = !DILocation(line: 128, column: 30, scope: !310)
!314 = !DILocation(line: 128, column: 29, scope: !310)
!315 = !DILocation(line: 128, column: 5, scope: !310)
!316 = !DILocation(line: 128, column: 16, scope: !310)
!317 = !DILocation(line: 129, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !1, line: 129, column: 9)
!319 = !DILocation(line: 78, column: 8, scope: !82)
!320 = !DILocation(line: 129, column: 9, scope: !310)
!321 = !DILocation(line: 127, column: 3, scope: !312)
!322 = !DILocation(line: 132, column: 9, scope: !82)
!323 = !DILocation(line: 132, column: 7, scope: !82)
!324 = !DILocation(line: 133, column: 9, scope: !82)
!325 = !DILocation(line: 133, column: 7, scope: !82)
!326 = !DILocation(line: 134, column: 9, scope: !82)
!327 = !DILocation(line: 134, column: 7, scope: !82)
!328 = !DILocation(line: 135, column: 11, scope: !82)
!329 = !DILocation(line: 136, column: 4, scope: !82)
!330 = !DILocation(line: 136, column: 8, scope: !82)
!331 = !DILocation(line: 136, column: 16, scope: !82)
!332 = !DILocation(line: 136, column: 28, scope: !82)
!333 = !DILocation(line: 136, column: 40, scope: !82)
!334 = !DILocation(line: 135, column: 3, scope: !82)
!335 = !DILocation(line: 138, column: 3, scope: !82)
!336 = !DILocation(line: 43, column: 27, scope: !106)
!337 = !DILocation(line: 47, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !106, file: !1, line: 47, column: 7)
!339 = !DILocation(line: 47, column: 12, scope: !338)
!340 = !DILocation(line: 47, column: 10, scope: !338)
!341 = !DILocation(line: 47, column: 7, scope: !106)
!342 = !DILocation(line: 48, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 48, column: 9)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 47, column: 20)
!345 = !DILocation(line: 48, column: 19, scope: !343)
!346 = !DILocation(line: 48, column: 16, scope: !343)
!347 = !DILocation(line: 48, column: 9, scope: !344)
!348 = !DILocation(line: 52, column: 5, scope: !344)
!349 = !DILocation(line: 49, column: 20, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !1, line: 48, column: 33)
!351 = !DILocation(line: 50, column: 7, scope: !350)
!352 = !DILocation(line: 52, column: 20, scope: !344)
!353 = !DILocation(line: 52, column: 10, scope: !344)
!354 = !DILocation(line: 51, column: 5, scope: !350)
!355 = !DILocation(line: 52, column: 18, scope: !344)
!356 = !DILocation(line: 53, column: 11, scope: !344)
!357 = !DILocation(line: 45, column: 7, scope: !106)
!358 = !DILocation(line: 55, column: 23, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 55, column: 5)
!360 = distinct !DILexicalBlock(scope: !344, file: !1, line: 55, column: 5)
!361 = !DILocation(line: 55, column: 5, scope: !360)
!362 = !DILocation(line: 57, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 57, column: 11)
!364 = distinct !DILexicalBlock(scope: !359, file: !1, line: 55, column: 36)
!365 = !DILocation(line: 57, column: 15, scope: !363)
!366 = !DILocation(line: 57, column: 19, scope: !363)
!367 = !DILocation(line: 57, column: 38, scope: !363)
!368 = !DILocation(line: 57, column: 11, scope: !364)
!369 = !DILocation(line: 58, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !1, line: 57, column: 44)
!371 = !DILocation(line: 58, column: 4, scope: !370)
!372 = !DILocation(line: 59, column: 2, scope: !370)
!373 = !DILocation(line: 59, column: 11, scope: !370)
!374 = !DILocation(line: 60, column: 2, scope: !370)
!375 = !DILocation(line: 61, column: 6, scope: !370)
!376 = !DILocation(line: 61, column: 4, scope: !370)
!377 = !DILocation(line: 62, column: 11, scope: !370)
!378 = !DILocation(line: 63, column: 7, scope: !370)
!379 = !DILocation(line: 66, column: 1, scope: !106)
!380 = !DILocation(line: 68, column: 34, scope: !112)
!381 = !DILocation(line: 68, column: 48, scope: !112)
!382 = !DILocation(line: 70, column: 13, scope: !112)
!383 = !DILocation(line: 70, column: 11, scope: !112)
!384 = !DILocation(line: 70, column: 27, scope: !112)
!385 = !DILocation(line: 70, column: 25, scope: !112)
!386 = !DILocation(line: 70, column: 23, scope: !112)
!387 = !DILocation(line: 70, column: 3, scope: !112)
