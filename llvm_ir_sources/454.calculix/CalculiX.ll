; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/CalculiX.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.ctrl = private unnamed_addr constant [26 x double] [double 4.500000e+00, double 8.500000e+00, double 9.500000e+00, double 1.650000e+01, double 1.050000e+01, double 4.500000e+00, double 0.000000e+00, double 5.500000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01, double 5.000000e-01, double 7.500000e-01, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.500000e+00, double 0.000000e+00, double 5.000000e-03, double 1.000000e-02, double 0.000000e+00, double 0.000000e+00, double 2.000000e-02, double 1.000000e-05, double 1.000000e-03, double 1.000000e-08], align 16
@main.output = private unnamed_addr constant [3 x i8] c"frd", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"SPECtestformatmodifier_z.txt\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"The following line should contain a single '3':\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%zd\0A\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"If it said anything else (such as 'zd') try compiling\0A\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"with -DSPEC_CPU_NOZMODIFIER\0A\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"ENER\00", align 1
@str = private unnamed_addr constant [63 x i8] c"\0A************************************************************\0A\00"
@str19 = private unnamed_addr constant [61 x i8] c"CalculiX DEVELOPMENT VERSION, Copyright(C) 1998 Guido Dhondt\00"
@str20 = private unnamed_addr constant [57 x i8] c"CalculiX comes with ABSOLUTELY NO WARRANTY. This is free\00"
@str21 = private unnamed_addr constant [55 x i8] c"software, and you are welcome to redistribute it under\00"
@str22 = private unnamed_addr constant [33 x i8] c"certain conditions, see gpl.htm\0A\00"
@str23 = private unnamed_addr constant [62 x i8] c"************************************************************\0A\00"
@str24 = private unnamed_addr constant [41 x i8] c"Determining the structure of the matrix:\00"
@str25 = private unnamed_addr constant [23 x i8] c"Decascading the MPC's\0A\00"
@str26 = private unnamed_addr constant [47 x i8] c"Renumbering the nodes to decrease the profile:\00"
@str27 = private unnamed_addr constant [31 x i8] c"Usage: CalculiX.exe -i jobname\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %nodempc = alloca i32*, align 8
  %icol = alloca i32*, align 8
  %mast1 = alloca i32*, align 8
  %irow = alloca i32*, align 8
  %coefmpc = alloca double*, align 8
  %ctrl = alloca [26 x double], align 16
  %jobnamec = alloca [132 x i8], align 16
  %jobnamef = alloca [132 x i8], align 16
  %output = alloca [3 x i8], align 1
  %nk = alloca i32, align 4
  %ne = alloca i32, align 4
  %nboun = alloca i32, align 4
  %nmpc = alloca i32, align 4
  %nforc = alloca i32, align 4
  %nload = alloca i32, align 4
  %noprint = alloca i32, align 4
  %neprint = alloca i32, align 4
  %nset = alloca i32, align 4
  %nalset = alloca i32, align 4
  %nsky = alloca i32, align 4
  %nmethod = alloca i32, align 4
  %neq = alloca i32, align 4
  %mpcfree = alloca i32, align 4
  %nev = alloca i32, align 4
  %nzl = alloca i32, align 4
  %nam = alloca i32, align 4
  %nbounold = alloca i32, align 4
  %nzs = alloca i32, align 4
  %nmpc_ = alloca i32, align 4
  %nload_ = alloca i32, align 4
  %nforc_ = alloca i32, align 4
  %istep = alloca i32, align 4
  %istat = alloca i32, align 4
  %nboun_ = alloca i32, align 4
  %iperturb = alloca i32, align 4
  %nmat = alloca i32, align 4
  %ntmat_ = alloca i32, align 4
  %norien = alloca i32, align 4
  %ithermal = alloca i32, align 4
  %iprestr = alloca i32, align 4
  %in = alloca i32, align 4
  %kode = alloca i32, align 4
  %isolver = alloca i32, align 4
  %mxiter = alloca i32, align 4
  %ncv = alloca i32, align 4
  %iamom = alloca i32, align 4
  %iambodyf = alloca i32, align 4
  %jout = alloca i32, align 4
  %nlabel = alloca i32, align 4
  %nkon = alloca i32, align 4
  %idrct = alloca i32, align 4
  %jmax = alloca i32, align 4
  %iexpl = alloca i32, align 4
  %iplas = alloca i32, align 4
  %npmat_ = alloca i32, align 4
  %mint_ = alloca i32, align 4
  %ntrans = alloca i32, align 4
  %mpcend = alloca i32, align 4
  %namtot_ = alloca i32, align 4
  %ns = alloca [5 x i32], align 16
  %iumat = alloca i32, align 4
  %mpcmult = alloca i32, align 4
  %icascade = alloca i32, align 4
  %maxlenmpc = alloca i32, align 4
  %mpcinfo = alloca [4 x i32], align 16
  %ne1d = alloca i32, align 4
  %ne2d = alloca i32, align 4
  %infree = alloca [4 x i32], align 16
  %callfrommain = alloca i32, align 4
  %nflow = alloca i32, align 4
  %nflow_ = alloca i32, align 4
  %itread = alloca i32, align 4
  %nk_ = alloca i32, align 4
  %ne_ = alloca i32, align 4
  %nset_ = alloca i32, align 4
  %nalset_ = alloca i32, align 4
  %nmat_ = alloca i32, align 4
  %norien_ = alloca i32, align 4
  %nam_ = alloca i32, align 4
  %noprint_ = alloca i32, align 4
  %neprint_ = alloca i32, align 4
  %ntrans_ = alloca i32, align 4
  %ncs_ = alloca i32, align 4
  %nstate_ = alloca i32, align 4
  %ncmat_ = alloca i32, align 4
  %memmpc_ = alloca i32, align 4
  %p1 = alloca [3 x double], align 16
  %p12422 = bitcast [3 x double]* %p1 to i8*
  %p2 = alloca [3 x double], align 16
  %p22423 = bitcast [3 x double]* %p2 to i8*
  %bodyf = alloca [3 x double], align 16
  %bodyf2290 = bitcast [3 x double]* %bodyf to i8*
  %om = alloca double, align 8
  %omold = alloca double, align 8
  %tol = alloca double, align 8
  %bodyfold = alloca [3 x double], align 16
  %bodyfold2266 = bitcast [3 x double]* %bodyfold to i8*
  %tinc = alloca double, align 8
  %tper = alloca double, align 8
  %tmin = alloca double, align 8
  %tmax = alloca double, align 8
  %alpham = alloca double, align 8
  %betam = alloca double, align 8
  %alpha = alloca double, align 8
  %haftol = alloca double, align 8
  %ttime = alloca double, align 8
  %qaold = alloca double, align 8
  %csab = alloca [7 x double], align 16
  %physcon = alloca [2 x double], align 16
  store i32* null, i32** %nodempc, align 8, !tbaa !0
  store i32* null, i32** %icol, align 8, !tbaa !0
  store i32* null, i32** %mast1, align 8, !tbaa !0
  store i32* null, i32** %irow, align 8, !tbaa !0
  store double* null, double** %coefmpc, align 8, !tbaa !0
  %0 = bitcast [26 x double]* %ctrl to i8*
  call void @llvm.lifetime.start(i64 208, i8* %0) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([26 x double]* @main.ctrl to i8*), i64 208, i32 16, i1 false)
  %1 = getelementptr inbounds [132 x i8]* %jobnamec, i64 0, i64 0
  call void @llvm.lifetime.start(i64 132, i8* %1) #1
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 132, i32 16, i1 false)
  %2 = getelementptr inbounds [132 x i8]* %jobnamef, i64 0, i64 0
  call void @llvm.lifetime.start(i64 132, i8* %2) #1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 132, i32 16, i1 false)
  %3 = getelementptr inbounds [3 x i8]* %output, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([3 x i8]* @main.output, i64 0, i64 0), i64 3, i32 1, i1 false)
  store i32 0, i32* %neq, align 4, !tbaa !3
  store i32 1, i32* %mpcfree, align 4, !tbaa !3
  store i32 0, i32* %nbounold, align 4, !tbaa !3
  store i32 0, i32* %nmpc_, align 4, !tbaa !3
  store i32 0, i32* %nload_, align 4, !tbaa !3
  store i32 0, i32* %nforc_, align 4, !tbaa !3
  store i32 0, i32* %nboun_, align 4, !tbaa !3
  store i32 0, i32* %iperturb, align 4, !tbaa !3
  store i32 0, i32* %ntmat_, align 4, !tbaa !3
  store i32 0, i32* %isolver, align 4, !tbaa !3
  store i32 0, i32* %nkon, align 4, !tbaa !3
  store i32 0, i32* %iplas, align 4, !tbaa !3
  store i32 0, i32* %npmat_, align 4, !tbaa !3
  store i32 0, i32* %mint_, align 4, !tbaa !3
  store i32 0, i32* %namtot_, align 4, !tbaa !3
  store i32 0, i32* %iumat, align 4, !tbaa !3
  store i32 0, i32* %ne1d, align 4, !tbaa !3
  store i32 0, i32* %ne2d, align 4, !tbaa !3
  %4 = bitcast [4 x i32]* %infree to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %nflow_, align 4, !tbaa !3
  store i32 0, i32* %nk_, align 4, !tbaa !3
  store i32 0, i32* %ne_, align 4, !tbaa !3
  store i32 0, i32* %nset_, align 4, !tbaa !3
  store i32 0, i32* %nalset_, align 4, !tbaa !3
  store i32 0, i32* %nmat_, align 4, !tbaa !3
  store i32 0, i32* %norien_, align 4, !tbaa !3
  store i32 0, i32* %nam_, align 4, !tbaa !3
  store i32 0, i32* %noprint_, align 4, !tbaa !3
  store i32 0, i32* %neprint_, align 4, !tbaa !3
  store i32 0, i32* %ntrans_, align 4, !tbaa !3
  store i32 0, i32* %ncs_, align 4, !tbaa !3
  store i32 0, i32* %nstate_, align 4, !tbaa !3
  store i32 0, i32* %ncmat_, align 4, !tbaa !3
  store i32 0, i32* %memmpc_, align 4, !tbaa !3
  store double 0.000000e+00, double* %alpham, align 8, !tbaa !4
  store double 0.000000e+00, double* %betam, align 8, !tbaa !4
  store double 0.000000e+00, double* %ttime, align 8, !tbaa !4
  store double 0.000000e+00, double* %qaold, align 8, !tbaa !4
  %5 = bitcast [7 x double]* %csab to i8*
  call void @llvm.lifetime.start(i64 56, i8* %5) #1
  %cmp = icmp eq i32 %argc, 1
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %puts1973 = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str27, i64 0, i64 0))
  call void (...)* @stop_() #4
  br label %if.end40

for.cond:                                         ; preds = %entry, %for.body
  %indvars.iv2426 = phi i64 [ %indvars.iv.next2427, %for.body ], [ 1, %entry ]
  %i.0 = phi i32 [ %add, %for.body ], [ 1, %entry ]
  %6 = trunc i64 %indvars.iv2426 to i32
  %cmp1 = icmp slt i32 %6, %argc
  br i1 %cmp1, label %for.body, label %if.then15

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8** %argv, i64 %indvars.iv2426
  %7 = load i8** %arrayidx, align 8, !tbaa !0
  %call2 = call i32 @strcmp1(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp3 = icmp eq i32 %call2, 0
  %indvars.iv.next2427 = add i64 %indvars.iv2426, 1
  %add = add nsw i32 %i.0, 1
  br i1 %cmp3, label %if.then4, label %for.cond

if.then4:                                         ; preds = %for.body
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8** %argv, i64 %idxprom5
  %8 = load i8** %arrayidx6, align 8, !tbaa !0
  %call7 = call i8* @strcpy(i8* %1, i8* %8) #4
  %9 = load i8** %arrayidx6, align 8, !tbaa !0
  %call12 = call i32 @strcpy1(i8* %2, i8* %9, i32 132) #4
  br label %for.cond23

if.then15:                                        ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds i8** %argv, i64 1
  %10 = load i8** %arrayidx17, align 8, !tbaa !0
  %call18 = call i8* @strcpy(i8* %1, i8* %10) #4
  %11 = load i8** %arrayidx17, align 8, !tbaa !0
  %call21 = call i32 @strcpy1(i8* %2, i8* %11, i32 132) #4
  br label %for.cond23

for.cond23:                                       ; preds = %if.then15, %if.then4, %for.body25
  %indvars.iv2424 = phi i64 [ %indvars.iv.next2425, %for.body25 ], [ 1, %if.then4 ], [ 1, %if.then15 ]
  %i.1 = phi i32 [ %add32, %for.body25 ], [ 1, %if.then4 ], [ 1, %if.then15 ]
  %12 = trunc i64 %indvars.iv2424 to i32
  %cmp24 = icmp slt i32 %12, %argc
  br i1 %cmp24, label %for.body25, label %if.end40

for.body25:                                       ; preds = %for.cond23
  %arrayidx27 = getelementptr inbounds i8** %argv, i64 %indvars.iv2424
  %13 = load i8** %arrayidx27, align 8, !tbaa !0
  %call28 = call i32 @strcmp1(i8* %13, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp29 = icmp eq i32 %call28, 0
  %indvars.iv.next2425 = add i64 %indvars.iv2424, 1
  %add32 = add nsw i32 %i.1, 1
  br i1 %cmp29, label %if.then30, label %for.cond23

if.then30:                                        ; preds = %for.body25
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i8** %argv, i64 %idxprom33
  %14 = load i8** %arrayidx34, align 8, !tbaa !0
  %call35 = call i8* @strcpy(i8* %3, i8* %14) #4
  br label %if.end40

if.end40:                                         ; preds = %for.cond23, %if.then30, %if.then
  %call41 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #4
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %call41)
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call41, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 3) #4
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %call41)
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %call41)
  %call46 = call i32 @fclose(%struct._IO_FILE* %call41) #4
  call void @openfile_(i8* %2, i8* %3) #4
  %puts = call i32 @puts(i8* getelementptr inbounds ([63 x i8]* @str, i64 0, i64 0))
  %puts1959 = call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str19, i64 0, i64 0))
  %puts1960 = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str20, i64 0, i64 0))
  %puts1961 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str21, i64 0, i64 0))
  %puts1962 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str22, i64 0, i64 0))
  %puts1963 = call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str23, i64 0, i64 0))
  store i32 0, i32* %istep, align 4, !tbaa !3
  store i32 0, i32* %istat, align 4, !tbaa !3
  store i32 0, i32* %ithermal, align 4, !tbaa !3
  store i32 0, i32* %iprestr, align 4, !tbaa !3
  store i32 1, i32* %in, align 4, !tbaa !3
  store i32 0, i32* %kode, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds [5 x i32]* %ns, i64 0, i64 0
  store i32 0, i32* %arrayidx55, align 16, !tbaa !3
  %arrayidx56 = getelementptr inbounds [5 x i32]* %ns, i64 0, i64 4
  store i32 1, i32* %arrayidx56, align 16, !tbaa !3
  store i32 0, i32* %itread, align 4, !tbaa !3
  br label %for.body60

for.body60:                                       ; preds = %if.end40, %for.inc73
  %rmeminset.02142 = phi i32* [ null, %if.end40 ], [ %rmeminset.1, %for.inc73 ]
  %meminset.02141 = phi i32* [ null, %if.end40 ], [ %meminset.1, %for.inc73 ]
  %set.02140 = phi i8* [ null, %if.end40 ], [ %set.1, %for.inc73 ]
  call void @allocation_(i32* %nload_, i32* %nforc_, i32* %nboun_, i32* %nk_, i32* %ne_, i32* %nmpc_, i32* %nset_, i32* %nalset_, i32* %nmat_, i32* %ntmat_, i32* %npmat_, i32* %norien_, i32* %nam_, i32* %noprint_, i32* %neprint_, i32* %mint_, i32* %ntrans_, i32* %in, i32* %itread, i8* %set.02140, i32* %meminset.02141, i32* %rmeminset.02142, i32* %ncs_, i32* %namtot_, i32* %ncmat_, i32* %memmpc_, i32* %ne1d, i32* %ne2d, i32* %nflow_) #4
  %18 = load i32* %itread, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %18, 0
  br i1 %cmp61, label %if.then63, label %if.else71

if.then63:                                        ; preds = %for.body60
  %19 = load i32* %nset_, align 4, !tbaa !3
  %mul64 = mul nsw i32 %19, 21
  %conv65 = sext i32 %mul64 to i64
  %call66 = call i8* @u_calloc(i64 %conv65, i64 1) #4
  %20 = load i32* %nset_, align 4, !tbaa !3
  %conv67 = sext i32 %20 to i64
  %call68 = call i8* @u_calloc(i64 %conv67, i64 4) #4
  %21 = bitcast i8* %call68 to i32*
  %22 = load i32* %nset_, align 4, !tbaa !3
  %conv69 = sext i32 %22 to i64
  %call70 = call i8* @u_calloc(i64 %conv69, i64 4) #4
  %23 = bitcast i8* %call70 to i32*
  br label %for.inc73

if.else71:                                        ; preds = %for.body60
  call void @free(i8* %set.02140) #4
  %24 = bitcast i32* %meminset.02141 to i8*
  call void @free(i8* %24) #4
  %25 = bitcast i32* %rmeminset.02142 to i8*
  call void @free(i8* %25) #4
  br label %for.inc73

for.inc73:                                        ; preds = %if.then63, %if.else71
  %set.1 = phi i8* [ %call66, %if.then63 ], [ %set.02140, %if.else71 ]
  %meminset.1 = phi i32* [ %21, %if.then63 ], [ %meminset.02141, %if.else71 ]
  %rmeminset.1 = phi i32* [ %23, %if.then63 ], [ %rmeminset.02142, %if.else71 ]
  %26 = load i32* %itread, align 4, !tbaa !3
  %inc74 = add nsw i32 %26, 1
  store i32 %inc74, i32* %itread, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %inc74, 2
  br i1 %cmp58, label %for.body60, label %for.end75

for.end75:                                        ; preds = %for.inc73
  store i32 0, i32* %nload, align 4, !tbaa !3
  store i32 0, i32* %nforc, align 4, !tbaa !3
  store i32 0, i32* %nboun, align 4, !tbaa !3
  store i32 0, i32* %nk, align 4, !tbaa !3
  store i32 0, i32* %nmpc, align 4, !tbaa !3
  store i32 0, i32* %nflow, align 4, !tbaa !3
  store i32 8, i32* %nlabel, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %p12422, i8 0, i64 24, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %p22423, i8 0, i64 24, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %bodyf2290, i8 0, i64 24, i32 16, i1 false)
  store double 0.000000e+00, double* %om, align 8, !tbaa !4
  store i32 0, i32* %iamom, align 4, !tbaa !3
  store i32 0, i32* %iambodyf, align 4, !tbaa !3
  %27 = load i32* %istat, align 4, !tbaa !3
  %cmp8920422143 = icmp sgt i32 %27, -1
  br i1 %cmp8920422143, label %while.body.lr.ph.lr.ph, label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %for.end75
  %arrayidx151 = getelementptr inbounds [4 x i32]* %infree, i64 0, i64 2
  %arraydecay518 = getelementptr inbounds [3 x double]* %p1, i64 0, i64 0
  %arraydecay519 = getelementptr inbounds [3 x double]* %p2, i64 0, i64 0
  %arraydecay520 = getelementptr inbounds [3 x double]* %bodyf, i64 0, i64 0
  %arraydecay522 = getelementptr inbounds [7 x double]* %csab, i64 0, i64 0
  %arraydecay523 = getelementptr inbounds [4 x i32]* %infree, i64 0, i64 0
  %arraydecay524 = getelementptr inbounds [2 x double]* %physcon, i64 0, i64 0
  %arraydecay525 = getelementptr inbounds [26 x double]* %ctrl, i64 0, i64 0
  %arrayidx664 = getelementptr inbounds [4 x i32]* %infree, i64 0, i64 1
  %arrayidx683 = getelementptr inbounds [4 x i32]* %infree, i64 0, i64 3
  %arrayidx1192 = getelementptr inbounds [5 x i32]* %ns, i64 0, i64 1
  %arraydecay1251 = getelementptr inbounds [3 x double]* %bodyfold, i64 0, i64 0
  %arrayidx1265 = getelementptr inbounds [4 x i32]* %mpcinfo, i64 0, i64 0
  %arrayidx1266 = getelementptr inbounds [4 x i32]* %mpcinfo, i64 0, i64 1
  %arrayidx1267 = getelementptr inbounds [4 x i32]* %mpcinfo, i64 0, i64 2
  %arrayidx1268 = getelementptr inbounds [4 x i32]* %mpcinfo, i64 0, i64 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.backedge
  %kon.0.ph2241 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %kon.2, %while.cond.outer.backedge ]
  %nodeboun.0.ph2240 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %577, %while.cond.outer.backedge ]
  %ndirboun.0.ph2239 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %580, %while.cond.outer.backedge ]
  %nflowold.0.ph2238 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %.nflowold.0, %while.cond.outer.backedge ]
  %nloadold.0.ph2237 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %767, %while.cond.outer.backedge ]
  %nforcold.0.ph2236 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %766, %while.cond.outer.backedge ]
  %ipompc.0.ph2235 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %621, %while.cond.outer.backedge ]
  %nodeforc.0.ph2234 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %592, %while.cond.outer.backedge ]
  %ndirforc.0.ph2233 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %595, %while.cond.outer.backedge ]
  %lakonLen.0.ph2232 = phi i32 [ 8, %while.body.lr.ph.lr.ph ], [ %lakonLen.2, %while.cond.outer.backedge ]
  %nodeflabLen.0.ph2231 = phi i32 [ 4, %while.body.lr.ph.lr.ph ], [ %nodeflabLen.1, %while.cond.outer.backedge ]
  %noelplabLen.0.ph2230 = phi i32 [ 4, %while.body.lr.ph.lr.ph ], [ %noelplabLen.1, %while.cond.outer.backedge ]
  %amnameLen.0.ph2229 = phi i32 [ 20, %while.body.lr.ph.lr.ph ], [ %amnameLen.3, %while.cond.outer.backedge ]
  %matnameLen.0.ph2228 = phi i32 [ 20, %while.body.lr.ph.lr.ph ], [ %matnameLen.2, %while.cond.outer.backedge ]
  %labmpc.0.ph2227 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %labmpc.21983, %while.cond.outer.backedge ]
  %lakon.0.ph2226 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %lakon.2, %while.cond.outer.backedge ]
  %nodeflab.0.ph2225 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %nodeflab.1, %while.cond.outer.backedge ]
  %noelplab.0.ph2224 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %noelplab.1, %while.cond.outer.backedge ]
  %amname.0.ph2223 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %amname.3, %while.cond.outer.backedge ]
  %orname.0.ph2222 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %orname.3, %while.cond.outer.backedge ]
  %matname.0.ph2221 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %matname.2, %while.cond.outer.backedge ]
  %set.2.ph2220 = phi i8* [ %set.1, %while.body.lr.ph.lr.ph ], [ %set.4, %while.cond.outer.backedge ]
  %sideload.0.ph2219 = phi i8* [ null, %while.body.lr.ph.lr.ph ], [ %call1029, %while.cond.outer.backedge ]
  %xflowold.0.ph2218 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xflowold.3, %while.cond.outer.backedge ]
  %xflow.0.ph2217 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xflow.1, %while.cond.outer.backedge ]
  %cocon.0.ph2216 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %cocon.1, %while.cond.outer.backedge ]
  %shcon.0.ph2215 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %shcon.1, %while.cond.outer.backedge ]
  %ener.0.ph2214 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %ener.2, %while.cond.outer.backedge ]
  %trab.0.ph2213 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %trab.3, %while.cond.outer.backedge ]
  %xstate.0.ph2212 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xstate.2, %while.cond.outer.backedge ]
  %plkcon.0.ph2211 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %plkcon.3, %while.cond.outer.backedge ]
  %plicon.0.ph2210 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %plicon.3, %while.cond.outer.backedge ]
  %eei.0.ph2209 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %eei.1, %while.cond.outer.backedge ]
  %t1old.0.ph2208 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %t1old.2, %while.cond.outer.backedge ]
  %nelemload.0.ph2207 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %607, %while.cond.outer.backedge ]
  %nodeprint.0.ph2206 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %615, %while.cond.outer.backedge ]
  %accold.0.ph2205 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %accold.1, %while.cond.outer.backedge ]
  %veold.0.ph2204 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %veold.3, %while.cond.outer.backedge ]
  %amta.0.ph2203 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %amta.3, %while.cond.outer.backedge ]
  %orab.0.ph2202 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %orab.3, %while.cond.outer.backedge ]
  %prestr.0.ph2201 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %prestr.3, %while.cond.outer.backedge ]
  %t1.0.ph2200 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %t1.5, %while.cond.outer.backedge ]
  %t0.0.ph2199 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %t0.5, %while.cond.outer.backedge ]
  %alzero.0.ph2198 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %alzero.2, %while.cond.outer.backedge ]
  %alcon.0.ph2197 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %alcon.2, %while.cond.outer.backedge ]
  %rhcon.0.ph2196 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %rhcon.2, %while.cond.outer.backedge ]
  %elcon.0.ph2195 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %elcon.2, %while.cond.outer.backedge ]
  %offset.0.ph2194 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %offset.4, %while.cond.outer.backedge ]
  %thicke.0.ph2193 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %thicke.4, %while.cond.outer.backedge ]
  %thickn.0.ph2192 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %thickn.2, %while.cond.outer.backedge ]
  %dcs.0.ph2191 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %dcs.1, %while.cond.outer.backedge ]
  %xnor.0.ph2190 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xnor.4, %while.cond.outer.backedge ]
  %xloadold.0.ph2189 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xloadold.1, %while.cond.outer.backedge ]
  %sti.0.ph2188 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %sti.1, %while.cond.outer.backedge ]
  %vold.0.ph2187 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %vold.1, %while.cond.outer.backedge ]
  %nelemprint.0.ph2186 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %618, %while.cond.outer.backedge ]
  %xforcold.0.ph2185 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xforcold.1, %while.cond.outer.backedge ]
  %xbounold.0.ph2184 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xbounold.2, %while.cond.outer.backedge ]
  %nnn.0.ph2183 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nnn.21982, %while.cond.outer.backedge ]
  %xload.0.ph2182 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %612, %while.cond.outer.backedge ]
  %xforc.0.ph2181 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %598, %while.cond.outer.backedge ]
  %xboun.0.ph2180 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %583, %while.cond.outer.backedge ]
  %co.0.ph2179 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %574, %while.cond.outer.backedge ]
  %iamflow.0.ph2178 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iamflow.2, %while.cond.outer.backedge ]
  %nodeflow.0.ph2177 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nodeflow.1, %while.cond.outer.backedge ]
  %ncocon.0.ph2176 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ncocon.1, %while.cond.outer.backedge ]
  %nshcon.0.ph2175 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nshcon.1, %while.cond.outer.backedge ]
  %inoel.0.ph2174 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %inoel.4, %while.cond.outer.backedge ]
  %iponoel.0.ph2173 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iponoel.4, %while.cond.outer.backedge ]
  %ilforc.0.ph2172 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %604, %while.cond.outer.backedge ]
  %ikforc.0.ph2171 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %601, %while.cond.outer.backedge ]
  %knor.0.ph2170 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %knor.4, %while.cond.outer.backedge ]
  %iponor.0.ph2169 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iponor.4, %while.cond.outer.backedge ]
  %inotr.0.ph2168 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %inotr.3, %while.cond.outer.backedge ]
  %nplkcon.0.ph2167 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nplkcon.3, %while.cond.outer.backedge ]
  %nplicon.0.ph2166 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nplicon.3, %while.cond.outer.backedge ]
  %iamboun.0.ph2165 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iamboun.3, %while.cond.outer.backedge ]
  %ipkon.0.ph2164 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ipkon.2, %while.cond.outer.backedge ]
  %namta.0.ph2163 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %namta.3, %while.cond.outer.backedge ]
  %iamt1.0.ph2162 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iamt1.2, %while.cond.outer.backedge ]
  %iamload.0.ph2161 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iamload.3, %while.cond.outer.backedge ]
  %iamforc.0.ph2160 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iamforc.3, %while.cond.outer.backedge ]
  %nalcon.0.ph2159 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nalcon.2, %while.cond.outer.backedge ]
  %nelcon.0.ph2158 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nelcon.2, %while.cond.outer.backedge ]
  %ndirbounold.0.ph2157 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ndirbounold.2, %while.cond.outer.backedge ]
  %nodebounold.0.ph2156 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nodebounold.2, %while.cond.outer.backedge ]
  %nrhcon.0.ph2155 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %nrhcon.2, %while.cond.outer.backedge ]
  %ielorien.0.ph2154 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ielorien.3, %while.cond.outer.backedge ]
  %ielmat.0.ph2153 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ielmat.2, %while.cond.outer.backedge ]
  %ialset.0.ph2152 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ialset.2, %while.cond.outer.backedge ]
  %iendset.0.ph2151 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %iendset.2, %while.cond.outer.backedge ]
  %istartset.0.ph2150 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %istartset.2, %while.cond.outer.backedge ]
  %ilboun.0.ph2149 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %589, %while.cond.outer.backedge ]
  %ikboun.0.ph2148 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %586, %while.cond.outer.backedge ]
  %ilmpc.0.ph2147 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ilmpc.21980, %while.cond.outer.backedge ]
  %ikmpc.0.ph2146 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ikmpc.21978, %while.cond.outer.backedge ]
  %rig.0.ph2145 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %rig.4, %while.cond.outer.backedge ]
  %ics.0.ph2144 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %ics.2, %while.cond.outer.backedge ]
  %28 = sext i32 %nforcold.0.ph2236 to i64
  %29 = shl nsw i64 %28, 3
  %30 = xor i32 %nforcold.0.ph2236, -1
  %31 = add i32 %nforcold.0.ph2236, 1
  %32 = shl i32 %nloadold.0.ph2237, 1
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 3
  %35 = xor i32 %32, -1
  %36 = or i32 %32, 1
  %37 = sext i32 %nflowold.0.ph2238 to i64
  %38 = shl nsw i64 %37, 3
  %39 = xor i32 %nflowold.0.ph2238, -1
  %40 = add i32 %nflowold.0.ph2238, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %kon.02138 = phi i32* [ %kon.0.ph2241, %while.body.lr.ph ], [ %kon.2, %while.cond.backedge ]
  %nodeboun.02137 = phi i32* [ %nodeboun.0.ph2240, %while.body.lr.ph ], [ %577, %while.cond.backedge ]
  %ndirboun.02136 = phi i32* [ %ndirboun.0.ph2239, %while.body.lr.ph ], [ %580, %while.cond.backedge ]
  %ipompc.02135 = phi i32* [ %ipompc.0.ph2235, %while.body.lr.ph ], [ %621, %while.cond.backedge ]
  %nodeforc.02134 = phi i32* [ %nodeforc.0.ph2234, %while.body.lr.ph ], [ %592, %while.cond.backedge ]
  %ndirforc.02133 = phi i32* [ %ndirforc.0.ph2233, %while.body.lr.ph ], [ %595, %while.cond.backedge ]
  %lakonLen.02132 = phi i32 [ %lakonLen.0.ph2232, %while.body.lr.ph ], [ %lakonLen.2, %while.cond.backedge ]
  %nodeflabLen.02131 = phi i32 [ %nodeflabLen.0.ph2231, %while.body.lr.ph ], [ %nodeflabLen.1, %while.cond.backedge ]
  %noelplabLen.02130 = phi i32 [ %noelplabLen.0.ph2230, %while.body.lr.ph ], [ %noelplabLen.1, %while.cond.backedge ]
  %amnameLen.02129 = phi i32 [ %amnameLen.0.ph2229, %while.body.lr.ph ], [ %amnameLen.3, %while.cond.backedge ]
  %matnameLen.02128 = phi i32 [ %matnameLen.0.ph2228, %while.body.lr.ph ], [ %matnameLen.2, %while.cond.backedge ]
  %labmpc.02127 = phi i8* [ %labmpc.0.ph2227, %while.body.lr.ph ], [ %labmpc.21983, %while.cond.backedge ]
  %lakon.02126 = phi i8* [ %lakon.0.ph2226, %while.body.lr.ph ], [ %lakon.2, %while.cond.backedge ]
  %nodeflab.02125 = phi i8* [ %nodeflab.0.ph2225, %while.body.lr.ph ], [ %nodeflab.1, %while.cond.backedge ]
  %noelplab.02124 = phi i8* [ %noelplab.0.ph2224, %while.body.lr.ph ], [ %noelplab.1, %while.cond.backedge ]
  %amname.02123 = phi i8* [ %amname.0.ph2223, %while.body.lr.ph ], [ %amname.3, %while.cond.backedge ]
  %orname.02122 = phi i8* [ %orname.0.ph2222, %while.body.lr.ph ], [ %orname.3, %while.cond.backedge ]
  %matname.02121 = phi i8* [ %matname.0.ph2221, %while.body.lr.ph ], [ %matname.2, %while.cond.backedge ]
  %set.22120 = phi i8* [ %set.2.ph2220, %while.body.lr.ph ], [ %set.4, %while.cond.backedge ]
  %sideload.02119 = phi i8* [ %sideload.0.ph2219, %while.body.lr.ph ], [ %call1029, %while.cond.backedge ]
  %xflowold.02118 = phi double* [ %xflowold.0.ph2218, %while.body.lr.ph ], [ %xflowold.3, %while.cond.backedge ]
  %xflow.02117 = phi double* [ %xflow.0.ph2217, %while.body.lr.ph ], [ %xflow.1, %while.cond.backedge ]
  %cocon.02116 = phi double* [ %cocon.0.ph2216, %while.body.lr.ph ], [ %cocon.1, %while.cond.backedge ]
  %shcon.02115 = phi double* [ %shcon.0.ph2215, %while.body.lr.ph ], [ %shcon.1, %while.cond.backedge ]
  %ener.02114 = phi double* [ %ener.0.ph2214, %while.body.lr.ph ], [ %ener.2, %while.cond.backedge ]
  %trab.02113 = phi double* [ %trab.0.ph2213, %while.body.lr.ph ], [ %trab.3, %while.cond.backedge ]
  %xstate.02112 = phi double* [ %xstate.0.ph2212, %while.body.lr.ph ], [ %xstate.2, %while.cond.backedge ]
  %plkcon.02111 = phi double* [ %plkcon.0.ph2211, %while.body.lr.ph ], [ %plkcon.3, %while.cond.backedge ]
  %plicon.02110 = phi double* [ %plicon.0.ph2210, %while.body.lr.ph ], [ %plicon.3, %while.cond.backedge ]
  %eei.02109 = phi double* [ %eei.0.ph2209, %while.body.lr.ph ], [ %eei.1, %while.cond.backedge ]
  %t1old.02108 = phi double* [ %t1old.0.ph2208, %while.body.lr.ph ], [ %t1old.2, %while.cond.backedge ]
  %nelemload.02107 = phi i32* [ %nelemload.0.ph2207, %while.body.lr.ph ], [ %607, %while.cond.backedge ]
  %nodeprint.02106 = phi i32* [ %nodeprint.0.ph2206, %while.body.lr.ph ], [ %615, %while.cond.backedge ]
  %accold.02104 = phi double* [ %accold.0.ph2205, %while.body.lr.ph ], [ %accold.1, %while.cond.backedge ]
  %veold.02103 = phi double* [ %veold.0.ph2204, %while.body.lr.ph ], [ %veold.3, %while.cond.backedge ]
  %amta.02102 = phi double* [ %amta.0.ph2203, %while.body.lr.ph ], [ %amta.3, %while.cond.backedge ]
  %orab.02101 = phi double* [ %orab.0.ph2202, %while.body.lr.ph ], [ %orab.3, %while.cond.backedge ]
  %prestr.02100 = phi double* [ %prestr.0.ph2201, %while.body.lr.ph ], [ %prestr.3, %while.cond.backedge ]
  %t1.02099 = phi double* [ %t1.0.ph2200, %while.body.lr.ph ], [ %t1.5, %while.cond.backedge ]
  %t0.02098 = phi double* [ %t0.0.ph2199, %while.body.lr.ph ], [ %t0.5, %while.cond.backedge ]
  %alzero.02097 = phi double* [ %alzero.0.ph2198, %while.body.lr.ph ], [ %alzero.2, %while.cond.backedge ]
  %alcon.02096 = phi double* [ %alcon.0.ph2197, %while.body.lr.ph ], [ %alcon.2, %while.cond.backedge ]
  %rhcon.02095 = phi double* [ %rhcon.0.ph2196, %while.body.lr.ph ], [ %rhcon.2, %while.cond.backedge ]
  %elcon.02094 = phi double* [ %elcon.0.ph2195, %while.body.lr.ph ], [ %elcon.2, %while.cond.backedge ]
  %offset.02093 = phi double* [ %offset.0.ph2194, %while.body.lr.ph ], [ %offset.4, %while.cond.backedge ]
  %thicke.02092 = phi double* [ %thicke.0.ph2193, %while.body.lr.ph ], [ %thicke.4, %while.cond.backedge ]
  %thickn.02091 = phi double* [ %thickn.0.ph2192, %while.body.lr.ph ], [ %thickn.2, %while.cond.backedge ]
  %dcs.02090 = phi double* [ %dcs.0.ph2191, %while.body.lr.ph ], [ %dcs.1, %while.cond.backedge ]
  %xnor.02089 = phi double* [ %xnor.0.ph2190, %while.body.lr.ph ], [ %xnor.4, %while.cond.backedge ]
  %xloadold.02088 = phi double* [ %xloadold.0.ph2189, %while.body.lr.ph ], [ %xloadold.1, %while.cond.backedge ]
  %sti.02087 = phi double* [ %sti.0.ph2188, %while.body.lr.ph ], [ %sti.1, %while.cond.backedge ]
  %vold.02086 = phi double* [ %vold.0.ph2187, %while.body.lr.ph ], [ %vold.1, %while.cond.backedge ]
  %nelemprint.02085 = phi i32* [ %nelemprint.0.ph2186, %while.body.lr.ph ], [ %618, %while.cond.backedge ]
  %xforcold.02084 = phi double* [ %xforcold.0.ph2185, %while.body.lr.ph ], [ %xforcold.1, %while.cond.backedge ]
  %xbounold.02083 = phi double* [ %xbounold.0.ph2184, %while.body.lr.ph ], [ %xbounold.2, %while.cond.backedge ]
  %nnn.02082 = phi i32* [ %nnn.0.ph2183, %while.body.lr.ph ], [ %nnn.21982, %while.cond.backedge ]
  %xload.02081 = phi double* [ %xload.0.ph2182, %while.body.lr.ph ], [ %612, %while.cond.backedge ]
  %xforc.02080 = phi double* [ %xforc.0.ph2181, %while.body.lr.ph ], [ %598, %while.cond.backedge ]
  %xboun.02079 = phi double* [ %xboun.0.ph2180, %while.body.lr.ph ], [ %583, %while.cond.backedge ]
  %co.02078 = phi double* [ %co.0.ph2179, %while.body.lr.ph ], [ %574, %while.cond.backedge ]
  %iamflow.02077 = phi i32* [ %iamflow.0.ph2178, %while.body.lr.ph ], [ %iamflow.2, %while.cond.backedge ]
  %nodeflow.02076 = phi i32* [ %nodeflow.0.ph2177, %while.body.lr.ph ], [ %nodeflow.1, %while.cond.backedge ]
  %ncocon.02075 = phi i32* [ %ncocon.0.ph2176, %while.body.lr.ph ], [ %ncocon.1, %while.cond.backedge ]
  %nshcon.02074 = phi i32* [ %nshcon.0.ph2175, %while.body.lr.ph ], [ %nshcon.1, %while.cond.backedge ]
  %inoel.02073 = phi i32* [ %inoel.0.ph2174, %while.body.lr.ph ], [ %inoel.4, %while.cond.backedge ]
  %iponoel.02072 = phi i32* [ %iponoel.0.ph2173, %while.body.lr.ph ], [ %iponoel.4, %while.cond.backedge ]
  %ilforc.02071 = phi i32* [ %ilforc.0.ph2172, %while.body.lr.ph ], [ %604, %while.cond.backedge ]
  %ikforc.02070 = phi i32* [ %ikforc.0.ph2171, %while.body.lr.ph ], [ %601, %while.cond.backedge ]
  %knor.02069 = phi i32* [ %knor.0.ph2170, %while.body.lr.ph ], [ %knor.4, %while.cond.backedge ]
  %iponor.02068 = phi i32* [ %iponor.0.ph2169, %while.body.lr.ph ], [ %iponor.4, %while.cond.backedge ]
  %inotr.02067 = phi i32* [ %inotr.0.ph2168, %while.body.lr.ph ], [ %inotr.3, %while.cond.backedge ]
  %nplkcon.02066 = phi i32* [ %nplkcon.0.ph2167, %while.body.lr.ph ], [ %nplkcon.3, %while.cond.backedge ]
  %nplicon.02065 = phi i32* [ %nplicon.0.ph2166, %while.body.lr.ph ], [ %nplicon.3, %while.cond.backedge ]
  %iamboun.02064 = phi i32* [ %iamboun.0.ph2165, %while.body.lr.ph ], [ %iamboun.3, %while.cond.backedge ]
  %ipkon.02063 = phi i32* [ %ipkon.0.ph2164, %while.body.lr.ph ], [ %ipkon.2, %while.cond.backedge ]
  %namta.02062 = phi i32* [ %namta.0.ph2163, %while.body.lr.ph ], [ %namta.3, %while.cond.backedge ]
  %iamt1.02061 = phi i32* [ %iamt1.0.ph2162, %while.body.lr.ph ], [ %iamt1.2, %while.cond.backedge ]
  %iamload.02060 = phi i32* [ %iamload.0.ph2161, %while.body.lr.ph ], [ %iamload.3, %while.cond.backedge ]
  %iamforc.02059 = phi i32* [ %iamforc.0.ph2160, %while.body.lr.ph ], [ %iamforc.3, %while.cond.backedge ]
  %nalcon.02058 = phi i32* [ %nalcon.0.ph2159, %while.body.lr.ph ], [ %nalcon.2, %while.cond.backedge ]
  %nelcon.02057 = phi i32* [ %nelcon.0.ph2158, %while.body.lr.ph ], [ %nelcon.2, %while.cond.backedge ]
  %ndirbounold.02056 = phi i32* [ %ndirbounold.0.ph2157, %while.body.lr.ph ], [ %ndirbounold.2, %while.cond.backedge ]
  %nodebounold.02055 = phi i32* [ %nodebounold.0.ph2156, %while.body.lr.ph ], [ %nodebounold.2, %while.cond.backedge ]
  %nrhcon.02054 = phi i32* [ %nrhcon.0.ph2155, %while.body.lr.ph ], [ %nrhcon.2, %while.cond.backedge ]
  %ielorien.02053 = phi i32* [ %ielorien.0.ph2154, %while.body.lr.ph ], [ %ielorien.3, %while.cond.backedge ]
  %ielmat.02052 = phi i32* [ %ielmat.0.ph2153, %while.body.lr.ph ], [ %ielmat.2, %while.cond.backedge ]
  %ialset.02051 = phi i32* [ %ialset.0.ph2152, %while.body.lr.ph ], [ %ialset.2, %while.cond.backedge ]
  %iendset.02050 = phi i32* [ %iendset.0.ph2151, %while.body.lr.ph ], [ %iendset.2, %while.cond.backedge ]
  %istartset.02049 = phi i32* [ %istartset.0.ph2150, %while.body.lr.ph ], [ %istartset.2, %while.cond.backedge ]
  %ilboun.02048 = phi i32* [ %ilboun.0.ph2149, %while.body.lr.ph ], [ %589, %while.cond.backedge ]
  %ikboun.02047 = phi i32* [ %ikboun.0.ph2148, %while.body.lr.ph ], [ %586, %while.cond.backedge ]
  %ilmpc.02046 = phi i32* [ %ilmpc.0.ph2147, %while.body.lr.ph ], [ %ilmpc.21980, %while.cond.backedge ]
  %ikmpc.02045 = phi i32* [ %ikmpc.0.ph2146, %while.body.lr.ph ], [ %ikmpc.21978, %while.cond.backedge ]
  %rig.02044 = phi i32* [ %rig.0.ph2145, %while.body.lr.ph ], [ %rig.4, %while.cond.backedge ]
  %ics.02043 = phi i32* [ %ics.0.ph2144, %while.body.lr.ph ], [ %ics.2, %while.cond.backedge ]
  store i32 20000000, i32* %nzs, align 4, !tbaa !3
  %41 = load i32* %noprint_, align 4, !tbaa !3
  store i32 %41, i32* %noprint, align 4, !tbaa !3
  %42 = load i32* %neprint_, align 4, !tbaa !3
  store i32 %42, i32* %neprint, align 4, !tbaa !3
  %43 = load i32* %istep, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %43, 0
  br i1 %cmp91, label %if.then93, label %if.else371

if.then93:                                        ; preds = %while.body
  %44 = load i32* %ne_, align 4, !tbaa !3
  store i32 %44, i32* %ne, align 4, !tbaa !3
  %45 = load i32* %nset_, align 4, !tbaa !3
  store i32 %45, i32* %nset, align 4, !tbaa !3
  %46 = load i32* %nalset_, align 4, !tbaa !3
  store i32 %46, i32* %nalset, align 4, !tbaa !3
  %47 = load i32* %nmat_, align 4, !tbaa !3
  store i32 %47, i32* %nmat, align 4, !tbaa !3
  %48 = load i32* %norien_, align 4, !tbaa !3
  store i32 %48, i32* %norien, align 4, !tbaa !3
  %49 = load i32* %ntrans_, align 4, !tbaa !3
  store i32 %49, i32* %ntrans, align 4, !tbaa !3
  %50 = load i32* %nam_, align 4, !tbaa !3
  store i32 %50, i32* %nam, align 4, !tbaa !3
  %51 = load i32* %nk_, align 4, !tbaa !3
  %mul94 = mul nsw i32 %51, 3
  %conv95 = sext i32 %mul94 to i64
  %call96 = call i8* @u_calloc(i64 %conv95, i64 8) #4
  %52 = bitcast i8* %call96 to double*
  %53 = load i32* %ne_, align 4, !tbaa !3
  %mul97 = mul nsw i32 %53, 20
  %conv98 = sext i32 %mul97 to i64
  %call99 = call i8* @u_calloc(i64 %conv98, i64 4) #4
  %54 = bitcast i8* %call99 to i32*
  %55 = load i32* %ne_, align 4, !tbaa !3
  %conv100 = sext i32 %55 to i64
  %call101 = call i8* @u_calloc(i64 %conv100, i64 4) #4
  %56 = bitcast i8* %call101 to i32*
  %57 = load i32* %ne_, align 4, !tbaa !3
  %mul102 = shl nsw i32 %57, 3
  %conv104 = sext i32 %mul102 to i64
  %call105 = call i8* @u_calloc(i64 %conv104, i64 1) #4
  %58 = load i32* %ne1d, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %58, 0
  br i1 %cmp106, label %lor.lhs.false, label %if.then110

lor.lhs.false:                                    ; preds = %if.then93
  %59 = load i32* %ne2d, align 4, !tbaa !3
  %cmp108 = icmp eq i32 %59, 0
  br i1 %cmp108, label %if.end152, label %if.then110

if.then110:                                       ; preds = %lor.lhs.false, %if.then93
  %60 = load i32* %ne_, align 4, !tbaa !3
  %mul111 = mul nsw i32 %60, 40
  %conv112 = sext i32 %mul111 to i64
  %call113 = call i8* @u_calloc(i64 %conv112, i64 4) #4
  %61 = bitcast i8* %call113 to i32*
  %62 = load i32* %ne_, align 4, !tbaa !3
  %cmp1161988 = icmp sgt i32 %62, 0
  br i1 %cmp1161988, label %for.body118, label %for.end123

for.body118:                                      ; preds = %if.then110, %for.body118
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body118 ], [ 0, %if.then110 ]
  %arrayidx120 = getelementptr inbounds i32* %61, i64 %indvars.iv
  store i32 -1, i32* %arrayidx120, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %63 = load i32* %ne_, align 4, !tbaa !3
  %mul115 = mul nsw i32 %63, 40
  %64 = trunc i64 %indvars.iv.next to i32
  %cmp116 = icmp slt i32 %64, %mul115
  br i1 %cmp116, label %for.body118, label %for.end123

for.end123:                                       ; preds = %for.body118, %if.then110
  %65 = load i32* %ne1d, align 4, !tbaa !3
  %mul124 = mul nsw i32 %65, 36
  %66 = load i32* %ne2d, align 4, !tbaa !3
  %mul125 = mul nsw i32 %66, 24
  %add126 = add nsw i32 %mul125, %mul124
  %conv127 = sext i32 %add126 to i64
  %call128 = call i8* @u_calloc(i64 %conv127, i64 8) #4
  %67 = bitcast i8* %call128 to double*
  %68 = load i32* %ne1d, align 4, !tbaa !3
  %69 = load i32* %ne2d, align 4, !tbaa !3
  %add129 = add nsw i32 %69, %68
  %mul130 = mul nsw i32 %add129, 24
  %conv131 = sext i32 %mul130 to i64
  %call132 = call i8* @u_calloc(i64 %conv131, i64 4) #4
  %70 = bitcast i8* %call132 to i32*
  %71 = load i32* %nk_, align 4, !tbaa !3
  %mul133 = shl nsw i32 %71, 1
  %conv134 = sext i32 %mul133 to i64
  %call135 = call i8* @u_calloc(i64 %conv134, i64 8) #4
  %72 = bitcast i8* %call135 to double*
  %73 = load i32* %ne_, align 4, !tbaa !3
  %mul136 = mul nsw i32 %73, 40
  %conv137 = sext i32 %mul136 to i64
  %call138 = call i8* @u_calloc(i64 %conv137, i64 8) #4
  %74 = bitcast i8* %call138 to double*
  %75 = load i32* %ne_, align 4, !tbaa !3
  %mul139 = shl nsw i32 %75, 1
  %conv140 = sext i32 %mul139 to i64
  %call141 = call i8* @u_calloc(i64 %conv140, i64 8) #4
  %76 = bitcast i8* %call141 to double*
  %77 = load i32* %nk_, align 4, !tbaa !3
  %conv142 = sext i32 %77 to i64
  %call143 = call i8* @u_calloc(i64 %conv142, i64 4) #4
  %78 = bitcast i8* %call143 to i32*
  %79 = load i32* %ne1d, align 4, !tbaa !3
  %mul144 = mul nsw i32 %79, 9
  %80 = load i32* %ne2d, align 4, !tbaa !3
  %mul145 = mul nsw i32 %80, 24
  %add146 = add nsw i32 %mul145, %mul144
  %conv147 = sext i32 %add146 to i64
  %call148 = call i8* @u_calloc(i64 %conv147, i64 4) #4
  %81 = bitcast i8* %call148 to i32*
  %82 = load i32* %nk_, align 4, !tbaa !3
  %conv149 = sext i32 %82 to i64
  %call150 = call i8* @u_calloc(i64 %conv149, i64 4) #4
  %83 = bitcast i8* %call150 to i32*
  store i32 1, i32* %arrayidx151, align 8, !tbaa !3
  br label %if.end152

if.end152:                                        ; preds = %lor.lhs.false, %for.end123
  %rig.1 = phi i32* [ %83, %for.end123 ], [ %rig.02044, %lor.lhs.false ]
  %iponor.1 = phi i32* [ %61, %for.end123 ], [ %iponor.02068, %lor.lhs.false ]
  %knor.1 = phi i32* [ %70, %for.end123 ], [ %knor.02069, %lor.lhs.false ]
  %iponoel.1 = phi i32* [ %78, %for.end123 ], [ %iponoel.02072, %lor.lhs.false ]
  %inoel.1 = phi i32* [ %81, %for.end123 ], [ %inoel.02073, %lor.lhs.false ]
  %xnor.1 = phi double* [ %67, %for.end123 ], [ %xnor.02089, %lor.lhs.false ]
  %thickn.1 = phi double* [ %72, %for.end123 ], [ %thickn.02091, %lor.lhs.false ]
  %thicke.1 = phi double* [ %74, %for.end123 ], [ %thicke.02092, %lor.lhs.false ]
  %offset.1 = phi double* [ %76, %for.end123 ], [ %offset.02093, %lor.lhs.false ]
  %84 = load i32* %nboun_, align 4, !tbaa !3
  %conv153 = sext i32 %84 to i64
  %call154 = call i8* @u_calloc(i64 %conv153, i64 4) #4
  %85 = bitcast i8* %call154 to i32*
  %86 = load i32* %nboun_, align 4, !tbaa !3
  %conv155 = sext i32 %86 to i64
  %call156 = call i8* @u_calloc(i64 %conv155, i64 4) #4
  %87 = bitcast i8* %call156 to i32*
  %88 = load i32* %nboun_, align 4, !tbaa !3
  %conv157 = sext i32 %88 to i64
  %call158 = call i8* @u_calloc(i64 %conv157, i64 4) #4
  %89 = bitcast i8* %call158 to i32*
  %90 = load i32* %nboun_, align 4, !tbaa !3
  %conv159 = sext i32 %90 to i64
  %call160 = call i8* @u_calloc(i64 %conv159, i64 8) #4
  %91 = bitcast i8* %call160 to double*
  %92 = load i32* %nboun_, align 4, !tbaa !3
  %conv161 = sext i32 %92 to i64
  %call162 = call i8* @u_calloc(i64 %conv161, i64 4) #4
  %93 = bitcast i8* %call162 to i32*
  %94 = load i32* %nboun_, align 4, !tbaa !3
  %conv163 = sext i32 %94 to i64
  %call164 = call i8* @u_calloc(i64 %conv163, i64 4) #4
  %95 = bitcast i8* %call164 to i32*
  %96 = load i32* %nmpc_, align 4, !tbaa !3
  %conv165 = sext i32 %96 to i64
  %call166 = call i8* @u_calloc(i64 %conv165, i64 4) #4
  %97 = bitcast i8* %call166 to i32*
  %98 = load i32* %memmpc_, align 4, !tbaa !3
  %mul167 = mul nsw i32 %98, 3
  %conv168 = sext i32 %mul167 to i64
  %call169 = call i8* @u_calloc(i64 %conv168, i64 4) #4
  %99 = bitcast i8* %call169 to i32*
  store i32* %99, i32** %nodempc, align 8, !tbaa !0
  %100 = load i32* %memmpc_, align 4, !tbaa !3
  %mul1711990 = mul nsw i32 %100, 3
  %cmp1721991 = icmp sgt i32 %100, 0
  br i1 %cmp1721991, label %for.body174, label %for.end181

for.body174:                                      ; preds = %if.end152, %for.body174
  %indvars.iv2243 = phi i64 [ %indvars.iv.next2244, %for.body174 ], [ 0, %if.end152 ]
  %101 = trunc i64 %indvars.iv2243 to i32
  %div = sdiv i32 %101, 3
  %add175 = add nsw i32 %div, 2
  %102 = add nsw i64 %indvars.iv2243, 2
  %arrayidx178 = getelementptr inbounds i32* %99, i64 %102
  store i32 %add175, i32* %arrayidx178, align 4, !tbaa !3
  %indvars.iv.next2244 = add i64 %indvars.iv2243, 3
  %103 = load i32* %memmpc_, align 4, !tbaa !3
  %mul171 = mul nsw i32 %103, 3
  %104 = trunc i64 %indvars.iv.next2244 to i32
  %cmp172 = icmp slt i32 %104, %mul171
  br i1 %cmp172, label %for.body174, label %for.end181

for.end181:                                       ; preds = %for.body174, %if.end152
  %mul171.lcssa = phi i32 [ %mul1711990, %if.end152 ], [ %mul171, %for.body174 ]
  %sub = add nsw i32 %mul171.lcssa, -1
  %idxprom183 = sext i32 %sub to i64
  %arrayidx184 = getelementptr inbounds i32* %99, i64 %idxprom183
  store i32 0, i32* %arrayidx184, align 4, !tbaa !3
  %105 = load i32* %memmpc_, align 4, !tbaa !3
  %conv185 = sext i32 %105 to i64
  %call186 = call i8* @u_calloc(i64 %conv185, i64 8) #4
  %106 = bitcast i8* %call186 to double*
  store double* %106, double** %coefmpc, align 8, !tbaa !0
  %107 = load i32* %nmpc_, align 4, !tbaa !3
  %mul187 = mul nsw i32 %107, 20
  %conv189 = sext i32 %mul187 to i64
  %call190 = call i8* @u_calloc(i64 %conv189, i64 1) #4
  %108 = load i32* %nmpc_, align 4, !tbaa !3
  %conv191 = sext i32 %108 to i64
  %call192 = call i8* @u_calloc(i64 %conv191, i64 4) #4
  %109 = bitcast i8* %call192 to i32*
  %110 = load i32* %nmpc_, align 4, !tbaa !3
  %conv193 = sext i32 %110 to i64
  %call194 = call i8* @u_calloc(i64 %conv193, i64 4) #4
  %111 = bitcast i8* %call194 to i32*
  %112 = load i32* %nforc_, align 4, !tbaa !3
  %conv195 = sext i32 %112 to i64
  %call196 = call i8* @u_calloc(i64 %conv195, i64 4) #4
  %113 = bitcast i8* %call196 to i32*
  %114 = load i32* %nforc_, align 4, !tbaa !3
  %conv197 = sext i32 %114 to i64
  %call198 = call i8* @u_calloc(i64 %conv197, i64 4) #4
  %115 = bitcast i8* %call198 to i32*
  %116 = load i32* %nforc_, align 4, !tbaa !3
  %conv199 = sext i32 %116 to i64
  %call200 = call i8* @u_calloc(i64 %conv199, i64 4) #4
  %117 = bitcast i8* %call200 to i32*
  %118 = load i32* %nforc_, align 4, !tbaa !3
  %conv201 = sext i32 %118 to i64
  %call202 = call i8* @u_calloc(i64 %conv201, i64 8) #4
  %119 = bitcast i8* %call202 to double*
  %120 = load i32* %nforc_, align 4, !tbaa !3
  %conv203 = sext i32 %120 to i64
  %call204 = call i8* @u_calloc(i64 %conv203, i64 4) #4
  %121 = bitcast i8* %call204 to i32*
  %122 = load i32* %nforc_, align 4, !tbaa !3
  %conv205 = sext i32 %122 to i64
  %call206 = call i8* @u_calloc(i64 %conv205, i64 4) #4
  %123 = bitcast i8* %call206 to i32*
  %124 = load i32* %nload_, align 4, !tbaa !3
  %mul207 = shl nsw i32 %124, 1
  %conv208 = sext i32 %mul207 to i64
  %call209 = call i8* @u_calloc(i64 %conv208, i64 4) #4
  %125 = bitcast i8* %call209 to i32*
  %126 = load i32* %nload_, align 4, !tbaa !3
  %mul210 = shl nsw i32 %126, 1
  %conv211 = sext i32 %mul210 to i64
  %call212 = call i8* @u_calloc(i64 %conv211, i64 4) #4
  %127 = bitcast i8* %call212 to i32*
  %128 = load i32* %nload_, align 4, !tbaa !3
  %mul214 = mul nsw i32 %128, 5
  %conv215 = sext i32 %mul214 to i64
  %call216 = call i8* @u_calloc(i64 %conv215, i64 1) #4
  %129 = load i32* %nload_, align 4, !tbaa !3
  %mul217 = shl nsw i32 %129, 1
  %conv218 = sext i32 %mul217 to i64
  %call219 = call i8* @u_calloc(i64 %conv218, i64 8) #4
  %130 = bitcast i8* %call219 to double*
  %131 = load i32* %nflow_, align 4, !tbaa !3
  %mul220 = shl nsw i32 %131, 1
  %conv221 = sext i32 %mul220 to i64
  %call222 = call i8* @u_calloc(i64 %conv221, i64 4) #4
  %132 = bitcast i8* %call222 to i32*
  %133 = load i32* %nflow_, align 4, !tbaa !3
  %conv223 = sext i32 %133 to i64
  %call224 = call i8* @u_calloc(i64 %conv223, i64 4) #4
  %134 = bitcast i8* %call224 to i32*
  %135 = load i32* %nflow_, align 4, !tbaa !3
  %conv225 = sext i32 %135 to i64
  %call226 = call i8* @u_calloc(i64 %conv225, i64 8) #4
  %136 = bitcast i8* %call226 to double*
  %137 = load i32* %noprint, align 4, !tbaa !3
  %conv227 = sext i32 %137 to i64
  %call228 = call i8* @u_calloc(i64 %conv227, i64 4) #4
  %138 = bitcast i8* %call228 to i32*
  %139 = load i32* %neprint, align 4, !tbaa !3
  %conv229 = sext i32 %139 to i64
  %call230 = call i8* @u_calloc(i64 %conv229, i64 4) #4
  %140 = bitcast i8* %call230 to i32*
  %141 = load i32* %nset, align 4, !tbaa !3
  %mul232 = mul nsw i32 %141, 21
  %conv233 = sext i32 %mul232 to i64
  %call234 = call i8* @u_calloc(i64 %conv233, i64 1) #4
  %142 = load i32* %nset, align 4, !tbaa !3
  %conv235 = sext i32 %142 to i64
  %call236 = call i8* @u_calloc(i64 %conv235, i64 4) #4
  %143 = bitcast i8* %call236 to i32*
  %144 = load i32* %nset, align 4, !tbaa !3
  %conv237 = sext i32 %144 to i64
  %call238 = call i8* @u_calloc(i64 %conv237, i64 4) #4
  %145 = bitcast i8* %call238 to i32*
  %146 = load i32* %nalset, align 4, !tbaa !3
  %conv239 = sext i32 %146 to i64
  %call240 = call i8* @u_calloc(i64 %conv239, i64 4) #4
  %147 = bitcast i8* %call240 to i32*
  %148 = load i32* %ncmat_, align 4, !tbaa !3
  %add241 = add nsw i32 %148, 1
  %149 = load i32* %ntmat_, align 4, !tbaa !3
  %mul242 = mul nsw i32 %add241, %149
  %150 = load i32* %nmat, align 4, !tbaa !3
  %mul243 = mul nsw i32 %mul242, %150
  %conv244 = sext i32 %mul243 to i64
  %call245 = call i8* @u_calloc(i64 %conv244, i64 8) #4
  %151 = bitcast i8* %call245 to double*
  %152 = load i32* %nmat, align 4, !tbaa !3
  %mul246 = shl nsw i32 %152, 1
  %conv247 = sext i32 %mul246 to i64
  %call248 = call i8* @u_calloc(i64 %conv247, i64 4) #4
  %153 = bitcast i8* %call248 to i32*
  %154 = load i32* %ntmat_, align 4, !tbaa !3
  %mul249 = shl i32 %154, 1
  %155 = load i32* %nmat, align 4, !tbaa !3
  %mul250 = mul nsw i32 %mul249, %155
  %conv251 = sext i32 %mul250 to i64
  %call252 = call i8* @u_calloc(i64 %conv251, i64 8) #4
  %156 = bitcast i8* %call252 to double*
  %157 = load i32* %nmat, align 4, !tbaa !3
  %conv253 = sext i32 %157 to i64
  %call254 = call i8* @u_calloc(i64 %conv253, i64 4) #4
  %158 = bitcast i8* %call254 to i32*
  %159 = load i32* %ntmat_, align 4, !tbaa !3
  %mul255 = shl i32 %159, 1
  %160 = load i32* %nmat, align 4, !tbaa !3
  %mul256 = mul nsw i32 %mul255, %160
  %conv257 = sext i32 %mul256 to i64
  %call258 = call i8* @u_calloc(i64 %conv257, i64 8) #4
  %161 = bitcast i8* %call258 to double*
  %162 = load i32* %nmat, align 4, !tbaa !3
  %conv259 = sext i32 %162 to i64
  %call260 = call i8* @u_calloc(i64 %conv259, i64 4) #4
  %163 = bitcast i8* %call260 to i32*
  %164 = load i32* %ntmat_, align 4, !tbaa !3
  %mul261 = mul nsw i32 %164, 7
  %165 = load i32* %nmat, align 4, !tbaa !3
  %mul262 = mul nsw i32 %mul261, %165
  %conv263 = sext i32 %mul262 to i64
  %call264 = call i8* @u_calloc(i64 %conv263, i64 8) #4
  %166 = bitcast i8* %call264 to double*
  %167 = load i32* %nmat, align 4, !tbaa !3
  %mul265 = shl nsw i32 %167, 1
  %conv266 = sext i32 %mul265 to i64
  %call267 = call i8* @u_calloc(i64 %conv266, i64 4) #4
  %168 = bitcast i8* %call267 to i32*
  %169 = load i32* %nmat, align 4, !tbaa !3
  %conv268 = sext i32 %169 to i64
  %call269 = call i8* @u_calloc(i64 %conv268, i64 8) #4
  %170 = bitcast i8* %call269 to double*
  %171 = load i32* %ntmat_, align 4, !tbaa !3
  %mul270 = mul nsw i32 %171, 7
  %172 = load i32* %nmat, align 4, !tbaa !3
  %mul271 = mul nsw i32 %mul270, %172
  %conv272 = sext i32 %mul271 to i64
  %call273 = call i8* @u_calloc(i64 %conv272, i64 8) #4
  %173 = bitcast i8* %call273 to double*
  %174 = load i32* %nmat, align 4, !tbaa !3
  %mul274 = shl nsw i32 %174, 1
  %conv275 = sext i32 %mul274 to i64
  %call276 = call i8* @u_calloc(i64 %conv275, i64 4) #4
  %175 = bitcast i8* %call276 to i32*
  %176 = load i32* %npmat_, align 4, !tbaa !3
  %mul277 = shl nsw i32 %176, 1
  %add2781971 = or i32 %mul277, 1
  %177 = load i32* %ntmat_, align 4, !tbaa !3
  %mul279 = mul nsw i32 %add2781971, %177
  %178 = load i32* %nmat, align 4, !tbaa !3
  %mul280 = mul nsw i32 %mul279, %178
  %conv281 = sext i32 %mul280 to i64
  %call282 = call i8* @u_calloc(i64 %conv281, i64 8) #4
  %179 = bitcast i8* %call282 to double*
  %180 = load i32* %ntmat_, align 4, !tbaa !3
  %add283 = add nsw i32 %180, 1
  %181 = load i32* %nmat, align 4, !tbaa !3
  %mul284 = mul nsw i32 %add283, %181
  %conv285 = sext i32 %mul284 to i64
  %call286 = call i8* @u_calloc(i64 %conv285, i64 4) #4
  %182 = bitcast i8* %call286 to i32*
  %183 = load i32* %npmat_, align 4, !tbaa !3
  %mul287 = shl nsw i32 %183, 1
  %add2881972 = or i32 %mul287, 1
  %184 = load i32* %ntmat_, align 4, !tbaa !3
  %mul289 = mul nsw i32 %add2881972, %184
  %185 = load i32* %nmat, align 4, !tbaa !3
  %mul290 = mul nsw i32 %mul289, %185
  %conv291 = sext i32 %mul290 to i64
  %call292 = call i8* @u_calloc(i64 %conv291, i64 8) #4
  %186 = bitcast i8* %call292 to double*
  %187 = load i32* %ntmat_, align 4, !tbaa !3
  %add293 = add nsw i32 %187, 1
  %188 = load i32* %nmat, align 4, !tbaa !3
  %mul294 = mul nsw i32 %add293, %188
  %conv295 = sext i32 %mul294 to i64
  %call296 = call i8* @u_calloc(i64 %conv295, i64 4) #4
  %189 = bitcast i8* %call296 to i32*
  %190 = load i32* %norien, align 4, !tbaa !3
  %mul298 = mul nsw i32 %190, 20
  %conv299 = sext i32 %mul298 to i64
  %call300 = call i8* @u_calloc(i64 %conv299, i64 1) #4
  %191 = load i32* %norien, align 4, !tbaa !3
  %mul301 = mul nsw i32 %191, 7
  %conv302 = sext i32 %mul301 to i64
  %call303 = call i8* @u_calloc(i64 %conv302, i64 8) #4
  %192 = bitcast i8* %call303 to double*
  %193 = load i32* %ne_, align 4, !tbaa !3
  %conv304 = sext i32 %193 to i64
  %call305 = call i8* @u_calloc(i64 %conv304, i64 4) #4
  %194 = bitcast i8* %call305 to i32*
  %195 = load i32* %ntrans, align 4, !tbaa !3
  %mul306 = mul nsw i32 %195, 7
  %conv307 = sext i32 %mul306 to i64
  %call308 = call i8* @u_calloc(i64 %conv307, i64 8) #4
  %196 = bitcast i8* %call308 to double*
  %197 = load i32* %nk_, align 4, !tbaa !3
  %mul309 = shl nsw i32 %197, 1
  %conv310 = sext i32 %mul309 to i64
  %call311 = call i8* @u_calloc(i64 %conv310, i64 4) #4
  %198 = bitcast i8* %call311 to i32*
  %199 = load i32* %nam, align 4, !tbaa !3
  %mul312 = mul nsw i32 %199, 20
  %conv314 = sext i32 %mul312 to i64
  %call315 = call i8* @u_calloc(i64 %conv314, i64 1) #4
  %200 = load i32* %namtot_, align 4, !tbaa !3
  %mul316 = shl nsw i32 %200, 1
  %conv317 = sext i32 %mul316 to i64
  %call318 = call i8* @u_calloc(i64 %conv317, i64 8) #4
  %201 = bitcast i8* %call318 to double*
  %202 = load i32* %nam, align 4, !tbaa !3
  %mul319 = mul nsw i32 %202, 3
  %conv320 = sext i32 %mul319 to i64
  %call321 = call i8* @u_calloc(i64 %conv320, i64 4) #4
  %203 = bitcast i8* %call321 to i32*
  %204 = load i32* %ne1d, align 4, !tbaa !3
  %cmp322 = icmp eq i32 %204, 0
  br i1 %cmp322, label %land.lhs.true, label %if.else331

land.lhs.true:                                    ; preds = %for.end181
  %205 = load i32* %ne2d, align 4, !tbaa !3
  %cmp324 = icmp eq i32 %205, 0
  br i1 %cmp324, label %if.then326, label %if.else331

if.then326:                                       ; preds = %land.lhs.true
  %206 = load i32* %nk_, align 4, !tbaa !3
  %conv327 = sext i32 %206 to i64
  %call328 = call i8* @u_calloc(i64 %conv327, i64 8) #4
  %207 = load i32* %nk_, align 4, !tbaa !3
  %conv329 = sext i32 %207 to i64
  %call330 = call i8* @u_calloc(i64 %conv329, i64 8) #4
  br label %if.end338

if.else331:                                       ; preds = %land.lhs.true, %for.end181
  %208 = load i32* %nk_, align 4, !tbaa !3
  %mul332 = mul nsw i32 %208, 3
  %conv333 = sext i32 %mul332 to i64
  %call334 = call i8* @u_calloc(i64 %conv333, i64 8) #4
  %209 = load i32* %nk_, align 4, !tbaa !3
  %mul335 = mul nsw i32 %209, 3
  %conv336 = sext i32 %mul335 to i64
  %call337 = call i8* @u_calloc(i64 %conv336, i64 8) #4
  br label %if.end338

if.end338:                                        ; preds = %if.else331, %if.then326
  %t0.1.in = phi i8* [ %call328, %if.then326 ], [ %call334, %if.else331 ]
  %t1.1.in = phi i8* [ %call330, %if.then326 ], [ %call337, %if.else331 ]
  %t1.1 = bitcast i8* %t1.1.in to double*
  %t0.1 = bitcast i8* %t0.1.in to double*
  %210 = load i32* %nk_, align 4, !tbaa !3
  %conv339 = sext i32 %210 to i64
  %call340 = call i8* @u_calloc(i64 %conv339, i64 4) #4
  %211 = bitcast i8* %call340 to i32*
  %212 = load i32* %ne_, align 4, !tbaa !3
  %mul341 = mul nsw i32 %212, 6
  %conv342 = sext i32 %mul341 to i64
  %call343 = call i8* @u_calloc(i64 %conv342, i64 8) #4
  %213 = bitcast i8* %call343 to double*
  %214 = load i32* %nk_, align 4, !tbaa !3
  %mul344 = shl nsw i32 %214, 2
  %conv345 = sext i32 %mul344 to i64
  %call346 = call i8* @u_calloc(i64 %conv345, i64 8) #4
  %215 = bitcast i8* %call346 to double*
  %216 = load i32* %ne_, align 4, !tbaa !3
  %conv347 = sext i32 %216 to i64
  %call348 = call i8* @u_calloc(i64 %conv347, i64 4) #4
  %217 = bitcast i8* %call348 to i32*
  %218 = load i32* %nmat, align 4, !tbaa !3
  %mul349 = mul nsw i32 %218, 20
  %conv351 = sext i32 %mul349 to i64
  %call352 = call i8* @u_calloc(i64 %conv351, i64 1) #4
  %219 = load i32* %nlabel, align 4, !tbaa !3
  %mul353 = shl nsw i32 %219, 2
  %conv355 = sext i32 %mul353 to i64
  %call356 = call i8* @u_calloc(i64 %conv355, i64 1) #4
  %220 = load i32* %nlabel, align 4, !tbaa !3
  %mul357 = shl nsw i32 %220, 2
  %conv359 = sext i32 %mul357 to i64
  %call360 = call i8* @u_calloc(i64 %conv359, i64 1) #4
  %221 = load i32* %ncs_, align 4, !tbaa !3
  %cmp361 = icmp sgt i32 %221, 0
  br i1 %cmp361, label %if.then363, label %if.end517

if.then363:                                       ; preds = %if.end338
  %mul364 = mul nsw i32 %221, 3
  %conv365 = sext i32 %mul364 to i64
  %call366 = call i8* @u_calloc(i64 %conv365, i64 4) #4
  %222 = bitcast i8* %call366 to i32*
  %223 = load i32* %ncs_, align 4, !tbaa !3
  %mul367 = shl nsw i32 %223, 2
  %conv368 = sext i32 %mul367 to i64
  %call369 = call i8* @u_calloc(i64 %conv368, i64 8) #4
  %224 = bitcast i8* %call369 to double*
  br label %if.end517

if.else371:                                       ; preds = %while.body
  %225 = load i32* %nmethod, align 4, !tbaa !3
  switch i32 %225, label %if.then380 [
    i32 4, label %if.else384
    i32 1, label %lor.lhs.false377
  ]

lor.lhs.false377:                                 ; preds = %if.else371
  %226 = load i32* %iperturb, align 4, !tbaa !3
  %cmp378 = icmp slt i32 %226, 2
  br i1 %cmp378, label %if.then380, label %if.else384

if.then380:                                       ; preds = %if.else371, %lor.lhs.false377
  %227 = load i32* %nk_, align 4, !tbaa !3
  %mul381 = shl nsw i32 %227, 2
  %conv382 = sext i32 %mul381 to i64
  %call383 = call i8* @u_calloc(i64 %conv382, i64 8) #4
  br label %if.end389

if.else384:                                       ; preds = %if.else371, %lor.lhs.false377
  %228 = bitcast double* %veold.02103 to i8*
  %229 = load i32* %nk_, align 4, !tbaa !3
  %mul385 = shl nsw i32 %229, 2
  %conv386 = sext i32 %mul385 to i64
  %mul387 = shl nsw i64 %conv386, 3
  %call388 = call i8* @realloc(i8* %228, i64 %mul387) #4
  br label %if.end389

if.end389:                                        ; preds = %if.else384, %if.then380
  %veold.1.in = phi i8* [ %call383, %if.then380 ], [ %call388, %if.else384 ]
  %veold.1 = bitcast i8* %veold.1.in to double*
  %230 = load i32* %nmethod, align 4, !tbaa !3
  %cmp390 = icmp eq i32 %230, 4
  br i1 %cmp390, label %if.end393, label %if.then392

if.then392:                                       ; preds = %if.end389
  %231 = bitcast double* %accold.02104 to i8*
  call void @free(i8* %231) #4
  br label %if.end393

if.end393:                                        ; preds = %if.end389, %if.then392
  %232 = bitcast i32* %nodeboun.02137 to i8*
  %233 = load i32* %nboun_, align 4, !tbaa !3
  %conv394 = sext i32 %233 to i64
  %mul395 = shl nsw i64 %conv394, 2
  %call396 = call i8* @realloc(i8* %232, i64 %mul395) #4
  %234 = bitcast i8* %call396 to i32*
  %235 = bitcast i32* %ndirboun.02136 to i8*
  %236 = load i32* %nboun_, align 4, !tbaa !3
  %conv397 = sext i32 %236 to i64
  %mul398 = shl nsw i64 %conv397, 2
  %call399 = call i8* @realloc(i8* %235, i64 %mul398) #4
  %237 = bitcast i8* %call399 to i32*
  %238 = bitcast double* %xboun.02079 to i8*
  %239 = load i32* %nboun_, align 4, !tbaa !3
  %conv400 = sext i32 %239 to i64
  %mul401 = shl nsw i64 %conv400, 3
  %call402 = call i8* @realloc(i8* %238, i64 %mul401) #4
  %240 = bitcast i8* %call402 to double*
  %241 = bitcast i32* %ikboun.02047 to i8*
  %242 = load i32* %nboun_, align 4, !tbaa !3
  %conv403 = sext i32 %242 to i64
  %mul404 = shl nsw i64 %conv403, 2
  %call405 = call i8* @realloc(i8* %241, i64 %mul404) #4
  %243 = bitcast i8* %call405 to i32*
  %244 = bitcast i32* %ilboun.02048 to i8*
  %245 = load i32* %nboun_, align 4, !tbaa !3
  %conv406 = sext i32 %245 to i64
  %mul407 = shl nsw i64 %conv406, 2
  %call408 = call i8* @realloc(i8* %244, i64 %mul407) #4
  %246 = bitcast i8* %call408 to i32*
  %247 = bitcast i32* %nodeforc.02134 to i8*
  %248 = load i32* %nforc_, align 4, !tbaa !3
  %conv409 = sext i32 %248 to i64
  %mul410 = shl nsw i64 %conv409, 2
  %call411 = call i8* @realloc(i8* %247, i64 %mul410) #4
  %249 = bitcast i8* %call411 to i32*
  %250 = bitcast i32* %ndirforc.02133 to i8*
  %251 = load i32* %nforc_, align 4, !tbaa !3
  %conv412 = sext i32 %251 to i64
  %mul413 = shl nsw i64 %conv412, 2
  %call414 = call i8* @realloc(i8* %250, i64 %mul413) #4
  %252 = bitcast i8* %call414 to i32*
  %253 = bitcast double* %xforc.02080 to i8*
  %254 = load i32* %nforc_, align 4, !tbaa !3
  %conv415 = sext i32 %254 to i64
  %mul416 = shl nsw i64 %conv415, 3
  %call417 = call i8* @realloc(i8* %253, i64 %mul416) #4
  %255 = bitcast i8* %call417 to double*
  %256 = bitcast i32* %ikforc.02070 to i8*
  %257 = load i32* %nforc_, align 4, !tbaa !3
  %conv418 = sext i32 %257 to i64
  %mul419 = shl nsw i64 %conv418, 2
  %call420 = call i8* @realloc(i8* %256, i64 %mul419) #4
  %258 = bitcast i8* %call420 to i32*
  %259 = bitcast i32* %ilforc.02071 to i8*
  %260 = load i32* %nforc_, align 4, !tbaa !3
  %conv421 = sext i32 %260 to i64
  %mul422 = shl nsw i64 %conv421, 2
  %call423 = call i8* @realloc(i8* %259, i64 %mul422) #4
  %261 = bitcast i8* %call423 to i32*
  %262 = bitcast i32* %nelemload.02107 to i8*
  %263 = load i32* %nload_, align 4, !tbaa !3
  %mul424 = shl nsw i32 %263, 1
  %conv425 = sext i32 %mul424 to i64
  %mul426 = shl nsw i64 %conv425, 2
  %call427 = call i8* @realloc(i8* %262, i64 %mul426) #4
  %264 = bitcast i8* %call427 to i32*
  %265 = load i32* %nload_, align 4, !tbaa !3
  %mul429 = mul nsw i32 %265, 5
  %conv430 = sext i32 %mul429 to i64
  %call432 = call i8* @realloc(i8* %sideload.02119, i64 %conv430) #4
  %266 = bitcast double* %xload.02081 to i8*
  %267 = load i32* %nload_, align 4, !tbaa !3
  %mul433 = shl nsw i32 %267, 1
  %conv434 = sext i32 %mul433 to i64
  %mul435 = shl nsw i64 %conv434, 3
  %call436 = call i8* @realloc(i8* %266, i64 %mul435) #4
  %268 = bitcast i8* %call436 to double*
  %269 = bitcast i32* %nodeflow.02076 to i8*
  %270 = load i32* %nflow_, align 4, !tbaa !3
  %mul437 = shl nsw i32 %270, 1
  %conv438 = sext i32 %mul437 to i64
  %mul439 = shl nsw i64 %conv438, 2
  %call440 = call i8* @realloc(i8* %269, i64 %mul439) #4
  %271 = bitcast i8* %call440 to i32*
  %272 = bitcast double* %xflow.02117 to i8*
  %273 = load i32* %nflow_, align 4, !tbaa !3
  %conv441 = sext i32 %273 to i64
  %mul442 = shl nsw i64 %conv441, 3
  %call443 = call i8* @realloc(i8* %272, i64 %mul442) #4
  %274 = bitcast i8* %call443 to double*
  %275 = bitcast i32* %nodeprint.02106 to i8*
  %276 = load i32* %noprint, align 4, !tbaa !3
  %conv444 = sext i32 %276 to i64
  %mul445 = shl nsw i64 %conv444, 2
  %call446 = call i8* @realloc(i8* %275, i64 %mul445) #4
  %277 = bitcast i8* %call446 to i32*
  %278 = bitcast i32* %nelemprint.02085 to i8*
  %279 = load i32* %neprint, align 4, !tbaa !3
  %conv447 = sext i32 %279 to i64
  %mul448 = shl nsw i64 %conv447, 2
  %call449 = call i8* @realloc(i8* %278, i64 %mul448) #4
  %280 = bitcast i8* %call449 to i32*
  %281 = load i32* %nam, align 4, !tbaa !3
  %cmp450 = icmp sgt i32 %281, 0
  br i1 %cmp450, label %if.then452, label %if.end466

if.then452:                                       ; preds = %if.end393
  %282 = bitcast i32* %iamforc.02059 to i8*
  %283 = load i32* %nforc_, align 4, !tbaa !3
  %conv453 = sext i32 %283 to i64
  %mul454 = shl nsw i64 %conv453, 2
  %call455 = call i8* @realloc(i8* %282, i64 %mul454) #4
  %284 = bitcast i8* %call455 to i32*
  %285 = bitcast i32* %iamload.02060 to i8*
  %286 = load i32* %nload_, align 4, !tbaa !3
  %mul456 = shl nsw i32 %286, 1
  %conv457 = sext i32 %mul456 to i64
  %mul458 = shl nsw i64 %conv457, 2
  %call459 = call i8* @realloc(i8* %285, i64 %mul458) #4
  %287 = bitcast i8* %call459 to i32*
  %288 = bitcast i32* %iamboun.02064 to i8*
  %289 = load i32* %nboun_, align 4, !tbaa !3
  %conv460 = sext i32 %289 to i64
  %mul461 = shl nsw i64 %conv460, 2
  %call462 = call i8* @realloc(i8* %288, i64 %mul461) #4
  %290 = bitcast i8* %call462 to i32*
  %291 = bitcast i32* %iamflow.02077 to i8*
  %292 = load i32* %nflow_, align 4, !tbaa !3
  %conv463 = sext i32 %292 to i64
  %mul464 = shl nsw i64 %conv463, 2
  %call465 = call i8* @realloc(i8* %291, i64 %mul464) #4
  %293 = bitcast i8* %call465 to i32*
  br label %if.end466

if.end466:                                        ; preds = %if.then452, %if.end393
  %iamforc.1 = phi i32* [ %284, %if.then452 ], [ %iamforc.02059, %if.end393 ]
  %iamload.1 = phi i32* [ %287, %if.then452 ], [ %iamload.02060, %if.end393 ]
  %iamboun.1 = phi i32* [ %290, %if.then452 ], [ %iamboun.02064, %if.end393 ]
  %iamflow.1 = phi i32* [ %293, %if.then452 ], [ %iamflow.02077, %if.end393 ]
  %294 = bitcast i32* %ipompc.02135 to i8*
  %295 = load i32* %nmpc_, align 4, !tbaa !3
  %conv467 = sext i32 %295 to i64
  %mul468 = shl nsw i64 %conv467, 2
  %call469 = call i8* @realloc(i8* %294, i64 %mul468) #4
  %296 = bitcast i8* %call469 to i32*
  %297 = load i32* %nmpc_, align 4, !tbaa !3
  %mul470 = mul nsw i32 %297, 20
  %conv472 = sext i32 %mul470 to i64
  %call474 = call i8* @realloc(i8* %labmpc.02127, i64 %conv472) #4
  %298 = bitcast i32* %ikmpc.02045 to i8*
  %299 = load i32* %nmpc_, align 4, !tbaa !3
  %conv475 = sext i32 %299 to i64
  %mul476 = shl nsw i64 %conv475, 2
  %call477 = call i8* @realloc(i8* %298, i64 %mul476) #4
  %300 = bitcast i8* %call477 to i32*
  %301 = bitcast i32* %ilmpc.02046 to i8*
  %302 = load i32* %nmpc_, align 4, !tbaa !3
  %conv478 = sext i32 %302 to i64
  %mul479 = shl nsw i64 %conv478, 2
  %call480 = call i8* @realloc(i8* %301, i64 %mul479) #4
  %303 = bitcast i8* %call480 to i32*
  %304 = load i32* %ntrans, align 4, !tbaa !3
  %cmp481 = icmp sgt i32 %304, 0
  br i1 %cmp481, label %if.then483, label %if.end488

if.then483:                                       ; preds = %if.end466
  %305 = bitcast i32* %inotr.02067 to i8*
  %306 = load i32* %nk_, align 4, !tbaa !3
  %mul484 = shl nsw i32 %306, 1
  %conv485 = sext i32 %mul484 to i64
  %mul486 = shl nsw i64 %conv485, 2
  %call487 = call i8* @realloc(i8* %305, i64 %mul486) #4
  %307 = bitcast i8* %call487 to i32*
  br label %if.end488

if.end488:                                        ; preds = %if.then483, %if.end466
  %inotr.1 = phi i32* [ %307, %if.then483 ], [ %inotr.02067, %if.end466 ]
  %308 = bitcast double* %co.02078 to i8*
  %309 = load i32* %nk_, align 4, !tbaa !3
  %mul489 = mul nsw i32 %309, 3
  %conv490 = sext i32 %mul489 to i64
  %mul491 = shl nsw i64 %conv490, 3
  %call492 = call i8* @realloc(i8* %308, i64 %mul491) #4
  %310 = bitcast i8* %call492 to double*
  %311 = load i32* %ithermal, align 4, !tbaa !3
  %cmp493 = icmp eq i32 %311, 0
  br i1 %cmp493, label %if.end517, label %if.then495

if.then495:                                       ; preds = %if.end488
  %312 = load i32* %ne1d, align 4, !tbaa !3
  %cmp496 = icmp eq i32 %312, 0
  br i1 %cmp496, label %land.lhs.true498, label %if.end508

land.lhs.true498:                                 ; preds = %if.then495
  %313 = load i32* %ne2d, align 4, !tbaa !3
  %cmp499 = icmp eq i32 %313, 0
  br i1 %cmp499, label %if.then501, label %if.end508

if.then501:                                       ; preds = %land.lhs.true498
  %314 = bitcast double* %t0.02098 to i8*
  %315 = load i32* %nk_, align 4, !tbaa !3
  %conv502 = sext i32 %315 to i64
  %mul503 = shl nsw i64 %conv502, 3
  %call504 = call i8* @realloc(i8* %314, i64 %mul503) #4
  %316 = bitcast i8* %call504 to double*
  %317 = bitcast double* %t1.02099 to i8*
  %318 = load i32* %nk_, align 4, !tbaa !3
  %conv505 = sext i32 %318 to i64
  %mul506 = shl nsw i64 %conv505, 3
  %call507 = call i8* @realloc(i8* %317, i64 %mul506) #4
  %319 = bitcast i8* %call507 to double*
  br label %if.end508

if.end508:                                        ; preds = %if.then501, %land.lhs.true498, %if.then495
  %t0.2 = phi double* [ %316, %if.then501 ], [ %t0.02098, %land.lhs.true498 ], [ %t0.02098, %if.then495 ]
  %t1.2 = phi double* [ %319, %if.then501 ], [ %t1.02099, %land.lhs.true498 ], [ %t1.02099, %if.then495 ]
  %320 = load i32* %nam, align 4, !tbaa !3
  %cmp509 = icmp sgt i32 %320, 0
  br i1 %cmp509, label %if.then511, label %if.end517

if.then511:                                       ; preds = %if.end508
  %321 = bitcast i32* %iamt1.02061 to i8*
  %322 = load i32* %nk_, align 4, !tbaa !3
  %conv512 = sext i32 %322 to i64
  %mul513 = shl nsw i64 %conv512, 2
  %call514 = call i8* @realloc(i8* %321, i64 %mul513) #4
  %323 = bitcast i8* %call514 to i32*
  br label %if.end517

if.end517:                                        ; preds = %if.end488, %if.then511, %if.end508, %if.end338, %if.then363
  %ics.1 = phi i32* [ %222, %if.then363 ], [ %ics.02043, %if.end338 ], [ %ics.02043, %if.then511 ], [ %ics.02043, %if.end508 ], [ %ics.02043, %if.end488 ]
  %rig.2 = phi i32* [ %rig.1, %if.then363 ], [ %rig.1, %if.end338 ], [ %rig.02044, %if.then511 ], [ %rig.02044, %if.end508 ], [ %rig.02044, %if.end488 ]
  %ikmpc.1 = phi i32* [ %109, %if.then363 ], [ %109, %if.end338 ], [ %300, %if.then511 ], [ %300, %if.end508 ], [ %300, %if.end488 ]
  %ilmpc.1 = phi i32* [ %111, %if.then363 ], [ %111, %if.end338 ], [ %303, %if.then511 ], [ %303, %if.end508 ], [ %303, %if.end488 ]
  %ikboun.1 = phi i32* [ %93, %if.then363 ], [ %93, %if.end338 ], [ %243, %if.then511 ], [ %243, %if.end508 ], [ %243, %if.end488 ]
  %ilboun.1 = phi i32* [ %95, %if.then363 ], [ %95, %if.end338 ], [ %246, %if.then511 ], [ %246, %if.end508 ], [ %246, %if.end488 ]
  %istartset.1 = phi i32* [ %143, %if.then363 ], [ %143, %if.end338 ], [ %istartset.02049, %if.then511 ], [ %istartset.02049, %if.end508 ], [ %istartset.02049, %if.end488 ]
  %iendset.1 = phi i32* [ %145, %if.then363 ], [ %145, %if.end338 ], [ %iendset.02050, %if.then511 ], [ %iendset.02050, %if.end508 ], [ %iendset.02050, %if.end488 ]
  %ialset.1 = phi i32* [ %147, %if.then363 ], [ %147, %if.end338 ], [ %ialset.02051, %if.then511 ], [ %ialset.02051, %if.end508 ], [ %ialset.02051, %if.end488 ]
  %ielmat.1 = phi i32* [ %217, %if.then363 ], [ %217, %if.end338 ], [ %ielmat.02052, %if.then511 ], [ %ielmat.02052, %if.end508 ], [ %ielmat.02052, %if.end488 ]
  %ielorien.1 = phi i32* [ %194, %if.then363 ], [ %194, %if.end338 ], [ %ielorien.02053, %if.then511 ], [ %ielorien.02053, %if.end508 ], [ %ielorien.02053, %if.end488 ]
  %nrhcon.1 = phi i32* [ %158, %if.then363 ], [ %158, %if.end338 ], [ %nrhcon.02054, %if.then511 ], [ %nrhcon.02054, %if.end508 ], [ %nrhcon.02054, %if.end488 ]
  %nelcon.1 = phi i32* [ %153, %if.then363 ], [ %153, %if.end338 ], [ %nelcon.02057, %if.then511 ], [ %nelcon.02057, %if.end508 ], [ %nelcon.02057, %if.end488 ]
  %nalcon.1 = phi i32* [ %168, %if.then363 ], [ %168, %if.end338 ], [ %nalcon.02058, %if.then511 ], [ %nalcon.02058, %if.end508 ], [ %nalcon.02058, %if.end488 ]
  %iamforc.2 = phi i32* [ %117, %if.then363 ], [ %117, %if.end338 ], [ %iamforc.1, %if.then511 ], [ %iamforc.1, %if.end508 ], [ %iamforc.1, %if.end488 ]
  %iamload.2 = phi i32* [ %127, %if.then363 ], [ %127, %if.end338 ], [ %iamload.1, %if.then511 ], [ %iamload.1, %if.end508 ], [ %iamload.1, %if.end488 ]
  %iamt1.1 = phi i32* [ %211, %if.then363 ], [ %211, %if.end338 ], [ %323, %if.then511 ], [ %iamt1.02061, %if.end508 ], [ %iamt1.02061, %if.end488 ]
  %namta.1 = phi i32* [ %203, %if.then363 ], [ %203, %if.end338 ], [ %namta.02062, %if.then511 ], [ %namta.02062, %if.end508 ], [ %namta.02062, %if.end488 ]
  %ipkon.1 = phi i32* [ %56, %if.then363 ], [ %56, %if.end338 ], [ %ipkon.02063, %if.then511 ], [ %ipkon.02063, %if.end508 ], [ %ipkon.02063, %if.end488 ]
  %iamboun.2 = phi i32* [ %89, %if.then363 ], [ %89, %if.end338 ], [ %iamboun.1, %if.then511 ], [ %iamboun.1, %if.end508 ], [ %iamboun.1, %if.end488 ]
  %nplicon.1 = phi i32* [ %182, %if.then363 ], [ %182, %if.end338 ], [ %nplicon.02065, %if.then511 ], [ %nplicon.02065, %if.end508 ], [ %nplicon.02065, %if.end488 ]
  %nplkcon.1 = phi i32* [ %189, %if.then363 ], [ %189, %if.end338 ], [ %nplkcon.02066, %if.then511 ], [ %nplkcon.02066, %if.end508 ], [ %nplkcon.02066, %if.end488 ]
  %inotr.2 = phi i32* [ %198, %if.then363 ], [ %198, %if.end338 ], [ %inotr.1, %if.then511 ], [ %inotr.1, %if.end508 ], [ %inotr.1, %if.end488 ]
  %iponor.2 = phi i32* [ %iponor.1, %if.then363 ], [ %iponor.1, %if.end338 ], [ %iponor.02068, %if.then511 ], [ %iponor.02068, %if.end508 ], [ %iponor.02068, %if.end488 ]
  %knor.2 = phi i32* [ %knor.1, %if.then363 ], [ %knor.1, %if.end338 ], [ %knor.02069, %if.then511 ], [ %knor.02069, %if.end508 ], [ %knor.02069, %if.end488 ]
  %ikforc.1 = phi i32* [ %121, %if.then363 ], [ %121, %if.end338 ], [ %258, %if.then511 ], [ %258, %if.end508 ], [ %258, %if.end488 ]
  %ilforc.1 = phi i32* [ %123, %if.then363 ], [ %123, %if.end338 ], [ %261, %if.then511 ], [ %261, %if.end508 ], [ %261, %if.end488 ]
  %iponoel.2 = phi i32* [ %iponoel.1, %if.then363 ], [ %iponoel.1, %if.end338 ], [ %iponoel.02072, %if.then511 ], [ %iponoel.02072, %if.end508 ], [ %iponoel.02072, %if.end488 ]
  %inoel.2 = phi i32* [ %inoel.1, %if.then363 ], [ %inoel.1, %if.end338 ], [ %inoel.02073, %if.then511 ], [ %inoel.02073, %if.end508 ], [ %inoel.02073, %if.end488 ]
  %nshcon.1 = phi i32* [ %163, %if.then363 ], [ %163, %if.end338 ], [ %nshcon.02074, %if.then511 ], [ %nshcon.02074, %if.end508 ], [ %nshcon.02074, %if.end488 ]
  %ncocon.1 = phi i32* [ %175, %if.then363 ], [ %175, %if.end338 ], [ %ncocon.02075, %if.then511 ], [ %ncocon.02075, %if.end508 ], [ %ncocon.02075, %if.end488 ]
  %nodeflow.1 = phi i32* [ %132, %if.then363 ], [ %132, %if.end338 ], [ %271, %if.then511 ], [ %271, %if.end508 ], [ %271, %if.end488 ]
  %iamflow.2 = phi i32* [ %134, %if.then363 ], [ %134, %if.end338 ], [ %iamflow.1, %if.then511 ], [ %iamflow.1, %if.end508 ], [ %iamflow.1, %if.end488 ]
  %co.1 = phi double* [ %52, %if.then363 ], [ %52, %if.end338 ], [ %310, %if.then511 ], [ %310, %if.end508 ], [ %310, %if.end488 ]
  %xboun.1 = phi double* [ %91, %if.then363 ], [ %91, %if.end338 ], [ %240, %if.then511 ], [ %240, %if.end508 ], [ %240, %if.end488 ]
  %xforc.1 = phi double* [ %119, %if.then363 ], [ %119, %if.end338 ], [ %255, %if.then511 ], [ %255, %if.end508 ], [ %255, %if.end488 ]
  %xload.1 = phi double* [ %130, %if.then363 ], [ %130, %if.end338 ], [ %268, %if.then511 ], [ %268, %if.end508 ], [ %268, %if.end488 ]
  %nelemprint.1 = phi i32* [ %140, %if.then363 ], [ %140, %if.end338 ], [ %280, %if.then511 ], [ %280, %if.end508 ], [ %280, %if.end488 ]
  %xnor.2 = phi double* [ %xnor.1, %if.then363 ], [ %xnor.1, %if.end338 ], [ %xnor.02089, %if.then511 ], [ %xnor.02089, %if.end508 ], [ %xnor.02089, %if.end488 ]
  %dcs.1 = phi double* [ %224, %if.then363 ], [ %dcs.02090, %if.end338 ], [ %dcs.02090, %if.then511 ], [ %dcs.02090, %if.end508 ], [ %dcs.02090, %if.end488 ]
  %thickn.2 = phi double* [ %thickn.1, %if.then363 ], [ %thickn.1, %if.end338 ], [ %thickn.02091, %if.then511 ], [ %thickn.02091, %if.end508 ], [ %thickn.02091, %if.end488 ]
  %thicke.2 = phi double* [ %thicke.1, %if.then363 ], [ %thicke.1, %if.end338 ], [ %thicke.02092, %if.then511 ], [ %thicke.02092, %if.end508 ], [ %thicke.02092, %if.end488 ]
  %offset.2 = phi double* [ %offset.1, %if.then363 ], [ %offset.1, %if.end338 ], [ %offset.02093, %if.then511 ], [ %offset.02093, %if.end508 ], [ %offset.02093, %if.end488 ]
  %elcon.1 = phi double* [ %151, %if.then363 ], [ %151, %if.end338 ], [ %elcon.02094, %if.then511 ], [ %elcon.02094, %if.end508 ], [ %elcon.02094, %if.end488 ]
  %rhcon.1 = phi double* [ %156, %if.then363 ], [ %156, %if.end338 ], [ %rhcon.02095, %if.then511 ], [ %rhcon.02095, %if.end508 ], [ %rhcon.02095, %if.end488 ]
  %alcon.1 = phi double* [ %166, %if.then363 ], [ %166, %if.end338 ], [ %alcon.02096, %if.then511 ], [ %alcon.02096, %if.end508 ], [ %alcon.02096, %if.end488 ]
  %alzero.1 = phi double* [ %170, %if.then363 ], [ %170, %if.end338 ], [ %alzero.02097, %if.then511 ], [ %alzero.02097, %if.end508 ], [ %alzero.02097, %if.end488 ]
  %t0.3 = phi double* [ %t0.1, %if.then363 ], [ %t0.1, %if.end338 ], [ %t0.2, %if.then511 ], [ %t0.2, %if.end508 ], [ %t0.02098, %if.end488 ]
  %t1.3 = phi double* [ %t1.1, %if.then363 ], [ %t1.1, %if.end338 ], [ %t1.2, %if.then511 ], [ %t1.2, %if.end508 ], [ %t1.02099, %if.end488 ]
  %prestr.1 = phi double* [ %213, %if.then363 ], [ %213, %if.end338 ], [ %prestr.02100, %if.then511 ], [ %prestr.02100, %if.end508 ], [ %prestr.02100, %if.end488 ]
  %orab.1 = phi double* [ %192, %if.then363 ], [ %192, %if.end338 ], [ %orab.02101, %if.then511 ], [ %orab.02101, %if.end508 ], [ %orab.02101, %if.end488 ]
  %amta.1 = phi double* [ %201, %if.then363 ], [ %201, %if.end338 ], [ %amta.02102, %if.then511 ], [ %amta.02102, %if.end508 ], [ %amta.02102, %if.end488 ]
  %veold.2 = phi double* [ %215, %if.then363 ], [ %215, %if.end338 ], [ %veold.1, %if.then511 ], [ %veold.1, %if.end508 ], [ %veold.1, %if.end488 ]
  %nodeprint.1 = phi i32* [ %138, %if.then363 ], [ %138, %if.end338 ], [ %277, %if.then511 ], [ %277, %if.end508 ], [ %277, %if.end488 ]
  %nelemload.1 = phi i32* [ %125, %if.then363 ], [ %125, %if.end338 ], [ %264, %if.then511 ], [ %264, %if.end508 ], [ %264, %if.end488 ]
  %plicon.1 = phi double* [ %179, %if.then363 ], [ %179, %if.end338 ], [ %plicon.02110, %if.then511 ], [ %plicon.02110, %if.end508 ], [ %plicon.02110, %if.end488 ]
  %plkcon.1 = phi double* [ %186, %if.then363 ], [ %186, %if.end338 ], [ %plkcon.02111, %if.then511 ], [ %plkcon.02111, %if.end508 ], [ %plkcon.02111, %if.end488 ]
  %trab.1 = phi double* [ %196, %if.then363 ], [ %196, %if.end338 ], [ %trab.02113, %if.then511 ], [ %trab.02113, %if.end508 ], [ %trab.02113, %if.end488 ]
  %shcon.1 = phi double* [ %161, %if.then363 ], [ %161, %if.end338 ], [ %shcon.02115, %if.then511 ], [ %shcon.02115, %if.end508 ], [ %shcon.02115, %if.end488 ]
  %cocon.1 = phi double* [ %173, %if.then363 ], [ %173, %if.end338 ], [ %cocon.02116, %if.then511 ], [ %cocon.02116, %if.end508 ], [ %cocon.02116, %if.end488 ]
  %xflow.1 = phi double* [ %136, %if.then363 ], [ %136, %if.end338 ], [ %274, %if.then511 ], [ %274, %if.end508 ], [ %274, %if.end488 ]
  %sideload.1 = phi i8* [ %call216, %if.then363 ], [ %call216, %if.end338 ], [ %call432, %if.then511 ], [ %call432, %if.end508 ], [ %call432, %if.end488 ]
  %set.3 = phi i8* [ %call234, %if.then363 ], [ %call234, %if.end338 ], [ %set.22120, %if.then511 ], [ %set.22120, %if.end508 ], [ %set.22120, %if.end488 ]
  %matname.1 = phi i8* [ %call352, %if.then363 ], [ %call352, %if.end338 ], [ %matname.02121, %if.then511 ], [ %matname.02121, %if.end508 ], [ %matname.02121, %if.end488 ]
  %orname.1 = phi i8* [ %call300, %if.then363 ], [ %call300, %if.end338 ], [ %orname.02122, %if.then511 ], [ %orname.02122, %if.end508 ], [ %orname.02122, %if.end488 ]
  %amname.1 = phi i8* [ %call315, %if.then363 ], [ %call315, %if.end338 ], [ %amname.02123, %if.then511 ], [ %amname.02123, %if.end508 ], [ %amname.02123, %if.end488 ]
  %noelplab.1 = phi i8* [ %call356, %if.then363 ], [ %call356, %if.end338 ], [ %noelplab.02124, %if.then511 ], [ %noelplab.02124, %if.end508 ], [ %noelplab.02124, %if.end488 ]
  %nodeflab.1 = phi i8* [ %call360, %if.then363 ], [ %call360, %if.end338 ], [ %nodeflab.02125, %if.then511 ], [ %nodeflab.02125, %if.end508 ], [ %nodeflab.02125, %if.end488 ]
  %lakon.1 = phi i8* [ %call105, %if.then363 ], [ %call105, %if.end338 ], [ %lakon.02126, %if.then511 ], [ %lakon.02126, %if.end508 ], [ %lakon.02126, %if.end488 ]
  %labmpc.1 = phi i8* [ %call190, %if.then363 ], [ %call190, %if.end338 ], [ %call474, %if.then511 ], [ %call474, %if.end508 ], [ %call474, %if.end488 ]
  %matnameLen.1 = phi i32 [ %mul349, %if.then363 ], [ %mul349, %if.end338 ], [ %matnameLen.02128, %if.then511 ], [ %matnameLen.02128, %if.end508 ], [ %matnameLen.02128, %if.end488 ]
  %amnameLen.1 = phi i32 [ %mul312, %if.then363 ], [ %mul312, %if.end338 ], [ %amnameLen.02129, %if.then511 ], [ %amnameLen.02129, %if.end508 ], [ %amnameLen.02129, %if.end488 ]
  %noelplabLen.1 = phi i32 [ %mul353, %if.then363 ], [ %mul353, %if.end338 ], [ %noelplabLen.02130, %if.then511 ], [ %noelplabLen.02130, %if.end508 ], [ %noelplabLen.02130, %if.end488 ]
  %nodeflabLen.1 = phi i32 [ %mul357, %if.then363 ], [ %mul357, %if.end338 ], [ %nodeflabLen.02131, %if.then511 ], [ %nodeflabLen.02131, %if.end508 ], [ %nodeflabLen.02131, %if.end488 ]
  %lakonLen.1 = phi i32 [ %mul102, %if.then363 ], [ %mul102, %if.end338 ], [ %lakonLen.02132, %if.then511 ], [ %lakonLen.02132, %if.end508 ], [ %lakonLen.02132, %if.end488 ]
  %labmpcLen.0 = phi i32 [ %mul187, %if.then363 ], [ %mul187, %if.end338 ], [ %mul470, %if.then511 ], [ %mul470, %if.end508 ], [ %mul470, %if.end488 ]
  %ndirforc.1 = phi i32* [ %115, %if.then363 ], [ %115, %if.end338 ], [ %252, %if.then511 ], [ %252, %if.end508 ], [ %252, %if.end488 ]
  %nodeforc.1 = phi i32* [ %113, %if.then363 ], [ %113, %if.end338 ], [ %249, %if.then511 ], [ %249, %if.end508 ], [ %249, %if.end488 ]
  %ipompc.1 = phi i32* [ %97, %if.then363 ], [ %97, %if.end338 ], [ %296, %if.then511 ], [ %296, %if.end508 ], [ %296, %if.end488 ]
  %ndirboun.1 = phi i32* [ %87, %if.then363 ], [ %87, %if.end338 ], [ %237, %if.then511 ], [ %237, %if.end508 ], [ %237, %if.end488 ]
  %nodeboun.1 = phi i32* [ %85, %if.then363 ], [ %85, %if.end338 ], [ %234, %if.then511 ], [ %234, %if.end508 ], [ %234, %if.end488 ]
  %kon.1 = phi i32* [ %54, %if.then363 ], [ %54, %if.end338 ], [ %kon.02138, %if.then511 ], [ %kon.02138, %if.end508 ], [ %kon.02138, %if.end488 ]
  %324 = load i32** %nodempc, align 8, !tbaa !0
  %325 = load double** %coefmpc, align 8, !tbaa !0
  call void @calinput_(double* %co.1, i32* %nk, i32* %kon.1, i32* %ipkon.1, i8* %lakon.1, i32* %nkon, i32* %ne, i32* %nodeboun.1, i32* %ndirboun.1, double* %xboun.1, i32* %nboun, i32* %ipompc.1, i32* %324, double* %325, i32* %nmpc, i32* %nmpc_, i32* %nodeforc.1, i32* %ndirforc.1, double* %xforc.1, i32* %nforc, i32* %nforc_, i32* %nelemload.1, i8* %sideload.1, double* %xload.1, i32* %nload, i32* %nload_, double* %arraydecay518, double* %arraydecay519, double* %om, double* %arraydecay520, i32* %nodeprint.1, i32* %noprint, i32* %nelemprint.1, i32* %neprint, i32* %mpcfree, i32* %nboun_, i32* %nev, i8* %set.3, i32* %istartset.1, i32* %iendset.1, i32* %ialset.1, i32* %nset, i32* %nalset, double* %elcon.1, i32* %nelcon.1, double* %rhcon.1, i32* %nrhcon.1, double* %alcon.1, i32* %nalcon.1, double* %alzero.1, double* %t0.3, double* %t1.3, i8* %matname.1, i32* %ielmat.1, i8* %orname.1, double* %orab.1, i32* %ielorien.1, i8* %amname.1, double* %amta.1, i32* %namta.1, i32* %nam, i32* %nmethod, i32* %iamforc.2, i32* %iamload.2, i32* %iamom, i32* %iambodyf, i32* %iamt1.1, i32* %ithermal, i32* %iperturb, i32* %istat, i32* %istep, i32* %nmat, i32* %ntmat_, i32* %norien, double* %prestr.1, i32* %iprestr, i32* %in, i32* %isolver, double* %tol, i32* %ncv, i32* %mxiter, double* %veold.2, double* %tinc, double* %tper, double* %alpham, double* %betam, i8* %noelplab.1, i8* %nodeflab.1, i32* %jout, i32* %nlabel, i32* %idrct, i32* %jmax, double* %tmin, double* %tmax, i32* %iexpl, double* %alpha, double* %haftol, i32* %iamboun.2, double* %plicon.1, i32* %nplicon.1, double* %plkcon.1, i32* %nplkcon.1, i32* %iplas, i32* %npmat_, i32* %mint_, i32* %nk_, double* %trab.1, i32* %inotr.2, i32* %ntrans, i32* %ikboun.1, i32* %ilboun.1, i32* %ikmpc.1, i32* %ilmpc.1, i32* %ics.1, double* %dcs.1, i32* %ncs_, i32* %namtot_, i32* %arrayidx55, i32* %nstate_, i32* %ncmat_, i32* %iumat, double* %arraydecay522, i8* %labmpc.1, i32* %iponor.2, double* %xnor.2, i32* %knor.2, double* %thickn.2, double* %thicke.2, i32* %ikforc.1, i32* %ilforc.1, double* %offset.2, i32* %iponoel.2, i32* %inoel.2, i32* %rig.2, i32* %arraydecay523, i32* %nshcon.1, double* %shcon.1, double* %cocon.1, i32* %ncocon.1, double* %arraydecay524, i32* %nflow, i32* %nodeflow.1, double* %xflow.1, i32* %iamflow.2, i32* %nflow_, double* %arraydecay525) #4
  %326 = load i32* %istep, align 4, !tbaa !3
  %cmp526 = icmp eq i32 %326, 1
  br i1 %cmp526, label %if.then528, label %if.else905

if.then528:                                       ; preds = %if.end517
  %327 = load i32* %nk, align 4, !tbaa !3
  %mul529 = shl nsw i32 %327, 2
  %conv530 = sext i32 %mul529 to i64
  %call531 = call i8* @u_calloc(i64 %conv530, i64 8) #4
  %328 = bitcast i8* %call531 to double*
  %329 = load i32* %mint_, align 4, !tbaa !3
  %mul532 = mul nsw i32 %329, 6
  %330 = load i32* %ne, align 4, !tbaa !3
  %mul533 = mul nsw i32 %mul532, %330
  %conv534 = sext i32 %mul533 to i64
  %call535 = call i8* @u_calloc(i64 %conv534, i64 8) #4
  %331 = bitcast i8* %call535 to double*
  %332 = load i32* %iprestr, align 4, !tbaa !3
  %cmp536 = icmp sgt i32 %332, 0
  %333 = bitcast double* %prestr.1 to i8*
  br i1 %cmp536, label %if.then538, label %if.else575

if.then538:                                       ; preds = %if.then528
  %334 = load i32* %ne, align 4, !tbaa !3
  %mul539 = mul nsw i32 %334, 6
  %conv540 = sext i32 %mul539 to i64
  %mul541 = shl nsw i64 %conv540, 3
  %call542 = call i8* @realloc(i8* %333, i64 %mul541) #4
  %335 = bitcast i8* %call542 to double*
  %336 = load i32* %ne, align 4, !tbaa !3
  %cmp5442003 = icmp sgt i32 %336, 0
  br i1 %cmp5442003, label %for.cond547.preheader.lr.ph, label %if.end576

for.cond547.preheader.lr.ph:                      ; preds = %if.then538
  %337 = load i32* %mint_, align 4, !tbaa !3
  %cmp5482001 = icmp sgt i32 %337, 0
  br label %for.cond547.preheader

for.cond547.preheader:                            ; preds = %for.cond547.preheader.lr.ph, %for.inc572
  %indvars.iv2260 = phi i64 [ 0, %for.cond547.preheader.lr.ph ], [ %indvars.iv.next2261, %for.inc572 ]
  br i1 %cmp5482001, label %for.cond551.preheader.lr.ph, label %for.inc572

for.cond551.preheader.lr.ph:                      ; preds = %for.cond547.preheader
  %338 = trunc i64 %indvars.iv2260 to i32
  %mul560 = mul i32 %337, %338
  %sext = mul i64 %indvars.iv2260, 25769803776
  %339 = ashr exact i64 %sext, 32
  br label %for.cond551.preheader

for.cond551.preheader:                            ; preds = %for.inc569, %for.cond551.preheader.lr.ph
  %j.02002 = phi i32 [ 0, %for.cond551.preheader.lr.ph ], [ %inc570, %for.inc569 ]
  %tmp = add i32 %mul560, %j.02002
  %tmp1986 = mul i32 %tmp, 6
  br label %for.body554

for.body554:                                      ; preds = %for.body554, %for.cond551.preheader
  %indvars.iv2256 = phi i64 [ 0, %for.cond551.preheader ], [ %indvars.iv.next2257, %for.body554 ]
  %340 = add nsw i64 %indvars.iv2256, %339
  %arrayidx558 = getelementptr inbounds double* %335, i64 %340
  %341 = load double* %arrayidx558, align 8, !tbaa !4
  %342 = trunc i64 %indvars.iv2256 to i32
  %add563 = add i32 %tmp1986, %342
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds double* %331, i64 %idxprom564
  store double %341, double* %arrayidx565, align 8, !tbaa !4
  %indvars.iv.next2257 = add i64 %indvars.iv2256, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2257 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.inc569, label %for.body554

for.inc569:                                       ; preds = %for.body554
  %inc570 = add nsw i32 %j.02002, 1
  %exitcond2259 = icmp eq i32 %inc570, %337
  br i1 %exitcond2259, label %for.inc572, label %for.cond551.preheader

for.inc572:                                       ; preds = %for.inc569, %for.cond547.preheader
  %indvars.iv.next2261 = add i64 %indvars.iv2260, 1
  %343 = trunc i64 %indvars.iv.next2261 to i32
  %cmp544 = icmp slt i32 %343, %336
  br i1 %cmp544, label %for.cond547.preheader, label %if.end576

if.else575:                                       ; preds = %if.then528
  call void @free(i8* %333) #4
  br label %if.end576

if.end576:                                        ; preds = %if.then538, %for.inc572, %if.else575
  %prestr.2 = phi double* [ %prestr.1, %if.else575 ], [ %335, %for.inc572 ], [ %335, %if.then538 ]
  %arrayidx577 = getelementptr inbounds i8* %nodeflab.1, i64 24
  %call578 = call i32 @strcmp1(i8* %arrayidx577, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #4
  %cmp579 = icmp eq i32 %call578, 0
  br i1 %cmp579, label %if.then586, label %lor.lhs.false581

lor.lhs.false581:                                 ; preds = %if.end576
  %arrayidx582 = getelementptr inbounds i8* %noelplab.1, i64 24
  %call583 = call i32 @strcmp1(i8* %arrayidx582, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #4
  %cmp584 = icmp eq i32 %call583, 0
  br i1 %cmp584, label %if.then586, label %if.end590

if.then586:                                       ; preds = %lor.lhs.false581, %if.end576
  %344 = load i32* %mint_, align 4, !tbaa !3
  %345 = load i32* %ne, align 4, !tbaa !3
  %mul587 = mul nsw i32 %345, %344
  %conv588 = sext i32 %mul587 to i64
  %call589 = call i8* @u_calloc(i64 %conv588, i64 8) #4
  %346 = bitcast i8* %call589 to double*
  br label %if.end590

if.end590:                                        ; preds = %if.then586, %lor.lhs.false581
  %ener.1 = phi double* [ %346, %if.then586 ], [ %ener.02114, %lor.lhs.false581 ]
  %347 = load i32* %nboun, align 4, !tbaa !3
  %conv591 = sext i32 %347 to i64
  %call592 = call i8* @u_calloc(i64 %conv591, i64 4) #4
  %348 = bitcast i8* %call592 to i32*
  %349 = load i32* %nboun, align 4, !tbaa !3
  %conv593 = sext i32 %349 to i64
  %call594 = call i8* @u_calloc(i64 %conv593, i64 4) #4
  %350 = bitcast i8* %call594 to i32*
  %351 = load i32* %nboun, align 4, !tbaa !3
  %conv595 = sext i32 %351 to i64
  %call596 = call i8* @u_calloc(i64 %conv595, i64 8) #4
  %352 = bitcast i8* %call596 to double*
  %353 = load i32* %nforc, align 4, !tbaa !3
  %conv597 = sext i32 %353 to i64
  %call598 = call i8* @u_calloc(i64 %conv597, i64 8) #4
  %354 = bitcast i8* %call598 to double*
  %355 = load i32* %nload, align 4, !tbaa !3
  %mul599 = shl nsw i32 %355, 1
  %conv600 = sext i32 %mul599 to i64
  %call601 = call i8* @u_calloc(i64 %conv600, i64 8) #4
  %356 = bitcast i8* %call601 to double*
  %357 = load i32* %ithermal, align 4, !tbaa !3
  %cmp602 = icmp sgt i32 %357, 1
  br i1 %cmp602, label %if.then604, label %if.end607

if.then604:                                       ; preds = %if.end590
  %358 = load i32* %nflow, align 4, !tbaa !3
  %conv605 = sext i32 %358 to i64
  %call606 = call i8* @u_calloc(i64 %conv605, i64 8) #4
  %359 = bitcast i8* %call606 to double*
  %.pre = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end607

if.end607:                                        ; preds = %if.then604, %if.end590
  %360 = phi i32 [ %.pre, %if.then604 ], [ %357, %if.end590 ]
  %xflowold.1 = phi double* [ %359, %if.then604 ], [ %xflowold.02118, %if.end590 ]
  call void @llvm.memset.p0i8.i64(i8* %bodyfold2266, i8 0, i64 24, i32 16, i1 false)
  store double 0.000000e+00, double* %omold, align 8, !tbaa !4
  %cmp617 = icmp eq i32 %360, 1
  br i1 %cmp617, label %if.then619, label %if.end633

if.then619:                                       ; preds = %if.end607
  %361 = load i32* %nk, align 4, !tbaa !3
  %conv620 = sext i32 %361 to i64
  %call621 = call i8* @u_calloc(i64 %conv620, i64 8) #4
  %362 = bitcast i8* %call621 to double*
  %363 = load i32* %nk, align 4, !tbaa !3
  %cmp6232006 = icmp sgt i32 %363, 0
  br i1 %cmp6232006, label %for.body625, label %if.end633

for.body625:                                      ; preds = %if.then619, %for.body625
  %indvars.iv2267 = phi i64 [ %indvars.iv.next2268, %for.body625 ], [ 0, %if.then619 ]
  %arrayidx627 = getelementptr inbounds double* %t0.3, i64 %indvars.iv2267
  %364 = load double* %arrayidx627, align 8, !tbaa !4
  %arrayidx629 = getelementptr inbounds double* %362, i64 %indvars.iv2267
  store double %364, double* %arrayidx629, align 8, !tbaa !4
  %indvars.iv.next2268 = add i64 %indvars.iv2267, 1
  %365 = trunc i64 %indvars.iv.next2268 to i32
  %cmp623 = icmp slt i32 %365, %363
  br i1 %cmp623, label %for.body625, label %if.end633

if.end633:                                        ; preds = %if.then619, %for.body625, %if.end607
  %t1old.1 = phi double* [ %t1old.02108, %if.end607 ], [ %362, %for.body625 ], [ %362, %if.then619 ]
  %366 = load i32* %mint_, align 4, !tbaa !3
  %mul634 = mul nsw i32 %366, 6
  %367 = load i32* %ne, align 4, !tbaa !3
  %mul635 = mul nsw i32 %mul634, %367
  %conv636 = sext i32 %mul635 to i64
  %call637 = call i8* @u_calloc(i64 %conv636, i64 8) #4
  %368 = bitcast i8* %call637 to double*
  %369 = bitcast i32* %kon.1 to i8*
  %370 = load i32* %nkon, align 4, !tbaa !3
  %conv638 = sext i32 %370 to i64
  %mul639 = shl nsw i64 %conv638, 2
  %call640 = call i8* @realloc(i8* %369, i64 %mul639) #4
  %371 = bitcast i8* %call640 to i32*
  %372 = bitcast i32* %ipkon.1 to i8*
  %373 = load i32* %ne, align 4, !tbaa !3
  %conv641 = sext i32 %373 to i64
  %mul642 = shl nsw i64 %conv641, 2
  %call643 = call i8* @realloc(i8* %372, i64 %mul642) #4
  %374 = bitcast i8* %call643 to i32*
  %375 = load i32* %ne, align 4, !tbaa !3
  %mul644 = shl nsw i32 %375, 3
  %conv646 = sext i32 %mul644 to i64
  %call648 = call i8* @realloc(i8* %lakon.1, i64 %conv646) #4
  %376 = load i32* %ne1d, align 4, !tbaa !3
  %cmp649 = icmp eq i32 %376, 0
  br i1 %cmp649, label %lor.lhs.false651, label %if.then654

lor.lhs.false651:                                 ; preds = %if.end633
  %377 = load i32* %ne2d, align 4, !tbaa !3
  %cmp652 = icmp eq i32 %377, 0
  br i1 %cmp652, label %if.end691, label %if.then654

if.then654:                                       ; preds = %lor.lhs.false651, %if.end633
  %378 = bitcast i32* %iponor.2 to i8*
  %379 = load i32* %nkon, align 4, !tbaa !3
  %mul655 = shl nsw i32 %379, 1
  %conv656 = sext i32 %mul655 to i64
  %mul657 = shl nsw i64 %conv656, 2
  %call658 = call i8* @realloc(i8* %378, i64 %mul657) #4
  %380 = bitcast i8* %call658 to i32*
  %381 = bitcast double* %xnor.2 to i8*
  %382 = load i32* %arraydecay523, align 16, !tbaa !3
  %sub660 = add nsw i32 %382, -1
  %conv661 = sext i32 %sub660 to i64
  %mul662 = shl nsw i64 %conv661, 3
  %call663 = call i8* @realloc(i8* %381, i64 %mul662) #4
  %383 = bitcast i8* %call663 to double*
  %384 = bitcast i32* %knor.2 to i8*
  %385 = load i32* %arrayidx664, align 4, !tbaa !3
  %sub665 = add nsw i32 %385, -1
  %conv666 = sext i32 %sub665 to i64
  %mul667 = shl nsw i64 %conv666, 2
  %call668 = call i8* @realloc(i8* %384, i64 %mul667) #4
  %386 = bitcast i8* %call668 to i32*
  %387 = bitcast double* %thickn.2 to i8*
  call void @free(i8* %387) #4
  %388 = bitcast double* %thicke.2 to i8*
  %389 = load i32* %nkon, align 4, !tbaa !3
  %mul669 = shl nsw i32 %389, 1
  %conv670 = sext i32 %mul669 to i64
  %mul671 = shl nsw i64 %conv670, 3
  %call672 = call i8* @realloc(i8* %388, i64 %mul671) #4
  %390 = bitcast i8* %call672 to double*
  %391 = bitcast double* %offset.2 to i8*
  %392 = load i32* %ne, align 4, !tbaa !3
  %mul673 = shl nsw i32 %392, 1
  %conv674 = sext i32 %mul673 to i64
  %mul675 = shl nsw i64 %conv674, 3
  %call676 = call i8* @realloc(i8* %391, i64 %mul675) #4
  %393 = bitcast i8* %call676 to double*
  %394 = bitcast i32* %inoel.2 to i8*
  %395 = load i32* %arrayidx151, align 8, !tbaa !3
  %396 = mul i32 %395, 3
  %mul679 = add i32 %396, -3
  %conv680 = sext i32 %mul679 to i64
  %mul681 = shl nsw i64 %conv680, 2
  %call682 = call i8* @realloc(i8* %394, i64 %mul681) #4
  %397 = bitcast i8* %call682 to i32*
  %398 = bitcast i32* %iponoel.2 to i8*
  %399 = load i32* %arrayidx683, align 4, !tbaa !3
  %conv684 = sext i32 %399 to i64
  %mul685 = shl nsw i64 %conv684, 2
  %call686 = call i8* @realloc(i8* %398, i64 %mul685) #4
  %400 = bitcast i8* %call686 to i32*
  %401 = bitcast i32* %rig.2 to i8*
  %402 = load i32* %arrayidx683, align 4, !tbaa !3
  %conv688 = sext i32 %402 to i64
  %mul689 = shl nsw i64 %conv688, 2
  %call690 = call i8* @realloc(i8* %401, i64 %mul689) #4
  %403 = bitcast i8* %call690 to i32*
  br label %if.end691

if.end691:                                        ; preds = %lor.lhs.false651, %if.then654
  %rig.3 = phi i32* [ %403, %if.then654 ], [ %rig.2, %lor.lhs.false651 ]
  %iponor.3 = phi i32* [ %380, %if.then654 ], [ %iponor.2, %lor.lhs.false651 ]
  %knor.3 = phi i32* [ %386, %if.then654 ], [ %knor.2, %lor.lhs.false651 ]
  %iponoel.3 = phi i32* [ %400, %if.then654 ], [ %iponoel.2, %lor.lhs.false651 ]
  %inoel.3 = phi i32* [ %397, %if.then654 ], [ %inoel.2, %lor.lhs.false651 ]
  %xnor.3 = phi double* [ %383, %if.then654 ], [ %xnor.2, %lor.lhs.false651 ]
  %thicke.3 = phi double* [ %390, %if.then654 ], [ %thicke.2, %lor.lhs.false651 ]
  %offset.3 = phi double* [ %393, %if.then654 ], [ %offset.2, %lor.lhs.false651 ]
  %404 = load i32* %nset, align 4, !tbaa !3
  %mul693 = mul nsw i32 %404, 21
  %conv694 = sext i32 %mul693 to i64
  %call696 = call i8* @realloc(i8* %set.3, i64 %conv694) #4
  %405 = bitcast i32* %istartset.1 to i8*
  %406 = load i32* %nset, align 4, !tbaa !3
  %conv697 = sext i32 %406 to i64
  %mul698 = shl nsw i64 %conv697, 2
  %call699 = call i8* @realloc(i8* %405, i64 %mul698) #4
  %407 = bitcast i8* %call699 to i32*
  %408 = bitcast i32* %iendset.1 to i8*
  %409 = load i32* %nset, align 4, !tbaa !3
  %conv700 = sext i32 %409 to i64
  %mul701 = shl nsw i64 %conv700, 2
  %call702 = call i8* @realloc(i8* %408, i64 %mul701) #4
  %410 = bitcast i8* %call702 to i32*
  %411 = bitcast i32* %ialset.1 to i8*
  %412 = load i32* %nalset, align 4, !tbaa !3
  %conv703 = sext i32 %412 to i64
  %mul704 = shl nsw i64 %conv703, 2
  %call705 = call i8* @realloc(i8* %411, i64 %mul704) #4
  %413 = bitcast i8* %call705 to i32*
  %414 = bitcast double* %elcon.1 to i8*
  %415 = load i32* %ncmat_, align 4, !tbaa !3
  %add706 = add nsw i32 %415, 1
  %416 = load i32* %ntmat_, align 4, !tbaa !3
  %mul707 = mul nsw i32 %add706, %416
  %417 = load i32* %nmat, align 4, !tbaa !3
  %mul708 = mul nsw i32 %mul707, %417
  %conv709 = sext i32 %mul708 to i64
  %mul710 = shl nsw i64 %conv709, 3
  %call711 = call i8* @realloc(i8* %414, i64 %mul710) #4
  %418 = bitcast i8* %call711 to double*
  %419 = bitcast i32* %nelcon.1 to i8*
  %420 = load i32* %nmat, align 4, !tbaa !3
  %mul712 = shl nsw i32 %420, 1
  %conv713 = sext i32 %mul712 to i64
  %mul714 = shl nsw i64 %conv713, 2
  %call715 = call i8* @realloc(i8* %419, i64 %mul714) #4
  %421 = bitcast i8* %call715 to i32*
  %422 = bitcast double* %rhcon.1 to i8*
  %423 = load i32* %ntmat_, align 4, !tbaa !3
  %mul716 = shl i32 %423, 1
  %424 = load i32* %nmat, align 4, !tbaa !3
  %mul717 = mul nsw i32 %mul716, %424
  %conv718 = sext i32 %mul717 to i64
  %mul719 = shl nsw i64 %conv718, 3
  %call720 = call i8* @realloc(i8* %422, i64 %mul719) #4
  %425 = bitcast i8* %call720 to double*
  %426 = bitcast i32* %nrhcon.1 to i8*
  %427 = load i32* %nmat, align 4, !tbaa !3
  %conv721 = sext i32 %427 to i64
  %mul722 = shl nsw i64 %conv721, 2
  %call723 = call i8* @realloc(i8* %426, i64 %mul722) #4
  %428 = bitcast i8* %call723 to i32*
  %429 = bitcast double* %alcon.1 to i8*
  %430 = load i32* %ntmat_, align 4, !tbaa !3
  %mul724 = mul nsw i32 %430, 7
  %431 = load i32* %nmat, align 4, !tbaa !3
  %mul725 = mul nsw i32 %mul724, %431
  %conv726 = sext i32 %mul725 to i64
  %mul727 = shl nsw i64 %conv726, 3
  %call728 = call i8* @realloc(i8* %429, i64 %mul727) #4
  %432 = bitcast i8* %call728 to double*
  %433 = bitcast i32* %nalcon.1 to i8*
  %434 = load i32* %nmat, align 4, !tbaa !3
  %mul729 = shl nsw i32 %434, 1
  %conv730 = sext i32 %mul729 to i64
  %mul731 = shl nsw i64 %conv730, 2
  %call732 = call i8* @realloc(i8* %433, i64 %mul731) #4
  %435 = bitcast i8* %call732 to i32*
  %436 = bitcast double* %alzero.1 to i8*
  %437 = load i32* %nmat, align 4, !tbaa !3
  %conv733 = sext i32 %437 to i64
  %mul734 = shl nsw i64 %conv733, 3
  %call735 = call i8* @realloc(i8* %436, i64 %mul734) #4
  %438 = bitcast i8* %call735 to double*
  %439 = load i32* %nmat, align 4, !tbaa !3
  %mul736 = mul nsw i32 %439, 20
  %conv738 = sext i32 %mul736 to i64
  %call740 = call i8* @realloc(i8* %matname.1, i64 %conv738) #4
  %440 = bitcast i32* %ielmat.1 to i8*
  %441 = load i32* %ne, align 4, !tbaa !3
  %conv741 = sext i32 %441 to i64
  %mul742 = shl nsw i64 %conv741, 2
  %call743 = call i8* @realloc(i8* %440, i64 %mul742) #4
  %442 = bitcast i8* %call743 to i32*
  %443 = load i32* %nstate_, align 4, !tbaa !3
  %cmp744 = icmp sgt i32 %443, 0
  br i1 %cmp744, label %if.then746, label %if.end751

if.then746:                                       ; preds = %if.end691
  %444 = load i32* %mint_, align 4, !tbaa !3
  %mul747 = mul nsw i32 %444, %443
  %445 = load i32* %ne, align 4, !tbaa !3
  %mul748 = mul nsw i32 %mul747, %445
  %conv749 = sext i32 %mul748 to i64
  %call750 = call i8* @u_calloc(i64 %conv749, i64 8) #4
  %446 = bitcast i8* %call750 to double*
  br label %if.end751

if.end751:                                        ; preds = %if.then746, %if.end691
  %xstate.1 = phi double* [ %446, %if.then746 ], [ %xstate.02112, %if.end691 ]
  %447 = load i32* %iplas, align 4, !tbaa !3
  %cmp752 = icmp eq i32 %447, 0
  %448 = bitcast double* %plicon.1 to i8*
  br i1 %cmp752, label %if.else837, label %if.then754

if.then754:                                       ; preds = %if.end751
  %449 = load i32* %npmat_, align 4, !tbaa !3
  %mul755 = shl nsw i32 %449, 1
  %add7561969 = or i32 %mul755, 1
  %450 = load i32* %ntmat_, align 4, !tbaa !3
  %mul757 = mul nsw i32 %add7561969, %450
  %451 = load i32* %nmat, align 4, !tbaa !3
  %mul758 = mul nsw i32 %mul757, %451
  %conv759 = sext i32 %mul758 to i64
  %mul760 = shl nsw i64 %conv759, 3
  %call761 = call i8* @realloc(i8* %448, i64 %mul760) #4
  %452 = bitcast i8* %call761 to double*
  %453 = bitcast i32* %nplicon.1 to i8*
  %454 = load i32* %ntmat_, align 4, !tbaa !3
  %add762 = add nsw i32 %454, 1
  %455 = load i32* %nmat, align 4, !tbaa !3
  %mul763 = mul nsw i32 %add762, %455
  %conv764 = sext i32 %mul763 to i64
  %mul765 = shl nsw i64 %conv764, 2
  %call766 = call i8* @realloc(i8* %453, i64 %mul765) #4
  %456 = bitcast i8* %call766 to i32*
  %457 = bitcast double* %plkcon.1 to i8*
  %458 = load i32* %npmat_, align 4, !tbaa !3
  %mul767 = shl nsw i32 %458, 1
  %add7681970 = or i32 %mul767, 1
  %459 = load i32* %ntmat_, align 4, !tbaa !3
  %mul769 = mul nsw i32 %add7681970, %459
  %460 = load i32* %nmat, align 4, !tbaa !3
  %mul770 = mul nsw i32 %mul769, %460
  %conv771 = sext i32 %mul770 to i64
  %mul772 = shl nsw i64 %conv771, 3
  %call773 = call i8* @realloc(i8* %457, i64 %mul772) #4
  %461 = bitcast i8* %call773 to double*
  %462 = bitcast i32* %nplkcon.1 to i8*
  %463 = load i32* %ntmat_, align 4, !tbaa !3
  %add774 = add nsw i32 %463, 1
  %464 = load i32* %nmat, align 4, !tbaa !3
  %mul775 = mul nsw i32 %add774, %464
  %conv776 = sext i32 %mul775 to i64
  %mul777 = shl nsw i64 %conv776, 2
  %call778 = call i8* @realloc(i8* %462, i64 %mul777) #4
  %465 = bitcast i8* %call778 to i32*
  %466 = load i32* %ne, align 4, !tbaa !3
  %cmp7802012 = icmp sgt i32 %466, 0
  br i1 %cmp7802012, label %for.body782.lr.ph, label %if.end838

for.body782.lr.ph:                                ; preds = %if.then754
  %467 = load i32* %mint_, align 4, !tbaa !3
  br label %for.body782

for.body782:                                      ; preds = %for.body782.lr.ph, %for.inc834
  %indvars.iv2281 = phi i64 [ 0, %for.body782.lr.ph ], [ %indvars.iv.next2282, %for.inc834 ]
  %arrayidx784 = getelementptr inbounds i32* %442, i64 %indvars.iv2281
  %468 = load i32* %arrayidx784, align 4, !tbaa !3
  %mul785 = shl i32 %468, 1
  %sub786 = add nsw i32 %mul785, -2
  %idxprom787 = sext i32 %sub786 to i64
  %arrayidx788 = getelementptr inbounds i32* %421, i64 %idxprom787
  %469 = load i32* %arrayidx788, align 4, !tbaa !3
  %cmp789.not = icmp sgt i32 %469, -51
  %cmp7932010.not = icmp slt i32 %467, 1
  %brmerge = or i1 %cmp789.not, %cmp7932010.not
  br i1 %brmerge, label %for.inc834, label %for.body795.lr.ph

for.body795.lr.ph:                                ; preds = %for.body782
  %470 = trunc i64 %indvars.iv2281 to i32
  %mul796 = mul i32 %470, 13
  %mul807 = mul i32 %mul796, %467
  br label %for.body795

for.body795:                                      ; preds = %for.inc830, %for.body795.lr.ph
  %indvars.iv2277 = phi i64 [ 0, %for.body795.lr.ph ], [ %indvars.iv.next2278, %for.inc830 ]
  %471 = trunc i64 %indvars.iv2277 to i32
  %mul798 = mul nsw i32 %471, 13
  %add799 = add nsw i32 %mul807, %mul798
  %idxprom800 = sext i32 %add799 to i64
  %arrayidx801 = getelementptr inbounds double* %xstate.1, i64 %idxprom800
  store double 0.000000e+00, double* %arrayidx801, align 8, !tbaa !4
  br label %for.body805

for.body805:                                      ; preds = %for.body805, %for.body795
  %indvars.iv2269 = phi i64 [ 1, %for.body795 ], [ %indvars.iv.next2270, %for.body805 ]
  %472 = trunc i64 %indvars.iv2269 to i32
  %add809 = add i32 %472, %mul798
  %add810 = add i32 %add809, %mul807
  %idxprom811 = sext i32 %add810 to i64
  %arrayidx812 = getelementptr inbounds double* %xstate.1, i64 %idxprom811
  store double 1.000000e+00, double* %arrayidx812, align 8, !tbaa !4
  %indvars.iv.next2270 = add i64 %indvars.iv2269, 1
  %lftr.wideiv2271 = trunc i64 %indvars.iv.next2270 to i32
  %exitcond2272 = icmp eq i32 %lftr.wideiv2271, 4
  br i1 %exitcond2272, label %for.body819, label %for.body805

for.body819:                                      ; preds = %for.body805, %for.body819
  %indvars.iv2273 = phi i64 [ %indvars.iv.next2274, %for.body819 ], [ 4, %for.body805 ]
  %473 = trunc i64 %indvars.iv2273 to i32
  %add823 = add i32 %473, %mul798
  %add824 = add i32 %add823, %mul807
  %idxprom825 = sext i32 %add824 to i64
  %arrayidx826 = getelementptr inbounds double* %xstate.1, i64 %idxprom825
  store double 0.000000e+00, double* %arrayidx826, align 8, !tbaa !4
  %indvars.iv.next2274 = add i64 %indvars.iv2273, 1
  %lftr.wideiv2275 = trunc i64 %indvars.iv.next2274 to i32
  %exitcond2276 = icmp eq i32 %lftr.wideiv2275, 13
  br i1 %exitcond2276, label %for.inc830, label %for.body819

for.inc830:                                       ; preds = %for.body819
  %indvars.iv.next2278 = add i64 %indvars.iv2277, 1
  %lftr.wideiv2279 = trunc i64 %indvars.iv.next2278 to i32
  %exitcond2280 = icmp eq i32 %lftr.wideiv2279, %467
  br i1 %exitcond2280, label %for.inc834, label %for.body795

for.inc834:                                       ; preds = %for.body782, %for.inc830
  %indvars.iv.next2282 = add i64 %indvars.iv2281, 1
  %474 = trunc i64 %indvars.iv.next2282 to i32
  %cmp780 = icmp slt i32 %474, %466
  br i1 %cmp780, label %for.body782, label %if.end838

if.else837:                                       ; preds = %if.end751
  call void @free(i8* %448) #4
  %475 = bitcast i32* %nplicon.1 to i8*
  call void @free(i8* %475) #4
  %476 = bitcast double* %plkcon.1 to i8*
  call void @free(i8* %476) #4
  %477 = bitcast i32* %nplkcon.1 to i8*
  call void @free(i8* %477) #4
  br label %if.end838

if.end838:                                        ; preds = %if.then754, %for.inc834, %if.else837
  %nplicon.2 = phi i32* [ %nplicon.1, %if.else837 ], [ %456, %for.inc834 ], [ %456, %if.then754 ]
  %nplkcon.2 = phi i32* [ %nplkcon.1, %if.else837 ], [ %465, %for.inc834 ], [ %465, %if.then754 ]
  %plicon.2 = phi double* [ %plicon.1, %if.else837 ], [ %452, %for.inc834 ], [ %452, %if.then754 ]
  %plkcon.2 = phi double* [ %plkcon.1, %if.else837 ], [ %461, %for.inc834 ], [ %461, %if.then754 ]
  %478 = load i32* %norien, align 4, !tbaa !3
  %cmp839 = icmp sgt i32 %478, 0
  br i1 %cmp839, label %if.then841, label %if.else854

if.then841:                                       ; preds = %if.end838
  %mul843 = mul nsw i32 %478, 20
  %conv844 = sext i32 %mul843 to i64
  %call846 = call i8* @realloc(i8* %orname.1, i64 %conv844) #4
  %479 = bitcast i32* %ielorien.1 to i8*
  %480 = load i32* %ne, align 4, !tbaa !3
  %conv847 = sext i32 %480 to i64
  %mul848 = shl nsw i64 %conv847, 2
  %call849 = call i8* @realloc(i8* %479, i64 %mul848) #4
  %481 = bitcast i8* %call849 to i32*
  %482 = bitcast double* %orab.1 to i8*
  %483 = load i32* %norien, align 4, !tbaa !3
  %mul850 = mul nsw i32 %483, 7
  %conv851 = sext i32 %mul850 to i64
  %mul852 = shl nsw i64 %conv851, 3
  %call853 = call i8* @realloc(i8* %482, i64 %mul852) #4
  %484 = bitcast i8* %call853 to double*
  br label %if.end855

if.else854:                                       ; preds = %if.end838
  call void @free(i8* %orname.1) #4
  %485 = bitcast i32* %ielorien.1 to i8*
  call void @free(i8* %485) #4
  %486 = bitcast double* %orab.1 to i8*
  call void @free(i8* %486) #4
  br label %if.end855

if.end855:                                        ; preds = %if.else854, %if.then841
  %ielorien.2 = phi i32* [ %481, %if.then841 ], [ %ielorien.1, %if.else854 ]
  %orab.2 = phi double* [ %484, %if.then841 ], [ %orab.1, %if.else854 ]
  %orname.2 = phi i8* [ %call846, %if.then841 ], [ %orname.1, %if.else854 ]
  %487 = load i32* %nam, align 4, !tbaa !3
  %cmp856 = icmp sgt i32 %487, 0
  br i1 %cmp856, label %if.then858, label %if.else876

if.then858:                                       ; preds = %if.end855
  %mul859 = mul nsw i32 %487, 20
  %conv861 = sext i32 %mul859 to i64
  %call863 = call i8* @realloc(i8* %amname.1, i64 %conv861) #4
  %488 = bitcast i32* %namta.1 to i8*
  %489 = load i32* %nam, align 4, !tbaa !3
  %mul864 = mul nsw i32 %489, 3
  %conv865 = sext i32 %mul864 to i64
  %mul866 = shl nsw i64 %conv865, 2
  %call867 = call i8* @realloc(i8* %488, i64 %mul866) #4
  %490 = bitcast i8* %call867 to i32*
  %491 = bitcast double* %amta.1 to i8*
  %492 = load i32* %nam, align 4, !tbaa !3
  %mul868 = mul nsw i32 %492, 3
  %sub869 = add nsw i32 %mul868, -2
  %idxprom870 = sext i32 %sub869 to i64
  %arrayidx871 = getelementptr inbounds i32* %490, i64 %idxprom870
  %493 = load i32* %arrayidx871, align 4, !tbaa !3
  %mul872 = shl nsw i32 %493, 1
  %conv873 = sext i32 %mul872 to i64
  %mul874 = shl nsw i64 %conv873, 3
  %call875 = call i8* @realloc(i8* %491, i64 %mul874) #4
  %494 = bitcast i8* %call875 to double*
  br label %if.end877

if.else876:                                       ; preds = %if.end855
  call void @free(i8* %amname.1) #4
  %495 = bitcast double* %amta.1 to i8*
  call void @free(i8* %495) #4
  %496 = bitcast i32* %namta.1 to i8*
  call void @free(i8* %496) #4
  %497 = bitcast i32* %iamforc.2 to i8*
  call void @free(i8* %497) #4
  %498 = bitcast i32* %iamload.2 to i8*
  call void @free(i8* %498) #4
  %499 = bitcast i32* %iamboun.2 to i8*
  call void @free(i8* %499) #4
  br label %if.end877

if.end877:                                        ; preds = %if.else876, %if.then858
  %namta.2 = phi i32* [ %490, %if.then858 ], [ %namta.1, %if.else876 ]
  %amta.2 = phi double* [ %494, %if.then858 ], [ %amta.1, %if.else876 ]
  %amname.2 = phi i8* [ %call863, %if.then858 ], [ %amname.1, %if.else876 ]
  %amnameLen.2 = phi i32 [ %mul859, %if.then858 ], [ %amnameLen.1, %if.else876 ]
  %500 = load i32* %ntrans, align 4, !tbaa !3
  %cmp878 = icmp sgt i32 %500, 0
  %501 = bitcast double* %trab.1 to i8*
  br i1 %cmp878, label %if.then880, label %if.else885

if.then880:                                       ; preds = %if.end877
  %mul881 = mul nsw i32 %500, 7
  %conv882 = sext i32 %mul881 to i64
  %mul883 = shl nsw i64 %conv882, 3
  %call884 = call i8* @realloc(i8* %501, i64 %mul883) #4
  %502 = bitcast i8* %call884 to double*
  br label %if.end886

if.else885:                                       ; preds = %if.end877
  call void @free(i8* %501) #4
  %503 = bitcast i32* %inotr.2 to i8*
  call void @free(i8* %503) #4
  br label %if.end886

if.end886:                                        ; preds = %if.else885, %if.then880
  %trab.2 = phi double* [ %502, %if.then880 ], [ %trab.1, %if.else885 ]
  %504 = load i32* %ithermal, align 4, !tbaa !3
  %cmp887 = icmp eq i32 %504, 0
  br i1 %cmp887, label %if.end890, label %lor.lhs.false893

if.end890:                                        ; preds = %if.end886
  %505 = bitcast double* %t0.3 to i8*
  call void @free(i8* %505) #4
  %506 = bitcast double* %t1.3 to i8*
  call void @free(i8* %506) #4
  %.pr = load i32* %ithermal, align 4, !tbaa !3
  %cmp891 = icmp eq i32 %.pr, 0
  br i1 %cmp891, label %if.then896, label %lor.lhs.false893

lor.lhs.false893:                                 ; preds = %if.end886, %if.end890
  %507 = load i32* %nam, align 4, !tbaa !3
  %cmp894 = icmp slt i32 %507, 1
  br i1 %cmp894, label %if.then896, label %if.end897

if.then896:                                       ; preds = %lor.lhs.false893, %if.end890
  %508 = bitcast i32* %iamt1.1 to i8*
  call void @free(i8* %508) #4
  br label %if.end897

if.end897:                                        ; preds = %if.then896, %lor.lhs.false893
  %509 = load i32* %ncs_, align 4, !tbaa !3
  %cmp898 = icmp sgt i32 %509, 0
  br i1 %cmp898, label %if.then900, label %if.end986

if.then900:                                       ; preds = %if.end897
  %510 = bitcast i32* %ics.1 to i8*
  %conv901 = sext i32 %509 to i64
  %mul902 = shl nsw i64 %conv901, 2
  %call903 = call i8* @realloc(i8* %510, i64 %mul902) #4
  %511 = bitcast i8* %call903 to i32*
  %512 = bitcast double* %dcs.1 to i8*
  call void @free(i8* %512) #4
  br label %if.end986

if.else905:                                       ; preds = %if.end517
  %513 = bitcast double* %vold.02086 to i8*
  %514 = load i32* %nk, align 4, !tbaa !3
  %mul906 = shl nsw i32 %514, 2
  %conv907 = sext i32 %mul906 to i64
  %mul908 = shl nsw i64 %conv907, 3
  %call909 = call i8* @realloc(i8* %513, i64 %mul908) #4
  %515 = bitcast i8* %call909 to double*
  %516 = load i32* %nboun, align 4, !tbaa !3
  %conv910 = sext i32 %516 to i64
  %call911 = call i8* @u_calloc(i64 %conv910, i64 8) #4
  %517 = bitcast i8* %call911 to double*
  %518 = load i32* %nboun, align 4, !tbaa !3
  %conv912 = sext i32 %518 to i64
  %call913 = call i8* @u_calloc(i64 %conv912, i64 4) #4
  %519 = bitcast i8* %call913 to i32*
  %520 = load i32* %nbounold, align 4, !tbaa !3
  %521 = load i32* %nboun, align 4, !tbaa !3
  %cmp914 = icmp slt i32 %520, %521
  br i1 %cmp914, label %if.then916, label %if.end926

if.then916:                                       ; preds = %if.else905
  %522 = bitcast double* %xbounold.02083 to i8*
  %conv917 = sext i32 %521 to i64
  %mul918 = shl nsw i64 %conv917, 3
  %call919 = call i8* @realloc(i8* %522, i64 %mul918) #4
  %523 = bitcast i8* %call919 to double*
  %524 = bitcast i32* %nodebounold.02055 to i8*
  %525 = load i32* %nboun, align 4, !tbaa !3
  %conv920 = sext i32 %525 to i64
  %mul921 = shl nsw i64 %conv920, 2
  %call922 = call i8* @realloc(i8* %524, i64 %mul921) #4
  %526 = bitcast i8* %call922 to i32*
  %527 = bitcast i32* %ndirbounold.02056 to i8*
  %528 = load i32* %nboun, align 4, !tbaa !3
  %conv923 = sext i32 %528 to i64
  %mul924 = shl nsw i64 %conv923, 2
  %call925 = call i8* @realloc(i8* %527, i64 %mul924) #4
  %529 = bitcast i8* %call925 to i32*
  br label %if.end926

if.end926:                                        ; preds = %if.then916, %if.else905
  %nodebounold.1 = phi i32* [ %526, %if.then916 ], [ %nodebounold.02055, %if.else905 ]
  %ndirbounold.1 = phi i32* [ %529, %if.then916 ], [ %ndirbounold.02056, %if.else905 ]
  %xbounold.1 = phi double* [ %523, %if.then916 ], [ %xbounold.02083, %if.else905 ]
  call void @spcmatch_(double* %xboun.1, i32* %nodeboun.1, i32* %ndirboun.1, i32* %nboun, double* %xbounold.1, i32* %nodebounold.1, i32* %ndirbounold.1, i32* %nbounold, i32* %ikboun.1, i32* %ilboun.1, double* %515, double* %517, i32* %519) #4
  %530 = bitcast double* %xbounold.1 to i8*
  %531 = load i32* %nboun, align 4, !tbaa !3
  %conv927 = sext i32 %531 to i64
  %mul928 = shl nsw i64 %conv927, 3
  %call929 = call i8* @realloc(i8* %530, i64 %mul928) #4
  %532 = bitcast i8* %call929 to double*
  %533 = bitcast i32* %nodebounold.1 to i8*
  %534 = load i32* %nboun, align 4, !tbaa !3
  %conv930 = sext i32 %534 to i64
  %mul931 = shl nsw i64 %conv930, 2
  %call932 = call i8* @realloc(i8* %533, i64 %mul931) #4
  %535 = bitcast i8* %call932 to i32*
  %536 = bitcast i32* %ndirbounold.1 to i8*
  %537 = load i32* %nboun, align 4, !tbaa !3
  %conv933 = sext i32 %537 to i64
  %mul934 = shl nsw i64 %conv933, 2
  %call935 = call i8* @realloc(i8* %536, i64 %mul934) #4
  %538 = bitcast i8* %call935 to i32*
  call void @free(i8* %call911) #4
  call void @free(i8* %call913) #4
  %539 = bitcast double* %xforcold.02084 to i8*
  %540 = load i32* %nforc, align 4, !tbaa !3
  %conv936 = sext i32 %540 to i64
  %mul937 = shl nsw i64 %conv936, 3
  %call938 = call i8* @realloc(i8* %539, i64 %mul937) #4
  %541 = bitcast i8* %call938 to double*
  %542 = load i32* %nforc, align 4, !tbaa !3
  %cmp9401993 = icmp slt i32 %nforcold.0.ph2236, %542
  br i1 %cmp9401993, label %for.body942.lr.ph, label %for.end947

for.body942.lr.ph:                                ; preds = %if.end926
  %scevgep = getelementptr i8* %call938, i64 %29
  %543 = icmp sgt i32 %542, %31
  %smax = select i1 %543, i32 %542, i32 %31
  %544 = add i32 %smax, %30
  %545 = zext i32 %544 to i64
  %546 = shl nuw nsw i64 %545, 3
  %547 = add i64 %546, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %547, i32 8, i1 false)
  br label %for.end947

for.end947:                                       ; preds = %for.body942.lr.ph, %if.end926
  %548 = bitcast double* %xloadold.02088 to i8*
  %549 = load i32* %nload, align 4, !tbaa !3
  %mul948 = shl nsw i32 %549, 1
  %conv949 = sext i32 %mul948 to i64
  %mul950 = shl nsw i64 %conv949, 3
  %call951 = call i8* @realloc(i8* %548, i64 %mul950) #4
  %550 = bitcast i8* %call951 to double*
  %551 = load i32* %nload, align 4, !tbaa !3
  %cmp9551996 = icmp slt i32 %nloadold.0.ph2237, %551
  br i1 %cmp9551996, label %for.body957.lr.ph, label %for.end962

for.body957.lr.ph:                                ; preds = %for.end947
  %scevgep2250 = getelementptr i8* %call951, i64 %34
  %552 = shl i32 %551, 1
  %553 = icmp sgt i32 %552, %36
  %smax2251 = select i1 %553, i32 %552, i32 %36
  %554 = add i32 %smax2251, %35
  %555 = zext i32 %554 to i64
  %556 = shl nuw nsw i64 %555, 3
  %557 = add i64 %556, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep2250, i8 0, i64 %557, i32 8, i1 false)
  br label %for.end962

for.end962:                                       ; preds = %for.body957.lr.ph, %for.end947
  %558 = load i32* %ithermal, align 4, !tbaa !3
  %cmp963 = icmp sgt i32 %558, 1
  br i1 %cmp963, label %if.then965, label %if.end978

if.then965:                                       ; preds = %for.end962
  %559 = bitcast double* %xflowold.02118 to i8*
  %560 = load i32* %nflow, align 4, !tbaa !3
  %conv966 = sext i32 %560 to i64
  %mul967 = shl nsw i64 %conv966, 3
  %call968 = call i8* @realloc(i8* %559, i64 %mul967) #4
  %561 = bitcast i8* %call968 to double*
  %562 = load i32* %nflow, align 4, !tbaa !3
  %cmp9701998 = icmp slt i32 %nflowold.0.ph2238, %562
  br i1 %cmp9701998, label %for.body972.lr.ph, label %if.end978thread-pre-split

for.body972.lr.ph:                                ; preds = %if.then965
  %scevgep2254 = getelementptr i8* %call968, i64 %38
  %563 = icmp sgt i32 %562, %40
  %smax2255 = select i1 %563, i32 %562, i32 %40
  %564 = add i32 %smax2255, %39
  %565 = zext i32 %564 to i64
  %566 = shl nuw nsw i64 %565, 3
  %567 = add i64 %566, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep2254, i8 0, i64 %567, i32 8, i1 false)
  br label %if.end978thread-pre-split

if.end978thread-pre-split:                        ; preds = %for.body972.lr.ph, %if.then965
  %.pr1975 = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end978

if.end978:                                        ; preds = %if.end978thread-pre-split, %for.end962
  %568 = phi i32 [ %.pr1975, %if.end978thread-pre-split ], [ %558, %for.end962 ]
  %xflowold.2 = phi double* [ %561, %if.end978thread-pre-split ], [ %xflowold.02118, %for.end962 ]
  %cmp979 = icmp eq i32 %568, 1
  br i1 %cmp979, label %if.then981, label %if.end986

if.then981:                                       ; preds = %if.end978
  %569 = bitcast double* %t1old.02108 to i8*
  %570 = load i32* %nk, align 4, !tbaa !3
  %conv982 = sext i32 %570 to i64
  %mul983 = shl nsw i64 %conv982, 3
  %call984 = call i8* @realloc(i8* %569, i64 %mul983) #4
  %571 = bitcast i8* %call984 to double*
  br label %if.end986

if.end986:                                        ; preds = %if.end978, %if.then981, %if.end897, %if.then900
  %ics.2 = phi i32* [ %511, %if.then900 ], [ %ics.1, %if.end897 ], [ %ics.1, %if.then981 ], [ %ics.1, %if.end978 ]
  %rig.4 = phi i32* [ %rig.3, %if.then900 ], [ %rig.3, %if.end897 ], [ %rig.2, %if.then981 ], [ %rig.2, %if.end978 ]
  %istartset.2 = phi i32* [ %407, %if.then900 ], [ %407, %if.end897 ], [ %istartset.1, %if.then981 ], [ %istartset.1, %if.end978 ]
  %iendset.2 = phi i32* [ %410, %if.then900 ], [ %410, %if.end897 ], [ %iendset.1, %if.then981 ], [ %iendset.1, %if.end978 ]
  %ialset.2 = phi i32* [ %413, %if.then900 ], [ %413, %if.end897 ], [ %ialset.1, %if.then981 ], [ %ialset.1, %if.end978 ]
  %ielmat.2 = phi i32* [ %442, %if.then900 ], [ %442, %if.end897 ], [ %ielmat.1, %if.then981 ], [ %ielmat.1, %if.end978 ]
  %ielorien.3 = phi i32* [ %ielorien.2, %if.then900 ], [ %ielorien.2, %if.end897 ], [ %ielorien.1, %if.then981 ], [ %ielorien.1, %if.end978 ]
  %nrhcon.2 = phi i32* [ %428, %if.then900 ], [ %428, %if.end897 ], [ %nrhcon.1, %if.then981 ], [ %nrhcon.1, %if.end978 ]
  %nodebounold.2 = phi i32* [ %348, %if.then900 ], [ %348, %if.end897 ], [ %535, %if.then981 ], [ %535, %if.end978 ]
  %ndirbounold.2 = phi i32* [ %350, %if.then900 ], [ %350, %if.end897 ], [ %538, %if.then981 ], [ %538, %if.end978 ]
  %nelcon.2 = phi i32* [ %421, %if.then900 ], [ %421, %if.end897 ], [ %nelcon.1, %if.then981 ], [ %nelcon.1, %if.end978 ]
  %nalcon.2 = phi i32* [ %435, %if.then900 ], [ %435, %if.end897 ], [ %nalcon.1, %if.then981 ], [ %nalcon.1, %if.end978 ]
  %namta.3 = phi i32* [ %namta.2, %if.then900 ], [ %namta.2, %if.end897 ], [ %namta.1, %if.then981 ], [ %namta.1, %if.end978 ]
  %ipkon.2 = phi i32* [ %374, %if.then900 ], [ %374, %if.end897 ], [ %ipkon.1, %if.then981 ], [ %ipkon.1, %if.end978 ]
  %nplicon.3 = phi i32* [ %nplicon.2, %if.then900 ], [ %nplicon.2, %if.end897 ], [ %nplicon.1, %if.then981 ], [ %nplicon.1, %if.end978 ]
  %nplkcon.3 = phi i32* [ %nplkcon.2, %if.then900 ], [ %nplkcon.2, %if.end897 ], [ %nplkcon.1, %if.then981 ], [ %nplkcon.1, %if.end978 ]
  %iponor.4 = phi i32* [ %iponor.3, %if.then900 ], [ %iponor.3, %if.end897 ], [ %iponor.2, %if.then981 ], [ %iponor.2, %if.end978 ]
  %knor.4 = phi i32* [ %knor.3, %if.then900 ], [ %knor.3, %if.end897 ], [ %knor.2, %if.then981 ], [ %knor.2, %if.end978 ]
  %iponoel.4 = phi i32* [ %iponoel.3, %if.then900 ], [ %iponoel.3, %if.end897 ], [ %iponoel.2, %if.then981 ], [ %iponoel.2, %if.end978 ]
  %inoel.4 = phi i32* [ %inoel.3, %if.then900 ], [ %inoel.3, %if.end897 ], [ %inoel.2, %if.then981 ], [ %inoel.2, %if.end978 ]
  %xbounold.2 = phi double* [ %352, %if.then900 ], [ %352, %if.end897 ], [ %532, %if.then981 ], [ %532, %if.end978 ]
  %xforcold.1 = phi double* [ %354, %if.then900 ], [ %354, %if.end897 ], [ %541, %if.then981 ], [ %541, %if.end978 ]
  %vold.1 = phi double* [ %328, %if.then900 ], [ %328, %if.end897 ], [ %515, %if.then981 ], [ %515, %if.end978 ]
  %sti.1 = phi double* [ %331, %if.then900 ], [ %331, %if.end897 ], [ %sti.02087, %if.then981 ], [ %sti.02087, %if.end978 ]
  %xloadold.1 = phi double* [ %356, %if.then900 ], [ %356, %if.end897 ], [ %550, %if.then981 ], [ %550, %if.end978 ]
  %xnor.4 = phi double* [ %xnor.3, %if.then900 ], [ %xnor.3, %if.end897 ], [ %xnor.2, %if.then981 ], [ %xnor.2, %if.end978 ]
  %thicke.4 = phi double* [ %thicke.3, %if.then900 ], [ %thicke.3, %if.end897 ], [ %thicke.2, %if.then981 ], [ %thicke.2, %if.end978 ]
  %offset.4 = phi double* [ %offset.3, %if.then900 ], [ %offset.3, %if.end897 ], [ %offset.2, %if.then981 ], [ %offset.2, %if.end978 ]
  %elcon.2 = phi double* [ %418, %if.then900 ], [ %418, %if.end897 ], [ %elcon.1, %if.then981 ], [ %elcon.1, %if.end978 ]
  %rhcon.2 = phi double* [ %425, %if.then900 ], [ %425, %if.end897 ], [ %rhcon.1, %if.then981 ], [ %rhcon.1, %if.end978 ]
  %alcon.2 = phi double* [ %432, %if.then900 ], [ %432, %if.end897 ], [ %alcon.1, %if.then981 ], [ %alcon.1, %if.end978 ]
  %alzero.2 = phi double* [ %438, %if.then900 ], [ %438, %if.end897 ], [ %alzero.1, %if.then981 ], [ %alzero.1, %if.end978 ]
  %prestr.3 = phi double* [ %prestr.2, %if.then900 ], [ %prestr.2, %if.end897 ], [ %prestr.1, %if.then981 ], [ %prestr.1, %if.end978 ]
  %orab.3 = phi double* [ %orab.2, %if.then900 ], [ %orab.2, %if.end897 ], [ %orab.1, %if.then981 ], [ %orab.1, %if.end978 ]
  %amta.3 = phi double* [ %amta.2, %if.then900 ], [ %amta.2, %if.end897 ], [ %amta.1, %if.then981 ], [ %amta.1, %if.end978 ]
  %t1old.2 = phi double* [ %t1old.1, %if.then900 ], [ %t1old.1, %if.end897 ], [ %571, %if.then981 ], [ %t1old.02108, %if.end978 ]
  %eei.1 = phi double* [ %368, %if.then900 ], [ %368, %if.end897 ], [ %eei.02109, %if.then981 ], [ %eei.02109, %if.end978 ]
  %plicon.3 = phi double* [ %plicon.2, %if.then900 ], [ %plicon.2, %if.end897 ], [ %plicon.1, %if.then981 ], [ %plicon.1, %if.end978 ]
  %plkcon.3 = phi double* [ %plkcon.2, %if.then900 ], [ %plkcon.2, %if.end897 ], [ %plkcon.1, %if.then981 ], [ %plkcon.1, %if.end978 ]
  %xstate.2 = phi double* [ %xstate.1, %if.then900 ], [ %xstate.1, %if.end897 ], [ %xstate.02112, %if.then981 ], [ %xstate.02112, %if.end978 ]
  %trab.3 = phi double* [ %trab.2, %if.then900 ], [ %trab.2, %if.end897 ], [ %trab.1, %if.then981 ], [ %trab.1, %if.end978 ]
  %ener.2 = phi double* [ %ener.1, %if.then900 ], [ %ener.1, %if.end897 ], [ %ener.02114, %if.then981 ], [ %ener.02114, %if.end978 ]
  %xflowold.3 = phi double* [ %xflowold.1, %if.then900 ], [ %xflowold.1, %if.end897 ], [ %xflowold.2, %if.then981 ], [ %xflowold.2, %if.end978 ]
  %set.4 = phi i8* [ %call696, %if.then900 ], [ %call696, %if.end897 ], [ %set.3, %if.then981 ], [ %set.3, %if.end978 ]
  %matname.2 = phi i8* [ %call740, %if.then900 ], [ %call740, %if.end897 ], [ %matname.1, %if.then981 ], [ %matname.1, %if.end978 ]
  %orname.3 = phi i8* [ %orname.2, %if.then900 ], [ %orname.2, %if.end897 ], [ %orname.1, %if.then981 ], [ %orname.1, %if.end978 ]
  %amname.3 = phi i8* [ %amname.2, %if.then900 ], [ %amname.2, %if.end897 ], [ %amname.1, %if.then981 ], [ %amname.1, %if.end978 ]
  %lakon.2 = phi i8* [ %call648, %if.then900 ], [ %call648, %if.end897 ], [ %lakon.1, %if.then981 ], [ %lakon.1, %if.end978 ]
  %matnameLen.2 = phi i32 [ %mul736, %if.then900 ], [ %mul736, %if.end897 ], [ %matnameLen.1, %if.then981 ], [ %matnameLen.1, %if.end978 ]
  %amnameLen.3 = phi i32 [ %amnameLen.2, %if.then900 ], [ %amnameLen.2, %if.end897 ], [ %amnameLen.1, %if.then981 ], [ %amnameLen.1, %if.end978 ]
  %lakonLen.2 = phi i32 [ %mul644, %if.then900 ], [ %mul644, %if.end897 ], [ %lakonLen.1, %if.then981 ], [ %lakonLen.1, %if.end978 ]
  %kon.2 = phi i32* [ %371, %if.then900 ], [ %371, %if.end897 ], [ %kon.1, %if.then981 ], [ %kon.1, %if.end978 ]
  %572 = bitcast double* %co.1 to i8*
  %573 = load i32* %nk, align 4, !tbaa !3
  %mul987 = mul nsw i32 %573, 3
  %conv988 = sext i32 %mul987 to i64
  %mul989 = shl nsw i64 %conv988, 3
  %call990 = call i8* @realloc(i8* %572, i64 %mul989) #4
  %574 = bitcast i8* %call990 to double*
  %575 = bitcast i32* %nodeboun.1 to i8*
  %576 = load i32* %nboun, align 4, !tbaa !3
  %conv991 = sext i32 %576 to i64
  %mul992 = shl nsw i64 %conv991, 2
  %call993 = call i8* @realloc(i8* %575, i64 %mul992) #4
  %577 = bitcast i8* %call993 to i32*
  %578 = bitcast i32* %ndirboun.1 to i8*
  %579 = load i32* %nboun, align 4, !tbaa !3
  %conv994 = sext i32 %579 to i64
  %mul995 = shl nsw i64 %conv994, 2
  %call996 = call i8* @realloc(i8* %578, i64 %mul995) #4
  %580 = bitcast i8* %call996 to i32*
  %581 = bitcast double* %xboun.1 to i8*
  %582 = load i32* %nboun, align 4, !tbaa !3
  %conv997 = sext i32 %582 to i64
  %mul998 = shl nsw i64 %conv997, 3
  %call999 = call i8* @realloc(i8* %581, i64 %mul998) #4
  %583 = bitcast i8* %call999 to double*
  %584 = bitcast i32* %ikboun.1 to i8*
  %585 = load i32* %nboun, align 4, !tbaa !3
  %conv1000 = sext i32 %585 to i64
  %mul1001 = shl nsw i64 %conv1000, 2
  %call1002 = call i8* @realloc(i8* %584, i64 %mul1001) #4
  %586 = bitcast i8* %call1002 to i32*
  %587 = bitcast i32* %ilboun.1 to i8*
  %588 = load i32* %nboun, align 4, !tbaa !3
  %conv1003 = sext i32 %588 to i64
  %mul1004 = shl nsw i64 %conv1003, 2
  %call1005 = call i8* @realloc(i8* %587, i64 %mul1004) #4
  %589 = bitcast i8* %call1005 to i32*
  %590 = bitcast i32* %nodeforc.1 to i8*
  %591 = load i32* %nforc, align 4, !tbaa !3
  %conv1006 = sext i32 %591 to i64
  %mul1007 = shl nsw i64 %conv1006, 2
  %call1008 = call i8* @realloc(i8* %590, i64 %mul1007) #4
  %592 = bitcast i8* %call1008 to i32*
  %593 = bitcast i32* %ndirforc.1 to i8*
  %594 = load i32* %nforc, align 4, !tbaa !3
  %conv1009 = sext i32 %594 to i64
  %mul1010 = shl nsw i64 %conv1009, 2
  %call1011 = call i8* @realloc(i8* %593, i64 %mul1010) #4
  %595 = bitcast i8* %call1011 to i32*
  %596 = bitcast double* %xforc.1 to i8*
  %597 = load i32* %nforc, align 4, !tbaa !3
  %conv1012 = sext i32 %597 to i64
  %mul1013 = shl nsw i64 %conv1012, 3
  %call1014 = call i8* @realloc(i8* %596, i64 %mul1013) #4
  %598 = bitcast i8* %call1014 to double*
  %599 = bitcast i32* %ikforc.1 to i8*
  %600 = load i32* %nforc, align 4, !tbaa !3
  %conv1015 = sext i32 %600 to i64
  %mul1016 = shl nsw i64 %conv1015, 2
  %call1017 = call i8* @realloc(i8* %599, i64 %mul1016) #4
  %601 = bitcast i8* %call1017 to i32*
  %602 = bitcast i32* %ilforc.1 to i8*
  %603 = load i32* %nforc, align 4, !tbaa !3
  %conv1018 = sext i32 %603 to i64
  %mul1019 = shl nsw i64 %conv1018, 2
  %call1020 = call i8* @realloc(i8* %602, i64 %mul1019) #4
  %604 = bitcast i8* %call1020 to i32*
  %605 = bitcast i32* %nelemload.1 to i8*
  %606 = load i32* %nload, align 4, !tbaa !3
  %mul1021 = shl nsw i32 %606, 1
  %conv1022 = sext i32 %mul1021 to i64
  %mul1023 = shl nsw i64 %conv1022, 2
  %call1024 = call i8* @realloc(i8* %605, i64 %mul1023) #4
  %607 = bitcast i8* %call1024 to i32*
  %608 = load i32* %nload_, align 4, !tbaa !3
  %mul1025 = mul nsw i32 %608, 5
  %609 = load i32* %nload, align 4, !tbaa !3
  %mul1026 = mul nsw i32 %609, 5
  %conv1027 = sext i32 %mul1026 to i64
  %call1029 = call i8* @realloc(i8* %sideload.1, i64 %conv1027) #4
  %610 = bitcast double* %xload.1 to i8*
  %611 = load i32* %nload, align 4, !tbaa !3
  %mul1030 = shl nsw i32 %611, 1
  %conv1031 = sext i32 %mul1030 to i64
  %mul1032 = shl nsw i64 %conv1031, 3
  %call1033 = call i8* @realloc(i8* %610, i64 %mul1032) #4
  %612 = bitcast i8* %call1033 to double*
  %613 = bitcast i32* %nodeprint.1 to i8*
  %614 = load i32* %noprint, align 4, !tbaa !3
  %conv1034 = sext i32 %614 to i64
  %mul1035 = shl nsw i64 %conv1034, 2
  %call1036 = call i8* @realloc(i8* %613, i64 %mul1035) #4
  %615 = bitcast i8* %call1036 to i32*
  %616 = bitcast i32* %nelemprint.1 to i8*
  %617 = load i32* %neprint, align 4, !tbaa !3
  %conv1037 = sext i32 %617 to i64
  %mul1038 = shl nsw i64 %conv1037, 2
  %call1039 = call i8* @realloc(i8* %616, i64 %mul1038) #4
  %618 = bitcast i8* %call1039 to i32*
  %619 = bitcast i32* %ipompc.1 to i8*
  %620 = load i32* %nmpc, align 4, !tbaa !3
  %conv1040 = sext i32 %620 to i64
  %mul1041 = shl nsw i64 %conv1040, 2
  %call1042 = call i8* @realloc(i8* %619, i64 %mul1041) #4
  %621 = bitcast i8* %call1042 to i32*
  %622 = load i32* %nmethod, align 4, !tbaa !3
  switch i32 %622, label %if.else1056 [
    i32 4, label %if.then1051
    i32 1, label %land.lhs.true1048
  ]

land.lhs.true1048:                                ; preds = %if.end986
  %623 = load i32* %iperturb, align 4, !tbaa !3
  %cmp1049 = icmp sgt i32 %623, 1
  br i1 %cmp1049, label %if.then1051, label %if.else1056

if.then1051:                                      ; preds = %if.end986, %land.lhs.true1048
  %624 = bitcast double* %veold.2 to i8*
  %625 = load i32* %nk, align 4, !tbaa !3
  %mul1052 = shl nsw i32 %625, 2
  %conv1053 = sext i32 %mul1052 to i64
  %mul1054 = shl nsw i64 %conv1053, 3
  %call1055 = call i8* @realloc(i8* %624, i64 %mul1054) #4
  %626 = bitcast i8* %call1055 to double*
  br label %if.end1057

if.else1056:                                      ; preds = %if.end986, %land.lhs.true1048
  %627 = bitcast double* %veold.2 to i8*
  call void @free(i8* %627) #4
  br label %if.end1057

if.end1057:                                       ; preds = %if.else1056, %if.then1051
  %veold.3 = phi double* [ %626, %if.then1051 ], [ %veold.2, %if.else1056 ]
  %628 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1058 = icmp eq i32 %628, 4
  br i1 %cmp1058, label %if.then1060, label %if.end1064

if.then1060:                                      ; preds = %if.end1057
  %629 = load i32* %nk, align 4, !tbaa !3
  %mul1061 = shl nsw i32 %629, 2
  %conv1062 = sext i32 %mul1061 to i64
  %call1063 = call i8* @u_calloc(i64 %conv1062, i64 8) #4
  %630 = bitcast i8* %call1063 to double*
  br label %if.end1064

if.end1064:                                       ; preds = %if.then1060, %if.end1057
  %accold.1 = phi double* [ %630, %if.then1060 ], [ %accold.02104, %if.end1057 ]
  %631 = load i32* %nam, align 4, !tbaa !3
  %cmp1065 = icmp sgt i32 %631, 0
  br i1 %cmp1065, label %if.then1067, label %if.end1078

if.then1067:                                      ; preds = %if.end1064
  %632 = bitcast i32* %iamforc.2 to i8*
  %633 = load i32* %nforc, align 4, !tbaa !3
  %conv1068 = sext i32 %633 to i64
  %mul1069 = shl nsw i64 %conv1068, 2
  %call1070 = call i8* @realloc(i8* %632, i64 %mul1069) #4
  %634 = bitcast i8* %call1070 to i32*
  %635 = bitcast i32* %iamload.2 to i8*
  %636 = load i32* %nload, align 4, !tbaa !3
  %mul1071 = shl nsw i32 %636, 1
  %conv1072 = sext i32 %mul1071 to i64
  %mul1073 = shl nsw i64 %conv1072, 2
  %call1074 = call i8* @realloc(i8* %635, i64 %mul1073) #4
  %637 = bitcast i8* %call1074 to i32*
  %638 = bitcast i32* %iamboun.2 to i8*
  %639 = load i32* %nboun, align 4, !tbaa !3
  %conv1075 = sext i32 %639 to i64
  %mul1076 = shl nsw i64 %conv1075, 2
  %call1077 = call i8* @realloc(i8* %638, i64 %mul1076) #4
  %640 = bitcast i8* %call1077 to i32*
  br label %if.end1078

if.end1078:                                       ; preds = %if.then1067, %if.end1064
  %iamforc.3 = phi i32* [ %634, %if.then1067 ], [ %iamforc.2, %if.end1064 ]
  %iamload.3 = phi i32* [ %637, %if.then1067 ], [ %iamload.2, %if.end1064 ]
  %iamboun.3 = phi i32* [ %640, %if.then1067 ], [ %iamboun.2, %if.end1064 ]
  %641 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1079 = icmp eq i32 %641, 1
  br i1 %cmp1079, label %if.then1081, label %if.end1102

if.then1081:                                      ; preds = %if.end1078
  %642 = load i32* %ne1d, align 4, !tbaa !3
  %cmp1082 = icmp eq i32 %642, 0
  br i1 %cmp1082, label %land.lhs.true1084, label %if.end1094

land.lhs.true1084:                                ; preds = %if.then1081
  %643 = load i32* %ne2d, align 4, !tbaa !3
  %cmp1085 = icmp eq i32 %643, 0
  br i1 %cmp1085, label %if.then1087, label %if.end1094

if.then1087:                                      ; preds = %land.lhs.true1084
  %644 = bitcast double* %t0.3 to i8*
  %645 = load i32* %nk, align 4, !tbaa !3
  %conv1088 = sext i32 %645 to i64
  %mul1089 = shl nsw i64 %conv1088, 3
  %call1090 = call i8* @realloc(i8* %644, i64 %mul1089) #4
  %646 = bitcast i8* %call1090 to double*
  %647 = bitcast double* %t1.3 to i8*
  %648 = load i32* %nk, align 4, !tbaa !3
  %conv1091 = sext i32 %648 to i64
  %mul1092 = shl nsw i64 %conv1091, 3
  %call1093 = call i8* @realloc(i8* %647, i64 %mul1092) #4
  %649 = bitcast i8* %call1093 to double*
  br label %if.end1094

if.end1094:                                       ; preds = %land.lhs.true1084, %if.then1081, %if.then1087
  %t0.4 = phi double* [ %646, %if.then1087 ], [ %t0.3, %if.then1081 ], [ %t0.3, %land.lhs.true1084 ]
  %t1.4 = phi double* [ %649, %if.then1087 ], [ %t1.3, %if.then1081 ], [ %t1.3, %land.lhs.true1084 ]
  %650 = load i32* %nam, align 4, !tbaa !3
  %cmp1095 = icmp sgt i32 %650, 0
  br i1 %cmp1095, label %if.then1097, label %if.end1102

if.then1097:                                      ; preds = %if.end1094
  %651 = bitcast i32* %iamt1.1 to i8*
  %652 = load i32* %nk, align 4, !tbaa !3
  %conv1098 = sext i32 %652 to i64
  %mul1099 = shl nsw i64 %conv1098, 2
  %call1100 = call i8* @realloc(i8* %651, i64 %mul1099) #4
  %653 = bitcast i8* %call1100 to i32*
  br label %if.end1102

if.end1102:                                       ; preds = %if.end1094, %if.then1097, %if.end1078
  %iamt1.2 = phi i32* [ %653, %if.then1097 ], [ %iamt1.1, %if.end1094 ], [ %iamt1.1, %if.end1078 ]
  %t0.5 = phi double* [ %t0.4, %if.then1097 ], [ %t0.4, %if.end1094 ], [ %t0.3, %if.end1078 ]
  %t1.5 = phi double* [ %t1.4, %if.then1097 ], [ %t1.4, %if.end1094 ], [ %t1.3, %if.end1078 ]
  %654 = load i32* %ntrans, align 4, !tbaa !3
  %cmp1103 = icmp sgt i32 %654, 0
  br i1 %cmp1103, label %if.then1105, label %if.end1110

if.then1105:                                      ; preds = %if.end1102
  %655 = bitcast i32* %inotr.2 to i8*
  %656 = load i32* %nk, align 4, !tbaa !3
  %mul1106 = shl nsw i32 %656, 1
  %conv1107 = sext i32 %mul1106 to i64
  %mul1108 = shl nsw i64 %conv1107, 2
  %call1109 = call i8* @realloc(i8* %655, i64 %mul1108) #4
  %657 = bitcast i8* %call1109 to i32*
  br label %if.end1110

if.end1110:                                       ; preds = %if.then1105, %if.end1102
  %inotr.3 = phi i32* [ %657, %if.then1105 ], [ %inotr.2, %if.end1102 ]
  %658 = load i32* %istep, align 4, !tbaa !3
  %cmp1111 = icmp eq i32 %658, 1
  br i1 %cmp1111, label %if.then1116, label %lor.lhs.false1113

lor.lhs.false1113:                                ; preds = %if.end1110
  %659 = load i32* %ntrans, align 4, !tbaa !3
  %cmp1114 = icmp sgt i32 %659, 0
  br i1 %cmp1114, label %if.then1116, label %if.end1175

if.then1116:                                      ; preds = %lor.lhs.false1113, %if.end1110
  %puts1967 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str25, i64 0, i64 0))
  store i32 1, i32* %callfrommain, align 4, !tbaa !3
  call void @cascade(i32* %621, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %577, i32* %580, i32* %nboun, i32* %ikmpc.1, i32* %ilmpc.1, i32* %586, i32* %589, i32* %mpcend, i32* %mpcmult, i8* %labmpc.1, i32 %labmpcLen.0, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %callfrommain) #4
  %660 = load i32* %nmpc, align 4, !tbaa !3
  %mul1118 = mul nsw i32 %660, 20
  %conv1120 = sext i32 %mul1118 to i64
  %call1122 = call i8* @realloc(i8* %labmpc.1, i64 %conv1120) #4
  %661 = bitcast i32* %ikmpc.1 to i8*
  %662 = load i32* %nmpc, align 4, !tbaa !3
  %conv1123 = sext i32 %662 to i64
  %mul1124 = shl nsw i64 %conv1123, 2
  %call1125 = call i8* @realloc(i8* %661, i64 %mul1124) #4
  %663 = bitcast i8* %call1125 to i32*
  %664 = bitcast i32* %ilmpc.1 to i8*
  %665 = load i32* %nmpc, align 4, !tbaa !3
  %conv1126 = sext i32 %665 to i64
  %mul1127 = shl nsw i64 %conv1126, 2
  %call1128 = call i8* @realloc(i8* %664, i64 %mul1127) #4
  %666 = bitcast i8* %call1128 to i32*
  %667 = load i32* %istep, align 4, !tbaa !3
  %cmp1129 = icmp eq i32 %667, 1
  br i1 %cmp1129, label %if.then1131, label %if.else1134

if.then1131:                                      ; preds = %if.then1116
  %668 = load i32* %nk, align 4, !tbaa !3
  %conv1132 = sext i32 %668 to i64
  %call1133 = call i8* @u_calloc(i64 %conv1132, i64 4) #4
  br label %if.end1138

if.else1134:                                      ; preds = %if.then1116
  %669 = bitcast i32* %nnn.02082 to i8*
  %670 = load i32* %nk, align 4, !tbaa !3
  %conv1135 = sext i32 %670 to i64
  %mul1136 = shl nsw i64 %conv1135, 2
  %call1137 = call i8* @realloc(i8* %669, i64 %mul1136) #4
  br label %if.end1138

if.end1138:                                       ; preds = %if.else1134, %if.then1131
  %nnn.1.in = phi i8* [ %call1133, %if.then1131 ], [ %call1137, %if.else1134 ]
  %nnn.1 = bitcast i8* %nnn.1.in to i32*
  %671 = load i32* %nk, align 4, !tbaa !3
  %cmp11402014 = icmp slt i32 %671, 1
  br i1 %cmp11402014, label %for.end1148, label %for.body1142

for.body1142:                                     ; preds = %if.end1138, %for.body1142
  %indvars.iv2283 = phi i64 [ %indvars.iv.next2284, %for.body1142 ], [ 1, %if.end1138 ]
  %672 = add nsw i64 %indvars.iv2283, -1
  %arrayidx1145 = getelementptr inbounds i32* %nnn.1, i64 %672
  %673 = trunc i64 %indvars.iv2283 to i32
  store i32 %673, i32* %arrayidx1145, align 4, !tbaa !3
  %indvars.iv.next2284 = add i64 %indvars.iv2283, 1
  %674 = load i32* %nk, align 4, !tbaa !3
  %cmp1140 = icmp slt i32 %673, %674
  br i1 %cmp1140, label %for.body1142, label %for.end1148

for.end1148:                                      ; preds = %for.body1142, %if.end1138
  %675 = load i32* %icascade, align 4, !tbaa !3
  %cmp1149 = icmp eq i32 %675, 0
  br i1 %cmp1149, label %if.then1151, label %if.end1180

if.then1151:                                      ; preds = %for.end1148
  %puts1968 = call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str26, i64 0, i64 0))
  %676 = load i32* %ne, align 4, !tbaa !3
  %mul1153 = mul nsw i32 %676, 20
  %677 = load i32* %mpcend, align 4, !tbaa !3
  %add1154 = add nsw i32 %mul1153, %677
  %conv1155 = sext i32 %add1154 to i64
  %call1156 = call i8* @u_calloc(i64 %conv1155, i64 4) #4
  %678 = bitcast i8* %call1156 to i32*
  %679 = load i32* %ne, align 4, !tbaa !3
  %mul1157 = mul nsw i32 %679, 380
  %680 = load i32* %mpcmult, align 4, !tbaa !3
  %add1158 = add nsw i32 %mul1157, %680
  %conv1159 = sext i32 %add1158 to i64
  %call1160 = call i8* @u_calloc(i64 %conv1159, i64 4) #4
  %681 = bitcast i8* %call1160 to i32*
  %682 = load i32* %nk, align 4, !tbaa !3
  %add1161 = add nsw i32 %682, 1
  %conv1162 = sext i32 %add1161 to i64
  %call1163 = call i8* @u_calloc(i64 %conv1162, i64 4) #4
  %683 = bitcast i8* %call1163 to i32*
  %684 = load i32* %nk, align 4, !tbaa !3
  %mul1164 = mul nsw i32 %684, 3
  %add1165 = add nsw i32 %mul1164, 1
  %conv1166 = sext i32 %add1165 to i64
  %call1167 = call i8* @u_calloc(i64 %conv1166, i64 4) #4
  %685 = bitcast i8* %call1167 to i32*
  %686 = load i32* %nk, align 4, !tbaa !3
  %conv1168 = sext i32 %686 to i64
  %call1169 = call i8* @u_calloc(i64 %conv1168, i64 4) #4
  %687 = bitcast i8* %call1169 to i32*
  %688 = load i32* %ne, align 4, !tbaa !3
  %689 = load i32* %nmpc, align 4, !tbaa !3
  %add1170 = add i32 %688, 1
  %add1171 = add i32 %add1170, %689
  %conv1172 = sext i32 %add1171 to i64
  %call1173 = call i8* @u_calloc(i64 %conv1172, i64 4) #4
  %690 = bitcast i8* %call1173 to i32*
  %691 = load i32** %nodempc, align 8, !tbaa !0
  call void @renumber_(i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32* %ne, i32* %621, i32* %691, i32* %nmpc, i32* %nnn.1, i32* %678, i32* %681, i32* %683, i32* %685, i32* %687, i32* %690) #4
  call void @free(i8* %call1156) #4
  call void @free(i8* %call1160) #4
  call void @free(i8* %call1163) #4
  call void @free(i8* %call1167) #4
  call void @free(i8* %call1169) #4
  call void @free(i8* %call1173) #4
  br label %if.end1175

if.end1175:                                       ; preds = %if.then1151, %lor.lhs.false1113
  %ikmpc.2.ph = phi i32* [ %663, %if.then1151 ], [ %ikmpc.1, %lor.lhs.false1113 ]
  %ilmpc.2.ph = phi i32* [ %666, %if.then1151 ], [ %ilmpc.1, %lor.lhs.false1113 ]
  %nnn.2.ph = phi i32* [ %nnn.1, %if.then1151 ], [ %nnn.02082, %lor.lhs.false1113 ]
  %labmpc.2.ph = phi i8* [ %call1122, %if.then1151 ], [ %labmpc.1, %lor.lhs.false1113 ]
  %labmpcLen.1.ph = phi i32 [ %mul1118, %if.then1151 ], [ %labmpcLen.0, %lor.lhs.false1113 ]
  %.pr1976 = load i32* %icascade, align 4, !tbaa !3
  %cmp1176 = icmp eq i32 %.pr1976, 0
  br i1 %cmp1176, label %if.then1178, label %if.end1180

if.then1178:                                      ; preds = %if.end1175
  %puts1966 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str24, i64 0, i64 0))
  br label %if.end1180

if.end1180:                                       ; preds = %if.end1175, %for.end1148, %if.then1178
  %labmpcLen.11985 = phi i32 [ %labmpcLen.1.ph, %if.then1178 ], [ %mul1118, %for.end1148 ], [ %labmpcLen.1.ph, %if.end1175 ]
  %labmpc.21983 = phi i8* [ %labmpc.2.ph, %if.then1178 ], [ %call1122, %for.end1148 ], [ %labmpc.2.ph, %if.end1175 ]
  %nnn.21982 = phi i32* [ %nnn.2.ph, %if.then1178 ], [ %nnn.1, %for.end1148 ], [ %nnn.2.ph, %if.end1175 ]
  %ilmpc.21980 = phi i32* [ %ilmpc.2.ph, %if.then1178 ], [ %666, %for.end1148 ], [ %ilmpc.2.ph, %if.end1175 ]
  %ikmpc.21978 = phi i32* [ %ikmpc.2.ph, %if.then1178 ], [ %663, %for.end1148 ], [ %ikmpc.2.ph, %if.end1175 ]
  %692 = load i32* %nk, align 4, !tbaa !3
  %mul1181 = shl nsw i32 %692, 2
  %conv1182 = sext i32 %mul1181 to i64
  %call1183 = call i8* @u_calloc(i64 %conv1182, i64 4) #4
  %693 = bitcast i8* %call1183 to i32*
  %694 = load i32* %isolver, align 4, !tbaa !3
  %cmp1184 = icmp eq i32 %694, 1
  br i1 %cmp1184, label %if.end1191, label %if.then1186

if.then1186:                                      ; preds = %if.end1180
  %695 = load i32* %nzs, align 4, !tbaa !3
  %conv1187 = sext i32 %695 to i64
  %call1188 = call i8* @u_calloc(i64 %conv1187, i64 4) #4
  %696 = bitcast i8* %call1188 to i32*
  store i32* %696, i32** %mast1, align 8, !tbaa !0
  %697 = load i32* %nzs, align 4, !tbaa !3
  %conv1189 = sext i32 %697 to i64
  %call1190 = call i8* @u_calloc(i64 %conv1189, i64 4) #4
  %698 = bitcast i8* %call1190 to i32*
  store i32* %698, i32** %irow, align 8, !tbaa !0
  br label %if.end1191

if.end1191:                                       ; preds = %if.end1180, %if.then1186
  %699 = load i32* %arrayidx1192, align 4, !tbaa !3
  %cmp1193 = icmp eq i32 %699, -1
  %700 = load i32* %nk, align 4, !tbaa !3
  br i1 %cmp1193, label %if.then1195, label %if.else1214

if.then1195:                                      ; preds = %if.end1191
  %mul1196 = shl nsw i32 %700, 2
  %conv1197 = sext i32 %mul1196 to i64
  %call1198 = call i8* @u_calloc(i64 %conv1197, i64 4) #4
  %701 = bitcast i8* %call1198 to i32*
  store i32* %701, i32** %icol, align 8, !tbaa !0
  %702 = load i32* %nk, align 4, !tbaa !3
  %mul1199 = shl nsw i32 %702, 2
  %add12001965 = or i32 %mul1199, 1
  %conv1201 = sext i32 %add12001965 to i64
  %call1202 = call i8* @u_calloc(i64 %conv1201, i64 4) #4
  %703 = bitcast i8* %call1202 to i32*
  %704 = load i32* %nk, align 4, !tbaa !3
  %mul1203 = shl nsw i32 %704, 2
  %conv1204 = sext i32 %mul1203 to i64
  %call1205 = call i8* @u_calloc(i64 %conv1204, i64 4) #4
  %705 = bitcast i8* %call1205 to i32*
  %706 = load i32* %nk, align 4, !tbaa !3
  %mul1206 = shl nsw i32 %706, 2
  %conv1207 = sext i32 %mul1206 to i64
  %call1208 = call i8* @u_calloc(i64 %conv1207, i64 4) #4
  %707 = bitcast i8* %call1208 to i32*
  %708 = load i32* %icascade, align 4, !tbaa !3
  %cmp1209 = icmp eq i32 %708, 0
  br i1 %cmp1209, label %if.then1211, label %if.else1212

if.then1211:                                      ; preds = %if.then1195
  %709 = load i32** %nodempc, align 8, !tbaa !0
  %710 = load i32** %icol, align 8, !tbaa !0
  call void @mastruct(i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32* %ne, i32* %577, i32* %580, i32* %nboun, i32* %621, i32* %709, i32* %nmpc, i32* %693, i32* %710, i32* %703, i32** %mast1, i32** %irow, i32* %isolver, i32* %neq, i32* %nnn.21982, i32* %ikmpc.21978, i32* %ilmpc.21980, i32* %705, i32* %707, i32* %nsky, i32* %nzs, i32* %nmethod, i32* %ithermal) #4
  br label %if.end1229

if.else1212:                                      ; preds = %if.then1195
  store i32 1, i32* %neq, align 4, !tbaa !3
  br label %if.end1229

if.else1214:                                      ; preds = %if.end1191
  %mul1215 = shl nsw i32 %700, 3
  %conv1216 = sext i32 %mul1215 to i64
  %call1217 = call i8* @u_calloc(i64 %conv1216, i64 4) #4
  %711 = bitcast i8* %call1217 to i32*
  store i32* %711, i32** %icol, align 8, !tbaa !0
  %712 = load i32* %nk, align 4, !tbaa !3
  %mul1218 = shl nsw i32 %712, 3
  %add12191964 = or i32 %mul1218, 1
  %conv1220 = sext i32 %add12191964 to i64
  %call1221 = call i8* @u_calloc(i64 %conv1220, i64 4) #4
  %713 = bitcast i8* %call1221 to i32*
  %714 = load i32* %nk, align 4, !tbaa !3
  %mul1222 = shl nsw i32 %714, 3
  %conv1223 = sext i32 %mul1222 to i64
  %call1224 = call i8* @u_calloc(i64 %conv1223, i64 4) #4
  %715 = bitcast i8* %call1224 to i32*
  %716 = load i32* %nk, align 4, !tbaa !3
  %mul1225 = shl nsw i32 %716, 3
  %conv1226 = sext i32 %mul1225 to i64
  %call1227 = call i8* @u_calloc(i64 %conv1226, i64 4) #4
  %717 = bitcast i8* %call1227 to i32*
  %718 = load i32** %nodempc, align 8, !tbaa !0
  %719 = load i32** %icol, align 8, !tbaa !0
  call void @mastructcs(i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32 %lakonLen.2, i32* %ne, i32* %577, i32* %580, i32* %nboun, i32* %621, i32* %718, i32* %nmpc, i32* %693, i32* %719, i32* %713, i32** %mast1, i32** %irow, i32* %isolver, i32* %neq, i32* %nnn.21982, i32* %ikmpc.21978, i32* %ilmpc.21980, i32* %715, i32* %717, i32* %nsky, i32* %nzs, i32* %nmethod, i32* %ics.2, i32* %arrayidx55, i8* %labmpc.21983, i32 %labmpcLen.11985) #4
  br label %if.end1229

if.end1229:                                       ; preds = %if.then1211, %if.else1212, %if.else1214
  %jq.0 = phi i32* [ %703, %if.then1211 ], [ %703, %if.else1212 ], [ %713, %if.else1214 ]
  %ikcol.0 = phi i32* [ %705, %if.then1211 ], [ %705, %if.else1212 ], [ %715, %if.else1214 ]
  %ipointer.0 = phi i32* [ %707, %if.then1211 ], [ %707, %if.else1212 ], [ %717, %if.else1214 ]
  %720 = bitcast i32* %ikcol.0 to i8*
  call void @free(i8* %720) #4
  %721 = bitcast i32* %ipointer.0 to i8*
  call void @free(i8* %721) #4
  %722 = load i32* %isolver, align 4, !tbaa !3
  %cmp1230 = icmp eq i32 %722, 1
  br i1 %cmp1230, label %if.end1236, label %if.then1232

if.then1232:                                      ; preds = %if.end1229
  %723 = load i32** %mast1, align 8, !tbaa !0
  %724 = bitcast i32* %723 to i8*
  call void @free(i8* %724) #4
  %725 = load i32** %irow, align 8, !tbaa !0
  %726 = bitcast i32* %725 to i8*
  %727 = load i32* %nzs, align 4, !tbaa !3
  %conv1233 = sext i32 %727 to i64
  %mul1234 = shl nsw i64 %conv1233, 2
  %call1235 = call i8* @realloc(i8* %726, i64 %mul1234) #4
  %728 = bitcast i8* %call1235 to i32*
  store i32* %728, i32** %irow, align 8, !tbaa !0
  br label %if.end1236

if.end1236:                                       ; preds = %if.end1229, %if.then1232
  %729 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1237 = icmp slt i32 %729, 2
  br i1 %cmp1237, label %if.then1242, label %lor.lhs.false1239

lor.lhs.false1239:                                ; preds = %if.end1236
  %730 = load i32* %iperturb, align 4, !tbaa !3
  %cmp1240 = icmp sgt i32 %730, 1
  br i1 %cmp1240, label %if.then1242, label %if.end1300

if.then1242:                                      ; preds = %lor.lhs.false1239, %if.end1236
  %731 = load i32* %isolver, align 4, !tbaa !3
  %cmp1243 = icmp eq i32 %731, 1
  br i1 %cmp1243, label %if.then1245, label %if.else1253

if.then1245:                                      ; preds = %if.then1242
  %732 = load i32** %nodempc, align 8, !tbaa !0
  %733 = load double** %coefmpc, align 8, !tbaa !0
  %734 = load i32** %icol, align 8, !tbaa !0
  call void @profile(double* %574, i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32 %lakonLen.2, i32* %ne, i32* %577, i32* %580, double* %583, i32* %nboun, i32* %621, i32* %732, double* %733, i8* %labmpc.21983, i32 %labmpcLen.11985, i32* %nmpc, i32* %592, i32* %595, double* %598, i32* %nforc, i32* %607, i8* %call1029, i32 %mul1025, double* %612, i32* %nload, double* %arraydecay518, double* %arraydecay519, double* %om, double* %arraydecay520, double* null, double* null, double* null, i32* %693, i32* %734, i32* %jq.0, i32* %neq, i32* %nmethod, i32* %ikmpc.21978, i32* %ilmpc.21980, i32* %586, i32* %589, double* %elcon.2, i32* %nelcon.2, double* %rhcon.2, i32* %nrhcon.2, double* %alcon.2, i32* %nalcon.2, double* %alzero.2, i32* %ielmat.2, i32* %ielorien.3, i32* %norien, double* %orab.3, i32* %ntmat_, double* %t0.5, double* %t1.5, double* %t1old.2, i32* %ithermal, double* %prestr.3, i32* %iprestr, double* %vold.1, i32* %iperturb, double* %sti.1, i32* %615, i32* %noprint, i32* %618, i32* %neprint, i32* %kode, i32* %nsky, i8* %noelplab.1, i32 %noelplabLen.1, i8* %nodeflab.1, i32 %nodeflabLen.1, double* %eei.1, i32* %iexpl, double* %plicon.3, i32* %nplicon.3, double* %plkcon.3, i32* %nplkcon.3, double* %xstate.2, i32* %npmat_, i8* %matname.2, i32 %matnameLen.2, i32* %mint_, i32* %ncmat_, i32* %nstate_, i32* %arrayidx55, double* %arraydecay522, i32* %nkon, double* %ener.2, double* %xbounold.2, double* %xforcold.1, double* %xloadold.1, double* %omold, double* %arraydecay1251, i8* %amname.3, i32 %amnameLen.3, double* %amta.3, i32* %namta.3, i32* %nam, i32* %iamforc.3, i32* %iamload.3, i32* %iamom, i32* %iambodyf, i32* %iamt1.2, i32* %iamboun.3, double* %ttime, i8* %3, i32 3) #4
  br label %if.end1300

if.else1253:                                      ; preds = %if.then1242
  %735 = load i32* %iperturb, align 4, !tbaa !3
  %cmp1254 = icmp slt i32 %735, 2
  br i1 %cmp1254, label %if.then1256, label %if.else1264

if.then1256:                                      ; preds = %if.else1253
  %736 = load i32** %nodempc, align 8, !tbaa !0
  %737 = load double** %coefmpc, align 8, !tbaa !0
  call void @prespooles(double* %574, i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32 %lakonLen.2, i32* %ne, i32* %577, i32* %580, double* %583, i32* %nboun, i32* %621, i32* %736, double* %737, i8* %labmpc.21983, i32 %labmpcLen.11985, i32* %nmpc, i32* %592, i32* %595, double* %598, i32* %nforc, i32* %607, i8* %call1029, i32 %mul1025, double* %612, i32* %nload, double* %arraydecay518, double* %arraydecay519, double* %om, double* %arraydecay520, double* null, double* null, double* null, i32* %693, i32** %icol, i32* %jq.0, i32** %irow, i32* %neq, i32* %nzl, i32* %nmethod, i32* %ikmpc.21978, i32* %ilmpc.21980, i32* %586, i32* %589, double* %elcon.2, i32* %nelcon.2, double* %rhcon.2, i32* %nrhcon.2, double* %alcon.2, i32* %nalcon.2, double* %alzero.2, i32* %ielmat.2, i32* %ielorien.3, i32* %norien, double* %orab.3, i32* %ntmat_, double* %t0.5, double* %t1.5, double* %t1old.2, i32* %ithermal, double* %prestr.3, i32* %iprestr, double* %vold.1, i32* %iperturb, double* %sti.1, i32* %nzs, i32* %615, i32* %noprint, i32* %618, i32* %neprint, i32* %kode, double* null, double* null, i8* %noelplab.1, i32 %noelplabLen.1, i8* %nodeflab.1, i32 %nodeflabLen.1, double* %eei.1, i32* %iexpl, double* %plicon.3, i32* %nplicon.3, double* %plkcon.3, i32* %nplkcon.3, double* %xstate.2, i32* %npmat_, i8* %matname.2, i32 %matnameLen.2, i32* %isolver, i32* %mint_, i32* %ncmat_, i32* %nstate_, i32* %arrayidx55, double* %arraydecay522, i32* %nkon, double* %ener.2, double* %xbounold.2, double* %xforcold.1, double* %xloadold.1, double* %omold, double* %arraydecay1251, i8* %amname.3, i32 %amnameLen.3, double* %amta.3, i32* %namta.3, i32* %nam, i32* %iamforc.3, i32* %iamload.3, i32* %iamom, i32* %iambodyf, i32* %iamt1.2, i32* %iamboun.3, double* %ttime, i8* %3, i32 3) #4
  br label %if.end1300

if.else1264:                                      ; preds = %if.else1253
  %738 = load i32* %memmpc_, align 4, !tbaa !3
  store i32 %738, i32* %arrayidx1265, align 16, !tbaa !3
  %739 = load i32* %mpcfree, align 4, !tbaa !3
  store i32 %739, i32* %arrayidx1266, align 4, !tbaa !3
  %740 = load i32* %icascade, align 4, !tbaa !3
  store i32 %740, i32* %arrayidx1267, align 8, !tbaa !3
  %741 = load i32* %maxlenmpc, align 4, !tbaa !3
  store i32 %741, i32* %arrayidx1268, align 4, !tbaa !3
  call void @nonlingeo(double* %574, i32* %nk, i32* %kon.2, i32* %ipkon.2, i8* %lakon.2, i32 %lakonLen.2, i32* %ne, i32* %577, i32* %580, double* %583, i32* %nboun, i32* %621, i32** %nodempc, double** %coefmpc, i8* %labmpc.21983, i32 %labmpcLen.11985, i32* %nmpc, i32* %592, i32* %595, double* %598, i32* %nforc, i32* %607, i8* %call1029, i32 %mul1025, double* %612, i32* %nload, double* %arraydecay518, double* %arraydecay519, double* %om, double* %arraydecay520, double* null, double* null, double* null, i32* %693, i32** %icol, i32* %jq.0, i32** %irow, i32* %neq, i32* %nzl, i32* %nmethod, i32* %ikmpc.21978, i32* %ilmpc.21980, i32* %586, i32* %589, double* %elcon.2, i32* %nelcon.2, double* %rhcon.2, i32* %nrhcon.2, double* %alcon.2, i32* %nalcon.2, double* %alzero.2, i32* %ielmat.2, i32* %ielorien.3, i32* %norien, double* %orab.3, i32* %ntmat_, double* %t0.5, double* %t1.5, double* %t1old.2, i32* %ithermal, double* %prestr.3, i32* %iprestr, double* %vold.1, i32* %iperturb, double* %sti.1, i32* %nzs, i32* %615, i32* %noprint, i32* %618, i32* %neprint, i32* %kode, double* null, double* null, i8* %noelplab.1, i32 %noelplabLen.1, i8* %nodeflab.1, i32 %nodeflabLen.1, i32* %idrct, i32* %jmax, i32* %jout, double* %tinc, double* %tper, double* %tmin, double* %tmax, double* %eei.1, double* %xbounold.2, double* %xforcold.1, double* %xloadold.1, double* %omold, double* %arraydecay1251, double* %veold.3, double* %accold.1, i8* %amname.3, i32 %amnameLen.3, double* %amta.3, i32* %namta.3, i32* %nam, i32* %iamforc.3, i32* %iamload.3, i32* %iamom, i32* %iambodyf, i32* %iamt1.2, double* %alpha, double* %haftol, i32* %iexpl, i32* %iamboun.3, double* %plicon.3, i32* %nplicon.3, double* %plkcon.3, i32* %nplkcon.3, double* %xstate.2, i32* %npmat_, i32* %istep, double* %ttime, i8* %matname.2, i32 %matnameLen.2, double* %qaold, i32* %mint_, i32* %isolver, i32* %ncmat_, i32* %nstate_, i32* %iumat, i32* %arrayidx55, double* %arraydecay522, i32* %nkon, double* %ener.2, i32* %arrayidx1265, i32* %nnn.21982, i8* %3, i32 3, i32* %nodeflow.1, i32* %iamflow.2, double* %xflow.1, double* %shcon.1, i32* %nshcon.1, double* %cocon.1, i32* %ncocon.1, double* %arraydecay524, double* %xflowold.3, i32* %nflow, double* %arraydecay525) #4
  %742 = bitcast [4 x i32]* %mpcinfo to i64*
  %743 = load i64* %742, align 16
  %744 = trunc i64 %743 to i32
  store i32 %744, i32* %memmpc_, align 4, !tbaa !3
  %745 = lshr i64 %743, 32
  %746 = trunc i64 %745 to i32
  store i32 %746, i32* %mpcfree, align 4, !tbaa !3
  %747 = bitcast i32* %arrayidx1267 to i64*
  %748 = load i64* %747, align 8
  %749 = trunc i64 %748 to i32
  store i32 %749, i32* %icascade, align 4, !tbaa !3
  %750 = lshr i64 %748, 32
  %751 = trunc i64 %750 to i32
  store i32 %751, i32* %maxlenmpc, align 4, !tbaa !3
  br label %if.end1300

if.end1300:                                       ; preds = %lor.lhs.false1239, %if.then1245, %if.else1264, %if.then1256
  call void @free(i8* %call1183) #4
  %752 = load i32** %icol, align 8, !tbaa !0
  %753 = bitcast i32* %752 to i8*
  call void @free(i8* %753) #4
  %754 = bitcast i32* %jq.0 to i8*
  call void @free(i8* %754) #4
  %755 = load i32* %isolver, align 4, !tbaa !3
  %cmp1301 = icmp eq i32 %755, 1
  br i1 %cmp1301, label %if.end1304, label %if.then1303

if.then1303:                                      ; preds = %if.end1300
  %756 = load i32** %irow, align 8, !tbaa !0
  %757 = bitcast i32* %756 to i8*
  call void @free(i8* %757) #4
  br label %if.end1304

if.end1304:                                       ; preds = %if.end1300, %if.then1303
  %758 = load i32* %iperturb, align 4, !tbaa !3
  %cmp1305 = icmp eq i32 %758, 1
  br i1 %cmp1305, label %land.lhs.true1307, label %if.else1335

land.lhs.true1307:                                ; preds = %if.end1304
  %759 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1308 = icmp eq i32 %759, 3
  br i1 %cmp1308, label %if.then1310, label %if.else1335

if.then1310:                                      ; preds = %land.lhs.true1307
  store i32 0, i32* %nforc, align 4, !tbaa !3
  store i32 0, i32* %nload, align 4, !tbaa !3
  store double 0.000000e+00, double* %om, align 8, !tbaa !4
  call void @llvm.memset.p0i8.i64(i8* %bodyf2290, i8 0, i64 24, i32 16, i1 false)
  %760 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1320 = icmp eq i32 %760, 1
  br i1 %cmp1320, label %for.cond1323.preheader, label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.cond1323.preheader, %for.body1326, %if.then1310
  %761 = load i32* %istat, align 4, !tbaa !3
  %cmp89 = icmp sgt i32 %761, -1
  br i1 %cmp89, label %while.body, label %while.end

for.cond1323.preheader:                           ; preds = %if.then1310
  %762 = load i32* %nk, align 4, !tbaa !3
  %cmp13242025 = icmp sgt i32 %762, 0
  br i1 %cmp13242025, label %for.body1326, label %while.cond.backedge

for.body1326:                                     ; preds = %for.cond1323.preheader, %for.body1326
  %indvars.iv2291 = phi i64 [ %indvars.iv.next2292, %for.body1326 ], [ 0, %for.cond1323.preheader ]
  %arrayidx1328 = getelementptr inbounds double* %t0.5, i64 %indvars.iv2291
  %763 = load double* %arrayidx1328, align 8, !tbaa !4
  %arrayidx1330 = getelementptr inbounds double* %t1.5, i64 %indvars.iv2291
  store double %763, double* %arrayidx1330, align 8, !tbaa !4
  %indvars.iv.next2292 = add i64 %indvars.iv2291, 1
  %764 = trunc i64 %indvars.iv.next2292 to i32
  %cmp1324 = icmp slt i32 %764, %762
  br i1 %cmp1324, label %for.body1326, label %while.cond.backedge

if.else1335:                                      ; preds = %land.lhs.true1307, %if.end1304
  %765 = load i32* %nboun, align 4, !tbaa !3
  store i32 %765, i32* %nbounold, align 4, !tbaa !3
  %766 = load i32* %nforc, align 4, !tbaa !3
  %767 = load i32* %nload, align 4, !tbaa !3
  %768 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1336 = icmp sgt i32 %768, 1
  %769 = load i32* %nflow, align 4, !tbaa !3
  %.nflowold.0 = select i1 %cmp1336, i32 %769, i32 %nflowold.0.ph2238
  %770 = load i32* %nam, align 4, !tbaa !3
  %cmp1340 = icmp sgt i32 %770, 0
  br i1 %cmp1340, label %for.cond1343.preheader, label %while.cond.outer.backedge

for.cond1343.preheader:                           ; preds = %if.else1335
  %cmp13442016 = icmp sgt i32 %765, 0
  br i1 %cmp13442016, label %for.body1346, label %for.cond1362.loopexit

for.body1346:                                     ; preds = %for.cond1343.preheader, %for.inc1359
  %771 = phi i32 [ %774, %for.inc1359 ], [ %765, %for.cond1343.preheader ]
  %indvars.iv2412 = phi i64 [ %indvars.iv.next2413, %for.inc1359 ], [ 0, %for.cond1343.preheader ]
  %arrayidx1348 = getelementptr inbounds i32* %iamboun.3, i64 %indvars.iv2412
  %772 = load i32* %arrayidx1348, align 4, !tbaa !3
  %mul1349 = mul nsw i32 %772, 3
  %sub1350 = add nsw i32 %mul1349, -1
  %idxprom1351 = sext i32 %sub1350 to i64
  %arrayidx1352 = getelementptr inbounds i32* %namta.3, i64 %idxprom1351
  %773 = load i32* %arrayidx1352, align 4, !tbaa !3
  %cmp1353 = icmp eq i32 %773, 1
  br i1 %cmp1353, label %for.inc1359, label %if.then1355

if.then1355:                                      ; preds = %for.body1346
  store i32 0, i32* %arrayidx1348, align 4, !tbaa !3
  %.pre2431 = load i32* %nboun, align 4, !tbaa !3
  br label %for.inc1359

for.inc1359:                                      ; preds = %for.body1346, %if.then1355
  %774 = phi i32 [ %771, %for.body1346 ], [ %.pre2431, %if.then1355 ]
  %indvars.iv.next2413 = add i64 %indvars.iv2412, 1
  %775 = trunc i64 %indvars.iv.next2413 to i32
  %cmp1344 = icmp slt i32 %775, %774
  br i1 %cmp1344, label %for.body1346, label %for.cond1343.for.cond1362.loopexit_crit_edge

for.cond1343.for.cond1362.loopexit_crit_edge:     ; preds = %for.inc1359
  %.pre2428 = load i32* %nforc, align 4, !tbaa !3
  br label %for.cond1362.loopexit

for.cond1362.loopexit:                            ; preds = %for.cond1343.for.cond1362.loopexit_crit_edge, %for.cond1343.preheader
  %776 = phi i32 [ %.pre2428, %for.cond1343.for.cond1362.loopexit_crit_edge ], [ %766, %for.cond1343.preheader ]
  %cmp13632018 = icmp sgt i32 %776, 0
  br i1 %cmp13632018, label %for.body1365, label %for.cond1381.loopexit

for.body1365:                                     ; preds = %for.cond1362.loopexit, %for.inc1378
  %777 = phi i32 [ %780, %for.inc1378 ], [ %776, %for.cond1362.loopexit ]
  %indvars.iv2414 = phi i64 [ %indvars.iv.next2415, %for.inc1378 ], [ 0, %for.cond1362.loopexit ]
  %arrayidx1367 = getelementptr inbounds i32* %iamforc.3, i64 %indvars.iv2414
  %778 = load i32* %arrayidx1367, align 4, !tbaa !3
  %mul1368 = mul nsw i32 %778, 3
  %sub1369 = add nsw i32 %mul1368, -1
  %idxprom1370 = sext i32 %sub1369 to i64
  %arrayidx1371 = getelementptr inbounds i32* %namta.3, i64 %idxprom1370
  %779 = load i32* %arrayidx1371, align 4, !tbaa !3
  %cmp1372 = icmp eq i32 %779, 1
  br i1 %cmp1372, label %for.inc1378, label %if.then1374

if.then1374:                                      ; preds = %for.body1365
  store i32 0, i32* %arrayidx1367, align 4, !tbaa !3
  %.pre2430 = load i32* %nforc, align 4, !tbaa !3
  br label %for.inc1378

for.inc1378:                                      ; preds = %for.body1365, %if.then1374
  %780 = phi i32 [ %777, %for.body1365 ], [ %.pre2430, %if.then1374 ]
  %indvars.iv.next2415 = add i64 %indvars.iv2414, 1
  %781 = trunc i64 %indvars.iv.next2415 to i32
  %cmp1363 = icmp slt i32 %781, %780
  br i1 %cmp1363, label %for.body1365, label %for.cond1381.loopexit

for.cond1381.loopexit:                            ; preds = %for.inc1378, %for.cond1362.loopexit
  %782 = load i32* %nload, align 4, !tbaa !3
  %cmp13832021 = icmp sgt i32 %782, 0
  br i1 %cmp13832021, label %for.body1385, label %for.end1400

for.body1385:                                     ; preds = %for.cond1381.loopexit, %for.inc1398
  %783 = phi i32 [ %786, %for.inc1398 ], [ %782, %for.cond1381.loopexit ]
  %indvars.iv2416 = phi i64 [ %indvars.iv.next2417, %for.inc1398 ], [ 0, %for.cond1381.loopexit ]
  %i.142022 = phi i32 [ %inc1399, %for.inc1398 ], [ 0, %for.cond1381.loopexit ]
  %arrayidx1387 = getelementptr inbounds i32* %iamload.3, i64 %indvars.iv2416
  %784 = load i32* %arrayidx1387, align 4, !tbaa !3
  %mul1388 = mul nsw i32 %784, 3
  %sub1389 = add nsw i32 %mul1388, -1
  %idxprom1390 = sext i32 %sub1389 to i64
  %arrayidx1391 = getelementptr inbounds i32* %namta.3, i64 %idxprom1390
  %785 = load i32* %arrayidx1391, align 4, !tbaa !3
  %cmp1392 = icmp eq i32 %785, 1
  br i1 %cmp1392, label %for.inc1398, label %if.then1394

if.then1394:                                      ; preds = %for.body1385
  store i32 0, i32* %arrayidx1387, align 4, !tbaa !3
  %.pre2429 = load i32* %nload, align 4, !tbaa !3
  br label %for.inc1398

for.inc1398:                                      ; preds = %for.body1385, %if.then1394
  %786 = phi i32 [ %783, %for.body1385 ], [ %.pre2429, %if.then1394 ]
  %indvars.iv.next2417 = add i64 %indvars.iv2416, 1
  %inc1399 = add nsw i32 %i.142022, 1
  %mul1382 = shl nsw i32 %786, 1
  %787 = trunc i64 %indvars.iv.next2417 to i32
  %cmp1383 = icmp slt i32 %787, %mul1382
  br i1 %cmp1383, label %for.body1385, label %for.cond1381.for.end1400_crit_edge

for.cond1381.for.end1400_crit_edge:               ; preds = %for.inc1398
  %phitmp = sext i32 %inc1399 to i64
  br label %for.end1400

for.end1400:                                      ; preds = %for.cond1381.for.end1400_crit_edge, %for.cond1381.loopexit
  %i.14.lcssa = phi i64 [ %phitmp, %for.cond1381.for.end1400_crit_edge ], [ 0, %for.cond1381.loopexit ]
  %788 = load i32* %iamom, align 4, !tbaa !3
  %mul1401 = mul nsw i32 %788, 3
  %sub1402 = add nsw i32 %mul1401, -1
  %idxprom1403 = sext i32 %sub1402 to i64
  %arrayidx1404 = getelementptr inbounds i32* %namta.3, i64 %idxprom1403
  %789 = load i32* %arrayidx1404, align 4, !tbaa !3
  %cmp1405 = icmp eq i32 %789, 1
  br i1 %cmp1405, label %if.end1408, label %if.then1407

if.then1407:                                      ; preds = %for.end1400
  store i32 0, i32* %iamom, align 4, !tbaa !3
  br label %if.end1408

if.end1408:                                       ; preds = %for.end1400, %if.then1407
  %790 = load i32* %iambodyf, align 4, !tbaa !3
  %mul1409 = mul nsw i32 %790, 3
  %sub1410 = add nsw i32 %mul1409, -1
  %idxprom1411 = sext i32 %sub1410 to i64
  %arrayidx1412 = getelementptr inbounds i32* %namta.3, i64 %idxprom1411
  %791 = load i32* %arrayidx1412, align 4, !tbaa !3
  %cmp1413 = icmp eq i32 %791, 1
  br i1 %cmp1413, label %if.end1416, label %if.then1415

if.then1415:                                      ; preds = %if.end1408
  store i32 0, i32* %iambodyf, align 4, !tbaa !3
  br label %if.end1416

if.end1416:                                       ; preds = %if.end1408, %if.then1415
  %792 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1417 = icmp eq i32 %792, 1
  br i1 %cmp1417, label %if.then1419, label %while.cond.outer.backedge

if.then1419:                                      ; preds = %if.end1416
  %arrayidx1421 = getelementptr inbounds i32* %iamt1.2, i64 %i.14.lcssa
  %793 = load i32* %arrayidx1421, align 4, !tbaa !3
  %mul1422 = mul nsw i32 %793, 3
  %sub1423 = add nsw i32 %mul1422, -1
  %idxprom1424 = sext i32 %sub1423 to i64
  %arrayidx1425 = getelementptr inbounds i32* %namta.3, i64 %idxprom1424
  %794 = load i32* %arrayidx1425, align 4, !tbaa !3
  %cmp1426 = icmp eq i32 %794, 1
  br i1 %cmp1426, label %while.cond.outer.backedge, label %if.then1428

if.then1428:                                      ; preds = %if.then1419
  store i32 0, i32* %arrayidx1421, align 4, !tbaa !3
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then1428, %if.then1419, %if.end1416, %if.else1335
  %795 = load i32* %istat, align 4, !tbaa !3
  %cmp892042 = icmp sgt i32 %795, -1
  br i1 %cmp892042, label %while.body.lr.ph, label %while.end

while.end:                                        ; preds = %for.end75, %while.cond.outer.backedge, %while.cond.backedge
  call void (...)* @frdclose_() #4
  call void @llvm.lifetime.end(i64 56, i8* %5) #1
  call void @llvm.lifetime.end(i64 132, i8* %2) #1
  call void @llvm.lifetime.end(i64 132, i8* %1) #1
  call void @llvm.lifetime.end(i64 208, i8* %0) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: optsize
declare void @stop_(...) #2

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @strcpy1(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @openfile_(i8*, i8*) #2

; Function Attrs: optsize
declare void @allocation_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @calinput_(double*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i32*, i32*, double*, i32*, i32*, i32*, i8*, double*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, double*, double*, i8*, i32*, i8*, double*, i32*, i8*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, double*, double*, double*, double*, double*, i8*, i8*, i32*, i32*, i32*, i32*, double*, double*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, i32*, i32*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i8*, i32*, double*, i32*, double*, double*, i32*, i32*, double*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*, double*, i32*, i32*, double*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare void @spcmatch_(double*, i32*, i32*, i32*, double*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*) #2

; Function Attrs: optsize
declare void @cascade(i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare void @renumber_(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare void @mastruct(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare void @mastructcs(i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32) #2

; Function Attrs: optsize
declare void @profile(double*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i8*, i32, double*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i8*, i32, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i8*, i32, i32*, i32*, i32*, i32*, double*, i32*, double*, double*, double*, double*, double*, double*, i8*, i32, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i8*, i32) #2

; Function Attrs: optsize
declare void @prespooles(double*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i8*, i32, double*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, i32**, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, i8*, i32, i8*, i32, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, double*, double*, double*, double*, double*, i8*, i32, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i8*, i32) #2

; Function Attrs: optsize
declare void @nonlingeo(double*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i32**, double**, i8*, i32, i32*, i32*, i32*, double*, i32*, i32*, i8*, i32, double*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, i32**, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, i8*, i32, i8*, i32, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i8*, i32, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, double*, i8*, i32, double*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, i32*, i8*, i32, i32*, i32*, double*, double*, i32*, double*, i32*, double*, double*, i32*, double*) #2

; Function Attrs: optsize
declare void @frdclose_(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
