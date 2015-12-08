; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_domSegMap.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@icputimes = internal unnamed_addr global i32 0, align 4
@cputimes = internal unnamed_addr global [12 x double] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in GPart_domSegMap(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in GPart_domSegMap(%p,%p,%p)\0A compids[%d] = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"\0A\0A Inside GPart_domSegMap\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"\0A %d domains, %d Phi vertices\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in GPart_domSegMap(%p,%p,%p)\0A phi = %d != %d = nPhi\0A\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"\0A PhiToV(%d) :\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"\0A VtoPhi(%d) :\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"\0A PhiByPowD : interface x adjacent domains\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"\0A checking out phi = %d, v = %d\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"\0A adj(%d) : \00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"\0A    no previous edges\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"\0A    previous edges :\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"\0A    checking out phi2 = %d\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c", common adj domain %d\00", align 1
@.str15 = private unnamed_addr constant [21 x i8] c", no adjacent domain\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"\0A    edge list for %d :\00", align 1
@.str17 = private unnamed_addr constant [36 x i8] c"\0A       linking %d into list for %d\00", align 1
@.str18 = private unnamed_addr constant [35 x i8] c"\0A PhiByPhi : interface x interface\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"\0A nPsi = %d\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"\0A PhiToPsi(%d) :\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"\0A PsiByPowD(%d) :\00", align 1
@.str22 = private unnamed_addr constant [14 x i8] c"\0A nSigma = %d\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"\0A PsiToSigma(%d) :\00", align 1
@.str24 = private unnamed_addr constant [35 x i8] c"\0A domain/segment map timings split\00", align 1
@.str25 = private unnamed_addr constant [337 x i8] c"\0A %9.5f : create the DSmap object\0A %9.5f : get numbers of domain and interface vertices\0A %9.5f : generate PhiToV and VtoPhi\0A %9.5f : generate PhiByPowD\0A %9.5f : generate PhiByPhi\0A %9.5f : generate PhiToPsi\0A %9.5f : generate PsiByPowD\0A %9.5f : generate PsiToSigma\0A %9.5f : generate dsmap\0A %9.5f : free working storage\0A %9.5f : total time\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @GPart_domSegMap(%struct._GPart* %gpart, i32* %pndom, i32* %pnseg) #0 {
entry:
  %ierr = alloca i32, align 4
  %ii = alloca i32, align 4
  %size = alloca i32, align 4
  %size0 = alloca i32, align 4
  %size1 = alloca i32, align 4
  %size2 = alloca i32, align 4
  %vsize = alloca i32, align 4
  %adj = alloca i32*, align 8
  %adj0 = alloca i32*, align 8
  %adj1 = alloca i32*, align 8
  %adj2 = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  store i32 0, i32* @icputimes, align 4, !tbaa !0
  store double 0.000000e+00, double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 0), align 16, !tbaa !3
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !4
  %cmp2 = icmp eq %struct._Graph* %0, null
  %cmp4 = icmp eq i32* %pndom, null
  %or.cond = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq i32* %pnseg, null
  %or.cond817 = or i1 %or.cond, %cmp6
  br i1 %or.cond817, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, i32* %pndom, i32* %pnseg) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call7 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %msglvl8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %2 = load i32* %msglvl8, align 4, !tbaa !0
  %msgFile9 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %3 = load %struct._IO_FILE** %msgFile9, align 8, !tbaa !4
  %nvtx = getelementptr inbounds %struct._Graph* %0, i64 0, i32 1
  %4 = load i32* %nvtx, align 4, !tbaa !0
  %call10 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call10, i32 %4, i32* null) #5
  %call11 = call i32* @IV_entries(%struct._IV* %call10) #5
  %5 = load i32* @icputimes, align 4, !tbaa !0
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @icputimes, align 4, !tbaa !0
  %idxprom12 = sext i32 %inc to i64
  %arrayidx13 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom12
  store double 0.000000e+00, double* %arrayidx13, align 8, !tbaa !3
  %cmp14884 = icmp sgt i32 %4, 0
  br i1 %cmp14884, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv932 = phi i64 [ %indvars.iv.next933, %for.inc ], [ 0, %if.end ]
  %ndom.0887 = phi i32 [ %ndom.1, %for.inc ], [ 0, %if.end ]
  %nPhi.0886 = phi i32 [ %nPhi.1, %for.inc ], [ 0, %if.end ]
  %v.0885 = phi i32 [ %inc31, %for.inc ], [ 0, %if.end ]
  %arrayidx16 = getelementptr inbounds i32* %call7, i64 %indvars.iv932
  %6 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp slt i32 %6, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._GPart* %gpart, i32* %pndom, i32* %pnseg, i32 %v.0885, i32 %6) #5
  call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %for.body
  %cmp22 = icmp eq i32 %6, 0
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %inc24 = add nsw i32 %nPhi.0886, 1
  br label %for.inc

if.else25:                                        ; preds = %if.else
  %cmp26 = icmp slt i32 %ndom.0887, %6
  %.ndom.0 = select i1 %cmp26, i32 %6, i32 %ndom.0887
  br label %for.inc

for.inc:                                          ; preds = %if.else25, %if.then23
  %nPhi.1 = phi i32 [ %inc24, %if.then23 ], [ %nPhi.0886, %if.else25 ]
  %ndom.1 = phi i32 [ %ndom.0887, %if.then23 ], [ %.ndom.0, %if.else25 ]
  %indvars.iv.next933 = add i64 %indvars.iv932, 1
  %inc31 = add nsw i32 %v.0885, 1
  %8 = trunc i64 %indvars.iv.next933 to i32
  %cmp14 = icmp slt i32 %8, %4
  br i1 %cmp14, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %ndom.0.lcssa = phi i32 [ 0, %if.end ], [ %ndom.1, %for.inc ]
  %nPhi.0.lcssa = phi i32 [ 0, %if.end ], [ %nPhi.1, %for.inc ]
  store i32 %ndom.0.lcssa, i32* %pndom, align 4, !tbaa !0
  %cmp32 = icmp sgt i32 %2, 1
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.end
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %3)
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i32 %ndom.0.lcssa, i32 %nPhi.0.lcssa) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %for.end
  %cmp37 = icmp eq i32 %ndom.0.lcssa, 1
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @IVfill(i32 %4, i32* %call11, i32 0) #5
  store i32 1, i32* %pndom, align 4, !tbaa !0
  store i32 0, i32* %pnseg, align 4, !tbaa !0
  br label %return

if.end39:                                         ; preds = %if.end36
  %10 = load i32* @icputimes, align 4, !tbaa !0
  %inc40 = add nsw i32 %10, 1
  store i32 %inc40, i32* @icputimes, align 4, !tbaa !0
  %idxprom41 = sext i32 %inc40 to i64
  %arrayidx42 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom41
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !3
  %call43 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 -1) #5
  %call44 = call i32* @IVinit(i32 %4, i32 -1) #5
  br i1 %cmp14884, label %for.body47, label %for.end60

for.body47:                                       ; preds = %if.end39, %for.inc58
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %for.inc58 ], [ 0, %if.end39 ]
  %phi.0878 = phi i32 [ %phi.1, %for.inc58 ], [ 0, %if.end39 ]
  %arrayidx49 = getelementptr inbounds i32* %call7, i64 %indvars.iv926
  %11 = load i32* %arrayidx49, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %11, 0
  br i1 %cmp50, label %if.then51, label %for.inc58

if.then51:                                        ; preds = %for.body47
  %idxprom52 = sext i32 %phi.0878 to i64
  %arrayidx53 = getelementptr inbounds i32* %call43, i64 %idxprom52
  %12 = trunc i64 %indvars.iv926 to i32
  store i32 %12, i32* %arrayidx53, align 4, !tbaa !0
  %inc54 = add nsw i32 %phi.0878, 1
  %arrayidx56 = getelementptr inbounds i32* %call44, i64 %indvars.iv926
  store i32 %phi.0878, i32* %arrayidx56, align 4, !tbaa !0
  br label %for.inc58

for.inc58:                                        ; preds = %for.body47, %if.then51
  %phi.1 = phi i32 [ %inc54, %if.then51 ], [ %phi.0878, %for.body47 ]
  %indvars.iv.next927 = add i64 %indvars.iv926, 1
  %lftr.wideiv928 = trunc i64 %indvars.iv.next927 to i32
  %exitcond929 = icmp eq i32 %lftr.wideiv928, %4
  br i1 %exitcond929, label %for.end60, label %for.body47

for.end60:                                        ; preds = %for.inc58, %if.end39
  %phi.0.lcssa = phi i32 [ 0, %if.end39 ], [ %phi.1, %for.inc58 ]
  %cmp61 = icmp eq i32 %phi.0.lcssa, %nPhi.0.lcssa
  br i1 %cmp61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %for.end60
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._GPart* %gpart, i32* %pndom, i32* %pnseg, i32 %phi.0.lcssa, i32 %nPhi.0.lcssa) #5
  call void @exit(i32 -1) #6
  unreachable

if.end64:                                         ; preds = %for.end60
  %cmp65 = icmp sgt i32 %2, 2
  br i1 %cmp65, label %if.end70, label %if.end76

if.end70:                                         ; preds = %if.end64
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i32 %nPhi.0.lcssa) #5
  %call68 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %nPhi.0.lcssa, i32* %call43, i32 15, i32* %ierr) #5
  %call69 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %cmp71 = icmp sgt i32 %2, 3
  br i1 %cmp71, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.end70
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i32 %4) #5
  %call74 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %4, i32* %call44, i32 15, i32* %ierr) #5
  %call75 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end76

if.end76:                                         ; preds = %if.end64, %if.then72, %if.end70
  %cmp71820 = phi i1 [ true, %if.then72 ], [ false, %if.end70 ], [ false, %if.end64 ]
  %14 = load i32* @icputimes, align 4, !tbaa !0
  %inc77 = add nsw i32 %14, 1
  store i32 %inc77, i32* @icputimes, align 4, !tbaa !0
  %idxprom78 = sext i32 %inc77 to i64
  %arrayidx79 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom78
  store double 0.000000e+00, double* %arrayidx79, align 8, !tbaa !3
  %add = add nsw i32 %ndom.0.lcssa, 1
  %call80 = call i32* @IVinit(i32 %add, i32 -1) #5
  %cmp81 = icmp slt i32 %nPhi.0.lcssa, %ndom.0.lcssa
  br i1 %cmp81, label %if.else84, label %if.then82

if.then82:                                        ; preds = %if.end76
  %call83 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 -1) #5
  br label %if.end86

if.else84:                                        ; preds = %if.end76
  %call85 = call i32* @IVinit(i32 %ndom.0.lcssa, i32 -1) #5
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then82
  %list.0 = phi i32* [ %call83, %if.then82 ], [ %call85, %if.else84 ]
  %call87 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call87, i32 1, i32 %nPhi.0.lcssa) #5
  %cmp89874 = icmp sgt i32 %nPhi.0.lcssa, 0
  br i1 %cmp89874, label %for.body90, label %for.end121

for.body90:                                       ; preds = %if.end86, %for.inc119
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %for.inc119 ], [ 0, %if.end86 ]
  %arrayidx92 = getelementptr inbounds i32* %call43, i64 %indvars.iv922
  %15 = load i32* %arrayidx92, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %15, i32* %vsize, i32** %vadj) #5
  store i32 0, i32* %ii, align 4, !tbaa !0
  %16 = load i32* %vsize, align 4, !tbaa !0
  %cmp94870 = icmp sgt i32 %16, 0
  br i1 %cmp94870, label %for.body95.lr.ph, label %for.inc119

for.body95.lr.ph:                                 ; preds = %for.body90
  %17 = load i32** %vadj, align 8, !tbaa !4
  br label %for.body95

for.body95:                                       ; preds = %for.body95.lr.ph, %for.inc113
  %18 = phi i32 [ %16, %for.body95.lr.ph ], [ %23, %for.inc113 ]
  %count.0872 = phi i32 [ 0, %for.body95.lr.ph ], [ %count.1, %for.inc113 ]
  %storemerge816871 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc114, %for.inc113 ]
  %idxprom96 = sext i32 %storemerge816871 to i64
  %arrayidx97 = getelementptr inbounds i32* %17, i64 %idxprom96
  %19 = load i32* %arrayidx97, align 4, !tbaa !0
  %cmp98 = icmp slt i32 %19, %4
  br i1 %cmp98, label %land.lhs.true, label %for.inc113

land.lhs.true:                                    ; preds = %for.body95
  %idxprom99 = sext i32 %19 to i64
  %arrayidx100 = getelementptr inbounds i32* %call7, i64 %idxprom99
  %20 = load i32* %arrayidx100, align 4, !tbaa !0
  %cmp101 = icmp sgt i32 %20, 0
  br i1 %cmp101, label %land.lhs.true102, label %for.inc113

land.lhs.true102:                                 ; preds = %land.lhs.true
  %idxprom103 = sext i32 %20 to i64
  %arrayidx104 = getelementptr inbounds i32* %call80, i64 %idxprom103
  %21 = load i32* %arrayidx104, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv922 to i32
  %cmp105 = icmp eq i32 %21, %22
  br i1 %cmp105, label %for.inc113, label %if.then106

if.then106:                                       ; preds = %land.lhs.true102
  store i32 %22, i32* %arrayidx104, align 4, !tbaa !0
  %inc109 = add nsw i32 %count.0872, 1
  %idxprom110 = sext i32 %count.0872 to i64
  %arrayidx111 = getelementptr inbounds i32* %list.0, i64 %idxprom110
  store i32 %20, i32* %arrayidx111, align 4, !tbaa !0
  %.pre938 = load i32* %ii, align 4, !tbaa !0
  %.pre939 = load i32* %vsize, align 4, !tbaa !0
  br label %for.inc113

for.inc113:                                       ; preds = %land.lhs.true102, %for.body95, %land.lhs.true, %if.then106
  %23 = phi i32 [ %.pre939, %if.then106 ], [ %18, %land.lhs.true102 ], [ %18, %land.lhs.true ], [ %18, %for.body95 ]
  %24 = phi i32 [ %.pre938, %if.then106 ], [ %storemerge816871, %land.lhs.true102 ], [ %storemerge816871, %land.lhs.true ], [ %storemerge816871, %for.body95 ]
  %count.1 = phi i32 [ %inc109, %if.then106 ], [ %count.0872, %land.lhs.true102 ], [ %count.0872, %land.lhs.true ], [ %count.0872, %for.body95 ]
  %inc114 = add nsw i32 %24, 1
  store i32 %inc114, i32* %ii, align 4, !tbaa !0
  %cmp94 = icmp slt i32 %inc114, %23
  br i1 %cmp94, label %for.body95, label %for.end115

for.end115:                                       ; preds = %for.inc113
  %cmp116 = icmp sgt i32 %count.1, 0
  br i1 %cmp116, label %if.then117, label %for.inc119

if.then117:                                       ; preds = %for.end115
  call void @IVqsortUp(i32 %count.1, i32* %list.0) #5
  %25 = trunc i64 %indvars.iv922 to i32
  call void @IVL_setList(%struct._IVL* %call87, i32 %25, i32 %count.1, i32* %list.0) #5
  br label %for.inc119

for.inc119:                                       ; preds = %for.body90, %for.end115, %if.then117
  %indvars.iv.next923 = add i64 %indvars.iv922, 1
  %lftr.wideiv924 = trunc i64 %indvars.iv.next923 to i32
  %exitcond925 = icmp eq i32 %lftr.wideiv924, %nPhi.0.lcssa
  br i1 %exitcond925, label %for.end121, label %for.body90

for.end121:                                       ; preds = %for.inc119, %if.end86
  br i1 %cmp65, label %if.then123, label %if.end127

if.then123:                                       ; preds = %for.end121
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %3)
  %call125 = call i32 @IVL_writeForHumanEye(%struct._IVL* %call87, %struct._IO_FILE* %3) #5
  %call126 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %for.end121
  %27 = load i32* @icputimes, align 4, !tbaa !0
  %inc128 = add nsw i32 %27, 1
  store i32 %inc128, i32* @icputimes, align 4, !tbaa !0
  %idxprom129 = sext i32 %inc128 to i64
  %arrayidx130 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom129
  store double 0.000000e+00, double* %arrayidx130, align 8, !tbaa !3
  %call131 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call131, i32 1, i32 %nPhi.0.lcssa) #5
  %call132 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 0) #5
  %call133 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 -1) #5
  %call134 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 -1) #5
  br i1 %cmp89874, label %for.body137, label %for.end286

for.body137:                                      ; preds = %if.end127, %for.inc284
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %for.inc284 ], [ 0, %if.end127 ]
  br i1 %cmp65, label %if.then139, label %if.end145

if.then139:                                       ; preds = %for.body137
  %arrayidx141 = getelementptr inbounds i32* %call43, i64 %indvars.iv918
  %28 = load i32* %arrayidx141, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %28, i32* %vsize, i32** %vadj) #5
  %29 = trunc i64 %indvars.iv918 to i32
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8]* @.str8, i64 0, i64 0), i32 %29, i32 %28) #5
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8]* @.str9, i64 0, i64 0), i32 %28) #5
  %30 = load i32* %vsize, align 4, !tbaa !0
  %31 = load i32** %vadj, align 8, !tbaa !4
  %call144 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %30, i32* %31, i32 10, i32* %ierr) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %for.body137
  %arrayidx149 = getelementptr inbounds i32* %call133, i64 %indvars.iv918
  br i1 %cmp71820, label %if.then147, label %if.end156

if.then147:                                       ; preds = %if.end145
  %32 = load i32* %arrayidx149, align 4, !tbaa !0
  %cmp150 = icmp eq i32 %32, -1
  br i1 %cmp150, label %if.then151, label %if.else153

if.then151:                                       ; preds = %if.then147
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3)
  br label %if.end156

if.else153:                                       ; preds = %if.then147
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %3)
  br label %if.end156

if.end156:                                        ; preds = %if.end145, %if.then151, %if.else153
  %35 = load i32* %arrayidx149, align 4, !tbaa !0
  %cmp160846 = icmp eq i32 %35, -1
  br i1 %cmp160846, label %for.end186, label %for.body161

for.body161:                                      ; preds = %if.end156, %for.cond159.backedge
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %for.cond159.backedge ], [ 0, %if.end156 ]
  %count.2848 = phi i32 [ %inc168, %for.cond159.backedge ], [ 0, %if.end156 ]
  %phi0.0847 = phi i32 [ %36, %for.cond159.backedge ], [ %35, %if.end156 ]
  br i1 %cmp71820, label %if.then163, label %if.end165

if.then163:                                       ; preds = %for.body161
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %phi0.0847) #5
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %for.body161
  %idxprom166 = sext i32 %phi0.0847 to i64
  %arrayidx167 = getelementptr inbounds i32* %call134, i64 %idxprom166
  %36 = load i32* %arrayidx167, align 4, !tbaa !0
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %inc168 = add nsw i32 %count.2848, 1
  %arrayidx170 = getelementptr inbounds i32* %list.0, i64 %indvars.iv904
  store i32 %phi0.0847, i32* %arrayidx170, align 4, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %call131, i32 %phi0.0847, i32* %size0, i32** %adj0) #5
  %arrayidx172 = getelementptr inbounds i32* %call132, i64 %idxprom166
  %37 = load i32* %arrayidx172, align 4, !tbaa !0
  %inc173 = add nsw i32 %37, 1
  store i32 %inc173, i32* %arrayidx172, align 4, !tbaa !0
  store i32 %inc173, i32* %ii, align 4, !tbaa !0
  %38 = load i32* %size0, align 4, !tbaa !0
  %cmp174 = icmp slt i32 %inc173, %38
  br i1 %cmp174, label %if.then175, label %for.cond159.backedge

for.cond159.backedge:                             ; preds = %if.end165, %if.then175
  %cmp160 = icmp eq i32 %36, -1
  br i1 %cmp160, label %for.end186, label %for.body161

if.then175:                                       ; preds = %if.end165
  %idxprom176 = sext i32 %inc173 to i64
  %39 = load i32** %adj0, align 8, !tbaa !4
  %arrayidx177 = getelementptr inbounds i32* %39, i64 %idxprom176
  %40 = load i32* %arrayidx177, align 4, !tbaa !0
  %idxprom178 = sext i32 %40 to i64
  %arrayidx179 = getelementptr inbounds i32* %call133, i64 %idxprom178
  %41 = load i32* %arrayidx179, align 4, !tbaa !0
  store i32 %41, i32* %arrayidx167, align 4, !tbaa !0
  store i32 %phi0.0847, i32* %arrayidx179, align 4, !tbaa !0
  br label %for.cond159.backedge

for.end186:                                       ; preds = %for.cond159.backedge, %if.end156
  %count.2.lcssa = phi i32 [ 0, %if.end156 ], [ %inc168, %for.cond159.backedge ]
  %42 = trunc i64 %indvars.iv918 to i32
  call void @IVL_listAndSize(%struct._IVL* %call87, i32 %42, i32* %size1, i32** %adj1) #5
  %arrayidx188 = getelementptr inbounds i32* %call43, i64 %indvars.iv918
  %43 = load i32* %arrayidx188, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %43, i32* %vsize, i32** %vadj) #5
  store i32 0, i32* %ii, align 4, !tbaa !0
  %44 = load i32* %vsize, align 4, !tbaa !0
  %cmp190858 = icmp sgt i32 %44, 0
  br i1 %cmp190858, label %for.body191, label %for.end247

for.body191:                                      ; preds = %for.end186, %for.inc245.for.body191_crit_edge
  %count.3860 = phi i32 [ %count.4, %for.inc245.for.body191_crit_edge ], [ %count.2.lcssa, %for.end186 ]
  %storemerge814859 = phi i64 [ %phitmp, %for.inc245.for.body191_crit_edge ], [ 0, %for.end186 ]
  %45 = load i32** %vadj, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds i32* %45, i64 %storemerge814859
  %46 = load i32* %arrayidx193, align 4, !tbaa !0
  %cmp194 = icmp slt i32 %46, %4
  br i1 %cmp194, label %land.lhs.true195, label %for.inc245

land.lhs.true195:                                 ; preds = %for.body191
  %idxprom196 = sext i32 %46 to i64
  %arrayidx197 = getelementptr inbounds i32* %call7, i64 %idxprom196
  %47 = load i32* %arrayidx197, align 4, !tbaa !0
  %cmp198 = icmp eq i32 %47, 0
  br i1 %cmp198, label %land.lhs.true199, label %for.inc245

land.lhs.true199:                                 ; preds = %land.lhs.true195
  %arrayidx201 = getelementptr inbounds i32* %call44, i64 %idxprom196
  %48 = load i32* %arrayidx201, align 4, !tbaa !0
  %cmp202 = icmp sgt i32 %48, %42
  br i1 %cmp202, label %if.then203, label %for.inc245

if.then203:                                       ; preds = %land.lhs.true199
  br i1 %cmp71820, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.then203
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), i32 %48) #5
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.then203
  call void @IVL_listAndSize(%struct._IVL* %call87, i32 %48, i32* %size2, i32** %adj2) #5
  %49 = load i32* %size1, align 4, !tbaa !0
  %cmp208852855 = icmp sgt i32 %49, 0
  br i1 %cmp208852855, label %land.rhs.lr.ph.lr.ph, label %if.then235

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end207
  %50 = load i32* %size2, align 4, !tbaa !0
  %51 = load i32** %adj1, align 8, !tbaa !4
  %52 = load i32** %adj2, align 8, !tbaa !4
  br label %land.rhs.lr.ph

while.cond.outer:                                 ; preds = %if.else217
  %indvars.iv.next914 = add i64 %indvars.iv913, 1
  %cmp208852 = icmp slt i32 %jj1.0853, %49
  br i1 %cmp208852, label %land.rhs.lr.ph, label %if.then235

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.cond.outer
  %indvars.iv913 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next914, %while.cond.outer ]
  %jj1.0.ph857 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %jj1.0853, %while.cond.outer ]
  %53 = trunc i64 %indvars.iv913 to i32
  %cmp209 = icmp slt i32 %53, %50
  %arrayidx213 = getelementptr inbounds i32* %52, i64 %indvars.iv913
  br i1 %cmp209, label %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge, label %if.then235

land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge:    ; preds = %land.rhs.lr.ph
  %54 = sext i32 %jj1.0.ph857 to i64
  br label %while.body

while.cond:                                       ; preds = %while.body
  %inc216 = add nsw i32 %jj1.0853, 1
  %55 = trunc i64 %indvars.iv.next911 to i32
  %cmp208 = icmp slt i32 %55, %49
  br i1 %cmp208, label %while.body, label %if.then235

while.body:                                       ; preds = %while.cond, %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge
  %indvars.iv910 = phi i64 [ %54, %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge ], [ %indvars.iv.next911, %while.cond ]
  %jj1.0853 = phi i32 [ %jj1.0.ph857, %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge ], [ %inc216, %while.cond ]
  %arrayidx211 = getelementptr inbounds i32* %51, i64 %indvars.iv910
  %56 = load i32* %arrayidx211, align 4, !tbaa !0
  %57 = load i32* %arrayidx213, align 4, !tbaa !0
  %cmp214 = icmp slt i32 %56, %57
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  br i1 %cmp214, label %while.cond, label %if.else217

if.else217:                                       ; preds = %while.body
  %cmp222 = icmp sgt i32 %56, %57
  br i1 %cmp222, label %while.cond.outer, label %if.else225

if.else225:                                       ; preds = %if.else217
  br i1 %cmp71820, label %if.then227, label %for.inc245

if.then227:                                       ; preds = %if.else225
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str14, i64 0, i64 0), i32 %56) #5
  br label %for.inc245

if.then235:                                       ; preds = %if.end207, %while.cond.outer, %while.cond, %land.rhs.lr.ph
  br i1 %cmp71820, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.then235
  %58 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str15, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %3)
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.then235
  %inc240 = add nsw i32 %count.3860, 1
  %idxprom241 = sext i32 %count.3860 to i64
  %arrayidx242 = getelementptr inbounds i32* %list.0, i64 %idxprom241
  store i32 %48, i32* %arrayidx242, align 4, !tbaa !0
  br label %for.inc245

for.inc245:                                       ; preds = %if.else225, %if.then227, %for.body191, %land.lhs.true195, %land.lhs.true199, %if.end239
  %count.4 = phi i32 [ %inc240, %if.end239 ], [ %count.3860, %land.lhs.true199 ], [ %count.3860, %land.lhs.true195 ], [ %count.3860, %for.body191 ], [ %count.3860, %if.then227 ], [ %count.3860, %if.else225 ]
  %59 = load i32* %ii, align 4, !tbaa !0
  %inc246 = add nsw i32 %59, 1
  store i32 %inc246, i32* %ii, align 4, !tbaa !0
  %60 = load i32* %vsize, align 4, !tbaa !0
  %cmp190 = icmp slt i32 %inc246, %60
  br i1 %cmp190, label %for.inc245.for.body191_crit_edge, label %for.end247

for.inc245.for.body191_crit_edge:                 ; preds = %for.inc245
  %phitmp = sext i32 %inc246 to i64
  br label %for.body191

for.end247:                                       ; preds = %for.inc245, %for.end186
  %count.3.lcssa = phi i32 [ %count.2.lcssa, %for.end186 ], [ %count.4, %for.inc245 ]
  %cmp248 = icmp sgt i32 %count.3.lcssa, 0
  br i1 %cmp248, label %if.then249, label %for.inc284

if.then249:                                       ; preds = %for.end247
  call void @IVqsortUp(i32 %count.3.lcssa, i32* %list.0) #5
  call void @IVL_setList(%struct._IVL* %call131, i32 %42, i32 %count.3.lcssa, i32* %list.0) #5
  br i1 %cmp65, label %if.then251, label %for.body257.lr.ph

if.then251:                                       ; preds = %if.then249
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i32 %42) #5
  %call253 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %count.3.lcssa, i32* %list.0, i32 15, i32* %ierr) #5
  br label %for.body257.lr.ph

for.body257.lr.ph:                                ; preds = %if.then249, %if.then251
  store i32 0, i32* %ii, align 4, !tbaa !0
  br label %for.body257

for.cond255:                                      ; preds = %for.body257
  %inc268 = add nsw i32 %storemerge815867, 1
  %61 = trunc i64 %indvars.iv.next917 to i32
  store i32 %61, i32* %ii, align 4, !tbaa !0
  %cmp256 = icmp slt i32 %61, %count.3.lcssa
  br i1 %cmp256, label %for.body257, label %for.inc284

for.body257:                                      ; preds = %for.body257.lr.ph, %for.cond255
  %indvars.iv916 = phi i64 [ 0, %for.body257.lr.ph ], [ %indvars.iv.next917, %for.cond255 ]
  %storemerge815867 = phi i32 [ 0, %for.body257.lr.ph ], [ %inc268, %for.cond255 ]
  %arrayidx259 = getelementptr inbounds i32* %list.0, i64 %indvars.iv916
  %62 = load i32* %arrayidx259, align 4, !tbaa !0
  %cmp260 = icmp sgt i32 %62, %42
  %indvars.iv.next917 = add i64 %indvars.iv916, 1
  br i1 %cmp260, label %for.end269, label %for.cond255

for.end269:                                       ; preds = %for.body257
  %arrayidx263 = getelementptr inbounds i32* %call132, i64 %indvars.iv918
  store i32 %storemerge815867, i32* %arrayidx263, align 4, !tbaa !0
  %63 = load i32* %ii, align 4, !tbaa !0
  %idxprom264 = sext i32 %63 to i64
  %arrayidx265 = getelementptr inbounds i32* %list.0, i64 %idxprom264
  %64 = load i32* %arrayidx265, align 4, !tbaa !0
  %cmp270 = icmp eq i32 %64, -1
  br i1 %cmp270, label %for.inc284, label %if.then271

if.then271:                                       ; preds = %for.end269
  br i1 %cmp65, label %if.then273, label %if.end275

if.then273:                                       ; preds = %if.then271
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8]* @.str17, i64 0, i64 0), i32 %42, i32 %64) #5
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %if.then271
  %idxprom276 = sext i32 %64 to i64
  %arrayidx277 = getelementptr inbounds i32* %call133, i64 %idxprom276
  %65 = load i32* %arrayidx277, align 4, !tbaa !0
  %arrayidx279 = getelementptr inbounds i32* %call134, i64 %indvars.iv918
  store i32 %65, i32* %arrayidx279, align 4, !tbaa !0
  store i32 %42, i32* %arrayidx277, align 4, !tbaa !0
  br label %for.inc284

for.inc284:                                       ; preds = %for.cond255, %for.end269, %for.end247, %if.end275
  %indvars.iv.next919 = add i64 %indvars.iv918, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv.next919 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, %nPhi.0.lcssa
  br i1 %exitcond921, label %for.end286, label %for.body137

for.end286:                                       ; preds = %for.inc284, %if.end127
  br i1 %cmp65, label %if.then288, label %if.end292

if.then288:                                       ; preds = %for.end286
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %3)
  %call290 = call i32 @IVL_writeForHumanEye(%struct._IVL* %call131, %struct._IO_FILE* %3) #5
  %call291 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end292

if.end292:                                        ; preds = %if.then288, %for.end286
  %67 = load i32* @icputimes, align 4, !tbaa !0
  %inc293 = add nsw i32 %67, 1
  store i32 %inc293, i32* @icputimes, align 4, !tbaa !0
  %idxprom294 = sext i32 %inc293 to i64
  %arrayidx295 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom294
  store double 0.000000e+00, double* %arrayidx295, align 8, !tbaa !3
  %call296 = call i32* @IVinit(i32 %nPhi.0.lcssa, i32 -1) #5
  br i1 %cmp89874, label %for.body299, label %for.end336

for.body299:                                      ; preds = %if.end292, %for.inc334
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %for.inc334 ], [ 0, %if.end292 ]
  %nPsi.0844 = phi i32 [ %nPsi.1, %for.inc334 ], [ 0, %if.end292 ]
  %arrayidx301 = getelementptr inbounds i32* %call296, i64 %indvars.iv900
  %68 = load i32* %arrayidx301, align 4, !tbaa !0
  %cmp302 = icmp eq i32 %68, -1
  br i1 %cmp302, label %if.then303, label %for.inc334

if.then303:                                       ; preds = %for.body299
  %69 = trunc i64 %indvars.iv900 to i32
  store i32 %69, i32* %list.0, align 4, !tbaa !0
  store i32 %nPsi.0844, i32* %arrayidx301, align 4, !tbaa !0
  br label %while.body309

while.cond307.loopexit:                           ; preds = %for.inc328, %while.body309
  %last.1.lcssa = phi i32 [ %last.0840, %while.body309 ], [ %last.2, %for.inc328 ]
  %70 = trunc i64 %indvars.iv898 to i32
  %cmp308 = icmp slt i32 %70, %last.1.lcssa
  br i1 %cmp308, label %while.body309, label %while.end331

while.body309:                                    ; preds = %while.cond307.loopexit, %if.then303
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %while.cond307.loopexit ], [ 0, %if.then303 ]
  %last.0840 = phi i32 [ %last.1.lcssa, %while.cond307.loopexit ], [ 0, %if.then303 ]
  %indvars.iv.next899 = add i64 %indvars.iv898, 1
  %arrayidx312 = getelementptr inbounds i32* %list.0, i64 %indvars.iv898
  %71 = load i32* %arrayidx312, align 4, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %call131, i32 %71, i32* %size, i32** %adj) #5
  store i32 0, i32* %ii, align 4, !tbaa !0
  %72 = load i32* %size, align 4, !tbaa !0
  %cmp314836 = icmp sgt i32 %72, 0
  br i1 %cmp314836, label %for.body315.lr.ph, label %while.cond307.loopexit

for.body315.lr.ph:                                ; preds = %while.body309
  %73 = load i32** %adj, align 8, !tbaa !4
  br label %for.body315

for.body315:                                      ; preds = %for.body315.lr.ph, %for.inc328
  %74 = phi i32 [ %72, %for.body315.lr.ph ], [ %77, %for.inc328 ]
  %last.1838 = phi i32 [ %last.0840, %for.body315.lr.ph ], [ %last.2, %for.inc328 ]
  %storemerge813837 = phi i32 [ 0, %for.body315.lr.ph ], [ %inc329, %for.inc328 ]
  %idxprom316 = sext i32 %storemerge813837 to i64
  %arrayidx317 = getelementptr inbounds i32* %73, i64 %idxprom316
  %75 = load i32* %arrayidx317, align 4, !tbaa !0
  %idxprom318 = sext i32 %75 to i64
  %arrayidx319 = getelementptr inbounds i32* %call296, i64 %idxprom318
  %76 = load i32* %arrayidx319, align 4, !tbaa !0
  %cmp320 = icmp eq i32 %76, -1
  br i1 %cmp320, label %if.then321, label %for.inc328

if.then321:                                       ; preds = %for.body315
  store i32 %nPsi.0844, i32* %arrayidx319, align 4, !tbaa !0
  %inc324 = add nsw i32 %last.1838, 1
  %idxprom325 = sext i32 %inc324 to i64
  %arrayidx326 = getelementptr inbounds i32* %list.0, i64 %idxprom325
  store i32 %75, i32* %arrayidx326, align 4, !tbaa !0
  %.pre = load i32* %ii, align 4, !tbaa !0
  %.pre934 = load i32* %size, align 4, !tbaa !0
  br label %for.inc328

for.inc328:                                       ; preds = %for.body315, %if.then321
  %77 = phi i32 [ %.pre934, %if.then321 ], [ %74, %for.body315 ]
  %78 = phi i32 [ %.pre, %if.then321 ], [ %storemerge813837, %for.body315 ]
  %last.2 = phi i32 [ %inc324, %if.then321 ], [ %last.1838, %for.body315 ]
  %inc329 = add nsw i32 %78, 1
  store i32 %inc329, i32* %ii, align 4, !tbaa !0
  %cmp314 = icmp slt i32 %inc329, %77
  br i1 %cmp314, label %for.body315, label %while.cond307.loopexit

while.end331:                                     ; preds = %while.cond307.loopexit
  %inc332 = add nsw i32 %nPsi.0844, 1
  br label %for.inc334

for.inc334:                                       ; preds = %for.body299, %while.end331
  %nPsi.1 = phi i32 [ %inc332, %while.end331 ], [ %nPsi.0844, %for.body299 ]
  %indvars.iv.next901 = add i64 %indvars.iv900, 1
  %lftr.wideiv902 = trunc i64 %indvars.iv.next901 to i32
  %exitcond903 = icmp eq i32 %lftr.wideiv902, %nPhi.0.lcssa
  br i1 %exitcond903, label %for.end336, label %for.body299

for.end336:                                       ; preds = %for.inc334, %if.end292
  %nPsi.0.lcssa = phi i32 [ 0, %if.end292 ], [ %nPsi.1, %for.inc334 ]
  br i1 %cmp32, label %if.then338, label %if.end341

if.then338:                                       ; preds = %for.end336
  %call339 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i32 %nPsi.0.lcssa) #5
  %call340 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end341

if.end341:                                        ; preds = %if.then338, %for.end336
  br i1 %cmp65, label %if.then343, label %if.end347

if.then343:                                       ; preds = %if.end341
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0), i32 %nPhi.0.lcssa) #5
  %call345 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %nPhi.0.lcssa, i32* %call296, i32 15, i32* %ierr) #5
  %call346 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end347

if.end347:                                        ; preds = %if.then343, %if.end341
  %79 = load i32* @icputimes, align 4, !tbaa !0
  %inc348 = add nsw i32 %79, 1
  store i32 %inc348, i32* @icputimes, align 4, !tbaa !0
  %idxprom349 = sext i32 %inc348 to i64
  %arrayidx350 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom349
  store double 0.000000e+00, double* %arrayidx350, align 8, !tbaa !3
  call void @IVfill(i32 %nPsi.0.lcssa, i32* %call133, i32 -1) #5
  call void @IVfill(i32 %nPhi.0.lcssa, i32* %call134, i32 -1) #5
  br i1 %cmp89874, label %for.body353, label %for.end364

for.body353:                                      ; preds = %if.end347, %for.body353
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %for.body353 ], [ 0, %if.end347 ]
  %arrayidx355 = getelementptr inbounds i32* %call296, i64 %indvars.iv894
  %80 = load i32* %arrayidx355, align 4, !tbaa !0
  %idxprom356 = sext i32 %80 to i64
  %arrayidx357 = getelementptr inbounds i32* %call133, i64 %idxprom356
  %81 = load i32* %arrayidx357, align 4, !tbaa !0
  %arrayidx359 = getelementptr inbounds i32* %call134, i64 %indvars.iv894
  store i32 %81, i32* %arrayidx359, align 4, !tbaa !0
  %82 = trunc i64 %indvars.iv894 to i32
  store i32 %82, i32* %arrayidx357, align 4, !tbaa !0
  %indvars.iv.next895 = add i64 %indvars.iv894, 1
  %lftr.wideiv896 = trunc i64 %indvars.iv.next895 to i32
  %exitcond897 = icmp eq i32 %lftr.wideiv896, %nPhi.0.lcssa
  br i1 %exitcond897, label %for.end364, label %for.body353

for.end364:                                       ; preds = %for.body353, %if.end347
  %call365 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call365, i32 1, i32 %nPsi.0.lcssa) #5
  call void @IVfill(i32 %add, i32* %call80, i32 -1) #5
  %cmp368832 = icmp sgt i32 %nPsi.0.lcssa, 0
  br i1 %cmp368832, label %for.body369, label %for.end410

for.body369:                                      ; preds = %for.end364, %for.inc408
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %for.inc408 ], [ 0, %for.end364 ]
  %arrayidx371 = getelementptr inbounds i32* %call133, i64 %indvars.iv890
  %phi.5827 = load i32* %arrayidx371, align 4
  %cmp373828 = icmp eq i32 %phi.5827, -1
  br i1 %cmp373828, label %for.inc408, label %for.body374

for.body374:                                      ; preds = %for.body369, %for.inc401
  %phi.5830 = phi i32 [ %phi.5, %for.inc401 ], [ %phi.5827, %for.body369 ]
  %count.5829 = phi i32 [ %count.6.lcssa, %for.inc401 ], [ 0, %for.body369 ]
  %idxprom375 = sext i32 %phi.5830 to i64
  %arrayidx376 = getelementptr inbounds i32* %call43, i64 %idxprom375
  %83 = load i32* %arrayidx376, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %83, i32* %size, i32** %adj) #5
  store i32 0, i32* %ii, align 4, !tbaa !0
  %84 = load i32* %size, align 4, !tbaa !0
  %cmp378824 = icmp sgt i32 %84, 0
  br i1 %cmp378824, label %for.body379.lr.ph, label %for.inc401

for.body379.lr.ph:                                ; preds = %for.body374
  %85 = load i32** %adj, align 8, !tbaa !4
  br label %for.body379

for.body379:                                      ; preds = %for.body379.lr.ph, %for.inc398
  %86 = phi i32 [ %84, %for.body379.lr.ph ], [ %91, %for.inc398 ]
  %count.6826 = phi i32 [ %count.5829, %for.body379.lr.ph ], [ %count.7, %for.inc398 ]
  %storemerge825 = phi i32 [ 0, %for.body379.lr.ph ], [ %inc399, %for.inc398 ]
  %idxprom380 = sext i32 %storemerge825 to i64
  %arrayidx381 = getelementptr inbounds i32* %85, i64 %idxprom380
  %87 = load i32* %arrayidx381, align 4, !tbaa !0
  %cmp382 = icmp slt i32 %87, %4
  br i1 %cmp382, label %land.lhs.true383, label %for.inc398

land.lhs.true383:                                 ; preds = %for.body379
  %idxprom384 = sext i32 %87 to i64
  %arrayidx385 = getelementptr inbounds i32* %call7, i64 %idxprom384
  %88 = load i32* %arrayidx385, align 4, !tbaa !0
  %cmp386 = icmp sgt i32 %88, 0
  br i1 %cmp386, label %land.lhs.true387, label %for.inc398

land.lhs.true387:                                 ; preds = %land.lhs.true383
  %idxprom388 = sext i32 %88 to i64
  %arrayidx389 = getelementptr inbounds i32* %call80, i64 %idxprom388
  %89 = load i32* %arrayidx389, align 4, !tbaa !0
  %90 = trunc i64 %indvars.iv890 to i32
  %cmp390 = icmp eq i32 %89, %90
  br i1 %cmp390, label %for.inc398, label %if.then391

if.then391:                                       ; preds = %land.lhs.true387
  store i32 %90, i32* %arrayidx389, align 4, !tbaa !0
  %inc394 = add nsw i32 %count.6826, 1
  %idxprom395 = sext i32 %count.6826 to i64
  %arrayidx396 = getelementptr inbounds i32* %list.0, i64 %idxprom395
  store i32 %88, i32* %arrayidx396, align 4, !tbaa !0
  %.pre935 = load i32* %ii, align 4, !tbaa !0
  %.pre936 = load i32* %size, align 4, !tbaa !0
  br label %for.inc398

for.inc398:                                       ; preds = %land.lhs.true387, %for.body379, %land.lhs.true383, %if.then391
  %91 = phi i32 [ %.pre936, %if.then391 ], [ %86, %land.lhs.true387 ], [ %86, %land.lhs.true383 ], [ %86, %for.body379 ]
  %92 = phi i32 [ %.pre935, %if.then391 ], [ %storemerge825, %land.lhs.true387 ], [ %storemerge825, %land.lhs.true383 ], [ %storemerge825, %for.body379 ]
  %count.7 = phi i32 [ %inc394, %if.then391 ], [ %count.6826, %land.lhs.true387 ], [ %count.6826, %land.lhs.true383 ], [ %count.6826, %for.body379 ]
  %inc399 = add nsw i32 %92, 1
  store i32 %inc399, i32* %ii, align 4, !tbaa !0
  %cmp378 = icmp slt i32 %inc399, %91
  br i1 %cmp378, label %for.body379, label %for.inc401

for.inc401:                                       ; preds = %for.inc398, %for.body374
  %count.6.lcssa = phi i32 [ %count.5829, %for.body374 ], [ %count.7, %for.inc398 ]
  %arrayidx403 = getelementptr inbounds i32* %call134, i64 %idxprom375
  %phi.5 = load i32* %arrayidx403, align 4
  %cmp373 = icmp eq i32 %phi.5, -1
  br i1 %cmp373, label %for.end404, label %for.body374

for.end404:                                       ; preds = %for.inc401
  %cmp405 = icmp sgt i32 %count.6.lcssa, 0
  br i1 %cmp405, label %if.then406, label %for.inc408

if.then406:                                       ; preds = %for.end404
  call void @IVqsortUp(i32 %count.6.lcssa, i32* %list.0) #5
  %93 = trunc i64 %indvars.iv890 to i32
  call void @IVL_setList(%struct._IVL* %call365, i32 %93, i32 %count.6.lcssa, i32* %list.0) #5
  br label %for.inc408

for.inc408:                                       ; preds = %for.body369, %for.end404, %if.then406
  %indvars.iv.next891 = add i64 %indvars.iv890, 1
  %lftr.wideiv892 = trunc i64 %indvars.iv.next891 to i32
  %exitcond893 = icmp eq i32 %lftr.wideiv892, %nPsi.0.lcssa
  br i1 %exitcond893, label %for.end410, label %for.body369

for.end410:                                       ; preds = %for.inc408, %for.end364
  br i1 %cmp65, label %if.then412, label %if.end416

if.then412:                                       ; preds = %for.end410
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i32 %nPhi.0.lcssa) #5
  %call414 = call i32 @IVL_writeForHumanEye(%struct._IVL* %call365, %struct._IO_FILE* %3) #5
  %call415 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end416

if.end416:                                        ; preds = %if.then412, %for.end410
  %94 = load i32* @icputimes, align 4, !tbaa !0
  %inc417 = add nsw i32 %94, 1
  %idxprom418 = sext i32 %inc417 to i64
  %arrayidx419 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom418
  store double 0.000000e+00, double* %arrayidx419, align 8, !tbaa !3
  %inc420 = add nsw i32 %94, 2
  store i32 %inc420, i32* @icputimes, align 4, !tbaa !0
  %idxprom421 = sext i32 %inc420 to i64
  %arrayidx422 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom421
  store double 0.000000e+00, double* %arrayidx422, align 8, !tbaa !3
  %call423 = call i32* @IVL_equivMap1(%struct._IVL* %call365) #5
  %call424 = call i32 @IVmax(i32 %nPsi.0.lcssa, i32* %call423, i32* %ii) #5
  %add425 = add nsw i32 %call424, 1
  store i32 %add425, i32* %pnseg, align 4, !tbaa !0
  br i1 %cmp65, label %if.then427, label %if.end432

if.then427:                                       ; preds = %if.end416
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str22, i64 0, i64 0), i32 %add425) #5
  %call429 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i32 %nPhi.0.lcssa) #5
  %call430 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %nPsi.0.lcssa, i32* %call423, i32 15, i32* %ierr) #5
  %call431 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end432

if.end432:                                        ; preds = %if.then427, %if.end416
  %95 = load i32* @icputimes, align 4, !tbaa !0
  %inc433 = add nsw i32 %95, 1
  store i32 %inc433, i32* @icputimes, align 4, !tbaa !0
  %idxprom434 = sext i32 %inc433 to i64
  %arrayidx435 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom434
  store double 0.000000e+00, double* %arrayidx435, align 8, !tbaa !3
  br i1 %cmp14884, label %for.body438, label %for.end458

for.body438:                                      ; preds = %if.end432, %for.inc456
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc456 ], [ 0, %if.end432 ]
  %arrayidx440 = getelementptr inbounds i32* %call7, i64 %indvars.iv
  %96 = load i32* %arrayidx440, align 4, !tbaa !0
  %cmp441 = icmp sgt i32 %96, 0
  br i1 %cmp441, label %if.then442, label %if.else445

if.then442:                                       ; preds = %for.body438
  %sub = add nsw i32 %96, -1
  %arrayidx444 = getelementptr inbounds i32* %call11, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx444, align 4, !tbaa !0
  br label %for.inc456

if.else445:                                       ; preds = %for.body438
  %arrayidx447 = getelementptr inbounds i32* %call44, i64 %indvars.iv
  %97 = load i32* %arrayidx447, align 4, !tbaa !0
  %idxprom448 = sext i32 %97 to i64
  %arrayidx449 = getelementptr inbounds i32* %call296, i64 %idxprom448
  %98 = load i32* %arrayidx449, align 4, !tbaa !0
  %idxprom450 = sext i32 %98 to i64
  %arrayidx451 = getelementptr inbounds i32* %call423, i64 %idxprom450
  %99 = load i32* %arrayidx451, align 4, !tbaa !0
  %add452 = add nsw i32 %99, %ndom.0.lcssa
  %arrayidx454 = getelementptr inbounds i32* %call11, i64 %indvars.iv
  store i32 %add452, i32* %arrayidx454, align 4, !tbaa !0
  br label %for.inc456

for.inc456:                                       ; preds = %if.then442, %if.else445
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %for.cond436.for.end458_crit_edge, label %for.body438

for.cond436.for.end458_crit_edge:                 ; preds = %for.inc456
  %.pre937 = load i32* @icputimes, align 4, !tbaa !0
  br label %for.end458

for.end458:                                       ; preds = %for.cond436.for.end458_crit_edge, %if.end432
  %100 = phi i32 [ %.pre937, %for.cond436.for.end458_crit_edge ], [ %inc433, %if.end432 ]
  %inc459 = add nsw i32 %100, 1
  store i32 %inc459, i32* @icputimes, align 4, !tbaa !0
  %idxprom460 = sext i32 %inc459 to i64
  %arrayidx461 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom460
  store double 0.000000e+00, double* %arrayidx461, align 8, !tbaa !3
  %call462 = call %struct._IVL* @IVL_free(%struct._IVL* %call131) #5
  %call463 = call %struct._IVL* @IVL_free(%struct._IVL* %call87) #5
  %call464 = call %struct._IVL* @IVL_free(%struct._IVL* %call365) #5
  call void @IVfree(i32* %call43) #5
  call void @IVfree(i32* %call44) #5
  call void @IVfree(i32* %call80) #5
  call void @IVfree(i32* %list.0) #5
  call void @IVfree(i32* %call296) #5
  call void @IVfree(i32* %call133) #5
  call void @IVfree(i32* %call134) #5
  call void @IVfree(i32* %call132) #5
  call void @IVfree(i32* %call423) #5
  %101 = load i32* @icputimes, align 4, !tbaa !0
  %inc465 = add nsw i32 %101, 1
  store i32 %inc465, i32* @icputimes, align 4, !tbaa !0
  %idxprom466 = sext i32 %inc465 to i64
  %arrayidx467 = getelementptr inbounds [12 x double]* @cputimes, i64 0, i64 %idxprom466
  store double 0.000000e+00, double* %arrayidx467, align 8, !tbaa !3
  br i1 %cmp32, label %if.then469, label %return

if.then469:                                       ; preds = %for.end458
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %3)
  %103 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 1), align 8, !tbaa !3
  %104 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 0), align 16, !tbaa !3
  %sub471 = fsub double %103, %104
  %105 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 2), align 16, !tbaa !3
  %sub472 = fsub double %105, %103
  %106 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 3), align 8, !tbaa !3
  %sub473 = fsub double %106, %105
  %107 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 4), align 16, !tbaa !3
  %sub474 = fsub double %107, %106
  %108 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 5), align 8, !tbaa !3
  %sub475 = fsub double %108, %107
  %109 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 6), align 16, !tbaa !3
  %sub476 = fsub double %109, %108
  %110 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 7), align 8, !tbaa !3
  %sub477 = fsub double %110, %109
  %111 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 8), align 16, !tbaa !3
  %sub478 = fsub double %111, %110
  %112 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 9), align 8, !tbaa !3
  %sub479 = fsub double %112, %111
  %113 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 10), align 16, !tbaa !3
  %sub480 = fsub double %113, %112
  %114 = load double* getelementptr inbounds ([12 x double]* @cputimes, i64 0, i64 11), align 8, !tbaa !3
  %sub481 = fsub double %114, %104
  %call482 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([337 x i8]* @.str25, i64 0, i64 0), double %sub471, double %sub472, double %sub473, double %sub474, double %sub475, double %sub476, double %sub477, double %sub478, double %sub479, double %sub480, double %sub481) #5
  br label %return

return:                                           ; preds = %for.end458, %if.then469, %if.then38
  ret %struct._IV* %call10
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32* @IVL_equivMap1(%struct._IVL*) #3

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_free(%struct._IVL*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
