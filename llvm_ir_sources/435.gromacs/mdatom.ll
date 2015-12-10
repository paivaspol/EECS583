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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !86, metadata !248), !dbg !249
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !87, metadata !248), !dbg !250
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !251
  %2 = load i32* %1, align 4, !dbg !253, !tbaa !254
  %3 = add nsw i32 %2, -1, !dbg !253
  store i32 %3, i32* %1, align 4, !dbg !253, !tbaa !254
  %4 = icmp sgt i32 %2, 0, !dbg !263
  br i1 %4, label %._crit_edge, label %5, !dbg !264

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !265
  br label %10, !dbg !264

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !266
  %7 = load i32* %6, align 4, !dbg !266, !tbaa !267
  %8 = icmp sle i32 %2, %7, !dbg !268
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !269
  %or.cond = or i1 %9, %8, !dbg !270
  br i1 %or.cond, label %15, label %10, !dbg !270

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !265
  %11 = trunc i32 %_c to i8, !dbg !271
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !272
  %13 = load i8** %12, align 8, !dbg !273, !tbaa !274
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !273
  store i8* %14, i8** %12, align 8, !dbg !273, !tbaa !274
  store i8 %11, i8* %13, align 1, !dbg !275, !tbaa !276
  br label %17, !dbg !277

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !278
  br label %17, !dbg !279

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !280
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !93, metadata !248), !dbg !281
  %1 = icmp sgt i32 %__signo, 32, !dbg !282
  br i1 %1, label %5, label %2, !dbg !283

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !284
  %4 = shl i32 1, %3, !dbg !285
  br label %5, !dbg !283

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !283
  ret i32 %6, !dbg !286
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_mdatoms* @atoms2md(%struct.__sFILE* %fp, %struct.t_atoms* nocapture %atoms, [3 x i32]* nocapture readonly %nFreeze, i32 %bBD, float %delta_t, float %fric, float* nocapture readonly %tau_t, i32 %bPert, i32 %bFree) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !207, metadata !248), !dbg !287
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !208, metadata !248), !dbg !288
  tail call void @llvm.dbg.value(metadata [3 x i32]* %nFreeze, i64 0, metadata !209, metadata !248), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %bBD, i64 0, metadata !210, metadata !248), !dbg !290
  tail call void @llvm.dbg.value(metadata float %delta_t, i64 0, metadata !211, metadata !248), !dbg !291
  tail call void @llvm.dbg.value(metadata float %fric, i64 0, metadata !212, metadata !248), !dbg !292
  tail call void @llvm.dbg.value(metadata float* %tau_t, i64 0, metadata !213, metadata !248), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %bPert, i64 0, metadata !214, metadata !248), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %bFree, i64 0, metadata !215, metadata !248), !dbg !295
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 50, i32 1, i32 176) #7, !dbg !296
  %2 = bitcast i8* %1 to %struct.t_mdatoms*, !dbg !296
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %2, i64 0, metadata !222, metadata !248), !dbg !297
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !298
  %4 = load i32* %3, align 4, !dbg !298, !tbaa !299
  %5 = getelementptr inbounds i8* %1, i64 4, !dbg !302
  %6 = bitcast i8* %5 to i32*, !dbg !302
  store i32 %4, i32* %6, align 4, !dbg !303, !tbaa !304
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 52, i32 %4, i32 4) #7, !dbg !307
  %8 = getelementptr inbounds i8* %1, i64 8, !dbg !307
  %9 = bitcast i8* %8 to float**, !dbg !307
  %10 = bitcast i8* %8 to i8**, !dbg !307
  store i8* %7, i8** %10, align 8, !dbg !307, !tbaa !308
  %11 = load i32* %6, align 4, !dbg !309, !tbaa !304
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %11, i32 4) #7, !dbg !309
  %13 = getelementptr inbounds i8* %1, i64 16, !dbg !309
  %14 = bitcast i8* %13 to float**, !dbg !309
  %15 = bitcast i8* %13 to i8**, !dbg !309
  store i8* %12, i8** %15, align 8, !dbg !309, !tbaa !310
  %16 = load i32* %6, align 4, !dbg !311, !tbaa !304
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %16, i32 4) #7, !dbg !311
  %18 = getelementptr inbounds i8* %1, i64 24, !dbg !311
  %19 = bitcast i8* %18 to float**, !dbg !311
  %20 = bitcast i8* %18 to i8**, !dbg !311
  store i8* %17, i8** %20, align 8, !dbg !311, !tbaa !312
  %21 = load i32* %6, align 4, !dbg !313, !tbaa !304
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %21, i32 4) #7, !dbg !313
  %23 = getelementptr inbounds i8* %1, i64 32, !dbg !313
  %24 = bitcast i8* %23 to float**, !dbg !313
  %25 = bitcast i8* %23 to i8**, !dbg !313
  store i8* %22, i8** %25, align 8, !dbg !313, !tbaa !314
  %26 = load i32* %6, align 4, !dbg !315, !tbaa !304
  %27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 56, i32 %26, i32 4) #7, !dbg !315
  %28 = getelementptr inbounds i8* %1, i64 40, !dbg !315
  %29 = bitcast i8* %28 to float**, !dbg !315
  %30 = bitcast i8* %28 to i8**, !dbg !315
  store i8* %27, i8** %30, align 8, !dbg !315, !tbaa !316
  %31 = load i32* %6, align 4, !dbg !317, !tbaa !304
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %31, i32 4) #7, !dbg !317
  %33 = getelementptr inbounds i8* %1, i64 48, !dbg !317
  %34 = bitcast i8* %33 to float**, !dbg !317
  %35 = bitcast i8* %33 to i8**, !dbg !317
  store i8* %32, i8** %35, align 8, !dbg !317, !tbaa !318
  %36 = load i32* %6, align 4, !dbg !319, !tbaa !304
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 58, i32 %36, i32 4) #7, !dbg !319
  %38 = getelementptr inbounds i8* %1, i64 56, !dbg !319
  %39 = bitcast i8* %38 to i8**, !dbg !319
  store i8* %37, i8** %39, align 8, !dbg !319, !tbaa !320
  %40 = load i32* %6, align 4, !dbg !321, !tbaa !304
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 59, i32 %40, i32 4) #7, !dbg !321
  %42 = getelementptr inbounds i8* %1, i64 72, !dbg !321
  %43 = bitcast i8* %42 to i32**, !dbg !321
  %44 = bitcast i8* %42 to i8**, !dbg !321
  store i8* %41, i8** %44, align 8, !dbg !321, !tbaa !322
  %45 = load i32* %6, align 4, !dbg !323, !tbaa !304
  %46 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 60, i32 %45, i32 4) #7, !dbg !323
  %47 = getelementptr inbounds i8* %1, i64 80, !dbg !323
  %48 = bitcast i8* %47 to i32**, !dbg !323
  %49 = bitcast i8* %47 to i8**, !dbg !323
  store i8* %46, i8** %49, align 8, !dbg !323, !tbaa !324
  %50 = load i32* %6, align 4, !dbg !325, !tbaa !304
  %51 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %50, i32 4) #7, !dbg !325
  %52 = getelementptr inbounds i8* %1, i64 88, !dbg !325
  %53 = bitcast i8* %52 to i32**, !dbg !325
  %54 = bitcast i8* %52 to i8**, !dbg !325
  store i8* %51, i8** %54, align 8, !dbg !325, !tbaa !326
  %55 = load i32* %6, align 4, !dbg !327, !tbaa !304
  %56 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %55, i32 2) #7, !dbg !327
  %57 = getelementptr inbounds i8* %1, i64 96, !dbg !327
  %58 = bitcast i8* %57 to i16**, !dbg !327
  %59 = bitcast i8* %57 to i8**, !dbg !327
  store i8* %56, i8** %59, align 8, !dbg !327, !tbaa !328
  %60 = load i32* %6, align 4, !dbg !329, !tbaa !304
  %61 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %60, i32 2) #7, !dbg !329
  %62 = getelementptr inbounds i8* %1, i64 104, !dbg !329
  %63 = bitcast i8* %62 to i16**, !dbg !329
  %64 = bitcast i8* %62 to i8**, !dbg !329
  store i8* %61, i8** %64, align 8, !dbg !329, !tbaa !330
  %65 = load i32* %6, align 4, !dbg !331, !tbaa !304
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %65, i32 2) #7, !dbg !331
  %67 = getelementptr inbounds i8* %1, i64 112, !dbg !331
  %68 = bitcast i8* %67 to i16**, !dbg !331
  %69 = bitcast i8* %67 to i8**, !dbg !331
  store i8* %66, i8** %69, align 8, !dbg !331, !tbaa !332
  %70 = load i32* %6, align 4, !dbg !333, !tbaa !304
  %71 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 65, i32 %70, i32 2) #7, !dbg !333
  %72 = getelementptr inbounds i8* %1, i64 120, !dbg !333
  %73 = bitcast i8* %72 to i16**, !dbg !333
  %74 = bitcast i8* %72 to i8**, !dbg !333
  store i8* %71, i8** %74, align 8, !dbg !333, !tbaa !334
  %75 = load i32* %6, align 4, !dbg !335, !tbaa !304
  %76 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %75, i32 2) #7, !dbg !335
  %77 = getelementptr inbounds i8* %1, i64 128, !dbg !335
  %78 = bitcast i8* %77 to i16**, !dbg !335
  %79 = bitcast i8* %77 to i8**, !dbg !335
  store i8* %76, i8** %79, align 8, !dbg !335, !tbaa !336
  %80 = load i32* %6, align 4, !dbg !337, !tbaa !304
  %81 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %80, i32 2) #7, !dbg !337
  %82 = getelementptr inbounds i8* %1, i64 136, !dbg !337
  %83 = bitcast i8* %82 to i16**, !dbg !337
  %84 = bitcast i8* %82 to i8**, !dbg !337
  store i8* %81, i8** %84, align 8, !dbg !337, !tbaa !338
  %85 = load i32* %6, align 4, !dbg !339, !tbaa !304
  %86 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %85, i32 2) #7, !dbg !339
  %87 = getelementptr inbounds i8* %1, i64 144, !dbg !339
  %88 = bitcast i8* %87 to i16**, !dbg !339
  %89 = bitcast i8* %87 to i8**, !dbg !339
  store i8* %86, i8** %89, align 8, !dbg !339, !tbaa !340
  %90 = load i32* %6, align 4, !dbg !341, !tbaa !304
  %91 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %90, i32 2) #7, !dbg !341
  %92 = getelementptr inbounds i8* %1, i64 168, !dbg !341
  %93 = bitcast i8* %92 to i16**, !dbg !341
  %94 = bitcast i8* %92 to i8**, !dbg !341
  store i8* %91, i8** %94, align 8, !dbg !341, !tbaa !342
  %95 = load i32* %6, align 4, !dbg !343, !tbaa !304
  %96 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 70, i32 %95, i32 4) #7, !dbg !343
  %97 = getelementptr inbounds i8* %1, i64 64, !dbg !343
  %98 = bitcast i8* %97 to i32**, !dbg !343
  %99 = bitcast i8* %97 to i8**, !dbg !343
  store i8* %96, i8** %99, align 8, !dbg !343, !tbaa !344
  %100 = load i32* %6, align 4, !dbg !345, !tbaa !304
  %101 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %100, i32 2) #7, !dbg !345
  %102 = getelementptr inbounds i8* %1, i64 152, !dbg !345
  %103 = bitcast i8* %102 to i16**, !dbg !345
  %104 = bitcast i8* %102 to i8**, !dbg !345
  store i8* %101, i8** %104, align 8, !dbg !345, !tbaa !346
  %105 = load i32* %6, align 4, !dbg !347, !tbaa !304
  %106 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 73, i32 %105, i32 2) #7, !dbg !347
  %107 = getelementptr inbounds i8* %1, i64 160, !dbg !347
  %108 = bitcast i8* %107 to i8**, !dbg !347
  store i8* %106, i8** %108, align 8, !dbg !347, !tbaa !348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !217, metadata !248), !dbg !349
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !220, metadata !248), !dbg !350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !248), !dbg !351
  %109 = load i32* %6, align 4, !dbg !352, !tbaa !304
  %110 = icmp sgt i32 %109, 0, !dbg !355
  %111 = bitcast i8* %106 to i16*
  br i1 %110, label %.lr.ph, label %._crit_edge, !dbg !356

.lr.ph:                                           ; preds = %0
  %112 = icmp eq i32 %bBD, 0, !dbg !357
  %113 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !360
  %114 = icmp eq i32 %bPert, 0, !dbg !362
  %115 = fmul float %delta_t, %fric, !dbg !364
  br label %116, !dbg !356

; <label>:116                                     ; preds = %.lr.ph, %296
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %296 ]
  %tm.06 = phi double [ 0.000000e+00, %.lr.ph ], [ %tm.1, %296 ]
  %np.05 = phi i32 [ 0, %.lr.ph ], [ %np.1, %296 ]
  br i1 %112, label %143, label %117, !dbg !368

; <label>:117                                     ; preds = %116
  %fabsf4 = tail call float @fabsf(float %fric) #4, !dbg !369
  %118 = fpext float %fabsf4 to double, !dbg !369
  %119 = fcmp ogt double %118, 1.200000e-38, !dbg !370
  br i1 %119, label %120, label %125, !dbg !371

; <label>:120                                     ; preds = %117
  %121 = load float** %9, align 8, !dbg !372, !tbaa !308
  %122 = getelementptr inbounds float* %121, i64 %indvars.iv, !dbg !373
  store float %115, float* %122, align 4, !dbg !374, !tbaa !375
  %123 = load float** %14, align 8, !dbg !376, !tbaa !310
  %124 = getelementptr inbounds float* %123, i64 %indvars.iv, !dbg !377
  store float %115, float* %124, align 4, !dbg !378, !tbaa !375
  %.pre = load %struct.t_atom** %113, align 8, !dbg !379, !tbaa !380
  br label %157, !dbg !381

; <label>:125                                     ; preds = %117
  %126 = load %struct.t_atom** %113, align 8, !dbg !382, !tbaa !380
  %127 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 8, i64 0, !dbg !384
  %128 = load i8* %127, align 1, !dbg !384, !tbaa !276
  %129 = zext i8 %128 to i64, !dbg !385
  %130 = getelementptr inbounds float* %tau_t, i64 %129, !dbg !385
  %131 = load float* %130, align 4, !dbg !385, !tbaa !375
  %132 = fdiv float %delta_t, %131, !dbg !386
  tail call void @llvm.dbg.value(metadata float %132, i64 0, metadata !219, metadata !248), !dbg !387
  %133 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 0, !dbg !388
  %134 = load float* %133, align 4, !dbg !388, !tbaa !389
  %135 = fmul float %132, %134, !dbg !391
  %136 = load float** %9, align 8, !dbg !392, !tbaa !308
  %137 = getelementptr inbounds float* %136, i64 %indvars.iv, !dbg !393
  store float %135, float* %137, align 4, !dbg !394, !tbaa !375
  %138 = getelementptr inbounds %struct.t_atom* %126, i64 %indvars.iv, i32 2, !dbg !395
  %139 = load float* %138, align 4, !dbg !395, !tbaa !396
  %140 = fmul float %132, %139, !dbg !397
  %141 = load float** %14, align 8, !dbg !398, !tbaa !310
  %142 = getelementptr inbounds float* %141, i64 %indvars.iv, !dbg !399
  store float %140, float* %142, align 4, !dbg !400, !tbaa !375
  br label %157

; <label>:143                                     ; preds = %116
  %144 = load %struct.t_atom** %113, align 8, !dbg !360, !tbaa !380
  %145 = getelementptr inbounds %struct.t_atom* %144, i64 %indvars.iv, i32 0, !dbg !401
  %146 = bitcast float* %145 to i32*, !dbg !401
  %147 = load i32* %146, align 4, !dbg !401, !tbaa !389
  %148 = load float** %9, align 8, !dbg !402, !tbaa !308
  %149 = getelementptr inbounds float* %148, i64 %indvars.iv, !dbg !403
  %150 = bitcast float* %149 to i32*, !dbg !404
  store i32 %147, i32* %150, align 4, !dbg !404, !tbaa !375
  %151 = getelementptr inbounds %struct.t_atom* %144, i64 %indvars.iv, i32 2, !dbg !405
  %152 = bitcast float* %151 to i32*, !dbg !405
  %153 = load i32* %152, align 4, !dbg !405, !tbaa !396
  %154 = load float** %14, align 8, !dbg !406, !tbaa !310
  %155 = getelementptr inbounds float* %154, i64 %indvars.iv, !dbg !407
  %156 = bitcast float* %155 to i32*, !dbg !408
  store i32 %153, i32* %156, align 4, !dbg !408, !tbaa !375
  br label %157

; <label>:157                                     ; preds = %120, %125, %143
  %158 = phi %struct.t_atom* [ %.pre, %120 ], [ %126, %125 ], [ %144, %143 ]
  %159 = phi float* [ %121, %120 ], [ %136, %125 ], [ %148, %143 ]
  %160 = getelementptr inbounds float* %159, i64 %indvars.iv, !dbg !409
  %161 = bitcast float* %160 to i32*, !dbg !409
  %162 = load i32* %161, align 4, !dbg !409, !tbaa !375
  %163 = load float** %19, align 8, !dbg !410, !tbaa !312
  %164 = getelementptr inbounds float* %163, i64 %indvars.iv, !dbg !411
  %165 = bitcast float* %164 to i32*, !dbg !412
  store i32 %162, i32* %165, align 4, !dbg !412, !tbaa !375
  %166 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 1, !dbg !413
  %167 = bitcast float* %166 to i32*, !dbg !413
  %168 = load i32* %167, align 4, !dbg !413, !tbaa !414
  %169 = load float** %29, align 8, !dbg !415, !tbaa !316
  %170 = getelementptr inbounds float* %169, i64 %indvars.iv, !dbg !416
  %171 = bitcast float* %170 to i32*, !dbg !417
  store i32 %168, i32* %171, align 4, !dbg !417, !tbaa !375
  %172 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 3, !dbg !418
  %173 = bitcast float* %172 to i32*, !dbg !418
  %174 = load i32* %173, align 4, !dbg !418, !tbaa !419
  %175 = load float** %34, align 8, !dbg !420, !tbaa !318
  %176 = getelementptr inbounds float* %175, i64 %indvars.iv, !dbg !421
  %177 = bitcast float* %176 to i32*, !dbg !422
  store i32 %174, i32* %177, align 4, !dbg !422, !tbaa !375
  %178 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 7, !dbg !423
  %179 = load i32* %178, align 4, !dbg !423, !tbaa !424
  %180 = load i32** %43, align 8, !dbg !425, !tbaa !322
  %181 = getelementptr inbounds i32* %180, i64 %indvars.iv, !dbg !426
  store i32 %179, i32* %181, align 4, !dbg !427, !tbaa !428
  %182 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 4, !dbg !429
  %183 = load i16* %182, align 2, !dbg !429, !tbaa !430
  %184 = zext i16 %183 to i32, !dbg !431
  %185 = load i32** %48, align 8, !dbg !432, !tbaa !324
  %186 = getelementptr inbounds i32* %185, i64 %indvars.iv, !dbg !433
  store i32 %184, i32* %186, align 4, !dbg !434, !tbaa !428
  %187 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 5, !dbg !435
  %188 = load i16* %187, align 2, !dbg !435, !tbaa !436
  %189 = zext i16 %188 to i32, !dbg !437
  %190 = load i32** %53, align 8, !dbg !438, !tbaa !326
  %191 = getelementptr inbounds i32* %190, i64 %indvars.iv, !dbg !439
  store i32 %189, i32* %191, align 4, !dbg !440, !tbaa !428
  %192 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 6, !dbg !441
  %193 = load i32* %192, align 4, !dbg !441, !tbaa !442
  %194 = trunc i32 %193 to i16, !dbg !443
  %195 = load i16** %58, align 8, !dbg !444, !tbaa !328
  %196 = getelementptr inbounds i16* %195, i64 %indvars.iv, !dbg !445
  store i16 %194, i16* %196, align 2, !dbg !446, !tbaa !447
  %197 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 0, !dbg !448
  %198 = load i8* %197, align 1, !dbg !448, !tbaa !276
  %199 = zext i8 %198 to i16, !dbg !448
  %200 = load i16** %63, align 8, !dbg !449, !tbaa !330
  %201 = getelementptr inbounds i16* %200, i64 %indvars.iv, !dbg !450
  store i16 %199, i16* %201, align 2, !dbg !451, !tbaa !447
  %202 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 1, !dbg !452
  %203 = load i8* %202, align 1, !dbg !452, !tbaa !276
  %204 = zext i8 %203 to i16, !dbg !452
  %205 = load i16** %68, align 8, !dbg !453, !tbaa !332
  %206 = getelementptr inbounds i16* %205, i64 %indvars.iv, !dbg !454
  store i16 %204, i16* %206, align 2, !dbg !455, !tbaa !447
  %207 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 2, !dbg !456
  %208 = load i8* %207, align 1, !dbg !456, !tbaa !276
  %209 = zext i8 %208 to i16, !dbg !456
  %210 = load i16** %73, align 8, !dbg !457, !tbaa !334
  %211 = getelementptr inbounds i16* %210, i64 %indvars.iv, !dbg !458
  store i16 %209, i16* %211, align 2, !dbg !459, !tbaa !447
  %212 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 3, !dbg !460
  %213 = load i8* %212, align 1, !dbg !460, !tbaa !276
  %214 = zext i8 %213 to i16, !dbg !460
  %215 = load i16** %78, align 8, !dbg !461, !tbaa !336
  %216 = getelementptr inbounds i16* %215, i64 %indvars.iv, !dbg !462
  store i16 %214, i16* %216, align 2, !dbg !463, !tbaa !447
  %217 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 7, !dbg !464
  %218 = load i8* %217, align 1, !dbg !464, !tbaa !276
  %219 = zext i8 %218 to i16, !dbg !464
  %220 = load i16** %83, align 8, !dbg !465, !tbaa !338
  %221 = getelementptr inbounds i16* %220, i64 %indvars.iv, !dbg !466
  store i16 %219, i16* %221, align 2, !dbg !467, !tbaa !447
  %222 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 6, !dbg !468
  %223 = load i8* %222, align 1, !dbg !468, !tbaa !276
  %224 = zext i8 %223 to i16, !dbg !468
  %225 = load i16** %88, align 8, !dbg !469, !tbaa !340
  %226 = getelementptr inbounds i16* %225, i64 %indvars.iv, !dbg !470
  store i16 %224, i16* %226, align 2, !dbg !471, !tbaa !447
  %227 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 8, !dbg !472
  %228 = load i8* %227, align 1, !dbg !472, !tbaa !276
  %229 = zext i8 %228 to i16, !dbg !472
  %230 = load i16** %93, align 8, !dbg !473, !tbaa !342
  %231 = getelementptr inbounds i16* %230, i64 %indvars.iv, !dbg !474
  store i16 %229, i16* %231, align 2, !dbg !475, !tbaa !447
  %232 = load float* %160, align 4, !dbg !476, !tbaa !375
  %fabsf = tail call float @fabsf(float %232) #4, !dbg !478
  %233 = fpext float %fabsf to double, !dbg !478
  %234 = fcmp ogt double %233, 1.200000e-38, !dbg !479
  br i1 %234, label %235, label %267, !dbg !480

; <label>:235                                     ; preds = %157
  %236 = load float** %19, align 8, !dbg !481, !tbaa !312
  %237 = getelementptr inbounds float* %236, i64 %indvars.iv, !dbg !483
  %238 = load float* %237, align 4, !dbg !483, !tbaa !375
  %239 = fpext float %238 to double, !dbg !483
  %240 = fadd double %tm.06, %239, !dbg !484
  tail call void @llvm.dbg.value(metadata double %240, i64 0, metadata !220, metadata !248), !dbg !350
  %241 = load i16* %216, align 2, !dbg !485, !tbaa !447
  %242 = zext i16 %241 to i64, !dbg !486
  %243 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 0, !dbg !486
  %244 = load i32* %243, align 4, !dbg !486, !tbaa !428
  %245 = icmp eq i32 %244, 0, !dbg !486
  br i1 %245, label %257, label %246, !dbg !488

; <label>:246                                     ; preds = %235
  %247 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 1, !dbg !489
  %248 = load i32* %247, align 4, !dbg !489, !tbaa !428
  %249 = icmp eq i32 %248, 0, !dbg !489
  br i1 %249, label %257, label %250, !dbg !490

; <label>:250                                     ; preds = %246
  %251 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %242, i64 2, !dbg !491
  %252 = load i32* %251, align 4, !dbg !491, !tbaa !428
  %253 = icmp eq i32 %252, 0, !dbg !491
  br i1 %253, label %257, label %254, !dbg !492

; <label>:254                                     ; preds = %250
  %255 = load float** %24, align 8, !dbg !493, !tbaa !314
  %256 = getelementptr inbounds float* %255, i64 %indvars.iv, !dbg !494
  store float 0x39B4484C00000000, float* %256, align 4, !dbg !495, !tbaa !375
  br label %267, !dbg !494

; <label>:257                                     ; preds = %250, %246, %235
  %fabsf3 = tail call float @fabsf(float %238) #4, !dbg !496
  %258 = fpext float %fabsf3 to double, !dbg !496
  %259 = fcmp olt double %258, 1.200000e-38, !dbg !498
  br i1 %259, label %260, label %263, !dbg !499

; <label>:260                                     ; preds = %257
  %261 = load float** %24, align 8, !dbg !500, !tbaa !314
  %262 = getelementptr inbounds float* %261, i64 %indvars.iv, !dbg !501
  store float 0.000000e+00, float* %262, align 4, !dbg !502, !tbaa !375
  br label %267, !dbg !501

; <label>:263                                     ; preds = %257
  %264 = fdiv float 1.000000e+00, %238, !dbg !503
  %265 = load float** %24, align 8, !dbg !504, !tbaa !314
  %266 = getelementptr inbounds float* %265, i64 %indvars.iv, !dbg !505
  store float %264, float* %266, align 4, !dbg !506, !tbaa !375
  br label %267

; <label>:267                                     ; preds = %254, %263, %260, %157
  %tm.1 = phi double [ %240, %254 ], [ %240, %260 ], [ %240, %263 ], [ %tm.06, %157 ]
  br i1 %114, label %296, label %268, !dbg !507

; <label>:268                                     ; preds = %267
  %269 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 2, !dbg !508
  %270 = load float* %269, align 4, !dbg !508, !tbaa !396
  %271 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 0, !dbg !508
  %272 = load float* %271, align 4, !dbg !508, !tbaa !389
  %273 = fsub float %270, %272, !dbg !508
  %fabsf1 = tail call float @fabsf(float %273) #4, !dbg !508
  %274 = fpext float %fabsf1 to double, !dbg !508
  %275 = fcmp ogt double %274, 1.200000e-38, !dbg !508
  br i1 %275, label %291, label %276, !dbg !508

; <label>:276                                     ; preds = %268
  %277 = load float* %172, align 4, !dbg !508, !tbaa !419
  %278 = load float* %166, align 4, !dbg !508, !tbaa !414
  %279 = fsub float %277, %278, !dbg !508
  %fabsf2 = tail call float @fabsf(float %279) #4, !dbg !508
  %280 = fpext float %fabsf2 to double, !dbg !508
  %281 = fcmp ogt double %280, 1.200000e-38, !dbg !508
  br i1 %281, label %291, label %282, !dbg !508

; <label>:282                                     ; preds = %276
  %283 = load i16* %187, align 2, !dbg !508, !tbaa !436
  %284 = zext i16 %283 to i32, !dbg !508
  %285 = load i16* %182, align 2, !dbg !508, !tbaa !430
  %286 = zext i16 %285 to i32, !dbg !508
  %287 = sub nsw i32 %284, %286, !dbg !508
  %288 = sitofp i32 %287 to double, !dbg !508
  %289 = tail call double @fabs(double %288) #8, !dbg !508
  %290 = fcmp ogt double %289, 1.200000e-38, !dbg !508
  br label %291, !dbg !508

; <label>:291                                     ; preds = %282, %276, %268
  %292 = phi i1 [ true, %276 ], [ true, %268 ], [ %290, %282 ]
  %293 = zext i1 %292 to i32, !dbg !508
  %294 = load i32** %98, align 8, !dbg !510, !tbaa !344
  %295 = getelementptr inbounds i32* %294, i64 %indvars.iv, !dbg !511
  store i32 %293, i32* %295, align 4, !dbg !512, !tbaa !428
  %np.0. = add nsw i32 %293, %np.05, !dbg !513
  br label %296, !dbg !513

; <label>:296                                     ; preds = %291, %267
  %np.1 = phi i32 [ %np.05, %267 ], [ %np.0., %291 ]
  %297 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 4, !dbg !514
  %298 = load i8* %297, align 1, !dbg !514, !tbaa !276
  %299 = zext i8 %298 to i16, !dbg !514
  %300 = load i16** %103, align 8, !dbg !515, !tbaa !346
  %301 = getelementptr inbounds i16* %300, i64 %indvars.iv, !dbg !516
  store i16 %299, i16* %301, align 2, !dbg !517, !tbaa !447
  %302 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv, i32 8, i64 5, !dbg !518
  %303 = load i8* %302, align 1, !dbg !518, !tbaa !276
  %304 = zext i8 %303 to i16, !dbg !518
  %305 = getelementptr inbounds i16* %111, i64 %indvars.iv, !dbg !519
  store i16 %304, i16* %305, align 2, !dbg !520, !tbaa !447
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !356
  %306 = load i32* %6, align 4, !dbg !352, !tbaa !304
  %307 = sext i32 %306 to i64, !dbg !355
  %308 = icmp slt i64 %indvars.iv.next, %307, !dbg !355
  br i1 %308, label %116, label %._crit_edge, !dbg !356

._crit_edge:                                      ; preds = %296, %0
  %tm.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %tm.1, %296 ]
  %np.0.lcssa = phi i32 [ 0, %0 ], [ %np.1, %296 ]
  %309 = fptrunc double %tm.0.lcssa to float, !dbg !521
  %310 = bitcast i8* %1 to float*, !dbg !522
  store float %309, float* %310, align 4, !dbg !523, !tbaa !524
  %311 = icmp eq i32 %bFree, 0, !dbg !525
  br i1 %311, label %316, label %312, !dbg !527

; <label>:312                                     ; preds = %._crit_edge
  %313 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !528
  %314 = bitcast %struct.t_atom** %313 to i8**, !dbg !528
  %315 = load i8** %314, align 8, !dbg !528, !tbaa !380
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 133, i8* %315) #7, !dbg !528
  store %struct.t_atom* null, %struct.t_atom** %313, align 8, !dbg !530, !tbaa !380
  br label %316, !dbg !531

; <label>:316                                     ; preds = %._crit_edge, %312
  %317 = icmp eq %struct.__sFILE* %fp, null, !dbg !532
  br i1 %317, label %320, label %318, !dbg !534

; <label>:318                                     ; preds = %316
  %319 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), i32 %np.0.lcssa) #7, !dbg !535
  br label %320, !dbg !535

; <label>:320                                     ; preds = %316, %318
  ret %struct.t_mdatoms* %2, !dbg !536
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
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !227, metadata !248), !dbg !537
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !228, metadata !248), !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %bFree, i64 0, metadata !229, metadata !248), !dbg !539
  %1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !540
  %2 = load i32* %1, align 4, !dbg !540, !tbaa !304
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 147, i32 %2, i32 40) #7, !dbg !540
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !540
  %5 = bitcast %struct.t_atom** %4 to i8**, !dbg !540
  store i8* %3, i8** %5, align 8, !dbg !540, !tbaa !380
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !248), !dbg !541
  %6 = load i32* %1, align 4, !dbg !542, !tbaa !304
  %7 = icmp sgt i32 %6, 0, !dbg !545
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !546

.lr.ph:                                           ; preds = %0
  %8 = bitcast i8* %3 to %struct.t_atom*
  %9 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !547
  %10 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !549
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10, !dbg !550
  %12 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !551
  %13 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !552
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14, !dbg !553
  %15 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15, !dbg !554
  %16 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !555
  %17 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17, !dbg !556
  %18 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19, !dbg !557
  %19 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !558
  %20 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22, !dbg !559
  %21 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20, !dbg !560
  %22 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21, !dbg !561
  br label %23, !dbg !546

; <label>:23                                      ; preds = %._crit_edge2, %.lr.ph
  %24 = phi %struct.t_atom* [ %8, %.lr.ph ], [ %.pre, %._crit_edge2 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %25 = load float** %9, align 8, !dbg !547, !tbaa !312
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv, !dbg !562
  %27 = bitcast float* %26 to i32*, !dbg !562
  %28 = load i32* %27, align 4, !dbg !562, !tbaa !375
  %29 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, !dbg !563
  %30 = bitcast %struct.t_atom* %29 to i32*, !dbg !564
  store i32 %28, i32* %30, align 4, !dbg !564, !tbaa !389
  %31 = load float** %10, align 8, !dbg !549, !tbaa !320
  %32 = getelementptr inbounds float* %31, i64 %indvars.iv, !dbg !565
  %33 = bitcast float* %32 to i32*, !dbg !565
  %34 = load i32* %33, align 4, !dbg !565, !tbaa !375
  %35 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 1, !dbg !566
  %36 = bitcast float* %35 to i32*, !dbg !567
  store i32 %34, i32* %36, align 4, !dbg !567, !tbaa !414
  %37 = load i32** %11, align 8, !dbg !550, !tbaa !322
  %38 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !568
  %39 = load i32* %38, align 4, !dbg !568, !tbaa !428
  %40 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 7, !dbg !569
  store i32 %39, i32* %40, align 4, !dbg !570, !tbaa !424
  %41 = load i32** %12, align 8, !dbg !551, !tbaa !324
  %42 = getelementptr inbounds i32* %41, i64 %indvars.iv, !dbg !571
  %43 = load i32* %42, align 4, !dbg !571, !tbaa !428
  %44 = trunc i32 %43 to i16, !dbg !571
  %45 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 4, !dbg !572
  store i16 %44, i16* %45, align 2, !dbg !573, !tbaa !430
  %46 = load i16** %13, align 8, !dbg !552, !tbaa !328
  %47 = getelementptr inbounds i16* %46, i64 %indvars.iv, !dbg !574
  %48 = load i16* %47, align 2, !dbg !574, !tbaa !447
  %49 = zext i16 %48 to i32, !dbg !574
  %50 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 6, !dbg !575
  store i32 %49, i32* %50, align 4, !dbg !576, !tbaa !442
  %51 = load i16** %14, align 8, !dbg !553, !tbaa !330
  %52 = getelementptr inbounds i16* %51, i64 %indvars.iv, !dbg !577
  %53 = load i16* %52, align 2, !dbg !577, !tbaa !447
  %54 = trunc i16 %53 to i8, !dbg !577
  %55 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 8, i64 0, !dbg !578
  store i8 %54, i8* %55, align 1, !dbg !579, !tbaa !276
  %56 = load i16** %15, align 8, !dbg !554, !tbaa !332
  %57 = getelementptr inbounds i16* %56, i64 %indvars.iv, !dbg !580
  %58 = load i16* %57, align 2, !dbg !580, !tbaa !447
  %59 = trunc i16 %58 to i8, !dbg !580
  %60 = load %struct.t_atom** %4, align 8, !dbg !581, !tbaa !380
  %61 = getelementptr inbounds %struct.t_atom* %60, i64 %indvars.iv, i32 8, i64 1, !dbg !582
  store i8 %59, i8* %61, align 1, !dbg !583, !tbaa !276
  %62 = load i16** %16, align 8, !dbg !555, !tbaa !334
  %63 = getelementptr inbounds i16* %62, i64 %indvars.iv, !dbg !584
  %64 = load i16* %63, align 2, !dbg !584, !tbaa !447
  %65 = trunc i16 %64 to i8, !dbg !584
  %66 = load %struct.t_atom** %4, align 8, !dbg !585, !tbaa !380
  %67 = getelementptr inbounds %struct.t_atom* %66, i64 %indvars.iv, i32 8, i64 2, !dbg !586
  store i8 %65, i8* %67, align 1, !dbg !587, !tbaa !276
  %68 = load i16** %17, align 8, !dbg !556, !tbaa !336
  %69 = getelementptr inbounds i16* %68, i64 %indvars.iv, !dbg !588
  %70 = load i16* %69, align 2, !dbg !588, !tbaa !447
  %71 = trunc i16 %70 to i8, !dbg !588
  %72 = load %struct.t_atom** %4, align 8, !dbg !589, !tbaa !380
  %73 = getelementptr inbounds %struct.t_atom* %72, i64 %indvars.iv, i32 8, i64 3, !dbg !590
  store i8 %71, i8* %73, align 1, !dbg !591, !tbaa !276
  %74 = load i16** %18, align 8, !dbg !557, !tbaa !340
  %75 = getelementptr inbounds i16* %74, i64 %indvars.iv, !dbg !592
  %76 = load i16* %75, align 2, !dbg !592, !tbaa !447
  %77 = trunc i16 %76 to i8, !dbg !592
  %78 = load %struct.t_atom** %4, align 8, !dbg !593, !tbaa !380
  %79 = getelementptr inbounds %struct.t_atom* %78, i64 %indvars.iv, i32 8, i64 6, !dbg !594
  store i8 %77, i8* %79, align 1, !dbg !595, !tbaa !276
  %80 = load i16** %19, align 8, !dbg !558, !tbaa !338
  %81 = getelementptr inbounds i16* %80, i64 %indvars.iv, !dbg !596
  %82 = load i16* %81, align 2, !dbg !596, !tbaa !447
  %83 = trunc i16 %82 to i8, !dbg !596
  %84 = load %struct.t_atom** %4, align 8, !dbg !597, !tbaa !380
  %85 = getelementptr inbounds %struct.t_atom* %84, i64 %indvars.iv, i32 8, i64 7, !dbg !598
  store i8 %83, i8* %85, align 1, !dbg !599, !tbaa !276
  %86 = load i16** %20, align 8, !dbg !559, !tbaa !342
  %87 = getelementptr inbounds i16* %86, i64 %indvars.iv, !dbg !600
  %88 = load i16* %87, align 2, !dbg !600, !tbaa !447
  %89 = trunc i16 %88 to i8, !dbg !600
  %90 = load %struct.t_atom** %4, align 8, !dbg !601, !tbaa !380
  %91 = getelementptr inbounds %struct.t_atom* %90, i64 %indvars.iv, i32 8, i64 8, !dbg !602
  store i8 %89, i8* %91, align 1, !dbg !603, !tbaa !276
  %92 = load i16** %21, align 8, !dbg !560, !tbaa !346
  %93 = getelementptr inbounds i16* %92, i64 %indvars.iv, !dbg !604
  %94 = load i16* %93, align 2, !dbg !604, !tbaa !447
  %95 = trunc i16 %94 to i8, !dbg !604
  %96 = load %struct.t_atom** %4, align 8, !dbg !605, !tbaa !380
  %97 = getelementptr inbounds %struct.t_atom* %96, i64 %indvars.iv, i32 8, i64 4, !dbg !606
  store i8 %95, i8* %97, align 1, !dbg !607, !tbaa !276
  %98 = load i16** %22, align 8, !dbg !561, !tbaa !348
  %99 = getelementptr inbounds i16* %98, i64 %indvars.iv, !dbg !608
  %100 = load i16* %99, align 2, !dbg !608, !tbaa !447
  %101 = trunc i16 %100 to i8, !dbg !608
  %102 = load %struct.t_atom** %4, align 8, !dbg !609, !tbaa !380
  %103 = getelementptr inbounds %struct.t_atom* %102, i64 %indvars.iv, i32 8, i64 5, !dbg !610
  store i8 %101, i8* %103, align 1, !dbg !611, !tbaa !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !546
  %104 = load i32* %1, align 4, !dbg !542, !tbaa !304
  %105 = sext i32 %104 to i64, !dbg !545
  %106 = icmp slt i64 %indvars.iv.next, %105, !dbg !545
  br i1 %106, label %._crit_edge2, label %._crit_edge, !dbg !546

._crit_edge2:                                     ; preds = %23
  %.pre = load %struct.t_atom** %4, align 8, !dbg !612, !tbaa !380
  br label %23, !dbg !546

._crit_edge:                                      ; preds = %23, %0
  %107 = icmp eq i32 %bFree, 0, !dbg !613
  br i1 %107, label %169, label %108, !dbg !615

; <label>:108                                     ; preds = %._crit_edge
  %109 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2, !dbg !616
  %110 = bitcast float** %109 to i8**, !dbg !616
  %111 = load i8** %110, align 8, !dbg !616, !tbaa !308
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %111) #7, !dbg !616
  %112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3, !dbg !618
  %113 = bitcast float** %112 to i8**, !dbg !618
  %114 = load i8** %113, align 8, !dbg !618, !tbaa !310
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %114) #7, !dbg !618
  %115 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !619
  %116 = bitcast float** %115 to i8**, !dbg !619
  %117 = load i8** %116, align 8, !dbg !619, !tbaa !312
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %117) #7, !dbg !619
  %118 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !620
  %119 = bitcast float** %118 to i8**, !dbg !620
  %120 = load i8** %119, align 8, !dbg !620, !tbaa !314
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %120) #7, !dbg !620
  %121 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !621
  %122 = bitcast float** %121 to i8**, !dbg !621
  %123 = load i8** %122, align 8, !dbg !621, !tbaa !316
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %123) #7, !dbg !621
  %124 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !622
  %125 = bitcast float** %124 to i8**, !dbg !622
  %126 = load i8** %125, align 8, !dbg !622, !tbaa !318
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 172, i8* %126) #7, !dbg !622
  %127 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !623
  %128 = bitcast float** %127 to i8**, !dbg !623
  %129 = load i8** %128, align 8, !dbg !623, !tbaa !320
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %129) #7, !dbg !623
  %130 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10, !dbg !624
  %131 = bitcast i32** %130 to i8**, !dbg !624
  %132 = load i8** %131, align 8, !dbg !624, !tbaa !322
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %132) #7, !dbg !624
  %133 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !625
  %134 = bitcast i32** %133 to i8**, !dbg !625
  %135 = load i8** %134, align 8, !dbg !625, !tbaa !324
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 175, i8* %135) #7, !dbg !625
  %136 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12, !dbg !626
  %137 = bitcast i32** %136 to i8**, !dbg !626
  %138 = load i8** %137, align 8, !dbg !626, !tbaa !326
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 176, i8* %138) #7, !dbg !626
  %139 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !627
  %140 = bitcast i16** %139 to i8**, !dbg !627
  %141 = load i8** %140, align 8, !dbg !627, !tbaa !328
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 177, i8* %141) #7, !dbg !627
  %142 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14, !dbg !628
  %143 = bitcast i16** %142 to i8**, !dbg !628
  %144 = load i8** %143, align 8, !dbg !628, !tbaa !330
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 178, i8* %144) #7, !dbg !628
  %145 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15, !dbg !629
  %146 = bitcast i16** %145 to i8**, !dbg !629
  %147 = load i8** %146, align 8, !dbg !629, !tbaa !332
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 179, i8* %147) #7, !dbg !629
  %148 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !630
  %149 = bitcast i16** %148 to i8**, !dbg !630
  %150 = load i8** %149, align 8, !dbg !630, !tbaa !334
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %150) #7, !dbg !630
  %151 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17, !dbg !631
  %152 = bitcast i16** %151 to i8**, !dbg !631
  %153 = load i8** %152, align 8, !dbg !631, !tbaa !336
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 181, i8* %153) #7, !dbg !631
  %154 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19, !dbg !632
  %155 = bitcast i16** %154 to i8**, !dbg !632
  %156 = load i8** %155, align 8, !dbg !632, !tbaa !340
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 182, i8* %156) #7, !dbg !632
  %157 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !633
  %158 = bitcast i16** %157 to i8**, !dbg !633
  %159 = load i8** %158, align 8, !dbg !633, !tbaa !338
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %159) #7, !dbg !633
  %160 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22, !dbg !634
  %161 = bitcast i16** %160 to i8**, !dbg !634
  %162 = load i8** %161, align 8, !dbg !634, !tbaa !342
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 184, i8* %162) #7, !dbg !634
  %163 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20, !dbg !635
  %164 = bitcast i16** %163 to i8**, !dbg !635
  %165 = load i8** %164, align 8, !dbg !635, !tbaa !346
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %165) #7, !dbg !635
  %166 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21, !dbg !636
  %167 = bitcast i16** %166 to i8**, !dbg !636
  %168 = load i8** %167, align 8, !dbg !636, !tbaa !348
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 187, i8* %168) #7, !dbg !636
  br label %169, !dbg !637

; <label>:169                                     ; preds = %._crit_edge, %108
  ret void, !dbg !638
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_mdatoms(%struct.t_mdatoms* nocapture readonly %md, float %lambda, i32 %bFirst) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !235, metadata !248), !dbg !639
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !236, metadata !248), !dbg !640
  tail call void @llvm.dbg.value(metadata i32 %bFirst, i64 0, metadata !237, metadata !248), !dbg !641
  %1 = fsub float 1.000000e+00, %lambda, !dbg !642
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !240, metadata !248), !dbg !643
  %2 = icmp eq i32 %bFirst, 0, !dbg !644
  br i1 %2, label %3, label %.thread, !dbg !646

.thread:                                          ; preds = %0
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !dbg !647, !tbaa !375
  br label %.preheader, !dbg !648

; <label>:3                                       ; preds = %0
  %4 = load float* @init_mdatoms.lambda0, align 4, !dbg !650, !tbaa !375
  %5 = fsub float %4, %lambda, !dbg !651
  %fabsf = tail call float @fabsf(float %5) #4, !dbg !652
  %6 = fpext float %fabsf to double, !dbg !652
  %7 = fcmp ogt double %6, 1.200000e-38, !dbg !653
  br i1 %7, label %.preheader, label %.loopexit, !dbg !654

.preheader:                                       ; preds = %3, %.thread
  %.ph.in = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !655
  %.ph = load i32* %.ph.in, align 4, !dbg !655
  %8 = icmp sgt i32 %.ph, 0, !dbg !656
  br i1 %8, label %.lr.ph, label %.loopexit, !dbg !660

.lr.ph:                                           ; preds = %.preheader
  %9 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9, !dbg !661
  %10 = load i32** %9, align 8, !dbg !661, !tbaa !344
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2, !dbg !664
  %12 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3, !dbg !666
  %13 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !667
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !668
  %15 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !670
  %16 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !671
  %17 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !672
  %18 = add i32 %.ph, -1, !dbg !660
  br label %19, !dbg !660

; <label>:19                                      ; preds = %55, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  %20 = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !673
  %21 = load i32* %20, align 4, !dbg !673, !tbaa !428
  %22 = or i32 %21, %bFirst, !dbg !674
  %23 = icmp eq i32 %22, 0, !dbg !674
  br i1 %23, label %55, label %24, !dbg !674

; <label>:24                                      ; preds = %19
  %25 = load float** %11, align 8, !dbg !664, !tbaa !308
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv, !dbg !675
  %27 = load float* %26, align 4, !dbg !675, !tbaa !375
  %28 = fmul float %1, %27, !dbg !676
  %29 = load float** %12, align 8, !dbg !666, !tbaa !310
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv, !dbg !677
  %31 = load float* %30, align 4, !dbg !677, !tbaa !375
  %32 = fmul float %31, %lambda, !dbg !678
  %33 = fadd float %28, %32, !dbg !679
  %34 = load float** %13, align 8, !dbg !667, !tbaa !312
  %35 = getelementptr inbounds float* %34, i64 %indvars.iv, !dbg !680
  store float %33, float* %35, align 4, !dbg !681, !tbaa !375
  %36 = load float** %14, align 8, !dbg !668, !tbaa !314
  %37 = getelementptr inbounds float* %36, i64 %indvars.iv, !dbg !682
  %38 = load float* %37, align 4, !dbg !682, !tbaa !375
  %39 = fpext float %38 to double, !dbg !682
  %40 = fcmp ogt double %39, 0x39B64F86CB9CEFB1, !dbg !683
  br i1 %40, label %41, label %43, !dbg !684

; <label>:41                                      ; preds = %24
  %42 = fdiv float 1.000000e+00, %33, !dbg !685
  store float %42, float* %37, align 4, !dbg !686, !tbaa !375
  br label %43, !dbg !687

; <label>:43                                      ; preds = %41, %24
  %44 = load float** %15, align 8, !dbg !670, !tbaa !316
  %45 = getelementptr inbounds float* %44, i64 %indvars.iv, !dbg !688
  %46 = load float* %45, align 4, !dbg !688, !tbaa !375
  %47 = fmul float %1, %46, !dbg !689
  %48 = load float** %16, align 8, !dbg !671, !tbaa !318
  %49 = getelementptr inbounds float* %48, i64 %indvars.iv, !dbg !690
  %50 = load float* %49, align 4, !dbg !690, !tbaa !375
  %51 = fmul float %50, %lambda, !dbg !691
  %52 = fadd float %47, %51, !dbg !692
  %53 = load float** %17, align 8, !dbg !672, !tbaa !320
  %54 = getelementptr inbounds float* %53, i64 %indvars.iv, !dbg !693
  store float %52, float* %54, align 4, !dbg !694, !tbaa !375
  br label %55, !dbg !695

; <label>:55                                      ; preds = %19, %43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !660
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !660
  %exitcond = icmp eq i32 %lftr.wideiv, %18, !dbg !660
  br i1 %exitcond, label %.loopexit, label %19, !dbg !660

.loopexit:                                        ; preds = %55, %.preheader, %3
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !dbg !696, !tbaa !375
  ret void, !dbg !697
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!244, !245, !246}
!llvm.ident = !{!247}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !16, subprograms: !18, globals: !241, imports: !243)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdatom.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "egcTC", value: 0)
!7 = !DIEnumerator(name: "egcENER", value: 1)
!8 = !DIEnumerator(name: "egcACC", value: 2)
!9 = !DIEnumerator(name: "egcFREEZE", value: 3)
!10 = !DIEnumerator(name: "egcUser1", value: 4)
!11 = !DIEnumerator(name: "egcUser2", value: 5)
!12 = !DIEnumerator(name: "egcVCM", value: 6)
!13 = !DIEnumerator(name: "egcXTC", value: 7)
!14 = !DIEnumerator(name: "egcORFIT", value: 8)
!15 = !DIEnumerator(name: "egcNR", value: 9)
!16 = !{!17}
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !88, !94, !223, !231}
!19 = !DISubprogram(name: "__sputc", scope: !20, file: !20, line: 348, type: !21, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !85)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23, !24}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 153, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !20, line: 122, size: 1216, align: 64, elements: !27)
!27 = !{!28, !31, !32, !33, !35, !36, !41, !42, !44, !48, !53, !63, !69, !70, !73, !74, !78, !82, !83, !84}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !20, line: 123, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !20, line: 124, baseType: !23, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !20, line: 125, baseType: !23, size: 32, align: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !20, line: 126, baseType: !34, size: 16, align: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !20, line: 127, baseType: !34, size: 16, align: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !20, line: 128, baseType: !37, size: 128, align: 64, offset: 192)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !20, line: 88, size: 128, align: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !20, line: 89, baseType: !29, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !20, line: 90, baseType: !23, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !20, line: 129, baseType: !23, size: 32, align: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !20, line: 132, baseType: !43, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !20, line: 133, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!23, !43}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !20, line: 134, baseType: !49, size: 64, align: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!23, !43, !52, !23}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !20, line: 135, baseType: !54, size: 64, align: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !43, !57, !23}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !20, line: 77, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !59, line: 71, baseType: !60)
!59 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !20, line: 136, baseType: !64, size: 64, align: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!23, !43, !67, !23}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !20, line: 139, baseType: !37, size: 128, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !26, file: !20, line: 140, baseType: !71, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !20, line: 94, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !20, line: 141, baseType: !23, size: 32, align: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !20, line: 144, baseType: !75, size: 24, align: 8, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !20, line: 145, baseType: !79, size: 8, align: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !20, line: 148, baseType: !37, size: 128, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !20, line: 151, baseType: !23, size: 32, align: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !20, line: 152, baseType: !57, size: 64, align: 64, offset: 1152)
!85 = !{!86, !87}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !19, file: !20, line: 348, type: !23)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !19, file: !20, line: 348, type: !24)
!88 = !DISubprogram(name: "__sigbits", scope: !89, file: !89, line: 114, type: !90, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !92)
!89 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DISubroutineType(types: !91)
!91 = !{!23, !23}
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !88, file: !89, line: 114, type: !23)
!94 = !DISubprogram(name: "atoms2md", scope: !1, file: !1, line: 41, type: !95, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_mdatoms* (%struct.__sFILE*, %struct.t_atoms*, [3 x i32]*, i32, float, float, float*, i32, i32)* @atoms2md, variables: !206)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !24, !132, !203, !23, !103, !103, !108, !23, !23}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !99, line: 51, baseType: !100)
!99 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!100 = !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 40, size: 1408, align: 64, elements: !101)
!101 = !{!102, !106, !107, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !100, file: !99, line: 41, baseType: !103, size: 32, align: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !104, line: 87, baseType: !105)
!104 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!105 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !100, file: !99, line: 42, baseType: !23, size: 32, align: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !100, file: !99, line: 43, baseType: !108, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !100, file: !99, line: 43, baseType: !108, size: 64, align: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !100, file: !99, line: 43, baseType: !108, size: 64, align: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !100, file: !99, line: 43, baseType: !108, size: 64, align: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !100, file: !99, line: 44, baseType: !108, size: 64, align: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !100, file: !99, line: 44, baseType: !108, size: 64, align: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !100, file: !99, line: 44, baseType: !108, size: 64, align: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !100, file: !99, line: 45, baseType: !116, size: 64, align: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !100, file: !99, line: 46, baseType: !116, size: 64, align: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !100, file: !99, line: 47, baseType: !116, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !100, file: !99, line: 47, baseType: !116, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !100, file: !99, line: 48, baseType: !121, size: 64, align: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !100, file: !99, line: 49, baseType: !121, size: 64, align: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !100, file: !99, line: 50, baseType: !121, size: 64, align: 64, offset: 1216)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !100, file: !99, line: 50, baseType: !121, size: 64, align: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !100, file: !99, line: 50, baseType: !121, size: 64, align: 64, offset: 1344)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !4, line: 94, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 75, size: 10240, align: 64, elements: !135)
!135 = !{!136, !137, !155, !158, !159, !160, !161, !162, !163, !164, !179, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !134, file: !4, line: 76, baseType: !23, size: 32, align: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !134, file: !4, line: 77, baseType: !138, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !4, line: 57, baseType: !140)
!140 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 320, align: 32, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !154}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !140, file: !4, line: 49, baseType: !103, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !140, file: !4, line: 49, baseType: !103, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !140, file: !4, line: 50, baseType: !103, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !140, file: !4, line: 50, baseType: !103, size: 32, align: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !4, line: 51, baseType: !122, size: 16, align: 16, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !140, file: !4, line: 52, baseType: !122, size: 16, align: 16, offset: 144)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !140, file: !4, line: 53, baseType: !23, size: 32, align: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !140, file: !4, line: 54, baseType: !23, size: 32, align: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !140, file: !4, line: 55, baseType: !151, size: 72, align: 8, offset: 224)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, align: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 9)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !140, file: !4, line: 56, baseType: !30, size: 8, align: 8, offset: 296)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !134, file: !4, line: 80, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !134, file: !4, line: 82, baseType: !156, size: 64, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !134, file: !4, line: 84, baseType: !156, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !134, file: !4, line: 86, baseType: !23, size: 32, align: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !134, file: !4, line: 87, baseType: !156, size: 64, align: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !134, file: !4, line: 89, baseType: !23, size: 32, align: 32, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !134, file: !4, line: 90, baseType: !156, size: 64, align: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !134, file: !4, line: 91, baseType: !165, size: 8448, align: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !166, line: 52, baseType: !167)
!166 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!167 = !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 36, size: 8448, align: 64, elements: !168)
!168 = !{!169, !173, !174, !177, !178}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !167, file: !166, line: 37, baseType: !170, size: 8192, align: 32)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, align: 32, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !167, file: !166, line: 43, baseType: !23, size: 32, align: 32, offset: 8192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !167, file: !166, line: 44, baseType: !175, size: 64, align: 64, offset: 8256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !104, line: 73, baseType: !23)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !167, file: !166, line: 45, baseType: !23, size: 32, align: 32, offset: 8320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !167, file: !166, line: 46, baseType: !175, size: 64, align: 64, offset: 8384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !134, file: !4, line: 92, baseType: !180, size: 1152, align: 64, offset: 9024)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1152, align: 64, elements: !152)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !4, line: 73, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 70, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !182, file: !4, line: 71, baseType: !23, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !182, file: !4, line: 72, baseType: !116, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !134, file: !4, line: 93, baseType: !187, size: 64, align: 64, offset: 10176)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !4, line: 68, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 59, size: 416, align: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !198, !199, !200, !201}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !4, line: 60, baseType: !23, size: 32, align: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !189, file: !4, line: 61, baseType: !23, size: 32, align: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !189, file: !4, line: 62, baseType: !17, size: 8, align: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !189, file: !4, line: 63, baseType: !195, size: 48, align: 8, offset: 72)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, align: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 6)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !189, file: !4, line: 64, baseType: !103, size: 32, align: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !189, file: !4, line: 65, baseType: !103, size: 32, align: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !189, file: !4, line: 66, baseType: !23, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !189, file: !4, line: 67, baseType: !202, size: 192, align: 32, offset: 224)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 32, elements: !196)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !104, line: 107, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, align: 32, elements: !76)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !222}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !94, file: !1, line: 41, type: !24)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !94, file: !1, line: 41, type: !132)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nFreeze", arg: 3, scope: !94, file: !1, line: 41, type: !203)
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bBD", arg: 4, scope: !94, file: !1, line: 42, type: !23)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delta_t", arg: 5, scope: !94, file: !1, line: 42, type: !103)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fric", arg: 6, scope: !94, file: !1, line: 42, type: !103)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tau_t", arg: 7, scope: !94, file: !1, line: 42, type: !108)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bPert", arg: 8, scope: !94, file: !1, line: 43, type: !23)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFree", arg: 9, scope: !94, file: !1, line: 43, type: !23)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !94, file: !1, line: 45, type: !23)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !94, file: !1, line: 45, type: !23)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !94, file: !1, line: 45, type: !23)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fac", scope: !94, file: !1, line: 46, type: !103)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tm", scope: !94, file: !1, line: 47, type: !221)
!221 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "md", scope: !94, file: !1, line: 48, type: !97)
!223 = !DISubprogram(name: "md2atoms", scope: !1, file: !1, line: 143, type: !224, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_mdatoms*, %struct.t_atoms*, i32)* @md2atoms, variables: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !97, !132, !23}
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 1, scope: !223, file: !1, line: 143, type: !97)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !223, file: !1, line: 143, type: !132)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFree", arg: 3, scope: !223, file: !1, line: 143, type: !23)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !223, file: !1, line: 145, type: !23)
!231 = !DISubprogram(name: "init_mdatoms", scope: !1, file: !1, line: 191, type: !232, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_mdatoms*, float, i32)* @init_mdatoms, variables: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !97, !103, !23}
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 1, scope: !231, file: !1, line: 191, type: !97)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 2, scope: !231, file: !1, line: 191, type: !103)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFirst", arg: 3, scope: !231, file: !1, line: 191, type: !23)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !231, file: !1, line: 194, type: !23)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !231, file: !1, line: 194, type: !23)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "L1", scope: !231, file: !1, line: 195, type: !103)
!241 = !{!242}
!242 = !DIGlobalVariable(name: "lambda0", scope: !231, file: !1, line: 193, type: !103, isLocal: true, isDefinition: true, variable: float* @init_mdatoms.lambda0)
!243 = !{}
!244 = !{i32 2, !"Dwarf Version", i32 2}
!245 = !{i32 2, !"Debug Info Version", i32 700000003}
!246 = !{i32 1, !"PIC Level", i32 2}
!247 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!248 = !DIExpression()
!249 = !DILocation(line: 348, column: 40, scope: !19)
!250 = !DILocation(line: 348, column: 50, scope: !19)
!251 = !DILocation(line: 349, column: 12, scope: !252)
!252 = distinct !DILexicalBlock(scope: !19, file: !20, line: 349, column: 6)
!253 = !DILocation(line: 349, column: 6, scope: !252)
!254 = !{!255, !259, i64 12}
!255 = !{!"__sFILE", !256, i64 0, !259, i64 8, !259, i64 12, !260, i64 16, !260, i64 18, !261, i64 24, !259, i64 40, !256, i64 48, !256, i64 56, !256, i64 64, !256, i64 72, !256, i64 80, !261, i64 88, !256, i64 104, !259, i64 112, !257, i64 116, !257, i64 119, !261, i64 120, !259, i64 136, !262, i64 144}
!256 = !{!"any pointer", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C/C++ TBAA"}
!259 = !{!"int", !257, i64 0}
!260 = !{!"short", !257, i64 0}
!261 = !{!"__sbuf", !256, i64 0, !259, i64 8}
!262 = !{!"long long", !257, i64 0}
!263 = !DILocation(line: 349, column: 15, scope: !252)
!264 = !DILocation(line: 349, column: 20, scope: !252)
!265 = !DILocation(line: 350, column: 10, scope: !252)
!266 = !DILocation(line: 349, column: 38, scope: !252)
!267 = !{!255, !259, i64 40}
!268 = !DILocation(line: 349, column: 31, scope: !252)
!269 = !DILocation(line: 349, column: 59, scope: !252)
!270 = !DILocation(line: 349, column: 47, scope: !252)
!271 = !DILocation(line: 350, column: 23, scope: !252)
!272 = !DILocation(line: 350, column: 16, scope: !252)
!273 = !DILocation(line: 350, column: 18, scope: !252)
!274 = !{!255, !256, i64 0}
!275 = !DILocation(line: 350, column: 21, scope: !252)
!276 = !{!257, !257, i64 0}
!277 = !DILocation(line: 350, column: 3, scope: !252)
!278 = !DILocation(line: 352, column: 11, scope: !252)
!279 = !DILocation(line: 352, column: 3, scope: !252)
!280 = !DILocation(line: 353, column: 1, scope: !19)
!281 = !DILocation(line: 114, column: 15, scope: !88)
!282 = !DILocation(line: 116, column: 20, scope: !88)
!283 = !DILocation(line: 116, column: 12, scope: !88)
!284 = !DILocation(line: 116, column: 57, scope: !88)
!285 = !DILocation(line: 116, column: 45, scope: !88)
!286 = !DILocation(line: 116, column: 5, scope: !88)
!287 = !DILocation(line: 41, column: 27, scope: !94)
!288 = !DILocation(line: 41, column: 39, scope: !94)
!289 = !DILocation(line: 41, column: 50, scope: !94)
!290 = !DILocation(line: 42, column: 12, scope: !94)
!291 = !DILocation(line: 42, column: 21, scope: !94)
!292 = !DILocation(line: 42, column: 34, scope: !94)
!293 = !DILocation(line: 42, column: 44, scope: !94)
!294 = !DILocation(line: 43, column: 12, scope: !94)
!295 = !DILocation(line: 43, column: 23, scope: !94)
!296 = !DILocation(line: 50, column: 3, scope: !94)
!297 = !DILocation(line: 48, column: 14, scope: !94)
!298 = !DILocation(line: 51, column: 19, scope: !94)
!299 = !{!300, !259, i64 0}
!300 = !{!"", !259, i64 0, !256, i64 8, !256, i64 16, !256, i64 24, !256, i64 32, !259, i64 40, !256, i64 48, !259, i64 56, !256, i64 64, !301, i64 72, !257, i64 1128, !256, i64 1272}
!301 = !{!"", !257, i64 0, !259, i64 1024, !256, i64 1032, !259, i64 1040, !256, i64 1048}
!302 = !DILocation(line: 51, column: 7, scope: !94)
!303 = !DILocation(line: 51, column: 10, scope: !94)
!304 = !{!305, !259, i64 4}
!305 = !{!"", !306, i64 0, !259, i64 4, !256, i64 8, !256, i64 16, !256, i64 24, !256, i64 32, !256, i64 40, !256, i64 48, !256, i64 56, !256, i64 64, !256, i64 72, !256, i64 80, !256, i64 88, !256, i64 96, !256, i64 104, !256, i64 112, !256, i64 120, !256, i64 128, !256, i64 136, !256, i64 144, !256, i64 152, !256, i64 160, !256, i64 168}
!306 = !{!"float", !257, i64 0}
!307 = !DILocation(line: 52, column: 3, scope: !94)
!308 = !{!305, !256, i64 8}
!309 = !DILocation(line: 53, column: 3, scope: !94)
!310 = !{!305, !256, i64 16}
!311 = !DILocation(line: 54, column: 3, scope: !94)
!312 = !{!305, !256, i64 24}
!313 = !DILocation(line: 55, column: 3, scope: !94)
!314 = !{!305, !256, i64 32}
!315 = !DILocation(line: 56, column: 3, scope: !94)
!316 = !{!305, !256, i64 40}
!317 = !DILocation(line: 57, column: 3, scope: !94)
!318 = !{!305, !256, i64 48}
!319 = !DILocation(line: 58, column: 3, scope: !94)
!320 = !{!305, !256, i64 56}
!321 = !DILocation(line: 59, column: 3, scope: !94)
!322 = !{!305, !256, i64 72}
!323 = !DILocation(line: 60, column: 3, scope: !94)
!324 = !{!305, !256, i64 80}
!325 = !DILocation(line: 61, column: 3, scope: !94)
!326 = !{!305, !256, i64 88}
!327 = !DILocation(line: 62, column: 3, scope: !94)
!328 = !{!305, !256, i64 96}
!329 = !DILocation(line: 63, column: 3, scope: !94)
!330 = !{!305, !256, i64 104}
!331 = !DILocation(line: 64, column: 3, scope: !94)
!332 = !{!305, !256, i64 112}
!333 = !DILocation(line: 65, column: 3, scope: !94)
!334 = !{!305, !256, i64 120}
!335 = !DILocation(line: 66, column: 3, scope: !94)
!336 = !{!305, !256, i64 128}
!337 = !DILocation(line: 67, column: 3, scope: !94)
!338 = !{!305, !256, i64 136}
!339 = !DILocation(line: 68, column: 3, scope: !94)
!340 = !{!305, !256, i64 144}
!341 = !DILocation(line: 69, column: 3, scope: !94)
!342 = !{!305, !256, i64 168}
!343 = !DILocation(line: 70, column: 3, scope: !94)
!344 = !{!305, !256, i64 64}
!345 = !DILocation(line: 72, column: 3, scope: !94)
!346 = !{!305, !256, i64 152}
!347 = !DILocation(line: 73, column: 3, scope: !94)
!348 = !{!305, !256, i64 160}
!349 = !DILocation(line: 45, column: 15, scope: !94)
!350 = !DILocation(line: 47, column: 13, scope: !94)
!351 = !DILocation(line: 45, column: 13, scope: !94)
!352 = !DILocation(line: 77, column: 19, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 77, column: 3)
!354 = distinct !DILexicalBlock(scope: !94, file: !1, line: 77, column: 3)
!355 = !DILocation(line: 77, column: 14, scope: !353)
!356 = !DILocation(line: 77, column: 3, scope: !354)
!357 = !DILocation(line: 78, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 78, column: 9)
!359 = distinct !DILexicalBlock(scope: !353, file: !1, line: 77, column: 29)
!360 = !DILocation(line: 91, column: 29, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 90, column: 12)
!362 = !DILocation(line: 121, column: 9, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 121, column: 9)
!364 = !DILocation(line: 83, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 82, column: 36)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 82, column: 11)
!367 = distinct !DILexicalBlock(scope: !358, file: !1, line: 78, column: 14)
!368 = !DILocation(line: 78, column: 9, scope: !359)
!369 = !DILocation(line: 82, column: 11, scope: !366)
!370 = !DILocation(line: 82, column: 21, scope: !366)
!371 = !DILocation(line: 82, column: 11, scope: !367)
!372 = !DILocation(line: 83, column: 6, scope: !365)
!373 = !DILocation(line: 83, column: 2, scope: !365)
!374 = !DILocation(line: 83, column: 15, scope: !365)
!375 = !{!306, !306, i64 0}
!376 = !DILocation(line: 84, column: 6, scope: !365)
!377 = !DILocation(line: 84, column: 2, scope: !365)
!378 = !DILocation(line: 84, column: 15, scope: !365)
!379 = !DILocation(line: 95, column: 29, scope: !359)
!380 = !{!300, !256, i64 8}
!381 = !DILocation(line: 85, column: 7, scope: !365)
!382 = !DILocation(line: 86, column: 29, scope: !383)
!383 = distinct !DILexicalBlock(scope: !366, file: !1, line: 85, column: 14)
!384 = !DILocation(line: 86, column: 22, scope: !383)
!385 = !DILocation(line: 86, column: 16, scope: !383)
!386 = !DILocation(line: 86, column: 15, scope: !383)
!387 = !DILocation(line: 46, column: 13, scope: !94)
!388 = !DILocation(line: 87, column: 32, scope: !383)
!389 = !{!390, !306, i64 0}
!390 = !{!"", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 12, !260, i64 16, !260, i64 18, !259, i64 20, !259, i64 24, !257, i64 28, !257, i64 37}
!391 = !DILocation(line: 87, column: 33, scope: !383)
!392 = !DILocation(line: 87, column: 6, scope: !383)
!393 = !DILocation(line: 87, column: 2, scope: !383)
!394 = !DILocation(line: 87, column: 15, scope: !383)
!395 = !DILocation(line: 88, column: 32, scope: !383)
!396 = !{!390, !306, i64 8}
!397 = !DILocation(line: 88, column: 34, scope: !383)
!398 = !DILocation(line: 88, column: 6, scope: !383)
!399 = !DILocation(line: 88, column: 2, scope: !383)
!400 = !DILocation(line: 88, column: 15, scope: !383)
!401 = !DILocation(line: 91, column: 37, scope: !361)
!402 = !DILocation(line: 91, column: 11, scope: !361)
!403 = !DILocation(line: 91, column: 7, scope: !361)
!404 = !DILocation(line: 91, column: 20, scope: !361)
!405 = !DILocation(line: 92, column: 37, scope: !361)
!406 = !DILocation(line: 92, column: 11, scope: !361)
!407 = !DILocation(line: 92, column: 7, scope: !361)
!408 = !DILocation(line: 92, column: 20, scope: !361)
!409 = !DILocation(line: 94, column: 20, scope: !359)
!410 = !DILocation(line: 94, column: 9, scope: !359)
!411 = !DILocation(line: 94, column: 5, scope: !359)
!412 = !DILocation(line: 94, column: 18, scope: !359)
!413 = !DILocation(line: 95, column: 37, scope: !359)
!414 = !{!390, !306, i64 4}
!415 = !DILocation(line: 95, column: 9, scope: !359)
!416 = !DILocation(line: 95, column: 5, scope: !359)
!417 = !DILocation(line: 95, column: 20, scope: !359)
!418 = !DILocation(line: 96, column: 37, scope: !359)
!419 = !{!390, !306, i64 12}
!420 = !DILocation(line: 96, column: 9, scope: !359)
!421 = !DILocation(line: 96, column: 5, scope: !359)
!422 = !DILocation(line: 96, column: 20, scope: !359)
!423 = !DILocation(line: 97, column: 35, scope: !359)
!424 = !{!390, !259, i64 24}
!425 = !DILocation(line: 97, column: 9, scope: !359)
!426 = !DILocation(line: 97, column: 5, scope: !359)
!427 = !DILocation(line: 97, column: 18, scope: !359)
!428 = !{!259, !259, i64 0}
!429 = !DILocation(line: 98, column: 35, scope: !359)
!430 = !{!390, !260, i64 16}
!431 = !DILocation(line: 98, column: 20, scope: !359)
!432 = !DILocation(line: 98, column: 9, scope: !359)
!433 = !DILocation(line: 98, column: 5, scope: !359)
!434 = !DILocation(line: 98, column: 18, scope: !359)
!435 = !DILocation(line: 99, column: 35, scope: !359)
!436 = !{!390, !260, i64 18}
!437 = !DILocation(line: 99, column: 20, scope: !359)
!438 = !DILocation(line: 99, column: 9, scope: !359)
!439 = !DILocation(line: 99, column: 5, scope: !359)
!440 = !DILocation(line: 99, column: 18, scope: !359)
!441 = !DILocation(line: 100, column: 35, scope: !359)
!442 = !{!390, !259, i64 20}
!443 = !DILocation(line: 100, column: 20, scope: !359)
!444 = !DILocation(line: 100, column: 9, scope: !359)
!445 = !DILocation(line: 100, column: 5, scope: !359)
!446 = !DILocation(line: 100, column: 18, scope: !359)
!447 = !{!260, !260, i64 0}
!448 = !DILocation(line: 101, column: 19, scope: !359)
!449 = !DILocation(line: 101, column: 9, scope: !359)
!450 = !DILocation(line: 101, column: 5, scope: !359)
!451 = !DILocation(line: 101, column: 17, scope: !359)
!452 = !DILocation(line: 102, column: 20, scope: !359)
!453 = !DILocation(line: 102, column: 9, scope: !359)
!454 = !DILocation(line: 102, column: 5, scope: !359)
!455 = !DILocation(line: 102, column: 18, scope: !359)
!456 = !DILocation(line: 103, column: 20, scope: !359)
!457 = !DILocation(line: 103, column: 9, scope: !359)
!458 = !DILocation(line: 103, column: 5, scope: !359)
!459 = !DILocation(line: 103, column: 18, scope: !359)
!460 = !DILocation(line: 104, column: 22, scope: !359)
!461 = !DILocation(line: 104, column: 9, scope: !359)
!462 = !DILocation(line: 104, column: 5, scope: !359)
!463 = !DILocation(line: 104, column: 20, scope: !359)
!464 = !DILocation(line: 105, column: 25, scope: !359)
!465 = !DILocation(line: 105, column: 9, scope: !359)
!466 = !DILocation(line: 105, column: 5, scope: !359)
!467 = !DILocation(line: 105, column: 23, scope: !359)
!468 = !DILocation(line: 106, column: 25, scope: !359)
!469 = !DILocation(line: 106, column: 9, scope: !359)
!470 = !DILocation(line: 106, column: 5, scope: !359)
!471 = !DILocation(line: 106, column: 23, scope: !359)
!472 = !DILocation(line: 107, column: 25, scope: !359)
!473 = !DILocation(line: 107, column: 9, scope: !359)
!474 = !DILocation(line: 107, column: 5, scope: !359)
!475 = !DILocation(line: 107, column: 23, scope: !359)
!476 = !DILocation(line: 108, column: 14, scope: !477)
!477 = distinct !DILexicalBlock(scope: !359, file: !1, line: 108, column: 9)
!478 = !DILocation(line: 108, column: 9, scope: !477)
!479 = !DILocation(line: 108, column: 28, scope: !477)
!480 = !DILocation(line: 108, column: 9, scope: !359)
!481 = !DILocation(line: 109, column: 31, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !1, line: 108, column: 44)
!483 = !DILocation(line: 109, column: 27, scope: !482)
!484 = !DILocation(line: 109, column: 24, scope: !482)
!485 = !DILocation(line: 110, column: 11, scope: !482)
!486 = !DILocation(line: 111, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !1, line: 111, column: 11)
!488 = !DILocation(line: 111, column: 26, scope: !487)
!489 = !DILocation(line: 111, column: 29, scope: !487)
!490 = !DILocation(line: 111, column: 44, scope: !487)
!491 = !DILocation(line: 111, column: 47, scope: !487)
!492 = !DILocation(line: 111, column: 11, scope: !482)
!493 = !DILocation(line: 115, column: 6, scope: !487)
!494 = !DILocation(line: 115, column: 2, scope: !487)
!495 = !DILocation(line: 115, column: 17, scope: !487)
!496 = !DILocation(line: 116, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !487, file: !1, line: 116, column: 16)
!498 = !DILocation(line: 116, column: 35, scope: !497)
!499 = !DILocation(line: 116, column: 16, scope: !487)
!500 = !DILocation(line: 117, column: 6, scope: !497)
!501 = !DILocation(line: 117, column: 2, scope: !497)
!502 = !DILocation(line: 117, column: 18, scope: !497)
!503 = !DILocation(line: 119, column: 19, scope: !497)
!504 = !DILocation(line: 119, column: 6, scope: !497)
!505 = !DILocation(line: 119, column: 2, scope: !497)
!506 = !DILocation(line: 119, column: 17, scope: !497)
!507 = !DILocation(line: 121, column: 9, scope: !359)
!508 = !DILocation(line: 122, column: 29, scope: !509)
!509 = distinct !DILexicalBlock(scope: !363, file: !1, line: 121, column: 16)
!510 = !DILocation(line: 122, column: 11, scope: !509)
!511 = !DILocation(line: 122, column: 7, scope: !509)
!512 = !DILocation(line: 122, column: 27, scope: !509)
!513 = !DILocation(line: 123, column: 11, scope: !509)
!514 = !DILocation(line: 127, column: 24, scope: !359)
!515 = !DILocation(line: 127, column: 9, scope: !359)
!516 = !DILocation(line: 127, column: 5, scope: !359)
!517 = !DILocation(line: 127, column: 22, scope: !359)
!518 = !DILocation(line: 128, column: 24, scope: !359)
!519 = !DILocation(line: 128, column: 5, scope: !359)
!520 = !DILocation(line: 128, column: 22, scope: !359)
!521 = !DILocation(line: 130, column: 16, scope: !94)
!522 = !DILocation(line: 130, column: 7, scope: !94)
!523 = !DILocation(line: 130, column: 14, scope: !94)
!524 = !{!305, !306, i64 0}
!525 = !DILocation(line: 132, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !94, file: !1, line: 132, column: 7)
!527 = !DILocation(line: 132, column: 7, scope: !94)
!528 = !DILocation(line: 133, column: 5, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !1, line: 132, column: 14)
!530 = !DILocation(line: 134, column: 16, scope: !529)
!531 = !DILocation(line: 135, column: 3, scope: !529)
!532 = !DILocation(line: 137, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !94, file: !1, line: 137, column: 7)
!534 = !DILocation(line: 137, column: 7, scope: !94)
!535 = !DILocation(line: 138, column: 5, scope: !533)
!536 = !DILocation(line: 140, column: 3, scope: !94)
!537 = !DILocation(line: 143, column: 26, scope: !223)
!538 = !DILocation(line: 143, column: 38, scope: !223)
!539 = !DILocation(line: 143, column: 49, scope: !223)
!540 = !DILocation(line: 147, column: 3, scope: !223)
!541 = !DILocation(line: 145, column: 7, scope: !223)
!542 = !DILocation(line: 148, column: 19, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 148, column: 3)
!544 = distinct !DILexicalBlock(scope: !223, file: !1, line: 148, column: 3)
!545 = !DILocation(line: 148, column: 14, scope: !543)
!546 = !DILocation(line: 148, column: 3, scope: !544)
!547 = !DILocation(line: 149, column: 43, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 148, column: 29)
!549 = !DILocation(line: 150, column: 43, scope: !548)
!550 = !DILocation(line: 151, column: 43, scope: !548)
!551 = !DILocation(line: 152, column: 43, scope: !548)
!552 = !DILocation(line: 153, column: 43, scope: !548)
!553 = !DILocation(line: 154, column: 43, scope: !548)
!554 = !DILocation(line: 155, column: 43, scope: !548)
!555 = !DILocation(line: 156, column: 43, scope: !548)
!556 = !DILocation(line: 157, column: 43, scope: !548)
!557 = !DILocation(line: 158, column: 43, scope: !548)
!558 = !DILocation(line: 159, column: 43, scope: !548)
!559 = !DILocation(line: 160, column: 43, scope: !548)
!560 = !DILocation(line: 162, column: 43, scope: !548)
!561 = !DILocation(line: 163, column: 43, scope: !548)
!562 = !DILocation(line: 149, column: 39, scope: !548)
!563 = !DILocation(line: 149, column: 5, scope: !548)
!564 = !DILocation(line: 149, column: 37, scope: !548)
!565 = !DILocation(line: 150, column: 39, scope: !548)
!566 = !DILocation(line: 150, column: 20, scope: !548)
!567 = !DILocation(line: 150, column: 37, scope: !548)
!568 = !DILocation(line: 151, column: 39, scope: !548)
!569 = !DILocation(line: 151, column: 20, scope: !548)
!570 = !DILocation(line: 151, column: 37, scope: !548)
!571 = !DILocation(line: 152, column: 39, scope: !548)
!572 = !DILocation(line: 152, column: 20, scope: !548)
!573 = !DILocation(line: 152, column: 37, scope: !548)
!574 = !DILocation(line: 153, column: 39, scope: !548)
!575 = !DILocation(line: 153, column: 20, scope: !548)
!576 = !DILocation(line: 153, column: 37, scope: !548)
!577 = !DILocation(line: 154, column: 39, scope: !548)
!578 = !DILocation(line: 154, column: 5, scope: !548)
!579 = !DILocation(line: 154, column: 37, scope: !548)
!580 = !DILocation(line: 155, column: 39, scope: !548)
!581 = !DILocation(line: 155, column: 12, scope: !548)
!582 = !DILocation(line: 155, column: 5, scope: !548)
!583 = !DILocation(line: 155, column: 37, scope: !548)
!584 = !DILocation(line: 156, column: 39, scope: !548)
!585 = !DILocation(line: 156, column: 12, scope: !548)
!586 = !DILocation(line: 156, column: 5, scope: !548)
!587 = !DILocation(line: 156, column: 37, scope: !548)
!588 = !DILocation(line: 157, column: 39, scope: !548)
!589 = !DILocation(line: 157, column: 12, scope: !548)
!590 = !DILocation(line: 157, column: 5, scope: !548)
!591 = !DILocation(line: 157, column: 37, scope: !548)
!592 = !DILocation(line: 158, column: 39, scope: !548)
!593 = !DILocation(line: 158, column: 12, scope: !548)
!594 = !DILocation(line: 158, column: 5, scope: !548)
!595 = !DILocation(line: 158, column: 37, scope: !548)
!596 = !DILocation(line: 159, column: 39, scope: !548)
!597 = !DILocation(line: 159, column: 12, scope: !548)
!598 = !DILocation(line: 159, column: 5, scope: !548)
!599 = !DILocation(line: 159, column: 37, scope: !548)
!600 = !DILocation(line: 160, column: 39, scope: !548)
!601 = !DILocation(line: 160, column: 12, scope: !548)
!602 = !DILocation(line: 160, column: 5, scope: !548)
!603 = !DILocation(line: 160, column: 37, scope: !548)
!604 = !DILocation(line: 162, column: 39, scope: !548)
!605 = !DILocation(line: 162, column: 12, scope: !548)
!606 = !DILocation(line: 162, column: 5, scope: !548)
!607 = !DILocation(line: 162, column: 37, scope: !548)
!608 = !DILocation(line: 163, column: 39, scope: !548)
!609 = !DILocation(line: 163, column: 12, scope: !548)
!610 = !DILocation(line: 163, column: 5, scope: !548)
!611 = !DILocation(line: 163, column: 37, scope: !548)
!612 = !DILocation(line: 149, column: 12, scope: !548)
!613 = !DILocation(line: 166, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !223, file: !1, line: 166, column: 7)
!615 = !DILocation(line: 166, column: 7, scope: !223)
!616 = !DILocation(line: 167, column: 5, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !1, line: 166, column: 14)
!618 = !DILocation(line: 168, column: 5, scope: !617)
!619 = !DILocation(line: 169, column: 5, scope: !617)
!620 = !DILocation(line: 170, column: 5, scope: !617)
!621 = !DILocation(line: 171, column: 5, scope: !617)
!622 = !DILocation(line: 172, column: 5, scope: !617)
!623 = !DILocation(line: 173, column: 5, scope: !617)
!624 = !DILocation(line: 174, column: 5, scope: !617)
!625 = !DILocation(line: 175, column: 5, scope: !617)
!626 = !DILocation(line: 176, column: 5, scope: !617)
!627 = !DILocation(line: 177, column: 5, scope: !617)
!628 = !DILocation(line: 178, column: 5, scope: !617)
!629 = !DILocation(line: 179, column: 5, scope: !617)
!630 = !DILocation(line: 180, column: 5, scope: !617)
!631 = !DILocation(line: 181, column: 5, scope: !617)
!632 = !DILocation(line: 182, column: 5, scope: !617)
!633 = !DILocation(line: 183, column: 5, scope: !617)
!634 = !DILocation(line: 184, column: 5, scope: !617)
!635 = !DILocation(line: 186, column: 5, scope: !617)
!636 = !DILocation(line: 187, column: 5, scope: !617)
!637 = !DILocation(line: 188, column: 3, scope: !617)
!638 = !DILocation(line: 189, column: 1, scope: !223)
!639 = !DILocation(line: 191, column: 30, scope: !231)
!640 = !DILocation(line: 191, column: 38, scope: !231)
!641 = !DILocation(line: 191, column: 50, scope: !231)
!642 = !DILocation(line: 195, column: 13, scope: !231)
!643 = !DILocation(line: 195, column: 10, scope: !231)
!644 = !DILocation(line: 197, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !231, file: !1, line: 197, column: 7)
!646 = !DILocation(line: 197, column: 7, scope: !231)
!647 = !DILocation(line: 198, column: 13, scope: !645)
!648 = !DILocation(line: 207, column: 14, scope: !649)
!649 = distinct !DILexicalBlock(scope: !231, file: !1, line: 207, column: 7)
!650 = !DILocation(line: 207, column: 22, scope: !649)
!651 = !DILocation(line: 207, column: 30, scope: !649)
!652 = !DILocation(line: 207, column: 17, scope: !649)
!653 = !DILocation(line: 207, column: 39, scope: !649)
!654 = !DILocation(line: 207, column: 7, scope: !231)
!655 = !DILocation(line: 199, column: 11, scope: !231)
!656 = !DILocation(line: 208, column: 16, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 208, column: 5)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 208, column: 5)
!659 = distinct !DILexicalBlock(scope: !649, file: !1, line: 207, column: 54)
!660 = !DILocation(line: 208, column: 5, scope: !658)
!661 = !DILocation(line: 209, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 209, column: 11)
!663 = distinct !DILexicalBlock(scope: !657, file: !1, line: 208, column: 28)
!664 = !DILocation(line: 210, column: 22, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !1, line: 209, column: 40)
!666 = !DILocation(line: 210, column: 42, scope: !665)
!667 = !DILocation(line: 210, column: 6, scope: !665)
!668 = !DILocation(line: 211, column: 10, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 211, column: 6)
!670 = !DILocation(line: 213, column: 24, scope: !665)
!671 = !DILocation(line: 213, column: 46, scope: !665)
!672 = !DILocation(line: 213, column: 6, scope: !665)
!673 = !DILocation(line: 209, column: 11, scope: !662)
!674 = !DILocation(line: 209, column: 29, scope: !662)
!675 = !DILocation(line: 210, column: 18, scope: !665)
!676 = !DILocation(line: 210, column: 17, scope: !665)
!677 = !DILocation(line: 210, column: 38, scope: !665)
!678 = !DILocation(line: 210, column: 37, scope: !665)
!679 = !DILocation(line: 210, column: 30, scope: !665)
!680 = !DILocation(line: 210, column: 2, scope: !665)
!681 = !DILocation(line: 210, column: 14, scope: !665)
!682 = !DILocation(line: 211, column: 6, scope: !669)
!683 = !DILocation(line: 211, column: 21, scope: !669)
!684 = !DILocation(line: 211, column: 6, scope: !665)
!685 = !DILocation(line: 212, column: 19, scope: !669)
!686 = !DILocation(line: 212, column: 18, scope: !669)
!687 = !DILocation(line: 212, column: 4, scope: !669)
!688 = !DILocation(line: 213, column: 20, scope: !665)
!689 = !DILocation(line: 213, column: 19, scope: !665)
!690 = !DILocation(line: 213, column: 42, scope: !665)
!691 = !DILocation(line: 213, column: 41, scope: !665)
!692 = !DILocation(line: 213, column: 34, scope: !665)
!693 = !DILocation(line: 213, column: 2, scope: !665)
!694 = !DILocation(line: 213, column: 16, scope: !665)
!695 = !DILocation(line: 214, column: 7, scope: !665)
!696 = !DILocation(line: 217, column: 11, scope: !231)
!697 = !DILocation(line: 218, column: 1, scope: !231)
