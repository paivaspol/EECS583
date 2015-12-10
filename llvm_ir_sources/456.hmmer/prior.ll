; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/prior.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/prior.c\00", align 1
@Alphabet_size = external global i32
@Alphabet_type = external global i32
@.str1 = private unnamed_addr constant [43 x i8] c"Can't set prior; alphabet type not set yet\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"Failed to open HMMER prior file %s\0A\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"DIRICHLET\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"No such prior strategy %s; failed to parse file %s\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"AMINO\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are DNA/RNA; can't use protein prior %s\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"NUCLEIC\00", align 1
@.str9 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are protein; can't use DNA/RNA prior %s\00", align 1
@.str10 = private unnamed_addr constant [44 x i8] c"Alphabet \22%s\22 in prior file %s isn't valid.\00", align 1
@.str11 = private unnamed_addr constant [64 x i8] c"%d is bad; need at least one state transition mixture component\00", align 1
@.str12 = private unnamed_addr constant [60 x i8] c"%d is bad, too many transition components (MAXDCHLET = %d)\0A\00", align 1
@.str13 = private unnamed_addr constant [62 x i8] c"%d is bad; need at least one match emission mixture component\00", align 1
@.str14 = private unnamed_addr constant [55 x i8] c"%d is bad; too many match components (MAXDCHLET = %d)\0A\00", align 1
@.str15 = private unnamed_addr constant [63 x i8] c"%d is bad; need at least one insert emission mixture component\00", align 1
@.str16 = private unnamed_addr constant [56 x i8] c"%d is bad; too many insert components (MAXDCHLET = %d)\0A\00", align 1
@.str17 = private unnamed_addr constant [46 x i8] c"PAM prior is only valid for protein sequences\00", align 1
@.str18 = private unnamed_addr constant [63 x i8] c"PAM prior may only be applied over an existing Dirichlet prior\00", align 1
@.str19 = private unnamed_addr constant [67 x i8] c"PAM prior requires that the insert emissions be a single Dirichlet\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"BLASTMAT\00", align 1
@.str22 = private unnamed_addr constant [42 x i8] c"Failed to open PAM scoring matrix file %s\00", align 1
@.str23 = private unnamed_addr constant [43 x i8] c"Failed to parse PAM scoring matrix file %s\00", align 1
@Alphabet = external global [25 x i8]
@aafq = external global [0 x float]
@.str24 = private unnamed_addr constant [35 x i8] c"Failed to open null model file %s\0A\00", align 1
@.str25 = private unnamed_addr constant [59 x i8] c"Alphabet type conflict; null model in %s is inappropriate\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"%s is not in HMMER null model file format\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"X-PRT annotation out of range\00", align 1
@.str28 = private unnamed_addr constant [30 x i8] c"X-PRM annotation out of range\00", align 1
@.str29 = private unnamed_addr constant [30 x i8] c"X-PRI annotation out of range\00", align 1
@default_amino_prior.defmq = internal unnamed_addr constant [9 x float] [float 0x3FC6CBAFA0000000, float 0x3FACF97EE0000000, float 0x3FB894B520000000, float 0x3FB3FFE380000000, float 0x3FB5601B00000000, float 0x3FB72542A0000000, float 0x3FBD4DC660000000, float 0x3FB1766BA0000000, float 0x3FCE06E1A0000000], align 16
@default_amino_prior.defm = internal unnamed_addr constant [9 x [20 x float]] [[20 x float] [float 0x3FD152AC80000000, float 0x3FA466F500000000, float 0x3F91FF7160000000, float 0x3F90CF1800000000, float 0x3F8D388A80000000, float 0x3FC0E29FA0000000, float 0x3F896073E0000000, float 0x3F97243140000000, float 0x3F94D8BA40000000, float 0x3F9F76E620000000, float 0x3F8F5D7880000000, float 0x3FA8BA8400000000, float 0x3FAB8C1120000000, float 0x3F95286B60000000, float 0x3F982DBE80000000, float 0x3FCBAAB480000000, float 0x3FC2D84D40000000, float 0x3FB0C08B80000000, float 0x3F6EC918E0000000, float 0x3F83B42CC0000000], [20 x float] [float 0x3F95FAEBC0000000, float 0x3F85182AA0000000, float 0x3F880BAA60000000, float 0x3F8649D380000000, float 0x3FD8AE8180000000, float 0x3F90CF5B20000000, float 0x3FB38194C0000000, float 0x3FA216A480000000, float 0x3F8C829D00000000, float 0x3FB7F0BAE0000000, float 0x3F969014C0000000, float 0x3F9D477BC0000000, float 0x3F8ACCD540000000, float 0x3F97903220000000, float 0x3F93519BE0000000, float 0x3F9DDB1200000000, float 0x3F9296B340000000, float 0x3FA27BB300000000, float 0x3FB25F84C0000000, float 0x3FDADB65E0000000], [20 x float] [float 0x3FE1F778E0000000, float 0x3FA744F5E0000000, float 0x3FDC0E3040000000, float 0x3FE8740E60000000, float 0x3FB65D7CC0000000, float 0x3FD09552E0000000, float 0x3FCB832760000000, float 0x3FC2ADC4C0000000, float 0x3FE863F9A0000000, float 0x3FCFA82E80000000, float 0x3FBE60A200000000, float 0x3FDC4295A0000000, float 0x3FC6609140000000, float 0x3FE0FCA420000000, float 0x3FDDCB3A20000000, float 0x3FE2AB3AA0000000, float 0x3FDC847B20000000, float 0x3FCD0FF980000000, float 0x3F9E37DEA0000000, float 0x3FBEFFC120000000], [20 x float] [float 0x3FB1F4E440000000, float 0x3F86D09180000000, float 0x3F93F24D80000000, float 0x3FB83B70E0000000, float 0x3F8AF4ADC0000000, float 0x3FA8986FC0000000, float 0x3FB3B645A0000000, float 0x3FA0DD6160000000, float 0x3FE273D3A0000000, float 0x3FB281CB40000000, float 0x3F9CEAF260000000, float 0x3FB4934260000000, float 0x3FA3484D80000000, float 0x3FC7AF4AE0000000, float 0x3FE0379100000000, float 0x3FB2E019C0000000, float 0x3FB2538680000000, float 0x3FA5C6C120000000, float 0x3F870C5640000000, float 0x3F9D698FE0000000], [20 x float] [float 0x3FA50B73E0000000, float 0x3F8E4C5120000000, float 0x3F76FA82E0000000, float 0x3F84EC2040000000, float 0x3FC3A93B00000000, float 0x3F7FEFBF40000000, float 0x3F7D638860000000, float 0x3FD32D3840000000, float 0x3F86380020000000, float 0x3FEFFB7620000000, float 0x3FCAE77920000000, float 0x3F7918A000000000, float 0x3F8AAAC100000000, float 0x3F9445ED40000000, float 0x3F8DB6E500000000, float 0x3F88AD2560000000, float 0x3FA2543F20000000, float 0x3FC70D0680000000, float 0x3F8A1986C0000000, float 0x3F9B19E740000000], [20 x float] [float 0x3FBD986BA0000000, float 0x3FA3239A40000000, float 0x3F896C82E0000000, float 0x3F929D8400000000, float 0x3FAA82A560000000, float 0x3F91AB4B80000000, float 0x3F741D8E80000000, float 0x3FE9800EA0000000, float 0x3F917BD8C0000000, float 0x3FD24B7F60000000, float 0x3FB3685980000000, float 0x3F8DCB5780000000, float 0x3F8EE88E00000000, float 0x3F874F7220000000, float 0x3F8A005C40000000, float 0x3F9C3222A0000000, float 0x3FB69CFDE0000000, float 0x3FEE380880000000, float 0x3F71E96C40000000, float 0x3F91248D80000000], [20 x float] [float 0x3FB7ED0F60000000, float 0x3F73671AC0000000, float 0x3FD8C8BCA0000000, float 0x3FD64306E0000000, float 0x3F8629D840000000, float 0x3FBB1AC140000000, float 0x3FA97C3D60000000, float 0x3F8EA4EBE0000000, float 0x3FB82278E0000000, float 0x3F9C6D6120000000, float 0x3F848FDA00000000, float 0x3FC80C1760000000, float 0x3FA99BF5A0000000, float 0x3FBC2B8420000000, float 0x3FA3CC4AC0000000, float 0x3FBE95A6C0000000, float 0x3FB0D86660000000, float 0x3F9A0A5260000000, float 0x3F6A565800000000, float 0x3F93311A60000000], [20 x float] [float 0x3FDCF05EA0000000, float 0x3FBD574700000000, float 0x3FAFFAC1E0000000, float 0x3FBD9EA580000000, float 0x3FD2311620000000, float 0x3FC1F23460000000, float 0x3FB9B10FE0000000, float 0x3FE19B7C00000000, float 0x3FC26E6DA0000000, float 0x3FE66BB780000000, float 0x3FD1B37CA0000000, float 0x3FBE5A89C0000000, float 0x3FB8F3CB40000000, float 0x3FC036D220000000, float 0x3FC2629960000000, float 0x3FD1DADB80000000, float 0x3FD6F15E80000000, float 0x3FE52D0E60000000, float 0x3FAF8140E0000000, float 0x3FC9850E00000000], [20 x float] [float 0x3F75454160000000, float 0x3F708B32C0000000, float 0x3F7B888720000000, float 0x3F79125560000000, float 0x3F6C68EC60000000, float 0x3F91565C20000000, float 0x3F6DE05040000000, float 0x3F61E42E20000000, float 0x3F748ECD80000000, float 0x3F7888F860000000, float 0x3F582235C0000000, float 0x3F7107FAA0000000, float 0x3F828B6D80000000, float 0x3F6DBCA960000000, float 0x3F7AF6C6A0000000, float 0x3F69FC2A80000000, float 0x3F6E3A7DA0000000, float 0x3F684E4000000000, float 0x3F66B54E20000000, float 0x3F6600F340000000]], align 16

; Function Attrs: nounwind optsize ssp uwtable
define %struct.p7prior_s* @P7AllocPrior() #0 {
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #7, !dbg !273
  %2 = bitcast i8* %1 to %struct.p7prior_s*, !dbg !274
  ret %struct.p7prior_s* %2, !dbg !275
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P7FreePrior(%struct.p7prior_s* nocapture %pri) #0 {
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %pri, i64 0, metadata !39, metadata !276), !dbg !277
  %1 = bitcast %struct.p7prior_s* %pri to i8*, !dbg !278
  tail call void @free(i8* %1) #8, !dbg !279
  ret void, !dbg !280
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.p7prior_s* @P7LaplacePrior() #0 {
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #7, !dbg !281
  %2 = bitcast i8* %1 to %struct.p7prior_s*, !dbg !283
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %2, i64 0, metadata !42, metadata !276), !dbg !284
  %3 = bitcast i8* %1 to i32*, !dbg !285
  store i32 0, i32* %3, align 4, !dbg !286, !tbaa !287
  %4 = getelementptr inbounds i8* %1, i64 4, !dbg !292
  %5 = bitcast i8* %4 to i32*, !dbg !292
  store i32 1, i32* %5, align 4, !dbg !293, !tbaa !294
  %6 = getelementptr inbounds i8* %1, i64 8, !dbg !295
  %7 = bitcast i8* %6 to float*, !dbg !295
  store float 1.000000e+00, float* %7, align 4, !dbg !296, !tbaa !297
  %8 = getelementptr inbounds i8* %1, i64 808, !dbg !299
  %9 = bitcast i8* %8 to float*, !dbg !299
  tail call void @FSet(float* %9, i32 8, float 1.000000e+00) #7, !dbg !300
  %10 = getelementptr inbounds i8* %1, i64 6408, !dbg !301
  %11 = bitcast i8* %10 to i32*, !dbg !301
  store i32 1, i32* %11, align 4, !dbg !302, !tbaa !303
  %12 = getelementptr inbounds i8* %1, i64 6412, !dbg !304
  %13 = bitcast i8* %12 to float*, !dbg !304
  store float 1.000000e+00, float* %13, align 4, !dbg !305, !tbaa !297
  %14 = getelementptr inbounds i8* %1, i64 7212, !dbg !306
  %15 = bitcast i8* %14 to float*, !dbg !306
  %16 = load i32* @Alphabet_size, align 4, !dbg !307, !tbaa !308
  tail call void @FSet(float* %15, i32 %16, float 1.000000e+00) #7, !dbg !309
  %17 = getelementptr inbounds i8* %1, i64 23212, !dbg !310
  %18 = bitcast i8* %17 to i32*, !dbg !310
  store i32 1, i32* %18, align 4, !dbg !311, !tbaa !312
  %19 = getelementptr inbounds i8* %1, i64 23216, !dbg !313
  %20 = bitcast i8* %19 to float*, !dbg !313
  store float 1.000000e+00, float* %20, align 4, !dbg !314, !tbaa !297
  %21 = getelementptr inbounds i8* %1, i64 24016, !dbg !315
  %22 = bitcast i8* %21 to float*, !dbg !315
  %23 = load i32* @Alphabet_size, align 4, !dbg !316, !tbaa !308
  tail call void @FSet(float* %22, i32 %23, float 1.000000e+00) #7, !dbg !317
  ret %struct.p7prior_s* %2, !dbg !318
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.p7prior_s* @P7DefaultPrior() #0 {
  %1 = load i32* @Alphabet_type, align 4, !dbg !319, !tbaa !308
  switch i32 %1, label %123 [
    i32 3, label %2
    i32 2, label %86
    i32 0, label %122
  ], !dbg !320

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #7, !dbg !321
  %4 = bitcast i8* %3 to %struct.p7prior_s*, !dbg !325
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %4, i64 0, metadata !255, metadata !276) #6, !dbg !326
  %5 = bitcast i8* %3 to i32*, !dbg !327
  store i32 0, i32* %5, align 4, !dbg !328, !tbaa !287
  %6 = getelementptr inbounds i8* %3, i64 4, !dbg !329
  %7 = bitcast i8* %6 to i32*, !dbg !329
  store i32 1, i32* %7, align 4, !dbg !330, !tbaa !294
  %8 = getelementptr inbounds i8* %3, i64 8, !dbg !331
  %9 = bitcast i8* %8 to float*, !dbg !331
  store float 1.000000e+00, float* %9, align 4, !dbg !332, !tbaa !297
  %10 = getelementptr inbounds i8* %3, i64 808, !dbg !333
  %11 = bitcast i8* %10 to float*, !dbg !333
  store float 0x3FE967A100000000, float* %11, align 4, !dbg !334, !tbaa !297
  %12 = getelementptr inbounds i8* %3, i64 812, !dbg !335
  %13 = bitcast i8* %12 to float*, !dbg !335
  store float 0x3F9C779A60000000, float* %13, align 4, !dbg !336, !tbaa !297
  %14 = getelementptr inbounds i8* %3, i64 816, !dbg !337
  %15 = bitcast i8* %14 to float*, !dbg !337
  store float 0x3F8BA5E360000000, float* %15, align 4, !dbg !338, !tbaa !297
  %16 = getelementptr inbounds i8* %3, i64 820, !dbg !339
  %17 = bitcast i8* %16 to float*, !dbg !339
  store float 0x3FC3DA5120000000, float* %17, align 4, !dbg !340, !tbaa !297
  %18 = getelementptr inbounds i8* %3, i64 824, !dbg !341
  %19 = bitcast i8* %18 to float*, !dbg !341
  store float 0x3FC1096BC0000000, float* %19, align 4, !dbg !342, !tbaa !297
  %20 = getelementptr inbounds i8* %3, i64 828, !dbg !343
  %21 = bitcast i8* %20 to float*, !dbg !343
  store float 0x3FECCE7040000000, float* %21, align 4, !dbg !344, !tbaa !297
  %22 = getelementptr inbounds i8* %3, i64 832, !dbg !345
  %23 = bitcast i8* %22 to float*, !dbg !345
  store float 0x3FE20418A0000000, float* %23, align 4, !dbg !346, !tbaa !297
  %24 = getelementptr inbounds i8* %3, i64 6408, !dbg !347
  %25 = bitcast i8* %24 to i32*, !dbg !347
  store i32 9, i32* %25, align 4, !dbg !348, !tbaa !303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !276) #6, !dbg !349
  br label %26, !dbg !350

; <label>:26                                      ; preds = %38, %2
  %indvars.iv3.i = phi i64 [ 0, %2 ], [ %indvars.iv.next4.i, %38 ], !dbg !352
  %27 = getelementptr inbounds [9 x float]* @default_amino_prior.defmq, i64 0, i64 %indvars.iv3.i, !dbg !353
  %28 = bitcast float* %27 to i32*, !dbg !353
  %29 = load i32* %28, align 4, !dbg !353, !tbaa !297
  %30 = getelementptr inbounds %struct.p7prior_s* %4, i64 0, i32 5, i64 %indvars.iv3.i, !dbg !356
  %31 = bitcast float* %30 to i32*, !dbg !357
  store i32 %29, i32* %31, align 4, !dbg !357, !tbaa !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !257, metadata !276) #6, !dbg !358
  br label %32, !dbg !359

; <label>:32                                      ; preds = %32, %26
  %indvars.iv.i = phi i64 [ 0, %26 ], [ %indvars.iv.next.i, %32 ], !dbg !352
  %33 = getelementptr inbounds [9 x [20 x float]]* @default_amino_prior.defm, i64 0, i64 %indvars.iv3.i, i64 %indvars.iv.i, !dbg !361
  %34 = bitcast float* %33 to i32*, !dbg !361
  %35 = load i32* %34, align 4, !dbg !361, !tbaa !297
  %36 = getelementptr inbounds %struct.p7prior_s* %4, i64 0, i32 6, i64 %indvars.iv3.i, i64 %indvars.iv.i, !dbg !363
  %37 = bitcast float* %36 to i32*, !dbg !364
  store i32 %35, i32* %37, align 4, !dbg !364, !tbaa !297
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !359
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 20, !dbg !359
  br i1 %exitcond.i, label %38, label %32, !dbg !359

; <label>:38                                      ; preds = %32
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1, !dbg !350
  %39 = load i32* %25, align 4, !dbg !365, !tbaa !303
  %40 = sext i32 %39 to i64, !dbg !366
  %41 = icmp slt i64 %indvars.iv.next4.i, %40, !dbg !366
  br i1 %41, label %26, label %default_amino_prior.exit, !dbg !350

default_amino_prior.exit:                         ; preds = %38
  %42 = getelementptr inbounds i8* %3, i64 23212, !dbg !367
  %43 = bitcast i8* %42 to i32*, !dbg !367
  store i32 1, i32* %43, align 4, !dbg !368, !tbaa !312
  %44 = getelementptr inbounds i8* %3, i64 23216, !dbg !369
  %45 = bitcast i8* %44 to float*, !dbg !369
  store float 1.000000e+00, float* %45, align 4, !dbg !370, !tbaa !297
  %46 = getelementptr inbounds i8* %3, i64 24016, !dbg !371
  %47 = bitcast i8* %46 to float*, !dbg !371
  store float 6.810000e+02, float* %47, align 4, !dbg !372, !tbaa !297
  %48 = getelementptr inbounds i8* %3, i64 24020, !dbg !373
  %49 = bitcast i8* %48 to float*, !dbg !373
  store float 1.200000e+02, float* %49, align 4, !dbg !374, !tbaa !297
  %50 = getelementptr inbounds i8* %3, i64 24024, !dbg !375
  %51 = bitcast i8* %50 to float*, !dbg !375
  store float 6.230000e+02, float* %51, align 4, !dbg !376, !tbaa !297
  %52 = getelementptr inbounds i8* %3, i64 24028, !dbg !377
  %53 = bitcast i8* %52 to float*, !dbg !377
  store float 6.510000e+02, float* %53, align 4, !dbg !378, !tbaa !297
  %54 = getelementptr inbounds i8* %3, i64 24032, !dbg !379
  %55 = bitcast i8* %54 to float*, !dbg !379
  store float 3.130000e+02, float* %55, align 4, !dbg !380, !tbaa !297
  %56 = getelementptr inbounds i8* %3, i64 24036, !dbg !381
  %57 = bitcast i8* %56 to float*, !dbg !381
  store float 9.020000e+02, float* %57, align 4, !dbg !382, !tbaa !297
  %58 = getelementptr inbounds i8* %3, i64 24040, !dbg !383
  %59 = bitcast i8* %58 to float*, !dbg !383
  store float 2.410000e+02, float* %59, align 4, !dbg !384, !tbaa !297
  %60 = getelementptr inbounds i8* %3, i64 24044, !dbg !385
  %61 = bitcast i8* %60 to float*, !dbg !385
  store float 3.710000e+02, float* %61, align 4, !dbg !386, !tbaa !297
  %62 = getelementptr inbounds i8* %3, i64 24048, !dbg !387
  %63 = bitcast i8* %62 to float*, !dbg !387
  store float 6.870000e+02, float* %63, align 4, !dbg !388, !tbaa !297
  %64 = getelementptr inbounds i8* %3, i64 24052, !dbg !389
  %65 = bitcast i8* %64 to float*, !dbg !389
  store float 6.760000e+02, float* %65, align 4, !dbg !390, !tbaa !297
  %66 = getelementptr inbounds i8* %3, i64 24056, !dbg !391
  %67 = bitcast i8* %66 to float*, !dbg !391
  store float 1.430000e+02, float* %67, align 4, !dbg !392, !tbaa !297
  %68 = getelementptr inbounds i8* %3, i64 24060, !dbg !393
  %69 = bitcast i8* %68 to float*, !dbg !393
  store float 5.480000e+02, float* %69, align 4, !dbg !394, !tbaa !297
  %70 = getelementptr inbounds i8* %3, i64 24064, !dbg !395
  %71 = bitcast i8* %70 to float*, !dbg !395
  store float 6.470000e+02, float* %71, align 4, !dbg !396, !tbaa !297
  %72 = getelementptr inbounds i8* %3, i64 24068, !dbg !397
  %73 = bitcast i8* %72 to float*, !dbg !397
  store float 4.150000e+02, float* %73, align 4, !dbg !398, !tbaa !297
  %74 = getelementptr inbounds i8* %3, i64 24072, !dbg !399
  %75 = bitcast i8* %74 to float*, !dbg !399
  store float 5.510000e+02, float* %75, align 4, !dbg !400, !tbaa !297
  %76 = getelementptr inbounds i8* %3, i64 24076, !dbg !401
  %77 = bitcast i8* %76 to float*, !dbg !401
  store float 9.260000e+02, float* %77, align 4, !dbg !402, !tbaa !297
  %78 = getelementptr inbounds i8* %3, i64 24080, !dbg !403
  %79 = bitcast i8* %78 to float*, !dbg !403
  store float 6.230000e+02, float* %79, align 4, !dbg !404, !tbaa !297
  %80 = getelementptr inbounds i8* %3, i64 24084, !dbg !405
  %81 = bitcast i8* %80 to float*, !dbg !405
  store float 5.050000e+02, float* %81, align 4, !dbg !406, !tbaa !297
  %82 = getelementptr inbounds i8* %3, i64 24088, !dbg !407
  %83 = bitcast i8* %82 to float*, !dbg !407
  store float 1.020000e+02, float* %83, align 4, !dbg !408, !tbaa !297
  %84 = getelementptr inbounds i8* %3, i64 24092, !dbg !409
  %85 = bitcast i8* %84 to float*, !dbg !409
  store float 2.690000e+02, float* %85, align 4, !dbg !410, !tbaa !297
  br label %123, !dbg !411

; <label>:86                                      ; preds = %0
  %87 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #7, !dbg !412
  %88 = bitcast i8* %87 to %struct.p7prior_s*, !dbg !415
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %88, i64 0, metadata !260, metadata !276) #6, !dbg !416
  %89 = bitcast i8* %87 to i32*, !dbg !417
  store i32 0, i32* %89, align 4, !dbg !418, !tbaa !287
  %90 = getelementptr inbounds i8* %87, i64 4, !dbg !419
  %91 = bitcast i8* %90 to i32*, !dbg !419
  store i32 1, i32* %91, align 4, !dbg !420, !tbaa !294
  %92 = getelementptr inbounds i8* %87, i64 8, !dbg !421
  %93 = bitcast i8* %92 to float*, !dbg !421
  store float 1.000000e+00, float* %93, align 4, !dbg !422, !tbaa !297
  %94 = getelementptr inbounds i8* %87, i64 808, !dbg !423
  %95 = bitcast i8* %94 to float*, !dbg !423
  store float 0x3FE967A100000000, float* %95, align 4, !dbg !424, !tbaa !297
  %96 = getelementptr inbounds i8* %87, i64 812, !dbg !425
  %97 = bitcast i8* %96 to float*, !dbg !425
  store float 0x3F9C779A60000000, float* %97, align 4, !dbg !426, !tbaa !297
  %98 = getelementptr inbounds i8* %87, i64 816, !dbg !427
  %99 = bitcast i8* %98 to float*, !dbg !427
  store float 0x3F8BA5E360000000, float* %99, align 4, !dbg !428, !tbaa !297
  %100 = getelementptr inbounds i8* %87, i64 820, !dbg !429
  %101 = bitcast i8* %100 to float*, !dbg !429
  store float 0x3FC3DA5120000000, float* %101, align 4, !dbg !430, !tbaa !297
  %102 = getelementptr inbounds i8* %87, i64 824, !dbg !431
  %103 = bitcast i8* %102 to float*, !dbg !431
  store float 0x3FC1096BC0000000, float* %103, align 4, !dbg !432, !tbaa !297
  %104 = getelementptr inbounds i8* %87, i64 828, !dbg !433
  %105 = bitcast i8* %104 to float*, !dbg !433
  store float 0x3FECCE7040000000, float* %105, align 4, !dbg !434, !tbaa !297
  %106 = getelementptr inbounds i8* %87, i64 832, !dbg !435
  %107 = bitcast i8* %106 to float*, !dbg !435
  store float 0x3FE20418A0000000, float* %107, align 4, !dbg !436, !tbaa !297
  %108 = getelementptr inbounds i8* %87, i64 6408, !dbg !437
  %109 = bitcast i8* %108 to i32*, !dbg !437
  store i32 1, i32* %109, align 4, !dbg !438, !tbaa !303
  %110 = getelementptr inbounds i8* %87, i64 6412, !dbg !439
  %111 = bitcast i8* %110 to float*, !dbg !439
  store float 1.000000e+00, float* %111, align 4, !dbg !440, !tbaa !297
  %112 = getelementptr inbounds i8* %87, i64 7212, !dbg !441
  %113 = bitcast i8* %112 to float*, !dbg !441
  %114 = load i32* @Alphabet_size, align 4, !dbg !442, !tbaa !308
  tail call void @FSet(float* %113, i32 %114, float 1.000000e+00) #7, !dbg !443
  %115 = getelementptr inbounds i8* %87, i64 23212, !dbg !444
  %116 = bitcast i8* %115 to i32*, !dbg !444
  store i32 1, i32* %116, align 4, !dbg !445, !tbaa !312
  %117 = getelementptr inbounds i8* %87, i64 23216, !dbg !446
  %118 = bitcast i8* %117 to float*, !dbg !446
  store float 1.000000e+00, float* %118, align 4, !dbg !447, !tbaa !297
  %119 = getelementptr inbounds i8* %87, i64 24016, !dbg !448
  %120 = bitcast i8* %119 to float*, !dbg !448
  %121 = load i32* @Alphabet_size, align 4, !dbg !449, !tbaa !308
  tail call void @FSet(float* %120, i32 %121, float 1.000000e+00) #7, !dbg !450
  br label %123, !dbg !451

; <label>:122                                     ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !452
  br label %123, !dbg !453

; <label>:123                                     ; preds = %0, %122, %86, %default_amino_prior.exit
  %.0 = phi %struct.p7prior_s* [ %88, %86 ], [ %4, %default_amino_prior.exit ], [ null, %122 ], [ null, %0 ]
  ret %struct.p7prior_s* %.0, !dbg !454
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.p7prior_s* @P7ReadPrior(i8* %prifile) #0 {
  tail call void @llvm.dbg.value(metadata i8* %prifile, i64 0, metadata !50, metadata !276), !dbg !455
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %prifile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !456
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !51, metadata !276), !dbg !458
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !459
  br i1 %2, label %3, label %4, !dbg !460

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i8* %prifile) #7, !dbg !461
  br label %4, !dbg !461

; <label>:4                                       ; preds = %3, %0
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #7, !dbg !462
  %6 = bitcast i8* %5 to %struct.p7prior_s*, !dbg !464
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %6, i64 0, metadata !112, metadata !276), !dbg !465
  %7 = tail call i8* @Getword(%struct.__sFILE* %1, i32 4) #7, !dbg !466
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !113, metadata !276), !dbg !467
  tail call void @s2upper(i8* %7) #7, !dbg !468
  %8 = tail call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !469
  %9 = icmp eq i32 %8, 0, !dbg !471
  br i1 %9, label %10, label %12, !dbg !472

; <label>:10                                      ; preds = %4
  %11 = bitcast i8* %5 to i32*, !dbg !473
  store i32 0, i32* %11, align 4, !dbg !474, !tbaa !287
  br label %13, !dbg !475

; <label>:12                                      ; preds = %4
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %7, i8* %prifile) #7, !dbg !476
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = tail call i8* @Getword(%struct.__sFILE* %1, i32 4) #7, !dbg !477
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !113, metadata !276), !dbg !467
  tail call void @s2upper(i8* %14) #7, !dbg !478
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !479
  %16 = icmp eq i32 %15, 0, !dbg !481
  br i1 %16, label %17, label %21, !dbg !482

; <label>:17                                      ; preds = %13
  %18 = load i32* @Alphabet_type, align 4, !dbg !483, !tbaa !308
  %19 = icmp eq i32 %18, 3, !dbg !486
  br i1 %19, label %29, label %20, !dbg !487

; <label>:20                                      ; preds = %17
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i8* %prifile) #7, !dbg !488
  br label %29, !dbg !488

; <label>:21                                      ; preds = %13
  %22 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !489
  %23 = icmp eq i32 %22, 0, !dbg !491
  br i1 %23, label %24, label %28, !dbg !492

; <label>:24                                      ; preds = %21
  %25 = load i32* @Alphabet_type, align 4, !dbg !493, !tbaa !308
  %26 = icmp eq i32 %25, 2, !dbg !496
  br i1 %26, label %29, label %27, !dbg !497

; <label>:27                                      ; preds = %24
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str9, i64 0, i64 0), i8* %prifile) #7, !dbg !498
  br label %29, !dbg !498

; <label>:28                                      ; preds = %21
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0), i8* %14, i8* %prifile) #7, !dbg !499
  br label %29

; <label>:29                                      ; preds = %17, %24, %28, %27, %20
  %30 = tail call i8* @Getword(%struct.__sFILE* %1, i32 1) #7, !dbg !500
  %31 = tail call i32 @atoi(i8* %30) #7, !dbg !501
  %32 = getelementptr inbounds i8* %5, i64 4, !dbg !502
  %33 = bitcast i8* %32 to i32*, !dbg !502
  store i32 %31, i32* %33, align 4, !dbg !503, !tbaa !294
  %34 = icmp slt i32 %31, 0, !dbg !504
  br i1 %34, label %35, label %36, !dbg !506

; <label>:35                                      ; preds = %29
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i32 %31) #7, !dbg !507
  %.pr = load i32* %33, align 4, !dbg !508, !tbaa !294
  br label %36, !dbg !507

; <label>:36                                      ; preds = %35, %29
  %37 = phi i32 [ %.pr, %35 ], [ %31, %29 ], !dbg !508
  %38 = icmp sgt i32 %37, 200, !dbg !510
  br i1 %38, label %39, label %.preheader4, !dbg !511

; <label>:39                                      ; preds = %36
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str12, i64 0, i64 0), i32 200) #7, !dbg !512
  %.pre = load i32* %33, align 4, !dbg !513, !tbaa !294
  br label %.preheader4, !dbg !512

.preheader4:                                      ; preds = %39, %36
  %40 = phi i32 [ %.pre, %39 ], [ %37, %36 ]
  %41 = icmp sgt i32 %40, 0, !dbg !516
  br i1 %41, label %.lr.ph18, label %._crit_edge19, !dbg !517

.lr.ph18:                                         ; preds = %.preheader4, %51
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %51 ], [ 0, %.preheader4 ]
  %42 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !518
  %43 = tail call double @atof(i8* %42) #7, !dbg !520
  %44 = fptrunc double %43 to float, !dbg !521
  %45 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 2, i64 %indvars.iv28, !dbg !522
  store float %44, float* %45, align 4, !dbg !523, !tbaa !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !115, metadata !276), !dbg !524
  br label %46, !dbg !525

; <label>:46                                      ; preds = %46, %.lr.ph18
  %indvars.iv26 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next27, %46 ]
  %47 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !527
  %48 = tail call double @atof(i8* %47) #7, !dbg !529
  %49 = fptrunc double %48 to float, !dbg !530
  %50 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 3, i64 %indvars.iv28, i64 %indvars.iv26, !dbg !531
  store float %49, float* %50, align 4, !dbg !532, !tbaa !297
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !525
  %exitcond = icmp eq i64 %indvars.iv.next27, 7, !dbg !525
  br i1 %exitcond, label %51, label %46, !dbg !525

; <label>:51                                      ; preds = %46
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !517
  %52 = load i32* %33, align 4, !dbg !513, !tbaa !294
  %53 = sext i32 %52 to i64, !dbg !516
  %54 = icmp slt i64 %indvars.iv.next29, %53, !dbg !516
  br i1 %54, label %.lr.ph18, label %._crit_edge19, !dbg !517

._crit_edge19:                                    ; preds = %51, %.preheader4
  %55 = tail call i8* @Getword(%struct.__sFILE* %1, i32 1) #7, !dbg !533
  %56 = tail call i32 @atoi(i8* %55) #7, !dbg !534
  %57 = getelementptr inbounds i8* %5, i64 6408, !dbg !535
  %58 = bitcast i8* %57 to i32*, !dbg !535
  store i32 %56, i32* %58, align 4, !dbg !536, !tbaa !303
  %59 = icmp slt i32 %56, 0, !dbg !537
  br i1 %59, label %60, label %61, !dbg !539

; <label>:60                                      ; preds = %._crit_edge19
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i32 %56) #7, !dbg !540
  %.pr1 = load i32* %58, align 4, !dbg !541, !tbaa !303
  br label %61, !dbg !540

; <label>:61                                      ; preds = %60, %._crit_edge19
  %62 = phi i32 [ %.pr1, %60 ], [ %56, %._crit_edge19 ], !dbg !541
  %63 = icmp sgt i32 %62, 200, !dbg !543
  br i1 %63, label %64, label %.preheader3, !dbg !544

; <label>:64                                      ; preds = %61
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str14, i64 0, i64 0), i32 %62, i32 200) #7, !dbg !545
  %.pre30 = load i32* %58, align 4, !dbg !546, !tbaa !303
  br label %.preheader3, !dbg !545

.preheader3:                                      ; preds = %64, %61
  %65 = phi i32 [ %.pre30, %64 ], [ %62, %61 ]
  %66 = icmp sgt i32 %65, 0, !dbg !549
  br i1 %66, label %.lr.ph14, label %._crit_edge15, !dbg !550

.lr.ph14:                                         ; preds = %.preheader3, %._crit_edge12
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %._crit_edge12 ], [ 0, %.preheader3 ]
  %67 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !551
  %68 = tail call double @atof(i8* %67) #7, !dbg !553
  %69 = fptrunc double %68 to float, !dbg !554
  %70 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 5, i64 %indvars.iv24, !dbg !555
  store float %69, float* %70, align 4, !dbg !556, !tbaa !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !115, metadata !276), !dbg !524
  %71 = load i32* @Alphabet_size, align 4, !dbg !557, !tbaa !308
  %72 = icmp sgt i32 %71, 0, !dbg !560
  br i1 %72, label %.lr.ph11, label %._crit_edge12, !dbg !561

.lr.ph11:                                         ; preds = %.lr.ph14, %.lr.ph11
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph11 ], [ 0, %.lr.ph14 ]
  %73 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !562
  %74 = tail call double @atof(i8* %73) #7, !dbg !563
  %75 = fptrunc double %74 to float, !dbg !564
  %76 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 6, i64 %indvars.iv24, i64 %indvars.iv22, !dbg !565
  store float %75, float* %76, align 4, !dbg !566, !tbaa !297
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !561
  %77 = load i32* @Alphabet_size, align 4, !dbg !557, !tbaa !308
  %78 = sext i32 %77 to i64, !dbg !560
  %79 = icmp slt i64 %indvars.iv.next23, %78, !dbg !560
  br i1 %79, label %.lr.ph11, label %._crit_edge12, !dbg !561

._crit_edge12:                                    ; preds = %.lr.ph11, %.lr.ph14
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !550
  %80 = load i32* %58, align 4, !dbg !546, !tbaa !303
  %81 = sext i32 %80 to i64, !dbg !549
  %82 = icmp slt i64 %indvars.iv.next25, %81, !dbg !549
  br i1 %82, label %.lr.ph14, label %._crit_edge15, !dbg !550

._crit_edge15:                                    ; preds = %._crit_edge12, %.preheader3
  %83 = tail call i8* @Getword(%struct.__sFILE* %1, i32 1) #7, !dbg !567
  %84 = tail call i32 @atoi(i8* %83) #7, !dbg !568
  %85 = getelementptr inbounds i8* %5, i64 23212, !dbg !569
  %86 = bitcast i8* %85 to i32*, !dbg !569
  store i32 %84, i32* %86, align 4, !dbg !570, !tbaa !312
  %87 = icmp slt i32 %84, 0, !dbg !571
  br i1 %87, label %88, label %89, !dbg !573

; <label>:88                                      ; preds = %._crit_edge15
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str15, i64 0, i64 0), i32 %84) #7, !dbg !574
  %.pr2 = load i32* %86, align 4, !dbg !575, !tbaa !312
  br label %89, !dbg !574

; <label>:89                                      ; preds = %88, %._crit_edge15
  %90 = phi i32 [ %.pr2, %88 ], [ %84, %._crit_edge15 ], !dbg !575
  %91 = icmp sgt i32 %90, 200, !dbg !577
  br i1 %91, label %92, label %.preheader, !dbg !578

; <label>:92                                      ; preds = %89
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0), i32 %90, i32 200) #7, !dbg !579
  %.pre31 = load i32* %86, align 4, !dbg !580, !tbaa !312
  br label %.preheader, !dbg !579

.preheader:                                       ; preds = %92, %89
  %93 = phi i32 [ %.pre31, %92 ], [ %90, %89 ]
  %94 = icmp sgt i32 %93, 0, !dbg !583
  br i1 %94, label %.lr.ph7, label %._crit_edge8, !dbg !584

.lr.ph7:                                          ; preds = %.preheader, %._crit_edge
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %._crit_edge ], [ 0, %.preheader ]
  %95 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !585
  %96 = tail call double @atof(i8* %95) #7, !dbg !587
  %97 = fptrunc double %96 to float, !dbg !588
  %98 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 8, i64 %indvars.iv20, !dbg !589
  store float %97, float* %98, align 4, !dbg !590, !tbaa !297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !115, metadata !276), !dbg !524
  %99 = load i32* @Alphabet_size, align 4, !dbg !591, !tbaa !308
  %100 = icmp sgt i32 %99, 0, !dbg !594
  br i1 %100, label %.lr.ph, label %._crit_edge, !dbg !595

.lr.ph:                                           ; preds = %.lr.ph7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph7 ]
  %101 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !596
  %102 = tail call double @atof(i8* %101) #7, !dbg !597
  %103 = fptrunc double %102 to float, !dbg !598
  %104 = getelementptr inbounds %struct.p7prior_s* %6, i64 0, i32 9, i64 %indvars.iv20, i64 %indvars.iv, !dbg !599
  store float %103, float* %104, align 4, !dbg !600, !tbaa !297
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !595
  %105 = load i32* @Alphabet_size, align 4, !dbg !591, !tbaa !308
  %106 = sext i32 %105 to i64, !dbg !594
  %107 = icmp slt i64 %indvars.iv.next, %106, !dbg !594
  br i1 %107, label %.lr.ph, label %._crit_edge, !dbg !595

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph7
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !584
  %108 = load i32* %86, align 4, !dbg !580, !tbaa !312
  %109 = sext i32 %108 to i64, !dbg !583
  %110 = icmp slt i64 %indvars.iv.next21, %109, !dbg !583
  br i1 %110, label %.lr.ph7, label %._crit_edge8, !dbg !584

._crit_edge8:                                     ; preds = %._crit_edge, %.preheader
  %111 = tail call i32 @fclose(%struct.__sFILE* %1) #7, !dbg !601
  ret %struct.p7prior_s* %6, !dbg !602
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @Getword(%struct.__sFILE*, i32) #1

; Function Attrs: optsize
declare void @s2upper(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PAMPrior(i8* %pamfile, %struct.p7prior_s* %pri, float %wt) #0 {
  %pam = alloca i32**, align 8
  %scale = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %pamfile, i64 0, metadata !120, metadata !276), !dbg !603
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %pri, i64 0, metadata !121, metadata !276), !dbg !604
  tail call void @llvm.dbg.value(metadata float %wt, i64 0, metadata !122, metadata !276), !dbg !605
  %1 = load i32* @Alphabet_type, align 4, !dbg !606, !tbaa !308
  %2 = icmp eq i32 %1, 3, !dbg !608
  br i1 %2, label %4, label %3, !dbg !609

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !610
  br label %4, !dbg !610

; <label>:4                                       ; preds = %0, %3
  %5 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0, !dbg !611
  %6 = load i32* %5, align 4, !dbg !611, !tbaa !287
  %7 = icmp eq i32 %6, 0, !dbg !613
  br i1 %7, label %9, label %8, !dbg !614

; <label>:8                                       ; preds = %4
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !615
  br label %9, !dbg !615

; <label>:9                                       ; preds = %4, %8
  %10 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7, !dbg !616
  %11 = load i32* %10, align 4, !dbg !616, !tbaa !312
  %12 = icmp eq i32 %11, 1, !dbg !618
  br i1 %12, label %14, label %13, !dbg !619

; <label>:13                                      ; preds = %9
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([67 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !620
  br label %14, !dbg !620

; <label>:14                                      ; preds = %9, %13
  %15 = tail call i8* @FileConcat(i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* %pamfile) #7, !dbg !621
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !124, metadata !276), !dbg !622
  %16 = tail call %struct.__sFILE* @"\01_fopen"(i8* %pamfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !623
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %16, i64 0, metadata !123, metadata !276), !dbg !625
  %17 = icmp eq %struct.__sFILE* %16, null, !dbg !626
  br i1 %17, label %18, label %25, !dbg !627

; <label>:18                                      ; preds = %14
  %19 = tail call %struct.__sFILE* @EnvFileOpen(i8* %pamfile, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #7, !dbg !628
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %19, i64 0, metadata !123, metadata !276), !dbg !625
  %20 = icmp eq %struct.__sFILE* %19, null, !dbg !629
  br i1 %20, label %21, label %25, !dbg !630

; <label>:21                                      ; preds = %18
  %22 = tail call %struct.__sFILE* @EnvFileOpen(i8* %15, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #7, !dbg !631
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %22, i64 0, metadata !123, metadata !276), !dbg !625
  %23 = icmp eq %struct.__sFILE* %22, null, !dbg !632
  br i1 %23, label %24, label %25, !dbg !633

; <label>:24                                      ; preds = %21
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str22, i64 0, i64 0), i8* %pamfile) #7, !dbg !634
  br label %25, !dbg !634

; <label>:25                                      ; preds = %24, %21, %18, %14
  %fp.0 = phi %struct.__sFILE* [ null, %24 ], [ %22, %21 ], [ %19, %18 ], [ %16, %14 ]
  tail call void @llvm.dbg.value(metadata i32*** %pam, i64 0, metadata !125, metadata !276), !dbg !635
  tail call void @llvm.dbg.value(metadata float* %scale, i64 0, metadata !128, metadata !276), !dbg !636
  %26 = call i32 @ParsePAMFile(%struct.__sFILE* %fp.0, i32*** %pam, float* %scale) #7, !dbg !637
  %27 = icmp eq i32 %26, 0, !dbg !637
  br i1 %27, label %28, label %29, !dbg !639

; <label>:28                                      ; preds = %25
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str23, i64 0, i64 0), i8* %pamfile) #7, !dbg !640
  br label %29, !dbg !640

; <label>:29                                      ; preds = %25, %28
  %30 = call i32 @fclose(%struct.__sFILE* %fp.0) #7, !dbg !641
  call void @free(i8* %15) #8, !dbg !642
  store i32 1, i32* %5, align 4, !dbg !643, !tbaa !287
  %31 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !644
  store i32 20, i32* %31, align 4, !dbg !645, !tbaa !303
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !276), !dbg !646
  %32 = load i32* @Alphabet_size, align 4, !dbg !647, !tbaa !308
  %33 = icmp sgt i32 %32, 0, !dbg !650
  br i1 %33, label %.preheader1.lr.ph, label %._crit_edge, !dbg !651

.preheader1.lr.ph:                                ; preds = %29
  %34 = load float* %scale, align 4, !dbg !652, !tbaa !297
  br label %.lr.ph4, !dbg !651

.lr.ph4:                                          ; preds = %._crit_edge5, %.preheader1.lr.ph
  %indvars.iv9 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next10, %._crit_edge5 ]
  %35 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv9, !dbg !656
  %.pre = load i32*** %pam, align 8, !dbg !657, !tbaa !658
  br label %36, !dbg !660

.preheader:                                       ; preds = %._crit_edge5
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !661

; <label>:36                                      ; preds = %.lr.ph4, %36
  %indvars.iv7 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next8, %36 ]
  %37 = load i8* %35, align 1, !dbg !656, !tbaa !663
  %38 = sext i8 %37 to i64, !dbg !656
  %39 = add nsw i64 %38, -65, !dbg !664
  %40 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv7, !dbg !665
  %41 = load i8* %40, align 1, !dbg !665, !tbaa !663
  %42 = sext i8 %41 to i64, !dbg !665
  %43 = add nsw i64 %42, -65, !dbg !666
  %44 = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv7, !dbg !667
  %45 = load float* %44, align 4, !dbg !667, !tbaa !297
  %46 = fpext float %45 to double, !dbg !667
  call void @llvm.dbg.value(metadata i32*** %pam, i64 0, metadata !125, metadata !276), !dbg !635
  %47 = getelementptr inbounds i32** %.pre, i64 %39, !dbg !657
  %48 = load i32** %47, align 8, !dbg !657, !tbaa !658
  %49 = getelementptr inbounds i32* %48, i64 %43, !dbg !657
  %50 = load i32* %49, align 4, !dbg !657, !tbaa !308
  %51 = sitofp i32 %50 to float, !dbg !668
  call void @llvm.dbg.value(metadata float* %scale, i64 0, metadata !128, metadata !276), !dbg !636
  %52 = fmul float %51, %34, !dbg !669
  %53 = fpext float %52 to double, !dbg !668
  %54 = call double @exp(double %53) #9, !dbg !670
  %55 = fmul double %46, %54, !dbg !671
  %56 = fptrunc double %55 to float, !dbg !667
  %57 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv9, i64 %indvars.iv7, !dbg !672
  store float %56, float* %57, align 4, !dbg !673, !tbaa !297
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !660
  %58 = sext i32 %32 to i64, !dbg !674
  %59 = icmp slt i64 %indvars.iv.next8, %58, !dbg !674
  br i1 %59, label %36, label %._crit_edge5, !dbg !660

._crit_edge5:                                     ; preds = %36
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !651
  %60 = icmp slt i64 %indvars.iv.next10, %58, !dbg !650
  br i1 %60, label %.lr.ph4, label %.preheader, !dbg !651

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %61 = phi i32 [ %68, %.lr.ph ], [ %32, %.preheader ]
  %62 = sitofp i32 %61 to double, !dbg !675
  %63 = fdiv double 1.000000e+00, %62, !dbg !678
  %64 = fptrunc double %63 to float, !dbg !679
  %65 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 %indvars.iv, !dbg !680
  store float %64, float* %65, align 4, !dbg !681, !tbaa !297
  %66 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv, i64 0, !dbg !682
  call void @FNorm(float* %66, i32 %61) #7, !dbg !683
  %67 = load i32* @Alphabet_size, align 4, !dbg !684, !tbaa !308
  call void @FScale(float* %66, i32 %67, float %wt) #7, !dbg !685
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !661
  %68 = load i32* @Alphabet_size, align 4, !dbg !686, !tbaa !308
  %69 = sext i32 %68 to i64, !dbg !687
  %70 = icmp slt i64 %indvars.iv.next, %69, !dbg !687
  br i1 %70, label %.lr.ph, label %._crit_edge, !dbg !661

._crit_edge:                                      ; preds = %.lr.ph, %29, %.preheader
  call void @llvm.dbg.value(metadata i32*** %pam, i64 0, metadata !125, metadata !276), !dbg !635
  %71 = bitcast i32*** %pam to i8***, !dbg !688
  %72 = load i8*** %71, align 8, !dbg !688, !tbaa !658
  call void @Free2DArray(i8** %72, i32 27) #7, !dbg !689
  ret void, !dbg !690
}

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #1

; Function Attrs: optsize
declare %struct.__sFILE* @EnvFileOpen(i8*, i8*, i8**) #1

; Function Attrs: optsize
declare i32 @ParsePAMFile(%struct.__sFILE*, i32***, float*) #1

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #5

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P7DefaultNullModel(float* nocapture %null, float* nocapture %ret_p1) #0 {
  tail call void @llvm.dbg.value(metadata float* %null, i64 0, metadata !138, metadata !276), !dbg !691
  tail call void @llvm.dbg.value(metadata float* %ret_p1, i64 0, metadata !139, metadata !276), !dbg !692
  %1 = load i32* @Alphabet_type, align 4, !dbg !693, !tbaa !308
  %2 = icmp eq i32 %1, 3, !dbg !695
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !140, metadata !276), !dbg !696
  %3 = load i32* @Alphabet_size, align 4, !dbg !697, !tbaa !308
  %4 = icmp sgt i32 %3, 0, !dbg !701
  br i1 %2, label %.preheader, label %.preheader1, !dbg !702

.preheader1:                                      ; preds = %0
  br i1 %4, label %.lr.ph5, label %.loopexit, !dbg !703

.lr.ph5:                                          ; preds = %.preheader1
  %5 = sext i32 %3 to i64, !dbg !703
  br label %14, !dbg !703

.preheader:                                       ; preds = %0
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !706

.lr.ph:                                           ; preds = %.preheader
  %6 = sext i32 %3 to i64, !dbg !706
  br label %7, !dbg !706

; <label>:7                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %8 = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv, !dbg !707
  %9 = bitcast float* %8 to i32*, !dbg !707
  %10 = load i32* %9, align 4, !dbg !707, !tbaa !297
  %11 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !708
  %12 = bitcast float* %11 to i32*, !dbg !709
  store i32 %10, i32* %12, align 4, !dbg !709, !tbaa !297
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !706
  %13 = icmp slt i64 %indvars.iv.next, %6, !dbg !701
  br i1 %13, label %7, label %.loopexit, !dbg !706

; <label>:14                                      ; preds = %.lr.ph5, %14
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %14 ]
  %15 = sitofp i32 %3 to float, !dbg !710
  %16 = fdiv float 1.000000e+00, %15, !dbg !712
  %17 = getelementptr inbounds float* %null, i64 %indvars.iv7, !dbg !713
  store float %16, float* %17, align 4, !dbg !714, !tbaa !297
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !703
  %18 = icmp slt i64 %indvars.iv.next8, %5, !dbg !715
  br i1 %18, label %14, label %.loopexit, !dbg !703

.loopexit:                                        ; preds = %14, %7, %.preheader1, %.preheader
  %storemerge = phi float [ 0x3FEFE8A940000000, %.preheader ], [ 0x3FEFF7D100000000, %.preheader1 ], [ 0x3FEFE8A940000000, %7 ], [ 0x3FEFF7D100000000, %14 ]
  store float %storemerge, float* %ret_p1, align 4, !dbg !716, !tbaa !297
  ret void, !dbg !717
}

; Function Attrs: nounwind optsize ssp uwtable
define void @P7ReadNullModel(i8* %rndfile, float* nocapture %null, float* nocapture %ret_p1) #0 {
  tail call void @llvm.dbg.value(metadata i8* %rndfile, i64 0, metadata !145, metadata !276), !dbg !718
  tail call void @llvm.dbg.value(metadata float* %null, i64 0, metadata !146, metadata !276), !dbg !719
  tail call void @llvm.dbg.value(metadata float* %ret_p1, i64 0, metadata !147, metadata !276), !dbg !720
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !151, metadata !276), !dbg !721
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %rndfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !722
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !148, metadata !276), !dbg !724
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !725
  br i1 %2, label %3, label %4, !dbg !726

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i8* %rndfile) #7, !dbg !727
  br label %4, !dbg !727

; <label>:4                                       ; preds = %3, %0
  %5 = tail call i8* @Getword(%struct.__sFILE* %1, i32 4) #7, !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !149, metadata !276), !dbg !730
  %6 = icmp eq i8* %5, null, !dbg !731
  br i1 %6, label %.loopexit, label %7, !dbg !732

; <label>:7                                       ; preds = %4
  tail call void @s2upper(i8* %5) #7, !dbg !733
  %8 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !734
  %9 = icmp eq i32 %8, 0, !dbg !736
  br i1 %9, label %13, label %10, !dbg !737

; <label>:10                                      ; preds = %7
  %11 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !738
  %12 = icmp eq i32 %11, 0, !dbg !740
  br i1 %12, label %13, label %.loopexit, !dbg !741

; <label>:13                                      ; preds = %10, %7
  %type.0 = phi i32 [ 2, %7 ], [ 3, %10 ]
  %14 = load i32* @Alphabet_type, align 4, !dbg !742, !tbaa !308
  %15 = icmp eq i32 %14, 0, !dbg !744
  br i1 %15, label %16, label %17, !dbg !745

; <label>:16                                      ; preds = %13
  tail call void @SetAlphabet(i32 %type.0) #7, !dbg !746
  br label %.preheader, !dbg !746

; <label>:17                                      ; preds = %13
  %18 = icmp eq i32 %14, %type.0, !dbg !747
  br i1 %18, label %.preheader, label %19, !dbg !749

; <label>:19                                      ; preds = %17
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([59 x i8]* @.str25, i64 0, i64 0), i8* %rndfile) #7, !dbg !750
  br label %.preheader, !dbg !750

.preheader:                                       ; preds = %17, %19, %16
  %20 = load i32* @Alphabet_size, align 4, !dbg !751, !tbaa !308
  %21 = icmp sgt i32 %20, 0, !dbg !754
  %22 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !755
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !149, metadata !276), !dbg !730
  %23 = icmp eq i8* %22, null, !dbg !758
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !759

.lr.ph:                                           ; preds = %.preheader, %26
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ 0, %.preheader ]
  %24 = phi i1 [ %34, %26 ], [ %23, %.preheader ]
  %25 = phi i8* [ %33, %26 ], [ %22, %.preheader ]
  br i1 %24, label %.loopexit, label %26, !dbg !760

; <label>:26                                      ; preds = %.lr.ph
  %27 = tail call double @atof(i8* %25) #7, !dbg !761
  %28 = fptrunc double %27 to float, !dbg !761
  %29 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !762
  store float %28, float* %29, align 4, !dbg !763, !tbaa !297
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !759
  %30 = load i32* @Alphabet_size, align 4, !dbg !751, !tbaa !308
  %31 = sext i32 %30 to i64, !dbg !754
  %32 = icmp slt i64 %indvars.iv.next, %31, !dbg !754
  %33 = tail call i8* @Getword(%struct.__sFILE* %1, i32 2) #7, !dbg !755
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !149, metadata !276), !dbg !730
  %34 = icmp eq i8* %33, null, !dbg !758
  br i1 %32, label %.lr.ph, label %._crit_edge, !dbg !759

._crit_edge:                                      ; preds = %26, %.preheader
  %.lcssa2 = phi i1 [ %23, %.preheader ], [ %34, %26 ]
  %.lcssa = phi i8* [ %22, %.preheader ], [ %33, %26 ]
  br i1 %.lcssa2, label %.loopexit, label %35, !dbg !764

; <label>:35                                      ; preds = %._crit_edge
  %36 = tail call double @atof(i8* %.lcssa) #7, !dbg !765
  %37 = fptrunc double %36 to float, !dbg !765
  store float %37, float* %ret_p1, align 4, !dbg !766, !tbaa !297
  %38 = tail call i32 @fclose(%struct.__sFILE* %1) #7, !dbg !767
  br label %40, !dbg !768

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %10, %4
  %39 = tail call i32 @fclose(%struct.__sFILE* %1) #7, !dbg !769
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %rndfile) #7, !dbg !770
  br label %40, !dbg !771

; <label>:40                                      ; preds = %.loopexit, %35
  ret void, !dbg !771
}

; Function Attrs: optsize
declare void @SetAlphabet(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P7PriorifyHMM(%struct.plan7_s* %hmm, %struct.p7prior_s* %pri) #0 {
  %tq = alloca [200 x float], align 16
  %mq = alloca [200 x float], align 16
  %iq = alloca [200 x float], align 16
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !215, metadata !276), !dbg !772
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %pri, i64 0, metadata !216, metadata !276), !dbg !773
  %1 = bitcast [200 x float]* %tq to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 800, i8* %1) #6, !dbg !774
  tail call void @llvm.dbg.declare(metadata [200 x float]* %tq, metadata !219, metadata !276), !dbg !775
  %2 = bitcast [200 x float]* %mq to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 800, i8* %2) #6, !dbg !776
  tail call void @llvm.dbg.declare(metadata [200 x float]* %mq, metadata !220, metadata !276), !dbg !777
  %3 = bitcast [200 x float]* %iq to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 800, i8* %3) #6, !dbg !778
  tail call void @llvm.dbg.declare(metadata [200 x float]* %iq, metadata !221, metadata !276), !dbg !779
  %4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !780
  %5 = load float** %4, align 8, !dbg !780, !tbaa !781
  %6 = getelementptr inbounds float* %5, i64 2, !dbg !783
  %7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !784
  %8 = load i32* %7, align 4, !dbg !784, !tbaa !785
  %9 = add nsw i32 %8, -1, !dbg !786
  tail call void @FSet(float* %6, i32 %9, float 0.000000e+00) #7, !dbg !787
  %10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !788
  %11 = load float** %10, align 8, !dbg !788, !tbaa !789
  %12 = getelementptr inbounds float* %11, i64 1, !dbg !790
  %13 = load i32* %7, align 4, !dbg !791, !tbaa !785
  %14 = add nsw i32 %13, -1, !dbg !792
  tail call void @FSet(float* %12, i32 %14, float 0.000000e+00) #7, !dbg !793
  %15 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !794
  %16 = load float* %15, align 4, !dbg !794, !tbaa !795
  %17 = load float** %4, align 8, !dbg !796, !tbaa !781
  %18 = getelementptr inbounds float* %17, i64 1, !dbg !797
  %19 = load float* %18, align 4, !dbg !797, !tbaa !297
  %20 = fadd float %16, %19, !dbg !798
  %21 = fadd float %20, 2.000000e+00, !dbg !799
  tail call void @llvm.dbg.value(metadata float %21, i64 0, metadata !218, metadata !276), !dbg !800
  %22 = fpext float %16 to double, !dbg !801
  %23 = fadd double %22, 1.000000e+00, !dbg !802
  %24 = fpext float %21 to double, !dbg !803
  %25 = fdiv double %23, %24, !dbg !804
  %26 = fptrunc double %25 to float, !dbg !805
  store float %26, float* %15, align 4, !dbg !806, !tbaa !795
  %27 = load float* %18, align 4, !dbg !807, !tbaa !297
  %28 = fpext float %27 to double, !dbg !807
  %29 = fadd double %28, 1.000000e+00, !dbg !808
  %30 = fdiv double %29, %24, !dbg !809
  %31 = fptrunc double %30 to float, !dbg !810
  store float %31, float* %18, align 4, !dbg !811, !tbaa !297
  %32 = load i32* %7, align 4, !dbg !812, !tbaa !785
  %33 = sext i32 %32 to i64, !dbg !813
  %34 = load float** %10, align 8, !dbg !814, !tbaa !789
  %35 = getelementptr inbounds float* %34, i64 %33, !dbg !813
  store float 1.000000e+00, float* %35, align 4, !dbg !815, !tbaa !297
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !217, metadata !276), !dbg !816
  %36 = icmp sgt i32 %32, 1, !dbg !817
  br i1 %36, label %.lr.ph, label %._crit_edge8, !dbg !820

._crit_edge8:                                     ; preds = %0
  %.pre9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12, !dbg !821
  br label %._crit_edge, !dbg !820

.lr.ph:                                           ; preds = %0
  %37 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 11, !dbg !823
  %38 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 0, !dbg !826
  %39 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 2, i64 0, !dbg !827
  %40 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 1, !dbg !828
  %41 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12, !dbg !829
  %42 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !831
  %43 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0, !dbg !832
  %44 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !833
  %45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 13, !dbg !834
  %46 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 0, !dbg !836
  %47 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 8, i64 0, !dbg !837
  %48 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7, !dbg !838
  %49 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !839
  %50 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !840
  %51 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0, !dbg !841
  %52 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !842
  %53 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 9, i64 0, !dbg !843
  br label %54, !dbg !820

; <label>:54                                      ; preds = %.lr.ph, %114
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %114 ]
  %55 = load i32** %37, align 8, !dbg !823, !tbaa !844
  %56 = icmp eq i32* %55, null, !dbg !845
  br i1 %56, label %72, label %57, !dbg !846

; <label>:57                                      ; preds = %54
  %58 = getelementptr inbounds i32* %55, i64 %indvars.iv, !dbg !847
  %59 = load i32* %58, align 4, !dbg !847, !tbaa !308
  %60 = icmp sgt i32 %59, -1, !dbg !848
  br i1 %60, label %61, label %72, !dbg !849

; <label>:61                                      ; preds = %57
  %62 = load i32* %40, align 4, !dbg !850, !tbaa !294
  %63 = icmp slt i32 %59, %62, !dbg !853
  br i1 %63, label %65, label %64, !dbg !854

; <label>:64                                      ; preds = %61
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0)) #7, !dbg !855
  %.pre = load i32* %40, align 4, !dbg !856, !tbaa !294
  br label %65, !dbg !855

; <label>:65                                      ; preds = %61, %64
  %66 = phi i32 [ %62, %61 ], [ %.pre, %64 ]
  call void @FSet(float* %38, i32 %66, float 0.000000e+00) #7, !dbg !857
  %67 = load i32** %37, align 8, !dbg !858, !tbaa !844
  %68 = getelementptr inbounds i32* %67, i64 %indvars.iv, !dbg !859
  %69 = load i32* %68, align 4, !dbg !859, !tbaa !308
  %70 = sext i32 %69 to i64, !dbg !860
  %71 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 %70, !dbg !860
  store float 1.000000e+00, float* %71, align 4, !dbg !861, !tbaa !297
  br label %74, !dbg !862

; <label>:72                                      ; preds = %54, %57
  %73 = load i32* %40, align 4, !dbg !828, !tbaa !294
  call void @FCopy(float* %38, float* %39, i32 %73) #7, !dbg !863
  br label %74

; <label>:74                                      ; preds = %72, %65
  %75 = load i32** %41, align 8, !dbg !829, !tbaa !864
  %76 = icmp eq i32* %75, null, !dbg !865
  br i1 %76, label %92, label %77, !dbg !866

; <label>:77                                      ; preds = %74
  %78 = getelementptr inbounds i32* %75, i64 %indvars.iv, !dbg !867
  %79 = load i32* %78, align 4, !dbg !867, !tbaa !308
  %80 = icmp sgt i32 %79, -1, !dbg !868
  br i1 %80, label %81, label %92, !dbg !869

; <label>:81                                      ; preds = %77
  %82 = load i32* %44, align 4, !dbg !870, !tbaa !303
  %83 = icmp slt i32 %79, %82, !dbg !873
  br i1 %83, label %85, label %84, !dbg !874

; <label>:84                                      ; preds = %81
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !875
  %.pre3 = load i32* %44, align 4, !dbg !876, !tbaa !303
  br label %85, !dbg !875

; <label>:85                                      ; preds = %81, %84
  %86 = phi i32 [ %82, %81 ], [ %.pre3, %84 ]
  call void @FSet(float* %42, i32 %86, float 0.000000e+00) #7, !dbg !877
  %87 = load i32** %41, align 8, !dbg !878, !tbaa !864
  %88 = getelementptr inbounds i32* %87, i64 %indvars.iv, !dbg !879
  %89 = load i32* %88, align 4, !dbg !879, !tbaa !308
  %90 = sext i32 %89 to i64, !dbg !880
  %91 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %90, !dbg !880
  store float 1.000000e+00, float* %91, align 4, !dbg !881, !tbaa !297
  br label %94, !dbg !882

; <label>:92                                      ; preds = %74, %77
  %93 = load i32* %44, align 4, !dbg !833, !tbaa !303
  call void @FCopy(float* %42, float* %43, i32 %93) #7, !dbg !883
  br label %94

; <label>:94                                      ; preds = %92, %85
  %95 = load i32** %45, align 8, !dbg !834, !tbaa !884
  %96 = icmp eq i32* %95, null, !dbg !885
  br i1 %96, label %112, label %97, !dbg !886

; <label>:97                                      ; preds = %94
  %98 = getelementptr inbounds i32* %95, i64 %indvars.iv, !dbg !887
  %99 = load i32* %98, align 4, !dbg !887, !tbaa !308
  %100 = icmp sgt i32 %99, -1, !dbg !888
  br i1 %100, label %101, label %112, !dbg !889

; <label>:101                                     ; preds = %97
  %102 = load i32* %48, align 4, !dbg !890, !tbaa !312
  %103 = icmp slt i32 %99, %102, !dbg !893
  br i1 %103, label %105, label %104, !dbg !894

; <label>:104                                     ; preds = %101
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !895
  %.pre4 = load i32* %48, align 4, !dbg !896, !tbaa !312
  br label %105, !dbg !895

; <label>:105                                     ; preds = %101, %104
  %106 = phi i32 [ %102, %101 ], [ %.pre4, %104 ]
  call void @FSet(float* %46, i32 %106, float 0.000000e+00) #7, !dbg !897
  %107 = load i32** %45, align 8, !dbg !898, !tbaa !884
  %108 = getelementptr inbounds i32* %107, i64 %indvars.iv, !dbg !899
  %109 = load i32* %108, align 4, !dbg !899, !tbaa !308
  %110 = sext i32 %109 to i64, !dbg !900
  %111 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 %110, !dbg !900
  store float 1.000000e+00, float* %111, align 4, !dbg !901, !tbaa !297
  br label %114, !dbg !902

; <label>:112                                     ; preds = %94, %97
  %113 = load i32* %48, align 4, !dbg !838, !tbaa !312
  call void @FCopy(float* %46, float* %47, i32 %113) #7, !dbg !903
  br label %114

; <label>:114                                     ; preds = %112, %105
  %115 = load float*** %49, align 8, !dbg !839, !tbaa !904
  %116 = getelementptr inbounds float** %115, i64 %indvars.iv, !dbg !905
  %117 = load float** %116, align 8, !dbg !905, !tbaa !658
  call void @P7PriorifyTransitionVector(float* %117, %struct.p7prior_s* %pri, float* %38) #8, !dbg !906
  %118 = load float*** %50, align 8, !dbg !840, !tbaa !907
  %119 = getelementptr inbounds float** %118, i64 %indvars.iv, !dbg !908
  %120 = load float** %119, align 8, !dbg !908, !tbaa !658
  %121 = load i32* %44, align 4, !dbg !909, !tbaa !303
  call void @P7PriorifyEmissionVector(float* %120, %struct.p7prior_s* %pri, i32 %121, float* %42, [20 x float]* %51, float* null) #8, !dbg !910
  %122 = load float*** %52, align 8, !dbg !842, !tbaa !911
  %123 = getelementptr inbounds float** %122, i64 %indvars.iv, !dbg !912
  %124 = load float** %123, align 8, !dbg !912, !tbaa !658
  %125 = load i32* %48, align 4, !dbg !913, !tbaa !312
  call void @P7PriorifyEmissionVector(float* %124, %struct.p7prior_s* %pri, i32 %125, float* %46, [20 x float]* %53, float* null) #8, !dbg !914
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !820
  %126 = load i32* %7, align 4, !dbg !915, !tbaa !785
  %127 = sext i32 %126 to i64, !dbg !817
  %128 = icmp slt i64 %indvars.iv.next, %127, !dbg !817
  br i1 %128, label %54, label %._crit_edge, !dbg !820

._crit_edge:                                      ; preds = %114, %._crit_edge8
  %.pre-phi10 = phi i32** [ %.pre9, %._crit_edge8 ], [ %41, %114 ], !dbg !821
  %.lcssa = phi i32 [ %32, %._crit_edge8 ], [ %126, %114 ]
  %129 = load i32** %.pre-phi10, align 8, !dbg !821, !tbaa !864
  %130 = icmp eq i32* %129, null, !dbg !916
  br i1 %130, label %151, label %131, !dbg !917

; <label>:131                                     ; preds = %._crit_edge
  %132 = sext i32 %.lcssa to i64, !dbg !918
  %133 = getelementptr inbounds i32* %129, i64 %132, !dbg !918
  %134 = load i32* %133, align 4, !dbg !918, !tbaa !308
  %135 = icmp sgt i32 %134, -1, !dbg !919
  br i1 %135, label %136, label %151, !dbg !920

; <label>:136                                     ; preds = %131
  %137 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !921
  %138 = load i32* %137, align 4, !dbg !921, !tbaa !303
  %139 = icmp slt i32 %134, %138, !dbg !924
  br i1 %139, label %141, label %140, !dbg !925

; <label>:140                                     ; preds = %136
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !926
  %.pre5 = load i32* %137, align 4, !dbg !927, !tbaa !303
  br label %141, !dbg !926

; <label>:141                                     ; preds = %136, %140
  %142 = phi i32 [ %138, %136 ], [ %.pre5, %140 ]
  %143 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !928
  call void @FSet(float* %143, i32 %142, float 0.000000e+00) #7, !dbg !929
  %144 = load i32* %7, align 4, !dbg !930, !tbaa !785
  %145 = sext i32 %144 to i64, !dbg !931
  %146 = load i32** %.pre-phi10, align 8, !dbg !932, !tbaa !864
  %147 = getelementptr inbounds i32* %146, i64 %145, !dbg !931
  %148 = load i32* %147, align 4, !dbg !931, !tbaa !308
  %149 = sext i32 %148 to i64, !dbg !933
  %150 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %149, !dbg !933
  store float 1.000000e+00, float* %150, align 4, !dbg !934, !tbaa !297
  br label %156, !dbg !935

; <label>:151                                     ; preds = %._crit_edge, %131
  %152 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !936
  %153 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0, !dbg !937
  %154 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !938
  %155 = load i32* %154, align 4, !dbg !938, !tbaa !303
  call void @FCopy(float* %152, float* %153, i32 %155) #7, !dbg !939
  %.pre6 = load i32* %7, align 4, !dbg !940, !tbaa !785
  br label %156

; <label>:156                                     ; preds = %151, %141
  %.pre-phi7 = phi float* [ %152, %151 ], [ %143, %141 ], !dbg !941
  %.pre-phi = phi i32* [ %154, %151 ], [ %137, %141 ], !dbg !942
  %157 = phi i32 [ %.pre6, %151 ], [ %144, %141 ]
  %158 = sext i32 %157 to i64, !dbg !943
  %159 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !944
  %160 = load float*** %159, align 8, !dbg !944, !tbaa !907
  %161 = getelementptr inbounds float** %160, i64 %158, !dbg !943
  %162 = load float** %161, align 8, !dbg !943, !tbaa !658
  %163 = load i32* %.pre-phi, align 4, !dbg !942, !tbaa !303
  %164 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0, !dbg !945
  call void @P7PriorifyEmissionVector(float* %162, %struct.p7prior_s* %pri, i32 %163, float* %.pre-phi7, [20 x float]* %164, float* null) #8, !dbg !946
  call void @Plan7Renormalize(%struct.plan7_s* %hmm) #7, !dbg !947
  call void @llvm.lifetime.end(i64 800, i8* %3) #6, !dbg !948
  call void @llvm.lifetime.end(i64 800, i8* %2) #6, !dbg !948
  call void @llvm.lifetime.end(i64 800, i8* %1) #6, !dbg !948
  ret void, !dbg !948
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @P7PriorifyTransitionVector(float* %t, %struct.p7prior_s* %prior, float* nocapture readonly %tq) #0 {
  %mix = alloca [200 x float], align 16
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !243, metadata !276), !dbg !949
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %prior, i64 0, metadata !244, metadata !276), !dbg !950
  tail call void @llvm.dbg.value(metadata float* %tq, i64 0, metadata !245, metadata !276), !dbg !951
  %1 = bitcast [200 x float]* %mix to i8*, !dbg !952
  call void @llvm.lifetime.start(i64 800, i8* %1) #6, !dbg !952
  tail call void @llvm.dbg.declare(metadata [200 x float]* %mix, metadata !248, metadata !276), !dbg !953
  %2 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0, !dbg !954
  store float 1.000000e+00, float* %2, align 16, !dbg !955, !tbaa !297
  %3 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 0, !dbg !956
  %4 = load i32* %3, align 4, !dbg !956, !tbaa !287
  %switch = icmp ult i32 %4, 2, !dbg !958
  br i1 %switch, label %5, label %37, !dbg !958

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 4, !dbg !959
  %7 = load i32* %6, align 4, !dbg !959, !tbaa !303
  %8 = icmp sgt i32 %7, 1, !dbg !960
  br i1 %8, label %.preheader1, label %37, !dbg !961

.preheader1:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1, !dbg !962
  %10 = load i32* %9, align 4, !dbg !962, !tbaa !294
  %11 = icmp sgt i32 %10, 0, !dbg !966
  br i1 %11, label %.lr.ph7, label %._crit_edge8, !dbg !967

.lr.ph7:                                          ; preds = %.preheader1
  %12 = getelementptr inbounds float* %t, i64 3, !dbg !968
  %13 = getelementptr inbounds float* %t, i64 5, !dbg !970
  br label %14, !dbg !967

; <label>:14                                      ; preds = %.lr.ph7, %21
  %indvars.iv13 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next14, %21 ]
  %15 = getelementptr inbounds float* %tq, i64 %indvars.iv13, !dbg !971
  %16 = load float* %15, align 4, !dbg !971, !tbaa !297
  %17 = fcmp ogt float %16, 0.000000e+00, !dbg !972
  br i1 %17, label %18, label %21, !dbg !971

; <label>:18                                      ; preds = %14
  %19 = fpext float %16 to double, !dbg !971
  %20 = tail call double @log(double %19) #9, !dbg !973
  br label %21, !dbg !971

; <label>:21                                      ; preds = %14, %18
  %22 = phi double [ %20, %18 ], [ -9.990000e+02, %14 ], !dbg !971
  %23 = fptrunc double %22 to float, !dbg !971
  %24 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv13, !dbg !974
  %25 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv13, i64 0, !dbg !975
  %26 = tail call float @Logp_cvec(float* %t, i32 3, float* %25) #7, !dbg !976
  %27 = fadd float %26, %23, !dbg !977
  %28 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv13, i64 3, !dbg !978
  %29 = tail call float @Logp_cvec(float* %12, i32 2, float* %28) #7, !dbg !979
  %30 = fadd float %29, %27, !dbg !980
  %31 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv13, i64 5, !dbg !981
  %32 = tail call float @Logp_cvec(float* %13, i32 2, float* %31) #7, !dbg !982
  %33 = fadd float %32, %30, !dbg !983
  store float %33, float* %24, align 4, !dbg !983, !tbaa !297
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !967
  %34 = load i32* %9, align 4, !dbg !962, !tbaa !294
  %35 = sext i32 %34 to i64, !dbg !966
  %36 = icmp slt i64 %indvars.iv.next14, %35, !dbg !966
  br i1 %36, label %14, label %._crit_edge8, !dbg !967

._crit_edge8:                                     ; preds = %21, %.preheader1
  %.lcssa = phi i32 [ %10, %.preheader1 ], [ %34, %21 ]
  call void @LogNorm(float* %2, i32 %.lcssa) #7, !dbg !984
  br label %37, !dbg !985

; <label>:37                                      ; preds = %0, %._crit_edge8, %5
  %38 = call float @FSum(float* %t, i32 3) #7, !dbg !986
  call void @llvm.dbg.value(metadata float %38, i64 0, metadata !249, metadata !276), !dbg !987
  %39 = getelementptr inbounds float* %t, i64 3, !dbg !988
  %40 = load float* %39, align 4, !dbg !988, !tbaa !297
  %41 = getelementptr inbounds float* %t, i64 4, !dbg !989
  %42 = load float* %41, align 4, !dbg !989, !tbaa !297
  %43 = fadd float %40, %42, !dbg !990
  call void @llvm.dbg.value(metadata float %43, i64 0, metadata !251, metadata !276), !dbg !991
  %44 = getelementptr inbounds float* %t, i64 5, !dbg !992
  %45 = load float* %44, align 4, !dbg !992, !tbaa !297
  %46 = getelementptr inbounds float* %t, i64 6, !dbg !993
  %47 = load float* %46, align 4, !dbg !993, !tbaa !297
  %48 = fadd float %45, %47, !dbg !994
  call void @llvm.dbg.value(metadata float %48, i64 0, metadata !250, metadata !276), !dbg !995
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !246, metadata !276), !dbg !996
  %49 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1, !dbg !997
  %.pre = load i32* %49, align 4, !dbg !997, !tbaa !294
  br label %.preheader, !dbg !1003

.preheader:                                       ; preds = %._crit_edge, %37
  %50 = phi i32 [ %.pre, %37 ], [ %104, %._crit_edge ], !dbg !997
  %indvars.iv11 = phi i64 [ 0, %37 ], [ %indvars.iv.next12, %._crit_edge ]
  %51 = icmp sgt i32 %50, 0, !dbg !1004
  %52 = getelementptr inbounds float* %t, i64 %indvars.iv11, !dbg !1005
  br i1 %51, label %.lr.ph, label %._crit_edge, !dbg !1008

.lr.ph:                                           ; preds = %.preheader, %100
  %53 = phi i32 [ %101, %100 ], [ %50, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %100 ], [ 0, %.preheader ]
  %xi.04 = phi float [ %xi.1, %100 ], [ 0.000000e+00, %.preheader ]
  %54 = trunc i64 %indvars.iv11 to i32, !dbg !1009
  switch i32 %54, label %100 [
    i32 0, label %55
    i32 1, label %55
    i32 2, label %55
    i32 3, label %68
    i32 4, label %68
    i32 5, label %84
    i32 6, label %84
  ], !dbg !1009

; <label>:55                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %56 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !1010
  %57 = load float* %56, align 4, !dbg !1010, !tbaa !297
  %58 = load float* %52, align 4, !dbg !1005, !tbaa !297
  %59 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv11, !dbg !1011
  %60 = load float* %59, align 4, !dbg !1011, !tbaa !297
  %61 = fadd float %58, %60, !dbg !1012
  %62 = fmul float %57, %61, !dbg !1013
  %63 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 0, !dbg !1014
  %64 = call float @FSum(float* %63, i32 3) #7, !dbg !1015
  %65 = fadd float %38, %64, !dbg !1016
  %66 = fdiv float %62, %65, !dbg !1017
  %67 = fadd float %xi.04, %66, !dbg !1018
  call void @llvm.dbg.value(metadata float %67, i64 0, metadata !252, metadata !276), !dbg !1019
  %.pre15 = load i32* %49, align 4, !dbg !997, !tbaa !294
  br label %100, !dbg !1020

; <label>:68                                      ; preds = %.lr.ph, %.lr.ph
  %69 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !1021
  %70 = load float* %69, align 4, !dbg !1021, !tbaa !297
  %71 = load float* %52, align 4, !dbg !1022, !tbaa !297
  %72 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv11, !dbg !1023
  %73 = load float* %72, align 4, !dbg !1023, !tbaa !297
  %74 = fadd float %71, %73, !dbg !1024
  %75 = fmul float %70, %74, !dbg !1025
  %76 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 3, !dbg !1026
  %77 = load float* %76, align 4, !dbg !1026, !tbaa !297
  %78 = fadd float %43, %77, !dbg !1027
  %79 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 4, !dbg !1028
  %80 = load float* %79, align 4, !dbg !1028, !tbaa !297
  %81 = fadd float %78, %80, !dbg !1029
  %82 = fdiv float %75, %81, !dbg !1030
  %83 = fadd float %xi.04, %82, !dbg !1031
  call void @llvm.dbg.value(metadata float %83, i64 0, metadata !252, metadata !276), !dbg !1019
  br label %100, !dbg !1032

; <label>:84                                      ; preds = %.lr.ph, %.lr.ph
  %85 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !1033
  %86 = load float* %85, align 4, !dbg !1033, !tbaa !297
  %87 = load float* %52, align 4, !dbg !1034, !tbaa !297
  %88 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv11, !dbg !1035
  %89 = load float* %88, align 4, !dbg !1035, !tbaa !297
  %90 = fadd float %87, %89, !dbg !1036
  %91 = fmul float %86, %90, !dbg !1037
  %92 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 5, !dbg !1038
  %93 = load float* %92, align 4, !dbg !1038, !tbaa !297
  %94 = fadd float %48, %93, !dbg !1039
  %95 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 6, !dbg !1040
  %96 = load float* %95, align 4, !dbg !1040, !tbaa !297
  %97 = fadd float %94, %96, !dbg !1041
  %98 = fdiv float %91, %97, !dbg !1042
  %99 = fadd float %xi.04, %98, !dbg !1043
  call void @llvm.dbg.value(metadata float %99, i64 0, metadata !252, metadata !276), !dbg !1019
  br label %100, !dbg !1044

; <label>:100                                     ; preds = %55, %68, %84, %.lr.ph
  %101 = phi i32 [ %53, %.lr.ph ], [ %53, %84 ], [ %53, %68 ], [ %.pre15, %55 ], !dbg !1008
  %xi.1 = phi float [ %xi.04, %.lr.ph ], [ %99, %84 ], [ %83, %68 ], [ %67, %55 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1008
  %102 = sext i32 %101 to i64, !dbg !1004
  %103 = icmp slt i64 %indvars.iv.next, %102, !dbg !1004
  br i1 %103, label %.lr.ph, label %._crit_edge, !dbg !1008

._crit_edge:                                      ; preds = %100, %.preheader
  %104 = phi i32 [ %50, %.preheader ], [ %101, %100 ]
  %xi.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %xi.1, %100 ]
  store float %xi.0.lcssa, float* %52, align 4, !dbg !1045, !tbaa !297
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !1003
  %exitcond = icmp eq i64 %indvars.iv.next12, 7, !dbg !1003
  br i1 %exitcond, label %105, label %.preheader, !dbg !1003

; <label>:105                                     ; preds = %._crit_edge
  call void @FNorm(float* %t, i32 3) #7, !dbg !1046
  call void @FNorm(float* %39, i32 2) #7, !dbg !1047
  call void @FNorm(float* %44, i32 2) #7, !dbg !1048
  call void @llvm.lifetime.end(i64 800, i8* %1) #6, !dbg !1049
  ret void, !dbg !1049
}

; Function Attrs: nounwind optsize ssp uwtable
define void @P7PriorifyEmissionVector(float* %vec, %struct.p7prior_s* nocapture readonly %pri, i32 %num, float* nocapture readonly %eq, [20 x float]* %e, float* %ret_mix) #0 {
  %ret_mix24 = bitcast float* %ret_mix to i8*
  %vec33 = bitcast float* %vec to i8*
  %mix = alloca [200 x float], align 16
  %1 = bitcast [200 x float]* %mix to i8*
  tail call void @llvm.dbg.value(metadata float* %vec, i64 0, metadata !227, metadata !276), !dbg !1050
  tail call void @llvm.dbg.value(metadata %struct.p7prior_s* %pri, i64 0, metadata !228, metadata !276), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !229, metadata !276), !dbg !1052
  tail call void @llvm.dbg.value(metadata float* %eq, i64 0, metadata !230, metadata !276), !dbg !1053
  tail call void @llvm.dbg.value(metadata [20 x float]* %e, i64 0, metadata !231, metadata !276), !dbg !1054
  tail call void @llvm.dbg.value(metadata float* %ret_mix, i64 0, metadata !232, metadata !276), !dbg !1055
  call void @llvm.lifetime.start(i64 800, i8* %1) #6, !dbg !1056
  tail call void @llvm.dbg.declare(metadata [200 x float]* %mix, metadata !235, metadata !276), !dbg !1057
  %2 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0, !dbg !1058
  store float 1.000000e+00, float* %2, align 16, !dbg !1059, !tbaa !297
  %3 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0, !dbg !1060
  %4 = load i32* %3, align 4, !dbg !1060, !tbaa !287
  %5 = icmp eq i32 %4, 0, !dbg !1062
  %6 = icmp sgt i32 %num, 1, !dbg !1063
  %or.cond = and i1 %6, %5, !dbg !1064
  br i1 %or.cond, label %.preheader5, label %24, !dbg !1064

.preheader5:                                      ; preds = %0
  %7 = icmp sgt i32 %num, 0, !dbg !1065
  br i1 %7, label %.lr.ph16, label %._crit_edge17, !dbg !1069

.lr.ph16:                                         ; preds = %.preheader5
  %8 = add i32 %num, -1, !dbg !1069
  br label %9, !dbg !1069

; <label>:9                                       ; preds = %16, %.lr.ph16
  %indvars.iv27 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next28, %16 ]
  %10 = getelementptr inbounds float* %eq, i64 %indvars.iv27, !dbg !1070
  %11 = load float* %10, align 4, !dbg !1070, !tbaa !297
  %12 = fcmp ogt float %11, 0.000000e+00, !dbg !1072
  br i1 %12, label %13, label %16, !dbg !1070

; <label>:13                                      ; preds = %9
  %14 = fpext float %11 to double, !dbg !1070
  %15 = tail call double @log(double %14) #9, !dbg !1073
  br label %16, !dbg !1070

; <label>:16                                      ; preds = %9, %13
  %17 = phi double [ %15, %13 ], [ -9.990000e+02, %9 ], !dbg !1070
  %18 = fptrunc double %17 to float, !dbg !1070
  %19 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv27, !dbg !1074
  %20 = load i32* @Alphabet_size, align 4, !dbg !1075, !tbaa !308
  %21 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv27, i64 0, !dbg !1076
  %22 = tail call float @Logp_cvec(float* %vec, i32 %20, float* %21) #7, !dbg !1077
  %23 = fadd float %22, %18, !dbg !1078
  store float %23, float* %19, align 4, !dbg !1078, !tbaa !297
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !1069
  %lftr.wideiv29 = trunc i64 %indvars.iv27 to i32, !dbg !1069
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %8, !dbg !1069
  br i1 %exitcond30, label %._crit_edge17, label %9, !dbg !1069

._crit_edge17:                                    ; preds = %16, %.preheader5
  call void @LogNorm(float* %2, i32 %num) #7, !dbg !1079
  br label %32, !dbg !1080

; <label>:24                                      ; preds = %0
  %25 = icmp eq i32 %4, 1, !dbg !1081
  %or.cond3 = and i1 %6, %25, !dbg !1083
  br i1 %or.cond3, label %.preheader6, label %32, !dbg !1083

.preheader6:                                      ; preds = %24
  %26 = load i32* @Alphabet_size, align 4, !dbg !1084, !tbaa !308
  %27 = icmp sgt i32 %26, 0, !dbg !1088
  br i1 %27, label %.lr.ph19, label %31, !dbg !1089

.lr.ph19:                                         ; preds = %.preheader6
  %28 = icmp sgt i32 %26, 1
  %.op = add i32 %26, -1, !dbg !1089
  %29 = zext i32 %.op to i64
  %.op37 = shl nuw nsw i64 %29, 2, !dbg !1089
  %.op37.op = add nuw nsw i64 %.op37, 4, !dbg !1089
  %30 = select i1 %28, i64 %.op37.op, i64 4, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %vec33, i64 %30, i32 4, i1 false), !dbg !1090
  br label %31, !dbg !1089

; <label>:31                                      ; preds = %.lr.ph19, %.preheader6
  call void @FNorm(float* %2, i32 %26) #7, !dbg !1091
  br label %32, !dbg !1092

; <label>:32                                      ; preds = %24, %31, %._crit_edge17
  %33 = load i32* @Alphabet_size, align 4, !dbg !1093, !tbaa !308
  %34 = call float @FSum(float* %vec, i32 %33) #7, !dbg !1094
  call void @llvm.dbg.value(metadata float %34, i64 0, metadata !236, metadata !276), !dbg !1095
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !233, metadata !276), !dbg !1096
  %35 = load i32* @Alphabet_size, align 4, !dbg !1097, !tbaa !308
  %36 = icmp sgt i32 %35, 0, !dbg !1100
  br i1 %36, label %.preheader4.lr.ph, label %._crit_edge13, !dbg !1101

.preheader4.lr.ph:                                ; preds = %32
  %37 = icmp sgt i32 %num, 0, !dbg !1102
  %38 = add i32 %num, -1, !dbg !1101
  br label %.preheader4, !dbg !1101

.preheader4:                                      ; preds = %.preheader4.lr.ph, %.preheader4._crit_edge
  %39 = phi i32 [ %35, %.preheader4.lr.ph ], [ %66, %.preheader4._crit_edge ]
  %indvars.iv25 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next26, %.preheader4._crit_edge ]
  %40 = getelementptr inbounds float* %vec, i64 %indvars.iv25, !dbg !1106
  br i1 %37, label %.lr.ph11.preheader, label %.preheader4._crit_edge, !dbg !1108

.lr.ph11.preheader:                               ; preds = %.preheader4
  %41 = getelementptr inbounds [20 x float]* %e, i64 0, i64 0, !dbg !1109
  %42 = call float @FSum(float* %41, i32 %39) #7, !dbg !1110
  call void @llvm.dbg.value(metadata float %42, i64 0, metadata !237, metadata !276), !dbg !1111
  %43 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0, !dbg !1112
  %44 = load float* %43, align 16, !dbg !1112, !tbaa !297
  %45 = load float* %40, align 4, !dbg !1106, !tbaa !297
  %46 = getelementptr inbounds [20 x float]* %e, i64 0, i64 %indvars.iv25, !dbg !1113
  %47 = load float* %46, align 4, !dbg !1113, !tbaa !297
  %48 = fadd float %45, %47, !dbg !1114
  %49 = fmul float %44, %48, !dbg !1115
  %50 = fadd float %34, %42, !dbg !1116
  %51 = fdiv float %49, %50, !dbg !1117
  %52 = fadd float %51, 0.000000e+00, !dbg !1118
  call void @llvm.dbg.value(metadata float %52, i64 0, metadata !238, metadata !276), !dbg !1119
  %exitcond41 = icmp eq i32 %38, 0, !dbg !1108
  br i1 %exitcond41, label %._crit_edge, label %._crit_edge34, !dbg !1108

._crit_edge34:                                    ; preds = %.lr.ph11.preheader, %._crit_edge34
  %53 = phi float [ %65, %._crit_edge34 ], [ %52, %.lr.ph11.preheader ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next, %._crit_edge34 ], [ 0, %.lr.ph11.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv42, 1, !dbg !1108
  %.pre = load i32* @Alphabet_size, align 4, !dbg !1120, !tbaa !308
  %54 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv.next, i64 0, !dbg !1109
  %55 = call float @FSum(float* %54, i32 %.pre) #7, !dbg !1110
  call void @llvm.dbg.value(metadata float %55, i64 0, metadata !237, metadata !276), !dbg !1111
  %56 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv.next, !dbg !1112
  %57 = load float* %56, align 4, !dbg !1112, !tbaa !297
  %58 = load float* %40, align 4, !dbg !1106, !tbaa !297
  %59 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv.next, i64 %indvars.iv25, !dbg !1113
  %60 = load float* %59, align 4, !dbg !1113, !tbaa !297
  %61 = fadd float %58, %60, !dbg !1114
  %62 = fmul float %57, %61, !dbg !1115
  %63 = fadd float %34, %55, !dbg !1116
  %64 = fdiv float %62, %63, !dbg !1117
  %65 = fadd float %53, %64, !dbg !1118
  call void @llvm.dbg.value(metadata float %65, i64 0, metadata !238, metadata !276), !dbg !1119
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1108
  %exitcond = icmp eq i32 %lftr.wideiv, %38, !dbg !1108
  br i1 %exitcond, label %._crit_edge, label %._crit_edge34, !dbg !1108

._crit_edge:                                      ; preds = %._crit_edge34, %.lr.ph11.preheader
  %.lcssa39 = phi float [ %52, %.lr.ph11.preheader ], [ %65, %._crit_edge34 ]
  %.pre35 = load i32* @Alphabet_size, align 4, !dbg !1097, !tbaa !308
  br label %.preheader4._crit_edge, !dbg !1108

.preheader4._crit_edge:                           ; preds = %.preheader4, %._crit_edge
  %66 = phi i32 [ %.pre35, %._crit_edge ], [ %39, %.preheader4 ], !dbg !1121
  %xi.0.lcssa = phi float [ %.lcssa39, %._crit_edge ], [ 0.000000e+00, %.preheader4 ]
  store float %xi.0.lcssa, float* %40, align 4, !dbg !1122, !tbaa !297
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !1101
  %67 = sext i32 %66 to i64, !dbg !1100
  %68 = icmp slt i64 %indvars.iv.next26, %67, !dbg !1100
  br i1 %68, label %.preheader4, label %._crit_edge13, !dbg !1101

._crit_edge13:                                    ; preds = %.preheader4._crit_edge, %32
  %.lcssa = phi i32 [ %35, %32 ], [ %66, %.preheader4._crit_edge ]
  call void @FNorm(float* %vec, i32 %.lcssa) #7, !dbg !1123
  %69 = icmp ne float* %ret_mix, null, !dbg !1124
  %70 = icmp sgt i32 %num, 0, !dbg !1126
  %or.cond38 = and i1 %69, %70, !dbg !1129
  br i1 %or.cond38, label %.lr.ph, label %.loopexit, !dbg !1129

.lr.ph:                                           ; preds = %._crit_edge13
  %71 = add i32 %num, -1, !dbg !1130
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 2, !dbg !1130
  %74 = add nuw nsw i64 %73, 4, !dbg !1130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ret_mix24, i8* %1, i64 %74, i32 4, i1 false), !dbg !1131
  br label %.loopexit, !dbg !1130

.loopexit:                                        ; preds = %._crit_edge13, %.lr.ph
  call void @llvm.lifetime.end(i64 800, i8* %1) #6, !dbg !1132
  ret void, !dbg !1132
}

; Function Attrs: optsize
declare void @Plan7Renormalize(%struct.plan7_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readnone
declare double @log(double) #5

; Function Attrs: optsize
declare float @Logp_cvec(float*, i32, float*) #1

; Function Attrs: optsize
declare void @LogNorm(float*, i32) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!269, !270, !271}
!llvm.ident = !{!272}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !31, globals: !261, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/prior.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !29, !13, !30}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "p7prior_s", file: !6, line: 385, size: 320128, align: 32, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !16, !20, !21, !22, !26, !27, !28}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !5, file: !6, line: 386, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "tnum", scope: !5, file: !6, line: 388, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "tq", scope: !5, file: !6, line: 389, baseType: !12, size: 6400, align: 32, offset: 64)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 6400, align: 32, elements: !14)
!13 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DISubrange(count: 200)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !5, file: !6, line: 390, baseType: !17, size: 44800, align: 32, offset: 6464)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 44800, align: 32, elements: !18)
!18 = !{!15, !19}
!19 = !DISubrange(count: 7)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "mnum", scope: !5, file: !6, line: 392, baseType: !9, size: 32, align: 32, offset: 51264)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "mq", scope: !5, file: !6, line: 393, baseType: !12, size: 6400, align: 32, offset: 51296)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !5, file: !6, line: 394, baseType: !23, size: 128000, align: 32, offset: 57696)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128000, align: 32, elements: !24)
!24 = !{!15, !25}
!25 = !DISubrange(count: 20)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !5, file: !6, line: 396, baseType: !9, size: 32, align: 32, offset: 185696)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !5, file: !6, line: 397, baseType: !12, size: 6400, align: 32, offset: 185728)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5, file: !6, line: 398, baseType: !23, size: 128000, align: 32, offset: 192128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!31 = !{!32, !35, !40, !43, !44, !116, !133, !141, !152, !222, !239, !253, !258}
!32 = !DISubprogram(name: "P7AllocPrior", scope: !1, file: !1, line: 36, type: !33, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: %struct.p7prior_s* ()* @P7AllocPrior, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!4}
!35 = !DISubprogram(name: "P7FreePrior", scope: !1, file: !1, line: 39, type: !36, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.p7prior_s*)* @P7FreePrior, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4}
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pri", arg: 1, scope: !35, file: !1, line: 39, type: !4)
!40 = !DISubprogram(name: "P7LaplacePrior", scope: !1, file: !1, line: 53, type: !33, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: %struct.p7prior_s* ()* @P7LaplacePrior, variables: !41)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !40, file: !1, line: 55, type: !4)
!43 = !DISubprogram(name: "P7DefaultPrior", scope: !1, file: !1, line: 81, type: !33, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: %struct.p7prior_s* ()* @P7DefaultPrior, variables: !2)
!44 = !DISubprogram(name: "P7ReadPrior", scope: !1, file: !1, line: 97, type: !45, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct.p7prior_s* (i8*)* @P7ReadPrior, variables: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{!4, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !{!50, !51, !112, !113, !114, !115}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prifile", arg: 1, scope: !44, file: !1, line: 97, type: !47)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !44, file: !1, line: 99, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !54, line: 153, baseType: !55)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !54, line: 122, size: 1216, align: 64, elements: !56)
!56 = !{!57, !60, !61, !62, !64, !65, !70, !71, !72, !76, !80, !90, !96, !97, !100, !101, !105, !109, !110, !111}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !55, file: !54, line: 123, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !55, file: !54, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !55, file: !54, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !54, line: 126, baseType: !63, size: 16, align: 16, offset: 128)
!63 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !55, file: !54, line: 127, baseType: !63, size: 16, align: 16, offset: 144)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !55, file: !54, line: 128, baseType: !66, size: 128, align: 64, offset: 192)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !54, line: 88, size: 128, align: 64, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !66, file: !54, line: 89, baseType: !58, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !66, file: !54, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !55, file: !54, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !55, file: !54, line: 132, baseType: !29, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !55, file: !54, line: 133, baseType: !73, size: 64, align: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!9, !29}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !55, file: !54, line: 134, baseType: !77, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!9, !29, !47, !9}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !55, file: !54, line: 135, baseType: !81, size: 64, align: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !29, !84, !9}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !54, line: 77, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !86, line: 71, baseType: !87)
!86 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!89 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !55, file: !54, line: 136, baseType: !91, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!9, !29, !94, !9}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !55, file: !54, line: 139, baseType: !66, size: 128, align: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !55, file: !54, line: 140, baseType: !98, size: 64, align: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !54, line: 94, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !55, file: !54, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !55, file: !54, line: 144, baseType: !102, size: 24, align: 8, offset: 928)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 24, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 3)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !55, file: !54, line: 145, baseType: !106, size: 8, align: 8, offset: 952)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !55, file: !54, line: 148, baseType: !66, size: 128, align: 64, offset: 960)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !55, file: !54, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !54, line: 152, baseType: !84, size: 64, align: 64, offset: 1152)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !44, file: !1, line: 100, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sptr", scope: !44, file: !1, line: 101, type: !47)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !44, file: !1, line: 102, type: !9)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !44, file: !1, line: 102, type: !9)
!116 = !DISubprogram(name: "PAMPrior", scope: !1, file: !1, line: 214, type: !117, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct.p7prior_s*, float)* @PAMPrior, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !47, !4, !13}
!119 = !{!120, !121, !122, !123, !124, !125, !128, !129, !130, !131, !132}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pamfile", arg: 1, scope: !116, file: !1, line: 214, type: !47)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pri", arg: 2, scope: !116, file: !1, line: 214, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wt", arg: 3, scope: !116, file: !1, line: 214, type: !13)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !116, file: !1, line: 216, type: !52)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blastpamfile", scope: !116, file: !1, line: 217, type: !47)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pam", scope: !116, file: !1, line: 218, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scale", scope: !116, file: !1, line: 219, type: !13)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xi", scope: !116, file: !1, line: 220, type: !9)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xj", scope: !116, file: !1, line: 220, type: !9)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx1", scope: !116, file: !1, line: 221, type: !9)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx2", scope: !116, file: !1, line: 221, type: !9)
!133 = !DISubprogram(name: "P7DefaultNullModel", scope: !1, file: !1, line: 279, type: !134, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*)* @P7DefaultNullModel, variables: !137)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "null", arg: 1, scope: !133, file: !1, line: 279, type: !136)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_p1", arg: 2, scope: !133, file: !1, line: 279, type: !136)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !133, file: !1, line: 281, type: !9)
!141 = !DISubprogram(name: "P7ReadNullModel", scope: !1, file: !1, line: 294, type: !142, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, float*, float*)* @P7ReadNullModel, variables: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !47, !136, !136}
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rndfile", arg: 1, scope: !141, file: !1, line: 294, type: !47)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "null", arg: 2, scope: !141, file: !1, line: 294, type: !136)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_p1", arg: 3, scope: !141, file: !1, line: 294, type: !136)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !141, file: !1, line: 296, type: !52)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !141, file: !1, line: 297, type: !47)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !141, file: !1, line: 298, type: !9)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !141, file: !1, line: 299, type: !9)
!152 = !DISubprogram(name: "P7PriorifyHMM", scope: !1, file: !1, line: 342, type: !153, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.plan7_s*, %struct.p7prior_s*)* @P7PriorifyHMM, variables: !214)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !4}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !6, line: 101, size: 3712, align: 64, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !189, !190, !191, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !6, line: 113, baseType: !47, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !156, file: !6, line: 114, baseType: !47, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !156, file: !6, line: 115, baseType: !47, size: 64, align: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !156, file: !6, line: 116, baseType: !47, size: 64, align: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !156, file: !6, line: 117, baseType: !47, size: 64, align: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !156, file: !6, line: 118, baseType: !47, size: 64, align: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !156, file: !6, line: 119, baseType: !47, size: 64, align: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !156, file: !6, line: 120, baseType: !9, size: 32, align: 32, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !156, file: !6, line: 121, baseType: !47, size: 64, align: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !156, file: !6, line: 122, baseType: !127, size: 64, align: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !156, file: !6, line: 123, baseType: !9, size: 32, align: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !156, file: !6, line: 134, baseType: !127, size: 64, align: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !156, file: !6, line: 135, baseType: !127, size: 64, align: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !156, file: !6, line: 136, baseType: !127, size: 64, align: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !156, file: !6, line: 144, baseType: !13, size: 32, align: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !156, file: !6, line: 144, baseType: !13, size: 32, align: 32, offset: 928)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !156, file: !6, line: 145, baseType: !13, size: 32, align: 32, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !156, file: !6, line: 145, baseType: !13, size: 32, align: 32, offset: 992)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !156, file: !6, line: 146, baseType: !13, size: 32, align: 32, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !156, file: !6, line: 146, baseType: !13, size: 32, align: 32, offset: 1056)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !156, file: !6, line: 155, baseType: !9, size: 32, align: 32, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !156, file: !6, line: 156, baseType: !180, size: 64, align: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !156, file: !6, line: 157, baseType: !180, size: 64, align: 64, offset: 1216)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !156, file: !6, line: 158, baseType: !180, size: 64, align: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !156, file: !6, line: 159, baseType: !13, size: 32, align: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !156, file: !6, line: 168, baseType: !185, size: 256, align: 32, offset: 1376)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, align: 32, elements: !186)
!186 = !{!187, !188}
!187 = !DISubrange(count: 4)
!188 = !DISubrange(count: 2)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !156, file: !6, line: 169, baseType: !136, size: 64, align: 64, offset: 1664)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !156, file: !6, line: 170, baseType: !136, size: 64, align: 64, offset: 1728)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !156, file: !6, line: 174, baseType: !192, size: 640, align: 32, offset: 1792)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, align: 32, elements: !193)
!193 = !{!25}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !156, file: !6, line: 175, baseType: !13, size: 32, align: 32, offset: 2432)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !156, file: !6, line: 197, baseType: !126, size: 64, align: 64, offset: 2496)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !156, file: !6, line: 198, baseType: !126, size: 64, align: 64, offset: 2560)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !156, file: !6, line: 199, baseType: !126, size: 64, align: 64, offset: 2624)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !156, file: !6, line: 200, baseType: !199, size: 256, align: 32, offset: 2688)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 32, elements: !186)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !156, file: !6, line: 201, baseType: !127, size: 64, align: 64, offset: 2944)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !156, file: !6, line: 202, baseType: !127, size: 64, align: 64, offset: 3008)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !156, file: !6, line: 203, baseType: !127, size: 64, align: 64, offset: 3072)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !156, file: !6, line: 203, baseType: !127, size: 64, align: 64, offset: 3136)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !156, file: !6, line: 203, baseType: !127, size: 64, align: 64, offset: 3200)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !156, file: !6, line: 203, baseType: !127, size: 64, align: 64, offset: 3264)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !156, file: !6, line: 203, baseType: !127, size: 64, align: 64, offset: 3328)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !156, file: !6, line: 214, baseType: !126, size: 64, align: 64, offset: 3392)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !156, file: !6, line: 215, baseType: !126, size: 64, align: 64, offset: 3456)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !156, file: !6, line: 216, baseType: !9, size: 32, align: 32, offset: 3520)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !156, file: !6, line: 217, baseType: !9, size: 32, align: 32, offset: 3552)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !156, file: !6, line: 222, baseType: !13, size: 32, align: 32, offset: 3584)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !156, file: !6, line: 223, baseType: !13, size: 32, align: 32, offset: 3616)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !6, line: 225, baseType: !9, size: 32, align: 32, offset: 3648)
!214 = !{!215, !216, !217, !218, !219, !220, !221}
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !152, file: !1, line: 342, type: !155)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pri", arg: 2, scope: !152, file: !1, line: 342, type: !4)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !152, file: !1, line: 344, type: !9)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !152, file: !1, line: 345, type: !13)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tq", scope: !152, file: !1, line: 346, type: !12)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mq", scope: !152, file: !1, line: 347, type: !12)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iq", scope: !152, file: !1, line: 348, type: !12)
!222 = !DISubprogram(name: "P7PriorifyEmissionVector", scope: !1, file: !1, line: 443, type: !223, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*)* @P7PriorifyEmissionVector, variables: !226)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !136, !4, !9, !136, !225, !136}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 1, scope: !222, file: !1, line: 443, type: !136)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pri", arg: 2, scope: !222, file: !1, line: 443, type: !4)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 3, scope: !222, file: !1, line: 444, type: !9)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eq", arg: 4, scope: !222, file: !1, line: 444, type: !136)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 5, scope: !222, file: !1, line: 444, type: !225)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_mix", arg: 6, scope: !222, file: !1, line: 445, type: !136)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !222, file: !1, line: 447, type: !9)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !222, file: !1, line: 448, type: !9)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mix", scope: !222, file: !1, line: 449, type: !12)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totc", scope: !222, file: !1, line: 450, type: !13)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tota", scope: !222, file: !1, line: 451, type: !13)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xi", scope: !222, file: !1, line: 452, type: !13)
!239 = !DISubprogram(name: "P7PriorifyTransitionVector", scope: !1, file: !1, line: 520, type: !240, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, %struct.p7prior_s*, float*)* @P7PriorifyTransitionVector, variables: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !136, !4, !136}
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 1, scope: !239, file: !1, line: 520, type: !136)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prior", arg: 2, scope: !239, file: !1, line: 520, type: !4)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tq", arg: 3, scope: !239, file: !1, line: 521, type: !136)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ts", scope: !239, file: !1, line: 523, type: !9)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !239, file: !1, line: 524, type: !9)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mix", scope: !239, file: !1, line: 525, type: !12)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totm", scope: !239, file: !1, line: 526, type: !13)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totd", scope: !239, file: !1, line: 526, type: !13)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toti", scope: !239, file: !1, line: 526, type: !13)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xi", scope: !239, file: !1, line: 527, type: !13)
!253 = !DISubprogram(name: "default_amino_prior", scope: !1, file: !1, line: 579, type: !33, isLocal: true, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, variables: !254)
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !253, file: !1, line: 581, type: !4)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !253, file: !1, line: 582, type: !9)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !253, file: !1, line: 582, type: !9)
!258 = !DISubprogram(name: "default_nucleic_prior", scope: !1, file: !1, line: 693, type: !33, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, variables: !259)
!259 = !{!260}
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pri", scope: !258, file: !1, line: 695, type: !4)
!261 = !{!262, !266}
!262 = !DIGlobalVariable(name: "defmq", scope: !253, file: !1, line: 584, type: !263, isLocal: true, isDefinition: true, variable: [9 x float]* @default_amino_prior.defmq)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 288, align: 32, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 9)
!266 = !DIGlobalVariable(name: "defm", scope: !253, file: !1, line: 589, type: !267, isLocal: true, isDefinition: true, variable: [9 x [20 x float]]* @default_amino_prior.defm)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 5760, align: 32, elements: !268)
!268 = !{!265, !25}
!269 = !{i32 2, !"Dwarf Version", i32 2}
!270 = !{i32 2, !"Debug Info Version", i32 700000003}
!271 = !{i32 1, !"PIC Level", i32 2}
!272 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!273 = !DILocation(line: 37, column: 31, scope: !32)
!274 = !DILocation(line: 37, column: 10, scope: !32)
!275 = !DILocation(line: 37, column: 3, scope: !32)
!276 = !DIExpression()
!277 = !DILocation(line: 39, column: 31, scope: !35)
!278 = !DILocation(line: 40, column: 8, scope: !35)
!279 = !DILocation(line: 40, column: 3, scope: !35)
!280 = !DILocation(line: 40, column: 14, scope: !35)
!281 = !DILocation(line: 37, column: 31, scope: !32, inlinedAt: !282)
!282 = distinct !DILocation(line: 57, column: 9, scope: !40)
!283 = !DILocation(line: 37, column: 10, scope: !32, inlinedAt: !282)
!284 = !DILocation(line: 55, column: 21, scope: !40)
!285 = !DILocation(line: 58, column: 8, scope: !40)
!286 = !DILocation(line: 58, column: 17, scope: !40)
!287 = !{!288, !289, i64 0}
!288 = !{!"p7prior_s", !289, i64 0, !289, i64 4, !290, i64 8, !290, i64 808, !289, i64 6408, !290, i64 6412, !290, i64 7212, !289, i64 23212, !290, i64 23216, !290, i64 24016}
!289 = !{!"int", !290, i64 0}
!290 = !{!"omnipotent char", !291, i64 0}
!291 = !{!"Simple C/C++ TBAA"}
!292 = !DILocation(line: 60, column: 8, scope: !40)
!293 = !DILocation(line: 60, column: 17, scope: !40)
!294 = !{!288, !289, i64 4}
!295 = !DILocation(line: 61, column: 3, scope: !40)
!296 = !DILocation(line: 61, column: 17, scope: !40)
!297 = !{!298, !298, i64 0}
!298 = !{!"float", !290, i64 0}
!299 = !DILocation(line: 62, column: 8, scope: !40)
!300 = !DILocation(line: 62, column: 3, scope: !40)
!301 = !DILocation(line: 64, column: 8, scope: !40)
!302 = !DILocation(line: 64, column: 14, scope: !40)
!303 = !{!288, !289, i64 6408}
!304 = !DILocation(line: 65, column: 3, scope: !40)
!305 = !DILocation(line: 65, column: 14, scope: !40)
!306 = !DILocation(line: 66, column: 8, scope: !40)
!307 = !DILocation(line: 66, column: 19, scope: !40)
!308 = !{!289, !289, i64 0}
!309 = !DILocation(line: 66, column: 3, scope: !40)
!310 = !DILocation(line: 68, column: 8, scope: !40)
!311 = !DILocation(line: 68, column: 14, scope: !40)
!312 = !{!288, !289, i64 23212}
!313 = !DILocation(line: 69, column: 3, scope: !40)
!314 = !DILocation(line: 69, column: 14, scope: !40)
!315 = !DILocation(line: 70, column: 8, scope: !40)
!316 = !DILocation(line: 70, column: 19, scope: !40)
!317 = !DILocation(line: 70, column: 3, scope: !40)
!318 = !DILocation(line: 72, column: 3, scope: !40)
!319 = !DILocation(line: 83, column: 11, scope: !43)
!320 = !DILocation(line: 83, column: 3, scope: !43)
!321 = !DILocation(line: 37, column: 31, scope: !32, inlinedAt: !322)
!322 = distinct !DILocation(line: 628, column: 9, scope: !253, inlinedAt: !323)
!323 = distinct !DILocation(line: 84, column: 29, scope: !324)
!324 = distinct !DILexicalBlock(scope: !43, file: !1, line: 83, column: 26)
!325 = !DILocation(line: 37, column: 10, scope: !32, inlinedAt: !322)
!326 = !DILocation(line: 581, column: 21, scope: !253, inlinedAt: !323)
!327 = !DILocation(line: 629, column: 8, scope: !253, inlinedAt: !323)
!328 = !DILocation(line: 629, column: 17, scope: !253, inlinedAt: !323)
!329 = !DILocation(line: 634, column: 8, scope: !253, inlinedAt: !323)
!330 = !DILocation(line: 634, column: 17, scope: !253, inlinedAt: !323)
!331 = !DILocation(line: 635, column: 3, scope: !253, inlinedAt: !323)
!332 = !DILocation(line: 635, column: 17, scope: !253, inlinedAt: !323)
!333 = !DILocation(line: 636, column: 3, scope: !253, inlinedAt: !323)
!334 = !DILocation(line: 636, column: 20, scope: !253, inlinedAt: !323)
!335 = !DILocation(line: 637, column: 3, scope: !253, inlinedAt: !323)
!336 = !DILocation(line: 637, column: 20, scope: !253, inlinedAt: !323)
!337 = !DILocation(line: 638, column: 3, scope: !253, inlinedAt: !323)
!338 = !DILocation(line: 638, column: 20, scope: !253, inlinedAt: !323)
!339 = !DILocation(line: 639, column: 3, scope: !253, inlinedAt: !323)
!340 = !DILocation(line: 639, column: 20, scope: !253, inlinedAt: !323)
!341 = !DILocation(line: 640, column: 3, scope: !253, inlinedAt: !323)
!342 = !DILocation(line: 640, column: 20, scope: !253, inlinedAt: !323)
!343 = !DILocation(line: 641, column: 3, scope: !253, inlinedAt: !323)
!344 = !DILocation(line: 641, column: 20, scope: !253, inlinedAt: !323)
!345 = !DILocation(line: 642, column: 3, scope: !253, inlinedAt: !323)
!346 = !DILocation(line: 642, column: 20, scope: !253, inlinedAt: !323)
!347 = !DILocation(line: 647, column: 8, scope: !253, inlinedAt: !323)
!348 = !DILocation(line: 647, column: 14, scope: !253, inlinedAt: !323)
!349 = !DILocation(line: 582, column: 7, scope: !253, inlinedAt: !323)
!350 = !DILocation(line: 648, column: 3, scope: !351, inlinedAt: !323)
!351 = distinct !DILexicalBlock(scope: !253, file: !1, line: 648, column: 3)
!352 = !DILocation(line: 84, column: 29, scope: !324)
!353 = !DILocation(line: 650, column: 20, scope: !354, inlinedAt: !323)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 649, column: 5)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 648, column: 3)
!356 = !DILocation(line: 650, column: 7, scope: !354, inlinedAt: !323)
!357 = !DILocation(line: 650, column: 18, scope: !354, inlinedAt: !323)
!358 = !DILocation(line: 582, column: 10, scope: !253, inlinedAt: !323)
!359 = !DILocation(line: 651, column: 7, scope: !360, inlinedAt: !323)
!360 = distinct !DILexicalBlock(scope: !354, file: !1, line: 651, column: 7)
!361 = !DILocation(line: 652, column: 17, scope: !362, inlinedAt: !323)
!362 = distinct !DILexicalBlock(scope: !360, file: !1, line: 651, column: 7)
!363 = !DILocation(line: 652, column: 2, scope: !362, inlinedAt: !323)
!364 = !DILocation(line: 652, column: 15, scope: !362, inlinedAt: !323)
!365 = !DILocation(line: 648, column: 24, scope: !355, inlinedAt: !323)
!366 = !DILocation(line: 648, column: 17, scope: !355, inlinedAt: !323)
!367 = !DILocation(line: 661, column: 8, scope: !253, inlinedAt: !323)
!368 = !DILocation(line: 661, column: 14, scope: !253, inlinedAt: !323)
!369 = !DILocation(line: 662, column: 3, scope: !253, inlinedAt: !323)
!370 = !DILocation(line: 662, column: 14, scope: !253, inlinedAt: !323)
!371 = !DILocation(line: 663, column: 3, scope: !253, inlinedAt: !323)
!372 = !DILocation(line: 663, column: 17, scope: !253, inlinedAt: !323)
!373 = !DILocation(line: 664, column: 3, scope: !253, inlinedAt: !323)
!374 = !DILocation(line: 664, column: 17, scope: !253, inlinedAt: !323)
!375 = !DILocation(line: 665, column: 3, scope: !253, inlinedAt: !323)
!376 = !DILocation(line: 665, column: 17, scope: !253, inlinedAt: !323)
!377 = !DILocation(line: 666, column: 3, scope: !253, inlinedAt: !323)
!378 = !DILocation(line: 666, column: 17, scope: !253, inlinedAt: !323)
!379 = !DILocation(line: 667, column: 3, scope: !253, inlinedAt: !323)
!380 = !DILocation(line: 667, column: 17, scope: !253, inlinedAt: !323)
!381 = !DILocation(line: 668, column: 3, scope: !253, inlinedAt: !323)
!382 = !DILocation(line: 668, column: 17, scope: !253, inlinedAt: !323)
!383 = !DILocation(line: 669, column: 3, scope: !253, inlinedAt: !323)
!384 = !DILocation(line: 669, column: 17, scope: !253, inlinedAt: !323)
!385 = !DILocation(line: 670, column: 3, scope: !253, inlinedAt: !323)
!386 = !DILocation(line: 670, column: 17, scope: !253, inlinedAt: !323)
!387 = !DILocation(line: 671, column: 3, scope: !253, inlinedAt: !323)
!388 = !DILocation(line: 671, column: 17, scope: !253, inlinedAt: !323)
!389 = !DILocation(line: 672, column: 3, scope: !253, inlinedAt: !323)
!390 = !DILocation(line: 672, column: 17, scope: !253, inlinedAt: !323)
!391 = !DILocation(line: 673, column: 3, scope: !253, inlinedAt: !323)
!392 = !DILocation(line: 673, column: 17, scope: !253, inlinedAt: !323)
!393 = !DILocation(line: 674, column: 3, scope: !253, inlinedAt: !323)
!394 = !DILocation(line: 674, column: 17, scope: !253, inlinedAt: !323)
!395 = !DILocation(line: 675, column: 3, scope: !253, inlinedAt: !323)
!396 = !DILocation(line: 675, column: 17, scope: !253, inlinedAt: !323)
!397 = !DILocation(line: 676, column: 3, scope: !253, inlinedAt: !323)
!398 = !DILocation(line: 676, column: 17, scope: !253, inlinedAt: !323)
!399 = !DILocation(line: 677, column: 3, scope: !253, inlinedAt: !323)
!400 = !DILocation(line: 677, column: 17, scope: !253, inlinedAt: !323)
!401 = !DILocation(line: 678, column: 3, scope: !253, inlinedAt: !323)
!402 = !DILocation(line: 678, column: 17, scope: !253, inlinedAt: !323)
!403 = !DILocation(line: 679, column: 3, scope: !253, inlinedAt: !323)
!404 = !DILocation(line: 679, column: 17, scope: !253, inlinedAt: !323)
!405 = !DILocation(line: 680, column: 3, scope: !253, inlinedAt: !323)
!406 = !DILocation(line: 680, column: 17, scope: !253, inlinedAt: !323)
!407 = !DILocation(line: 681, column: 3, scope: !253, inlinedAt: !323)
!408 = !DILocation(line: 681, column: 17, scope: !253, inlinedAt: !323)
!409 = !DILocation(line: 682, column: 3, scope: !253, inlinedAt: !323)
!410 = !DILocation(line: 682, column: 17, scope: !253, inlinedAt: !323)
!411 = !DILocation(line: 84, column: 22, scope: !324)
!412 = !DILocation(line: 37, column: 31, scope: !32, inlinedAt: !413)
!413 = distinct !DILocation(line: 697, column: 9, scope: !258, inlinedAt: !414)
!414 = distinct !DILocation(line: 85, column: 29, scope: !324)
!415 = !DILocation(line: 37, column: 10, scope: !32, inlinedAt: !413)
!416 = !DILocation(line: 695, column: 21, scope: !258, inlinedAt: !414)
!417 = !DILocation(line: 698, column: 8, scope: !258, inlinedAt: !414)
!418 = !DILocation(line: 698, column: 17, scope: !258, inlinedAt: !414)
!419 = !DILocation(line: 706, column: 8, scope: !258, inlinedAt: !414)
!420 = !DILocation(line: 706, column: 20, scope: !258, inlinedAt: !414)
!421 = !DILocation(line: 707, column: 3, scope: !258, inlinedAt: !414)
!422 = !DILocation(line: 707, column: 20, scope: !258, inlinedAt: !414)
!423 = !DILocation(line: 708, column: 3, scope: !258, inlinedAt: !414)
!424 = !DILocation(line: 708, column: 20, scope: !258, inlinedAt: !414)
!425 = !DILocation(line: 709, column: 3, scope: !258, inlinedAt: !414)
!426 = !DILocation(line: 709, column: 20, scope: !258, inlinedAt: !414)
!427 = !DILocation(line: 710, column: 3, scope: !258, inlinedAt: !414)
!428 = !DILocation(line: 710, column: 20, scope: !258, inlinedAt: !414)
!429 = !DILocation(line: 711, column: 3, scope: !258, inlinedAt: !414)
!430 = !DILocation(line: 711, column: 20, scope: !258, inlinedAt: !414)
!431 = !DILocation(line: 712, column: 3, scope: !258, inlinedAt: !414)
!432 = !DILocation(line: 712, column: 20, scope: !258, inlinedAt: !414)
!433 = !DILocation(line: 713, column: 3, scope: !258, inlinedAt: !414)
!434 = !DILocation(line: 713, column: 20, scope: !258, inlinedAt: !414)
!435 = !DILocation(line: 714, column: 3, scope: !258, inlinedAt: !414)
!436 = !DILocation(line: 714, column: 20, scope: !258, inlinedAt: !414)
!437 = !DILocation(line: 716, column: 8, scope: !258, inlinedAt: !414)
!438 = !DILocation(line: 716, column: 14, scope: !258, inlinedAt: !414)
!439 = !DILocation(line: 717, column: 3, scope: !258, inlinedAt: !414)
!440 = !DILocation(line: 717, column: 14, scope: !258, inlinedAt: !414)
!441 = !DILocation(line: 718, column: 8, scope: !258, inlinedAt: !414)
!442 = !DILocation(line: 718, column: 19, scope: !258, inlinedAt: !414)
!443 = !DILocation(line: 718, column: 3, scope: !258, inlinedAt: !414)
!444 = !DILocation(line: 720, column: 8, scope: !258, inlinedAt: !414)
!445 = !DILocation(line: 720, column: 14, scope: !258, inlinedAt: !414)
!446 = !DILocation(line: 721, column: 3, scope: !258, inlinedAt: !414)
!447 = !DILocation(line: 721, column: 14, scope: !258, inlinedAt: !414)
!448 = !DILocation(line: 722, column: 8, scope: !258, inlinedAt: !414)
!449 = !DILocation(line: 722, column: 19, scope: !258, inlinedAt: !414)
!450 = !DILocation(line: 722, column: 3, scope: !258, inlinedAt: !414)
!451 = !DILocation(line: 85, column: 22, scope: !324)
!452 = !DILocation(line: 86, column: 22, scope: !324)
!453 = !DILocation(line: 87, column: 3, scope: !324)
!454 = !DILocation(line: 90, column: 1, scope: !43)
!455 = !DILocation(line: 97, column: 19, scope: !44)
!456 = !DILocation(line: 104, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !44, file: !1, line: 104, column: 7)
!458 = !DILocation(line: 99, column: 21, scope: !44)
!459 = !DILocation(line: 104, column: 34, scope: !457)
!460 = !DILocation(line: 104, column: 7, scope: !44)
!461 = !DILocation(line: 105, column: 5, scope: !457)
!462 = !DILocation(line: 37, column: 31, scope: !32, inlinedAt: !463)
!463 = distinct !DILocation(line: 106, column: 9, scope: !44)
!464 = !DILocation(line: 37, column: 10, scope: !32, inlinedAt: !463)
!465 = !DILocation(line: 100, column: 21, scope: !44)
!466 = !DILocation(line: 111, column: 10, scope: !44)
!467 = !DILocation(line: 101, column: 21, scope: !44)
!468 = !DILocation(line: 112, column: 3, scope: !44)
!469 = !DILocation(line: 113, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !44, file: !1, line: 113, column: 12)
!471 = !DILocation(line: 113, column: 38, scope: !470)
!472 = !DILocation(line: 113, column: 12, scope: !44)
!473 = !DILocation(line: 113, column: 49, scope: !470)
!474 = !DILocation(line: 113, column: 58, scope: !470)
!475 = !DILocation(line: 113, column: 44, scope: !470)
!476 = !DILocation(line: 114, column: 8, scope: !470)
!477 = !DILocation(line: 119, column: 10, scope: !44)
!478 = !DILocation(line: 120, column: 3, scope: !44)
!479 = !DILocation(line: 121, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !44, file: !1, line: 121, column: 7)
!481 = !DILocation(line: 121, column: 29, scope: !480)
!482 = !DILocation(line: 121, column: 7, scope: !44)
!483 = !DILocation(line: 123, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 123, column: 11)
!485 = distinct !DILexicalBlock(scope: !480, file: !1, line: 122, column: 5)
!486 = !DILocation(line: 123, column: 25, scope: !484)
!487 = !DILocation(line: 123, column: 11, scope: !485)
!488 = !DILocation(line: 124, column: 2, scope: !484)
!489 = !DILocation(line: 126, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !480, file: !1, line: 126, column: 12)
!491 = !DILocation(line: 126, column: 36, scope: !490)
!492 = !DILocation(line: 126, column: 12, scope: !480)
!493 = !DILocation(line: 128, column: 11, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 128, column: 11)
!495 = distinct !DILexicalBlock(scope: !490, file: !1, line: 127, column: 5)
!496 = !DILocation(line: 128, column: 25, scope: !494)
!497 = !DILocation(line: 128, column: 11, scope: !495)
!498 = !DILocation(line: 129, column: 2, scope: !494)
!499 = !DILocation(line: 132, column: 5, scope: !490)
!500 = !DILocation(line: 140, column: 20, scope: !44)
!501 = !DILocation(line: 140, column: 15, scope: !44)
!502 = !DILocation(line: 140, column: 8, scope: !44)
!503 = !DILocation(line: 140, column: 13, scope: !44)
!504 = !DILocation(line: 141, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !44, file: !1, line: 141, column: 7)
!506 = !DILocation(line: 141, column: 7, scope: !44)
!507 = !DILocation(line: 142, column: 5, scope: !505)
!508 = !DILocation(line: 143, column: 12, scope: !509)
!509 = distinct !DILexicalBlock(scope: !44, file: !1, line: 143, column: 7)
!510 = !DILocation(line: 143, column: 17, scope: !509)
!511 = !DILocation(line: 143, column: 7, scope: !44)
!512 = !DILocation(line: 144, column: 5, scope: !509)
!513 = !DILocation(line: 145, column: 24, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 145, column: 3)
!515 = distinct !DILexicalBlock(scope: !44, file: !1, line: 145, column: 3)
!516 = !DILocation(line: 145, column: 17, scope: !514)
!517 = !DILocation(line: 145, column: 3, scope: !515)
!518 = !DILocation(line: 147, column: 36, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 146, column: 5)
!520 = !DILocation(line: 147, column: 31, scope: !519)
!521 = !DILocation(line: 147, column: 23, scope: !519)
!522 = !DILocation(line: 147, column: 7, scope: !519)
!523 = !DILocation(line: 147, column: 21, scope: !519)
!524 = !DILocation(line: 102, column: 24, scope: !44)
!525 = !DILocation(line: 148, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !1, line: 148, column: 7)
!527 = !DILocation(line: 149, column: 30, scope: !528)
!528 = distinct !DILexicalBlock(scope: !526, file: !1, line: 148, column: 7)
!529 = !DILocation(line: 149, column: 25, scope: !528)
!530 = !DILocation(line: 149, column: 17, scope: !528)
!531 = !DILocation(line: 149, column: 2, scope: !528)
!532 = !DILocation(line: 149, column: 15, scope: !528)
!533 = !DILocation(line: 158, column: 20, scope: !44)
!534 = !DILocation(line: 158, column: 15, scope: !44)
!535 = !DILocation(line: 158, column: 8, scope: !44)
!536 = !DILocation(line: 158, column: 13, scope: !44)
!537 = !DILocation(line: 159, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !44, file: !1, line: 159, column: 7)
!539 = !DILocation(line: 159, column: 7, scope: !44)
!540 = !DILocation(line: 160, column: 5, scope: !538)
!541 = !DILocation(line: 161, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !44, file: !1, line: 161, column: 7)
!543 = !DILocation(line: 161, column: 17, scope: !542)
!544 = !DILocation(line: 161, column: 7, scope: !44)
!545 = !DILocation(line: 162, column: 5, scope: !542)
!546 = !DILocation(line: 164, column: 24, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 164, column: 3)
!548 = distinct !DILexicalBlock(scope: !44, file: !1, line: 164, column: 3)
!549 = !DILocation(line: 164, column: 17, scope: !547)
!550 = !DILocation(line: 164, column: 3, scope: !548)
!551 = !DILocation(line: 166, column: 33, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !1, line: 165, column: 5)
!553 = !DILocation(line: 166, column: 28, scope: !552)
!554 = !DILocation(line: 166, column: 20, scope: !552)
!555 = !DILocation(line: 166, column: 7, scope: !552)
!556 = !DILocation(line: 166, column: 18, scope: !552)
!557 = !DILocation(line: 167, column: 23, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 167, column: 7)
!559 = distinct !DILexicalBlock(scope: !552, file: !1, line: 167, column: 7)
!560 = !DILocation(line: 167, column: 21, scope: !558)
!561 = !DILocation(line: 167, column: 7, scope: !559)
!562 = !DILocation(line: 168, column: 30, scope: !558)
!563 = !DILocation(line: 168, column: 25, scope: !558)
!564 = !DILocation(line: 168, column: 17, scope: !558)
!565 = !DILocation(line: 168, column: 2, scope: !558)
!566 = !DILocation(line: 168, column: 15, scope: !558)
!567 = !DILocation(line: 177, column: 20, scope: !44)
!568 = !DILocation(line: 177, column: 15, scope: !44)
!569 = !DILocation(line: 177, column: 8, scope: !44)
!570 = !DILocation(line: 177, column: 13, scope: !44)
!571 = !DILocation(line: 178, column: 17, scope: !572)
!572 = distinct !DILexicalBlock(scope: !44, file: !1, line: 178, column: 7)
!573 = !DILocation(line: 178, column: 7, scope: !44)
!574 = !DILocation(line: 179, column: 5, scope: !572)
!575 = !DILocation(line: 180, column: 12, scope: !576)
!576 = distinct !DILexicalBlock(scope: !44, file: !1, line: 180, column: 7)
!577 = !DILocation(line: 180, column: 17, scope: !576)
!578 = !DILocation(line: 180, column: 7, scope: !44)
!579 = !DILocation(line: 181, column: 5, scope: !576)
!580 = !DILocation(line: 182, column: 24, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 182, column: 3)
!582 = distinct !DILexicalBlock(scope: !44, file: !1, line: 182, column: 3)
!583 = !DILocation(line: 182, column: 17, scope: !581)
!584 = !DILocation(line: 182, column: 3, scope: !582)
!585 = !DILocation(line: 184, column: 34, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !1, line: 183, column: 5)
!587 = !DILocation(line: 184, column: 29, scope: !586)
!588 = !DILocation(line: 184, column: 21, scope: !586)
!589 = !DILocation(line: 184, column: 7, scope: !586)
!590 = !DILocation(line: 184, column: 19, scope: !586)
!591 = !DILocation(line: 185, column: 23, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 185, column: 7)
!593 = distinct !DILexicalBlock(scope: !586, file: !1, line: 185, column: 7)
!594 = !DILocation(line: 185, column: 21, scope: !592)
!595 = !DILocation(line: 185, column: 7, scope: !593)
!596 = !DILocation(line: 186, column: 30, scope: !592)
!597 = !DILocation(line: 186, column: 25, scope: !592)
!598 = !DILocation(line: 186, column: 17, scope: !592)
!599 = !DILocation(line: 186, column: 2, scope: !592)
!600 = !DILocation(line: 186, column: 15, scope: !592)
!601 = !DILocation(line: 189, column: 3, scope: !44)
!602 = !DILocation(line: 190, column: 3, scope: !44)
!603 = !DILocation(line: 214, column: 16, scope: !116)
!604 = !DILocation(line: 214, column: 43, scope: !116)
!605 = !DILocation(line: 214, column: 54, scope: !116)
!606 = !DILocation(line: 223, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !116, file: !1, line: 223, column: 7)
!608 = !DILocation(line: 223, column: 21, scope: !607)
!609 = !DILocation(line: 223, column: 7, scope: !116)
!610 = !DILocation(line: 224, column: 5, scope: !607)
!611 = !DILocation(line: 225, column: 12, scope: !612)
!612 = distinct !DILexicalBlock(scope: !116, file: !1, line: 225, column: 7)
!613 = !DILocation(line: 225, column: 21, scope: !612)
!614 = !DILocation(line: 225, column: 7, scope: !116)
!615 = !DILocation(line: 226, column: 5, scope: !612)
!616 = !DILocation(line: 227, column: 12, scope: !617)
!617 = distinct !DILexicalBlock(scope: !116, file: !1, line: 227, column: 7)
!618 = !DILocation(line: 227, column: 17, scope: !617)
!619 = !DILocation(line: 227, column: 7, scope: !116)
!620 = !DILocation(line: 228, column: 5, scope: !617)
!621 = !DILocation(line: 232, column: 18, scope: !116)
!622 = !DILocation(line: 217, column: 10, scope: !116)
!623 = !DILocation(line: 234, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !116, file: !1, line: 234, column: 7)
!625 = !DILocation(line: 216, column: 10, scope: !116)
!626 = !DILocation(line: 234, column: 34, scope: !624)
!627 = !DILocation(line: 234, column: 42, scope: !624)
!628 = !DILocation(line: 235, column: 13, scope: !624)
!629 = !DILocation(line: 235, column: 53, scope: !624)
!630 = !DILocation(line: 235, column: 61, scope: !624)
!631 = !DILocation(line: 236, column: 13, scope: !624)
!632 = !DILocation(line: 236, column: 58, scope: !624)
!633 = !DILocation(line: 234, column: 7, scope: !116)
!634 = !DILocation(line: 237, column: 5, scope: !624)
!635 = !DILocation(line: 218, column: 10, scope: !116)
!636 = !DILocation(line: 219, column: 10, scope: !116)
!637 = !DILocation(line: 238, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !116, file: !1, line: 238, column: 7)
!639 = !DILocation(line: 238, column: 7, scope: !116)
!640 = !DILocation(line: 239, column: 5, scope: !638)
!641 = !DILocation(line: 240, column: 3, scope: !116)
!642 = !DILocation(line: 241, column: 3, scope: !116)
!643 = !DILocation(line: 243, column: 17, scope: !116)
!644 = !DILocation(line: 244, column: 8, scope: !116)
!645 = !DILocation(line: 244, column: 17, scope: !116)
!646 = !DILocation(line: 220, column: 10, scope: !116)
!647 = !DILocation(line: 249, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 249, column: 3)
!649 = distinct !DILexicalBlock(scope: !116, file: !1, line: 249, column: 3)
!650 = !DILocation(line: 249, column: 19, scope: !648)
!651 = !DILocation(line: 249, column: 3, scope: !649)
!652 = !DILocation(line: 254, column: 67, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 251, column: 7)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 250, column: 5)
!655 = distinct !DILexicalBlock(scope: !648, file: !1, line: 250, column: 5)
!656 = !DILocation(line: 252, column: 16, scope: !653)
!657 = !DILocation(line: 254, column: 49, scope: !653)
!658 = !{!659, !659, i64 0}
!659 = !{!"any pointer", !290, i64 0}
!660 = !DILocation(line: 250, column: 5, scope: !655)
!661 = !DILocation(line: 260, column: 3, scope: !662)
!662 = distinct !DILexicalBlock(scope: !116, file: !1, line: 260, column: 3)
!663 = !{!290, !290, i64 0}
!664 = !DILocation(line: 252, column: 29, scope: !653)
!665 = !DILocation(line: 253, column: 16, scope: !653)
!666 = !DILocation(line: 253, column: 29, scope: !653)
!667 = !DILocation(line: 254, column: 26, scope: !653)
!668 = !DILocation(line: 254, column: 41, scope: !653)
!669 = !DILocation(line: 254, column: 65, scope: !653)
!670 = !DILocation(line: 254, column: 37, scope: !653)
!671 = !DILocation(line: 254, column: 35, scope: !653)
!672 = !DILocation(line: 254, column: 9, scope: !653)
!673 = !DILocation(line: 254, column: 24, scope: !653)
!674 = !DILocation(line: 250, column: 21, scope: !654)
!675 = !DILocation(line: 262, column: 26, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 261, column: 5)
!677 = distinct !DILexicalBlock(scope: !662, file: !1, line: 260, column: 3)
!678 = !DILocation(line: 262, column: 24, scope: !676)
!679 = !DILocation(line: 262, column: 21, scope: !676)
!680 = !DILocation(line: 262, column: 7, scope: !676)
!681 = !DILocation(line: 262, column: 19, scope: !676)
!682 = !DILocation(line: 263, column: 13, scope: !676)
!683 = !DILocation(line: 263, column: 7, scope: !676)
!684 = !DILocation(line: 264, column: 26, scope: !676)
!685 = !DILocation(line: 264, column: 7, scope: !676)
!686 = !DILocation(line: 260, column: 21, scope: !677)
!687 = !DILocation(line: 260, column: 19, scope: !677)
!688 = !DILocation(line: 267, column: 24, scope: !116)
!689 = !DILocation(line: 267, column: 3, scope: !116)
!690 = !DILocation(line: 268, column: 1, scope: !116)
!691 = !DILocation(line: 279, column: 27, scope: !133)
!692 = !DILocation(line: 279, column: 40, scope: !133)
!693 = !DILocation(line: 282, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !133, file: !1, line: 282, column: 7)
!695 = !DILocation(line: 282, column: 21, scope: !694)
!696 = !DILocation(line: 281, column: 7, scope: !133)
!697 = !DILocation(line: 283, column: 21, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 283, column: 5)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 283, column: 5)
!700 = distinct !DILexicalBlock(scope: !694, file: !1, line: 282, column: 34)
!701 = !DILocation(line: 283, column: 19, scope: !698)
!702 = !DILocation(line: 282, column: 7, scope: !133)
!703 = !DILocation(line: 287, column: 5, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 287, column: 5)
!705 = distinct !DILexicalBlock(scope: !694, file: !1, line: 286, column: 10)
!706 = !DILocation(line: 283, column: 5, scope: !699)
!707 = !DILocation(line: 284, column: 17, scope: !698)
!708 = !DILocation(line: 284, column: 7, scope: !698)
!709 = !DILocation(line: 284, column: 15, scope: !698)
!710 = !DILocation(line: 288, column: 23, scope: !711)
!711 = distinct !DILexicalBlock(scope: !704, file: !1, line: 287, column: 5)
!712 = !DILocation(line: 288, column: 17, scope: !711)
!713 = !DILocation(line: 288, column: 7, scope: !711)
!714 = !DILocation(line: 288, column: 15, scope: !711)
!715 = !DILocation(line: 287, column: 19, scope: !711)
!716 = !DILocation(line: 285, column: 13, scope: !700)
!717 = !DILocation(line: 291, column: 1, scope: !133)
!718 = !DILocation(line: 294, column: 23, scope: !141)
!719 = !DILocation(line: 294, column: 39, scope: !141)
!720 = !DILocation(line: 294, column: 52, scope: !141)
!721 = !DILocation(line: 299, column: 9, scope: !141)
!722 = !DILocation(line: 301, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !141, file: !1, line: 301, column: 7)
!724 = !DILocation(line: 296, column: 9, scope: !141)
!725 = !DILocation(line: 301, column: 34, scope: !723)
!726 = !DILocation(line: 301, column: 7, scope: !141)
!727 = !DILocation(line: 302, column: 5, scope: !723)
!728 = !DILocation(line: 303, column: 12, scope: !729)
!729 = distinct !DILexicalBlock(scope: !141, file: !1, line: 303, column: 7)
!730 = !DILocation(line: 297, column: 9, scope: !141)
!731 = !DILocation(line: 303, column: 40, scope: !729)
!732 = !DILocation(line: 303, column: 7, scope: !141)
!733 = !DILocation(line: 304, column: 3, scope: !141)
!734 = !DILocation(line: 305, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !141, file: !1, line: 305, column: 12)
!736 = !DILocation(line: 305, column: 33, scope: !735)
!737 = !DILocation(line: 305, column: 12, scope: !141)
!738 = !DILocation(line: 306, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 306, column: 12)
!740 = !DILocation(line: 306, column: 33, scope: !739)
!741 = !DILocation(line: 306, column: 12, scope: !735)
!742 = !DILocation(line: 309, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !141, file: !1, line: 309, column: 7)
!744 = !DILocation(line: 309, column: 21, scope: !743)
!745 = !DILocation(line: 309, column: 7, scope: !141)
!746 = !DILocation(line: 310, column: 5, scope: !743)
!747 = !DILocation(line: 311, column: 26, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 311, column: 12)
!749 = !DILocation(line: 311, column: 12, scope: !743)
!750 = !DILocation(line: 312, column: 5, scope: !748)
!751 = !DILocation(line: 314, column: 19, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 314, column: 3)
!753 = distinct !DILexicalBlock(scope: !141, file: !1, line: 314, column: 3)
!754 = !DILocation(line: 314, column: 17, scope: !752)
!755 = !DILocation(line: 315, column: 14, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 315, column: 9)
!757 = distinct !DILexicalBlock(scope: !752, file: !1, line: 314, column: 39)
!758 = !DILocation(line: 315, column: 41, scope: !756)
!759 = !DILocation(line: 314, column: 3, scope: !753)
!760 = !DILocation(line: 315, column: 9, scope: !757)
!761 = !DILocation(line: 316, column: 15, scope: !757)
!762 = !DILocation(line: 316, column: 5, scope: !757)
!763 = !DILocation(line: 316, column: 13, scope: !757)
!764 = !DILocation(line: 318, column: 7, scope: !141)
!765 = !DILocation(line: 319, column: 13, scope: !141)
!766 = !DILocation(line: 319, column: 11, scope: !141)
!767 = !DILocation(line: 321, column: 3, scope: !141)
!768 = !DILocation(line: 322, column: 3, scope: !141)
!769 = !DILocation(line: 325, column: 3, scope: !141)
!770 = !DILocation(line: 326, column: 3, scope: !141)
!771 = !DILocation(line: 327, column: 1, scope: !141)
!772 = !DILocation(line: 342, column: 31, scope: !152)
!773 = !DILocation(line: 342, column: 54, scope: !152)
!774 = !DILocation(line: 346, column: 3, scope: !152)
!775 = !DILocation(line: 346, column: 9, scope: !152)
!776 = !DILocation(line: 347, column: 3, scope: !152)
!777 = !DILocation(line: 347, column: 9, scope: !152)
!778 = !DILocation(line: 348, column: 3, scope: !152)
!779 = !DILocation(line: 348, column: 9, scope: !152)
!780 = !DILocation(line: 352, column: 13, scope: !152)
!781 = !{!782, !659, i64 208}
!782 = !{!"plan7_s", !659, i64 0, !659, i64 8, !659, i64 16, !659, i64 24, !659, i64 32, !659, i64 40, !659, i64 48, !289, i64 56, !659, i64 64, !659, i64 72, !289, i64 80, !659, i64 88, !659, i64 96, !659, i64 104, !298, i64 112, !298, i64 116, !298, i64 120, !298, i64 124, !298, i64 128, !298, i64 132, !289, i64 136, !659, i64 144, !659, i64 152, !659, i64 160, !298, i64 168, !290, i64 172, !659, i64 208, !659, i64 216, !290, i64 224, !298, i64 304, !659, i64 312, !659, i64 320, !659, i64 328, !290, i64 336, !659, i64 368, !659, i64 376, !659, i64 384, !659, i64 392, !659, i64 400, !659, i64 408, !659, i64 416, !659, i64 424, !659, i64 432, !289, i64 440, !289, i64 444, !298, i64 448, !298, i64 452, !289, i64 456}
!783 = !DILocation(line: 352, column: 18, scope: !152)
!784 = !DILocation(line: 352, column: 27, scope: !152)
!785 = !{!782, !289, i64 136}
!786 = !DILocation(line: 352, column: 28, scope: !152)
!787 = !DILocation(line: 352, column: 3, scope: !152)
!788 = !DILocation(line: 353, column: 13, scope: !152)
!789 = !{!782, !659, i64 216}
!790 = !DILocation(line: 353, column: 16, scope: !152)
!791 = !DILocation(line: 353, column: 25, scope: !152)
!792 = !DILocation(line: 353, column: 26, scope: !152)
!793 = !DILocation(line: 353, column: 3, scope: !152)
!794 = !DILocation(line: 354, column: 12, scope: !152)
!795 = !{!782, !298, i64 168}
!796 = !DILocation(line: 354, column: 24, scope: !152)
!797 = !DILocation(line: 354, column: 19, scope: !152)
!798 = !DILocation(line: 354, column: 17, scope: !152)
!799 = !DILocation(line: 354, column: 7, scope: !152)
!800 = !DILocation(line: 345, column: 9, scope: !152)
!801 = !DILocation(line: 355, column: 23, scope: !152)
!802 = !DILocation(line: 355, column: 33, scope: !152)
!803 = !DILocation(line: 355, column: 40, scope: !152)
!804 = !DILocation(line: 355, column: 38, scope: !152)
!805 = !DILocation(line: 355, column: 22, scope: !152)
!806 = !DILocation(line: 355, column: 20, scope: !152)
!807 = !DILocation(line: 356, column: 23, scope: !152)
!808 = !DILocation(line: 356, column: 37, scope: !152)
!809 = !DILocation(line: 356, column: 42, scope: !152)
!810 = !DILocation(line: 356, column: 22, scope: !152)
!811 = !DILocation(line: 356, column: 20, scope: !152)
!812 = !DILocation(line: 357, column: 17, scope: !152)
!813 = !DILocation(line: 357, column: 3, scope: !152)
!814 = !DILocation(line: 357, column: 8, scope: !152)
!815 = !DILocation(line: 357, column: 20, scope: !152)
!816 = !DILocation(line: 344, column: 7, scope: !152)
!817 = !DILocation(line: 361, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 361, column: 3)
!819 = distinct !DILexicalBlock(scope: !152, file: !1, line: 361, column: 3)
!820 = !DILocation(line: 361, column: 3, scope: !819)
!821 = !DILocation(line: 406, column: 12, scope: !822)
!822 = distinct !DILexicalBlock(scope: !152, file: !1, line: 406, column: 7)
!823 = !DILocation(line: 372, column: 16, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 372, column: 11)
!825 = distinct !DILexicalBlock(scope: !818, file: !1, line: 362, column: 5)
!826 = !DILocation(line: 379, column: 8, scope: !824)
!827 = !DILocation(line: 379, column: 12, scope: !824)
!828 = !DILocation(line: 379, column: 26, scope: !824)
!829 = !DILocation(line: 380, column: 16, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !1, line: 380, column: 11)
!831 = !DILocation(line: 387, column: 8, scope: !830)
!832 = !DILocation(line: 387, column: 12, scope: !830)
!833 = !DILocation(line: 387, column: 26, scope: !830)
!834 = !DILocation(line: 388, column: 16, scope: !835)
!835 = distinct !DILexicalBlock(scope: !825, file: !1, line: 388, column: 11)
!836 = !DILocation(line: 395, column: 8, scope: !835)
!837 = !DILocation(line: 395, column: 12, scope: !835)
!838 = !DILocation(line: 395, column: 26, scope: !835)
!839 = !DILocation(line: 399, column: 39, scope: !825)
!840 = !DILocation(line: 400, column: 37, scope: !825)
!841 = !DILocation(line: 400, column: 65, scope: !825)
!842 = !DILocation(line: 401, column: 37, scope: !825)
!843 = !DILocation(line: 401, column: 65, scope: !825)
!844 = !{!782, !659, i64 88}
!845 = !DILocation(line: 372, column: 21, scope: !824)
!846 = !DILocation(line: 372, column: 29, scope: !824)
!847 = !DILocation(line: 372, column: 32, scope: !824)
!848 = !DILocation(line: 372, column: 45, scope: !824)
!849 = !DILocation(line: 372, column: 11, scope: !825)
!850 = !DILocation(line: 374, column: 29, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 374, column: 8)
!852 = distinct !DILexicalBlock(scope: !824, file: !1, line: 373, column: 2)
!853 = !DILocation(line: 374, column: 21, scope: !851)
!854 = !DILocation(line: 374, column: 8, scope: !852)
!855 = !DILocation(line: 374, column: 35, scope: !851)
!856 = !DILocation(line: 375, column: 18, scope: !852)
!857 = !DILocation(line: 375, column: 4, scope: !852)
!858 = !DILocation(line: 376, column: 12, scope: !852)
!859 = !DILocation(line: 376, column: 7, scope: !852)
!860 = !DILocation(line: 376, column: 4, scope: !852)
!861 = !DILocation(line: 376, column: 21, scope: !852)
!862 = !DILocation(line: 377, column: 2, scope: !852)
!863 = !DILocation(line: 379, column: 2, scope: !824)
!864 = !{!782, !659, i64 96}
!865 = !DILocation(line: 380, column: 21, scope: !830)
!866 = !DILocation(line: 380, column: 29, scope: !830)
!867 = !DILocation(line: 380, column: 32, scope: !830)
!868 = !DILocation(line: 380, column: 45, scope: !830)
!869 = !DILocation(line: 380, column: 11, scope: !825)
!870 = !DILocation(line: 382, column: 29, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 382, column: 8)
!872 = distinct !DILexicalBlock(scope: !830, file: !1, line: 381, column: 2)
!873 = !DILocation(line: 382, column: 21, scope: !871)
!874 = !DILocation(line: 382, column: 8, scope: !872)
!875 = !DILocation(line: 382, column: 35, scope: !871)
!876 = !DILocation(line: 383, column: 18, scope: !872)
!877 = !DILocation(line: 383, column: 4, scope: !872)
!878 = !DILocation(line: 384, column: 12, scope: !872)
!879 = !DILocation(line: 384, column: 7, scope: !872)
!880 = !DILocation(line: 384, column: 4, scope: !872)
!881 = !DILocation(line: 384, column: 21, scope: !872)
!882 = !DILocation(line: 385, column: 2, scope: !872)
!883 = !DILocation(line: 387, column: 2, scope: !830)
!884 = !{!782, !659, i64 104}
!885 = !DILocation(line: 388, column: 21, scope: !835)
!886 = !DILocation(line: 388, column: 29, scope: !835)
!887 = !DILocation(line: 388, column: 32, scope: !835)
!888 = !DILocation(line: 388, column: 45, scope: !835)
!889 = !DILocation(line: 388, column: 11, scope: !825)
!890 = !DILocation(line: 390, column: 29, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 390, column: 8)
!892 = distinct !DILexicalBlock(scope: !835, file: !1, line: 389, column: 2)
!893 = !DILocation(line: 390, column: 21, scope: !891)
!894 = !DILocation(line: 390, column: 8, scope: !892)
!895 = !DILocation(line: 390, column: 35, scope: !891)
!896 = !DILocation(line: 391, column: 18, scope: !892)
!897 = !DILocation(line: 391, column: 4, scope: !892)
!898 = !DILocation(line: 392, column: 12, scope: !892)
!899 = !DILocation(line: 392, column: 7, scope: !892)
!900 = !DILocation(line: 392, column: 4, scope: !892)
!901 = !DILocation(line: 392, column: 21, scope: !892)
!902 = !DILocation(line: 393, column: 2, scope: !892)
!903 = !DILocation(line: 395, column: 2, scope: !835)
!904 = !{!782, !659, i64 144}
!905 = !DILocation(line: 399, column: 34, scope: !825)
!906 = !DILocation(line: 399, column: 7, scope: !825)
!907 = !{!782, !659, i64 152}
!908 = !DILocation(line: 400, column: 32, scope: !825)
!909 = !DILocation(line: 400, column: 55, scope: !825)
!910 = !DILocation(line: 400, column: 7, scope: !825)
!911 = !{!782, !659, i64 160}
!912 = !DILocation(line: 401, column: 32, scope: !825)
!913 = !DILocation(line: 401, column: 55, scope: !825)
!914 = !DILocation(line: 401, column: 7, scope: !825)
!915 = !DILocation(line: 361, column: 24, scope: !818)
!916 = !DILocation(line: 406, column: 17, scope: !822)
!917 = !DILocation(line: 406, column: 25, scope: !822)
!918 = !DILocation(line: 406, column: 28, scope: !822)
!919 = !DILocation(line: 406, column: 46, scope: !822)
!920 = !DILocation(line: 406, column: 7, scope: !152)
!921 = !DILocation(line: 408, column: 37, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 408, column: 11)
!923 = distinct !DILexicalBlock(scope: !822, file: !1, line: 407, column: 5)
!924 = !DILocation(line: 408, column: 29, scope: !922)
!925 = !DILocation(line: 408, column: 11, scope: !923)
!926 = !DILocation(line: 408, column: 43, scope: !922)
!927 = !DILocation(line: 409, column: 21, scope: !923)
!928 = !DILocation(line: 409, column: 12, scope: !923)
!929 = !DILocation(line: 409, column: 7, scope: !923)
!930 = !DILocation(line: 410, column: 25, scope: !923)
!931 = !DILocation(line: 410, column: 10, scope: !923)
!932 = !DILocation(line: 410, column: 15, scope: !923)
!933 = !DILocation(line: 410, column: 7, scope: !923)
!934 = !DILocation(line: 410, column: 29, scope: !923)
!935 = !DILocation(line: 411, column: 5, scope: !923)
!936 = !DILocation(line: 413, column: 11, scope: !822)
!937 = !DILocation(line: 413, column: 15, scope: !822)
!938 = !DILocation(line: 413, column: 29, scope: !822)
!939 = !DILocation(line: 413, column: 5, scope: !822)
!940 = !DILocation(line: 415, column: 42, scope: !152)
!941 = !DILocation(line: 415, column: 62, scope: !152)
!942 = !DILocation(line: 415, column: 56, scope: !152)
!943 = !DILocation(line: 415, column: 28, scope: !152)
!944 = !DILocation(line: 415, column: 33, scope: !152)
!945 = !DILocation(line: 415, column: 66, scope: !152)
!946 = !DILocation(line: 415, column: 3, scope: !152)
!947 = !DILocation(line: 419, column: 3, scope: !152)
!948 = !DILocation(line: 420, column: 1, scope: !152)
!949 = !DILocation(line: 520, column: 35, scope: !239)
!950 = !DILocation(line: 520, column: 56, scope: !239)
!951 = !DILocation(line: 521, column: 13, scope: !239)
!952 = !DILocation(line: 525, column: 3, scope: !239)
!953 = !DILocation(line: 525, column: 9, scope: !239)
!954 = !DILocation(line: 529, column: 3, scope: !239)
!955 = !DILocation(line: 529, column: 10, scope: !239)
!956 = !DILocation(line: 530, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !239, file: !1, line: 530, column: 7)
!958 = !DILocation(line: 530, column: 38, scope: !957)
!959 = !DILocation(line: 530, column: 79, scope: !957)
!960 = !DILocation(line: 530, column: 84, scope: !957)
!961 = !DILocation(line: 530, column: 7, scope: !239)
!962 = !DILocation(line: 532, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 532, column: 7)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 532, column: 7)
!965 = distinct !DILexicalBlock(scope: !957, file: !1, line: 531, column: 5)
!966 = !DILocation(line: 532, column: 21, scope: !963)
!967 = !DILocation(line: 532, column: 7, scope: !964)
!968 = !DILocation(line: 536, column: 32, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !1, line: 533, column: 9)
!970 = !DILocation(line: 537, column: 25, scope: !969)
!971 = !DILocation(line: 534, column: 21, scope: !969)
!972 = !DILocation(line: 534, column: 27, scope: !969)
!973 = !DILocation(line: 534, column: 35, scope: !969)
!974 = !DILocation(line: 534, column: 11, scope: !969)
!975 = !DILocation(line: 535, column: 39, scope: !969)
!976 = !DILocation(line: 535, column: 21, scope: !969)
!977 = !DILocation(line: 535, column: 18, scope: !969)
!978 = !DILocation(line: 536, column: 50, scope: !969)
!979 = !DILocation(line: 536, column: 21, scope: !969)
!980 = !DILocation(line: 536, column: 18, scope: !969)
!981 = !DILocation(line: 537, column: 43, scope: !969)
!982 = !DILocation(line: 537, column: 14, scope: !969)
!983 = !DILocation(line: 537, column: 11, scope: !969)
!984 = !DILocation(line: 539, column: 7, scope: !965)
!985 = !DILocation(line: 540, column: 5, scope: !965)
!986 = !DILocation(line: 542, column: 10, scope: !239)
!987 = !DILocation(line: 526, column: 9, scope: !239)
!988 = !DILocation(line: 543, column: 10, scope: !239)
!989 = !DILocation(line: 543, column: 19, scope: !239)
!990 = !DILocation(line: 543, column: 17, scope: !239)
!991 = !DILocation(line: 526, column: 21, scope: !239)
!992 = !DILocation(line: 544, column: 10, scope: !239)
!993 = !DILocation(line: 544, column: 19, scope: !239)
!994 = !DILocation(line: 544, column: 17, scope: !239)
!995 = !DILocation(line: 526, column: 15, scope: !239)
!996 = !DILocation(line: 523, column: 9, scope: !239)
!997 = !DILocation(line: 549, column: 30, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 549, column: 7)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 549, column: 7)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 547, column: 5)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 546, column: 3)
!1002 = distinct !DILexicalBlock(scope: !239, file: !1, line: 546, column: 3)
!1003 = !DILocation(line: 546, column: 3, scope: !1002)
!1004 = !DILocation(line: 549, column: 21, scope: !998)
!1005 = !DILocation(line: 553, column: 22, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 551, column: 16)
!1007 = distinct !DILexicalBlock(scope: !998, file: !1, line: 550, column: 9)
!1008 = !DILocation(line: 549, column: 7, scope: !999)
!1009 = !DILocation(line: 551, column: 4, scope: !1007)
!1010 = !DILocation(line: 553, column: 12, scope: !1006)
!1011 = !DILocation(line: 553, column: 30, scope: !1006)
!1012 = !DILocation(line: 553, column: 28, scope: !1006)
!1013 = !DILocation(line: 553, column: 19, scope: !1006)
!1014 = !DILocation(line: 554, column: 21, scope: !1006)
!1015 = !DILocation(line: 554, column: 16, scope: !1006)
!1016 = !DILocation(line: 554, column: 14, scope: !1006)
!1017 = !DILocation(line: 553, column: 47, scope: !1006)
!1018 = !DILocation(line: 553, column: 9, scope: !1006)
!1019 = !DILocation(line: 527, column: 9, scope: !239)
!1020 = !DILocation(line: 555, column: 6, scope: !1006)
!1021 = !DILocation(line: 557, column: 12, scope: !1006)
!1022 = !DILocation(line: 557, column: 22, scope: !1006)
!1023 = !DILocation(line: 557, column: 30, scope: !1006)
!1024 = !DILocation(line: 557, column: 28, scope: !1006)
!1025 = !DILocation(line: 557, column: 19, scope: !1006)
!1026 = !DILocation(line: 558, column: 16, scope: !1006)
!1027 = !DILocation(line: 558, column: 14, scope: !1006)
!1028 = !DILocation(line: 558, column: 35, scope: !1006)
!1029 = !DILocation(line: 558, column: 33, scope: !1006)
!1030 = !DILocation(line: 557, column: 47, scope: !1006)
!1031 = !DILocation(line: 557, column: 9, scope: !1006)
!1032 = !DILocation(line: 559, column: 6, scope: !1006)
!1033 = !DILocation(line: 561, column: 12, scope: !1006)
!1034 = !DILocation(line: 561, column: 22, scope: !1006)
!1035 = !DILocation(line: 561, column: 30, scope: !1006)
!1036 = !DILocation(line: 561, column: 28, scope: !1006)
!1037 = !DILocation(line: 561, column: 19, scope: !1006)
!1038 = !DILocation(line: 562, column: 16, scope: !1006)
!1039 = !DILocation(line: 562, column: 14, scope: !1006)
!1040 = !DILocation(line: 562, column: 35, scope: !1006)
!1041 = !DILocation(line: 562, column: 33, scope: !1006)
!1042 = !DILocation(line: 561, column: 47, scope: !1006)
!1043 = !DILocation(line: 561, column: 9, scope: !1006)
!1044 = !DILocation(line: 563, column: 6, scope: !1006)
!1045 = !DILocation(line: 566, column: 13, scope: !1000)
!1046 = !DILocation(line: 568, column: 3, scope: !239)
!1047 = !DILocation(line: 569, column: 3, scope: !239)
!1048 = !DILocation(line: 570, column: 3, scope: !239)
!1049 = !DILocation(line: 571, column: 1, scope: !239)
!1050 = !DILocation(line: 443, column: 33, scope: !222)
!1051 = !DILocation(line: 443, column: 56, scope: !222)
!1052 = !DILocation(line: 444, column: 14, scope: !222)
!1053 = !DILocation(line: 444, column: 25, scope: !222)
!1054 = !DILocation(line: 444, column: 46, scope: !222)
!1055 = !DILocation(line: 445, column: 17, scope: !222)
!1056 = !DILocation(line: 449, column: 3, scope: !222)
!1057 = !DILocation(line: 449, column: 9, scope: !222)
!1058 = !DILocation(line: 466, column: 3, scope: !222)
!1059 = !DILocation(line: 466, column: 10, scope: !222)
!1060 = !DILocation(line: 467, column: 12, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !222, file: !1, line: 467, column: 7)
!1062 = !DILocation(line: 467, column: 21, scope: !1061)
!1063 = !DILocation(line: 467, column: 42, scope: !1061)
!1064 = !DILocation(line: 467, column: 35, scope: !1061)
!1065 = !DILocation(line: 469, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 469, column: 7)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 469, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 468, column: 5)
!1069 = !DILocation(line: 469, column: 7, scope: !1067)
!1070 = !DILocation(line: 471, column: 14, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 470, column: 2)
!1072 = !DILocation(line: 471, column: 20, scope: !1071)
!1073 = !DILocation(line: 471, column: 28, scope: !1071)
!1074 = !DILocation(line: 471, column: 4, scope: !1071)
!1075 = !DILocation(line: 472, column: 29, scope: !1071)
!1076 = !DILocation(line: 472, column: 44, scope: !1071)
!1077 = !DILocation(line: 472, column: 14, scope: !1071)
!1078 = !DILocation(line: 472, column: 11, scope: !1071)
!1079 = !DILocation(line: 474, column: 7, scope: !1068)
!1080 = !DILocation(line: 475, column: 5, scope: !1068)
!1081 = !DILocation(line: 476, column: 26, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 476, column: 12)
!1083 = !DILocation(line: 476, column: 37, scope: !1082)
!1084 = !DILocation(line: 478, column: 23, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 478, column: 7)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 478, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 477, column: 5)
!1088 = !DILocation(line: 478, column: 21, scope: !1085)
!1089 = !DILocation(line: 478, column: 7, scope: !1086)
!1090 = !DILocation(line: 479, column: 9, scope: !1085)
!1091 = !DILocation(line: 480, column: 7, scope: !1087)
!1092 = !DILocation(line: 481, column: 5, scope: !1087)
!1093 = !DILocation(line: 485, column: 20, scope: !222)
!1094 = !DILocation(line: 485, column: 10, scope: !222)
!1095 = !DILocation(line: 450, column: 9, scope: !222)
!1096 = !DILocation(line: 447, column: 9, scope: !222)
!1097 = !DILocation(line: 486, column: 19, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 486, column: 3)
!1099 = distinct !DILexicalBlock(scope: !222, file: !1, line: 486, column: 3)
!1100 = !DILocation(line: 486, column: 17, scope: !1098)
!1101 = !DILocation(line: 486, column: 3, scope: !1099)
!1102 = !DILocation(line: 488, column: 19, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 488, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 488, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 486, column: 39)
!1106 = !DILocation(line: 490, column: 23, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 488, column: 31)
!1108 = !DILocation(line: 488, column: 5, scope: !1104)
!1109 = !DILocation(line: 489, column: 19, scope: !1107)
!1110 = !DILocation(line: 489, column: 14, scope: !1107)
!1111 = !DILocation(line: 451, column: 9, scope: !222)
!1112 = !DILocation(line: 490, column: 13, scope: !1107)
!1113 = !DILocation(line: 490, column: 32, scope: !1107)
!1114 = !DILocation(line: 490, column: 30, scope: !1107)
!1115 = !DILocation(line: 490, column: 20, scope: !1107)
!1116 = !DILocation(line: 490, column: 49, scope: !1107)
!1117 = !DILocation(line: 490, column: 41, scope: !1107)
!1118 = !DILocation(line: 490, column: 10, scope: !1107)
!1119 = !DILocation(line: 452, column: 9, scope: !222)
!1120 = !DILocation(line: 489, column: 25, scope: !1107)
!1121 = !DILocation(line: 492, column: 5, scope: !1105)
!1122 = !DILocation(line: 492, column: 12, scope: !1105)
!1123 = !DILocation(line: 494, column: 3, scope: !222)
!1124 = !DILocation(line: 496, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !222, file: !1, line: 496, column: 7)
!1126 = !DILocation(line: 497, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 497, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 497, column: 5)
!1129 = !DILocation(line: 496, column: 7, scope: !222)
!1130 = !DILocation(line: 497, column: 5, scope: !1128)
!1131 = !DILocation(line: 498, column: 18, scope: !1127)
!1132 = !DILocation(line: 499, column: 1, scope: !222)
