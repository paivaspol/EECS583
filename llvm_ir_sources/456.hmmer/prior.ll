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
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #5
  %0 = bitcast i8* %call to %struct.p7prior_s*
  ret %struct.p7prior_s* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @P7FreePrior(%struct.p7prior_s* nocapture %pri) #0 {
entry:
  %0 = bitcast %struct.p7prior_s* %pri to i8*
  tail call void @free(i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7LaplacePrior() #0 {
entry:
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #5
  %0 = bitcast i8* %call.i to %struct.p7prior_s*
  %strategy = bitcast i8* %call.i to i32*
  store i32 0, i32* %strategy, align 4, !tbaa !0
  %tnum = getelementptr inbounds i8* %call.i, i64 4
  %1 = bitcast i8* %tnum to i32*
  store i32 1, i32* %1, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %call.i, i64 8
  %2 = bitcast i8* %arrayidx to float*
  store float 1.000000e+00, float* %2, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds i8* %call.i, i64 808
  %3 = bitcast i8* %arraydecay to float*
  tail call void @FSet(float* %3, i32 8, float 1.000000e+00) #5
  %mnum = getelementptr inbounds i8* %call.i, i64 6408
  %4 = bitcast i8* %mnum to i32*
  store i32 1, i32* %4, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i8* %call.i, i64 6412
  %5 = bitcast i8* %arrayidx2 to float*
  store float 1.000000e+00, float* %5, align 4, !tbaa !3
  %arraydecay4 = getelementptr inbounds i8* %call.i, i64 7212
  %6 = bitcast i8* %arraydecay4 to float*
  %7 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %6, i32 %7, float 1.000000e+00) #5
  %inum = getelementptr inbounds i8* %call.i, i64 23212
  %8 = bitcast i8* %inum to i32*
  store i32 1, i32* %8, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8* %call.i, i64 23216
  %9 = bitcast i8* %arrayidx5 to float*
  store float 1.000000e+00, float* %9, align 4, !tbaa !3
  %arraydecay7 = getelementptr inbounds i8* %call.i, i64 24016
  %10 = bitcast i8* %arraydecay7 to float*
  %11 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %10, i32 %11, float 1.000000e+00) #5
  ret %struct.p7prior_s* %0
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7DefaultPrior() #0 {
entry:
  %0 = load i32* @Alphabet_type, align 4, !tbaa !0
  switch i32 %0, label %return [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #5
  %1 = bitcast i8* %call.i.i to %struct.p7prior_s*
  %strategy.i = bitcast i8* %call.i.i to i32*
  store i32 0, i32* %strategy.i, align 4, !tbaa !0
  %tnum.i = getelementptr inbounds i8* %call.i.i, i64 4
  %2 = bitcast i8* %tnum.i to i32*
  store i32 1, i32* %2, align 4, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %call.i.i, i64 8
  %3 = bitcast i8* %arrayidx.i to float*
  store float 1.000000e+00, float* %3, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds i8* %call.i.i, i64 808
  %4 = bitcast i8* %arrayidx2.i to float*
  store float 0x3FE967A100000000, float* %4, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds i8* %call.i.i, i64 812
  %5 = bitcast i8* %arrayidx5.i to float*
  store float 0x3F9C779A60000000, float* %5, align 4, !tbaa !3
  %arrayidx8.i = getelementptr inbounds i8* %call.i.i, i64 816
  %6 = bitcast i8* %arrayidx8.i to float*
  store float 0x3F8BA5E360000000, float* %6, align 4, !tbaa !3
  %arrayidx11.i = getelementptr inbounds i8* %call.i.i, i64 820
  %7 = bitcast i8* %arrayidx11.i to float*
  store float 0x3FC3DA5120000000, float* %7, align 4, !tbaa !3
  %arrayidx14.i = getelementptr inbounds i8* %call.i.i, i64 824
  %8 = bitcast i8* %arrayidx14.i to float*
  store float 0x3FC1096BC0000000, float* %8, align 4, !tbaa !3
  %arrayidx17.i = getelementptr inbounds i8* %call.i.i, i64 828
  %9 = bitcast i8* %arrayidx17.i to float*
  store float 0x3FECCE7040000000, float* %9, align 4, !tbaa !3
  %arrayidx20.i = getelementptr inbounds i8* %call.i.i, i64 832
  %10 = bitcast i8* %arrayidx20.i to float*
  store float 0x3FE20418A0000000, float* %10, align 4, !tbaa !3
  %mnum.i = getelementptr inbounds i8* %call.i.i, i64 6408
  %11 = bitcast i8* %mnum.i to i32*
  store i32 9, i32* %11, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc36.i, %sw.bb
  %indvars.iv146.i = phi i64 [ 0, %sw.bb ], [ %indvars.iv.next147.i, %for.inc36.i ]
  %arrayidx22.i = getelementptr inbounds [9 x float]* @default_amino_prior.defmq, i64 0, i64 %indvars.iv146.i
  %12 = load float* %arrayidx22.i, align 4, !tbaa !3
  %arrayidx24.i = getelementptr inbounds %struct.p7prior_s* %1, i64 0, i32 5, i64 %indvars.iv146.i
  store float %12, float* %arrayidx24.i, align 4, !tbaa !3
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body27.i ]
  %arrayidx31.i = getelementptr inbounds [9 x [20 x float]]* @default_amino_prior.defm, i64 0, i64 %indvars.iv146.i, i64 %indvars.iv.i
  %13 = load float* %arrayidx31.i, align 4, !tbaa !3
  %arrayidx35.i = getelementptr inbounds %struct.p7prior_s* %1, i64 0, i32 6, i64 %indvars.iv146.i, i64 %indvars.iv.i
  store float %13, float* %arrayidx35.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 20
  br i1 %exitcond, label %for.inc36.i, label %for.body27.i

for.inc36.i:                                      ; preds = %for.body27.i
  %indvars.iv.next147.i = add i64 %indvars.iv146.i, 1
  %14 = load i32* %11, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next147.i to i32
  %cmp.i = icmp slt i32 %15, %14
  br i1 %cmp.i, label %for.body.i, label %default_amino_prior.exit

default_amino_prior.exit:                         ; preds = %for.inc36.i
  %inum.i = getelementptr inbounds i8* %call.i.i, i64 23212
  %16 = bitcast i8* %inum.i to i32*
  store i32 1, i32* %16, align 4, !tbaa !0
  %arrayidx39.i = getelementptr inbounds i8* %call.i.i, i64 23216
  %17 = bitcast i8* %arrayidx39.i to float*
  store float 1.000000e+00, float* %17, align 4, !tbaa !3
  %arrayidx41.i = getelementptr inbounds i8* %call.i.i, i64 24016
  %18 = bitcast i8* %arrayidx41.i to float*
  store float 6.810000e+02, float* %18, align 4, !tbaa !3
  %arrayidx44.i = getelementptr inbounds i8* %call.i.i, i64 24020
  %19 = bitcast i8* %arrayidx44.i to float*
  store float 1.200000e+02, float* %19, align 4, !tbaa !3
  %arrayidx47.i = getelementptr inbounds i8* %call.i.i, i64 24024
  %20 = bitcast i8* %arrayidx47.i to float*
  store float 6.230000e+02, float* %20, align 4, !tbaa !3
  %arrayidx50.i = getelementptr inbounds i8* %call.i.i, i64 24028
  %21 = bitcast i8* %arrayidx50.i to float*
  store float 6.510000e+02, float* %21, align 4, !tbaa !3
  %arrayidx53.i = getelementptr inbounds i8* %call.i.i, i64 24032
  %22 = bitcast i8* %arrayidx53.i to float*
  store float 3.130000e+02, float* %22, align 4, !tbaa !3
  %arrayidx56.i = getelementptr inbounds i8* %call.i.i, i64 24036
  %23 = bitcast i8* %arrayidx56.i to float*
  store float 9.020000e+02, float* %23, align 4, !tbaa !3
  %arrayidx59.i = getelementptr inbounds i8* %call.i.i, i64 24040
  %24 = bitcast i8* %arrayidx59.i to float*
  store float 2.410000e+02, float* %24, align 4, !tbaa !3
  %arrayidx62.i = getelementptr inbounds i8* %call.i.i, i64 24044
  %25 = bitcast i8* %arrayidx62.i to float*
  store float 3.710000e+02, float* %25, align 4, !tbaa !3
  %arrayidx65.i = getelementptr inbounds i8* %call.i.i, i64 24048
  %26 = bitcast i8* %arrayidx65.i to float*
  store float 6.870000e+02, float* %26, align 4, !tbaa !3
  %arrayidx68.i = getelementptr inbounds i8* %call.i.i, i64 24052
  %27 = bitcast i8* %arrayidx68.i to float*
  store float 6.760000e+02, float* %27, align 4, !tbaa !3
  %arrayidx71.i = getelementptr inbounds i8* %call.i.i, i64 24056
  %28 = bitcast i8* %arrayidx71.i to float*
  store float 1.430000e+02, float* %28, align 4, !tbaa !3
  %arrayidx74.i = getelementptr inbounds i8* %call.i.i, i64 24060
  %29 = bitcast i8* %arrayidx74.i to float*
  store float 5.480000e+02, float* %29, align 4, !tbaa !3
  %arrayidx77.i = getelementptr inbounds i8* %call.i.i, i64 24064
  %30 = bitcast i8* %arrayidx77.i to float*
  store float 6.470000e+02, float* %30, align 4, !tbaa !3
  %arrayidx80.i = getelementptr inbounds i8* %call.i.i, i64 24068
  %31 = bitcast i8* %arrayidx80.i to float*
  store float 4.150000e+02, float* %31, align 4, !tbaa !3
  %arrayidx83.i = getelementptr inbounds i8* %call.i.i, i64 24072
  %32 = bitcast i8* %arrayidx83.i to float*
  store float 5.510000e+02, float* %32, align 4, !tbaa !3
  %arrayidx86.i = getelementptr inbounds i8* %call.i.i, i64 24076
  %33 = bitcast i8* %arrayidx86.i to float*
  store float 9.260000e+02, float* %33, align 4, !tbaa !3
  %arrayidx89.i = getelementptr inbounds i8* %call.i.i, i64 24080
  %34 = bitcast i8* %arrayidx89.i to float*
  store float 6.230000e+02, float* %34, align 4, !tbaa !3
  %arrayidx92.i = getelementptr inbounds i8* %call.i.i, i64 24084
  %35 = bitcast i8* %arrayidx92.i to float*
  store float 5.050000e+02, float* %35, align 4, !tbaa !3
  %arrayidx95.i = getelementptr inbounds i8* %call.i.i, i64 24088
  %36 = bitcast i8* %arrayidx95.i to float*
  store float 1.020000e+02, float* %36, align 4, !tbaa !3
  %arrayidx98.i = getelementptr inbounds i8* %call.i.i, i64 24092
  %37 = bitcast i8* %arrayidx98.i to float*
  store float 2.690000e+02, float* %37, align 4, !tbaa !3
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i.i4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #5
  %38 = bitcast i8* %call.i.i4 to %struct.p7prior_s*
  %strategy.i5 = bitcast i8* %call.i.i4 to i32*
  store i32 0, i32* %strategy.i5, align 4, !tbaa !0
  %tnum.i6 = getelementptr inbounds i8* %call.i.i4, i64 4
  %39 = bitcast i8* %tnum.i6 to i32*
  store i32 1, i32* %39, align 4, !tbaa !0
  %arrayidx.i7 = getelementptr inbounds i8* %call.i.i4, i64 8
  %40 = bitcast i8* %arrayidx.i7 to float*
  store float 1.000000e+00, float* %40, align 4, !tbaa !3
  %arrayidx2.i8 = getelementptr inbounds i8* %call.i.i4, i64 808
  %41 = bitcast i8* %arrayidx2.i8 to float*
  store float 0x3FE967A100000000, float* %41, align 4, !tbaa !3
  %arrayidx5.i9 = getelementptr inbounds i8* %call.i.i4, i64 812
  %42 = bitcast i8* %arrayidx5.i9 to float*
  store float 0x3F9C779A60000000, float* %42, align 4, !tbaa !3
  %arrayidx8.i10 = getelementptr inbounds i8* %call.i.i4, i64 816
  %43 = bitcast i8* %arrayidx8.i10 to float*
  store float 0x3F8BA5E360000000, float* %43, align 4, !tbaa !3
  %arrayidx11.i11 = getelementptr inbounds i8* %call.i.i4, i64 820
  %44 = bitcast i8* %arrayidx11.i11 to float*
  store float 0x3FC3DA5120000000, float* %44, align 4, !tbaa !3
  %arrayidx14.i12 = getelementptr inbounds i8* %call.i.i4, i64 824
  %45 = bitcast i8* %arrayidx14.i12 to float*
  store float 0x3FC1096BC0000000, float* %45, align 4, !tbaa !3
  %arrayidx17.i13 = getelementptr inbounds i8* %call.i.i4, i64 828
  %46 = bitcast i8* %arrayidx17.i13 to float*
  store float 0x3FECCE7040000000, float* %46, align 4, !tbaa !3
  %arrayidx20.i14 = getelementptr inbounds i8* %call.i.i4, i64 832
  %47 = bitcast i8* %arrayidx20.i14 to float*
  store float 0x3FE20418A0000000, float* %47, align 4, !tbaa !3
  %mnum.i15 = getelementptr inbounds i8* %call.i.i4, i64 6408
  %48 = bitcast i8* %mnum.i15 to i32*
  store i32 1, i32* %48, align 4, !tbaa !0
  %arrayidx21.i = getelementptr inbounds i8* %call.i.i4, i64 6412
  %49 = bitcast i8* %arrayidx21.i to float*
  store float 1.000000e+00, float* %49, align 4, !tbaa !3
  %arraydecay.i = getelementptr inbounds i8* %call.i.i4, i64 7212
  %50 = bitcast i8* %arraydecay.i to float*
  %51 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %50, i32 %51, float 1.000000e+00) #5
  %inum.i16 = getelementptr inbounds i8* %call.i.i4, i64 23212
  %52 = bitcast i8* %inum.i16 to i32*
  store i32 1, i32* %52, align 4, !tbaa !0
  %arrayidx23.i = getelementptr inbounds i8* %call.i.i4, i64 23216
  %53 = bitcast i8* %arrayidx23.i to float*
  store float 1.000000e+00, float* %53, align 4, !tbaa !3
  %arraydecay25.i = getelementptr inbounds i8* %call.i.i4, i64 24016
  %54 = bitcast i8* %arraydecay25.i to float*
  %55 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %54, i32 %55, float 1.000000e+00) #5
  br label %return

sw.bb3:                                           ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %entry, %sw.bb3, %sw.bb1, %default_amino_prior.exit
  %retval.0 = phi %struct.p7prior_s* [ %38, %sw.bb1 ], [ %1, %default_amino_prior.exit ], [ null, %sw.bb3 ], [ null, %entry ]
  ret %struct.p7prior_s* %retval.0
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.p7prior_s* @P7ReadPrior(i8* %prifile) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %prifile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i8* %prifile) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 40016) #5
  %0 = bitcast i8* %call.i to %struct.p7prior_s*
  %call2 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #5
  tail call void @s2upper(i8* %call2) #5
  %call3 = tail call i32 @strcmp(i8* %call2, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %strategy = bitcast i8* %call.i to i32*
  store i32 0, i32* %strategy, align 4, !tbaa !0
  br label %if.end6

if.else:                                          ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %call2, i8* %prifile) #5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %call7 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #5
  tail call void @s2upper(i8* %call7) #5
  %call8 = tail call i32 @strcmp(i8* %call7, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end6
  %1 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %1, 3
  br i1 %cmp11, label %if.end23, label %if.then12

if.then12:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i8* %prifile) #5
  br label %if.end23

if.else14:                                        ; preds = %if.end6
  %call15 = tail call i32 @strcmp(i8* %call7, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #6
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else14
  %2 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %2, 2
  br i1 %cmp18, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.then17
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str9, i64 0, i64 0), i8* %prifile) #5
  br label %if.end23

if.else21:                                        ; preds = %if.else14
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0), i8* %call7, i8* %prifile) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then10, %if.then17, %if.else21, %if.then19, %if.then12
  %call24 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #5
  %call25 = tail call i32 @atoi(i8* %call24) #6
  %tnum = getelementptr inbounds i8* %call.i, i64 4
  %3 = bitcast i8* %tnum to i32*
  store i32 %call25, i32* %3, align 4, !tbaa !0
  %cmp27 = icmp slt i32 %call25, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i32 %call25) #5
  %.pr = load i32* %3, align 4, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23
  %4 = phi i32 [ %.pr, %if.then28 ], [ %call25, %if.end23 ]
  %cmp32 = icmp sgt i32 %4, 200
  br i1 %cmp32, label %if.then33, label %for.cond.preheader

if.then33:                                        ; preds = %if.end30
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str12, i64 0, i64 0), i32 200) #5
  %.pre = load i32* %3, align 4, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then33, %if.end30
  %5 = phi i32 [ %.pre, %if.then33 ], [ %4, %if.end30 ]
  %cmp36209 = icmp sgt i32 %5, 0
  br i1 %cmp36209, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond.preheader, %for.inc50
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.inc50 ], [ 0, %for.cond.preheader ]
  %call37 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call38 = tail call double @atof(i8* %call37) #6
  %conv = fptrunc double %call38 to float
  %arrayidx = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 2, i64 %indvars.iv219
  store float %conv, float* %arrayidx, align 4, !tbaa !3
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.body
  %indvars.iv217 = phi i64 [ 0, %for.body ], [ %indvars.iv.next218, %for.body42 ]
  %call43 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call44 = tail call double @atof(i8* %call43) #6
  %conv45 = fptrunc double %call44 to float
  %arrayidx49 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 3, i64 %indvars.iv219, i64 %indvars.iv217
  store float %conv45, float* %arrayidx49, align 4, !tbaa !3
  %indvars.iv.next218 = add i64 %indvars.iv217, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next218 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.inc50, label %for.body42

for.inc50:                                        ; preds = %for.body42
  %indvars.iv.next220 = add i64 %indvars.iv219, 1
  %6 = load i32* %3, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next220 to i32
  %cmp36 = icmp slt i32 %7, %6
  br i1 %cmp36, label %for.body, label %for.end52

for.end52:                                        ; preds = %for.inc50, %for.cond.preheader
  %call53 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #5
  %call54 = tail call i32 @atoi(i8* %call53) #6
  %mnum = getelementptr inbounds i8* %call.i, i64 6408
  %8 = bitcast i8* %mnum to i32*
  store i32 %call54, i32* %8, align 4, !tbaa !0
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %for.end52
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i32 %call54) #5
  %.pr198 = load i32* %8, align 4, !tbaa !0
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.end52
  %9 = phi i32 [ %.pr198, %if.then58 ], [ %call54, %for.end52 ]
  %cmp62 = icmp sgt i32 %9, 200
  br i1 %cmp62, label %if.then64, label %for.cond67.preheader

if.then64:                                        ; preds = %if.end60
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str14, i64 0, i64 0), i32 %9, i32 200) #5
  %.pre221 = load i32* %8, align 4, !tbaa !0
  br label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %if.then64, %if.end60
  %10 = phi i32 [ %.pre221, %if.then64 ], [ %9, %if.end60 ]
  %cmp69206 = icmp sgt i32 %10, 0
  br i1 %cmp69206, label %for.body71, label %for.end93

for.body71:                                       ; preds = %for.cond67.preheader, %for.inc91
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %for.inc91 ], [ 0, %for.cond67.preheader ]
  %call72 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call73 = tail call double @atof(i8* %call72) #6
  %conv74 = fptrunc double %call73 to float
  %arrayidx76 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 5, i64 %indvars.iv215
  store float %conv74, float* %arrayidx76, align 4, !tbaa !3
  %11 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp78204 = icmp sgt i32 %11, 0
  br i1 %cmp78204, label %for.body80, label %for.inc91

for.body80:                                       ; preds = %for.body71, %for.body80
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %for.body80 ], [ 0, %for.body71 ]
  %call81 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call82 = tail call double @atof(i8* %call81) #6
  %conv83 = fptrunc double %call82 to float
  %arrayidx87 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 6, i64 %indvars.iv215, i64 %indvars.iv213
  store float %conv83, float* %arrayidx87, align 4, !tbaa !3
  %indvars.iv.next214 = add i64 %indvars.iv213, 1
  %12 = load i32* @Alphabet_size, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next214 to i32
  %cmp78 = icmp slt i32 %13, %12
  br i1 %cmp78, label %for.body80, label %for.inc91

for.inc91:                                        ; preds = %for.body80, %for.body71
  %indvars.iv.next216 = add i64 %indvars.iv215, 1
  %14 = load i32* %8, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next216 to i32
  %cmp69 = icmp slt i32 %15, %14
  br i1 %cmp69, label %for.body71, label %for.end93

for.end93:                                        ; preds = %for.inc91, %for.cond67.preheader
  %call94 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 1) #5
  %call95 = tail call i32 @atoi(i8* %call94) #6
  %inum = getelementptr inbounds i8* %call.i, i64 23212
  %16 = bitcast i8* %inum to i32*
  store i32 %call95, i32* %16, align 4, !tbaa !0
  %cmp97 = icmp slt i32 %call95, 0
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %for.end93
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str15, i64 0, i64 0), i32 %call95) #5
  %.pr199 = load i32* %16, align 4, !tbaa !0
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %for.end93
  %17 = phi i32 [ %.pr199, %if.then99 ], [ %call95, %for.end93 ]
  %cmp103 = icmp sgt i32 %17, 200
  br i1 %cmp103, label %if.then105, label %for.cond108.preheader

if.then105:                                       ; preds = %if.end101
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0), i32 %17, i32 200) #5
  %.pre222 = load i32* %16, align 4, !tbaa !0
  br label %for.cond108.preheader

for.cond108.preheader:                            ; preds = %if.then105, %if.end101
  %18 = phi i32 [ %.pre222, %if.then105 ], [ %17, %if.end101 ]
  %cmp110202 = icmp sgt i32 %18, 0
  br i1 %cmp110202, label %for.body112, label %for.end134

for.body112:                                      ; preds = %for.cond108.preheader, %for.inc132
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.inc132 ], [ 0, %for.cond108.preheader ]
  %call113 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call114 = tail call double @atof(i8* %call113) #6
  %conv115 = fptrunc double %call114 to float
  %arrayidx117 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 8, i64 %indvars.iv211
  store float %conv115, float* %arrayidx117, align 4, !tbaa !3
  %19 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp119200 = icmp sgt i32 %19, 0
  br i1 %cmp119200, label %for.body121, label %for.inc132

for.body121:                                      ; preds = %for.body112, %for.body121
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body121 ], [ 0, %for.body112 ]
  %call122 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %call123 = tail call double @atof(i8* %call122) #6
  %conv124 = fptrunc double %call123 to float
  %arrayidx128 = getelementptr inbounds %struct.p7prior_s* %0, i64 0, i32 9, i64 %indvars.iv211, i64 %indvars.iv
  store float %conv124, float* %arrayidx128, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = load i32* @Alphabet_size, align 4, !tbaa !0
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp119 = icmp slt i32 %21, %20
  br i1 %cmp119, label %for.body121, label %for.inc132

for.inc132:                                       ; preds = %for.body121, %for.body112
  %indvars.iv.next212 = add i64 %indvars.iv211, 1
  %22 = load i32* %16, align 4, !tbaa !0
  %23 = trunc i64 %indvars.iv.next212 to i32
  %cmp110 = icmp slt i32 %23, %22
  br i1 %cmp110, label %for.body112, label %for.end134

for.end134:                                       ; preds = %for.inc132, %for.cond108.preheader
  %call135 = tail call i32 @fclose(%struct._IO_FILE* %call) #5
  ret %struct.p7prior_s* %0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @Getword(%struct._IO_FILE*, i32) #1

; Function Attrs: optsize
declare void @s2upper(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @PAMPrior(i8* %pamfile, %struct.p7prior_s* %pri, float %wt) #0 {
entry:
  %pam = alloca i32**, align 8
  %scale = alloca float, align 4
  %0 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str17, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %strategy = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0
  %1 = load i32* %strategy, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str18, i64 0, i64 0)) #5
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %inum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7
  %2 = load i32* %inum, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %2, 1
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([67 x i8]* @.str19, i64 0, i64 0)) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end3, %if.then5
  %call = call i8* @FileConcat(i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* %pamfile) #5
  %call7 = call %struct._IO_FILE* @fopen(i8* %pamfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %call9 = call %struct._IO_FILE* @EnvFileOpen(i8* %pamfile, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #5
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = call %struct._IO_FILE* @EnvFileOpen(i8* %call, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8** null) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str22, i64 0, i64 0), i8* %pamfile) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true11, %land.lhs.true, %if.end6
  %fp.0 = phi %struct._IO_FILE* [ null, %if.then14 ], [ %call12, %land.lhs.true11 ], [ %call9, %land.lhs.true ], [ %call7, %if.end6 ]
  %call16 = call i32 @ParsePAMFile(%struct._IO_FILE* %fp.0, i32*** %pam, float* %scale) #5
  %tobool = icmp eq i32 %call16, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str23, i64 0, i64 0), i8* %pamfile) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.then17
  %call19 = call i32 @fclose(%struct._IO_FILE* %fp.0) #5
  call void @free(i8* %call) #5
  store i32 1, i32* %strategy, align 4, !tbaa !0
  %mnum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  store i32 20, i32* %mnum, align 4, !tbaa !0
  %3 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp2194 = icmp sgt i32 %3, 0
  br i1 %cmp2194, label %for.cond22.preheader, label %for.end65

for.cond22.preheader:                             ; preds = %if.end18, %for.inc45
  %4 = phi i32 [ %14, %for.inc45 ], [ %3, %if.end18 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc45 ], [ 0, %if.end18 ]
  %cmp2392 = icmp sgt i32 %4, 0
  br i1 %cmp2392, label %for.body24.lr.ph, label %for.inc45

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %arrayidx = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv98
  br label %for.body24

for.cond48.preheader:                             ; preds = %for.inc45
  %cmp4990 = icmp sgt i32 %14, 0
  br i1 %cmp4990, label %for.body51, label %for.end65

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %indvars.iv96 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next97, %for.body24 ]
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %5 to i64
  %sub = add i64 %conv, -65
  %arrayidx26 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv96
  %6 = load i8* %arrayidx26, align 1, !tbaa !1
  %conv27 = sext i8 %6 to i64
  %sub28 = add i64 %conv27, -65
  %arrayidx30 = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv96
  %7 = load float* %arrayidx30, align 4, !tbaa !3
  %conv31 = fpext float %7 to double
  %8 = load i32*** %pam, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i32** %8, i64 %sub
  %9 = load i32** %arrayidx34, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i32* %9, i64 %sub28
  %10 = load i32* %arrayidx35, align 4, !tbaa !0
  %conv36 = sitofp i32 %10 to float
  %11 = load float* %scale, align 4, !tbaa !3
  %mul = fmul float %conv36, %11
  %conv37 = fpext float %mul to double
  %call38 = call double @exp(double %conv37) #5
  %mul39 = fmul double %conv31, %call38
  %conv40 = fptrunc double %mul39 to float
  %arrayidx44 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv98, i64 %indvars.iv96
  store float %conv40, float* %arrayidx44, align 4, !tbaa !3
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %12 = load i32* @Alphabet_size, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next97 to i32
  %cmp23 = icmp slt i32 %13, %12
  br i1 %cmp23, label %for.body24, label %for.inc45

for.inc45:                                        ; preds = %for.body24, %for.cond22.preheader
  %14 = phi i32 [ %4, %for.cond22.preheader ], [ %12, %for.body24 ]
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %15 = trunc i64 %indvars.iv.next99 to i32
  %cmp21 = icmp slt i32 %15, %14
  br i1 %cmp21, label %for.cond22.preheader, label %for.cond48.preheader

for.body51:                                       ; preds = %for.cond48.preheader, %for.body51
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body51 ], [ 0, %for.cond48.preheader ]
  %16 = phi i32 [ %18, %for.body51 ], [ %14, %for.cond48.preheader ]
  %conv52 = sitofp i32 %16 to double
  %div = fdiv double 1.000000e+00, %conv52
  %conv53 = fptrunc double %div to float
  %arrayidx55 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 %indvars.iv
  store float %conv53, float* %arrayidx55, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv, i64 0
  call void @FNorm(float* %arraydecay, i32 %16) #5
  %17 = load i32* @Alphabet_size, align 4, !tbaa !0
  call void @FScale(float* %arraydecay, i32 %17, float %wt) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = load i32* @Alphabet_size, align 4, !tbaa !0
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp49 = icmp slt i32 %19, %18
  br i1 %cmp49, label %for.body51, label %for.end65

for.end65:                                        ; preds = %if.end18, %for.body51, %for.cond48.preheader
  %20 = load i32*** %pam, align 8, !tbaa !4
  %21 = bitcast i32** %20 to i8**
  call void @Free2DArray(i8** %21, i32 27) #5
  ret void
}

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

; Function Attrs: optsize
declare i32 @ParsePAMFile(%struct._IO_FILE*, i32***, float*) #1

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7DefaultNullModel(float* nocapture %null, float* nocapture %ret_p1) #0 {
entry:
  %0 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  %1 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp122 = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %entry
  br i1 %cmp122, label %for.body6, label %if.end

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp122, label %for.body, label %if.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv
  %2 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds float* %null, i64 %indvars.iv
  store float %2, float* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %3, %1
  br i1 %cmp1, label %for.body, label %if.end

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body6 ], [ 0, %for.cond4.preheader ]
  %conv = sitofp i32 %1 to float
  %conv8 = fdiv float 1.000000e+00, %conv
  %arrayidx10 = getelementptr inbounds float* %null, i64 %indvars.iv28
  store float %conv8, float* %arrayidx10, align 4, !tbaa !3
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  %4 = trunc i64 %indvars.iv.next29 to i32
  %cmp5 = icmp slt i32 %4, %1
  br i1 %cmp5, label %for.body6, label %if.end

if.end:                                           ; preds = %for.cond4.preheader, %for.body6, %for.cond.preheader, %for.body
  %storemerge = phi float [ 0x3FEFE8A940000000, %for.body ], [ 0x3FEFE8A940000000, %for.cond.preheader ], [ 0x3FEFF7D100000000, %for.body6 ], [ 0x3FEFF7D100000000, %for.cond4.preheader ]
  store float %storemerge, float* %ret_p1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7ReadNullModel(i8* %rndfile, float* nocapture %null, float* nocapture %ret_p1) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %rndfile, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i8* %rndfile) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 4) #5
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %FAILURE, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @s2upper(i8* %call1) #5
  %call5 = tail call i32 @strcmp(i8* %call1, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end13, label %if.else

if.else:                                          ; preds = %if.end4
  %call8 = tail call i32 @strcmp(i8* %call1, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end13, label %FAILURE

if.end13:                                         ; preds = %if.else, %if.end4
  %type.0 = phi i32 [ 2, %if.end4 ], [ 3, %if.else ]
  %0 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %0, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end13
  tail call void @SetAlphabet(i32 %type.0) #5
  br label %for.cond.preheader

if.else16:                                        ; preds = %if.end13
  %cmp17 = icmp eq i32 %0, %type.0
  br i1 %cmp17, label %for.cond.preheader, label %if.then18

if.then18:                                        ; preds = %if.else16
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([59 x i8]* @.str25, i64 0, i64 0), i8* %rndfile) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else16, %if.then18, %if.then15
  %1 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp2151 = icmp sgt i32 %1, 0
  %call2252 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %cmp2353 = icmp eq i8* %call2252, null
  br i1 %cmp2151, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %cmp2356 = phi i1 [ %cmp23, %if.end25 ], [ %cmp2353, %for.cond.preheader ]
  %call2255 = phi i8* [ %call22, %if.end25 ], [ %call2252, %for.cond.preheader ]
  br i1 %cmp2356, label %FAILURE, label %if.end25

if.end25:                                         ; preds = %for.body
  %call26 = tail call double @atof(i8* %call2255) #6
  %conv = fptrunc double %call26 to float
  %arrayidx = getelementptr inbounds float* %null, i64 %indvars.iv
  store float %conv, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %2 = load i32* @Alphabet_size, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp21 = icmp slt i32 %3, %2
  %call22 = tail call i8* @Getword(%struct._IO_FILE* %call, i32 2) #5
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp21, label %for.body, label %for.end

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %cmp23.lcssa = phi i1 [ %cmp2353, %for.cond.preheader ], [ %cmp23, %if.end25 ]
  %call22.lcssa = phi i8* [ %call2252, %for.cond.preheader ], [ %call22, %if.end25 ]
  br i1 %cmp23.lcssa, label %FAILURE, label %if.end31

if.end31:                                         ; preds = %for.end
  %call32 = tail call double @atof(i8* %call22.lcssa) #6
  %conv33 = fptrunc double %call32 to float
  store float %conv33, float* %ret_p1, align 4, !tbaa !3
  %call34 = tail call i32 @fclose(%struct._IO_FILE* %call) #5
  br label %return

FAILURE:                                          ; preds = %for.body, %for.end, %if.else, %if.end
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call) #5
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %rndfile) #5
  br label %return

return:                                           ; preds = %FAILURE, %if.end31
  ret void
}

; Function Attrs: optsize
declare void @SetAlphabet(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyHMM(%struct.plan7_s* %hmm, %struct.p7prior_s* %pri) #0 {
entry:
  %tq = alloca [200 x float], align 16
  %mq = alloca [200 x float], align 16
  %iq = alloca [200 x float], align 16
  %0 = bitcast [200 x float]* %tq to i8*
  call void @llvm.lifetime.start(i64 800, i8* %0) #4
  %1 = bitcast [200 x float]* %mq to i8*
  call void @llvm.lifetime.start(i64 800, i8* %1) #4
  %2 = bitcast [200 x float]* %iq to i8*
  call void @llvm.lifetime.start(i64 800, i8* %2) #4
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %3 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %3, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %4 = load i32* %M, align 4, !tbaa !0
  %sub = add nsw i32 %4, -1
  call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00) #5
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %5 = load float** %end, align 8, !tbaa !4
  %add.ptr1 = getelementptr inbounds float* %5, i64 1
  %6 = load i32* %M, align 4, !tbaa !0
  %sub3 = add nsw i32 %6, -1
  call void @FSet(float* %add.ptr1, i32 %sub3, float 0.000000e+00) #5
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %7 = load float* %tbd1, align 4, !tbaa !3
  %8 = load float** %begin, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float* %8, i64 1
  %9 = load float* %arrayidx, align 4, !tbaa !3
  %add = fadd float %7, %9
  %conv6 = fadd float %add, 2.000000e+00
  %conv8 = fpext float %7 to double
  %add9 = fadd double %conv8, 1.000000e+00
  %conv10 = fpext float %conv6 to double
  %div = fdiv double %add9, %conv10
  %conv11 = fptrunc double %div to float
  store float %conv11, float* %tbd1, align 4, !tbaa !3
  %10 = load float* %arrayidx, align 4, !tbaa !3
  %conv15 = fpext float %10 to double
  %add16 = fadd double %conv15, 1.000000e+00
  %div18 = fdiv double %add16, %conv10
  %conv19 = fptrunc double %div18 to float
  store float %conv19, float* %arrayidx, align 4, !tbaa !3
  %11 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %11 to i64
  %12 = load float** %end, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds float* %12, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx24, align 4, !tbaa !3
  %cmp239 = icmp sgt i32 %11, 1
  br i1 %cmp239, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %mpri122.pre = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 11
  %arraydecay46 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 2, i64 0
  %tnum49 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 1
  %mpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12
  %arraydecay75 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0
  %arraydecay77 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0
  %mnum78 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  %ipri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 13
  %arraydecay104 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 8, i64 0
  %inum107 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %arraydecay116 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  %arraydecay121 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 9, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end108
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end108 ]
  %13 = load i32** %tpri, align 8, !tbaa !4
  %cmp27 = icmp eq i32* %13, null
  br i1 %cmp27, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %arrayidx31 = getelementptr inbounds i32* %13, i64 %indvars.iv
  %14 = load i32* %arrayidx31, align 4, !tbaa !0
  %cmp32 = icmp sgt i32 %14, -1
  br i1 %cmp32, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32* %tnum49, align 4, !tbaa !0
  %cmp37 = icmp slt i32 %14, %15
  br i1 %cmp37, label %if.end, label %if.then39

if.then39:                                        ; preds = %if.then
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0)) #5
  %.pre245 = load i32* %tnum49, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then39
  %16 = phi i32 [ %15, %if.then ], [ %.pre245, %if.then39 ]
  call void @FSet(float* %arraydecay46, i32 %16, float 0.000000e+00) #5
  %17 = load i32** %tpri, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i32* %17, i64 %indvars.iv
  %18 = load i32* %arrayidx43, align 4, !tbaa !0
  %idxprom44 = sext i32 %18 to i64
  %arrayidx45 = getelementptr inbounds [200 x float]* %tq, i64 0, i64 %idxprom44
  store float 1.000000e+00, float* %arrayidx45, align 4, !tbaa !3
  br label %if.end50

if.else:                                          ; preds = %for.body, %land.lhs.true
  %19 = load i32* %tnum49, align 4, !tbaa !0
  call void @FCopy(float* %arraydecay46, float* %arraydecay48, i32 %19) #5
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.end
  %20 = load i32** %mpri, align 8, !tbaa !4
  %cmp51 = icmp eq i32* %20, null
  br i1 %cmp51, label %if.else74, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end50
  %arrayidx56 = getelementptr inbounds i32* %20, i64 %indvars.iv
  %21 = load i32* %arrayidx56, align 4, !tbaa !0
  %cmp57 = icmp sgt i32 %21, -1
  br i1 %cmp57, label %if.then59, label %if.else74

if.then59:                                        ; preds = %land.lhs.true53
  %22 = load i32* %mnum78, align 4, !tbaa !0
  %cmp63 = icmp slt i32 %21, %22
  br i1 %cmp63, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then59
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #5
  %.pre244 = load i32* %mnum78, align 4, !tbaa !0
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.then65
  %23 = phi i32 [ %22, %if.then59 ], [ %.pre244, %if.then65 ]
  call void @FSet(float* %arraydecay75, i32 %23, float 0.000000e+00) #5
  %24 = load i32** %mpri, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds i32* %24, i64 %indvars.iv
  %25 = load i32* %arrayidx71, align 4, !tbaa !0
  %idxprom72 = sext i32 %25 to i64
  %arrayidx73 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %idxprom72
  store float 1.000000e+00, float* %arrayidx73, align 4, !tbaa !3
  br label %if.end79

if.else74:                                        ; preds = %if.end50, %land.lhs.true53
  %26 = load i32* %mnum78, align 4, !tbaa !0
  call void @FCopy(float* %arraydecay75, float* %arraydecay77, i32 %26) #5
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.end66
  %27 = load i32** %ipri, align 8, !tbaa !4
  %cmp80 = icmp eq i32* %27, null
  br i1 %cmp80, label %if.else103, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end79
  %arrayidx85 = getelementptr inbounds i32* %27, i64 %indvars.iv
  %28 = load i32* %arrayidx85, align 4, !tbaa !0
  %cmp86 = icmp sgt i32 %28, -1
  br i1 %cmp86, label %if.then88, label %if.else103

if.then88:                                        ; preds = %land.lhs.true82
  %29 = load i32* %inum107, align 4, !tbaa !0
  %cmp92 = icmp slt i32 %28, %29
  br i1 %cmp92, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.then88
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str29, i64 0, i64 0)) #5
  %.pre243 = load i32* %inum107, align 4, !tbaa !0
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %if.then94
  %30 = phi i32 [ %29, %if.then88 ], [ %.pre243, %if.then94 ]
  call void @FSet(float* %arraydecay104, i32 %30, float 0.000000e+00) #5
  %31 = load i32** %ipri, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i32* %31, i64 %indvars.iv
  %32 = load i32* %arrayidx100, align 4, !tbaa !0
  %idxprom101 = sext i32 %32 to i64
  %arrayidx102 = getelementptr inbounds [200 x float]* %iq, i64 0, i64 %idxprom101
  store float 1.000000e+00, float* %arrayidx102, align 4, !tbaa !3
  br label %if.end108

if.else103:                                       ; preds = %if.end79, %land.lhs.true82
  %33 = load i32* %inum107, align 4, !tbaa !0
  call void @FCopy(float* %arraydecay104, float* %arraydecay106, i32 %33) #5
  br label %if.end108

if.end108:                                        ; preds = %if.else103, %if.end95
  %34 = load float*** %t, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds float** %34, i64 %indvars.iv
  %35 = load float** %arrayidx110, align 8, !tbaa !4
  call void @P7PriorifyTransitionVector(float* %35, %struct.p7prior_s* %pri, float* %arraydecay46) #7
  %36 = load float*** %mat, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds float** %36, i64 %indvars.iv
  %37 = load float** %arrayidx113, align 8, !tbaa !4
  %38 = load i32* %mnum78, align 4, !tbaa !0
  call void @P7PriorifyEmissionVector(float* %37, %struct.p7prior_s* %pri, i32 %38, float* %arraydecay75, [20 x float]* %arraydecay116, float* null) #7
  %39 = load float*** %ins, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds float** %39, i64 %indvars.iv
  %40 = load float** %arrayidx118, align 8, !tbaa !4
  %41 = load i32* %inum107, align 4, !tbaa !0
  call void @P7PriorifyEmissionVector(float* %40, %struct.p7prior_s* %pri, i32 %41, float* %arraydecay104, [20 x float]* %arraydecay121, float* null) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %42 = load i32* %M, align 4, !tbaa !0
  %43 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %43, %42
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end108, %entry.for.end_crit_edge
  %mpri122.pre-phi = phi i32** [ %mpri122.pre, %entry.for.end_crit_edge ], [ %mpri, %if.end108 ]
  %.lcssa = phi i32 [ %11, %entry.for.end_crit_edge ], [ %42, %if.end108 ]
  %44 = load i32** %mpri122.pre-phi, align 8, !tbaa !4
  %cmp123 = icmp eq i32* %44, null
  br i1 %cmp123, label %if.else150, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %for.end
  %idxprom127 = sext i32 %.lcssa to i64
  %arrayidx129 = getelementptr inbounds i32* %44, i64 %idxprom127
  %45 = load i32* %arrayidx129, align 4, !tbaa !0
  %cmp130 = icmp sgt i32 %45, -1
  br i1 %cmp130, label %if.then132, label %if.else150

if.then132:                                       ; preds = %land.lhs.true125
  %mnum137 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  %46 = load i32* %mnum137, align 4, !tbaa !0
  %cmp138 = icmp slt i32 %45, %46
  br i1 %cmp138, label %if.end141, label %if.then140

if.then140:                                       ; preds = %if.then132
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str28, i64 0, i64 0)) #5
  %.pre242 = load i32* %mnum137, align 4, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %if.then132, %if.then140
  %47 = phi i32 [ %46, %if.then132 ], [ %.pre242, %if.then140 ]
  %arraydecay142 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0
  call void @FSet(float* %arraydecay142, i32 %47, float 0.000000e+00) #5
  %48 = load i32* %M, align 4, !tbaa !0
  %idxprom145 = sext i32 %48 to i64
  %49 = load i32** %mpri122.pre-phi, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds i32* %49, i64 %idxprom145
  %50 = load i32* %arrayidx147, align 4, !tbaa !0
  %idxprom148 = sext i32 %50 to i64
  %arrayidx149 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 %idxprom148
  store float 1.000000e+00, float* %arrayidx149, align 4, !tbaa !3
  br label %if.end155

if.else150:                                       ; preds = %for.end, %land.lhs.true125
  %arraydecay151 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0
  %arraydecay153 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 0
  %mnum154 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  %51 = load i32* %mnum154, align 4, !tbaa !0
  call void @FCopy(float* %arraydecay151, float* %arraydecay153, i32 %51) #5
  %.pre = load i32* %M, align 4, !tbaa !0
  br label %if.end155

if.end155:                                        ; preds = %if.else150, %if.end141
  %52 = phi i32 [ %.pre, %if.else150 ], [ %48, %if.end141 ]
  %idxprom157 = sext i32 %52 to i64
  %mat158 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %53 = load float*** %mat158, align 8, !tbaa !4
  %arrayidx159 = getelementptr inbounds float** %53, i64 %idxprom157
  %54 = load float** %arrayidx159, align 8, !tbaa !4
  %mnum160 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  %55 = load i32* %mnum160, align 4, !tbaa !0
  %arraydecay161 = getelementptr inbounds [200 x float]* %mq, i64 0, i64 0
  %arraydecay163 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 0
  call void @P7PriorifyEmissionVector(float* %54, %struct.p7prior_s* %pri, i32 %55, float* %arraydecay161, [20 x float]* %arraydecay163, float* null) #7
  call void @Plan7Renormalize(%struct.plan7_s* %hmm) #5
  call void @llvm.lifetime.end(i64 800, i8* %2) #4
  call void @llvm.lifetime.end(i64 800, i8* %1) #4
  call void @llvm.lifetime.end(i64 800, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyTransitionVector(float* %t, %struct.p7prior_s* %prior, float* nocapture %tq) #0 {
entry:
  %mix = alloca [200 x float], align 16
  %0 = bitcast [200 x float]* %mix to i8*
  call void @llvm.lifetime.start(i64 800, i8* %0) #4
  %arrayidx = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 16, !tbaa !3
  %strategy = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 0
  %1 = load i32* %strategy, align 4, !tbaa !0
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %mnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 4
  %2 = load i32* %mnum, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %2, 1
  br i1 %cmp3, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true
  %tnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1
  %3 = load i32* %tnum, align 4, !tbaa !0
  %cmp4203 = icmp sgt i32 %3, 0
  br i1 %cmp4203, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr = getelementptr inbounds float* %t, i64 3
  %add.ptr29 = getelementptr inbounds float* %t, i64 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cond.end
  %indvars.iv209 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next210, %cond.end ]
  %arrayidx5 = getelementptr inbounds float* %tq, i64 %indvars.iv209
  %4 = load float* %arrayidx5, align 4, !tbaa !3
  %cmp6 = fcmp ogt float %4, 0.000000e+00
  br i1 %cmp6, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %conv = fpext float %4 to double
  %call = call double @log(double %conv) #5
  %phitmp = fptrunc double %call to float
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.990000e+02, %for.body ]
  %arrayidx13 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv209
  store float %cond, float* %arrayidx13, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 0
  %call17 = call float @Logp_cvec(float* %t, i32 3, float* %arraydecay) #5
  %5 = load float* %arrayidx13, align 4, !tbaa !3
  %add = fadd float %call17, %5
  store float %add, float* %arrayidx13, align 4, !tbaa !3
  %add.ptr24 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 3
  %call25 = call float @Logp_cvec(float* %add.ptr, i32 2, float* %add.ptr24) #5
  %6 = load float* %arrayidx13, align 4, !tbaa !3
  %add28 = fadd float %call25, %6
  store float %add28, float* %arrayidx13, align 4, !tbaa !3
  %add.ptr34 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv209, i64 5
  %call35 = call float @Logp_cvec(float* %add.ptr29, i32 2, float* %add.ptr34) #5
  %7 = load float* %arrayidx13, align 4, !tbaa !3
  %add38 = fadd float %call35, %7
  store float %add38, float* %arrayidx13, align 4, !tbaa !3
  %indvars.iv.next210 = add i64 %indvars.iv209, 1
  %8 = load i32* %tnum, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next210 to i32
  %cmp4 = icmp slt i32 %9, %8
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end, %for.cond.preheader
  %.lcssa = phi i32 [ %3, %for.cond.preheader ], [ %8, %cond.end ]
  call void @LogNorm(float* %arrayidx, i32 %.lcssa) #5
  br label %if.end

if.end:                                           ; preds = %entry, %for.end, %land.lhs.true
  %call41 = call float @FSum(float* %t, i32 3) #5
  %arrayidx42 = getelementptr inbounds float* %t, i64 3
  %10 = load float* %arrayidx42, align 4, !tbaa !3
  %arrayidx43 = getelementptr inbounds float* %t, i64 4
  %11 = load float* %arrayidx43, align 4, !tbaa !3
  %add44 = fadd float %10, %11
  %arrayidx45 = getelementptr inbounds float* %t, i64 5
  %12 = load float* %arrayidx45, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds float* %t, i64 6
  %13 = load float* %arrayidx46, align 4, !tbaa !3
  %add47 = fadd float %12, %13
  %tnum53 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 1
  %.pre = load i32* %tnum53, align 4, !tbaa !0
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.end124, %if.end
  %14 = phi i32 [ %.pre, %if.end ], [ %32, %for.end124 ]
  %indvars.iv206 = phi i64 [ 0, %if.end ], [ %indvars.iv.next207, %for.end124 ]
  %cmp54198 = icmp sgt i32 %14, 0
  %arrayidx60 = getelementptr inbounds float* %t, i64 %indvars.iv206
  br i1 %cmp54198, label %for.body56, label %for.end124

for.body56:                                       ; preds = %for.cond52.preheader, %for.inc122
  %15 = phi i32 [ %30, %for.inc122 ], [ %14, %for.cond52.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc122 ], [ 0, %for.cond52.preheader ]
  %xi.0201 = phi float [ %xi.1, %for.inc122 ], [ 0.000000e+00, %for.cond52.preheader ]
  %16 = trunc i64 %indvars.iv206 to i32
  switch i32 %16, label %for.inc122 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb74
    i32 4, label %sw.bb74
    i32 5, label %sw.bb98
    i32 6, label %sw.bb98
  ]

sw.bb:                                            ; preds = %for.body56, %for.body56, %for.body56
  %arrayidx58 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv
  %17 = load float* %arrayidx58, align 4, !tbaa !3
  %18 = load float* %arrayidx60, align 4, !tbaa !3
  %arrayidx65 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206
  %19 = load float* %arrayidx65, align 4, !tbaa !3
  %add66 = fadd float %18, %19
  %mul = fmul float %17, %add66
  %arraydecay70 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 0
  %call71 = call float @FSum(float* %arraydecay70, i32 3) #5
  %add72 = fadd float %call41, %call71
  %div = fdiv float %mul, %add72
  %add73 = fadd float %xi.0201, %div
  %.pre211 = load i32* %tnum53, align 4, !tbaa !0
  br label %for.inc122

sw.bb74:                                          ; preds = %for.body56, %for.body56
  %arrayidx76 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv
  %20 = load float* %arrayidx76, align 4, !tbaa !3
  %21 = load float* %arrayidx60, align 4, !tbaa !3
  %arrayidx83 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206
  %22 = load float* %arrayidx83, align 4, !tbaa !3
  %add84 = fadd float %21, %22
  %mul85 = fmul float %20, %add84
  %arrayidx89 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 3
  %23 = load float* %arrayidx89, align 4, !tbaa !3
  %add90 = fadd float %add44, %23
  %arrayidx94 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 4
  %24 = load float* %arrayidx94, align 4, !tbaa !3
  %add95 = fadd float %add90, %24
  %div96 = fdiv float %mul85, %add95
  %add97 = fadd float %xi.0201, %div96
  br label %for.inc122

sw.bb98:                                          ; preds = %for.body56, %for.body56
  %arrayidx100 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv
  %25 = load float* %arrayidx100, align 4, !tbaa !3
  %26 = load float* %arrayidx60, align 4, !tbaa !3
  %arrayidx107 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 %indvars.iv206
  %27 = load float* %arrayidx107, align 4, !tbaa !3
  %add108 = fadd float %26, %27
  %mul109 = fmul float %25, %add108
  %arrayidx113 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 5
  %28 = load float* %arrayidx113, align 4, !tbaa !3
  %add114 = fadd float %add47, %28
  %arrayidx118 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 3, i64 %indvars.iv, i64 6
  %29 = load float* %arrayidx118, align 4, !tbaa !3
  %add119 = fadd float %add114, %29
  %div120 = fdiv float %mul109, %add119
  %add121 = fadd float %xi.0201, %div120
  br label %for.inc122

for.inc122:                                       ; preds = %sw.bb, %sw.bb74, %sw.bb98, %for.body56
  %30 = phi i32 [ %15, %for.body56 ], [ %15, %sw.bb98 ], [ %15, %sw.bb74 ], [ %.pre211, %sw.bb ]
  %xi.1 = phi float [ %xi.0201, %for.body56 ], [ %add121, %sw.bb98 ], [ %add97, %sw.bb74 ], [ %add73, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %31 = trunc i64 %indvars.iv.next to i32
  %cmp54 = icmp slt i32 %31, %30
  br i1 %cmp54, label %for.body56, label %for.end124

for.end124:                                       ; preds = %for.cond52.preheader, %for.inc122
  %32 = phi i32 [ %30, %for.inc122 ], [ %14, %for.cond52.preheader ]
  %xi.0.lcssa = phi float [ %xi.1, %for.inc122 ], [ 0.000000e+00, %for.cond52.preheader ]
  store float %xi.0.lcssa, float* %arrayidx60, align 4, !tbaa !3
  %indvars.iv.next207 = add i64 %indvars.iv206, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next207 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end129, label %for.cond52.preheader

for.end129:                                       ; preds = %for.end124
  call void @FNorm(float* %t, i32 3) #5
  call void @FNorm(float* %arrayidx42, i32 2) #5
  call void @FNorm(float* %arrayidx45, i32 2) #5
  call void @llvm.lifetime.end(i64 800, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7PriorifyEmissionVector(float* %vec, %struct.p7prior_s* nocapture %pri, i32 %num, float* nocapture %eq, [20 x float]* %e, float* %ret_mix) #0 {
entry:
  %ret_mix139 = bitcast float* %ret_mix to i8*
  %vec149 = bitcast float* %vec to i8*
  %mix = alloca [200 x float], align 16
  %0 = bitcast [200 x float]* %mix to i8*
  call void @llvm.lifetime.start(i64 800, i8* %0) #4
  %arrayidx = getelementptr inbounds [200 x float]* %mix, i64 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 16, !tbaa !3
  %strategy = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0
  %1 = load i32* %strategy, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  %cmp1 = icmp sgt i32 %num, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %cmp2133 = icmp sgt i32 %num, 0
  br i1 %cmp2133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %cond.end
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %cond.end ], [ 0, %for.cond.preheader ]
  %arrayidx3 = getelementptr inbounds float* %eq, i64 %indvars.iv143
  %2 = load float* %arrayidx3, align 4, !tbaa !3
  %cmp4 = fcmp ogt float %2, 0.000000e+00
  br i1 %cmp4, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %conv = fpext float %2 to double
  %call = call double @log(double %conv) #5
  %phitmp = fptrunc double %call to float
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.990000e+02, %for.body ]
  %arrayidx11 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv143
  store float %cond, float* %arrayidx11, align 4, !tbaa !3
  %3 = load i32* @Alphabet_size, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv143, i64 0
  %call14 = call float @Logp_cvec(float* %vec, i32 %3, float* %arraydecay) #5
  %4 = load float* %arrayidx11, align 4, !tbaa !3
  %add = fadd float %call14, %4
  store float %add, float* %arrayidx11, align 4, !tbaa !3
  %indvars.iv.next144 = add i64 %indvars.iv143, 1
  %lftr.wideiv145 = trunc i64 %indvars.iv.next144 to i32
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %num
  br i1 %exitcond146, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %for.cond.preheader
  call void @LogNorm(float* %arrayidx, i32 %num) #5
  br label %if.end37

if.else:                                          ; preds = %entry
  %cmp19 = icmp eq i32 %1, 1
  %or.cond124 = and i1 %cmp19, %cmp1
  br i1 %or.cond124, label %for.cond25.preheader, label %if.end37

for.cond25.preheader:                             ; preds = %if.else
  %5 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp26136 = icmp sgt i32 %5, 0
  br i1 %cmp26136, label %for.body28.lr.ph, label %for.end35

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %6 = icmp sgt i32 %5, 1
  %.op = add i32 %5, -1
  %7 = zext i32 %.op to i64
  %.op151 = shl nuw nsw i64 %7, 2
  %.op151.op = add i64 %.op151, 4
  %8 = select i1 %6, i64 %.op151.op, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %vec149, i64 %8, i32 4, i1 false)
  br label %for.end35

for.end35:                                        ; preds = %for.body28.lr.ph, %for.cond25.preheader
  call void @FNorm(float* %arrayidx, i32 %5) #5
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end35, %for.end
  %9 = load i32* @Alphabet_size, align 4, !tbaa !0
  %call38 = call float @FSum(float* %vec, i32 %9) #5
  %10 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp40130 = icmp sgt i32 %10, 0
  br i1 %cmp40130, label %for.cond43.preheader.lr.ph, label %for.end69

for.cond43.preheader.lr.ph:                       ; preds = %if.end37
  %cmp44127 = icmp sgt i32 %num, 0
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader.lr.ph, %for.end64
  %11 = phi i32 [ %10, %for.cond43.preheader.lr.ph ], [ %16, %for.end64 ]
  %indvars.iv141 = phi i64 [ 0, %for.cond43.preheader.lr.ph ], [ %indvars.iv.next142, %for.end64 ]
  %arrayidx54 = getelementptr inbounds float* %vec, i64 %indvars.iv141
  br i1 %cmp44127, label %for.body46, label %for.end64

for.body46:                                       ; preds = %for.body46, %for.cond43.preheader
  %12 = phi i32 [ %11, %for.cond43.preheader ], [ %.pre, %for.body46 ]
  %indvars.iv = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next, %for.body46 ]
  %xi.0129 = phi float [ 0.000000e+00, %for.cond43.preheader ], [ %add61, %for.body46 ]
  %arraydecay49 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv, i64 0
  %call50 = call float @FSum(float* %arraydecay49, i32 %12) #5
  %arrayidx52 = getelementptr inbounds [200 x float]* %mix, i64 0, i64 %indvars.iv
  %13 = load float* %arrayidx52, align 4, !tbaa !3
  %14 = load float* %arrayidx54, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds [20 x float]* %e, i64 %indvars.iv, i64 %indvars.iv141
  %15 = load float* %arrayidx58, align 4, !tbaa !3
  %add59 = fadd float %14, %15
  %mul = fmul float %13, %add59
  %add60 = fadd float %call38, %call50
  %div = fdiv float %mul, %add60
  %add61 = fadd float %xi.0129, %div
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num
  %.pre = load i32* @Alphabet_size, align 4, !tbaa !0
  br i1 %exitcond, label %for.end64, label %for.body46

for.end64:                                        ; preds = %for.body46, %for.cond43.preheader
  %16 = phi i32 [ %11, %for.cond43.preheader ], [ %.pre, %for.body46 ]
  %xi.0.lcssa = phi float [ 0.000000e+00, %for.cond43.preheader ], [ %add61, %for.body46 ]
  store float %xi.0.lcssa, float* %arrayidx54, align 4, !tbaa !3
  %indvars.iv.next142 = add i64 %indvars.iv141, 1
  %17 = trunc i64 %indvars.iv.next142 to i32
  %cmp40 = icmp slt i32 %17, %16
  br i1 %cmp40, label %for.cond43.preheader, label %for.end69

for.end69:                                        ; preds = %for.end64, %if.end37
  %.lcssa = phi i32 [ %10, %if.end37 ], [ %16, %for.end64 ]
  call void @FNorm(float* %vec, i32 %.lcssa) #5
  %cmp70 = icmp ne float* %ret_mix, null
  %cmp74125 = icmp sgt i32 %num, 0
  %or.cond152 = and i1 %cmp70, %cmp74125
  br i1 %or.cond152, label %for.body76.lr.ph, label %if.end84

for.body76.lr.ph:                                 ; preds = %for.end69
  %18 = add i32 %num, -1
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = add i64 %20, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ret_mix139, i8* %0, i64 %21, i32 4, i1 false)
  br label %if.end84

if.end84:                                         ; preds = %for.end69, %for.body76.lr.ph
  call void @llvm.lifetime.end(i64 800, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare void @Plan7Renormalize(%struct.plan7_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: optsize
declare float @Logp_cvec(float*, i32, float*) #1

; Function Attrs: optsize
declare void @LogNorm(float*, i32) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
