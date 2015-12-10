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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !206), !dbg !207
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !206), !dbg !208
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !209
  %2 = load i32* %1, align 4, !dbg !211, !tbaa !212
  %3 = add nsw i32 %2, -1, !dbg !211
  store i32 %3, i32* %1, align 4, !dbg !211, !tbaa !212
  %4 = icmp sgt i32 %2, 0, !dbg !221
  br i1 %4, label %._crit_edge, label %5, !dbg !222

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !223
  br label %10, !dbg !222

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !224
  %7 = load i32* %6, align 4, !dbg !224, !tbaa !225
  %8 = icmp sle i32 %2, %7, !dbg !226
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !227
  %or.cond = or i1 %9, %8, !dbg !228
  br i1 %or.cond, label %15, label %10, !dbg !228

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !223
  %11 = trunc i32 %_c to i8, !dbg !229
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !230
  %13 = load i8** %12, align 8, !dbg !231, !tbaa !232
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !231
  store i8* %14, i8** %12, align 8, !dbg !231, !tbaa !232
  store i8 %11, i8* %13, align 1, !dbg !233, !tbaa !234
  br label %17, !dbg !235

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !236
  br label %17, !dbg !237

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !238
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !206), !dbg !239
  %1 = icmp sgt i32 %__signo, 32, !dbg !240
  br i1 %1, label %5, label %2, !dbg !241

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !242
  %4 = shl i32 1, %3, !dbg !243
  br label %5, !dbg !241

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !241
  ret i32 %6, !dbg !244
}

; Function Attrs: nounwind optsize ssp uwtable
define void @spread_q_poisson(%struct.__sFILE* nocapture %log, i32 %bVerbose, i32 %bCoulomb, i32 %natoms, [3 x float]* nocapture readonly %x, float* nocapture readonly %prop, float* nocapture readonly %box, float %rc, %struct.t_PSgrid* %grid, %struct.t_nrnb* nocapture readnone %nrnb, i32 %bOld, float %r1) #4 {
  %invh = alloca [3 x float], align 4
  %ixyz = alloca [3 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %rho = alloca float***, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !113, metadata !206), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %bVerbose, i64 0, metadata !114, metadata !206), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %bCoulomb, i64 0, metadata !115, metadata !206), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !116, metadata !206), !dbg !248
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !117, metadata !206), !dbg !249
  tail call void @llvm.dbg.value(metadata float* %prop, i64 0, metadata !118, metadata !206), !dbg !250
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !119, metadata !206), !dbg !251
  tail call void @llvm.dbg.value(metadata float %rc, i64 0, metadata !120, metadata !206), !dbg !252
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !121, metadata !206), !dbg !253
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !122, metadata !206), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %bOld, i64 0, metadata !123, metadata !206), !dbg !255
  tail call void @llvm.dbg.value(metadata float %r1, i64 0, metadata !124, metadata !206), !dbg !256
  tail call void @llvm.dbg.declare(metadata [3 x float]* %invh, metadata !125, metadata !206), !dbg !257
  tail call void @llvm.dbg.declare(metadata [3 x float]* undef, metadata !126, metadata !206), !dbg !258
  tail call void @llvm.dbg.value(metadata float 5.000000e-01, i64 0, metadata !143, metadata !206), !dbg !259
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %ixyz, metadata !146, metadata !206), !dbg !260
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !167, metadata !206), !dbg !261
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !168, metadata !206), !dbg !262
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !169, metadata !206), !dbg !263
  tail call void @llvm.dbg.value(metadata float**** %rho, i64 0, metadata !170, metadata !206), !dbg !264
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %rho) #6, !dbg !265
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !167, metadata !206), !dbg !261
  %1 = load i32* %nx, align 4, !dbg !266, !tbaa !267
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !168, metadata !206), !dbg !262
  %2 = load i32* %ny, align 4, !dbg !268, !tbaa !267
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !169, metadata !206), !dbg !263
  %3 = load i32* %nz, align 4, !dbg !269, !tbaa !267
  %4 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0, !dbg !270
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !175, metadata !206), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !176, metadata !206), !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !177, metadata !206), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !178, metadata !206), !dbg !275
  tail call void @llvm.dbg.value(metadata float* %4, i64 0, metadata !179, metadata !206), !dbg !276
  tail call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !180, metadata !206), !dbg !277
  %5 = sitofp i32 %1 to float, !dbg !278
  %6 = load float* %box, align 4, !dbg !279, !tbaa !280
  %7 = fdiv float %5, %6, !dbg !282
  store float %7, float* %4, align 4, !dbg !283, !tbaa !280
  %8 = sitofp i32 %2 to float, !dbg !284
  %9 = getelementptr inbounds float* %box, i64 1, !dbg !285
  %10 = load float* %9, align 4, !dbg !285, !tbaa !280
  %11 = fdiv float %8, %10, !dbg !286
  %12 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1, !dbg !287
  store float %11, float* %12, align 4, !dbg !288, !tbaa !280
  %13 = sitofp i32 %3 to float, !dbg !289
  %14 = getelementptr inbounds float* %box, i64 2, !dbg !290
  %15 = load float* %14, align 4, !dbg !290, !tbaa !280
  %16 = fdiv float %13, %15, !dbg !291
  %17 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2, !dbg !292
  store float %16, float* %17, align 4, !dbg !293, !tbaa !280
  %18 = fdiv float 1.000000e+00, %7, !dbg !294
  call void @llvm.dbg.value(metadata float %18, i64 0, metadata !126, metadata !295), !dbg !258
  %19 = fdiv float 1.000000e+00, %11, !dbg !296
  call void @llvm.dbg.value(metadata float %19, i64 0, metadata !126, metadata !297), !dbg !258
  %20 = fdiv float 1.000000e+00, %16, !dbg !298
  call void @llvm.dbg.value(metadata float %20, i64 0, metadata !126, metadata !299), !dbg !258
  %21 = fdiv float %rc, %6, !dbg !300
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !167, metadata !206), !dbg !261
  %22 = fmul float %21, %5, !dbg !301
  %23 = fptosi float %22 to i32, !dbg !302
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !164, metadata !206), !dbg !303
  %24 = fdiv float %rc, %10, !dbg !304
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !168, metadata !206), !dbg !262
  %25 = fmul float %24, %8, !dbg !305
  %26 = fptosi float %25 to i32, !dbg !306
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !165, metadata !206), !dbg !307
  %27 = fdiv float %rc, %15, !dbg !308
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !169, metadata !206), !dbg !263
  %28 = fmul float %27, %13, !dbg !309
  %29 = fptosi float %28 to i32, !dbg !310
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !166, metadata !206), !dbg !311
  %.b = load i1* @spread_q_poisson.bFirst, align 1
  br i1 %.b, label %._crit_edge23, label %30, !dbg !312

._crit_edge23:                                    ; preds = %0
  %.pre24 = fpext float %rc to double, !dbg !313
  br label %112, !dbg !312

; <label>:30                                      ; preds = %0
  %31 = icmp ne i32 %bCoulomb, 0, !dbg !316
  %32 = select i1 %31, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), !dbg !316
  %33 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %1, i32 %2, i32 %3) #6, !dbg !319
  %34 = fpext float %7 to double, !dbg !320
  %35 = fpext float %11 to double, !dbg !321
  %36 = fpext float %16 to double, !dbg !322
  %37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %34, double %35, double %36) #6, !dbg !323
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %23, i32 %26, i32 %29) #6, !dbg !324
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !167, metadata !206), !dbg !261
  %39 = load i32* %nx, align 4, !dbg !325, !tbaa !267
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !168, metadata !206), !dbg !262
  %40 = load i32* %ny, align 4, !dbg !326, !tbaa !267
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !169, metadata !206), !dbg !263
  %41 = load i32* %nz, align 4, !dbg !327, !tbaa !267
  call void @calc_nxyz(i32 %39, i32 %40, i32 %41, i32** @spread_q_poisson.nnx, i32** @spread_q_poisson.nny, i32** @spread_q_poisson.nnz) #6, !dbg !328
  %42 = shl i32 %23, 1, !dbg !329
  %43 = add nsw i32 %42, 2, !dbg !330
  %44 = shl i32 %26, 1, !dbg !331
  %45 = add nsw i32 %44, 2, !dbg !332
  %46 = mul nsw i32 %45, %43, !dbg !333
  %47 = shl i32 %29, 1, !dbg !334
  %48 = add nsw i32 %47, 2, !dbg !335
  %49 = mul nsw i32 %46, %48, !dbg !336
  store i32 %49, i32* @spread_q_poisson.MAXCELLS, align 4, !dbg !337, !tbaa !267
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 83, i32 %49, i32 12) #6, !dbg !338
  store i8* %50, i8** bitcast ([3 x i32]** @spread_q_poisson.cells to i8**), align 8, !dbg !338, !tbaa !339
  %51 = fpext float %rc to double, !dbg !340
  call void @llvm.dbg.value(metadata float* undef, i64 0, metadata !191, metadata !206) #7, !dbg !341
  %52 = fmul float %18, %18, !dbg !343
  %53 = fmul float %19, %19, !dbg !344
  %54 = fadd float %52, %53, !dbg !345
  %55 = fmul float %20, %20, !dbg !346
  %56 = fadd float %54, %55, !dbg !347
  %sqrtf.i = call float @sqrtf(float %56) #8, !dbg !348
  %57 = fpext float %sqrtf.i to double, !dbg !349
  %58 = fmul double %57, 5.000000e-01, !dbg !350
  %59 = fadd double %51, %58, !dbg !351
  %60 = fptrunc double %59 to float, !dbg !340
  tail call void @llvm.dbg.value(metadata float %60, i64 0, metadata !186, metadata !206), !dbg !352
  %61 = fmul float %60, %60, !dbg !354
  call void @llvm.dbg.value(metadata float %61, i64 0, metadata !144, metadata !206), !dbg !355
  store i32 0, i32* @spread_q_poisson.NCELLS, align 4, !dbg !356, !tbaa !267
  %62 = xor i32 %23, -1, !dbg !357
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !149, metadata !206), !dbg !359
  %63 = add nsw i32 %23, 1, !dbg !360
  %64 = icmp slt i32 %63, %62, !dbg !362
  %65 = bitcast i8* %50 to [3 x i32]*
  br i1 %64, label %._crit_edge16, label %.lr.ph15, !dbg !363

.lr.ph15:                                         ; preds = %30
  %66 = xor i32 %26, -1, !dbg !364
  %67 = add nsw i32 %26, 1, !dbg !367
  %68 = icmp slt i32 %67, %66, !dbg !369
  %69 = xor i32 %29, -1, !dbg !370
  %70 = add nsw i32 %29, 1, !dbg !375
  %71 = icmp slt i32 %70, %69, !dbg !377
  br label %72, !dbg !363

; <label>:72                                      ; preds = %._crit_edge12, %.lr.ph15
  %73 = phi i32 [ 0, %.lr.ph15 ], [ %106, %._crit_edge12 ]
  %i.013 = phi i32 [ %62, %.lr.ph15 ], [ %107, %._crit_edge12 ]
  %74 = sitofp i32 %i.013 to float, !dbg !378
  %75 = fmul float %18, %74, !dbg !379
  tail call void @llvm.dbg.value(metadata float %75, i64 0, metadata !186, metadata !206), !dbg !380
  %76 = fmul float %75, %75, !dbg !382
  call void @llvm.dbg.value(metadata float %76, i64 0, metadata !128, metadata !206), !dbg !383
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !150, metadata !206), !dbg !384
  br i1 %68, label %._crit_edge12, label %.lr.ph11, !dbg !385

.lr.ph11:                                         ; preds = %72, %.loopexit1
  %77 = phi i32 [ %103, %.loopexit1 ], [ %73, %72 ]
  %j.09 = phi i32 [ %104, %.loopexit1 ], [ %66, %72 ]
  %78 = sitofp i32 %j.09 to float, !dbg !386
  %79 = fmul float %19, %78, !dbg !387
  tail call void @llvm.dbg.value(metadata float %79, i64 0, metadata !186, metadata !206), !dbg !388
  %80 = fmul float %79, %79, !dbg !390
  call void @llvm.dbg.value(metadata float %80, i64 0, metadata !129, metadata !206), !dbg !391
  %81 = fadd float %76, %80, !dbg !392
  %.not = fcmp uge float %81, %61, !dbg !393
  %brmerge = or i1 %.not, %71, !dbg !393
  br i1 %brmerge, label %.loopexit1, label %.lr.ph8, !dbg !393

.lr.ph8:                                          ; preds = %.lr.ph11, %99
  %82 = phi i32 [ %100, %99 ], [ %77, %.lr.ph11 ]
  %k.06 = phi i32 [ %101, %99 ], [ %69, %.lr.ph11 ]
  %83 = sitofp i32 %k.06 to float, !dbg !394
  %84 = fmul float %20, %83, !dbg !396
  tail call void @llvm.dbg.value(metadata float %84, i64 0, metadata !186, metadata !206), !dbg !397
  %85 = fmul float %84, %84, !dbg !399
  call void @llvm.dbg.value(metadata float %85, i64 0, metadata !130, metadata !206), !dbg !400
  %86 = fadd float %81, %85, !dbg !401
  %87 = fcmp olt float %86, %61, !dbg !403
  br i1 %87, label %88, label %99, !dbg !404

; <label>:88                                      ; preds = %.lr.ph8
  %89 = sext i32 %82 to i64, !dbg !405
  %90 = getelementptr inbounds [3 x i32]* %65, i64 %89, i64 0, !dbg !405
  store i32 %i.013, i32* %90, align 4, !dbg !407, !tbaa !267
  %91 = load i32* @spread_q_poisson.NCELLS, align 4, !dbg !408, !tbaa !267
  %92 = sext i32 %91 to i64, !dbg !409
  %93 = getelementptr inbounds [3 x i32]* %65, i64 %92, i64 1, !dbg !409
  store i32 %j.09, i32* %93, align 4, !dbg !410, !tbaa !267
  %94 = load i32* @spread_q_poisson.NCELLS, align 4, !dbg !411, !tbaa !267
  %95 = sext i32 %94 to i64, !dbg !412
  %96 = getelementptr inbounds [3 x i32]* %65, i64 %95, i64 2, !dbg !412
  store i32 %k.06, i32* %96, align 4, !dbg !413, !tbaa !267
  %97 = load i32* @spread_q_poisson.NCELLS, align 4, !dbg !414, !tbaa !267
  %98 = add nsw i32 %97, 1, !dbg !414
  store i32 %98, i32* @spread_q_poisson.NCELLS, align 4, !dbg !414, !tbaa !267
  br label %99, !dbg !415

; <label>:99                                      ; preds = %.lr.ph8, %88
  %100 = phi i32 [ %82, %.lr.ph8 ], [ %98, %88 ]
  %101 = add nsw i32 %k.06, 1, !dbg !416
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !151, metadata !206), !dbg !417
  %102 = icmp slt i32 %k.06, %70, !dbg !377
  br i1 %102, label %.lr.ph8, label %.loopexit1, !dbg !418

.loopexit1:                                       ; preds = %99, %.lr.ph11
  %103 = phi i32 [ %77, %.lr.ph11 ], [ %100, %99 ]
  %104 = add nsw i32 %j.09, 1, !dbg !419
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !150, metadata !206), !dbg !384
  %105 = icmp slt i32 %j.09, %67, !dbg !369
  br i1 %105, label %.lr.ph11, label %._crit_edge12, !dbg !385

._crit_edge12:                                    ; preds = %.loopexit1, %72
  %106 = phi i32 [ %73, %72 ], [ %103, %.loopexit1 ]
  %107 = add nsw i32 %i.013, 1, !dbg !420
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !149, metadata !206), !dbg !359
  %108 = icmp slt i32 %i.013, %63, !dbg !362
  br i1 %108, label %72, label %._crit_edge16, !dbg !363

._crit_edge16:                                    ; preds = %._crit_edge12, %30
  %109 = phi i32 [ 0, %30 ], [ %106, %._crit_edge12 ]
  %110 = load i32* @spread_q_poisson.MAXCELLS, align 4, !dbg !421, !tbaa !267
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), i32 %109, i32 %110) #6, !dbg !422
  store i1 true, i1* @spread_q_poisson.bFirst, align 1
  br label %112, !dbg !423

; <label>:112                                     ; preds = %._crit_edge23, %._crit_edge16
  %.pre-phi = phi double [ %.pre24, %._crit_edge23 ], [ %51, %._crit_edge16 ], !dbg !313
  %113 = fmul float %rc, %rc, !dbg !424
  call void @llvm.dbg.value(metadata float %113, i64 0, metadata !144, metadata !206), !dbg !355
  call void @llvm.dbg.value(metadata float 0x409B47AAC0000000, i64 0, metadata !145, metadata !206), !dbg !425
  %114 = icmp eq i32 %bCoulomb, 0, !dbg !426
  br i1 %114, label %120, label %115, !dbg !427

; <label>:115                                     ; preds = %112
  %116 = call double @llvm.pow.f64(double %.pre-phi, double -5.000000e+00), !dbg !428
  %117 = fmul double %116, 0xC090480FF35D5A4F, !dbg !429
  %118 = call double @llvm.pow.f64(double %.pre-phi, double -3.000000e+00), !dbg !430
  %119 = fmul double %118, 0x4090480FF35D5A4F, !dbg !431
  br label %125, !dbg !432

; <label>:120                                     ; preds = %112
  %121 = call double @llvm.pow.f64(double %.pre-phi, double -1.000000e+01), !dbg !433
  %122 = fmul double %121, 1.200000e+02, !dbg !435
  %123 = call double @llvm.pow.f64(double %.pre-phi, double -8.000000e+00), !dbg !436
  %124 = fmul double %123, -9.000000e+01, !dbg !437
  br label %125

; <label>:125                                     ; preds = %120, %115
  %B.0.in = phi double [ %119, %115 ], [ %124, %120 ]
  %A.0.in = phi double [ %117, %115 ], [ %122, %120 ]
  %A.0 = fptrunc double %A.0.in to float, !dbg !438
  %B.0 = fptrunc double %B.0.in to float, !dbg !439
  call void @llvm.dbg.value(metadata float %18, i64 0, metadata !136, metadata !206), !dbg !440
  call void @llvm.dbg.value(metadata float %19, i64 0, metadata !137, metadata !206), !dbg !441
  call void @llvm.dbg.value(metadata float %20, i64 0, metadata !138, metadata !206), !dbg !442
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !149, metadata !206), !dbg !359
  %126 = icmp sgt i32 %natoms, 0, !dbg !443
  br i1 %126, label %.lr.ph5, label %._crit_edge, !dbg !446

.lr.ph5:                                          ; preds = %125
  %127 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0, !dbg !447
  %128 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1, !dbg !451
  %129 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2, !dbg !452
  %130 = icmp eq i32 %bOld, 0, !dbg !453
  %131 = add i32 %natoms, -1, !dbg !446
  br label %132, !dbg !446

; <label>:132                                     ; preds = %.loopexit, %.lr.ph5
  %indvars.iv19 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next20, %.loopexit ]
  %133 = getelementptr inbounds float* %prop, i64 %indvars.iv19, !dbg !460
  %134 = load float* %133, align 4, !dbg !460, !tbaa !280
  call void @llvm.dbg.value(metadata float %134, i64 0, metadata !127, metadata !206), !dbg !461
  %fabsf = call float @fabsf(float %134) #8, !dbg !462
  %135 = fpext float %fabsf to double, !dbg !462
  %136 = fcmp ogt double %135, 1.200000e-38, !dbg !463
  br i1 %136, label %.preheader, label %.loopexit, !dbg !464

.preheader:                                       ; preds = %132, %156
  %indvars.iv = phi i64 [ %indvars.iv.next, %156 ], [ 0, %132 ]
  %137 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 %indvars.iv, !dbg !465
  %138 = load float* %137, align 4, !dbg !465, !tbaa !280
  %139 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv, !dbg !469
  %140 = load float* %139, align 4, !dbg !469, !tbaa !280
  %141 = fmul float %138, %140, !dbg !470
  %142 = fptosi float %141 to i32, !dbg !465
  call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !155, metadata !206), !dbg !471
  %143 = getelementptr inbounds float* %box, i64 %indvars.iv, !dbg !472
  %144 = load float* %143, align 4, !dbg !472, !tbaa !280
  %145 = fmul float %140, %144, !dbg !473
  call void @llvm.dbg.value(metadata float %145, i64 0, metadata !141, metadata !206), !dbg !474
  %146 = icmp slt i32 %142, 0, !dbg !475
  %147 = sitofp i32 %142 to float, !dbg !477
  br i1 %146, label %148, label %151, !dbg !478

; <label>:148                                     ; preds = %.preheader
  %149 = fadd float %145, %147, !dbg !477
  %150 = fptosi float %149 to i32, !dbg !477
  call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !155, metadata !206), !dbg !471
  br label %156, !dbg !479

; <label>:151                                     ; preds = %.preheader
  %152 = fcmp ult float %147, %145, !dbg !480
  br i1 %152, label %156, label %153, !dbg !482

; <label>:153                                     ; preds = %151
  %154 = fsub float %147, %145, !dbg !483
  %155 = fptosi float %154 to i32, !dbg !483
  call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !155, metadata !206), !dbg !471
  br label %156, !dbg !484

; <label>:156                                     ; preds = %151, %153, %148
  %ttt.0 = phi i32 [ %150, %148 ], [ %155, %153 ], [ %142, %151 ]
  %157 = sitofp i32 %ttt.0 to float, !dbg !485
  %158 = fadd float %157, 5.000000e-01, !dbg !486
  %159 = fptosi float %158 to i32, !dbg !485
  %160 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 %indvars.iv, !dbg !487
  store i32 %159, i32* %160, align 4, !dbg !488, !tbaa !267
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !489
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !489
  br i1 %exitcond, label %161, label %.preheader, !dbg !489

; <label>:161                                     ; preds = %156
  %162 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 0, !dbg !490
  %163 = load float* %162, align 4, !dbg !490, !tbaa !280
  call void @llvm.dbg.value(metadata float %163, i64 0, metadata !132, metadata !206), !dbg !491
  %164 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 1, !dbg !492
  %165 = load float* %164, align 4, !dbg !492, !tbaa !280
  call void @llvm.dbg.value(metadata float %165, i64 0, metadata !133, metadata !206), !dbg !493
  %166 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 2, !dbg !494
  %167 = load float* %166, align 4, !dbg !494, !tbaa !280
  call void @llvm.dbg.value(metadata float %167, i64 0, metadata !134, metadata !206), !dbg !495
  %168 = load i32* %127, align 4, !dbg !447, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !152, metadata !206), !dbg !496
  %169 = load i32* %128, align 4, !dbg !451, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %169, i64 0, metadata !153, metadata !206), !dbg !497
  %170 = load i32* %129, align 4, !dbg !452, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !154, metadata !206), !dbg !498
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !157, metadata !206), !dbg !499
  %171 = load i32* @spread_q_poisson.NCELLS, align 4, !dbg !500, !tbaa !267
  %172 = icmp sgt i32 %171, 0, !dbg !501
  br i1 %172, label %.lr.ph, label %.loopexit, !dbg !502

.lr.ph:                                           ; preds = %161, %237
  %173 = phi i32 [ %238, %237 ], [ %171, %161 ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %237 ], [ 0, %161 ]
  %174 = load [3 x i32]** @spread_q_poisson.cells, align 8, !dbg !503, !tbaa !339
  %175 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 0, !dbg !503
  %176 = load i32* %175, align 4, !dbg !503, !tbaa !267
  %177 = add nsw i32 %176, %168, !dbg !504
  call void @llvm.dbg.value(metadata i32 %177, i64 0, metadata !158, metadata !206), !dbg !505
  %178 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 1, !dbg !506
  %179 = load i32* %178, align 4, !dbg !506, !tbaa !267
  %180 = add nsw i32 %179, %169, !dbg !507
  call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !159, metadata !206), !dbg !508
  %181 = getelementptr inbounds [3 x i32]* %174, i64 %indvars.iv17, i64 2, !dbg !509
  %182 = load i32* %181, align 4, !dbg !509, !tbaa !267
  %183 = add nsw i32 %182, %170, !dbg !510
  call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !160, metadata !206), !dbg !511
  %184 = sitofp i32 %177 to float, !dbg !512
  %185 = fmul float %18, %184, !dbg !513
  %186 = fsub float %163, %185, !dbg !514
  tail call void @llvm.dbg.value(metadata float %186, i64 0, metadata !186, metadata !206), !dbg !515
  %187 = fmul float %186, %186, !dbg !517
  call void @llvm.dbg.value(metadata float %187, i64 0, metadata !128, metadata !206), !dbg !383
  %188 = sitofp i32 %180 to float, !dbg !518
  %189 = fmul float %19, %188, !dbg !519
  %190 = fsub float %165, %189, !dbg !520
  tail call void @llvm.dbg.value(metadata float %190, i64 0, metadata !186, metadata !206), !dbg !521
  %191 = fmul float %190, %190, !dbg !523
  call void @llvm.dbg.value(metadata float %191, i64 0, metadata !129, metadata !206), !dbg !391
  %192 = sitofp i32 %183 to float, !dbg !524
  %193 = fmul float %20, %192, !dbg !525
  %194 = fsub float %167, %193, !dbg !526
  tail call void @llvm.dbg.value(metadata float %194, i64 0, metadata !186, metadata !206), !dbg !527
  %195 = fmul float %194, %194, !dbg !529
  call void @llvm.dbg.value(metadata float %195, i64 0, metadata !130, metadata !206), !dbg !400
  %196 = fadd float %187, %191, !dbg !530
  %197 = fadd float %196, %195, !dbg !531
  call void @llvm.dbg.value(metadata float %197, i64 0, metadata !131, metadata !206), !dbg !532
  %198 = fcmp olt float %197, %113, !dbg !533
  br i1 %198, label %199, label %237, !dbg !534

; <label>:199                                     ; preds = %.lr.ph
  br i1 %130, label %203, label %200, !dbg !535

; <label>:200                                     ; preds = %199
  %sqrtf = call float @sqrtf(float %197) #8, !dbg !536
  call void @llvm.dbg.value(metadata float %sqrtf, i64 0, metadata !142, metadata !206), !dbg !538
  %201 = call float @spreadfunction(float %r1, float %rc, float %sqrtf) #6, !dbg !539
  %202 = fmul float %201, 0x409B47AAC0000000, !dbg !540
  call void @llvm.dbg.value(metadata float %202, i64 0, metadata !135, metadata !206), !dbg !541
  %.pre.pre = load i32* @spread_q_poisson.NCELLS, align 4, !dbg !500, !tbaa !267
  br label %206, !dbg !542

; <label>:203                                     ; preds = %199
  %204 = fmul float %A.0, %197, !dbg !543
  %205 = fadd float %B.0, %204, !dbg !544
  call void @llvm.dbg.value(metadata float %205, i64 0, metadata !135, metadata !206), !dbg !541
  br label %206

; <label>:206                                     ; preds = %203, %200
  %.pre = phi i32 [ %.pre.pre, %200 ], [ %173, %203 ], !dbg !261
  %sf.0 = phi float [ %202, %200 ], [ %205, %203 ]
  call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !167, metadata !206), !dbg !261
  %207 = load i32* %nx, align 4, !dbg !545, !tbaa !267
  %208 = add nsw i32 %207, %177, !dbg !546
  %209 = sext i32 %208 to i64, !dbg !547
  %210 = load i32** @spread_q_poisson.nnx, align 8, !dbg !547, !tbaa !339
  %211 = getelementptr inbounds i32* %210, i64 %209, !dbg !547
  %212 = load i32* %211, align 4, !dbg !547, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !161, metadata !206), !dbg !548
  call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !168, metadata !206), !dbg !262
  %213 = load i32* %ny, align 4, !dbg !549, !tbaa !267
  %214 = add nsw i32 %213, %180, !dbg !550
  %215 = sext i32 %214 to i64, !dbg !551
  %216 = load i32** @spread_q_poisson.nny, align 8, !dbg !551, !tbaa !339
  %217 = getelementptr inbounds i32* %216, i64 %215, !dbg !551
  %218 = load i32* %217, align 4, !dbg !551, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %218, i64 0, metadata !162, metadata !206), !dbg !552
  call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !169, metadata !206), !dbg !263
  %219 = load i32* %nz, align 4, !dbg !553, !tbaa !267
  %220 = add nsw i32 %219, %183, !dbg !554
  %221 = sext i32 %220 to i64, !dbg !555
  %222 = load i32** @spread_q_poisson.nnz, align 8, !dbg !555, !tbaa !339
  %223 = getelementptr inbounds i32* %222, i64 %221, !dbg !555
  %224 = load i32* %223, align 4, !dbg !555, !tbaa !267
  call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !163, metadata !206), !dbg !556
  %225 = fmul float %134, %sf.0, !dbg !557
  %226 = sext i32 %224 to i64, !dbg !558
  %227 = sext i32 %218 to i64, !dbg !558
  %228 = sext i32 %212 to i64, !dbg !558
  call void @llvm.dbg.value(metadata float**** %rho, i64 0, metadata !170, metadata !206), !dbg !264
  %229 = load float**** %rho, align 8, !dbg !558, !tbaa !339
  %230 = getelementptr inbounds float*** %229, i64 %228, !dbg !558
  %231 = load float*** %230, align 8, !dbg !558, !tbaa !339
  %232 = getelementptr inbounds float** %231, i64 %227, !dbg !558
  %233 = load float** %232, align 8, !dbg !558, !tbaa !339
  %234 = getelementptr inbounds float* %233, i64 %226, !dbg !558
  %235 = load float* %234, align 4, !dbg !559, !tbaa !280
  %236 = fadd float %225, %235, !dbg !559
  store float %236, float* %234, align 4, !dbg !559, !tbaa !280
  br label %237, !dbg !560

; <label>:237                                     ; preds = %.lr.ph, %206
  %238 = phi i32 [ %173, %.lr.ph ], [ %.pre, %206 ], !dbg !502
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !502
  %239 = sext i32 %238 to i64, !dbg !501
  %240 = icmp slt i64 %indvars.iv.next18, %239, !dbg !501
  br i1 %240, label %.lr.ph, label %.loopexit, !dbg !502

.loopexit:                                        ; preds = %237, %161, %132
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !446
  %lftr.wideiv = trunc i64 %indvars.iv19 to i32, !dbg !446
  %exitcond21 = icmp eq i32 %lftr.wideiv, %131, !dbg !446
  br i1 %exitcond21, label %._crit_edge, label %132, !dbg !446

._crit_edge:                                      ; preds = %.loopexit, %125
  ret void, !dbg !561
}

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: optsize
declare float @spreadfunction(float, float, float) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

declare float @sqrtf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!202, !203, !204}
!llvm.ident = !{!205}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !192, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/psspread.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !171, !181, !187}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "spread_q_poisson", scope: !1, file: !1, line: 44, type: !82, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i32, [3 x float]*, float*, float*, float, %struct.t_PSgrid*, %struct.t_nrnb*, i32, float)* @spread_q_poisson, variables: !112)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !11, !10, !10, !10, !84, !90, !90, !88, !91, !102, !10, !88}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !86, line: 101, baseType: !87)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 96, align: 32, elements: !63)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !86, line: 87, baseType: !89)
!89 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_PSgrid", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!94 = !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 43, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nx", scope: !94, file: !93, line: 44, baseType: !10, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ny", scope: !94, file: !93, line: 44, baseType: !10, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !94, file: !93, line: 44, baseType: !10, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !94, file: !93, line: 45, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !104, line: 95, baseType: !105)
!104 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!105 = !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 93, size: 8256, align: 64, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !105, file: !104, line: 94, baseType: !108, size: 8256, align: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 8256, align: 64, elements: !110)
!109 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!110 = !{!111}
!111 = !DISubrange(count: 129)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !81, file: !1, line: 44, type: !11)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerbose", arg: 2, scope: !81, file: !1, line: 44, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bCoulomb", arg: 3, scope: !81, file: !1, line: 44, type: !10)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 4, scope: !81, file: !1, line: 45, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !81, file: !1, line: 45, type: !84)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prop", arg: 6, scope: !81, file: !1, line: 45, type: !90)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !81, file: !1, line: 45, type: !90)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rc", arg: 8, scope: !81, file: !1, line: 46, type: !88)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid", arg: 9, scope: !81, file: !1, line: 46, type: !91)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 10, scope: !81, file: !1, line: 46, type: !102)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOld", arg: 11, scope: !81, file: !1, line: 47, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 12, scope: !81, file: !1, line: 47, type: !88)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "invh", scope: !81, file: !1, line: 57, type: !85)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !81, file: !1, line: 57, type: !85)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qi", scope: !81, file: !1, line: 58, type: !88)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx2", scope: !81, file: !1, line: 58, type: !88)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy2", scope: !81, file: !1, line: 58, type: !88)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz2", scope: !81, file: !1, line: 58, type: !88)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !81, file: !1, line: 58, type: !88)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xi", scope: !81, file: !1, line: 58, type: !88)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yi", scope: !81, file: !1, line: 58, type: !88)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zi", scope: !81, file: !1, line: 58, type: !88)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sf", scope: !81, file: !1, line: 58, type: !88)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hx", scope: !81, file: !1, line: 58, type: !88)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hy", scope: !81, file: !1, line: 58, type: !88)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hz", scope: !81, file: !1, line: 58, type: !88)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "A", scope: !81, file: !1, line: 59, type: !88)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "B", scope: !81, file: !1, line: 59, type: !88)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bhh", scope: !81, file: !1, line: 60, type: !88)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !81, file: !1, line: 60, type: !88)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "half", scope: !81, file: !1, line: 60, type: !88)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc2", scope: !81, file: !1, line: 60, type: !88)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inveps0", scope: !81, file: !1, line: 60, type: !88)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ixyz", scope: !81, file: !1, line: 61, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !86, line: 107, baseType: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, align: 32, elements: !63)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 62, type: !10)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !81, file: !1, line: 62, type: !10)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !81, file: !1, line: 62, type: !10)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iX", scope: !81, file: !1, line: 62, type: !10)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iY", scope: !81, file: !1, line: 62, type: !10)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iZ", scope: !81, file: !1, line: 62, type: !10)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ttt", scope: !81, file: !1, line: 62, type: !10)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !81, file: !1, line: 62, type: !10)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !81, file: !1, line: 62, type: !10)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jx", scope: !81, file: !1, line: 63, type: !10)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jy", scope: !81, file: !1, line: 63, type: !10)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jz", scope: !81, file: !1, line: 63, type: !10)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcx", scope: !81, file: !1, line: 63, type: !10)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcy", scope: !81, file: !1, line: 63, type: !10)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcz", scope: !81, file: !1, line: 63, type: !10)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncellsx", scope: !81, file: !1, line: 64, type: !10)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncellsy", scope: !81, file: !1, line: 64, type: !10)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncellsz", scope: !81, file: !1, line: 64, type: !10)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !81, file: !1, line: 65, type: !10)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !81, file: !1, line: 65, type: !10)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !81, file: !1, line: 65, type: !10)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rho", scope: !81, file: !1, line: 66, type: !100)
!171 = !DISubprogram(name: "calc_invh_h", scope: !93, file: !93, line: 77, type: !172, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, variables: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !90, !10, !10, !10, !90, !90}
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 1, scope: !171, file: !93, line: 77, type: !90)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 2, scope: !171, file: !93, line: 77, type: !10)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !171, file: !93, line: 77, type: !10)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 4, scope: !171, file: !93, line: 77, type: !10)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invh", arg: 5, scope: !171, file: !93, line: 77, type: !90)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 6, scope: !171, file: !93, line: 77, type: !90)
!181 = !DISubprogram(name: "sqr", scope: !182, file: !182, line: 197, type: !183, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !185)
!182 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!183 = !DISubroutineType(types: !184)
!184 = !{!88, !88}
!185 = !{!186}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !181, file: !182, line: 197, type: !88)
!187 = !DISubprogram(name: "norm", scope: !182, file: !182, line: 358, type: !188, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, variables: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!88, !90}
!190 = !{!191}
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !187, file: !182, line: 358, type: !90)
!192 = !{!193, !194, !196, !197, !198, !199, !200}
!193 = !DIGlobalVariable(name: "bFirst", scope: !81, file: !1, line: 54, type: !10, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariable(name: "nnx", scope: !81, file: !1, line: 55, type: !195, isLocal: true, isDefinition: true, variable: i32** @spread_q_poisson.nnx)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!196 = !DIGlobalVariable(name: "nny", scope: !81, file: !1, line: 55, type: !195, isLocal: true, isDefinition: true, variable: i32** @spread_q_poisson.nny)
!197 = !DIGlobalVariable(name: "nnz", scope: !81, file: !1, line: 55, type: !195, isLocal: true, isDefinition: true, variable: i32** @spread_q_poisson.nnz)
!198 = !DIGlobalVariable(name: "NCELLS", scope: !81, file: !1, line: 55, type: !10, isLocal: true, isDefinition: true, variable: i32* @spread_q_poisson.NCELLS)
!199 = !DIGlobalVariable(name: "MAXCELLS", scope: !81, file: !1, line: 55, type: !10, isLocal: true, isDefinition: true, variable: i32* @spread_q_poisson.MAXCELLS)
!200 = !DIGlobalVariable(name: "cells", scope: !81, file: !1, line: 56, type: !201, isLocal: true, isDefinition: true, variable: [3 x i32]** @spread_q_poisson.cells)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!202 = !{i32 2, !"Dwarf Version", i32 2}
!203 = !{i32 2, !"Debug Info Version", i32 700000003}
!204 = !{i32 1, !"PIC Level", i32 2}
!205 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!206 = !DIExpression()
!207 = !DILocation(line: 348, column: 40, scope: !6)
!208 = !DILocation(line: 348, column: 50, scope: !6)
!209 = !DILocation(line: 349, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!211 = !DILocation(line: 349, column: 6, scope: !210)
!212 = !{!213, !217, i64 12}
!213 = !{!"__sFILE", !214, i64 0, !217, i64 8, !217, i64 12, !218, i64 16, !218, i64 18, !219, i64 24, !217, i64 40, !214, i64 48, !214, i64 56, !214, i64 64, !214, i64 72, !214, i64 80, !219, i64 88, !214, i64 104, !217, i64 112, !215, i64 116, !215, i64 119, !219, i64 120, !217, i64 136, !220, i64 144}
!214 = !{!"any pointer", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !{!"int", !215, i64 0}
!218 = !{!"short", !215, i64 0}
!219 = !{!"__sbuf", !214, i64 0, !217, i64 8}
!220 = !{!"long long", !215, i64 0}
!221 = !DILocation(line: 349, column: 15, scope: !210)
!222 = !DILocation(line: 349, column: 20, scope: !210)
!223 = !DILocation(line: 350, column: 10, scope: !210)
!224 = !DILocation(line: 349, column: 38, scope: !210)
!225 = !{!213, !217, i64 40}
!226 = !DILocation(line: 349, column: 31, scope: !210)
!227 = !DILocation(line: 349, column: 59, scope: !210)
!228 = !DILocation(line: 349, column: 47, scope: !210)
!229 = !DILocation(line: 350, column: 23, scope: !210)
!230 = !DILocation(line: 350, column: 16, scope: !210)
!231 = !DILocation(line: 350, column: 18, scope: !210)
!232 = !{!213, !214, i64 0}
!233 = !DILocation(line: 350, column: 21, scope: !210)
!234 = !{!215, !215, i64 0}
!235 = !DILocation(line: 350, column: 3, scope: !210)
!236 = !DILocation(line: 352, column: 11, scope: !210)
!237 = !DILocation(line: 352, column: 3, scope: !210)
!238 = !DILocation(line: 353, column: 1, scope: !6)
!239 = !DILocation(line: 114, column: 15, scope: !75)
!240 = !DILocation(line: 116, column: 20, scope: !75)
!241 = !DILocation(line: 116, column: 12, scope: !75)
!242 = !DILocation(line: 116, column: 57, scope: !75)
!243 = !DILocation(line: 116, column: 45, scope: !75)
!244 = !DILocation(line: 116, column: 5, scope: !75)
!245 = !DILocation(line: 44, column: 29, scope: !81)
!246 = !DILocation(line: 44, column: 38, scope: !81)
!247 = !DILocation(line: 44, column: 52, scope: !81)
!248 = !DILocation(line: 45, column: 13, scope: !81)
!249 = !DILocation(line: 45, column: 25, scope: !81)
!250 = !DILocation(line: 45, column: 34, scope: !81)
!251 = !DILocation(line: 45, column: 46, scope: !81)
!252 = !DILocation(line: 46, column: 14, scope: !81)
!253 = !DILocation(line: 46, column: 27, scope: !81)
!254 = !DILocation(line: 46, column: 40, scope: !81)
!255 = !DILocation(line: 47, column: 14, scope: !81)
!256 = !DILocation(line: 47, column: 24, scope: !81)
!257 = !DILocation(line: 57, column: 10, scope: !81)
!258 = !DILocation(line: 57, column: 15, scope: !81)
!259 = !DILocation(line: 60, column: 16, scope: !81)
!260 = !DILocation(line: 61, column: 10, scope: !81)
!261 = !DILocation(line: 65, column: 10, scope: !81)
!262 = !DILocation(line: 65, column: 13, scope: !81)
!263 = !DILocation(line: 65, column: 16, scope: !81)
!264 = !DILocation(line: 66, column: 13, scope: !81)
!265 = !DILocation(line: 68, column: 3, scope: !81)
!266 = !DILocation(line: 70, column: 19, scope: !81)
!267 = !{!217, !217, i64 0}
!268 = !DILocation(line: 70, column: 22, scope: !81)
!269 = !DILocation(line: 70, column: 25, scope: !81)
!270 = !DILocation(line: 70, column: 28, scope: !81)
!271 = !DILocation(line: 77, column: 30, scope: !171, inlinedAt: !272)
!272 = distinct !DILocation(line: 70, column: 3, scope: !81)
!273 = !DILocation(line: 77, column: 38, scope: !171, inlinedAt: !272)
!274 = !DILocation(line: 77, column: 45, scope: !171, inlinedAt: !272)
!275 = !DILocation(line: 77, column: 52, scope: !171, inlinedAt: !272)
!276 = !DILocation(line: 77, column: 60, scope: !171, inlinedAt: !272)
!277 = !DILocation(line: 77, column: 70, scope: !171, inlinedAt: !272)
!278 = !DILocation(line: 79, column: 14, scope: !171, inlinedAt: !272)
!279 = !DILocation(line: 79, column: 17, scope: !171, inlinedAt: !272)
!280 = !{!281, !281, i64 0}
!281 = !{!"float", !215, i64 0}
!282 = !DILocation(line: 79, column: 16, scope: !171, inlinedAt: !272)
!283 = !DILocation(line: 79, column: 12, scope: !171, inlinedAt: !272)
!284 = !DILocation(line: 80, column: 14, scope: !171, inlinedAt: !272)
!285 = !DILocation(line: 80, column: 17, scope: !171, inlinedAt: !272)
!286 = !DILocation(line: 80, column: 16, scope: !171, inlinedAt: !272)
!287 = !DILocation(line: 80, column: 3, scope: !171, inlinedAt: !272)
!288 = !DILocation(line: 80, column: 12, scope: !171, inlinedAt: !272)
!289 = !DILocation(line: 81, column: 14, scope: !171, inlinedAt: !272)
!290 = !DILocation(line: 81, column: 17, scope: !171, inlinedAt: !272)
!291 = !DILocation(line: 81, column: 16, scope: !171, inlinedAt: !272)
!292 = !DILocation(line: 81, column: 3, scope: !171, inlinedAt: !272)
!293 = !DILocation(line: 81, column: 12, scope: !171, inlinedAt: !272)
!294 = !DILocation(line: 82, column: 14, scope: !171, inlinedAt: !272)
!295 = !DIExpression(DW_OP_bit_piece, 0, 32)
!296 = !DILocation(line: 83, column: 14, scope: !171, inlinedAt: !272)
!297 = !DIExpression(DW_OP_bit_piece, 32, 32)
!298 = !DILocation(line: 84, column: 14, scope: !171, inlinedAt: !272)
!299 = !DIExpression(DW_OP_bit_piece, 64, 32)
!300 = !DILocation(line: 71, column: 14, scope: !81)
!301 = !DILocation(line: 71, column: 23, scope: !81)
!302 = !DILocation(line: 71, column: 11, scope: !81)
!303 = !DILocation(line: 64, column: 10, scope: !81)
!304 = !DILocation(line: 72, column: 14, scope: !81)
!305 = !DILocation(line: 72, column: 23, scope: !81)
!306 = !DILocation(line: 72, column: 11, scope: !81)
!307 = !DILocation(line: 64, column: 18, scope: !81)
!308 = !DILocation(line: 73, column: 14, scope: !81)
!309 = !DILocation(line: 73, column: 23, scope: !81)
!310 = !DILocation(line: 73, column: 11, scope: !81)
!311 = !DILocation(line: 64, column: 26, scope: !81)
!312 = !DILocation(line: 75, column: 7, scope: !81)
!313 = !DILocation(line: 112, column: 31, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 111, column: 17)
!315 = distinct !DILexicalBlock(scope: !81, file: !1, line: 111, column: 7)
!316 = !DILocation(line: 77, column: 6, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 75, column: 15)
!318 = distinct !DILexicalBlock(scope: !81, file: !1, line: 75, column: 7)
!319 = !DILocation(line: 76, column: 5, scope: !317)
!320 = !DILocation(line: 78, column: 43, scope: !317)
!321 = !DILocation(line: 78, column: 52, scope: !317)
!322 = !DILocation(line: 78, column: 61, scope: !317)
!323 = !DILocation(line: 78, column: 5, scope: !317)
!324 = !DILocation(line: 79, column: 5, scope: !317)
!325 = !DILocation(line: 80, column: 15, scope: !317)
!326 = !DILocation(line: 80, column: 18, scope: !317)
!327 = !DILocation(line: 80, column: 21, scope: !317)
!328 = !DILocation(line: 80, column: 5, scope: !317)
!329 = !DILocation(line: 82, column: 18, scope: !317)
!330 = !DILocation(line: 82, column: 26, scope: !317)
!331 = !DILocation(line: 82, column: 32, scope: !317)
!332 = !DILocation(line: 82, column: 40, scope: !317)
!333 = !DILocation(line: 82, column: 29, scope: !317)
!334 = !DILocation(line: 82, column: 46, scope: !317)
!335 = !DILocation(line: 82, column: 54, scope: !317)
!336 = !DILocation(line: 82, column: 43, scope: !317)
!337 = !DILocation(line: 82, column: 14, scope: !317)
!338 = !DILocation(line: 83, column: 5, scope: !317)
!339 = !{!214, !214, i64 0}
!340 = !DILocation(line: 84, column: 18, scope: !317)
!341 = !DILocation(line: 358, column: 30, scope: !187, inlinedAt: !342)
!342 = distinct !DILocation(line: 84, column: 25, scope: !317)
!343 = !DILocation(line: 360, column: 20, scope: !187, inlinedAt: !342)
!344 = !DILocation(line: 360, column: 32, scope: !187, inlinedAt: !342)
!345 = !DILocation(line: 360, column: 26, scope: !187, inlinedAt: !342)
!346 = !DILocation(line: 360, column: 44, scope: !187, inlinedAt: !342)
!347 = !DILocation(line: 360, column: 38, scope: !187, inlinedAt: !342)
!348 = !DILocation(line: 360, column: 10, scope: !187, inlinedAt: !342)
!349 = !DILocation(line: 84, column: 25, scope: !317)
!350 = !DILocation(line: 84, column: 24, scope: !317)
!351 = !DILocation(line: 84, column: 20, scope: !317)
!352 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !353)
!353 = distinct !DILocation(line: 84, column: 14, scope: !317)
!354 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !353)
!355 = !DILocation(line: 60, column: 25, scope: !81)
!356 = !DILocation(line: 85, column: 12, scope: !317)
!357 = !DILocation(line: 86, column: 19, scope: !358)
!358 = distinct !DILexicalBlock(scope: !317, file: !1, line: 86, column: 5)
!359 = !DILocation(line: 62, column: 10, scope: !81)
!360 = !DILocation(line: 86, column: 33, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 86, column: 5)
!362 = !DILocation(line: 86, column: 24, scope: !361)
!363 = !DILocation(line: 86, column: 5, scope: !358)
!364 = !DILocation(line: 88, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 88, column: 7)
!366 = distinct !DILexicalBlock(scope: !361, file: !1, line: 86, column: 42)
!367 = !DILocation(line: 88, column: 35, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !1, line: 88, column: 7)
!369 = !DILocation(line: 88, column: 26, scope: !368)
!370 = !DILocation(line: 91, column: 18, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 91, column: 4)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 90, column: 23)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 90, column: 6)
!374 = distinct !DILexicalBlock(scope: !368, file: !1, line: 88, column: 44)
!375 = !DILocation(line: 91, column: 32, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !1, line: 91, column: 4)
!377 = !DILocation(line: 91, column: 23, scope: !376)
!378 = !DILocation(line: 87, column: 17, scope: !366)
!379 = !DILocation(line: 87, column: 18, scope: !366)
!380 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !381)
!381 = distinct !DILocation(line: 87, column: 13, scope: !366)
!382 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !381)
!383 = !DILocation(line: 58, column: 13, scope: !81)
!384 = !DILocation(line: 62, column: 12, scope: !81)
!385 = !DILocation(line: 88, column: 7, scope: !365)
!386 = !DILocation(line: 89, column: 12, scope: !374)
!387 = !DILocation(line: 89, column: 13, scope: !374)
!388 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !389)
!389 = distinct !DILocation(line: 89, column: 8, scope: !374)
!390 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !389)
!391 = !DILocation(line: 58, column: 17, scope: !81)
!392 = !DILocation(line: 90, column: 10, scope: !373)
!393 = !DILocation(line: 90, column: 6, scope: !374)
!394 = !DILocation(line: 92, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !376, file: !1, line: 91, column: 41)
!396 = !DILocation(line: 92, column: 17, scope: !395)
!397 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !398)
!398 = distinct !DILocation(line: 92, column: 12, scope: !395)
!399 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !398)
!400 = !DILocation(line: 58, column: 21, scope: !81)
!401 = !DILocation(line: 93, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !1, line: 93, column: 10)
!403 = !DILocation(line: 93, column: 22, scope: !402)
!404 = !DILocation(line: 93, column: 10, scope: !395)
!405 = !DILocation(line: 94, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 93, column: 29)
!407 = !DILocation(line: 94, column: 26, scope: !406)
!408 = !DILocation(line: 95, column: 14, scope: !406)
!409 = !DILocation(line: 95, column: 8, scope: !406)
!410 = !DILocation(line: 95, column: 26, scope: !406)
!411 = !DILocation(line: 96, column: 14, scope: !406)
!412 = !DILocation(line: 96, column: 8, scope: !406)
!413 = !DILocation(line: 96, column: 26, scope: !406)
!414 = !DILocation(line: 97, column: 14, scope: !406)
!415 = !DILocation(line: 98, column: 6, scope: !406)
!416 = !DILocation(line: 91, column: 37, scope: !376)
!417 = !DILocation(line: 62, column: 14, scope: !81)
!418 = !DILocation(line: 91, column: 4, scope: !371)
!419 = !DILocation(line: 88, column: 40, scope: !368)
!420 = !DILocation(line: 86, column: 38, scope: !361)
!421 = !DILocation(line: 104, column: 13, scope: !317)
!422 = !DILocation(line: 103, column: 5, scope: !317)
!423 = !DILocation(line: 107, column: 3, scope: !317)
!424 = !DILocation(line: 109, column: 16, scope: !81)
!425 = !DILocation(line: 60, column: 29, scope: !81)
!426 = !DILocation(line: 111, column: 7, scope: !315)
!427 = !DILocation(line: 111, column: 7, scope: !81)
!428 = !DILocation(line: 112, column: 27, scope: !314)
!429 = !DILocation(line: 112, column: 26, scope: !314)
!430 = !DILocation(line: 113, column: 27, scope: !314)
!431 = !DILocation(line: 113, column: 26, scope: !314)
!432 = !DILocation(line: 114, column: 3, scope: !314)
!433 = !DILocation(line: 116, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !315, file: !1, line: 115, column: 8)
!435 = !DILocation(line: 116, column: 12, scope: !434)
!436 = !DILocation(line: 117, column: 13, scope: !434)
!437 = !DILocation(line: 117, column: 12, scope: !434)
!438 = !DILocation(line: 112, column: 9, scope: !314)
!439 = !DILocation(line: 113, column: 10, scope: !314)
!440 = !DILocation(line: 58, column: 40, scope: !81)
!441 = !DILocation(line: 58, column: 43, scope: !81)
!442 = !DILocation(line: 58, column: 46, scope: !81)
!443 = !DILocation(line: 124, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 124, column: 3)
!445 = distinct !DILexicalBlock(scope: !81, file: !1, line: 124, column: 3)
!446 = !DILocation(line: 124, column: 3, scope: !445)
!447 = !DILocation(line: 144, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 127, column: 34)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 127, column: 9)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 124, column: 29)
!451 = !DILocation(line: 145, column: 12, scope: !448)
!452 = !DILocation(line: 146, column: 12, scope: !448)
!453 = !DILocation(line: 161, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 161, column: 8)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 160, column: 16)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 160, column: 6)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 148, column: 33)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 148, column: 7)
!459 = distinct !DILexicalBlock(scope: !448, file: !1, line: 148, column: 7)
!460 = !DILocation(line: 125, column: 8, scope: !450)
!461 = !DILocation(line: 58, column: 10, scope: !81)
!462 = !DILocation(line: 127, column: 9, scope: !449)
!463 = !DILocation(line: 127, column: 18, scope: !449)
!464 = !DILocation(line: 127, column: 9, scope: !450)
!465 = !DILocation(line: 131, column: 8, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 129, column: 30)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 129, column: 7)
!468 = distinct !DILexicalBlock(scope: !448, file: !1, line: 129, column: 7)
!469 = !DILocation(line: 131, column: 16, scope: !466)
!470 = !DILocation(line: 131, column: 15, scope: !466)
!471 = !DILocation(line: 62, column: 25, scope: !81)
!472 = !DILocation(line: 132, column: 8, scope: !466)
!473 = !DILocation(line: 132, column: 14, scope: !466)
!474 = !DILocation(line: 60, column: 10, scope: !81)
!475 = !DILocation(line: 133, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !466, file: !1, line: 133, column: 6)
!477 = !DILocation(line: 134, column: 8, scope: !476)
!478 = !DILocation(line: 133, column: 6, scope: !466)
!479 = !DILocation(line: 134, column: 4, scope: !476)
!480 = !DILocation(line: 135, column: 15, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 135, column: 11)
!482 = !DILocation(line: 135, column: 11, scope: !476)
!483 = !DILocation(line: 136, column: 8, scope: !481)
!484 = !DILocation(line: 136, column: 4, scope: !481)
!485 = !DILocation(line: 139, column: 15, scope: !466)
!486 = !DILocation(line: 139, column: 18, scope: !466)
!487 = !DILocation(line: 139, column: 2, scope: !466)
!488 = !DILocation(line: 139, column: 13, scope: !466)
!489 = !DILocation(line: 129, column: 7, scope: !468)
!490 = !DILocation(line: 141, column: 12, scope: !448)
!491 = !DILocation(line: 58, column: 28, scope: !81)
!492 = !DILocation(line: 142, column: 12, scope: !448)
!493 = !DILocation(line: 58, column: 31, scope: !81)
!494 = !DILocation(line: 143, column: 12, scope: !448)
!495 = !DILocation(line: 58, column: 34, scope: !81)
!496 = !DILocation(line: 62, column: 16, scope: !81)
!497 = !DILocation(line: 62, column: 19, scope: !81)
!498 = !DILocation(line: 62, column: 22, scope: !81)
!499 = !DILocation(line: 62, column: 31, scope: !81)
!500 = !DILocation(line: 148, column: 19, scope: !458)
!501 = !DILocation(line: 148, column: 18, scope: !458)
!502 = !DILocation(line: 148, column: 7, scope: !459)
!503 = !DILocation(line: 150, column: 13, scope: !457)
!504 = !DILocation(line: 150, column: 11, scope: !457)
!505 = !DILocation(line: 63, column: 10, scope: !81)
!506 = !DILocation(line: 151, column: 13, scope: !457)
!507 = !DILocation(line: 151, column: 11, scope: !457)
!508 = !DILocation(line: 63, column: 13, scope: !81)
!509 = !DILocation(line: 152, column: 13, scope: !457)
!510 = !DILocation(line: 152, column: 11, scope: !457)
!511 = !DILocation(line: 63, column: 16, scope: !81)
!512 = !DILocation(line: 155, column: 17, scope: !457)
!513 = !DILocation(line: 155, column: 19, scope: !457)
!514 = !DILocation(line: 155, column: 15, scope: !457)
!515 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !516)
!516 = distinct !DILocation(line: 155, column: 8, scope: !457)
!517 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !516)
!518 = !DILocation(line: 156, column: 17, scope: !457)
!519 = !DILocation(line: 156, column: 19, scope: !457)
!520 = !DILocation(line: 156, column: 15, scope: !457)
!521 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !522)
!522 = distinct !DILocation(line: 156, column: 8, scope: !457)
!523 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !522)
!524 = !DILocation(line: 157, column: 17, scope: !457)
!525 = !DILocation(line: 157, column: 19, scope: !457)
!526 = !DILocation(line: 157, column: 15, scope: !457)
!527 = !DILocation(line: 197, column: 29, scope: !181, inlinedAt: !528)
!528 = distinct !DILocation(line: 157, column: 8, scope: !457)
!529 = !DILocation(line: 199, column: 12, scope: !181, inlinedAt: !528)
!530 = !DILocation(line: 158, column: 11, scope: !457)
!531 = !DILocation(line: 158, column: 15, scope: !457)
!532 = !DILocation(line: 58, column: 25, scope: !81)
!533 = !DILocation(line: 160, column: 9, scope: !456)
!534 = !DILocation(line: 160, column: 6, scope: !457)
!535 = !DILocation(line: 161, column: 8, scope: !455)
!536 = !DILocation(line: 162, column: 11, scope: !537)
!537 = distinct !DILexicalBlock(scope: !454, file: !1, line: 161, column: 14)
!538 = !DILocation(line: 60, column: 14, scope: !81)
!539 = !DILocation(line: 163, column: 11, scope: !537)
!540 = !DILocation(line: 163, column: 34, scope: !537)
!541 = !DILocation(line: 58, column: 37, scope: !81)
!542 = !DILocation(line: 164, column: 4, scope: !537)
!543 = !DILocation(line: 166, column: 13, scope: !454)
!544 = !DILocation(line: 166, column: 16, scope: !454)
!545 = !DILocation(line: 169, column: 17, scope: !455)
!546 = !DILocation(line: 169, column: 16, scope: !455)
!547 = !DILocation(line: 169, column: 10, scope: !455)
!548 = !DILocation(line: 63, column: 19, scope: !81)
!549 = !DILocation(line: 170, column: 17, scope: !455)
!550 = !DILocation(line: 170, column: 16, scope: !455)
!551 = !DILocation(line: 170, column: 10, scope: !455)
!552 = !DILocation(line: 63, column: 23, scope: !81)
!553 = !DILocation(line: 171, column: 17, scope: !455)
!554 = !DILocation(line: 171, column: 16, scope: !455)
!555 = !DILocation(line: 171, column: 10, scope: !455)
!556 = !DILocation(line: 63, column: 27, scope: !81)
!557 = !DILocation(line: 172, column: 28, scope: !455)
!558 = !DILocation(line: 172, column: 4, scope: !455)
!559 = !DILocation(line: 172, column: 23, scope: !455)
!560 = !DILocation(line: 173, column: 2, scope: !455)
!561 = !DILocation(line: 177, column: 1, scope: !81)
