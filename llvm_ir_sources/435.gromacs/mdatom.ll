; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define %struct.t_mdatoms* @atoms2md(%struct._IO_FILE* %fp, %struct.t_atoms* nocapture %atoms, [3 x i32]* nocapture %nFreeze, i32 %bBD, float %delta_t, float %fric, float* nocapture %tau_t, i32 %bPert, i32 %bFree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !191), !dbg !227
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !192), !dbg !227
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %nFreeze}, i64 0, metadata !193), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %bBD}, i64 0, metadata !194), !dbg !228
  tail call void @llvm.dbg.value(metadata !{float %delta_t}, i64 0, metadata !195), !dbg !228
  tail call void @llvm.dbg.value(metadata !{float %fric}, i64 0, metadata !196), !dbg !228
  tail call void @llvm.dbg.value(metadata !{float* %tau_t}, i64 0, metadata !197), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %bPert}, i64 0, metadata !198), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %bFree}, i64 0, metadata !199), !dbg !229
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 50, i32 1, i32 176) #5, !dbg !230
  %0 = bitcast i8* %call to %struct.t_mdatoms*, !dbg !230
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %0}, i64 0, metadata !206), !dbg !230
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !231
  %1 = load i32* %nr, align 4, !dbg !231, !tbaa !232
  %nr1 = getelementptr inbounds i8* %call, i64 4, !dbg !231
  %2 = bitcast i8* %nr1 to i32*, !dbg !231
  store i32 %1, i32* %2, align 4, !dbg !231, !tbaa !232
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 52, i32 %1, i32 4) #5, !dbg !235
  %3 = bitcast i8* %call3 to float*, !dbg !235
  %massA = getelementptr inbounds i8* %call, i64 8, !dbg !235
  %4 = bitcast i8* %massA to float**, !dbg !235
  store float* %3, float** %4, align 8, !dbg !235, !tbaa !236
  %5 = load i32* %2, align 4, !dbg !237, !tbaa !232
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %5, i32 4) #5, !dbg !237
  %6 = bitcast i8* %call5 to float*, !dbg !237
  %massB = getelementptr inbounds i8* %call, i64 16, !dbg !237
  %7 = bitcast i8* %massB to float**, !dbg !237
  store float* %6, float** %7, align 8, !dbg !237, !tbaa !236
  %8 = load i32* %2, align 4, !dbg !238, !tbaa !232
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %8, i32 4) #5, !dbg !238
  %9 = bitcast i8* %call7 to float*, !dbg !238
  %massT = getelementptr inbounds i8* %call, i64 24, !dbg !238
  %10 = bitcast i8* %massT to float**, !dbg !238
  store float* %9, float** %10, align 8, !dbg !238, !tbaa !236
  %11 = load i32* %2, align 4, !dbg !239, !tbaa !232
  %call9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %11, i32 4) #5, !dbg !239
  %12 = bitcast i8* %call9 to float*, !dbg !239
  %invmass = getelementptr inbounds i8* %call, i64 32, !dbg !239
  %13 = bitcast i8* %invmass to float**, !dbg !239
  store float* %12, float** %13, align 8, !dbg !239, !tbaa !236
  %14 = load i32* %2, align 4, !dbg !240, !tbaa !232
  %call11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 56, i32 %14, i32 4) #5, !dbg !240
  %15 = bitcast i8* %call11 to float*, !dbg !240
  %chargeA = getelementptr inbounds i8* %call, i64 40, !dbg !240
  %16 = bitcast i8* %chargeA to float**, !dbg !240
  store float* %15, float** %16, align 8, !dbg !240, !tbaa !236
  %17 = load i32* %2, align 4, !dbg !241, !tbaa !232
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %17, i32 4) #5, !dbg !241
  %18 = bitcast i8* %call13 to float*, !dbg !241
  %chargeB = getelementptr inbounds i8* %call, i64 48, !dbg !241
  %19 = bitcast i8* %chargeB to float**, !dbg !241
  store float* %18, float** %19, align 8, !dbg !241, !tbaa !236
  %20 = load i32* %2, align 4, !dbg !242, !tbaa !232
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 58, i32 %20, i32 4) #5, !dbg !242
  %21 = bitcast i8* %call15 to float*, !dbg !242
  %chargeT = getelementptr inbounds i8* %call, i64 56, !dbg !242
  %22 = bitcast i8* %chargeT to float**, !dbg !242
  store float* %21, float** %22, align 8, !dbg !242, !tbaa !236
  %23 = load i32* %2, align 4, !dbg !243, !tbaa !232
  %call17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 59, i32 %23, i32 4) #5, !dbg !243
  %24 = bitcast i8* %call17 to i32*, !dbg !243
  %resnr = getelementptr inbounds i8* %call, i64 72, !dbg !243
  %25 = bitcast i8* %resnr to i32**, !dbg !243
  store i32* %24, i32** %25, align 8, !dbg !243, !tbaa !236
  %26 = load i32* %2, align 4, !dbg !244, !tbaa !232
  %call19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 60, i32 %26, i32 4) #5, !dbg !244
  %27 = bitcast i8* %call19 to i32*, !dbg !244
  %typeA = getelementptr inbounds i8* %call, i64 80, !dbg !244
  %28 = bitcast i8* %typeA to i32**, !dbg !244
  store i32* %27, i32** %28, align 8, !dbg !244, !tbaa !236
  %29 = load i32* %2, align 4, !dbg !245, !tbaa !232
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %29, i32 4) #5, !dbg !245
  %30 = bitcast i8* %call21 to i32*, !dbg !245
  %typeB = getelementptr inbounds i8* %call, i64 88, !dbg !245
  %31 = bitcast i8* %typeB to i32**, !dbg !245
  store i32* %30, i32** %31, align 8, !dbg !245, !tbaa !236
  %32 = load i32* %2, align 4, !dbg !246, !tbaa !232
  %call23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %32, i32 2) #5, !dbg !246
  %33 = bitcast i8* %call23 to i16*, !dbg !246
  %ptype = getelementptr inbounds i8* %call, i64 96, !dbg !246
  %34 = bitcast i8* %ptype to i16**, !dbg !246
  store i16* %33, i16** %34, align 8, !dbg !246, !tbaa !236
  %35 = load i32* %2, align 4, !dbg !247, !tbaa !232
  %call25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %35, i32 2) #5, !dbg !247
  %36 = bitcast i8* %call25 to i16*, !dbg !247
  %cTC = getelementptr inbounds i8* %call, i64 104, !dbg !247
  %37 = bitcast i8* %cTC to i16**, !dbg !247
  store i16* %36, i16** %37, align 8, !dbg !247, !tbaa !236
  %38 = load i32* %2, align 4, !dbg !248, !tbaa !232
  %call27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %38, i32 2) #5, !dbg !248
  %39 = bitcast i8* %call27 to i16*, !dbg !248
  %cENER = getelementptr inbounds i8* %call, i64 112, !dbg !248
  %40 = bitcast i8* %cENER to i16**, !dbg !248
  store i16* %39, i16** %40, align 8, !dbg !248, !tbaa !236
  %41 = load i32* %2, align 4, !dbg !249, !tbaa !232
  %call29 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 65, i32 %41, i32 2) #5, !dbg !249
  %42 = bitcast i8* %call29 to i16*, !dbg !249
  %cACC = getelementptr inbounds i8* %call, i64 120, !dbg !249
  %43 = bitcast i8* %cACC to i16**, !dbg !249
  store i16* %42, i16** %43, align 8, !dbg !249, !tbaa !236
  %44 = load i32* %2, align 4, !dbg !250, !tbaa !232
  %call31 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %44, i32 2) #5, !dbg !250
  %45 = bitcast i8* %call31 to i16*, !dbg !250
  %cFREEZE = getelementptr inbounds i8* %call, i64 128, !dbg !250
  %46 = bitcast i8* %cFREEZE to i16**, !dbg !250
  store i16* %45, i16** %46, align 8, !dbg !250, !tbaa !236
  %47 = load i32* %2, align 4, !dbg !251, !tbaa !232
  %call33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %47, i32 2) #5, !dbg !251
  %48 = bitcast i8* %call33 to i16*, !dbg !251
  %cXTC = getelementptr inbounds i8* %call, i64 136, !dbg !251
  %49 = bitcast i8* %cXTC to i16**, !dbg !251
  store i16* %48, i16** %49, align 8, !dbg !251, !tbaa !236
  %50 = load i32* %2, align 4, !dbg !252, !tbaa !232
  %call35 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %50, i32 2) #5, !dbg !252
  %51 = bitcast i8* %call35 to i16*, !dbg !252
  %cVCM = getelementptr inbounds i8* %call, i64 144, !dbg !252
  %52 = bitcast i8* %cVCM to i16**, !dbg !252
  store i16* %51, i16** %52, align 8, !dbg !252, !tbaa !236
  %53 = load i32* %2, align 4, !dbg !253, !tbaa !232
  %call37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %53, i32 2) #5, !dbg !253
  %54 = bitcast i8* %call37 to i16*, !dbg !253
  %cORF = getelementptr inbounds i8* %call, i64 168, !dbg !253
  %55 = bitcast i8* %cORF to i16**, !dbg !253
  store i16* %54, i16** %55, align 8, !dbg !253, !tbaa !236
  %56 = load i32* %2, align 4, !dbg !254, !tbaa !232
  %call39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 70, i32 %56, i32 4) #5, !dbg !254
  %57 = bitcast i8* %call39 to i32*, !dbg !254
  %bPerturbed = getelementptr inbounds i8* %call, i64 64, !dbg !254
  %58 = bitcast i8* %bPerturbed to i32**, !dbg !254
  store i32* %57, i32** %58, align 8, !dbg !254, !tbaa !236
  %59 = load i32* %2, align 4, !dbg !255, !tbaa !232
  %call41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %59, i32 2) #5, !dbg !255
  %60 = bitcast i8* %call41 to i16*, !dbg !255
  %cU1 = getelementptr inbounds i8* %call, i64 152, !dbg !255
  %61 = bitcast i8* %cU1 to i16**, !dbg !255
  store i16* %60, i16** %61, align 8, !dbg !255, !tbaa !236
  %62 = load i32* %2, align 4, !dbg !256, !tbaa !232
  %call43 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 73, i32 %62, i32 2) #5, !dbg !256
  %63 = bitcast i8* %call43 to i16*, !dbg !256
  %cU2 = getelementptr inbounds i8* %call, i64 160, !dbg !256
  %64 = bitcast i8* %cU2 to i16**, !dbg !256
  store i16* %63, i16** %64, align 8, !dbg !256, !tbaa !236
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !201), !dbg !257
  tail call void @llvm.dbg.value(metadata !258, i64 0, metadata !204), !dbg !259
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !200), !dbg !260
  %65 = load i32* %2, align 4, !dbg !260, !tbaa !232
  %cmp519 = icmp sgt i32 %65, 0, !dbg !260
  br i1 %cmp519, label %for.body.lr.ph, label %for.end, !dbg !260

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32 %bBD, 0, !dbg !262
  %atom75 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !264
  %tobool258 = icmp eq i32 %bPert, 0, !dbg !266
  %mul = fmul float %delta_t, %fric, !dbg !267
  br label %for.body, !dbg !260

for.body:                                         ; preds = %for.body.lr.ph, %if.end309
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end309 ]
  %tm.0521 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %tm.1, %if.end309 ]
  %np.0520 = phi i32 [ 0, %for.body.lr.ph ], [ %np.1, %if.end309 ]
  br i1 %tobool, label %if.else73, label %if.then, !dbg !262

if.then:                                          ; preds = %for.body
  %fabsf518 = tail call float @fabsf(float %fric) #2, !dbg !270
  %66 = fpext float %fabsf518 to double, !dbg !270
  %cmp46 = fcmp ogt double %66, 1.200000e-38, !dbg !270
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !270

if.then48:                                        ; preds = %if.then
  %67 = load float** %4, align 8, !dbg !267, !tbaa !236
  %arrayidx = getelementptr inbounds float* %67, i64 %indvars.iv, !dbg !267
  store float %mul, float* %arrayidx, align 4, !dbg !267, !tbaa !271
  %68 = load float** %7, align 8, !dbg !272, !tbaa !236
  %arrayidx53 = getelementptr inbounds float* %68, i64 %indvars.iv, !dbg !272
  store float %mul, float* %arrayidx53, align 4, !dbg !272, !tbaa !271
  %.pre = load %struct.t_atom** %atom75, align 8, !dbg !273, !tbaa !236
  br label %if.end88, !dbg !274

if.else:                                          ; preds = %if.then
  %69 = load %struct.t_atom** %atom75, align 8, !dbg !275, !tbaa !236
  %arrayidx56 = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 8, i64 0, !dbg !275
  %70 = load i8* %arrayidx56, align 1, !dbg !275, !tbaa !233
  %idxprom57 = zext i8 %70 to i64, !dbg !275
  %arrayidx58 = getelementptr inbounds float* %tau_t, i64 %idxprom57, !dbg !275
  %71 = load float* %arrayidx58, align 4, !dbg !275, !tbaa !271
  %div = fdiv float %delta_t, %71, !dbg !275
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !203), !dbg !275
  %m = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 0, !dbg !277
  %72 = load float* %m, align 4, !dbg !277, !tbaa !271
  %mul62 = fmul float %div, %72, !dbg !277
  %73 = load float** %4, align 8, !dbg !277, !tbaa !236
  %arrayidx65 = getelementptr inbounds float* %73, i64 %indvars.iv, !dbg !277
  store float %mul62, float* %arrayidx65, align 4, !dbg !277, !tbaa !271
  %mB = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 2, !dbg !278
  %74 = load float* %mB, align 4, !dbg !278, !tbaa !271
  %mul69 = fmul float %div, %74, !dbg !278
  %75 = load float** %7, align 8, !dbg !278, !tbaa !236
  %arrayidx72 = getelementptr inbounds float* %75, i64 %indvars.iv, !dbg !278
  store float %mul69, float* %arrayidx72, align 4, !dbg !278, !tbaa !271
  br label %if.end88

if.else73:                                        ; preds = %for.body
  %76 = load %struct.t_atom** %atom75, align 8, !dbg !264, !tbaa !236
  %m77 = getelementptr inbounds %struct.t_atom* %76, i64 %indvars.iv, i32 0, !dbg !264
  %77 = load float* %m77, align 4, !dbg !264, !tbaa !271
  %78 = load float** %4, align 8, !dbg !264, !tbaa !236
  %arrayidx80 = getelementptr inbounds float* %78, i64 %indvars.iv, !dbg !264
  store float %77, float* %arrayidx80, align 4, !dbg !264, !tbaa !271
  %mB84 = getelementptr inbounds %struct.t_atom* %76, i64 %indvars.iv, i32 2, !dbg !279
  %79 = load float* %mB84, align 4, !dbg !279, !tbaa !271
  %80 = load float** %7, align 8, !dbg !279, !tbaa !236
  %arrayidx87 = getelementptr inbounds float* %80, i64 %indvars.iv, !dbg !279
  store float %79, float* %arrayidx87, align 4, !dbg !279, !tbaa !271
  br label %if.end88

if.end88:                                         ; preds = %if.then48, %if.else, %if.else73
  %81 = phi %struct.t_atom* [ %.pre, %if.then48 ], [ %69, %if.else ], [ %76, %if.else73 ]
  %82 = phi float* [ %67, %if.then48 ], [ %73, %if.else ], [ %78, %if.else73 ]
  %arrayidx91 = getelementptr inbounds float* %82, i64 %indvars.iv, !dbg !280
  %83 = load float* %arrayidx91, align 4, !dbg !280, !tbaa !271
  %84 = load float** %10, align 8, !dbg !280, !tbaa !236
  %arrayidx94 = getelementptr inbounds float* %84, i64 %indvars.iv, !dbg !280
  store float %83, float* %arrayidx94, align 4, !dbg !280, !tbaa !271
  %q = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 1, !dbg !273
  %85 = load float* %q, align 4, !dbg !273, !tbaa !271
  %86 = load float** %16, align 8, !dbg !273, !tbaa !236
  %arrayidx100 = getelementptr inbounds float* %86, i64 %indvars.iv, !dbg !273
  store float %85, float* %arrayidx100, align 4, !dbg !273, !tbaa !271
  %qB = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 3, !dbg !281
  %87 = load float* %qB, align 4, !dbg !281, !tbaa !271
  %88 = load float** %19, align 8, !dbg !281, !tbaa !236
  %arrayidx106 = getelementptr inbounds float* %88, i64 %indvars.iv, !dbg !281
  store float %87, float* %arrayidx106, align 4, !dbg !281, !tbaa !271
  %resnr110 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 7, !dbg !282
  %89 = load i32* %resnr110, align 4, !dbg !282, !tbaa !232
  %90 = load i32** %25, align 8, !dbg !282, !tbaa !236
  %arrayidx113 = getelementptr inbounds i32* %90, i64 %indvars.iv, !dbg !282
  store i32 %89, i32* %arrayidx113, align 4, !dbg !282, !tbaa !232
  %type = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 4, !dbg !283
  %91 = load i16* %type, align 2, !dbg !283, !tbaa !284
  %conv117 = zext i16 %91 to i32, !dbg !283
  %92 = load i32** %28, align 8, !dbg !283, !tbaa !236
  %arrayidx120 = getelementptr inbounds i32* %92, i64 %indvars.iv, !dbg !283
  store i32 %conv117, i32* %arrayidx120, align 4, !dbg !283, !tbaa !232
  %typeB124 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 5, !dbg !285
  %93 = load i16* %typeB124, align 2, !dbg !285, !tbaa !284
  %conv125 = zext i16 %93 to i32, !dbg !285
  %94 = load i32** %31, align 8, !dbg !285, !tbaa !236
  %arrayidx128 = getelementptr inbounds i32* %94, i64 %indvars.iv, !dbg !285
  store i32 %conv125, i32* %arrayidx128, align 4, !dbg !285, !tbaa !232
  %ptype132 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 6, !dbg !286
  %95 = load i32* %ptype132, align 4, !dbg !286, !tbaa !232
  %conv133 = trunc i32 %95 to i16, !dbg !286
  %96 = load i16** %34, align 8, !dbg !286, !tbaa !236
  %arrayidx136 = getelementptr inbounds i16* %96, i64 %indvars.iv, !dbg !286
  store i16 %conv133, i16* %arrayidx136, align 2, !dbg !286, !tbaa !284
  %arrayidx141 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 0, !dbg !287
  %97 = load i8* %arrayidx141, align 1, !dbg !287, !tbaa !233
  %conv142 = zext i8 %97 to i16, !dbg !287
  %98 = load i16** %37, align 8, !dbg !287, !tbaa !236
  %arrayidx145 = getelementptr inbounds i16* %98, i64 %indvars.iv, !dbg !287
  store i16 %conv142, i16* %arrayidx145, align 2, !dbg !287, !tbaa !284
  %arrayidx150 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 1, !dbg !288
  %99 = load i8* %arrayidx150, align 1, !dbg !288, !tbaa !233
  %conv151 = zext i8 %99 to i16, !dbg !288
  %100 = load i16** %40, align 8, !dbg !288, !tbaa !236
  %arrayidx154 = getelementptr inbounds i16* %100, i64 %indvars.iv, !dbg !288
  store i16 %conv151, i16* %arrayidx154, align 2, !dbg !288, !tbaa !284
  %arrayidx159 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 2, !dbg !289
  %101 = load i8* %arrayidx159, align 1, !dbg !289, !tbaa !233
  %conv160 = zext i8 %101 to i16, !dbg !289
  %102 = load i16** %43, align 8, !dbg !289, !tbaa !236
  %arrayidx163 = getelementptr inbounds i16* %102, i64 %indvars.iv, !dbg !289
  store i16 %conv160, i16* %arrayidx163, align 2, !dbg !289, !tbaa !284
  %arrayidx168 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 3, !dbg !290
  %103 = load i8* %arrayidx168, align 1, !dbg !290, !tbaa !233
  %conv169 = zext i8 %103 to i16, !dbg !290
  %104 = load i16** %46, align 8, !dbg !290, !tbaa !236
  %arrayidx172 = getelementptr inbounds i16* %104, i64 %indvars.iv, !dbg !290
  store i16 %conv169, i16* %arrayidx172, align 2, !dbg !290, !tbaa !284
  %arrayidx177 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 7, !dbg !291
  %105 = load i8* %arrayidx177, align 1, !dbg !291, !tbaa !233
  %conv178 = zext i8 %105 to i16, !dbg !291
  %106 = load i16** %49, align 8, !dbg !291, !tbaa !236
  %arrayidx181 = getelementptr inbounds i16* %106, i64 %indvars.iv, !dbg !291
  store i16 %conv178, i16* %arrayidx181, align 2, !dbg !291, !tbaa !284
  %arrayidx186 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 6, !dbg !292
  %107 = load i8* %arrayidx186, align 1, !dbg !292, !tbaa !233
  %conv187 = zext i8 %107 to i16, !dbg !292
  %108 = load i16** %52, align 8, !dbg !292, !tbaa !236
  %arrayidx190 = getelementptr inbounds i16* %108, i64 %indvars.iv, !dbg !292
  store i16 %conv187, i16* %arrayidx190, align 2, !dbg !292, !tbaa !284
  %arrayidx195 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 8, !dbg !293
  %109 = load i8* %arrayidx195, align 1, !dbg !293, !tbaa !233
  %conv196 = zext i8 %109 to i16, !dbg !293
  %110 = load i16** %55, align 8, !dbg !293, !tbaa !236
  %arrayidx199 = getelementptr inbounds i16* %110, i64 %indvars.iv, !dbg !293
  store i16 %conv196, i16* %arrayidx199, align 2, !dbg !293, !tbaa !284
  %111 = load float* %arrayidx91, align 4, !dbg !294, !tbaa !271
  %fabsf = tail call float @fabsf(float %111) #2, !dbg !294
  %112 = fpext float %fabsf to double, !dbg !294
  %cmp205 = fcmp ogt double %112, 1.200000e-38, !dbg !294
  br i1 %cmp205, label %if.then207, label %if.end257, !dbg !294

if.then207:                                       ; preds = %if.end88
  %113 = load float* %arrayidx94, align 4, !dbg !295, !tbaa !271
  %conv211 = fpext float %113 to double, !dbg !295
  %add = fadd double %tm.0521, %conv211, !dbg !295
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !204), !dbg !295
  %114 = load i16* %arrayidx172, align 2, !dbg !297, !tbaa !284
  %idxprom216 = zext i16 %114 to i64, !dbg !298
  %arrayidx218 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 0, !dbg !298
  %115 = load i32* %arrayidx218, align 4, !dbg !298, !tbaa !232
  %tobool219 = icmp eq i32 %115, 0, !dbg !298
  br i1 %tobool219, label %if.else233, label %land.lhs.true, !dbg !298

land.lhs.true:                                    ; preds = %if.then207
  %arrayidx222 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 1, !dbg !298
  %116 = load i32* %arrayidx222, align 4, !dbg !298, !tbaa !232
  %tobool223 = icmp eq i32 %116, 0, !dbg !298
  br i1 %tobool223, label %if.else233, label %land.lhs.true224, !dbg !298

land.lhs.true224:                                 ; preds = %land.lhs.true
  %arrayidx227 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 2, !dbg !298
  %117 = load i32* %arrayidx227, align 4, !dbg !298, !tbaa !232
  %tobool228 = icmp eq i32 %117, 0, !dbg !298
  br i1 %tobool228, label %if.else233, label %if.then229, !dbg !298

if.then229:                                       ; preds = %land.lhs.true224
  %118 = load float** %13, align 8, !dbg !299, !tbaa !236
  %arrayidx232 = getelementptr inbounds float* %118, i64 %indvars.iv, !dbg !299
  store float 0x39B4484C00000000, float* %arrayidx232, align 4, !dbg !299, !tbaa !271
  br label %if.end257, !dbg !299

if.else233:                                       ; preds = %land.lhs.true224, %land.lhs.true, %if.then207
  %fabsf517 = tail call float @fabsf(float %113) #2, !dbg !300
  %119 = fpext float %fabsf517 to double, !dbg !300
  %cmp239 = fcmp olt double %119, 1.200000e-38, !dbg !300
  br i1 %cmp239, label %if.then241, label %if.else245, !dbg !300

if.then241:                                       ; preds = %if.else233
  %120 = load float** %13, align 8, !dbg !301, !tbaa !236
  %arrayidx244 = getelementptr inbounds float* %120, i64 %indvars.iv, !dbg !301
  store float 0.000000e+00, float* %arrayidx244, align 4, !dbg !301, !tbaa !271
  br label %if.end257, !dbg !301

if.else245:                                       ; preds = %if.else233
  %conv251 = fdiv float 1.000000e+00, %113, !dbg !302
  %121 = load float** %13, align 8, !dbg !302, !tbaa !236
  %arrayidx254 = getelementptr inbounds float* %121, i64 %indvars.iv, !dbg !302
  store float %conv251, float* %arrayidx254, align 4, !dbg !302, !tbaa !271
  br label %if.end257

if.end257:                                        ; preds = %if.then229, %if.else245, %if.then241, %if.end88
  %tm.1 = phi double [ %add, %if.then229 ], [ %add, %if.then241 ], [ %add, %if.else245 ], [ %tm.0521, %if.end88 ]
  br i1 %tobool258, label %if.end309, label %if.then259, !dbg !266

if.then259:                                       ; preds = %if.end257
  %mB263 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 2, !dbg !303
  %122 = load float* %mB263, align 4, !dbg !303, !tbaa !271
  %m267 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 0, !dbg !303
  %123 = load float* %m267, align 4, !dbg !303, !tbaa !271
  %sub = fsub float %122, %123, !dbg !303
  %fabsf515 = tail call float @fabsf(float %sub) #2, !dbg !303
  %124 = fpext float %fabsf515 to double, !dbg !303
  %cmp270 = fcmp ogt double %124, 1.200000e-38, !dbg !303
  br i1 %cmp270, label %lor.end, label %lor.lhs.false, !dbg !303

lor.lhs.false:                                    ; preds = %if.then259
  %125 = load float* %qB, align 4, !dbg !303, !tbaa !271
  %126 = load float* %q, align 4, !dbg !303, !tbaa !271
  %sub280 = fsub float %125, %126, !dbg !303
  %fabsf516 = tail call float @fabsf(float %sub280) #2, !dbg !303
  %127 = fpext float %fabsf516 to double, !dbg !303
  %cmp283 = fcmp ogt double %127, 1.200000e-38, !dbg !303
  br i1 %cmp283, label %lor.end, label %lor.rhs, !dbg !303

lor.rhs:                                          ; preds = %lor.lhs.false
  %128 = load i16* %typeB124, align 2, !dbg !303, !tbaa !284
  %conv289 = zext i16 %128 to i32, !dbg !303
  %129 = load i16* %type, align 2, !dbg !303, !tbaa !284
  %conv294 = zext i16 %129 to i32, !dbg !303
  %sub295 = sub nsw i32 %conv289, %conv294, !dbg !303
  %conv296 = sitofp i32 %sub295 to double, !dbg !303
  %call297 = tail call double @fabs(double %conv296) #6, !dbg !303
  %cmp298 = fcmp ogt double %call297, 1.200000e-38, !dbg !303
  br label %lor.end, !dbg !303

lor.end:                                          ; preds = %lor.lhs.false, %if.then259, %lor.rhs
  %130 = phi i1 [ %cmp298, %lor.rhs ], [ true, %if.then259 ], [ true, %lor.lhs.false ]
  %lor.ext = zext i1 %130 to i32, !dbg !303
  %131 = load i32** %58, align 8, !dbg !303, !tbaa !236
  %arrayidx302 = getelementptr inbounds i32* %131, i64 %indvars.iv, !dbg !303
  store i32 %lor.ext, i32* %arrayidx302, align 4, !dbg !303, !tbaa !232
  %np.0.inc = add nsw i32 %lor.ext, %np.0520, !dbg !305
  br label %if.end309, !dbg !305

if.end309:                                        ; preds = %if.end257, %lor.end
  %np.1 = phi i32 [ %np.0.inc, %lor.end ], [ %np.0520, %if.end257 ]
  %arrayidx314 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 4, !dbg !306
  %132 = load i8* %arrayidx314, align 1, !dbg !306, !tbaa !233
  %conv315 = zext i8 %132 to i16, !dbg !306
  %133 = load i16** %61, align 8, !dbg !306, !tbaa !236
  %arrayidx318 = getelementptr inbounds i16* %133, i64 %indvars.iv, !dbg !306
  store i16 %conv315, i16* %arrayidx318, align 2, !dbg !306, !tbaa !284
  %arrayidx323 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 5, !dbg !307
  %134 = load i8* %arrayidx323, align 1, !dbg !307, !tbaa !233
  %conv324 = zext i8 %134 to i16, !dbg !307
  %arrayidx327 = getelementptr inbounds i16* %63, i64 %indvars.iv, !dbg !307
  store i16 %conv324, i16* %arrayidx327, align 2, !dbg !307, !tbaa !284
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !260
  %135 = load i32* %2, align 4, !dbg !260, !tbaa !232
  %136 = trunc i64 %indvars.iv.next to i32, !dbg !260
  %cmp = icmp slt i32 %136, %135, !dbg !260
  br i1 %cmp, label %for.body, label %for.end, !dbg !260

for.end:                                          ; preds = %if.end309, %entry
  %tm.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %tm.1, %if.end309 ]
  %np.0.lcssa = phi i32 [ 0, %entry ], [ %np.1, %if.end309 ]
  %conv329 = fptrunc double %tm.0.lcssa to float, !dbg !308
  %tmass = bitcast i8* %call to float*, !dbg !308
  store float %conv329, float* %tmass, align 4, !dbg !308, !tbaa !271
  %tobool330 = icmp eq i32 %bFree, 0, !dbg !309
  br i1 %tobool330, label %if.end334, label %if.then331, !dbg !309

if.then331:                                       ; preds = %for.end
  %atom332 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !310
  %137 = load %struct.t_atom** %atom332, align 8, !dbg !310, !tbaa !236
  %138 = bitcast %struct.t_atom* %137 to i8*, !dbg !310
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 133, i8* %138) #5, !dbg !310
  store %struct.t_atom* null, %struct.t_atom** %atom332, align 8, !dbg !312, !tbaa !236
  br label %if.end334, !dbg !313

if.end334:                                        ; preds = %for.end, %if.then331
  %tobool335 = icmp eq %struct._IO_FILE* %fp, null, !dbg !314
  br i1 %tobool335, label %if.end338, label %if.then336, !dbg !314

if.then336:                                       ; preds = %if.end334
  %call337 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), i32 %np.0.lcssa) #5, !dbg !315
  br label %if.end338, !dbg !315

if.end338:                                        ; preds = %if.end334, %if.then336
  ret %struct.t_mdatoms* %0, !dbg !316
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @md2atoms(%struct.t_mdatoms* %md, %struct.t_atoms* nocapture %atoms, i32 %bFree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !211), !dbg !317
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !212), !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %bFree}, i64 0, metadata !213), !dbg !317
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !318
  %0 = load i32* %nr, align 4, !dbg !318, !tbaa !232
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 147, i32 %0, i32 40) #5, !dbg !318
  %1 = bitcast i8* %call to %struct.t_atom*, !dbg !318
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !318
  store %struct.t_atom* %1, %struct.t_atom** %atom, align 8, !dbg !318, !tbaa !236
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !214), !dbg !319
  %2 = load i32* %nr, align 4, !dbg !319, !tbaa !232
  %cmp191 = icmp sgt i32 %2, 0, !dbg !319
  br i1 %cmp191, label %for.body.lr.ph, label %for.end, !dbg !319

for.body.lr.ph:                                   ; preds = %entry
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !321
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !323
  %resnr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10, !dbg !324
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !325
  %ptype = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !326
  %cTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14, !dbg !327
  %cENER = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15, !dbg !328
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !329
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17, !dbg !330
  %cVCM = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19, !dbg !331
  %cXTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !332
  %cORF = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22, !dbg !333
  %cU1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20, !dbg !334
  %cU2 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21, !dbg !335
  br label %for.body, !dbg !319

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %3 = phi %struct.t_atom* [ %1, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = load float** %massT, align 8, !dbg !321, !tbaa !236
  %arrayidx = getelementptr inbounds float* %4, i64 %indvars.iv, !dbg !321
  %5 = load float* %arrayidx, align 4, !dbg !321, !tbaa !271
  %m = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 0, !dbg !321
  store float %5, float* %m, align 4, !dbg !321, !tbaa !271
  %6 = load float** %chargeT, align 8, !dbg !323, !tbaa !236
  %arrayidx6 = getelementptr inbounds float* %6, i64 %indvars.iv, !dbg !323
  %7 = load float* %arrayidx6, align 4, !dbg !323, !tbaa !271
  %q = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 1, !dbg !323
  store float %7, float* %q, align 4, !dbg !323, !tbaa !271
  %8 = load i32** %resnr, align 8, !dbg !324, !tbaa !236
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !324
  %9 = load i32* %arrayidx11, align 4, !dbg !324, !tbaa !232
  %resnr15 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 7, !dbg !324
  store i32 %9, i32* %resnr15, align 4, !dbg !324, !tbaa !232
  %10 = load i32** %typeA, align 8, !dbg !325, !tbaa !236
  %arrayidx17 = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !325
  %11 = load i32* %arrayidx17, align 4, !dbg !325, !tbaa !232
  %conv = trunc i32 %11 to i16, !dbg !325
  %type = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 4, !dbg !325
  store i16 %conv, i16* %type, align 2, !dbg !325, !tbaa !284
  %12 = load i16** %ptype, align 8, !dbg !326, !tbaa !236
  %arrayidx22 = getelementptr inbounds i16* %12, i64 %indvars.iv, !dbg !326
  %13 = load i16* %arrayidx22, align 2, !dbg !326, !tbaa !284
  %conv23 = zext i16 %13 to i32, !dbg !326
  %ptype27 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 6, !dbg !326
  store i32 %conv23, i32* %ptype27, align 4, !dbg !326, !tbaa !232
  %14 = load i16** %cTC, align 8, !dbg !327, !tbaa !236
  %arrayidx29 = getelementptr inbounds i16* %14, i64 %indvars.iv, !dbg !327
  %15 = load i16* %arrayidx29, align 2, !dbg !327, !tbaa !284
  %conv30 = trunc i16 %15 to i8, !dbg !327
  %arrayidx34 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 8, i64 0, !dbg !327
  store i8 %conv30, i8* %arrayidx34, align 1, !dbg !327, !tbaa !233
  %16 = load i16** %cENER, align 8, !dbg !328, !tbaa !236
  %arrayidx36 = getelementptr inbounds i16* %16, i64 %indvars.iv, !dbg !328
  %17 = load i16* %arrayidx36, align 2, !dbg !328, !tbaa !284
  %conv37 = trunc i16 %17 to i8, !dbg !328
  %18 = load %struct.t_atom** %atom, align 8, !dbg !328, !tbaa !236
  %arrayidx42 = getelementptr inbounds %struct.t_atom* %18, i64 %indvars.iv, i32 8, i64 1, !dbg !328
  store i8 %conv37, i8* %arrayidx42, align 1, !dbg !328, !tbaa !233
  %19 = load i16** %cACC, align 8, !dbg !329, !tbaa !236
  %arrayidx44 = getelementptr inbounds i16* %19, i64 %indvars.iv, !dbg !329
  %20 = load i16* %arrayidx44, align 2, !dbg !329, !tbaa !284
  %conv45 = trunc i16 %20 to i8, !dbg !329
  %21 = load %struct.t_atom** %atom, align 8, !dbg !329, !tbaa !236
  %arrayidx50 = getelementptr inbounds %struct.t_atom* %21, i64 %indvars.iv, i32 8, i64 2, !dbg !329
  store i8 %conv45, i8* %arrayidx50, align 1, !dbg !329, !tbaa !233
  %22 = load i16** %cFREEZE, align 8, !dbg !330, !tbaa !236
  %arrayidx52 = getelementptr inbounds i16* %22, i64 %indvars.iv, !dbg !330
  %23 = load i16* %arrayidx52, align 2, !dbg !330, !tbaa !284
  %conv53 = trunc i16 %23 to i8, !dbg !330
  %24 = load %struct.t_atom** %atom, align 8, !dbg !330, !tbaa !236
  %arrayidx58 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 8, i64 3, !dbg !330
  store i8 %conv53, i8* %arrayidx58, align 1, !dbg !330, !tbaa !233
  %25 = load i16** %cVCM, align 8, !dbg !331, !tbaa !236
  %arrayidx60 = getelementptr inbounds i16* %25, i64 %indvars.iv, !dbg !331
  %26 = load i16* %arrayidx60, align 2, !dbg !331, !tbaa !284
  %conv61 = trunc i16 %26 to i8, !dbg !331
  %27 = load %struct.t_atom** %atom, align 8, !dbg !331, !tbaa !236
  %arrayidx66 = getelementptr inbounds %struct.t_atom* %27, i64 %indvars.iv, i32 8, i64 6, !dbg !331
  store i8 %conv61, i8* %arrayidx66, align 1, !dbg !331, !tbaa !233
  %28 = load i16** %cXTC, align 8, !dbg !332, !tbaa !236
  %arrayidx68 = getelementptr inbounds i16* %28, i64 %indvars.iv, !dbg !332
  %29 = load i16* %arrayidx68, align 2, !dbg !332, !tbaa !284
  %conv69 = trunc i16 %29 to i8, !dbg !332
  %30 = load %struct.t_atom** %atom, align 8, !dbg !332, !tbaa !236
  %arrayidx74 = getelementptr inbounds %struct.t_atom* %30, i64 %indvars.iv, i32 8, i64 7, !dbg !332
  store i8 %conv69, i8* %arrayidx74, align 1, !dbg !332, !tbaa !233
  %31 = load i16** %cORF, align 8, !dbg !333, !tbaa !236
  %arrayidx76 = getelementptr inbounds i16* %31, i64 %indvars.iv, !dbg !333
  %32 = load i16* %arrayidx76, align 2, !dbg !333, !tbaa !284
  %conv77 = trunc i16 %32 to i8, !dbg !333
  %33 = load %struct.t_atom** %atom, align 8, !dbg !333, !tbaa !236
  %arrayidx82 = getelementptr inbounds %struct.t_atom* %33, i64 %indvars.iv, i32 8, i64 8, !dbg !333
  store i8 %conv77, i8* %arrayidx82, align 1, !dbg !333, !tbaa !233
  %34 = load i16** %cU1, align 8, !dbg !334, !tbaa !236
  %arrayidx84 = getelementptr inbounds i16* %34, i64 %indvars.iv, !dbg !334
  %35 = load i16* %arrayidx84, align 2, !dbg !334, !tbaa !284
  %conv85 = trunc i16 %35 to i8, !dbg !334
  %36 = load %struct.t_atom** %atom, align 8, !dbg !334, !tbaa !236
  %arrayidx90 = getelementptr inbounds %struct.t_atom* %36, i64 %indvars.iv, i32 8, i64 4, !dbg !334
  store i8 %conv85, i8* %arrayidx90, align 1, !dbg !334, !tbaa !233
  %37 = load i16** %cU2, align 8, !dbg !335, !tbaa !236
  %arrayidx92 = getelementptr inbounds i16* %37, i64 %indvars.iv, !dbg !335
  %38 = load i16* %arrayidx92, align 2, !dbg !335, !tbaa !284
  %conv93 = trunc i16 %38 to i8, !dbg !335
  %39 = load %struct.t_atom** %atom, align 8, !dbg !335, !tbaa !236
  %arrayidx98 = getelementptr inbounds %struct.t_atom* %39, i64 %indvars.iv, i32 8, i64 5, !dbg !335
  store i8 %conv93, i8* %arrayidx98, align 1, !dbg !335, !tbaa !233
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !319
  %40 = load i32* %nr, align 4, !dbg !319, !tbaa !232
  %41 = trunc i64 %indvars.iv.next to i32, !dbg !319
  %cmp = icmp slt i32 %41, %40, !dbg !319
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end, !dbg !319

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.t_atom** %atom, align 8, !dbg !321, !tbaa !236
  br label %for.body, !dbg !319

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bFree, 0, !dbg !336
  br i1 %tobool, label %if.end, label %if.then, !dbg !336

if.then:                                          ; preds = %for.end
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2, !dbg !337
  %42 = load float** %massA, align 8, !dbg !337, !tbaa !236
  %43 = bitcast float* %42 to i8*, !dbg !337
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %43) #5, !dbg !337
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3, !dbg !339
  %44 = load float** %massB, align 8, !dbg !339, !tbaa !236
  %45 = bitcast float* %44 to i8*, !dbg !339
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %45) #5, !dbg !339
  %massT99 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !340
  %46 = load float** %massT99, align 8, !dbg !340, !tbaa !236
  %47 = bitcast float* %46 to i8*, !dbg !340
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %47) #5, !dbg !340
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !341
  %48 = load float** %invmass, align 8, !dbg !341, !tbaa !236
  %49 = bitcast float* %48 to i8*, !dbg !341
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %49) #5, !dbg !341
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !342
  %50 = load float** %chargeA, align 8, !dbg !342, !tbaa !236
  %51 = bitcast float* %50 to i8*, !dbg !342
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %51) #5, !dbg !342
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !343
  %52 = load float** %chargeB, align 8, !dbg !343, !tbaa !236
  %53 = bitcast float* %52 to i8*, !dbg !343
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 172, i8* %53) #5, !dbg !343
  %chargeT100 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !344
  %54 = load float** %chargeT100, align 8, !dbg !344, !tbaa !236
  %55 = bitcast float* %54 to i8*, !dbg !344
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %55) #5, !dbg !344
  %resnr101 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10, !dbg !345
  %56 = load i32** %resnr101, align 8, !dbg !345, !tbaa !236
  %57 = bitcast i32* %56 to i8*, !dbg !345
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %57) #5, !dbg !345
  %typeA102 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !346
  %58 = load i32** %typeA102, align 8, !dbg !346, !tbaa !236
  %59 = bitcast i32* %58 to i8*, !dbg !346
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 175, i8* %59) #5, !dbg !346
  %typeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12, !dbg !347
  %60 = load i32** %typeB, align 8, !dbg !347, !tbaa !236
  %61 = bitcast i32* %60 to i8*, !dbg !347
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 176, i8* %61) #5, !dbg !347
  %ptype103 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !348
  %62 = load i16** %ptype103, align 8, !dbg !348, !tbaa !236
  %63 = bitcast i16* %62 to i8*, !dbg !348
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 177, i8* %63) #5, !dbg !348
  %cTC104 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14, !dbg !349
  %64 = load i16** %cTC104, align 8, !dbg !349, !tbaa !236
  %65 = bitcast i16* %64 to i8*, !dbg !349
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 178, i8* %65) #5, !dbg !349
  %cENER105 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15, !dbg !350
  %66 = load i16** %cENER105, align 8, !dbg !350, !tbaa !236
  %67 = bitcast i16* %66 to i8*, !dbg !350
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 179, i8* %67) #5, !dbg !350
  %cACC106 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !351
  %68 = load i16** %cACC106, align 8, !dbg !351, !tbaa !236
  %69 = bitcast i16* %68 to i8*, !dbg !351
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %69) #5, !dbg !351
  %cFREEZE107 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17, !dbg !352
  %70 = load i16** %cFREEZE107, align 8, !dbg !352, !tbaa !236
  %71 = bitcast i16* %70 to i8*, !dbg !352
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 181, i8* %71) #5, !dbg !352
  %cVCM108 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19, !dbg !353
  %72 = load i16** %cVCM108, align 8, !dbg !353, !tbaa !236
  %73 = bitcast i16* %72 to i8*, !dbg !353
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 182, i8* %73) #5, !dbg !353
  %cXTC109 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !354
  %74 = load i16** %cXTC109, align 8, !dbg !354, !tbaa !236
  %75 = bitcast i16* %74 to i8*, !dbg !354
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %75) #5, !dbg !354
  %cORF110 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22, !dbg !355
  %76 = load i16** %cORF110, align 8, !dbg !355, !tbaa !236
  %77 = bitcast i16* %76 to i8*, !dbg !355
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 184, i8* %77) #5, !dbg !355
  %cU1111 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20, !dbg !356
  %78 = load i16** %cU1111, align 8, !dbg !356, !tbaa !236
  %79 = bitcast i16* %78 to i8*, !dbg !356
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %79) #5, !dbg !356
  %cU2112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21, !dbg !357
  %80 = load i16** %cU2112, align 8, !dbg !357, !tbaa !236
  %81 = bitcast i16* %80 to i8*, !dbg !357
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 187, i8* %81) #5, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !359
}

; Function Attrs: nounwind optsize uwtable
define void @init_mdatoms(%struct.t_mdatoms* nocapture %md, float %lambda, i32 %bFirst) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !219), !dbg !360
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !220), !dbg !360
  tail call void @llvm.dbg.value(metadata !{i32 %bFirst}, i64 0, metadata !221), !dbg !360
  %conv1 = fsub float 1.000000e+00, %lambda, !dbg !361
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !224), !dbg !361
  %tobool = icmp eq i32 %bFirst, 0, !dbg !362
  br i1 %tobool, label %lor.lhs.false, label %if.end.thread, !dbg !362

if.end.thread:                                    ; preds = %entry
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !dbg !363, !tbaa !271
  tail call void @llvm.dbg.value(metadata !{i32 %.ph}, i64 0, metadata !223), !dbg !364
  br label %for.cond.preheader, !dbg !365

lor.lhs.false:                                    ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %.ph}, i64 0, metadata !223), !dbg !364
  %0 = load float* @init_mdatoms.lambda0, align 4, !dbg !365, !tbaa !271
  %sub3 = fsub float %0, %lambda, !dbg !365
  %fabsf = tail call float @fabsf(float %sub3) #2, !dbg !365
  %1 = fpext float %fabsf to double, !dbg !365
  %cmp = fcmp ogt double %1, 1.200000e-38, !dbg !365
  br i1 %cmp, label %for.cond.preheader, label %if.end45, !dbg !365

for.cond.preheader:                               ; preds = %lor.lhs.false, %if.end.thread
  %.ph.in = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !364
  %.ph = load i32* %.ph.in, align 4, !dbg !364
  %cmp776 = icmp sgt i32 %.ph, 0, !dbg !366
  br i1 %cmp776, label %for.body.lr.ph, label %if.end45, !dbg !366

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9, !dbg !369
  %2 = load i32** %bPerturbed, align 8, !dbg !369, !tbaa !236
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2, !dbg !371
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3, !dbg !371
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !371
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !373
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !374
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !374
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !374
  br label %for.body, !dbg !366

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !369
  %3 = load i32* %arrayidx, align 4, !dbg !369, !tbaa !232
  %4 = or i32 %3, %bFirst, !dbg !369
  %5 = icmp eq i32 %4, 0, !dbg !369
  br i1 %5, label %for.inc, label %if.then12, !dbg !369

if.then12:                                        ; preds = %for.body
  %6 = load float** %massA, align 8, !dbg !371, !tbaa !236
  %arrayidx14 = getelementptr inbounds float* %6, i64 %indvars.iv, !dbg !371
  %7 = load float* %arrayidx14, align 4, !dbg !371, !tbaa !271
  %mul = fmul float %conv1, %7, !dbg !371
  %8 = load float** %massB, align 8, !dbg !371, !tbaa !236
  %arrayidx16 = getelementptr inbounds float* %8, i64 %indvars.iv, !dbg !371
  %9 = load float* %arrayidx16, align 4, !dbg !371, !tbaa !271
  %mul17 = fmul float %9, %lambda, !dbg !371
  %add = fadd float %mul, %mul17, !dbg !371
  %10 = load float** %massT, align 8, !dbg !371, !tbaa !236
  %arrayidx19 = getelementptr inbounds float* %10, i64 %indvars.iv, !dbg !371
  store float %add, float* %arrayidx19, align 4, !dbg !371, !tbaa !271
  %11 = load float** %invmass, align 8, !dbg !373, !tbaa !236
  %arrayidx21 = getelementptr inbounds float* %11, i64 %indvars.iv, !dbg !373
  %12 = load float* %arrayidx21, align 4, !dbg !373, !tbaa !271
  %conv22 = fpext float %12 to double, !dbg !373
  %cmp23 = fcmp ogt double %conv22, 0x39B64F86CB9CEFB1, !dbg !373
  br i1 %cmp23, label %if.then25, label %if.end34, !dbg !373

if.then25:                                        ; preds = %if.then12
  %conv30 = fdiv float 1.000000e+00, %add, !dbg !375
  store float %conv30, float* %arrayidx21, align 4, !dbg !375, !tbaa !271
  br label %if.end34, !dbg !375

if.end34:                                         ; preds = %if.then12, %if.then25
  %13 = load float** %chargeA, align 8, !dbg !374, !tbaa !236
  %arrayidx36 = getelementptr inbounds float* %13, i64 %indvars.iv, !dbg !374
  %14 = load float* %arrayidx36, align 4, !dbg !374, !tbaa !271
  %mul37 = fmul float %conv1, %14, !dbg !374
  %15 = load float** %chargeB, align 8, !dbg !374, !tbaa !236
  %arrayidx39 = getelementptr inbounds float* %15, i64 %indvars.iv, !dbg !374
  %16 = load float* %arrayidx39, align 4, !dbg !374, !tbaa !271
  %mul40 = fmul float %16, %lambda, !dbg !374
  %add41 = fadd float %mul37, %mul40, !dbg !374
  %17 = load float** %chargeT, align 8, !dbg !374, !tbaa !236
  %arrayidx43 = getelementptr inbounds float* %17, i64 %indvars.iv, !dbg !374
  store float %add41, float* %arrayidx43, align 4, !dbg !374, !tbaa !271
  br label %for.inc, !dbg !376

for.inc:                                          ; preds = %for.body, %if.end34
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !366
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !366
  %exitcond = icmp eq i32 %lftr.wideiv, %.ph, !dbg !366
  br i1 %exitcond, label %if.end45, label %for.body, !dbg !366

if.end45:                                         ; preds = %for.cond.preheader, %for.inc, %lor.lhs.false
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !dbg !377, !tbaa !271
  ret void, !dbg !378
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !16, metadata !17, metadata !225, metadata !16, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!6 = metadata !{i32 786472, metadata !"egcTC", i64 0} ; [ DW_TAG_enumerator ] [egcTC :: 0]
!7 = metadata !{i32 786472, metadata !"egcENER", i64 1} ; [ DW_TAG_enumerator ] [egcENER :: 1]
!8 = metadata !{i32 786472, metadata !"egcACC", i64 2} ; [ DW_TAG_enumerator ] [egcACC :: 2]
!9 = metadata !{i32 786472, metadata !"egcFREEZE", i64 3} ; [ DW_TAG_enumerator ] [egcFREEZE :: 3]
!10 = metadata !{i32 786472, metadata !"egcUser1", i64 4} ; [ DW_TAG_enumerator ] [egcUser1 :: 4]
!11 = metadata !{i32 786472, metadata !"egcUser2", i64 5} ; [ DW_TAG_enumerator ] [egcUser2 :: 5]
!12 = metadata !{i32 786472, metadata !"egcVCM", i64 6} ; [ DW_TAG_enumerator ] [egcVCM :: 6]
!13 = metadata !{i32 786472, metadata !"egcXTC", i64 7} ; [ DW_TAG_enumerator ] [egcXTC :: 7]
!14 = metadata !{i32 786472, metadata !"egcORFIT", i64 8} ; [ DW_TAG_enumerator ] [egcORFIT :: 8]
!15 = metadata !{i32 786472, metadata !"egcNR", i64 9} ; [ DW_TAG_enumerator ] [egcNR :: 9]
!16 = metadata !{i32 0}
!17 = metadata !{metadata !18, metadata !207, metadata !215}
!18 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"atoms2md", metadata !"atoms2md", metadata !"", i32 41, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_mdatoms* (%struct._IO_FILE*, %struct.t_atoms*, [3 x i32]*, i32, float, float, float*, i32, i32)* @atoms2md, null, null, metadata !190, i32 44} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 44] [atoms2md]
!19 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !57, metadata !113, metadata !185, metadata !31, metadata !28, metadata !28, metadata !33, metadata !31, metadata !31}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!24 = metadata !{i32 786451, metadata !25, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!25 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!26 = metadata !{metadata !27, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !42, metadata !43, metadata !44, metadata !45, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!27 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!28 = metadata !{i32 786454, metadata !25, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!29 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!30 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!32 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!34 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!38 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!39 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !41} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !41} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!43 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !41} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!44 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !41} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!45 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !46} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!47 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!48 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !46} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!50 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!51 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !46} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!52 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !46} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!53 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!54 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !46} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !46} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !46} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!58 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!59 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!60 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!61 = metadata !{metadata !62, metadata !63, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !84, metadata !85, metadata !86, metadata !87, metadata !90, metadata !91, metadata !93, metadata !97, metadata !99, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !108, metadata !109}
!62 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!63 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!65 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!66 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!68 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!69 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!70 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!71 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!72 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!73 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!74 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!75 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !64} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!76 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !77} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!78 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !83}
!80 = metadata !{i32 786445, metadata !60, metadata !78, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !60, metadata !78, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!83 = metadata !{i32 786445, metadata !60, metadata !78, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!84 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !82} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!85 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!86 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !31} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!87 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !88} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!88 = metadata !{i32 786454, metadata !60, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!89 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!90 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !47} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!91 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !92} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!92 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!93 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !94} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !65, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!97 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !98} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!99 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !100} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!100 = metadata !{i32 786454, metadata !60, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!101 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!102 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!103 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!104 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!105 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!106 = metadata !{i32 786454, metadata !60, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!107 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!108 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !31} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!109 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !110} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !65, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!116 = metadata !{metadata !117, metadata !118, metadata !137, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !161, metadata !168}
!117 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!118 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !119} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!120 = metadata !{i32 786454, metadata !4, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!121 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !136}
!123 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!124 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!125 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!126 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!127 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!128 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !47} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!129 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!130 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!131 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !132} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !133, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!133 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!136 = metadata !{i32 786445, metadata !4, metadata !121, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !133} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!137 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!140 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !138} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!141 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !138} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!142 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!143 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !138} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!144 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!145 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !138} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!146 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !147} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!147 = metadata !{i32 786454, metadata !4, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!148 = metadata !{i32 786451, metadata !149, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !150, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!149 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!150 = metadata !{metadata !151, metadata !155, metadata !156, metadata !159, metadata !160}
!151 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !31, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!155 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !31} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!156 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !157} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!158 = metadata !{i32 786454, metadata !149, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!159 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !31} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!160 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !157} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!161 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !162} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !163, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!163 = metadata !{i32 786454, metadata !4, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!164 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !165, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786445, metadata !4, metadata !164, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!167 = metadata !{i32 786445, metadata !4, metadata !164, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!168 = metadata !{i32 786445, metadata !4, metadata !115, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !169} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!170 = metadata !{i32 786454, metadata !4, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!171 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !180, metadata !181, metadata !182, metadata !183}
!173 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!174 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!175 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!176 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !177} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!177 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !65, metadata !178, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!178 = metadata !{metadata !179}
!179 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!180 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!181 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !28} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!182 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!183 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !184} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !31, metadata !178, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!186 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!187 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !188, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!188 = metadata !{metadata !189}
!189 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !206}
!191 = metadata !{i32 786689, metadata !18, metadata !"fp", metadata !19, i32 16777257, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 41]
!192 = metadata !{i32 786689, metadata !18, metadata !"atoms", metadata !19, i32 33554473, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 41]
!193 = metadata !{i32 786689, metadata !18, metadata !"nFreeze", metadata !19, i32 50331689, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nFreeze] [line 41]
!194 = metadata !{i32 786689, metadata !18, metadata !"bBD", metadata !19, i32 67108906, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bBD] [line 42]
!195 = metadata !{i32 786689, metadata !18, metadata !"delta_t", metadata !19, i32 83886122, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta_t] [line 42]
!196 = metadata !{i32 786689, metadata !18, metadata !"fric", metadata !19, i32 100663338, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fric] [line 42]
!197 = metadata !{i32 786689, metadata !18, metadata !"tau_t", metadata !19, i32 117440554, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau_t] [line 42]
!198 = metadata !{i32 786689, metadata !18, metadata !"bPert", metadata !19, i32 134217771, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPert] [line 43]
!199 = metadata !{i32 786689, metadata !18, metadata !"bFree", metadata !19, i32 150994987, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFree] [line 43]
!200 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !19, i32 45, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!201 = metadata !{i32 786688, metadata !18, metadata !"np", metadata !19, i32 45, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 45]
!202 = metadata !{i32 786688, metadata !18, metadata !"g", metadata !19, i32 45, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 45]
!203 = metadata !{i32 786688, metadata !18, metadata !"fac", metadata !19, i32 46, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 46]
!204 = metadata !{i32 786688, metadata !18, metadata !"tm", metadata !19, i32 47, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 47]
!205 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!206 = metadata !{i32 786688, metadata !18, metadata !"md", metadata !19, i32 48, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [md] [line 48]
!207 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"md2atoms", metadata !"md2atoms", metadata !"", i32 143, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_mdatoms*, %struct.t_atoms*, i32)* @md2atoms, null, null, metadata !210, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [md2atoms]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{null, metadata !22, metadata !113, metadata !31}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214}
!211 = metadata !{i32 786689, metadata !207, metadata !"md", metadata !19, i32 16777359, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 143]
!212 = metadata !{i32 786689, metadata !207, metadata !"atoms", metadata !19, i32 33554575, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 143]
!213 = metadata !{i32 786689, metadata !207, metadata !"bFree", metadata !19, i32 50331791, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFree] [line 143]
!214 = metadata !{i32 786688, metadata !207, metadata !"i", metadata !19, i32 145, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 145]
!215 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"init_mdatoms", metadata !"init_mdatoms", metadata !"", i32 191, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_mdatoms*, float, i32)* @init_mdatoms, null, null, metadata !218, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [init_mdatoms]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !22, metadata !28, metadata !31}
!218 = metadata !{metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!219 = metadata !{i32 786689, metadata !215, metadata !"md", metadata !19, i32 16777407, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 191]
!220 = metadata !{i32 786689, metadata !215, metadata !"lambda", metadata !19, i32 33554623, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 191]
!221 = metadata !{i32 786689, metadata !215, metadata !"bFirst", metadata !19, i32 50331839, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFirst] [line 191]
!222 = metadata !{i32 786688, metadata !215, metadata !"i", metadata !19, i32 194, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 194]
!223 = metadata !{i32 786688, metadata !215, metadata !"end", metadata !19, i32 194, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 194]
!224 = metadata !{i32 786688, metadata !215, metadata !"L1", metadata !19, i32 195, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 195]
!225 = metadata !{metadata !226}
!226 = metadata !{i32 786484, i32 0, metadata !215, metadata !"lambda0", metadata !"lambda0", metadata !"", metadata !19, i32 193, metadata !28, i32 1, i32 1, float* @init_mdatoms.lambda0, null} ; [ DW_TAG_variable ] [lambda0] [line 193] [local] [def]
!227 = metadata !{i32 41, i32 0, metadata !18, null}
!228 = metadata !{i32 42, i32 0, metadata !18, null}
!229 = metadata !{i32 43, i32 0, metadata !18, null}
!230 = metadata !{i32 50, i32 0, metadata !18, null}
!231 = metadata !{i32 51, i32 0, metadata !18, null}
!232 = metadata !{metadata !"int", metadata !233}
!233 = metadata !{metadata !"omnipotent char", metadata !234}
!234 = metadata !{metadata !"Simple C/C++ TBAA"}
!235 = metadata !{i32 52, i32 0, metadata !18, null}
!236 = metadata !{metadata !"any pointer", metadata !233}
!237 = metadata !{i32 53, i32 0, metadata !18, null}
!238 = metadata !{i32 54, i32 0, metadata !18, null}
!239 = metadata !{i32 55, i32 0, metadata !18, null}
!240 = metadata !{i32 56, i32 0, metadata !18, null}
!241 = metadata !{i32 57, i32 0, metadata !18, null}
!242 = metadata !{i32 58, i32 0, metadata !18, null} ; [ DW_TAG_imported_module ]
!243 = metadata !{i32 59, i32 0, metadata !18, null}
!244 = metadata !{i32 60, i32 0, metadata !18, null}
!245 = metadata !{i32 61, i32 0, metadata !18, null}
!246 = metadata !{i32 62, i32 0, metadata !18, null}
!247 = metadata !{i32 63, i32 0, metadata !18, null}
!248 = metadata !{i32 64, i32 0, metadata !18, null}
!249 = metadata !{i32 65, i32 0, metadata !18, null}
!250 = metadata !{i32 66, i32 0, metadata !18, null}
!251 = metadata !{i32 67, i32 0, metadata !18, null}
!252 = metadata !{i32 68, i32 0, metadata !18, null}
!253 = metadata !{i32 69, i32 0, metadata !18, null}
!254 = metadata !{i32 70, i32 0, metadata !18, null}
!255 = metadata !{i32 72, i32 0, metadata !18, null}
!256 = metadata !{i32 73, i32 0, metadata !18, null}
!257 = metadata !{i32 75, i32 0, metadata !18, null}
!258 = metadata !{double 0.000000e+00}
!259 = metadata !{i32 76, i32 0, metadata !18, null}
!260 = metadata !{i32 77, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !18, i32 77, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!262 = metadata !{i32 78, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 77, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!264 = metadata !{i32 91, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 90, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!266 = metadata !{i32 121, i32 0, metadata !263, null}
!267 = metadata !{i32 83, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !269, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!269 = metadata !{i32 786443, metadata !1, metadata !263, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!270 = metadata !{i32 82, i32 0, metadata !269, null}
!271 = metadata !{metadata !"float", metadata !233}
!272 = metadata !{i32 84, i32 0, metadata !268, null}
!273 = metadata !{i32 95, i32 0, metadata !263, null}
!274 = metadata !{i32 85, i32 0, metadata !268, null}
!275 = metadata !{i32 86, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !269, i32 85, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!277 = metadata !{i32 87, i32 0, metadata !276, null}
!278 = metadata !{i32 88, i32 0, metadata !276, null}
!279 = metadata !{i32 92, i32 0, metadata !265, null}
!280 = metadata !{i32 94, i32 0, metadata !263, null}
!281 = metadata !{i32 96, i32 0, metadata !263, null}
!282 = metadata !{i32 97, i32 0, metadata !263, null}
!283 = metadata !{i32 98, i32 0, metadata !263, null}
!284 = metadata !{metadata !"short", metadata !233}
!285 = metadata !{i32 99, i32 0, metadata !263, null}
!286 = metadata !{i32 100, i32 0, metadata !263, null}
!287 = metadata !{i32 101, i32 0, metadata !263, null}
!288 = metadata !{i32 102, i32 0, metadata !263, null}
!289 = metadata !{i32 103, i32 0, metadata !263, null}
!290 = metadata !{i32 104, i32 0, metadata !263, null}
!291 = metadata !{i32 105, i32 0, metadata !263, null}
!292 = metadata !{i32 106, i32 0, metadata !263, null}
!293 = metadata !{i32 107, i32 0, metadata !263, null}
!294 = metadata !{i32 108, i32 0, metadata !263, null}
!295 = metadata !{i32 109, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !263, i32 108, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!297 = metadata !{i32 110, i32 0, metadata !296, null}
!298 = metadata !{i32 111, i32 0, metadata !296, null}
!299 = metadata !{i32 115, i32 0, metadata !296, null}
!300 = metadata !{i32 116, i32 0, metadata !296, null}
!301 = metadata !{i32 117, i32 0, metadata !296, null}
!302 = metadata !{i32 119, i32 0, metadata !296, null}
!303 = metadata !{i32 122, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !263, i32 121, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!305 = metadata !{i32 123, i32 0, metadata !304, null}
!306 = metadata !{i32 127, i32 0, metadata !263, null}
!307 = metadata !{i32 128, i32 0, metadata !263, null}
!308 = metadata !{i32 130, i32 0, metadata !18, null}
!309 = metadata !{i32 132, i32 0, metadata !18, null}
!310 = metadata !{i32 133, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !18, i32 132, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!312 = metadata !{i32 134, i32 0, metadata !311, null}
!313 = metadata !{i32 135, i32 0, metadata !311, null}
!314 = metadata !{i32 137, i32 0, metadata !18, null}
!315 = metadata !{i32 138, i32 0, metadata !18, null}
!316 = metadata !{i32 140, i32 0, metadata !18, null}
!317 = metadata !{i32 143, i32 0, metadata !207, null}
!318 = metadata !{i32 147, i32 0, metadata !207, null}
!319 = metadata !{i32 148, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !207, i32 148, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!321 = metadata !{i32 149, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 148, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!323 = metadata !{i32 150, i32 0, metadata !322, null}
!324 = metadata !{i32 151, i32 0, metadata !322, null}
!325 = metadata !{i32 152, i32 0, metadata !322, null}
!326 = metadata !{i32 153, i32 0, metadata !322, null}
!327 = metadata !{i32 154, i32 0, metadata !322, null}
!328 = metadata !{i32 155, i32 0, metadata !322, null}
!329 = metadata !{i32 156, i32 0, metadata !322, null}
!330 = metadata !{i32 157, i32 0, metadata !322, null}
!331 = metadata !{i32 158, i32 0, metadata !322, null}
!332 = metadata !{i32 159, i32 0, metadata !322, null}
!333 = metadata !{i32 160, i32 0, metadata !322, null}
!334 = metadata !{i32 162, i32 0, metadata !322, null}
!335 = metadata !{i32 163, i32 0, metadata !322, null}
!336 = metadata !{i32 166, i32 0, metadata !207, null}
!337 = metadata !{i32 167, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !207, i32 166, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!339 = metadata !{i32 168, i32 0, metadata !338, null}
!340 = metadata !{i32 169, i32 0, metadata !338, null}
!341 = metadata !{i32 170, i32 0, metadata !338, null}
!342 = metadata !{i32 171, i32 0, metadata !338, null}
!343 = metadata !{i32 172, i32 0, metadata !338, null}
!344 = metadata !{i32 173, i32 0, metadata !338, null}
!345 = metadata !{i32 174, i32 0, metadata !338, null}
!346 = metadata !{i32 175, i32 0, metadata !338, null}
!347 = metadata !{i32 176, i32 0, metadata !338, null}
!348 = metadata !{i32 177, i32 0, metadata !338, null}
!349 = metadata !{i32 178, i32 0, metadata !338, null}
!350 = metadata !{i32 179, i32 0, metadata !338, null}
!351 = metadata !{i32 180, i32 0, metadata !338, null}
!352 = metadata !{i32 181, i32 0, metadata !338, null}
!353 = metadata !{i32 182, i32 0, metadata !338, null}
!354 = metadata !{i32 183, i32 0, metadata !338, null}
!355 = metadata !{i32 184, i32 0, metadata !338, null}
!356 = metadata !{i32 186, i32 0, metadata !338, null}
!357 = metadata !{i32 187, i32 0, metadata !338, null}
!358 = metadata !{i32 188, i32 0, metadata !338, null}
!359 = metadata !{i32 189, i32 0, metadata !207, null}
!360 = metadata !{i32 191, i32 0, metadata !215, null}
!361 = metadata !{i32 195, i32 0, metadata !215, null}
!362 = metadata !{i32 197, i32 0, metadata !215, null}
!363 = metadata !{i32 198, i32 0, metadata !215, null}
!364 = metadata !{i32 199, i32 0, metadata !215, null}
!365 = metadata !{i32 207, i32 0, metadata !215, null}
!366 = metadata !{i32 208, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !368, i32 208, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!368 = metadata !{i32 786443, metadata !1, metadata !215, i32 207, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!369 = metadata !{i32 209, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !367, i32 208, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!371 = metadata !{i32 210, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !370, i32 209, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c]
!373 = metadata !{i32 211, i32 0, metadata !372, null}
!374 = metadata !{i32 213, i32 0, metadata !372, null}
!375 = metadata !{i32 212, i32 0, metadata !372, null}
!376 = metadata !{i32 214, i32 0, metadata !372, null}
!377 = metadata !{i32 217, i32 0, metadata !215, null}
!378 = metadata !{i32 218, i32 0, metadata !215, null}
