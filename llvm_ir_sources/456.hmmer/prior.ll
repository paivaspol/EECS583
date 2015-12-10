; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7AllocPrior() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #6, !dbg !260
  %0 = bitcast i8* %call to %struct.p7prior_s*, !dbg !260
  ret %struct.p7prior_s* %0, !dbg !260
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @P7FreePrior(%struct.p7prior_s* nocapture %pri) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %pri}, i64 0, metadata !37), !dbg !261
  %0 = bitcast %struct.p7prior_s* %pri to i8*, !dbg !262
  tail call void @free(i8* %0) #6, !dbg !262
  ret void, !dbg !262
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7LaplacePrior() #0 {
entry:
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #6, !dbg !263
  %0 = bitcast i8* %call.i to %struct.p7prior_s*, !dbg !263
  tail call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %0}, i64 0, metadata !40), !dbg !264
  %strategy = bitcast i8* %call.i to i32*, !dbg !265
  store i32 0, i32* %strategy, align 4, !dbg !265, !tbaa !266
  %tnum = getelementptr inbounds i8* %call.i, i64 4, !dbg !269
  %1 = bitcast i8* %tnum to i32*, !dbg !269
  store i32 1, i32* %1, align 4, !dbg !269, !tbaa !266
  %arrayidx = getelementptr inbounds i8* %call.i, i64 8, !dbg !270
  %2 = bitcast i8* %arrayidx to float*, !dbg !270
  store float 1.000000e+00, float* %2, align 4, !dbg !270, !tbaa !271
  %arraydecay = getelementptr inbounds i8* %call.i, i64 808, !dbg !272
  %3 = bitcast i8* %arraydecay to float*, !dbg !272
  tail call void @FSet(float* %3, i32 8, float 1.000000e+00) #6, !dbg !272
  %mnum = getelementptr inbounds i8* %call.i, i64 6408, !dbg !273
  %4 = bitcast i8* %mnum to i32*, !dbg !273
  store i32 1, i32* %4, align 4, !dbg !273, !tbaa !266
  %arrayidx2 = getelementptr inbounds i8* %call.i, i64 6412, !dbg !274
  %5 = bitcast i8* %arrayidx2 to float*, !dbg !274
  store float 1.000000e+00, float* %5, align 4, !dbg !274, !tbaa !271
  %arraydecay4 = getelementptr inbounds i8* %call.i, i64 7212, !dbg !275
  %6 = bitcast i8* %arraydecay4 to float*, !dbg !275
  %7 = load i32* @Alphabet_size, align 4, !dbg !275, !tbaa !266
  tail call void @FSet(float* %6, i32 %7, float 1.000000e+00) #6, !dbg !275
  %inum = getelementptr inbounds i8* %call.i, i64 23212, !dbg !276
  %8 = bitcast i8* %inum to i32*, !dbg !276
  store i32 1, i32* %8, align 4, !dbg !276, !tbaa !266
  %arrayidx5 = getelementptr inbounds i8* %call.i, i64 23216, !dbg !277
  %9 = bitcast i8* %arrayidx5 to float*, !dbg !277
  store float 1.000000e+00, float* %9, align 4, !dbg !277, !tbaa !271
  %arraydecay7 = getelementptr inbounds i8* %call.i, i64 24016, !dbg !278
  %10 = bitcast i8* %arraydecay7 to float*, !dbg !278
  %11 = load i32* @Alphabet_size, align 4, !dbg !278, !tbaa !266
  tail call void @FSet(float* %10, i32 %11, float 1.000000e+00) #6, !dbg !278
  ret %struct.p7prior_s* %0, !dbg !279
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7DefaultPrior() #0 {
entry:
  %0 = load i32* @Alphabet_type, align 4, !dbg !280, !tbaa !266
  switch i32 %0, label %return [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb3
  ], !dbg !280

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #6, !dbg !281
  %1 = bitcast i8* %call.i.i to %struct.p7prior_s*, !dbg !281
  tail call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %1}, i64 0, metadata !285) #5, !dbg !282
  %strategy.i = bitcast i8* %call.i.i to i32*, !dbg !286
  store i32 0, i32* %strategy.i, align 4, !dbg !286, !tbaa !266
  %tnum.i = getelementptr inbounds i8* %call.i.i, i64 4, !dbg !287
  %2 = bitcast i8* %tnum.i to i32*, !dbg !287
  store i32 1, i32* %2, align 4, !dbg !287, !tbaa !266
  %arrayidx.i = getelementptr inbounds i8* %call.i.i, i64 8, !dbg !288
  %3 = bitcast i8* %arrayidx.i to float*, !dbg !288
  store float 1.000000e+00, float* %3, align 4, !dbg !288, !tbaa !271
  %arrayidx2.i = getelementptr inbounds i8* %call.i.i, i64 808, !dbg !289
  %4 = bitcast i8* %arrayidx2.i to float*, !dbg !289
  store float 0x3FE967A100000000, float* %4, align 4, !dbg !289, !tbaa !271
  %arrayidx5.i = getelementptr inbounds i8* %call.i.i, i64 812, !dbg !290
  %5 = bitcast i8* %arrayidx5.i to float*, !dbg !290
  store float 0x3F9C779A60000000, float* %5, align 4, !dbg !290, !tbaa !271
  %arrayidx8.i = getelementptr inbounds i8* %call.i.i, i64 816, !dbg !291
  %6 = bitcast i8* %arrayidx8.i to float*, !dbg !291
  store float 0x3F8BA5E360000000, float* %6, align 4, !dbg !291, !tbaa !271
  %arrayidx11.i = getelementptr inbounds i8* %call.i.i, i64 820, !dbg !292
  %7 = bitcast i8* %arrayidx11.i to float*, !dbg !292
  store float 0x3FC3DA5120000000, float* %7, align 4, !dbg !292, !tbaa !271
  %arrayidx14.i = getelementptr inbounds i8* %call.i.i, i64 824, !dbg !293
  %8 = bitcast i8* %arrayidx14.i to float*, !dbg !293
  store float 0x3FC1096BC0000000, float* %8, align 4, !dbg !293, !tbaa !271
  %arrayidx17.i = getelementptr inbounds i8* %call.i.i, i64 828, !dbg !294
  %9 = bitcast i8* %arrayidx17.i to float*, !dbg !294
  store float 0x3FECCE7040000000, float* %9, align 4, !dbg !294, !tbaa !271
  %arrayidx20.i = getelementptr inbounds i8* %call.i.i, i64 832, !dbg !295
  %10 = bitcast i8* %arrayidx20.i to float*, !dbg !295
  store float 0x3FE20418A0000000, float* %10, align 4, !dbg !295, !tbaa !271
  %mnum.i = getelementptr inbounds i8* %call.i.i, i64 6408, !dbg !296
  %11 = bitcast i8* %mnum.i to i32*, !dbg !296
  store i32 9, i32* %11, align 4, !dbg !296, !tbaa !266
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !297) #5, !dbg !298
  br label %for.body.i, !dbg !298

for.body.i:                                       ; preds = %for.inc36.i, %sw.bb
  %indvars.iv146.i = phi i64 [ 0, %sw.bb ], [ %indvars.iv.next147.i, %for.inc36.i ]
  %arrayidx22.i = getelementptr inbounds [9 x float]* @default_amino_prior.defmq, i64 0, i64 %indvars.iv146.i, !dbg !300
  %12 = load float* %arrayidx22.i, align 4, !dbg !300, !tbaa !271
  %arrayidx24.i = getelementptr inbounds %struct.p7prior_s* %1, i64 0, i32 5, i64 %indvars.iv146.i, !dbg !300
  store float %12, float* %arrayidx24.i, align 4, !dbg !300, !tbaa !271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !302) #5, !dbg !303
  br label %for.body27.i, !dbg !303

for.body27.i:                                     ; preds = %for.body27.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body27.i ]
  %arrayidx31.i = getelementptr inbounds [9 x [20 x float]]* @default_amino_prior.defm, i64 0, i64 %indvars.iv146.i, i64 %indvars.iv.i, !dbg !305
  %13 = load float* %arrayidx31.i, align 4, !dbg !305, !tbaa !271
  %arrayidx35.i = getelementptr inbounds %struct.p7prior_s* %1, i64 0, i32 6, i64 %indvars.iv146.i, i64 %indvars.iv.i, !dbg !305
  store float %13, float* %arrayidx35.i, align 4, !dbg !305, !tbaa !271
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !303
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !303
  %exitcond = icmp eq i32 %lftr.wideiv, 20, !dbg !303
  br i1 %exitcond, label %for.inc36.i, label %for.body27.i, !dbg !303

for.inc36.i:                                      ; preds = %for.body27.i
  %indvars.iv.next147.i = add i64 %indvars.iv146.i, 1, !dbg !298
  %14 = load i32* %11, align 4, !dbg !298, !tbaa !266
  %15 = trunc i64 %indvars.iv.next147.i to i32, !dbg !298
  %cmp.i = icmp slt i32 %15, %14, !dbg !298
  br i1 %cmp.i, label %for.body.i, label %default_amino_prior.exit, !dbg !298

default_amino_prior.exit:                         ; preds = %for.inc36.i
  %inum.i = getelementptr inbounds i8* %call.i.i, i64 23212, !dbg !306
  %16 = bitcast i8* %inum.i to i32*, !dbg !306
  store i32 1, i32* %16, align 4, !dbg !306, !tbaa !266
  %arrayidx39.i = getelementptr inbounds i8* %call.i.i, i64 23216, !dbg !307
  %17 = bitcast i8* %arrayidx39.i to float*, !dbg !307
  store float 1.000000e+00, float* %17, align 4, !dbg !307, !tbaa !271
  %arrayidx41.i = getelementptr inbounds i8* %call.i.i, i64 24016, !dbg !308
  %18 = bitcast i8* %arrayidx41.i to float*, !dbg !308
  store float 6.810000e+02, float* %18, align 4, !dbg !308, !tbaa !271
  %arrayidx44.i = getelementptr inbounds i8* %call.i.i, i64 24020, !dbg !309
  %19 = bitcast i8* %arrayidx44.i to float*, !dbg !309
  store float 1.200000e+02, float* %19, align 4, !dbg !309, !tbaa !271
  %arrayidx47.i = getelementptr inbounds i8* %call.i.i, i64 24024, !dbg !310
  %20 = bitcast i8* %arrayidx47.i to float*, !dbg !310
  store float 6.230000e+02, float* %20, align 4, !dbg !310, !tbaa !271
  %arrayidx50.i = getelementptr inbounds i8* %call.i.i, i64 24028, !dbg !311
  %21 = bitcast i8* %arrayidx50.i to float*, !dbg !311
  store float 6.510000e+02, float* %21, align 4, !dbg !311, !tbaa !271
  %arrayidx53.i = getelementptr inbounds i8* %call.i.i, i64 24032, !dbg !312
  %22 = bitcast i8* %arrayidx53.i to float*, !dbg !312
  store float 3.130000e+02, float* %22, align 4, !dbg !312, !tbaa !271
  %arrayidx56.i = getelementptr inbounds i8* %call.i.i, i64 24036, !dbg !313
  %23 = bitcast i8* %arrayidx56.i to float*, !dbg !313
  store float 9.020000e+02, float* %23, align 4, !dbg !313, !tbaa !271
  %arrayidx59.i = getelementptr inbounds i8* %call.i.i, i64 24040, !dbg !314
  %24 = bitcast i8* %arrayidx59.i to float*, !dbg !314
  store float 2.410000e+02, float* %24, align 4, !dbg !314, !tbaa !271
  %arrayidx62.i = getelementptr inbounds i8* %call.i.i, i64 24044, !dbg !315
  %25 = bitcast i8* %arrayidx62.i to float*, !dbg !315
  store float 3.710000e+02, float* %25, align 4, !dbg !315, !tbaa !271
  %arrayidx65.i = getelementptr inbounds i8* %call.i.i, i64 24048, !dbg !316
  %26 = bitcast i8* %arrayidx65.i to float*, !dbg !316
  store float 6.870000e+02, float* %26, align 4, !dbg !316, !tbaa !271
  %arrayidx68.i = getelementptr inbounds i8* %call.i.i, i64 24052, !dbg !317
  %27 = bitcast i8* %arrayidx68.i to float*, !dbg !317
  store float 6.760000e+02, float* %27, align 4, !dbg !317, !tbaa !271
  %arrayidx71.i = getelementptr inbounds i8* %call.i.i, i64 24056, !dbg !318
  %28 = bitcast i8* %arrayidx71.i to float*, !dbg !318
  store float 1.430000e+02, float* %28, align 4, !dbg !318, !tbaa !271
  %arrayidx74.i = getelementptr inbounds i8* %call.i.i, i64 24060, !dbg !319
  %29 = bitcast i8* %arrayidx74.i to float*, !dbg !319
  store float 5.480000e+02, float* %29, align 4, !dbg !319, !tbaa !271
  %arrayidx77.i = getelementptr inbounds i8* %call.i.i, i64 24064, !dbg !320
  %30 = bitcast i8* %arrayidx77.i to float*, !dbg !320
  store float 6.470000e+02, float* %30, align 4, !dbg !320, !tbaa !271
  %arrayidx80.i = getelementptr inbounds i8* %call.i.i, i64 24068, !dbg !321
  %31 = bitcast i8* %arrayidx80.i to float*, !dbg !321
  store float 4.150000e+02, float* %31, align 4, !dbg !321, !tbaa !271
  %arrayidx83.i = getelementptr inbounds i8* %call.i.i, i64 24072, !dbg !322
  %32 = bitcast i8* %arrayidx83.i to float*, !dbg !322
  store float 5.510000e+02, float* %32, align 4, !dbg !322, !tbaa !271
  %arrayidx86.i = getelementptr inbounds i8* %call.i.i, i64 24076, !dbg !323
  %33 = bitcast i8* %arrayidx86.i to float*, !dbg !323
  store float 9.260000e+02, float* %33, align 4, !dbg !323, !tbaa !271
  %arrayidx89.i = getelementptr inbounds i8* %call.i.i, i64 24080, !dbg !324
  %34 = bitcast i8* %arrayidx89.i to float*, !dbg !324
  store float 6.230000e+02, float* %34, align 4, !dbg !324, !tbaa !271
  %arrayidx92.i = getelementptr inbounds i8* %call.i.i, i64 24084, !dbg !325
  %35 = bitcast i8* %arrayidx92.i to float*, !dbg !325
  store float 5.050000e+02, float* %35, align 4, !dbg !325, !tbaa !271
  %arrayidx95.i = getelementptr inbounds i8* %call.i.i, i64 24088, !dbg !326
  %36 = bitcast i8* %arrayidx95.i to float*, !dbg !326
  store float 1.020000e+02, float* %36, align 4, !dbg !326, !tbaa !271
  %arrayidx98.i = getelementptr inbounds i8* %call.i.i, i64 24092, !dbg !327
  %37 = bitcast i8* %arrayidx98.i to float*, !dbg !327
  store float 2.690000e+02, float* %37, align 4, !dbg !327, !tbaa !271
  br label %return, !dbg !283

sw.bb1:                                           ; preds = %entry
  %call.i.i4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #6, !dbg !328
  %38 = bitcast i8* %call.i.i4 to %struct.p7prior_s*, !dbg !328
  tail call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %38}, i64 0, metadata !331) #5, !dbg !329
  %strategy.i5 = bitcast i8* %call.i.i4 to i32*, !dbg !332
  store i32 0, i32* %strategy.i5, align 4, !dbg !332, !tbaa !266
  %tnum.i6 = getelementptr inbounds i8* %call.i.i4, i64 4, !dbg !333
  %39 = bitcast i8* %tnum.i6 to i32*, !dbg !333
  store i32 1, i32* %39, align 4, !dbg !333, !tbaa !266
  %arrayidx.i7 = getelementptr inbounds i8* %call.i.i4, i64 8, !dbg !334
  %40 = bitcast i8* %arrayidx.i7 to float*, !dbg !334
  store float 1.000000e+00, float* %40, align 4, !dbg !334, !tbaa !271
  %arrayidx2.i8 = getelementptr inbounds i8* %call.i.i4, i64 808, !dbg !335
  %41 = bitcast i8* %arrayidx2.i8 to float*, !dbg !335
  store float 0x3FE967A100000000, float* %41, align 4, !dbg !335, !tbaa !271
  %arrayidx5.i9 = getelementptr inbounds i8* %call.i.i4, i64 812, !dbg !336
  %42 = bitcast i8* %arrayidx5.i9 to float*, !dbg !336
  store float 0x3F9C779A60000000, float* %42, align 4, !dbg !336, !tbaa !271
  %arrayidx8.i10 = getelementptr inbounds i8* %call.i.i4, i64 816, !dbg !337
  %43 = bitcast i8* %arrayidx8.i10 to float*, !dbg !337
  store float 0x3F8BA5E360000000, float* %43, align 4, !dbg !337, !tbaa !271
  %arrayidx11.i11 = getelementptr inbounds i8* %call.i.i4, i64 820, !dbg !338
  %44 = bitcast i8* %arrayidx11.i11 to float*, !dbg !338
  store float 0x3FC3DA5120000000, float* %44, align 4, !dbg !338, !tbaa !271
  %arrayidx14.i12 = getelementptr inbounds i8* %call.i.i4, i64 824, !dbg !339
  %45 = bitcast i8* %arrayidx14.i12 to float*, !dbg !339
  store float 0x3FC1096BC0000000, float* %45, align 4, !dbg !339, !tbaa !271
  %arrayidx17.i13 = getelementptr inbounds i8* %call.i.i4, i64 828, !dbg !340
  %46 = bitcast i8* %arrayidx17.i13 to float*, !dbg !340
  store float 0x3FECCE7040000000, float* %46, align 4, !dbg !340, !tbaa !271
  %arrayidx20.i14 = getelementptr inbounds i8* %call.i.i4, i64 832, !dbg !341
  %47 = bitcast i8* %arrayidx20.i14 to float*, !dbg !341
  store float 0x3FE20418A0000000, float* %47, align 4, !dbg !341, !tbaa !271
  %mnum.i15 = getelementptr inbounds i8* %call.i.i4, i64 6408, !dbg !342
  %48 = bitcast i8* %mnum.i15 to i32*, !dbg !342
  store i32 1, i32* %48, align 4, !dbg !342, !tbaa !266
  %arrayidx21.i = getelementptr inbounds i8* %call.i.i4, i64 6412, !dbg !343
  %49 = bitcast i8* %arrayidx21.i to float*, !dbg !343
  store float 1.000000e+00, float* %49, align 4, !dbg !343, !tbaa !271
  %arraydecay.i = getelementptr inbounds i8* %call.i.i4, i64 7212, !dbg !344
  %50 = bitcast i8* %arraydecay.i to float*, !dbg !344
  %51 = load i32* @Alphabet_size, align 4, !dbg !344, !tbaa !266
  tail call void @FSet(float* %50, i32 %51, float 1.000000e+00) #6, !dbg !344
  %inum.i16 = getelementptr inbounds i8* %call.i.i4, i64 23212, !dbg !345
  %52 = bitcast i8* %inum.i16 to i32*, !dbg !345
  store i32 1, i32* %52, align 4, !dbg !345, !tbaa !266
  %arrayidx23.i = getelementptr inbounds i8* %call.i.i4, i64 23216, !dbg !346
  %53 = bitcast i8* %arrayidx23.i to float*, !dbg !346
  store float 1.000000e+00, float* %53, align 4, !dbg !346, !tbaa !271
  %arraydecay25.i = getelementptr inbounds i8* %call.i.i4, i64 24016, !dbg !347
  %54 = bitcast i8* %arraydecay25.i to float*, !dbg !347
  %55 = load i32* @Alphabet_size, align 4, !dbg !347, !tbaa !266
  tail call void @FSet(float* %54, i32 %55, float 1.000000e+00) #6, !dbg !347
  br label %return, !dbg !330

sw.bb3:                                           ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !348
  br label %return, !dbg !349

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %default_amino_prior.exit
  %retval.0 = phi %struct.p7prior_s* [ %38, %sw.bb1 ], [ %1, %default_amino_prior.exit ], [ null, %sw.bb3 ], [ null, %entry ]
  ret %struct.p7prior_s* %retval.0, !dbg !350
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7ReadPrior(i8* %prifile) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %prifile}, i64 0, metadata !48), !dbg !351
  %call = tail call %struct._IO_FILE* @fopen(i8* %prifile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !352
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !49), !dbg !352
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i8* %prifile) #6, !dbg !353
  br label %if.end, !dbg !353

if.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #6, !dbg !354
  %0 = bitcast i8* %call.i to %struct.p7prior_s*, !dbg !354
  tail call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %0}, i64 0, metadata !104), !dbg !355
  %call2 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #6, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !105), !dbg !356
  tail call void @s2upper(i8* %call2) #6, !dbg !357
  %call3 = tail call i32 @strcmp(i8* %call2, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !358
  %cmp4 = icmp eq i32 %call3, 0, !dbg !358
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !358

if.then5:                                         ; preds = %if.end
  %strategy = bitcast i8* %call.i to i32*, !dbg !358
  store i32 0, i32* %strategy, align 4, !dbg !358, !tbaa !266
  br label %if.end6, !dbg !358

if.else:                                          ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %call2, i8* %prifile) #6, !dbg !359
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %call7 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !105), !dbg !360
  tail call void @s2upper(i8* %call7) #6, !dbg !361
  %call8 = tail call i32 @strcmp(i8* %call7, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !362
  %cmp9 = icmp eq i32 %call8, 0, !dbg !362
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !362

if.then10:                                        ; preds = %if.end6
  %1 = load i32* @Alphabet_type, align 4, !dbg !363, !tbaa !266
  %cmp11 = icmp eq i32 %1, 3, !dbg !363
  br i1 %cmp11, label %if.end23, label %if.then12, !dbg !363

if.then12:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i8* %prifile) #6, !dbg !365
  br label %if.end23, !dbg !365

if.else14:                                        ; preds = %if.end6
  %call15 = tail call i32 @strcmp(i8* %call7, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !366
  %cmp16 = icmp eq i32 %call15, 0, !dbg !366
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !366

if.then17:                                        ; preds = %if.else14
  %2 = load i32* @Alphabet_type, align 4, !dbg !367, !tbaa !266
  %cmp18 = icmp eq i32 %2, 2, !dbg !367
  br i1 %cmp18, label %if.end23, label %if.then19, !dbg !367

if.then19:                                        ; preds = %if.then17
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str9, i64 0, i64 0), i8* %prifile) #6, !dbg !369
  br label %if.end23, !dbg !369

if.else21:                                        ; preds = %if.else14
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0), i8* %call7, i8* %prifile) #6, !dbg !370
  br label %if.end23

if.end23:                                         ; preds = %if.then10, %if.then17, %if.else21, %if.then19, %if.then12
  %call24 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #6, !dbg !371
  %call25 = tail call i32 @atoi(i8* %call24) #7, !dbg !371
  %tnum = getelementptr inbounds i8* %call.i, i64 4, !dbg !371
  %3 = bitcast i8* %tnum to i32*, !dbg !371
  store i32 %call25, i32* %3, align 4, !dbg !371, !tbaa !266
  %cmp27 = icmp slt i32 %call25, 0, !dbg !372
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !372

if.then28:                                        ; preds = %if.end23
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i32 %call25) #6, !dbg !373
  %.pr = load i32* %3, align 4, !dbg !374, !tbaa !266
  br label %if.end30, !dbg !373

if.end30:                                         ; preds = %if.then28, %if.end23
  %4 = phi i32 [ %.pr, %if.then28 ], [ %call25, %if.end23 ], !dbg !374
  %cmp32 = icmp sgt i32 %4, 200, !dbg !374
  br i1 %cmp32, label %if.then33, label %for.cond.preheader, !dbg !374

if.then33:                                        ; preds = %if.end30
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str12, i64 0, i64 0), i32 200) #6, !dbg !375
  %.pre = load i32* %3, align 4, !dbg !376, !tbaa !266
  br label %for.cond.preheader, !dbg !375

for.cond.preheader:                               ; preds = %if.then33, %if.end30
  %5 = phi i32 [ %.pre, %if.then33 ], [ %4, %if.end30 ]
  %cmp36209 = icmp sgt i32 %5, 0, !dbg !376
  br i1 %cmp36209, label %for.body, label %for.end52, !dbg !376

for.body:                                         ; preds = %for.cond.preheader, %for.inc50
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.inc50 ], [ 0, %for.cond.preheader ]
  %call37 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !378
  %call38 = tail call double @atof(i8* %call37) #7, !dbg !378
  %conv = fptrunc double %call38 to float, !dbg !378
  %arrayidx = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 2, i64 %indvars.iv219, !dbg !378
  store float %conv, float* %arrayidx, align 4, !dbg !378, !tbaa !271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !380
  br label %for.body42, !dbg !380

for.body42:                                       ; preds = %for.body42, %for.body
  %indvars.iv217 = phi i64 [ 0, %for.body ], [ %indvars.iv.next218, %for.body42 ]
  %call43 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !382
  %call44 = tail call double @atof(i8* %call43) #7, !dbg !382
  %conv45 = fptrunc double %call44 to float, !dbg !382
  %arrayidx49 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 3, i64 %indvars.iv219, i64 %indvars.iv217, !dbg !382
  store float %conv45, float* %arrayidx49, align 4, !dbg !382, !tbaa !271
  %indvars.iv.next218 = add i64 %indvars.iv217, 1, !dbg !380
  %lftr.wideiv = trunc i64 %indvars.iv.next218 to i32, !dbg !380
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !380
  br i1 %exitcond, label %for.inc50, label %for.body42, !dbg !380

for.inc50:                                        ; preds = %for.body42
  %indvars.iv.next220 = add i64 %indvars.iv219, 1, !dbg !376
  %6 = load i32* %3, align 4, !dbg !376, !tbaa !266
  %7 = trunc i64 %indvars.iv.next220 to i32, !dbg !376
  %cmp36 = icmp slt i32 %7, %6, !dbg !376
  br i1 %cmp36, label %for.body, label %for.end52, !dbg !376

for.end52:                                        ; preds = %for.inc50, %for.cond.preheader
  %call53 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #6, !dbg !383
  %call54 = tail call i32 @atoi(i8* %call53) #7, !dbg !383
  %mnum = getelementptr inbounds i8* %call.i, i64 6408, !dbg !383
  %8 = bitcast i8* %mnum to i32*, !dbg !383
  store i32 %call54, i32* %8, align 4, !dbg !383, !tbaa !266
  %cmp56 = icmp slt i32 %call54, 0, !dbg !384
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !384

if.then58:                                        ; preds = %for.end52
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i32 %call54) #6, !dbg !385
  %.pr198 = load i32* %8, align 4, !dbg !386, !tbaa !266
  br label %if.end60, !dbg !385

if.end60:                                         ; preds = %if.then58, %for.end52
  %9 = phi i32 [ %.pr198, %if.then58 ], [ %call54, %for.end52 ], !dbg !386
  %cmp62 = icmp sgt i32 %9, 200, !dbg !386
  br i1 %cmp62, label %if.then64, label %for.cond67.preheader, !dbg !386

if.then64:                                        ; preds = %if.end60
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str14, i64 0, i64 0), i32 %9, i32 200) #6, !dbg !387
  %.pre221 = load i32* %8, align 4, !dbg !388, !tbaa !266
  br label %for.cond67.preheader, !dbg !387

for.cond67.preheader:                             ; preds = %if.then64, %if.end60
  %10 = phi i32 [ %.pre221, %if.then64 ], [ %9, %if.end60 ]
  %cmp69206 = icmp sgt i32 %10, 0, !dbg !388
  br i1 %cmp69206, label %for.body71, label %for.end93, !dbg !388

for.body71:                                       ; preds = %for.cond67.preheader, %for.inc91
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %for.inc91 ], [ 0, %for.cond67.preheader ]
  %call72 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !390
  %call73 = tail call double @atof(i8* %call72) #7, !dbg !390
  %conv74 = fptrunc double %call73 to float, !dbg !390
  %arrayidx76 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 5, i64 %indvars.iv215, !dbg !390
  store float %conv74, float* %arrayidx76, align 4, !dbg !390, !tbaa !271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !392
  %11 = load i32* @Alphabet_size, align 4, !dbg !392, !tbaa !266
  %cmp78204 = icmp sgt i32 %11, 0, !dbg !392
  br i1 %cmp78204, label %for.body80, label %for.inc91, !dbg !392

for.body80:                                       ; preds = %for.body71, %for.body80
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %for.body80 ], [ 0, %for.body71 ]
  %call81 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !394
  %call82 = tail call double @atof(i8* %call81) #7, !dbg !394
  %conv83 = fptrunc double %call82 to float, !dbg !394
  %arrayidx87 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 6, i64 %indvars.iv215, i64 %indvars.iv213, !dbg !394
  store float %conv83, float* %arrayidx87, align 4, !dbg !394, !tbaa !271
  %indvars.iv.next214 = add i64 %indvars.iv213, 1, !dbg !392
  %12 = load i32* @Alphabet_size, align 4, !dbg !392, !tbaa !266
  %13 = trunc i64 %indvars.iv.next214 to i32, !dbg !392
  %cmp78 = icmp slt i32 %13, %12, !dbg !392
  br i1 %cmp78, label %for.body80, label %for.inc91, !dbg !392

for.inc91:                                        ; preds = %for.body80, %for.body71
  %indvars.iv.next216 = add i64 %indvars.iv215, 1, !dbg !388
  %14 = load i32* %8, align 4, !dbg !388, !tbaa !266
  %15 = trunc i64 %indvars.iv.next216 to i32, !dbg !388
  %cmp69 = icmp slt i32 %15, %14, !dbg !388
  br i1 %cmp69, label %for.body71, label %for.end93, !dbg !388

for.end93:                                        ; preds = %for.inc91, %for.cond67.preheader
  %call94 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #6, !dbg !395
  %call95 = tail call i32 @atoi(i8* %call94) #7, !dbg !395
  %inum = getelementptr inbounds i8* %call.i, i64 23212, !dbg !395
  %16 = bitcast i8* %inum to i32*, !dbg !395
  store i32 %call95, i32* %16, align 4, !dbg !395, !tbaa !266
  %cmp97 = icmp slt i32 %call95, 0, !dbg !396
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !396

if.then99:                                        ; preds = %for.end93
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str15, i64 0, i64 0), i32 %call95) #6, !dbg !397
  %.pr199 = load i32* %16, align 4, !dbg !398, !tbaa !266
  br label %if.end101, !dbg !397

if.end101:                                        ; preds = %if.then99, %for.end93
  %17 = phi i32 [ %.pr199, %if.then99 ], [ %call95, %for.end93 ], !dbg !398
  %cmp103 = icmp sgt i32 %17, 200, !dbg !398
  br i1 %cmp103, label %if.then105, label %for.cond108.preheader, !dbg !398

if.then105:                                       ; preds = %if.end101
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0), i32 %17, i32 200) #6, !dbg !399
  %.pre222 = load i32* %16, align 4, !dbg !400, !tbaa !266
  br label %for.cond108.preheader, !dbg !399

for.cond108.preheader:                            ; preds = %if.then105, %if.end101
  %18 = phi i32 [ %.pre222, %if.then105 ], [ %17, %if.end101 ]
  %cmp110202 = icmp sgt i32 %18, 0, !dbg !400
  br i1 %cmp110202, label %for.body112, label %for.end134, !dbg !400

for.body112:                                      ; preds = %for.cond108.preheader, %for.inc132
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.inc132 ], [ 0, %for.cond108.preheader ]
  %call113 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !402
  %call114 = tail call double @atof(i8* %call113) #7, !dbg !402
  %conv115 = fptrunc double %call114 to float, !dbg !402
  %arrayidx117 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 8, i64 %indvars.iv211, !dbg !402
  store float %conv115, float* %arrayidx117, align 4, !dbg !402, !tbaa !271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !404
  %19 = load i32* @Alphabet_size, align 4, !dbg !404, !tbaa !266
  %cmp119200 = icmp sgt i32 %19, 0, !dbg !404
  br i1 %cmp119200, label %for.body121, label %for.inc132, !dbg !404

for.body121:                                      ; preds = %for.body112, %for.body121
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body121 ], [ 0, %for.body112 ]
  %call122 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !406
  %call123 = tail call double @atof(i8* %call122) #7, !dbg !406
  %conv124 = fptrunc double %call123 to float, !dbg !406
  %arrayidx128 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 9, i64 %indvars.iv211, i64 %indvars.iv, !dbg !406
  store float %conv124, float* %arrayidx128, align 4, !dbg !406, !tbaa !271
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !404
  %20 = load i32* @Alphabet_size, align 4, !dbg !404, !tbaa !266
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !404
  %cmp119 = icmp slt i32 %21, %20, !dbg !404
  br i1 %cmp119, label %for.body121, label %for.inc132, !dbg !404

for.inc132:                                       ; preds = %for.body121, %for.body112
  %indvars.iv.next212 = add i64 %indvars.iv211, 1, !dbg !400
  %22 = load i32* %16, align 4, !dbg !400, !tbaa !266
  %23 = trunc i64 %indvars.iv.next212 to i32, !dbg !400
  %cmp110 = icmp slt i32 %23, %22, !dbg !400
  br i1 %cmp110, label %for.body112, label %for.end134, !dbg !400

for.end134:                                       ; preds = %for.inc132, %for.cond108.preheader
  %call135 = tail call i32 @fclose(%struct._IO_FILE* %call) #6, !dbg !407
  ret %struct.p7prior_s* %0, !dbg !408
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @Getword(%struct._IO_FILE*, i32) #1

; Function Attrs: optsize
declare void @s2upper(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @PAMPrior(i8* %pamfile, %struct.p7prior_s* %pri, float %wt) #0 {
entry:
  %pam = alloca i32**, align 8
  %scale = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %pamfile}, i64 0, metadata !112), !dbg !409
  call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %pri}, i64 0, metadata !113), !dbg !409
  call void @llvm.dbg.value(metadata !{float %wt}, i64 0, metadata !114), !dbg !409
  call void @llvm.dbg.declare(metadata !{i32*** %pam}, metadata !117), !dbg !410
  call void @llvm.dbg.declare(metadata !{float* %scale}, metadata !120), !dbg !411
  %0 = load i32* @Alphabet_type, align 4, !dbg !412, !tbaa !266
  %cmp = icmp eq i32 %0, 3, !dbg !412
  br i1 %cmp, label %if.end, label %if.then, !dbg !412

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str17, i64 0, i64 0)) #6, !dbg !413
  br label %if.end, !dbg !413

if.end:                                           ; preds = %entry, %if.then
  %strategy = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0, !dbg !414
  %1 = load i32* %strategy, align 4, !dbg !414, !tbaa !266
  %cmp1 = icmp eq i32 %1, 0, !dbg !414
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !414

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str18, i64 0, i64 0)) #6, !dbg !415
  br label %if.end3, !dbg !415

if.end3:                                          ; preds = %if.end, %if.then2
  %inum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7, !dbg !416
  %2 = load i32* %inum, align 4, !dbg !416, !tbaa !266
  %cmp4 = icmp eq i32 %2, 1, !dbg !416
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !416

if.then5:                                         ; preds = %if.end3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([67 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !417
  br label %if.end6, !dbg !417

if.end6:                                          ; preds = %if.end3, %if.then5
  %call = call i8* @FileConcat(i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* %pamfile) #6, !dbg !418
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !116), !dbg !418
  %call7 = call %struct._IO_FILE* @fopen(i8* %pamfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !419
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call7}, i64 0, metadata !115), !dbg !419
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null, !dbg !419
  br i1 %cmp8, label %land.lhs.true, label %if.end15, !dbg !419

land.lhs.true:                                    ; preds = %if.end6
  %call9 = call %struct._IO_FILE* @EnvFileOpen(i8* %pamfile, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #6, !dbg !420
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call9}, i64 0, metadata !115), !dbg !420
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null, !dbg !420
  br i1 %cmp10, label %land.lhs.true11, label %if.end15, !dbg !420

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = call %struct._IO_FILE* @EnvFileOpen(i8* %call, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #6, !dbg !421
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !115), !dbg !421
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !421
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !421

if.then14:                                        ; preds = %land.lhs.true11
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str22, i64 0, i64 0), i8* %pamfile) #6, !dbg !422
  br label %if.end15, !dbg !422

if.end15:                                         ; preds = %if.then14, %land.lhs.true11, %land.lhs.true, %if.end6
  %fp.0 = phi %struct._IO_FILE* [ null, %if.then14 ], [ %call12, %land.lhs.true11 ], [ %call9, %land.lhs.true ], [ %call7, %if.end6 ]
  %call16 = call i32 @ParsePAMFile(%struct._IO_FILE* %fp.0, i32*** %pam, float* %scale) #6, !dbg !423
  %tobool = icmp eq i32 %call16, 0, !dbg !423
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !423

if.then17:                                        ; preds = %if.end15
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str23, i64 0, i64 0), i8* %pamfile) #6, !dbg !424
  br label %if.end18, !dbg !424

if.end18:                                         ; preds = %if.end15, %if.then17
  %call19 = call i32 @fclose(%struct._IO_FILE* %fp.0) #6, !dbg !425
  call void @free(i8* %call) #6, !dbg !426
  store i32 1, i32* %strategy, align 4, !dbg !427, !tbaa !266
  %mnum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !428
  store i32 20, i32* %mnum, align 4, !dbg !428, !tbaa !266
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !121), !dbg !429
  %3 = load i32* @Alphabet_size, align 4, !dbg !429, !tbaa !266
  %cmp2194 = icmp sgt i32 %3, 0, !dbg !429
  br i1 %cmp2194, label %for.cond22.preheader, label %for.end65, !dbg !429

for.cond22.preheader:                             ; preds = %if.end18, %for.inc45
  %4 = phi i32 [ %14, %for.inc45 ], [ %3, %if.end18 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc45 ], [ 0, %if.end18 ]
  %cmp2392 = icmp sgt i32 %4, 0, !dbg !431
  br i1 %cmp2392, label %for.body24.lr.ph, label %for.inc45, !dbg !431

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %arrayidx = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv98, !dbg !433
  br label %for.body24, !dbg !431

for.cond48.preheader:                             ; preds = %for.inc45
  %cmp4990 = icmp sgt i32 %14, 0, !dbg !435
  br i1 %cmp4990, label %for.body51, label %for.end65, !dbg !435

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %indvars.iv96 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next97, %for.body24 ]
  %5 = load i8* %arrayidx, align 1, !dbg !433, !tbaa !267
  %conv = sext i8 %5 to i64, !dbg !433
  %sub = add i64 %conv, -65, !dbg !433
  %arrayidx26 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv96, !dbg !437
  %6 = load i8* %arrayidx26, align 1, !dbg !437, !tbaa !267
  %conv27 = sext i8 %6 to i64, !dbg !437
  %sub28 = add i64 %conv27, -65, !dbg !437
  %arrayidx30 = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv96, !dbg !438
  %7 = load float* %arrayidx30, align 4, !dbg !438, !tbaa !271
  %conv31 = fpext float %7 to double, !dbg !438
  call void @llvm.dbg.value(metadata !{i32*** %pam}, i64 0, metadata !117), !dbg !438
  %8 = load i32*** %pam, align 8, !dbg !438, !tbaa !439
  %arrayidx34 = getelementptr inbounds i32** %8, i64 %sub, !dbg !438
  %9 = load i32** %arrayidx34, align 8, !dbg !438, !tbaa !439
  %arrayidx35 = getelementptr inbounds i32* %9, i64 %sub28, !dbg !438
  %10 = load i32* %arrayidx35, align 4, !dbg !438, !tbaa !266
  %conv36 = sitofp i32 %10 to float, !dbg !438
  call void @llvm.dbg.value(metadata !{float* %scale}, i64 0, metadata !120), !dbg !438
  %11 = load float* %scale, align 4, !dbg !438, !tbaa !271
  %mul = fmul float %conv36, %11, !dbg !438
  %conv37 = fpext float %mul to double, !dbg !438
  %call38 = call double @exp(double %conv37) #6, !dbg !438
  %mul39 = fmul double %conv31, %call38, !dbg !438
  %conv40 = fptrunc double %mul39 to float, !dbg !438
  %arrayidx44 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv98, i64 %indvars.iv96, !dbg !438
  store float %conv40, float* %arrayidx44, align 4, !dbg !438, !tbaa !271
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !431
  %12 = load i32* @Alphabet_size, align 4, !dbg !431, !tbaa !266
  %13 = trunc i64 %indvars.iv.next97 to i32, !dbg !431
  %cmp23 = icmp slt i32 %13, %12, !dbg !431
  br i1 %cmp23, label %for.body24, label %for.inc45, !dbg !431

for.inc45:                                        ; preds = %for.body24, %for.cond22.preheader
  %14 = phi i32 [ %4, %for.cond22.preheader ], [ %12, %for.body24 ], !dbg !429
  %indvars.iv.next99 = add i64 %indvars.iv98, 1, !dbg !429
  %15 = trunc i64 %indvars.iv.next99 to i32, !dbg !429
  %cmp21 = icmp slt i32 %15, %14, !dbg !429
  br i1 %cmp21, label %for.cond22.preheader, label %for.cond48.preheader, !dbg !429

for.body51:                                       ; preds = %for.cond48.preheader, %for.body51
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body51 ], [ 0, %for.cond48.preheader ]
  %16 = phi i32 [ %18, %for.body51 ], [ %14, %for.cond48.preheader ]
  %conv52 = sitofp i32 %16 to double, !dbg !440
  %div = fdiv double 1.000000e+00, %conv52, !dbg !440
  %conv53 = fptrunc double %div to float, !dbg !440
  %arrayidx55 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 %indvars.iv, !dbg !440
  store float %conv53, float* %arrayidx55, align 4, !dbg !440, !tbaa !271
  %arraydecay = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv, i64 0, !dbg !442
  call void @FNorm(float* %arraydecay, i32 %16) #6, !dbg !442
  %17 = load i32* @Alphabet_size, align 4, !dbg !443, !tbaa !266
  call void @FScale(float* %arraydecay, i32 %17, float %wt) #6, !dbg !443
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !435
  %18 = load i32* @Alphabet_size, align 4, !dbg !435, !tbaa !266
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !435
  %cmp49 = icmp slt i32 %19, %18, !dbg !435
  br i1 %cmp49, label %for.body51, label %for.end65, !dbg !435

for.end65:                                        ; preds = %if.end18, %for.body51, %for.cond48.preheader
  call void @llvm.dbg.value(metadata !{i32*** %pam}, i64 0, metadata !117), !dbg !444
  %20 = load i32*** %pam, align 8, !dbg !444, !tbaa !439
  %21 = bitcast i32** %20 to i8**, !dbg !444
  call void @Free2DArray(i8** %21, i32 27) #6, !dbg !444
  ret void, !dbg !445
}

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

; Function Attrs: optsize
declare i32 @ParsePAMFile(%struct._IO_FILE*, i32***, float*) #1

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7DefaultNullModel(float* nocapture %null, float* nocapture %ret_p1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !130), !dbg !446
  tail call void @llvm.dbg.value(metadata !{float* %ret_p1}, i64 0, metadata !131), !dbg !446
  %0 = load i32* @Alphabet_type, align 4, !dbg !447, !tbaa !266
  %cmp = icmp eq i32 %0, 3, !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !448
  %1 = load i32* @Alphabet_size, align 4, !dbg !448, !tbaa !266
  %cmp122 = icmp sgt i32 %1, 0, !dbg !448
  br i1 %cmp, label %for.cond.preheader, label %for.cond4.preheader, !dbg !447

for.cond4.preheader:                              ; preds = %entry
  br i1 %cmp122, label %for.body6, label %if.end, !dbg !451

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp122, label %for.body, label %if.end, !dbg !448

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv, !dbg !454
  %2 = load float* %arrayidx, align 4, !dbg !454, !tbaa !271
  %arrayidx3 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !454
  store float %2, float* %arrayidx3, align 4, !dbg !454, !tbaa !271
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !448
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !448
  %cmp1 = icmp slt i32 %3, %1, !dbg !448
  br i1 %cmp1, label %for.body, label %if.end, !dbg !448

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body6 ], [ 0, %for.cond4.preheader ]
  %conv = sitofp i32 %1 to float, !dbg !455
  %conv8 = fdiv float 1.000000e+00, %conv, !dbg !455
  %arrayidx10 = getelementptr inbounds float* %null, i64 %indvars.iv28, !dbg !455
  store float %conv8, float* %arrayidx10, align 4, !dbg !455, !tbaa !271
  %indvars.iv.next29 = add i64 %indvars.iv28, 1, !dbg !451
  %4 = trunc i64 %indvars.iv.next29 to i32, !dbg !451
  %cmp5 = icmp slt i32 %4, %1, !dbg !451
  br i1 %cmp5, label %for.body6, label %if.end, !dbg !451

if.end:                                           ; preds = %for.cond4.preheader, %for.body6, %for.cond.preheader, %for.body
  %storemerge = phi float [ 0x3FEFE8A940000000, %for.body ], [ 0x3FEFE8A940000000, %for.cond.preheader ], [ 0x3FEFF7D100000000, %for.body6 ], [ 0x3FEFF7D100000000, %for.cond4.preheader ]
  store float %storemerge, float* %ret_p1, align 4, !dbg !456, !tbaa !271
  ret void, !dbg !457
}

; Function Attrs: nounwind optsize uwtable
define void @P7ReadNullModel(i8* %rndfile, float* nocapture %null, float* nocapture %ret_p1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %rndfile}, i64 0, metadata !137), !dbg !458
  tail call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !138), !dbg !458
  tail call void @llvm.dbg.value(metadata !{float* %ret_p1}, i64 0, metadata !139), !dbg !458
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !143), !dbg !459
  %call = tail call %struct._IO_FILE* @fopen(i8* %rndfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !460
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !140), !dbg !460
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !460
  br i1 %cmp, label %if.then, label %if.end, !dbg !460

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i8* %rndfile) #6, !dbg !461
  br label %if.end, !dbg !461

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #6, !dbg !462
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !141), !dbg !462
  %cmp2 = icmp eq i8* %call1, null, !dbg !462
  br i1 %cmp2, label %FAILURE, label %if.end4, !dbg !462

if.end4:                                          ; preds = %if.end
  tail call void @s2upper(i8* %call1) #6, !dbg !463
  %call5 = tail call i32 @strcmp(i8* %call1, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !464
  %cmp6 = icmp eq i32 %call5, 0, !dbg !464
  br i1 %cmp6, label %if.end13, label %if.else, !dbg !464

if.else:                                          ; preds = %if.end4
  %call8 = tail call i32 @strcmp(i8* %call1, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !465
  %cmp9 = icmp eq i32 %call8, 0, !dbg !465
  br i1 %cmp9, label %if.end13, label %FAILURE, !dbg !465

if.end13:                                         ; preds = %if.else, %if.end4
  %type.0 = phi i32 [ 2, %if.end4 ], [ 3, %if.else ]
  %0 = load i32* @Alphabet_type, align 4, !dbg !466, !tbaa !266
  %cmp14 = icmp eq i32 %0, 0, !dbg !466
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !466

if.then15:                                        ; preds = %if.end13
  tail call void @SetAlphabet(i32 %type.0) #6, !dbg !467
  br label %for.cond.preheader, !dbg !467

if.else16:                                        ; preds = %if.end13
  %cmp17 = icmp eq i32 %0, %type.0, !dbg !468
  br i1 %cmp17, label %for.cond.preheader, label %if.then18, !dbg !468

if.then18:                                        ; preds = %if.else16
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([59 x i8]* @.str25, i64 0, i64 0), i8* %rndfile) #6, !dbg !469
  br label %for.cond.preheader, !dbg !469

for.cond.preheader:                               ; preds = %if.else16, %if.then18, %if.then15
  %1 = load i32* @Alphabet_size, align 4, !dbg !470, !tbaa !266
  %cmp2151 = icmp sgt i32 %1, 0, !dbg !470
  %call2252 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i8* %call22.lcssa}, i64 0, metadata !141), !dbg !472
  %cmp2353 = icmp eq i8* %call2252, null, !dbg !472
  br i1 %cmp2151, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %cmp2356 = phi i1 [ %cmp23, %if.end25 ], [ %cmp2353, %for.cond.preheader ]
  %call2255 = phi i8* [ %call22, %if.end25 ], [ %call2252, %for.cond.preheader ]
  br i1 %cmp2356, label %FAILURE, label %if.end25, !dbg !472

if.end25:                                         ; preds = %for.body
  %call26 = tail call double @atof(i8* %call2255) #7, !dbg !474
  %conv = fptrunc double %call26 to float, !dbg !474
  %arrayidx = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !474
  store float %conv, float* %arrayidx, align 4, !dbg !474, !tbaa !271
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !470
  %2 = load i32* @Alphabet_size, align 4, !dbg !470, !tbaa !266
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !470
  %cmp21 = icmp slt i32 %3, %2, !dbg !470
  %call22 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #6, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i8* %call22.lcssa}, i64 0, metadata !141), !dbg !472
  %cmp23 = icmp eq i8* %call22, null, !dbg !472
  br i1 %cmp21, label %for.body, label %for.end, !dbg !470

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %cmp23.lcssa = phi i1 [ %cmp2353, %for.cond.preheader ], [ %cmp23, %if.end25 ]
  %call22.lcssa = phi i8* [ %call2252, %for.cond.preheader ], [ %call22, %if.end25 ]
  br i1 %cmp23.lcssa, label %FAILURE, label %if.end31, !dbg !475

if.end31:                                         ; preds = %for.end
  %call32 = tail call double @atof(i8* %call22.lcssa) #7, !dbg !476
  %conv33 = fptrunc double %call32 to float, !dbg !476
  store float %conv33, float* %ret_p1, align 4, !dbg !476, !tbaa !271
  %call34 = tail call i32 @fclose(%struct._IO_FILE* %call) #6, !dbg !477
  br label %return, !dbg !478

FAILURE:                                          ; preds = %for.body, %for.end, %if.else, %if.end
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call) #6, !dbg !479
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %rndfile) #6, !dbg !480
  br label %return, !dbg !480

return:                                           ; preds = %FAILURE, %if.end31
  ret void, !dbg !480
}

; Function Attrs: optsize
declare void @SetAlphabet(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyHMM(%struct.plan7_s* %hmm, %struct.p7prior_s* %pri) #0 {
entry:
  %tq = alloca [200 x float], align 16
  %mq = alloca [200 x float], align 16
  %iq = alloca [200 x float], align 16
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !206), !dbg !481
  call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %pri}, i64 0, metadata !207), !dbg !481
  %0 = bitcast [200 x float]* %tq to i8*, !dbg !482
  call void @llvm.lifetime.start(i64 800, i8* %0) #5, !dbg !482
  call void @llvm.dbg.declare(metadata !{[200 x float]* %tq}, metadata !210), !dbg !482
  %1 = bitcast [200 x float]* %mq to i8*, !dbg !483
  call void @llvm.lifetime.start(i64 800, i8* %1) #5, !dbg !483
  call void @llvm.dbg.declare(metadata !{[200 x float]* %mq}, metadata !211), !dbg !483
  %2 = bitcast [200 x float]* %iq to i8*, !dbg !484
  call void @llvm.lifetime.start(i64 800, i8* %2) #5, !dbg !484
  call void @llvm.dbg.declare(metadata !{[200 x float]* %iq}, metadata !212), !dbg !484
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !485
  %3 = load float** %begin, align 8, !dbg !485, !tbaa !439
  %add.ptr = getelementptr inbounds float* %3, i64 2, !dbg !485
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !485
  %4 = load i32* %M, align 4, !dbg !485, !tbaa !266
  %sub = add nsw i32 %4, -1, !dbg !485
  call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00) #6, !dbg !485
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !486
  %5 = load float** %end, align 8, !dbg !486, !tbaa !439
  %add.ptr1 = getelementptr inbounds float* %5, i64 1, !dbg !486
  %6 = load i32* %M, align 4, !dbg !486, !tbaa !266
  %sub3 = add nsw i32 %6, -1, !dbg !486
  call void @FSet(float* %add.ptr1, i32 %sub3, float 0.000000e+00) #6, !dbg !486
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !487
  %7 = load float* %tbd1, align 4, !dbg !487, !tbaa !271
  %8 = load float** %begin, align 8, !dbg !487, !tbaa !439
  %arrayidx = getelementptr inbounds float* %8, i64 1, !dbg !487
  %9 = load float* %arrayidx, align 4, !dbg !487, !tbaa !271
  %add = fadd float %7, %9, !dbg !487
  %conv6 = fadd float %add, 2.000000e+00, !dbg !487
  call void @llvm.dbg.value(metadata !{float %conv6}, i64 0, metadata !209), !dbg !487
  %conv8 = fpext float %7 to double, !dbg !488
  %add9 = fadd double %conv8, 1.000000e+00, !dbg !488
  %conv10 = fpext float %conv6 to double, !dbg !488
  %div = fdiv double %add9, %conv10, !dbg !488
  %conv11 = fptrunc double %div to float, !dbg !488
  store float %conv11, float* %tbd1, align 4, !dbg !488, !tbaa !271
  %10 = load float* %arrayidx, align 4, !dbg !489, !tbaa !271
  %conv15 = fpext float %10 to double, !dbg !489
  %add16 = fadd double %conv15, 1.000000e+00, !dbg !489
  %div18 = fdiv double %add16, %conv10, !dbg !489
  %conv19 = fptrunc double %div18 to float, !dbg !489
  store float %conv19, float* %arrayidx, align 4, !dbg !489, !tbaa !271
  %11 = load i32* %M, align 4, !dbg !490, !tbaa !266
  %idxprom = sext i32 %11 to i64, !dbg !490
  %12 = load float** %end, align 8, !dbg !490, !tbaa !439
  %arrayidx24 = getelementptr inbounds float* %12, i64 %idxprom, !dbg !490
  store float 1.000000e+00, float* %arrayidx24, align 4, !dbg !490, !tbaa !271
  call void @llvm.dbg.value(metadata !491, i64 0, metadata !208), !dbg !492
  %cmp239 = icmp sgt i32 %11, 1, !dbg !492
  br i1 %cmp239, label %for.body.lr.ph, label %entry.for.end_crit_edge, !dbg !492

entry.for.end_crit_edge:                          ; preds = %entry
  %mpri122.pre = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12, !dbg !494
  br label %for.end, !dbg !492

for.body.lr.ph:                                   ; preds = %entry
  %tpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 11, !dbg !495
  %arraydecay46 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 0, !dbg !497
  %arraydecay48 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 2, i64 0, !dbg !497
  %tnum49 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 1, !dbg !497
  %mpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12, !dbg !498
  %arraydecay75 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !499
  %arraydecay77 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0, !dbg !499
  %mnum78 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !499
  %ipri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 13, !dbg !500
  %arraydecay104 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 0, !dbg !501
  %arraydecay106 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 8, i64 0, !dbg !501
  %inum107 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7, !dbg !501
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !502
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !503
  %arraydecay116 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0, !dbg !503
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !504
  %arraydecay121 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 9, i64 0, !dbg !504
  br label %for.body, !dbg !492

for.body:                                         ; preds = %for.body.lr.ph, %if.end108
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end108 ]
  %13 = load i32** %tpri, align 8, !dbg !495, !tbaa !439
  %cmp27 = icmp eq i32* %13, null, !dbg !495
  br i1 %cmp27, label %if.else, label %land.lhs.true, !dbg !495

land.lhs.true:                                    ; preds = %for.body
  %arrayidx31 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !495
  %14 = load i32* %arrayidx31, align 4, !dbg !495, !tbaa !266
  %cmp32 = icmp sgt i32 %14, -1, !dbg !495
  br i1 %cmp32, label %if.then, label %if.else, !dbg !495

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32* %tnum49, align 4, !dbg !505, !tbaa !266
  %cmp37 = icmp slt i32 %14, %15, !dbg !505
  br i1 %cmp37, label %if.end, label %if.then39, !dbg !505

if.then39:                                        ; preds = %if.then
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0)) #6, !dbg !505
  %.pre245 = load i32* %tnum49, align 4, !dbg !507, !tbaa !266
  br label %if.end, !dbg !505

if.end:                                           ; preds = %if.then, %if.then39
  %16 = phi i32 [ %15, %if.then ], [ %.pre245, %if.then39 ]
  call void @FSet(float* %arraydecay46, i32 %16, float 0.000000e+00) #6, !dbg !507
  %17 = load i32** %tpri, align 8, !dbg !508, !tbaa !439
  %arrayidx43 = getelementptr inbounds i32* %17, i64 %indvars.iv, !dbg !508
  %18 = load i32* %arrayidx43, align 4, !dbg !508, !tbaa !266
  %idxprom44 = sext i32 %18 to i64, !dbg !508
  %arrayidx45 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 %idxprom44, !dbg !508
  store float 1.000000e+00, float* %arrayidx45, align 4, !dbg !508, !tbaa !271
  br label %if.end50, !dbg !509

if.else:                                          ; preds = %for.body, %land.lhs.true
  %19 = load i32* %tnum49, align 4, !dbg !497, !tbaa !266
  call void @FCopy(float* %arraydecay46, float* %arraydecay48, i32 %19) #6, !dbg !497
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.end
  %20 = load i32** %mpri, align 8, !dbg !498, !tbaa !439
  %cmp51 = icmp eq i32* %20, null, !dbg !498
  br i1 %cmp51, label %if.else74, label %land.lhs.true53, !dbg !498

land.lhs.true53:                                  ; preds = %if.end50
  %arrayidx56 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !498
  %21 = load i32* %arrayidx56, align 4, !dbg !498, !tbaa !266
  %cmp57 = icmp sgt i32 %21, -1, !dbg !498
  br i1 %cmp57, label %if.then59, label %if.else74, !dbg !498

if.then59:                                        ; preds = %land.lhs.true53
  %22 = load i32* %mnum78, align 4, !dbg !510, !tbaa !266
  %cmp63 = icmp slt i32 %21, %22, !dbg !510
  br i1 %cmp63, label %if.end66, label %if.then65, !dbg !510

if.then65:                                        ; preds = %if.then59
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #6, !dbg !510
  %.pre244 = load i32* %mnum78, align 4, !dbg !512, !tbaa !266
  br label %if.end66, !dbg !510

if.end66:                                         ; preds = %if.then59, %if.then65
  %23 = phi i32 [ %22, %if.then59 ], [ %.pre244, %if.then65 ]
  call void @FSet(float* %arraydecay75, i32 %23, float 0.000000e+00) #6, !dbg !512
  %24 = load i32** %mpri, align 8, !dbg !513, !tbaa !439
  %arrayidx71 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !513
  %25 = load i32* %arrayidx71, align 4, !dbg !513, !tbaa !266
  %idxprom72 = sext i32 %25 to i64, !dbg !513
  %arrayidx73 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %idxprom72, !dbg !513
  store float 1.000000e+00, float* %arrayidx73, align 4, !dbg !513, !tbaa !271
  br label %if.end79, !dbg !514

if.else74:                                        ; preds = %if.end50, %land.lhs.true53
  %26 = load i32* %mnum78, align 4, !dbg !499, !tbaa !266
  call void @FCopy(float* %arraydecay75, float* %arraydecay77, i32 %26) #6, !dbg !499
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.end66
  %27 = load i32** %ipri, align 8, !dbg !500, !tbaa !439
  %cmp80 = icmp eq i32* %27, null, !dbg !500
  br i1 %cmp80, label %if.else103, label %land.lhs.true82, !dbg !500

land.lhs.true82:                                  ; preds = %if.end79
  %arrayidx85 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !500
  %28 = load i32* %arrayidx85, align 4, !dbg !500, !tbaa !266
  %cmp86 = icmp sgt i32 %28, -1, !dbg !500
  br i1 %cmp86, label %if.then88, label %if.else103, !dbg !500

if.then88:                                        ; preds = %land.lhs.true82
  %29 = load i32* %inum107, align 4, !dbg !515, !tbaa !266
  %cmp92 = icmp slt i32 %28, %29, !dbg !515
  br i1 %cmp92, label %if.end95, label %if.then94, !dbg !515

if.then94:                                        ; preds = %if.then88
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str29, i64 0, i64 0)) #6, !dbg !515
  %.pre243 = load i32* %inum107, align 4, !dbg !517, !tbaa !266
  br label %if.end95, !dbg !515

if.end95:                                         ; preds = %if.then88, %if.then94
  %30 = phi i32 [ %29, %if.then88 ], [ %.pre243, %if.then94 ]
  call void @FSet(float* %arraydecay104, i32 %30, float 0.000000e+00) #6, !dbg !517
  %31 = load i32** %ipri, align 8, !dbg !518, !tbaa !439
  %arrayidx100 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !518
  %32 = load i32* %arrayidx100, align 4, !dbg !518, !tbaa !266
  %idxprom101 = sext i32 %32 to i64, !dbg !518
  %arrayidx102 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 %idxprom101, !dbg !518
  store float 1.000000e+00, float* %arrayidx102, align 4, !dbg !518, !tbaa !271
  br label %if.end108, !dbg !519

if.else103:                                       ; preds = %if.end79, %land.lhs.true82
  %33 = load i32* %inum107, align 4, !dbg !501, !tbaa !266
  call void @FCopy(float* %arraydecay104, float* %arraydecay106, i32 %33) #6, !dbg !501
  br label %if.end108

if.end108:                                        ; preds = %if.else103, %if.end95
  %34 = load float*** %t, align 8, !dbg !502, !tbaa !439
  %arrayidx110 = getelementptr inbounds float** %34, i64 %indvars.iv, !dbg !502
  %35 = load float** %arrayidx110, align 8, !dbg !502, !tbaa !439
  call void @P7PriorifyTransitionVector(float* %35, %struct.p7prior_s* %pri, float* %arraydecay46) #8, !dbg !502
  %36 = load float*** %mat, align 8, !dbg !503, !tbaa !439
  %arrayidx113 = getelementptr inbounds float** %36, i64 %indvars.iv, !dbg !503
  %37 = load float** %arrayidx113, align 8, !dbg !503, !tbaa !439
  %38 = load i32* %mnum78, align 4, !dbg !503, !tbaa !266
  call void @P7PriorifyEmissionVector(float* %37, %struct.p7prior_s* %pri, i32 %38, float* %arraydecay75, [20 x float]* %arraydecay116, float* null) #8, !dbg !503
  %39 = load float*** %ins, align 8, !dbg !504, !tbaa !439
  %arrayidx118 = getelementptr inbounds float** %39, i64 %indvars.iv, !dbg !504
  %40 = load float** %arrayidx118, align 8, !dbg !504, !tbaa !439
  %41 = load i32* %inum107, align 4, !dbg !504, !tbaa !266
  call void @P7PriorifyEmissionVector(float* %40, %struct.p7prior_s* %pri, i32 %41, float* %arraydecay104, [20 x float]* %arraydecay121, float* null) #8, !dbg !504
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !492
  %42 = load i32* %M, align 4, !dbg !492, !tbaa !266
  %43 = trunc i64 %indvars.iv.next to i32, !dbg !492
  %cmp = icmp slt i32 %43, %42, !dbg !492
  br i1 %cmp, label %for.body, label %for.end, !dbg !492

for.end:                                          ; preds = %if.end108, %entry.for.end_crit_edge
  %mpri122.pre-phi = phi i32** [ %mpri122.pre, %entry.for.end_crit_edge ], [ %mpri, %if.end108 ], !dbg !494
  %.lcssa = phi i32 [ %11, %entry.for.end_crit_edge ], [ %42, %if.end108 ]
  %44 = load i32** %mpri122.pre-phi, align 8, !dbg !494, !tbaa !439
  %cmp123 = icmp eq i32* %44, null, !dbg !494
  br i1 %cmp123, label %if.else150, label %land.lhs.true125, !dbg !494

land.lhs.true125:                                 ; preds = %for.end
  %idxprom127 = sext i32 %.lcssa to i64, !dbg !494
  %arrayidx129 = getelementptr inbounds i32* %44, i64 %idxprom127, !dbg !494
  %45 = load i32* %arrayidx129, align 4, !dbg !494, !tbaa !266
  %cmp130 = icmp sgt i32 %45, -1, !dbg !494
  br i1 %cmp130, label %if.then132, label %if.else150, !dbg !494

if.then132:                                       ; preds = %land.lhs.true125
  %mnum137 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !520
  %46 = load i32* %mnum137, align 4, !dbg !520, !tbaa !266
  %cmp138 = icmp slt i32 %45, %46, !dbg !520
  br i1 %cmp138, label %if.end141, label %if.then140, !dbg !520

if.then140:                                       ; preds = %if.then132
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #6, !dbg !520
  %.pre242 = load i32* %mnum137, align 4, !dbg !522, !tbaa !266
  br label %if.end141, !dbg !520

if.end141:                                        ; preds = %if.then132, %if.then140
  %47 = phi i32 [ %46, %if.then132 ], [ %.pre242, %if.then140 ]
  %arraydecay142 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !522
  call void @FSet(float* %arraydecay142, i32 %47, float 0.000000e+00) #6, !dbg !522
  %48 = load i32* %M, align 4, !dbg !523, !tbaa !266
  %idxprom145 = sext i32 %48 to i64, !dbg !523
  %49 = load i32** %mpri122.pre-phi, align 8, !dbg !523, !tbaa !439
  %arrayidx147 = getelementptr inbounds i32* %49, i64 %idxprom145, !dbg !523
  %50 = load i32* %arrayidx147, align 4, !dbg !523, !tbaa !266
  %idxprom148 = sext i32 %50 to i64, !dbg !523
  %arrayidx149 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %idxprom148, !dbg !523
  store float 1.000000e+00, float* %arrayidx149, align 4, !dbg !523, !tbaa !271
  br label %if.end155, !dbg !524

if.else150:                                       ; preds = %for.end, %land.lhs.true125
  %arraydecay151 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !525
  %arraydecay153 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0, !dbg !525
  %mnum154 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !525
  %51 = load i32* %mnum154, align 4, !dbg !525, !tbaa !266
  call void @FCopy(float* %arraydecay151, float* %arraydecay153, i32 %51) #6, !dbg !525
  %.pre = load i32* %M, align 4, !dbg !526, !tbaa !266
  br label %if.end155

if.end155:                                        ; preds = %if.else150, %if.end141
  %52 = phi i32 [ %.pre, %if.else150 ], [ %48, %if.end141 ]
  %idxprom157 = sext i32 %52 to i64, !dbg !526
  %mat158 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !526
  %53 = load float*** %mat158, align 8, !dbg !526, !tbaa !439
  %arrayidx159 = getelementptr inbounds float** %53, i64 %idxprom157, !dbg !526
  %54 = load float** %arrayidx159, align 8, !dbg !526, !tbaa !439
  %mnum160 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4, !dbg !526
  %55 = load i32* %mnum160, align 4, !dbg !526, !tbaa !266
  %arraydecay161 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0, !dbg !526
  %arraydecay163 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0, !dbg !526
  call void @P7PriorifyEmissionVector(float* %54, %struct.p7prior_s* %pri, i32 %55, float* %arraydecay161, [20 x float]* %arraydecay163, float* null) #8, !dbg !526
  call void @Plan7Renormalize(%struct.plan7_s* %hmm) #6, !dbg !527
  call void @llvm.lifetime.end(i64 800, i8* %2) #5, !dbg !528
  call void @llvm.lifetime.end(i64 800, i8* %1) #5, !dbg !528
  call void @llvm.lifetime.end(i64 800, i8* %0) #5, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyTransitionVector(float* %t, %struct.p7prior_s* %prior, float* nocapture %tq) #0 {
entry:
  %mix = alloca [200 x float], align 16
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !234), !dbg !529
  call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %prior}, i64 0, metadata !235), !dbg !529
  call void @llvm.dbg.value(metadata !{float* %tq}, i64 0, metadata !236), !dbg !530
  %0 = bitcast [200 x float]* %mix to i8*, !dbg !531
  call void @llvm.lifetime.start(i64 800, i8* %0) #5, !dbg !531
  call void @llvm.dbg.declare(metadata !{[200 x float]* %mix}, metadata !239), !dbg !531
  %arrayidx = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0, !dbg !532
  store float 1.000000e+00, float* %arrayidx, align 16, !dbg !532, !tbaa !271
  %strategy = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 0, !dbg !533
  %1 = load i32* %strategy, align 4, !dbg !533, !tbaa !266
  %switch = icmp ult i32 %1, 2, !dbg !533
  br i1 %switch, label %land.lhs.true, label %if.end, !dbg !533

land.lhs.true:                                    ; preds = %entry
  %mnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 4, !dbg !533
  %2 = load i32* %mnum, align 4, !dbg !533, !tbaa !266
  %cmp3 = icmp sgt i32 %2, 1, !dbg !533
  br i1 %cmp3, label %for.cond.preheader, label %if.end, !dbg !533

for.cond.preheader:                               ; preds = %land.lhs.true
  %tnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1, !dbg !534
  %3 = load i32* %tnum, align 4, !dbg !534, !tbaa !266
  %cmp4203 = icmp sgt i32 %3, 0, !dbg !534
  br i1 %cmp4203, label %for.body.lr.ph, label %for.end, !dbg !534

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr = getelementptr inbounds float* %t, i64 3, !dbg !537
  %add.ptr29 = getelementptr inbounds float* %t, i64 5, !dbg !539
  br label %for.body, !dbg !534

for.body:                                         ; preds = %for.body.lr.ph, %cond.end
  %indvars.iv209 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next210, %cond.end ]
  %arrayidx5 = getelementptr inbounds float* %tq, i64 %indvars.iv209, !dbg !540
  %4 = load float* %arrayidx5, align 4, !dbg !540, !tbaa !271
  %cmp6 = fcmp ogt float %4, 0.000000e+00, !dbg !540
  br i1 %cmp6, label %cond.true, label %cond.end, !dbg !540

cond.true:                                        ; preds = %for.body
  %conv = fpext float %4 to double, !dbg !540
  %call = call double @log(double %conv) #6, !dbg !540
  %phitmp = fptrunc double %call to float, !dbg !540
  br label %cond.end, !dbg !540

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.990000e+02, %for.body ]
  %arrayidx13 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv209, !dbg !540
  store float %cond, float* %arrayidx13, align 4, !dbg !540, !tbaa !271
  %arraydecay = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 0, !dbg !541
  %call17 = call float @Logp_cvec(float* %t, i32 3, float* %arraydecay) #6, !dbg !541
  %5 = load float* %arrayidx13, align 4, !dbg !541, !tbaa !271
  %add = fadd float %call17, %5, !dbg !541
  store float %add, float* %arrayidx13, align 4, !dbg !541, !tbaa !271
  %add.ptr24 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 3, !dbg !537
  %call25 = call float @Logp_cvec(float* %add.ptr, i32 2, float* %add.ptr24) #6, !dbg !537
  %6 = load float* %arrayidx13, align 4, !dbg !537, !tbaa !271
  %add28 = fadd float %call25, %6, !dbg !537
  store float %add28, float* %arrayidx13, align 4, !dbg !537, !tbaa !271
  %add.ptr34 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 5, !dbg !539
  %call35 = call float @Logp_cvec(float* %add.ptr29, i32 2, float* %add.ptr34) #6, !dbg !539
  %7 = load float* %arrayidx13, align 4, !dbg !539, !tbaa !271
  %add38 = fadd float %call35, %7, !dbg !539
  store float %add38, float* %arrayidx13, align 4, !dbg !539, !tbaa !271
  %indvars.iv.next210 = add i64 %indvars.iv209, 1, !dbg !534
  %8 = load i32* %tnum, align 4, !dbg !534, !tbaa !266
  %9 = trunc i64 %indvars.iv.next210 to i32, !dbg !534
  %cmp4 = icmp slt i32 %9, %8, !dbg !534
  br i1 %cmp4, label %for.body, label %for.end, !dbg !534

for.end:                                          ; preds = %cond.end, %for.cond.preheader
  %.lcssa = phi i32 [ %3, %for.cond.preheader ], [ %8, %cond.end ]
  call void @LogNorm(float* %arrayidx, i32 %.lcssa) #6, !dbg !542
  br label %if.end, !dbg !543

if.end:                                           ; preds = %entry, %for.end, %land.lhs.true
  %call41 = call float @FSum(float* %t, i32 3) #6, !dbg !544
  call void @llvm.dbg.value(metadata !{float %call41}, i64 0, metadata !240), !dbg !544
  %arrayidx42 = getelementptr inbounds float* %t, i64 3, !dbg !545
  %10 = load float* %arrayidx42, align 4, !dbg !545, !tbaa !271
  %arrayidx43 = getelementptr inbounds float* %t, i64 4, !dbg !545
  %11 = load float* %arrayidx43, align 4, !dbg !545, !tbaa !271
  %add44 = fadd float %10, %11, !dbg !545
  call void @llvm.dbg.value(metadata !{float %add44}, i64 0, metadata !242), !dbg !545
  %arrayidx45 = getelementptr inbounds float* %t, i64 5, !dbg !546
  %12 = load float* %arrayidx45, align 4, !dbg !546, !tbaa !271
  %arrayidx46 = getelementptr inbounds float* %t, i64 6, !dbg !546
  %13 = load float* %arrayidx46, align 4, !dbg !546, !tbaa !271
  %add47 = fadd float %12, %13, !dbg !546
  call void @llvm.dbg.value(metadata !{float %add47}, i64 0, metadata !241), !dbg !546
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !547
  %tnum53 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1, !dbg !549
  %.pre = load i32* %tnum53, align 4, !dbg !549, !tbaa !266
  br label %for.cond52.preheader, !dbg !547

for.cond52.preheader:                             ; preds = %for.end124, %if.end
  %14 = phi i32 [ %.pre, %if.end ], [ %32, %for.end124 ], !dbg !549
  %indvars.iv206 = phi i64 [ 0, %if.end ], [ %indvars.iv.next207, %for.end124 ]
  %cmp54198 = icmp sgt i32 %14, 0, !dbg !549
  %arrayidx60 = getelementptr inbounds float* %t, i64 %indvars.iv206, !dbg !552
  br i1 %cmp54198, label %for.body56, label %for.end124, !dbg !549

for.body56:                                       ; preds = %for.cond52.preheader, %for.inc122
  %15 = phi i32 [ %30, %for.inc122 ], [ %14, %for.cond52.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc122 ], [ 0, %for.cond52.preheader ]
  %xi.0201 = phi float [ %xi.1, %for.inc122 ], [ 0.000000e+00, %for.cond52.preheader ]
  %16 = trunc i64 %indvars.iv206 to i32, !dbg !555
  switch i32 %16, label %for.inc122 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb74
    i32 4, label %sw.bb74
    i32 5, label %sw.bb98
    i32 6, label %sw.bb98
  ], !dbg !555

sw.bb:                                            ; preds = %for.body56, %for.body56, %for.body56
  %arrayidx58 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !552
  %17 = load float* %arrayidx58, align 4, !dbg !552, !tbaa !271
  %18 = load float* %arrayidx60, align 4, !dbg !552, !tbaa !271
  %arrayidx65 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206, !dbg !552
  %19 = load float* %arrayidx65, align 4, !dbg !552, !tbaa !271
  %add66 = fadd float %18, %19, !dbg !552
  %mul = fmul float %17, %add66, !dbg !552
  %arraydecay70 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 0, !dbg !556
  %call71 = call float @FSum(float* %arraydecay70, i32 3) #6, !dbg !556
  %add72 = fadd float %call41, %call71, !dbg !556
  %div = fdiv float %mul, %add72, !dbg !556
  %add73 = fadd float %xi.0201, %div, !dbg !556
  call void @llvm.dbg.value(metadata !{float %add73}, i64 0, metadata !243), !dbg !556
  %.pre211 = load i32* %tnum53, align 4, !dbg !549, !tbaa !266
  br label %for.inc122, !dbg !557

sw.bb74:                                          ; preds = %for.body56, %for.body56
  %arrayidx76 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !558
  %20 = load float* %arrayidx76, align 4, !dbg !558, !tbaa !271
  %21 = load float* %arrayidx60, align 4, !dbg !558, !tbaa !271
  %arrayidx83 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206, !dbg !558
  %22 = load float* %arrayidx83, align 4, !dbg !558, !tbaa !271
  %add84 = fadd float %21, %22, !dbg !558
  %mul85 = fmul float %20, %add84, !dbg !558
  %arrayidx89 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 3, !dbg !558
  %23 = load float* %arrayidx89, align 4, !dbg !558, !tbaa !271
  %add90 = fadd float %add44, %23, !dbg !558
  %arrayidx94 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 4, !dbg !558
  %24 = load float* %arrayidx94, align 4, !dbg !558, !tbaa !271
  %add95 = fadd float %add90, %24, !dbg !558
  %div96 = fdiv float %mul85, %add95, !dbg !558
  %add97 = fadd float %xi.0201, %div96, !dbg !558
  call void @llvm.dbg.value(metadata !{float %add97}, i64 0, metadata !243), !dbg !558
  br label %for.inc122, !dbg !559

sw.bb98:                                          ; preds = %for.body56, %for.body56
  %arrayidx100 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !560
  %25 = load float* %arrayidx100, align 4, !dbg !560, !tbaa !271
  %26 = load float* %arrayidx60, align 4, !dbg !560, !tbaa !271
  %arrayidx107 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206, !dbg !560
  %27 = load float* %arrayidx107, align 4, !dbg !560, !tbaa !271
  %add108 = fadd float %26, %27, !dbg !560
  %mul109 = fmul float %25, %add108, !dbg !560
  %arrayidx113 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 5, !dbg !560
  %28 = load float* %arrayidx113, align 4, !dbg !560, !tbaa !271
  %add114 = fadd float %add47, %28, !dbg !560
  %arrayidx118 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 6, !dbg !560
  %29 = load float* %arrayidx118, align 4, !dbg !560, !tbaa !271
  %add119 = fadd float %add114, %29, !dbg !560
  %div120 = fdiv float %mul109, %add119, !dbg !560
  %add121 = fadd float %xi.0201, %div120, !dbg !560
  call void @llvm.dbg.value(metadata !{float %add121}, i64 0, metadata !243), !dbg !560
  br label %for.inc122, !dbg !561

for.inc122:                                       ; preds = %sw.bb, %sw.bb74, %sw.bb98, %for.body56
  %30 = phi i32 [ %15, %for.body56 ], [ %15, %sw.bb98 ], [ %15, %sw.bb74 ], [ %.pre211, %sw.bb ], !dbg !549
  %xi.1 = phi float [ %xi.0201, %for.body56 ], [ %add121, %sw.bb98 ], [ %add97, %sw.bb74 ], [ %add73, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !549
  %31 = trunc i64 %indvars.iv.next to i32, !dbg !549
  %cmp54 = icmp slt i32 %31, %30, !dbg !549
  br i1 %cmp54, label %for.body56, label %for.end124, !dbg !549

for.end124:                                       ; preds = %for.cond52.preheader, %for.inc122
  %32 = phi i32 [ %30, %for.inc122 ], [ %14, %for.cond52.preheader ]
  %xi.0.lcssa = phi float [ %xi.1, %for.inc122 ], [ 0.000000e+00, %for.cond52.preheader ]
  store float %xi.0.lcssa, float* %arrayidx60, align 4, !dbg !562, !tbaa !271
  %indvars.iv.next207 = add i64 %indvars.iv206, 1, !dbg !547
  %lftr.wideiv = trunc i64 %indvars.iv.next207 to i32, !dbg !547
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !547
  br i1 %exitcond, label %for.end129, label %for.cond52.preheader, !dbg !547

for.end129:                                       ; preds = %for.end124
  call void @FNorm(float* %t, i32 3) #6, !dbg !563
  call void @FNorm(float* %arrayidx42, i32 2) #6, !dbg !564
  call void @FNorm(float* %arrayidx45, i32 2) #6, !dbg !565
  call void @llvm.lifetime.end(i64 800, i8* %0) #5, !dbg !566
  ret void, !dbg !566
}

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyEmissionVector(float* %vec, %struct.p7prior_s* nocapture %pri, i32 %num, float* nocapture %eq, [20 x float]* %e, float* %ret_mix) #0 {
entry:
  %ret_mix139 = bitcast float* %ret_mix to i8*
  %vec149 = bitcast float* %vec to i8*
  %mix = alloca [200 x float], align 16
  %0 = bitcast [200 x float]* %mix to i8*
  call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !218), !dbg !567
  call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %pri}, i64 0, metadata !219), !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !220), !dbg !568
  call void @llvm.dbg.value(metadata !{float* %eq}, i64 0, metadata !221), !dbg !568
  call void @llvm.dbg.value(metadata !{[20 x float]* %e}, i64 0, metadata !222), !dbg !568
  call void @llvm.dbg.value(metadata !{float* %ret_mix}, i64 0, metadata !223), !dbg !569
  call void @llvm.lifetime.start(i64 800, i8* %0) #5, !dbg !570
  call void @llvm.dbg.declare(metadata !{[200 x float]* %mix}, metadata !226), !dbg !570
  %arrayidx = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0, !dbg !571
  store float 1.000000e+00, float* %arrayidx, align 16, !dbg !571, !tbaa !271
  %strategy = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0, !dbg !572
  %1 = load i32* %strategy, align 4, !dbg !572, !tbaa !266
  %cmp = icmp eq i32 %1, 0, !dbg !572
  %cmp1 = icmp sgt i32 %num, 1, !dbg !572
  %or.cond = and i1 %cmp, %cmp1, !dbg !572
  br i1 %or.cond, label %for.cond.preheader, label %if.else, !dbg !572

for.cond.preheader:                               ; preds = %entry
  %cmp2133 = icmp sgt i32 %num, 0, !dbg !573
  br i1 %cmp2133, label %for.body, label %for.end, !dbg !573

for.body:                                         ; preds = %for.cond.preheader, %cond.end
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %cond.end ], [ 0, %for.cond.preheader ]
  %arrayidx3 = getelementptr inbounds float* %eq, i64 %indvars.iv143, !dbg !576
  %2 = load float* %arrayidx3, align 4, !dbg !576, !tbaa !271
  %cmp4 = fcmp ogt float %2, 0.000000e+00, !dbg !576
  br i1 %cmp4, label %cond.true, label %cond.end, !dbg !576

cond.true:                                        ; preds = %for.body
  %conv = fpext float %2 to double, !dbg !576
  %call = call double @log(double %conv) #6, !dbg !576
  %phitmp = fptrunc double %call to float, !dbg !576
  br label %cond.end, !dbg !576

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.990000e+02, %for.body ]
  %arrayidx11 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv143, !dbg !576
  store float %cond, float* %arrayidx11, align 4, !dbg !576, !tbaa !271
  %3 = load i32* @Alphabet_size, align 4, !dbg !578, !tbaa !266
  %arraydecay = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv143, i64 0, !dbg !578
  %call14 = call float @Logp_cvec(float* %vec, i32 %3, float* %arraydecay) #6, !dbg !578
  %4 = load float* %arrayidx11, align 4, !dbg !578, !tbaa !271
  %add = fadd float %call14, %4, !dbg !578
  store float %add, float* %arrayidx11, align 4, !dbg !578, !tbaa !271
  %indvars.iv.next144 = add i64 %indvars.iv143, 1, !dbg !573
  %lftr.wideiv145 = trunc i64 %indvars.iv.next144 to i32, !dbg !573
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %num, !dbg !573
  br i1 %exitcond146, label %for.end, label %for.body, !dbg !573

for.end:                                          ; preds = %cond.end, %for.cond.preheader
  call void @LogNorm(float* %arrayidx, i32 %num) #6, !dbg !579
  br label %if.end37, !dbg !580

if.else:                                          ; preds = %entry
  %cmp19 = icmp eq i32 %1, 1, !dbg !581
  %or.cond124 = and i1 %cmp19, %cmp1, !dbg !581
  br i1 %or.cond124, label %for.cond25.preheader, label %if.end37, !dbg !581

for.cond25.preheader:                             ; preds = %if.else
  %5 = load i32* @Alphabet_size, align 4, !dbg !582, !tbaa !266
  %cmp26136 = icmp sgt i32 %5, 0, !dbg !582
  br i1 %cmp26136, label %for.body28.lr.ph, label %for.end35, !dbg !582

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %6 = icmp sgt i32 %5, 1
  %.op = add i32 %5, -1, !dbg !582
  %7 = zext i32 %.op to i64
  %.op151 = shl nuw nsw i64 %7, 2, !dbg !582
  %.op151.op = add i64 %.op151, 4, !dbg !582
  %8 = select i1 %6, i64 %.op151.op, i64 4, !dbg !582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %vec149, i64 %8, i32 4, i1 false), !dbg !585
  br label %for.end35, !dbg !582

for.end35:                                        ; preds = %for.body28.lr.ph, %for.cond25.preheader
  call void @FNorm(float* %arrayidx, i32 %5) #6, !dbg !586
  br label %if.end37, !dbg !587

if.end37:                                         ; preds = %if.else, %for.end35, %for.end
  %9 = load i32* @Alphabet_size, align 4, !dbg !588, !tbaa !266
  %call38 = call float @FSum(float* %vec, i32 %9) #6, !dbg !588
  call void @llvm.dbg.value(metadata !{float %call38}, i64 0, metadata !227), !dbg !588
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !224), !dbg !589
  %10 = load i32* @Alphabet_size, align 4, !dbg !589, !tbaa !266
  %cmp40130 = icmp sgt i32 %10, 0, !dbg !589
  br i1 %cmp40130, label %for.cond43.preheader.lr.ph, label %for.end69, !dbg !589

for.cond43.preheader.lr.ph:                       ; preds = %if.end37
  %cmp44127 = icmp sgt i32 %num, 0, !dbg !591
  br label %for.cond43.preheader, !dbg !589

for.cond43.preheader:                             ; preds = %for.cond43.preheader.lr.ph, %for.end64
  %11 = phi i32 [ %10, %for.cond43.preheader.lr.ph ], [ %16, %for.end64 ]
  %indvars.iv141 = phi i64 [ 0, %for.cond43.preheader.lr.ph ], [ %indvars.iv.next142, %for.end64 ]
  %arrayidx54 = getelementptr inbounds float* %vec, i64 %indvars.iv141, !dbg !594
  br i1 %cmp44127, label %for.body46, label %for.end64, !dbg !591

for.body46:                                       ; preds = %for.body46, %for.cond43.preheader
  %12 = phi i32 [ %11, %for.cond43.preheader ], [ %.pre, %for.body46 ]
  %indvars.iv = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next, %for.body46 ]
  %xi.0129 = phi float [ 0.000000e+00, %for.cond43.preheader ], [ %add61, %for.body46 ]
  %arraydecay49 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv, i64 0, !dbg !596
  %call50 = call float @FSum(float* %arraydecay49, i32 %12) #6, !dbg !596
  call void @llvm.dbg.value(metadata !{float %call50}, i64 0, metadata !228), !dbg !596
  %arrayidx52 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv, !dbg !594
  %13 = load float* %arrayidx52, align 4, !dbg !594, !tbaa !271
  %14 = load float* %arrayidx54, align 4, !dbg !594, !tbaa !271
  %arrayidx58 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv, i64 %indvars.iv141, !dbg !594
  %15 = load float* %arrayidx58, align 4, !dbg !594, !tbaa !271
  %add59 = fadd float %14, %15, !dbg !594
  %mul = fmul float %13, %add59, !dbg !594
  %add60 = fadd float %call38, %call50, !dbg !594
  %div = fdiv float %mul, %add60, !dbg !594
  %add61 = fadd float %xi.0129, %div, !dbg !594
  call void @llvm.dbg.value(metadata !{float %add61}, i64 0, metadata !229), !dbg !594
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !591
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !591
  %exitcond = icmp eq i32 %lftr.wideiv, %num, !dbg !591
  %.pre = load i32* @Alphabet_size, align 4, !dbg !589, !tbaa !266
  br i1 %exitcond, label %for.end64, label %for.body46, !dbg !591

for.end64:                                        ; preds = %for.body46, %for.cond43.preheader
  %16 = phi i32 [ %11, %for.cond43.preheader ], [ %.pre, %for.body46 ], !dbg !597
  %xi.0.lcssa = phi float [ 0.000000e+00, %for.cond43.preheader ], [ %add61, %for.body46 ]
  store float %xi.0.lcssa, float* %arrayidx54, align 4, !dbg !597, !tbaa !271
  %indvars.iv.next142 = add i64 %indvars.iv141, 1, !dbg !589
  %17 = trunc i64 %indvars.iv.next142 to i32, !dbg !589
  %cmp40 = icmp slt i32 %17, %16, !dbg !589
  br i1 %cmp40, label %for.cond43.preheader, label %for.end69, !dbg !589

for.end69:                                        ; preds = %for.end64, %if.end37
  %.lcssa = phi i32 [ %10, %if.end37 ], [ %16, %for.end64 ]
  call void @FNorm(float* %vec, i32 %.lcssa) #6, !dbg !598
  %cmp70 = icmp ne float* %ret_mix, null, !dbg !599
  %cmp74125 = icmp sgt i32 %num, 0, !dbg !600
  %or.cond152 = and i1 %cmp70, %cmp74125, !dbg !599
  br i1 %or.cond152, label %for.body76.lr.ph, label %if.end84, !dbg !599

for.body76.lr.ph:                                 ; preds = %for.end69
  %18 = add i32 %num, -1, !dbg !600
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 2, !dbg !600
  %21 = add i64 %20, 4, !dbg !600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ret_mix139, i8* %0, i64 %21, i32 4, i1 false), !dbg !602
  br label %if.end84, !dbg !600

if.end84:                                         ; preds = %for.end69, %for.body76.lr.ph
  call void @llvm.lifetime.end(i64 800, i8* %0) #5, !dbg !603
  ret void, !dbg !603
}

; Function Attrs: optsize
declare void @Plan7Renormalize(%struct.plan7_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: optsize
declare float @Logp_cvec(float*, i32, float*) #1

; Function Attrs: optsize
declare void @LogNorm(float*, i32) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !252, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !33, metadata !38, metadata !41, metadata !42, metadata !108, metadata !125, metadata !133, metadata !144, metadata !213, metadata !230, metadata !244, metadata !247}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7AllocPrior", metadata !"P7AllocPrior", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7prior_s* ()* @P7AllocPrior, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [P7AllocPrior]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7prior_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"p7prior_s", i32 385, i64 320128, i64 32, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7prior_s] [line 385, size 320128, align 32, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14, metadata !15, metadata !20, metadata !24, metadata !25, metadata !26, metadata !30, metadata !31, metadata !32}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"strategy", i32 386, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [strategy] [line 386, size 32, align 32, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tnum", i32 388, i64 32, i64 32, i64 32, i32 0, metadata !13} ; [ DW_TAG_member ] [tnum] [line 388, size 32, align 32, offset 32] [from int]
!15 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tq", i32 389, i64 6400, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [tq] [line 389, size 6400, align 32, offset 64] [from ]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 32, i32 0, i32 0, metadata !17, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 32, offset 0] [from float]
!17 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 200}      ; [ DW_TAG_subrange_type ] [0, 199]
!20 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"t", i32 390, i64 44800, i64 32, i64 6464, i32 0, metadata !21} ; [ DW_TAG_member ] [t] [line 390, size 44800, align 32, offset 6464] [from ]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 44800, i64 32, i32 0, i32 0, metadata !17, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 44800, align 32, offset 0] [from float]
!22 = metadata !{metadata !19, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ] [0, 6]
!24 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mnum", i32 392, i64 32, i64 32, i64 51264, i32 0, metadata !13} ; [ DW_TAG_member ] [mnum] [line 392, size 32, align 32, offset 51264] [from int]
!25 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mq", i32 393, i64 6400, i64 32, i64 51296, i32 0, metadata !16} ; [ DW_TAG_member ] [mq] [line 393, size 6400, align 32, offset 51296] [from ]
!26 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"m", i32 394, i64 128000, i64 32, i64 57696, i32 0, metadata !27} ; [ DW_TAG_member ] [m] [line 394, size 128000, align 32, offset 57696] [from ]
!27 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128000, i64 32, i32 0, i32 0, metadata !17, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128000, align 32, offset 0] [from float]
!28 = metadata !{metadata !19, metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!30 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"inum", i32 396, i64 32, i64 32, i64 185696, i32 0, metadata !13} ; [ DW_TAG_member ] [inum] [line 396, size 32, align 32, offset 185696] [from int]
!31 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"iq", i32 397, i64 6400, i64 32, i64 185728, i32 0, metadata !16} ; [ DW_TAG_member ] [iq] [line 397, size 6400, align 32, offset 185728] [from ]
!32 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"i", i32 398, i64 128000, i64 32, i64 192128, i32 0, metadata !27} ; [ DW_TAG_member ] [i] [line 398, size 128000, align 32, offset 192128] [from ]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7FreePrior", metadata !"P7FreePrior", metadata !"", i32 39, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7prior_s*)* @P7FreePrior, null, null, metadata !36, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [P7FreePrior]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !8}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786689, metadata !33, metadata !"pri", metadata !5, i32 16777255, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pri] [line 39]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7LaplacePrior", metadata !"P7LaplacePrior", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7prior_s* ()* @P7LaplacePrior, null, null, metadata !39, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [P7LaplacePrior]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786688, metadata !38, metadata !"pri", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pri] [line 55]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7DefaultPrior", metadata !"P7DefaultPrior", metadata !"", i32 81, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7prior_s* ()* @P7DefaultPrior, null, null, metadata !2, i32 82} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 82] [P7DefaultPrior]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7ReadPrior", metadata !"P7ReadPrior", metadata !"", i32 97, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7prior_s* (i8*)* @P7ReadPrior, null, null, metadata !47, i32 98} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 98] [P7ReadPrior]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !8, metadata !45}
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!46 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!47 = metadata !{metadata !48, metadata !49, metadata !104, metadata !105, metadata !106, metadata !107}
!48 = metadata !{i32 786689, metadata !42, metadata !"prifile", metadata !5, i32 16777313, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prifile] [line 97]
!49 = metadata !{i32 786688, metadata !42, metadata !"fp", metadata !5, i32 99, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 99]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!51 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!52 = metadata !{i32 786451, metadata !53, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!53 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !75, metadata !76, metadata !77, metadata !78, metadata !81, metadata !83, metadata !85, metadata !89, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !100, metadata !101}
!55 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!56 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!58 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!59 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!60 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!61 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!62 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!63 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!64 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!65 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!66 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!67 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !68} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!69 = metadata !{i32 786451, metadata !53, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!70 = metadata !{metadata !71, metadata !72, metadata !74}
!71 = metadata !{i32 786445, metadata !53, metadata !69, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !53, metadata !69, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!74 = metadata !{i32 786445, metadata !53, metadata !69, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!75 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !73} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!76 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !13} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!77 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !13} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!78 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !79} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!79 = metadata !{i32 786454, metadata !53, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!80 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!81 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !82} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!82 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !84} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!84 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!85 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !86} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !46, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!89 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !90} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!91 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !92} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!92 = metadata !{i32 786454, metadata !53, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!93 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!94 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!95 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!96 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!97 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!98 = metadata !{i32 786454, metadata !53, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!99 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!100 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !13} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!101 = metadata !{i32 786445, metadata !53, metadata !52, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !102} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!102 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !46, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!103 = metadata !{metadata !29}
!104 = metadata !{i32 786688, metadata !42, metadata !"pri", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pri] [line 100]
!105 = metadata !{i32 786688, metadata !42, metadata !"sptr", metadata !5, i32 101, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 101]
!106 = metadata !{i32 786688, metadata !42, metadata !"q", metadata !5, i32 102, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 102]
!107 = metadata !{i32 786688, metadata !42, metadata !"x", metadata !5, i32 102, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 102]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PAMPrior", metadata !"PAMPrior", metadata !"", i32 214, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.p7prior_s*, float)* @PAMPrior, null, null, metadata !111, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [PAMPrior]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{null, metadata !45, metadata !8, metadata !17}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!112 = metadata !{i32 786689, metadata !108, metadata !"pamfile", metadata !5, i32 16777430, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pamfile] [line 214]
!113 = metadata !{i32 786689, metadata !108, metadata !"pri", metadata !5, i32 33554646, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pri] [line 214]
!114 = metadata !{i32 786689, metadata !108, metadata !"wt", metadata !5, i32 50331862, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wt] [line 214]
!115 = metadata !{i32 786688, metadata !108, metadata !"fp", metadata !5, i32 216, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 216]
!116 = metadata !{i32 786688, metadata !108, metadata !"blastpamfile", metadata !5, i32 217, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blastpamfile] [line 217]
!117 = metadata !{i32 786688, metadata !108, metadata !"pam", metadata !5, i32 218, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pam] [line 218]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!120 = metadata !{i32 786688, metadata !108, metadata !"scale", metadata !5, i32 219, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scale] [line 219]
!121 = metadata !{i32 786688, metadata !108, metadata !"xi", metadata !5, i32 220, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 220]
!122 = metadata !{i32 786688, metadata !108, metadata !"xj", metadata !5, i32 220, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xj] [line 220]
!123 = metadata !{i32 786688, metadata !108, metadata !"idx1", metadata !5, i32 221, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx1] [line 221]
!124 = metadata !{i32 786688, metadata !108, metadata !"idx2", metadata !5, i32 221, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx2] [line 221]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7DefaultNullModel", metadata !"P7DefaultNullModel", metadata !"", i32 279, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*)* @P7DefaultNullModel, null, null, metadata !129, i32 280} ; [ DW_TAG_subprogram ] [line 279] [def] [scope 280] [P7DefaultNullModel]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{null, metadata !128, metadata !128}
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!129 = metadata !{metadata !130, metadata !131, metadata !132}
!130 = metadata !{i32 786689, metadata !125, metadata !"null", metadata !5, i32 16777495, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 279]
!131 = metadata !{i32 786689, metadata !125, metadata !"ret_p1", metadata !5, i32 33554711, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_p1] [line 279]
!132 = metadata !{i32 786688, metadata !125, metadata !"x", metadata !5, i32 281, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 281]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7ReadNullModel", metadata !"P7ReadNullModel", metadata !"", i32 294, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, float*, float*)* @P7ReadNullModel, null, null, metadata !136, i32 295} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 295] [P7ReadNullModel]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{null, metadata !45, metadata !128, metadata !128}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143}
!137 = metadata !{i32 786689, metadata !133, metadata !"rndfile", metadata !5, i32 16777510, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rndfile] [line 294]
!138 = metadata !{i32 786689, metadata !133, metadata !"null", metadata !5, i32 33554726, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 294]
!139 = metadata !{i32 786689, metadata !133, metadata !"ret_p1", metadata !5, i32 50331942, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_p1] [line 294]
!140 = metadata !{i32 786688, metadata !133, metadata !"fp", metadata !5, i32 296, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 296]
!141 = metadata !{i32 786688, metadata !133, metadata !"s", metadata !5, i32 297, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 297]
!142 = metadata !{i32 786688, metadata !133, metadata !"x", metadata !5, i32 298, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 298]
!143 = metadata !{i32 786688, metadata !133, metadata !"type", metadata !5, i32 299, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 299]
!144 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7PriorifyHMM", metadata !"P7PriorifyHMM", metadata !"", i32 342, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, %struct.p7prior_s*)* @P7PriorifyHMM, null, null, metadata !205, i32 343} ; [ DW_TAG_subprogram ] [line 342] [def] [scope 343] [P7PriorifyHMM]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !147, metadata !8}
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!148 = metadata !{i32 786451, metadata !10, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !173, metadata !174, metadata !175, metadata !176, metadata !181, metadata !182, metadata !183, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204}
!150 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!152 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!153 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!154 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!155 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!156 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!157 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !13} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!158 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !45} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!159 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !119} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!160 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !13} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!161 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !119} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!162 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !119} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!163 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !119} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!164 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!165 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !17} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!166 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !17} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!167 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !17} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!168 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !17} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!169 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !17} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!170 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !13} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!171 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !172} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!173 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !172} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!174 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !172} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!175 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !17} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!176 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !177} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!177 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !17, metadata !178, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!180 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!181 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !128} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!182 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !128} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!183 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !184} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !17, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!185 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !17} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!186 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !118} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!187 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !118} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!188 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !118} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!189 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !190} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!190 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !13, metadata !178, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!191 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !119} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!192 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !119} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!193 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !119} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!194 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !119} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!195 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !119} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!196 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !119} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!197 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !119} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!198 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !118} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!199 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !118} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!200 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !13} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!201 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !13} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!202 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !17} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!203 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !17} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!204 = metadata !{i32 786445, metadata !10, metadata !148, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !13} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!205 = metadata !{metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!206 = metadata !{i32 786689, metadata !144, metadata !"hmm", metadata !5, i32 16777558, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 342]
!207 = metadata !{i32 786689, metadata !144, metadata !"pri", metadata !5, i32 33554774, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pri] [line 342]
!208 = metadata !{i32 786688, metadata !144, metadata !"k", metadata !5, i32 344, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 344]
!209 = metadata !{i32 786688, metadata !144, metadata !"d", metadata !5, i32 345, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 345]
!210 = metadata !{i32 786688, metadata !144, metadata !"tq", metadata !5, i32 346, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tq] [line 346]
!211 = metadata !{i32 786688, metadata !144, metadata !"mq", metadata !5, i32 347, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mq] [line 347]
!212 = metadata !{i32 786688, metadata !144, metadata !"iq", metadata !5, i32 348, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iq] [line 348]
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7PriorifyEmissionVector", metadata !"P7PriorifyEmissionVector", metadata !"", i32 443, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*)* @P7PriorifyEmissionVector, null, null, metadata !217, i32 446} ; [ DW_TAG_subprogram ] [line 443] [def] [scope 446] [P7PriorifyEmissionVector]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{null, metadata !128, metadata !8, metadata !13, metadata !128, metadata !216, metadata !128}
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229}
!218 = metadata !{i32 786689, metadata !213, metadata !"vec", metadata !5, i32 16777659, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 443]
!219 = metadata !{i32 786689, metadata !213, metadata !"pri", metadata !5, i32 33554875, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pri] [line 443]
!220 = metadata !{i32 786689, metadata !213, metadata !"num", metadata !5, i32 50332092, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 444]
!221 = metadata !{i32 786689, metadata !213, metadata !"eq", metadata !5, i32 67109308, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eq] [line 444]
!222 = metadata !{i32 786689, metadata !213, metadata !"e", metadata !5, i32 83886524, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 444]
!223 = metadata !{i32 786689, metadata !213, metadata !"ret_mix", metadata !5, i32 100663741, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mix] [line 445]
!224 = metadata !{i32 786688, metadata !213, metadata !"x", metadata !5, i32 447, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 447]
!225 = metadata !{i32 786688, metadata !213, metadata !"q", metadata !5, i32 448, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 448]
!226 = metadata !{i32 786688, metadata !213, metadata !"mix", metadata !5, i32 449, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mix] [line 449]
!227 = metadata !{i32 786688, metadata !213, metadata !"totc", metadata !5, i32 450, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totc] [line 450]
!228 = metadata !{i32 786688, metadata !213, metadata !"tota", metadata !5, i32 451, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tota] [line 451]
!229 = metadata !{i32 786688, metadata !213, metadata !"xi", metadata !5, i32 452, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 452]
!230 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7PriorifyTransitionVector", metadata !"P7PriorifyTransitionVector", metadata !"", i32 520, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, %struct.p7prior_s*, float*)* @P7PriorifyTransitionVector, null, null, metadata !233, i32 522} ; [ DW_TAG_subprogram ] [line 520] [def] [scope 522] [P7PriorifyTransitionVector]
!231 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{null, metadata !128, metadata !8, metadata !128}
!233 = metadata !{metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243}
!234 = metadata !{i32 786689, metadata !230, metadata !"t", metadata !5, i32 16777736, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 520]
!235 = metadata !{i32 786689, metadata !230, metadata !"prior", metadata !5, i32 33554952, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prior] [line 520]
!236 = metadata !{i32 786689, metadata !230, metadata !"tq", metadata !5, i32 50332169, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tq] [line 521]
!237 = metadata !{i32 786688, metadata !230, metadata !"ts", metadata !5, i32 523, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 523]
!238 = metadata !{i32 786688, metadata !230, metadata !"q", metadata !5, i32 524, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 524]
!239 = metadata !{i32 786688, metadata !230, metadata !"mix", metadata !5, i32 525, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mix] [line 525]
!240 = metadata !{i32 786688, metadata !230, metadata !"totm", metadata !5, i32 526, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totm] [line 526]
!241 = metadata !{i32 786688, metadata !230, metadata !"totd", metadata !5, i32 526, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totd] [line 526]
!242 = metadata !{i32 786688, metadata !230, metadata !"toti", metadata !5, i32 526, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toti] [line 526]
!243 = metadata !{i32 786688, metadata !230, metadata !"xi", metadata !5, i32 527, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 527]
!244 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"default_nucleic_prior", metadata !"default_nucleic_prior", metadata !"", i32 693, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !245, i32 694} ; [ DW_TAG_subprogram ] [line 693] [local] [def] [scope 694] [default_nucleic_prior]
!245 = metadata !{metadata !246}
!246 = metadata !{i32 786688, metadata !244, metadata !"pri", metadata !5, i32 695, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pri] [line 695]
!247 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"default_amino_prior", metadata !"default_amino_prior", metadata !"", i32 579, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !248, i32 580} ; [ DW_TAG_subprogram ] [line 579] [local] [def] [scope 580] [default_amino_prior]
!248 = metadata !{metadata !249, metadata !250, metadata !251}
!249 = metadata !{i32 786688, metadata !247, metadata !"pri", metadata !5, i32 581, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pri] [line 581]
!250 = metadata !{i32 786688, metadata !247, metadata !"q", metadata !5, i32 582, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 582]
!251 = metadata !{i32 786688, metadata !247, metadata !"x", metadata !5, i32 582, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 582]
!252 = metadata !{metadata !253, metadata !257}
!253 = metadata !{i32 786484, i32 0, metadata !247, metadata !"defmq", metadata !"defmq", metadata !"", metadata !5, i32 584, metadata !254, i32 1, i32 1, [9 x float]* @default_amino_prior.defmq, null} ; [ DW_TAG_variable ] [defmq] [line 584] [local] [def]
!254 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !17, metadata !255, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from float]
!255 = metadata !{metadata !256}
!256 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!257 = metadata !{i32 786484, i32 0, metadata !247, metadata !"defm", metadata !"defm", metadata !"", metadata !5, i32 589, metadata !258, i32 1, i32 1, [9 x [20 x float]]* @default_amino_prior.defm, null} ; [ DW_TAG_variable ] [defm] [line 589] [local] [def]
!258 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5760, i64 32, i32 0, i32 0, metadata !17, metadata !259, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5760, align 32, offset 0] [from float]
!259 = metadata !{metadata !256, metadata !29}
!260 = metadata !{i32 37, i32 0, metadata !4, null}
!261 = metadata !{i32 39, i32 0, metadata !33, null}
!262 = metadata !{i32 40, i32 0, metadata !33, null}
!263 = metadata !{i32 37, i32 0, metadata !4, metadata !264}
!264 = metadata !{i32 57, i32 0, metadata !38, null}
!265 = metadata !{i32 58, i32 0, metadata !38, null} ; [ DW_TAG_imported_module ]
!266 = metadata !{metadata !"int", metadata !267}
!267 = metadata !{metadata !"omnipotent char", metadata !268}
!268 = metadata !{metadata !"Simple C/C++ TBAA"}
!269 = metadata !{i32 60, i32 0, metadata !38, null}
!270 = metadata !{i32 61, i32 0, metadata !38, null}
!271 = metadata !{metadata !"float", metadata !267}
!272 = metadata !{i32 62, i32 0, metadata !38, null}
!273 = metadata !{i32 64, i32 0, metadata !38, null}
!274 = metadata !{i32 65, i32 0, metadata !38, null}
!275 = metadata !{i32 66, i32 0, metadata !38, null}
!276 = metadata !{i32 68, i32 0, metadata !38, null}
!277 = metadata !{i32 69, i32 0, metadata !38, null}
!278 = metadata !{i32 70, i32 0, metadata !38, null}
!279 = metadata !{i32 72, i32 0, metadata !38, null}
!280 = metadata !{i32 83, i32 0, metadata !41, null}
!281 = metadata !{i32 37, i32 0, metadata !4, metadata !282}
!282 = metadata !{i32 628, i32 0, metadata !247, metadata !283}
!283 = metadata !{i32 84, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !41, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!285 = metadata !{i32 786688, metadata !247, metadata !"pri", metadata !5, i32 581, metadata !8, i32 0, metadata !283} ; [ DW_TAG_auto_variable ] [pri] [line 581]
!286 = metadata !{i32 629, i32 0, metadata !247, metadata !283}
!287 = metadata !{i32 634, i32 0, metadata !247, metadata !283}
!288 = metadata !{i32 635, i32 0, metadata !247, metadata !283}
!289 = metadata !{i32 636, i32 0, metadata !247, metadata !283}
!290 = metadata !{i32 637, i32 0, metadata !247, metadata !283}
!291 = metadata !{i32 638, i32 0, metadata !247, metadata !283}
!292 = metadata !{i32 639, i32 0, metadata !247, metadata !283}
!293 = metadata !{i32 640, i32 0, metadata !247, metadata !283}
!294 = metadata !{i32 641, i32 0, metadata !247, metadata !283}
!295 = metadata !{i32 642, i32 0, metadata !247, metadata !283}
!296 = metadata !{i32 647, i32 0, metadata !247, metadata !283}
!297 = metadata !{i32 786688, metadata !247, metadata !"q", metadata !5, i32 582, metadata !13, i32 0, metadata !283} ; [ DW_TAG_auto_variable ] [q] [line 582]
!298 = metadata !{i32 648, i32 0, metadata !299, metadata !283}
!299 = metadata !{i32 786443, metadata !1, metadata !247, i32 648, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!300 = metadata !{i32 650, i32 0, metadata !301, metadata !283}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 649, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!302 = metadata !{i32 786688, metadata !247, metadata !"x", metadata !5, i32 582, metadata !13, i32 0, metadata !283} ; [ DW_TAG_auto_variable ] [x] [line 582]
!303 = metadata !{i32 651, i32 0, metadata !304, metadata !283}
!304 = metadata !{i32 786443, metadata !1, metadata !301, i32 651, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!305 = metadata !{i32 652, i32 0, metadata !304, metadata !283}
!306 = metadata !{i32 661, i32 0, metadata !247, metadata !283}
!307 = metadata !{i32 662, i32 0, metadata !247, metadata !283}
!308 = metadata !{i32 663, i32 0, metadata !247, metadata !283}
!309 = metadata !{i32 664, i32 0, metadata !247, metadata !283}
!310 = metadata !{i32 665, i32 0, metadata !247, metadata !283}
!311 = metadata !{i32 666, i32 0, metadata !247, metadata !283}
!312 = metadata !{i32 667, i32 0, metadata !247, metadata !283}
!313 = metadata !{i32 668, i32 0, metadata !247, metadata !283}
!314 = metadata !{i32 669, i32 0, metadata !247, metadata !283}
!315 = metadata !{i32 670, i32 0, metadata !247, metadata !283}
!316 = metadata !{i32 671, i32 0, metadata !247, metadata !283}
!317 = metadata !{i32 672, i32 0, metadata !247, metadata !283}
!318 = metadata !{i32 673, i32 0, metadata !247, metadata !283}
!319 = metadata !{i32 674, i32 0, metadata !247, metadata !283}
!320 = metadata !{i32 675, i32 0, metadata !247, metadata !283}
!321 = metadata !{i32 676, i32 0, metadata !247, metadata !283}
!322 = metadata !{i32 677, i32 0, metadata !247, metadata !283}
!323 = metadata !{i32 678, i32 0, metadata !247, metadata !283}
!324 = metadata !{i32 679, i32 0, metadata !247, metadata !283}
!325 = metadata !{i32 680, i32 0, metadata !247, metadata !283}
!326 = metadata !{i32 681, i32 0, metadata !247, metadata !283}
!327 = metadata !{i32 682, i32 0, metadata !247, metadata !283}
!328 = metadata !{i32 37, i32 0, metadata !4, metadata !329}
!329 = metadata !{i32 697, i32 0, metadata !244, metadata !330}
!330 = metadata !{i32 85, i32 0, metadata !284, null}
!331 = metadata !{i32 786688, metadata !244, metadata !"pri", metadata !5, i32 695, metadata !8, i32 0, metadata !330} ; [ DW_TAG_auto_variable ] [pri] [line 695]
!332 = metadata !{i32 698, i32 0, metadata !244, metadata !330}
!333 = metadata !{i32 706, i32 0, metadata !244, metadata !330}
!334 = metadata !{i32 707, i32 0, metadata !244, metadata !330}
!335 = metadata !{i32 708, i32 0, metadata !244, metadata !330}
!336 = metadata !{i32 709, i32 0, metadata !244, metadata !330}
!337 = metadata !{i32 710, i32 0, metadata !244, metadata !330}
!338 = metadata !{i32 711, i32 0, metadata !244, metadata !330}
!339 = metadata !{i32 712, i32 0, metadata !244, metadata !330}
!340 = metadata !{i32 713, i32 0, metadata !244, metadata !330}
!341 = metadata !{i32 714, i32 0, metadata !244, metadata !330}
!342 = metadata !{i32 716, i32 0, metadata !244, metadata !330}
!343 = metadata !{i32 717, i32 0, metadata !244, metadata !330}
!344 = metadata !{i32 718, i32 0, metadata !244, metadata !330}
!345 = metadata !{i32 720, i32 0, metadata !244, metadata !330}
!346 = metadata !{i32 721, i32 0, metadata !244, metadata !330}
!347 = metadata !{i32 722, i32 0, metadata !244, metadata !330}
!348 = metadata !{i32 86, i32 0, metadata !284, null}
!349 = metadata !{i32 87, i32 0, metadata !284, null}
!350 = metadata !{i32 90, i32 0, metadata !41, null}
!351 = metadata !{i32 97, i32 0, metadata !42, null}
!352 = metadata !{i32 104, i32 0, metadata !42, null}
!353 = metadata !{i32 105, i32 0, metadata !42, null}
!354 = metadata !{i32 37, i32 0, metadata !4, metadata !355}
!355 = metadata !{i32 106, i32 0, metadata !42, null}
!356 = metadata !{i32 111, i32 0, metadata !42, null}
!357 = metadata !{i32 112, i32 0, metadata !42, null}
!358 = metadata !{i32 113, i32 0, metadata !42, null}
!359 = metadata !{i32 114, i32 0, metadata !42, null}
!360 = metadata !{i32 119, i32 0, metadata !42, null}
!361 = metadata !{i32 120, i32 0, metadata !42, null}
!362 = metadata !{i32 121, i32 0, metadata !42, null}
!363 = metadata !{i32 123, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !42, i32 122, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!365 = metadata !{i32 124, i32 0, metadata !364, null}
!366 = metadata !{i32 126, i32 0, metadata !42, null}
!367 = metadata !{i32 128, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !42, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!369 = metadata !{i32 129, i32 0, metadata !368, null}
!370 = metadata !{i32 132, i32 0, metadata !42, null}
!371 = metadata !{i32 140, i32 0, metadata !42, null}
!372 = metadata !{i32 141, i32 0, metadata !42, null}
!373 = metadata !{i32 142, i32 0, metadata !42, null}
!374 = metadata !{i32 143, i32 0, metadata !42, null}
!375 = metadata !{i32 144, i32 0, metadata !42, null}
!376 = metadata !{i32 145, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !42, i32 145, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!378 = metadata !{i32 147, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !377, i32 146, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!380 = metadata !{i32 148, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !379, i32 148, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!382 = metadata !{i32 149, i32 0, metadata !381, null}
!383 = metadata !{i32 158, i32 0, metadata !42, null}
!384 = metadata !{i32 159, i32 0, metadata !42, null}
!385 = metadata !{i32 160, i32 0, metadata !42, null}
!386 = metadata !{i32 161, i32 0, metadata !42, null}
!387 = metadata !{i32 162, i32 0, metadata !42, null}
!388 = metadata !{i32 164, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !42, i32 164, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!390 = metadata !{i32 166, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !389, i32 165, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!392 = metadata !{i32 167, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !391, i32 167, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!394 = metadata !{i32 168, i32 0, metadata !393, null}
!395 = metadata !{i32 177, i32 0, metadata !42, null}
!396 = metadata !{i32 178, i32 0, metadata !42, null}
!397 = metadata !{i32 179, i32 0, metadata !42, null}
!398 = metadata !{i32 180, i32 0, metadata !42, null}
!399 = metadata !{i32 181, i32 0, metadata !42, null}
!400 = metadata !{i32 182, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !42, i32 182, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!402 = metadata !{i32 184, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !401, i32 183, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!404 = metadata !{i32 185, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !403, i32 185, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!406 = metadata !{i32 186, i32 0, metadata !405, null}
!407 = metadata !{i32 189, i32 0, metadata !42, null}
!408 = metadata !{i32 190, i32 0, metadata !42, null}
!409 = metadata !{i32 214, i32 0, metadata !108, null}
!410 = metadata !{i32 218, i32 0, metadata !108, null}
!411 = metadata !{i32 219, i32 0, metadata !108, null}
!412 = metadata !{i32 223, i32 0, metadata !108, null}
!413 = metadata !{i32 224, i32 0, metadata !108, null}
!414 = metadata !{i32 225, i32 0, metadata !108, null}
!415 = metadata !{i32 226, i32 0, metadata !108, null}
!416 = metadata !{i32 227, i32 0, metadata !108, null}
!417 = metadata !{i32 228, i32 0, metadata !108, null}
!418 = metadata !{i32 232, i32 0, metadata !108, null}
!419 = metadata !{i32 234, i32 0, metadata !108, null}
!420 = metadata !{i32 235, i32 0, metadata !108, null}
!421 = metadata !{i32 236, i32 0, metadata !108, null}
!422 = metadata !{i32 237, i32 0, metadata !108, null}
!423 = metadata !{i32 238, i32 0, metadata !108, null}
!424 = metadata !{i32 239, i32 0, metadata !108, null}
!425 = metadata !{i32 240, i32 0, metadata !108, null}
!426 = metadata !{i32 241, i32 0, metadata !108, null}
!427 = metadata !{i32 243, i32 0, metadata !108, null}
!428 = metadata !{i32 244, i32 0, metadata !108, null}
!429 = metadata !{i32 249, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !108, i32 249, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!431 = metadata !{i32 250, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !430, i32 250, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!433 = metadata !{i32 252, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 251, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!435 = metadata !{i32 260, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !108, i32 260, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!437 = metadata !{i32 253, i32 0, metadata !434, null}
!438 = metadata !{i32 254, i32 0, metadata !434, null}
!439 = metadata !{metadata !"any pointer", metadata !267}
!440 = metadata !{i32 262, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !436, i32 261, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!442 = metadata !{i32 263, i32 0, metadata !441, null}
!443 = metadata !{i32 264, i32 0, metadata !441, null}
!444 = metadata !{i32 267, i32 0, metadata !108, null}
!445 = metadata !{i32 268, i32 0, metadata !108, null}
!446 = metadata !{i32 279, i32 0, metadata !125, null}
!447 = metadata !{i32 282, i32 0, metadata !125, null}
!448 = metadata !{i32 283, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !450, i32 283, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!450 = metadata !{i32 786443, metadata !1, metadata !125, i32 282, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!451 = metadata !{i32 287, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !1, metadata !453, i32 287, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!453 = metadata !{i32 786443, metadata !1, metadata !125, i32 286, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!454 = metadata !{i32 284, i32 0, metadata !449, null}
!455 = metadata !{i32 288, i32 0, metadata !452, null}
!456 = metadata !{i32 285, i32 0, metadata !450, null}
!457 = metadata !{i32 291, i32 0, metadata !125, null}
!458 = metadata !{i32 294, i32 0, metadata !133, null}
!459 = metadata !{i32 299, i32 0, metadata !133, null}
!460 = metadata !{i32 301, i32 0, metadata !133, null}
!461 = metadata !{i32 302, i32 0, metadata !133, null}
!462 = metadata !{i32 303, i32 0, metadata !133, null}
!463 = metadata !{i32 304, i32 0, metadata !133, null}
!464 = metadata !{i32 305, i32 0, metadata !133, null}
!465 = metadata !{i32 306, i32 0, metadata !133, null}
!466 = metadata !{i32 309, i32 0, metadata !133, null}
!467 = metadata !{i32 310, i32 0, metadata !133, null}
!468 = metadata !{i32 311, i32 0, metadata !133, null}
!469 = metadata !{i32 312, i32 0, metadata !133, null}
!470 = metadata !{i32 314, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !133, i32 314, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!472 = metadata !{i32 315, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !471, i32 314, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!474 = metadata !{i32 316, i32 0, metadata !473, null}
!475 = metadata !{i32 318, i32 0, metadata !133, null}
!476 = metadata !{i32 319, i32 0, metadata !133, null}
!477 = metadata !{i32 321, i32 0, metadata !133, null}
!478 = metadata !{i32 322, i32 0, metadata !133, null}
!479 = metadata !{i32 325, i32 0, metadata !133, null}
!480 = metadata !{i32 326, i32 0, metadata !133, null}
!481 = metadata !{i32 342, i32 0, metadata !144, null}
!482 = metadata !{i32 346, i32 0, metadata !144, null}
!483 = metadata !{i32 347, i32 0, metadata !144, null}
!484 = metadata !{i32 348, i32 0, metadata !144, null}
!485 = metadata !{i32 352, i32 0, metadata !144, null}
!486 = metadata !{i32 353, i32 0, metadata !144, null}
!487 = metadata !{i32 354, i32 0, metadata !144, null}
!488 = metadata !{i32 355, i32 0, metadata !144, null}
!489 = metadata !{i32 356, i32 0, metadata !144, null}
!490 = metadata !{i32 357, i32 0, metadata !144, null}
!491 = metadata !{i32 1}
!492 = metadata !{i32 361, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !144, i32 361, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!494 = metadata !{i32 406, i32 0, metadata !144, null}
!495 = metadata !{i32 372, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !493, i32 362, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!497 = metadata !{i32 379, i32 0, metadata !496, null}
!498 = metadata !{i32 380, i32 0, metadata !496, null}
!499 = metadata !{i32 387, i32 0, metadata !496, null}
!500 = metadata !{i32 388, i32 0, metadata !496, null}
!501 = metadata !{i32 395, i32 0, metadata !496, null}
!502 = metadata !{i32 399, i32 0, metadata !496, null}
!503 = metadata !{i32 400, i32 0, metadata !496, null}
!504 = metadata !{i32 401, i32 0, metadata !496, null}
!505 = metadata !{i32 374, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !496, i32 373, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!507 = metadata !{i32 375, i32 0, metadata !506, null}
!508 = metadata !{i32 376, i32 0, metadata !506, null}
!509 = metadata !{i32 377, i32 0, metadata !506, null}
!510 = metadata !{i32 382, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !496, i32 381, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!512 = metadata !{i32 383, i32 0, metadata !511, null}
!513 = metadata !{i32 384, i32 0, metadata !511, null}
!514 = metadata !{i32 385, i32 0, metadata !511, null}
!515 = metadata !{i32 390, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !496, i32 389, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!517 = metadata !{i32 391, i32 0, metadata !516, null}
!518 = metadata !{i32 392, i32 0, metadata !516, null}
!519 = metadata !{i32 393, i32 0, metadata !516, null}
!520 = metadata !{i32 408, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !144, i32 407, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!522 = metadata !{i32 409, i32 0, metadata !521, null}
!523 = metadata !{i32 410, i32 0, metadata !521, null}
!524 = metadata !{i32 411, i32 0, metadata !521, null}
!525 = metadata !{i32 413, i32 0, metadata !144, null}
!526 = metadata !{i32 415, i32 0, metadata !144, null}
!527 = metadata !{i32 419, i32 0, metadata !144, null}
!528 = metadata !{i32 420, i32 0, metadata !144, null}
!529 = metadata !{i32 520, i32 0, metadata !230, null}
!530 = metadata !{i32 521, i32 0, metadata !230, null}
!531 = metadata !{i32 525, i32 0, metadata !230, null}
!532 = metadata !{i32 529, i32 0, metadata !230, null}
!533 = metadata !{i32 530, i32 0, metadata !230, null}
!534 = metadata !{i32 532, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !536, i32 532, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!536 = metadata !{i32 786443, metadata !1, metadata !230, i32 531, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!537 = metadata !{i32 536, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !535, i32 533, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!539 = metadata !{i32 537, i32 0, metadata !538, null}
!540 = metadata !{i32 534, i32 0, metadata !538, null}
!541 = metadata !{i32 535, i32 0, metadata !538, null}
!542 = metadata !{i32 539, i32 0, metadata !536, null}
!543 = metadata !{i32 540, i32 0, metadata !536, null}
!544 = metadata !{i32 542, i32 0, metadata !230, null}
!545 = metadata !{i32 543, i32 0, metadata !230, null}
!546 = metadata !{i32 544, i32 0, metadata !230, null}
!547 = metadata !{i32 546, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !230, i32 546, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!549 = metadata !{i32 549, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !551, i32 549, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!551 = metadata !{i32 786443, metadata !1, metadata !548, i32 547, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!552 = metadata !{i32 553, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !554, i32 551, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!554 = metadata !{i32 786443, metadata !1, metadata !550, i32 550, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!555 = metadata !{i32 551, i32 0, metadata !554, null}
!556 = metadata !{i32 554, i32 0, metadata !553, null}
!557 = metadata !{i32 555, i32 0, metadata !553, null}
!558 = metadata !{i32 557, i32 0, metadata !553, null}
!559 = metadata !{i32 559, i32 0, metadata !553, null}
!560 = metadata !{i32 561, i32 0, metadata !553, null}
!561 = metadata !{i32 563, i32 0, metadata !553, null}
!562 = metadata !{i32 566, i32 0, metadata !551, null}
!563 = metadata !{i32 568, i32 0, metadata !230, null}
!564 = metadata !{i32 569, i32 0, metadata !230, null}
!565 = metadata !{i32 570, i32 0, metadata !230, null}
!566 = metadata !{i32 571, i32 0, metadata !230, null}
!567 = metadata !{i32 443, i32 0, metadata !213, null}
!568 = metadata !{i32 444, i32 0, metadata !213, null}
!569 = metadata !{i32 445, i32 0, metadata !213, null}
!570 = metadata !{i32 449, i32 0, metadata !213, null}
!571 = metadata !{i32 466, i32 0, metadata !213, null}
!572 = metadata !{i32 467, i32 0, metadata !213, null}
!573 = metadata !{i32 469, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !575, i32 469, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!575 = metadata !{i32 786443, metadata !1, metadata !213, i32 468, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!576 = metadata !{i32 471, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !574, i32 470, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!578 = metadata !{i32 472, i32 0, metadata !577, null}
!579 = metadata !{i32 474, i32 0, metadata !575, null}
!580 = metadata !{i32 475, i32 0, metadata !575, null}
!581 = metadata !{i32 476, i32 0, metadata !213, null}
!582 = metadata !{i32 478, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !584, i32 478, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!584 = metadata !{i32 786443, metadata !1, metadata !213, i32 477, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!585 = metadata !{i32 479, i32 0, metadata !583, null}
!586 = metadata !{i32 480, i32 0, metadata !584, null}
!587 = metadata !{i32 481, i32 0, metadata !584, null}
!588 = metadata !{i32 485, i32 0, metadata !213, null}
!589 = metadata !{i32 486, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !213, i32 486, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!591 = metadata !{i32 488, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !593, i32 488, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!593 = metadata !{i32 786443, metadata !1, metadata !590, i32 486, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!594 = metadata !{i32 490, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !592, i32 488, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!596 = metadata !{i32 489, i32 0, metadata !595, null}
!597 = metadata !{i32 492, i32 0, metadata !593, null}
!598 = metadata !{i32 494, i32 0, metadata !213, null}
!599 = metadata !{i32 496, i32 0, metadata !213, null}
!600 = metadata !{i32 497, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !213, i32 497, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/prior.c]
!602 = metadata !{i32 498, i32 0, metadata !601, null}
!603 = metadata !{i32 499, i32 0, metadata !213, null}
