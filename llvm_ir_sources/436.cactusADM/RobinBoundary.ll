; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [72 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Invalid group index %d in BndFlatGI\00", align 1
@.str3 = private unnamed_addr constant [38 x i8] c"Invalid group name '%s' in BndRobinGN\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"BndRobinVI: Invalid variable index %d\00", align 1
@.str5 = private unnamed_addr constant [41 x i8] c"Invalid variable name '%s' in BndRobinVN\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"ApplyBndRobin: Variable dimension of %d not supported\00", align 1
@.str7 = private unnamed_addr constant [59 x i8] c"ApplyBndRobin: NULL pointer passed for stencil width array\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"ApplyBndRobin: Stencil width must be 1 for Robin boundary conditions\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str10 = private unnamed_addr constant [50 x i8] c"ApplyBndRobin: Couldn't get coordinates from '%s'\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"spher%dd\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str17 = private unnamed_addr constant [54 x i8] c"ApplyBndRobin: variable dimension of %d not supported\00", align 1
@.str18 = private unnamed_addr constant [62 x i8] c"ApplyBndRobin: Unsupported variable type %d for variable '%s'\00", align 1
@.str19 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/Boundary/src/RobinBoundary.c,v 1.23 2001/12/13 16:18:05 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_Boundary_RobinBoundary_c() #0 {
entry:
  ret i8* getelementptr inbounds ([96 x i8]* @.str19, i64 0, i64 0), !dbg !496
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndRobinGI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %gi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !56), !dbg !497
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !57), !dbg !498
  tail call void @llvm.dbg.value(metadata !{double %finf}, i64 0, metadata !58), !dbg !499
  tail call void @llvm.dbg.value(metadata !{i32 %npow}, i64 0, metadata !59), !dbg !500
  tail call void @llvm.dbg.value(metadata !{i32 %gi}, i64 0, metadata !60), !dbg !501
  %call = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #7, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !61), !dbg !502
  %cmp = icmp sgt i32 %call, -1, !dbg !503
  br i1 %cmp, label %if.then, label %if.else, !dbg !503

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #7, !dbg !504
  %call3 = tail call fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %call, i32 %call2) #8, !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !62), !dbg !504
  br label %if.end, !dbg !506

if.else:                                          ; preds = %entry
  %call4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 139, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), i32 %gi) #7, !dbg !507
  tail call void @llvm.dbg.value(metadata !509, i64 0, metadata !62), !dbg !510
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call3, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !511
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %first_var, i32 %num_vars) #1 {
entry:
  %doBC = alloca [6 x i32], align 16
  %coord_system_name = alloca [20 x i8], align 16
  %dist = alloca [8 x double], align 16
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !139), !dbg !512
  call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !140), !dbg !513
  call void @llvm.dbg.value(metadata !{double %finf}, i64 0, metadata !141), !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %npow}, i64 0, metadata !142), !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %first_var}, i64 0, metadata !143), !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %num_vars}, i64 0, metadata !144), !dbg !517
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %doBC}, metadata !149), !dbg !518
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %coord_system_name}, metadata !161), !dbg !519
  %0 = bitcast [8 x double]* %dist to i8*, !dbg !520
  call void @llvm.lifetime.start(i64 64, i8* %0) #5, !dbg !520
  call void @llvm.dbg.declare(metadata !{[8 x double]* %dist}, metadata !170), !dbg !520
  %call = call i32 @CCTK_GroupIndexFromVarI(i32 %first_var) #7, !dbg !521
  %call1 = call i32 @CCTK_GroupDimI(i32 %call) #7, !dbg !521
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !148), !dbg !521
  %call2 = call i32 @CCTK_VarTypeI(i32 %first_var) #7, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !146), !dbg !522
  %cmp = icmp sgt i32 %call1, 3, !dbg !523
  br i1 %cmp, label %if.then, label %if.end, !dbg !523

if.then:                                          ; preds = %entry
  %call3 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 653, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), i32 %call1) #7, !dbg !524
  br label %cleanup, !dbg !526

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32* %stencil, null, !dbg !527
  br i1 %tobool, label %if.then4, label %for.cond.preheader, !dbg !527

for.cond.preheader:                               ; preds = %if.end
  %cmp78514 = icmp sgt i32 %call1, 0, !dbg !528
  br i1 %cmp78514, label %for.body, label %for.end, !dbg !528

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @CCTK_Warn(i32 1, i32 661, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !530
  br label %cleanup, !dbg !532

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next8603 to i32, !dbg !528
  %cmp7 = icmp slt i32 %1, %call1, !dbg !528
  br i1 %cmp7, label %for.body, label %for.end, !dbg !528

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv8602 = phi i64 [ %indvars.iv.next8603, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %stencil, i64 %indvars.iv8602, !dbg !533
  %2 = load i32* %arrayidx, align 4, !dbg !533, !tbaa !535
  %cmp8 = icmp eq i32 %2, 1, !dbg !533
  %indvars.iv.next8603 = add i64 %indvars.iv8602, 1, !dbg !528
  br i1 %cmp8, label %for.cond, label %if.then9, !dbg !533

if.then9:                                         ; preds = %for.body
  %call10 = call i32 @CCTK_Warn(i32 1, i32 670, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !538
  br label %cleanup, !dbg !540

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %arraydecay = getelementptr inbounds [20 x i8]* %coord_system_name, i64 0, i64 0, !dbg !541
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i32 %call1) #7, !dbg !541
  %call14 = call i32 @CCTK_CoordSystemHandle(i8* %arraydecay) #7, !dbg !542
  %cmp15 = icmp slt i32 %call14, 0, !dbg !542
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !542

if.then16:                                        ; preds = %for.end
  %call18 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 679, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0), i8* %arraydecay) #7, !dbg !543
  br label %cleanup, !dbg !545

if.end19:                                         ; preds = %for.end
  %call21 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i8* %arraydecay) #7, !dbg !546
  %idxprom22 = sext i32 %call21 to i64, !dbg !546
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !546
  %3 = load i8**** %data, align 8, !dbg !546, !tbaa !547
  %arrayidx23 = getelementptr inbounds i8*** %3, i64 %idxprom22, !dbg !546
  %4 = load i8*** %arrayidx23, align 8, !dbg !546, !tbaa !547
  %5 = load i8** %4, align 8, !dbg !546, !tbaa !547
  %6 = bitcast i8* %5 to double*, !dbg !546
  call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !166), !dbg !546
  %call26 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %arraydecay) #7, !dbg !548
  %idxprom27 = sext i32 %call26 to i64, !dbg !548
  %7 = load i8**** %data, align 8, !dbg !548, !tbaa !547
  %arrayidx29 = getelementptr inbounds i8*** %7, i64 %idxprom27, !dbg !548
  %8 = load i8*** %arrayidx29, align 8, !dbg !548, !tbaa !547
  %9 = load i8** %8, align 8, !dbg !548, !tbaa !547
  %10 = bitcast i8* %9 to double*, !dbg !548
  call void @llvm.dbg.value(metadata !{double* %10}, i64 0, metadata !167), !dbg !548
  %call32 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* %arraydecay) #7, !dbg !549
  %idxprom33 = sext i32 %call32 to i64, !dbg !549
  %11 = load i8**** %data, align 8, !dbg !549, !tbaa !547
  %arrayidx35 = getelementptr inbounds i8*** %11, i64 %idxprom33, !dbg !549
  %12 = load i8*** %arrayidx35, align 8, !dbg !549, !tbaa !547
  %13 = load i8** %12, align 8, !dbg !549, !tbaa !547
  %14 = bitcast i8* %13 to double*, !dbg !549
  call void @llvm.dbg.value(metadata !{double* %14}, i64 0, metadata !168), !dbg !549
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0), i32 %call1) #7, !dbg !550
  %call40 = call i32 @CCTK_CoordSystemHandle(i8* %arraydecay) #7, !dbg !551
  %cmp41 = icmp slt i32 %call40, 0, !dbg !551
  br i1 %cmp41, label %if.then42, label %if.end45, !dbg !551

if.then42:                                        ; preds = %if.end19
  %call44 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 691, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0), i8* %arraydecay) #7, !dbg !552
  br label %cleanup, !dbg !554

if.end45:                                         ; preds = %if.end19
  %call47 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* %arraydecay) #7, !dbg !555
  %idxprom48 = sext i32 %call47 to i64, !dbg !555
  %15 = load i8**** %data, align 8, !dbg !555, !tbaa !547
  %arrayidx50 = getelementptr inbounds i8*** %15, i64 %idxprom48, !dbg !555
  %16 = load i8*** %arrayidx50, align 8, !dbg !555, !tbaa !547
  %17 = load i8** %16, align 8, !dbg !555, !tbaa !547
  %18 = bitcast i8* %17 to double*, !dbg !555
  call void @llvm.dbg.value(metadata !{double* %18}, i64 0, metadata !169), !dbg !555
  %call52 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !556
  %conv = sitofp i32 %npow to double, !dbg !557
  call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !165), !dbg !557
  %arrayidx53 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 0, !dbg !558
  store double 0.000000e+00, double* %arrayidx53, align 16, !dbg !558, !tbaa !559
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !560
  %19 = load double** %cctk_delta_space, align 8, !dbg !560, !tbaa !547
  %20 = load double* %19, align 8, !dbg !560, !tbaa !559
  %arrayidx55 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 1, !dbg !560
  store double %20, double* %arrayidx55, align 8, !dbg !560, !tbaa !559
  %arrayidx57 = getelementptr inbounds double* %19, i64 1, !dbg !561
  %21 = load double* %arrayidx57, align 8, !dbg !561, !tbaa !559
  %arrayidx58 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 2, !dbg !561
  store double %21, double* %arrayidx58, align 16, !dbg !561, !tbaa !559
  %mul = fmul double %20, %20, !dbg !562
  %mul63 = fmul double %21, %21, !dbg !562
  %add = fadd double %mul63, %mul, !dbg !562
  %call64 = call double @sqrt(double %add) #7, !dbg !562
  %arrayidx65 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 3, !dbg !562
  store double %call64, double* %arrayidx65, align 8, !dbg !562, !tbaa !559
  %22 = load double** %cctk_delta_space, align 8, !dbg !563, !tbaa !547
  %arrayidx67 = getelementptr inbounds double* %22, i64 2, !dbg !563
  %23 = load double* %arrayidx67, align 8, !dbg !563, !tbaa !559
  %arrayidx68 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 4, !dbg !563
  store double %23, double* %arrayidx68, align 16, !dbg !563, !tbaa !559
  %24 = load double* %arrayidx55, align 8, !dbg !564, !tbaa !559
  %mul71 = fmul double %24, %24, !dbg !564
  %mul74 = fmul double %23, %23, !dbg !564
  %add75 = fadd double %mul74, %mul71, !dbg !564
  %call76 = call double @sqrt(double %add75) #7, !dbg !564
  %arrayidx77 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 5, !dbg !564
  store double %call76, double* %arrayidx77, align 8, !dbg !564, !tbaa !559
  %25 = load double* %arrayidx58, align 16, !dbg !565, !tbaa !559
  %mul80 = fmul double %25, %25, !dbg !565
  %26 = load double* %arrayidx68, align 16, !dbg !565, !tbaa !559
  %mul83 = fmul double %26, %26, !dbg !565
  %add84 = fadd double %mul80, %mul83, !dbg !565
  %call85 = call double @sqrt(double %add84) #7, !dbg !565
  %arrayidx86 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 6, !dbg !565
  store double %call85, double* %arrayidx86, align 16, !dbg !565, !tbaa !559
  %27 = load double* %arrayidx55, align 8, !dbg !566, !tbaa !559
  %mul89 = fmul double %27, %27, !dbg !566
  %28 = load double* %arrayidx58, align 16, !dbg !566, !tbaa !559
  %mul92 = fmul double %28, %28, !dbg !566
  %add93 = fadd double %mul89, %mul92, !dbg !566
  %29 = load double* %arrayidx68, align 16, !dbg !566, !tbaa !559
  %mul96 = fmul double %29, %29, !dbg !566
  %add97 = fadd double %add93, %mul96, !dbg !566
  %call98 = call double @sqrt(double %add97) #7, !dbg !566
  %arrayidx99 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 7, !dbg !566
  store double %call98, double* %arrayidx99, align 8, !dbg !566, !tbaa !559
  call void @llvm.dbg.value(metadata !{i32 %first_var}, i64 0, metadata !145), !dbg !567
  %add101 = add nsw i32 %num_vars, %first_var, !dbg !567
  %cmp1028512 = icmp sgt i32 %num_vars, 0, !dbg !567
  br i1 %cmp1028512, label %for.body104.lr.ph, label %cleanup, !dbg !567

for.body104.lr.ph:                                ; preds = %if.end45
  %30 = bitcast [6 x i32]* %doBC to i8*, !dbg !568
  %tobool105 = icmp eq i8* %call52, null, !dbg !569
  %mul108 = shl nsw i32 %call1, 1, !dbg !570
  %GFSym = bitcast i8* %call52 to i32***, !dbg !573
  %cmp168 = icmp eq i32 %call1, 3, !dbg !575
  %cctk_lsh174 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !576
  %arrayidx181 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4, !dbg !577
  %arrayidx188 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 5, !dbg !577
  %arrayidx218 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2, !dbg !578
  %arrayidx228 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 3, !dbg !578
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !579
  %31 = sext i32 %first_var to i64
  br label %for.body104, !dbg !567

for.body104:                                      ; preds = %for.body104.lr.ph, %for.inc5726
  %indvars.iv8600 = phi i64 [ %31, %for.body104.lr.ph ], [ %indvars.iv.next8601, %for.inc5726 ]
  %var.08513 = phi i32 [ %first_var, %for.body104.lr.ph ], [ %inc5727, %for.inc5726 ]
  call void @llvm.memset.p0i8.i64(i8* %30, i8 1, i64 24, i32 16, i1 false), !dbg !568
  br i1 %tobool105, label %for.cond131.preheader, label %for.cond107.preheader, !dbg !569

for.cond107.preheader:                            ; preds = %for.body104
  br i1 %cmp78514, label %for.body111.lr.ph, label %for.end167, !dbg !570

for.body111.lr.ph:                                ; preds = %for.cond107.preheader
  %32 = load i32*** %GFSym, align 8, !dbg !573, !tbaa !547
  %arrayidx114 = getelementptr inbounds i32** %32, i64 %indvars.iv8600, !dbg !573
  %33 = load i32** %arrayidx114, align 8, !dbg !573, !tbaa !547
  br label %for.body111, !dbg !570

for.body111:                                      ; preds = %for.body111.lr.ph, %for.body111
  %indvars.iv = phi i64 [ 0, %for.body111.lr.ph ], [ %indvars.iv.next, %for.body111 ]
  %arrayidx115 = getelementptr inbounds i32* %33, i64 %indvars.iv, !dbg !573
  %34 = load i32* %arrayidx115, align 4, !dbg !573, !tbaa !535
  %35 = and i32 %34, -2, !dbg !573
  %36 = icmp eq i32 %35, -42, !dbg !573
  %lor.ext = zext i1 %36 to i32, !dbg !573
  %arrayidx126 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv, !dbg !573
  store i32 %lor.ext, i32* %arrayidx126, align 4, !dbg !573, !tbaa !535
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !570
  %37 = trunc i64 %indvars.iv.next to i32, !dbg !570
  %cmp109 = icmp slt i32 %37, %mul108, !dbg !570
  br i1 %cmp109, label %for.body111, label %for.cond131.preheader, !dbg !570

for.cond131.preheader:                            ; preds = %for.body111, %for.body104
  br i1 %cmp78514, label %for.body134.lr.ph, label %for.end167, !dbg !582

for.body134.lr.ph:                                ; preds = %for.cond131.preheader
  %38 = load i32** %cctk_lsh174, align 8, !dbg !579, !tbaa !547
  br label %for.body134, !dbg !582

for.body134:                                      ; preds = %land.end158, %for.body134.lr.ph
  %indvars.iv8516 = phi i64 [ 0, %for.body134.lr.ph ], [ %indvars.iv.next8517, %land.end158 ]
  %arrayidx136 = getelementptr inbounds i32* %38, i64 %indvars.iv8516, !dbg !579
  %39 = load i32* %arrayidx136, align 4, !dbg !579, !tbaa !535
  %cmp137 = icmp sgt i32 %39, 1, !dbg !579
  %40 = trunc i64 %indvars.iv8516 to i32, !dbg !579
  %mul139 = shl nsw i32 %40, 1, !dbg !579
  %idxprom140 = sext i32 %mul139 to i64, !dbg !579
  br i1 %cmp137, label %land.rhs151, label %land.end.land.end158_crit_edge, !dbg !579

land.end.land.end158_crit_edge:                   ; preds = %for.body134
  %arrayidx145 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom140
  store i32 0, i32* %arrayidx145, align 8, !tbaa !535
  %add1618311.pre = or i32 %mul139, 1
  %idxprom162.pre = sext i32 %add1618311.pre to i64
  br label %land.end158, !dbg !583

land.rhs151:                                      ; preds = %for.body134
  %41 = load i32** %cctk_bbox, align 8, !dbg !579, !tbaa !547
  %arrayidx141 = getelementptr inbounds i32* %41, i64 %idxprom140, !dbg !579
  %42 = load i32* %arrayidx141, align 4, !dbg !579, !tbaa !535
  %tobool142 = icmp ne i32 %42, 0, !dbg !579
  %land.ext8636 = zext i1 %tobool142 to i32
  %arrayidx1458637 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom140
  %43 = load i32* %arrayidx1458637, align 8, !tbaa !535
  %and8638 = and i32 %43, %land.ext8636
  store i32 %and8638, i32* %arrayidx1458637, align 8, !tbaa !535
  %add1538312 = or i32 %mul139, 1, !dbg !583
  %idxprom154 = sext i32 %add1538312 to i64, !dbg !583
  %44 = load i32** %cctk_bbox, align 8, !dbg !583, !tbaa !547
  %arrayidx156 = getelementptr inbounds i32* %44, i64 %idxprom154, !dbg !583
  %45 = load i32* %arrayidx156, align 4, !dbg !583, !tbaa !535
  %tobool157 = icmp ne i32 %45, 0, !dbg !583
  br label %land.end158

land.end158:                                      ; preds = %land.end.land.end158_crit_edge, %land.rhs151
  %idxprom162.pre-phi = phi i64 [ %idxprom162.pre, %land.end.land.end158_crit_edge ], [ %idxprom154, %land.rhs151 ]
  %46 = phi i1 [ false, %land.end.land.end158_crit_edge ], [ %tobool157, %land.rhs151 ]
  %land.ext159 = zext i1 %46 to i32
  %arrayidx163 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom162.pre-phi
  %47 = load i32* %arrayidx163, align 4, !tbaa !535
  %and164 = and i32 %47, %land.ext159
  store i32 %and164, i32* %arrayidx163, align 4, !tbaa !535
  %indvars.iv.next8517 = add i64 %indvars.iv8516, 1, !dbg !582
  %lftr.wideiv = trunc i64 %indvars.iv.next8517 to i32, !dbg !582
  %exitcond = icmp eq i32 %lftr.wideiv, %call1, !dbg !582
  br i1 %exitcond, label %for.end167, label %for.body134, !dbg !582

for.end167:                                       ; preds = %for.cond107.preheader, %land.end158, %for.cond131.preheader
  switch i32 %call2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb769
    i32 6, label %sw.bb1389
    i32 3, label %sw.bb2003
    i32 4, label %sw.bb2626
    i32 5, label %sw.bb3246
    i32 7, label %sw.bb3866
    i32 8, label %sw.bb4486
    i32 9, label %sw.bb5100
  ], !dbg !584

sw.bb:                                            ; preds = %for.end167
  br i1 %cmp168, label %for.cond173.preheader, label %if.then170, !dbg !575

for.cond173.preheader:                            ; preds = %sw.bb
  %48 = load i32** %cctk_lsh174, align 8, !dbg !576, !tbaa !547
  %arrayidx1758498 = getelementptr inbounds i32* %48, i64 2, !dbg !576
  %49 = load i32* %arrayidx1758498, align 4, !dbg !576, !tbaa !535
  %cmp1768499 = icmp sgt i32 %49, 0, !dbg !576
  br i1 %cmp1768499, label %for.body178, label %for.inc5726, !dbg !576

if.then170:                                       ; preds = %sw.bb
  %call171 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 740, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !585
  br label %cleanup, !dbg !585

for.body178:                                      ; preds = %for.cond173.preheader, %for.inc766
  %50 = phi i32 [ %129, %for.inc766 ], [ %49, %for.cond173.preheader ]
  %51 = phi i32* [ %130, %for.inc766 ], [ %48, %for.cond173.preheader ]
  %indvars.iv8584 = phi i32 [ %indvars.iv.next8585, %for.inc766 ], [ 0, %for.cond173.preheader ], !dbg !587
  %cmp179 = icmp eq i32 %indvars.iv8584, 0, !dbg !577
  br i1 %cmp179, label %land.lhs.true, label %lor.lhs.false, !dbg !577

land.lhs.true:                                    ; preds = %for.body178
  %52 = load i32* %arrayidx181, align 16, !dbg !577, !tbaa !535
  %tobool182 = icmp eq i32 %52, 0, !dbg !577
  br i1 %tobool182, label %for.inc766, label %lor.lhs.false, !dbg !577

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body178
  %sub = add nsw i32 %50, -1, !dbg !577
  %cmp185 = icmp eq i32 %indvars.iv8584, %sub, !dbg !577
  br i1 %cmp185, label %land.lhs.true187, label %if.end191, !dbg !577

land.lhs.true187:                                 ; preds = %lor.lhs.false
  %53 = load i32* %arrayidx188, align 4, !dbg !577, !tbaa !535
  %tobool189 = icmp eq i32 %53, 0, !dbg !577
  br i1 %tobool189, label %for.inc766, label %if.end191, !dbg !577

if.end191:                                        ; preds = %land.lhs.true187, %lor.lhs.false
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !577
  br i1 %cmp179, label %land.lhs.true194, label %if.else, !dbg !577

land.lhs.true194:                                 ; preds = %if.end191
  %54 = load i32* %arrayidx181, align 16, !dbg !577, !tbaa !535
  %tobool196.not = icmp ne i32 %54, 0, !dbg !577
  %cmp185.not = xor i1 %cmp185, true, !dbg !577
  %brmerge = or i1 %tobool196.not, %cmp185.not, !dbg !577
  %.mux = zext i1 %tobool196.not to i32, !dbg !577
  br i1 %brmerge, label %if.end208, label %land.lhs.true203, !dbg !577

if.else:                                          ; preds = %if.end191
  br i1 %cmp185, label %land.lhs.true203, label %if.end208, !dbg !577

land.lhs.true203:                                 ; preds = %land.lhs.true194, %if.else
  %55 = load i32* %arrayidx188, align 4, !dbg !577, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !183), !dbg !588
  %not.tobool205 = icmp ne i32 %55, 0, !dbg !577
  %. = sext i1 %not.tobool205 to i32, !dbg !577
  br label %if.end208, !dbg !577

if.end208:                                        ; preds = %land.lhs.true194, %land.lhs.true203, %if.else
  %dz.0 = phi i32 [ 0, %if.else ], [ %.mux, %land.lhs.true194 ], [ %., %land.lhs.true203 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !587
  %arrayidx2118494 = getelementptr inbounds i32* %51, i64 1, !dbg !587
  %56 = load i32* %arrayidx2118494, align 4, !dbg !587, !tbaa !535
  %cmp2128495 = icmp sgt i32 %56, 0, !dbg !587
  br i1 %cmp2128495, label %for.body214.lr.ph, label %for.inc766, !dbg !587

for.body214.lr.ph:                                ; preds = %if.end208
  %tobool400 = icmp eq i32 %dz.0, 0, !dbg !578
  %add607 = add i32 %dz.0, %indvars.iv8584, !dbg !590
  %ispos8300 = icmp sgt i32 %dz.0, -1, !dbg !590
  %neg8301 = sub i32 0, %dz.0, !dbg !590
  %57 = select i1 %ispos8300, i32 %dz.0, i32 %neg8301, !dbg !590
  %mul617 = shl nsw i32 %57, 2, !dbg !590
  %add627 = add i32 %57, 1, !dbg !592
  %conv687 = sitofp i32 %dz.0 to double, !dbg !593
  br label %for.body214, !dbg !587

for.body214:                                      ; preds = %for.body214.lr.ph, %for.inc763
  %58 = phi i32 [ %56, %for.body214.lr.ph ], [ %128, %for.inc763 ]
  %59 = phi i32* [ %51, %for.body214.lr.ph ], [ %127, %for.inc763 ]
  %indvars.iv8582 = phi i32 [ 0, %for.body214.lr.ph ], [ %indvars.iv.next8583, %for.inc763 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !182), !dbg !578
  %cmp215 = icmp eq i32 %indvars.iv8582, 0, !dbg !578
  br i1 %cmp215, label %land.lhs.true217, label %if.else221, !dbg !578

land.lhs.true217:                                 ; preds = %for.body214
  %60 = load i32* %arrayidx218, align 8, !dbg !578, !tbaa !535
  %tobool219 = icmp eq i32 %60, 0, !dbg !578
  br i1 %tobool219, label %if.else221, label %if.end232, !dbg !578

if.else221:                                       ; preds = %land.lhs.true217, %for.body214
  %sub224 = add nsw i32 %58, -1, !dbg !578
  %cmp225 = icmp eq i32 %indvars.iv8582, %sub224, !dbg !578
  br i1 %cmp225, label %land.lhs.true227, label %if.end232, !dbg !578

land.lhs.true227:                                 ; preds = %if.else221
  %61 = load i32* %arrayidx228, align 4, !dbg !578, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !182), !dbg !595
  %not.tobool229 = icmp ne i32 %61, 0, !dbg !578
  %.8330 = sext i1 %not.tobool229 to i32, !dbg !578
  br label %if.end232, !dbg !578

if.end232:                                        ; preds = %if.else221, %land.lhs.true217, %land.lhs.true227
  %dy.0 = phi i32 [ %.8330, %land.lhs.true227 ], [ 1, %land.lhs.true217 ], [ 0, %if.else221 ]
  %62 = bitcast [6 x i32]* %doBC to i64*, !dbg !578
  %63 = load i64* %62, align 16, !dbg !578
  %64 = trunc i64 %63 to i32, !dbg !578
  %tobool234 = icmp eq i32 %64, 0, !dbg !578
  br i1 %tobool234, label %if.end397, label %if.then235, !dbg !578

if.then235:                                       ; preds = %if.end232
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !181), !dbg !598
  %65 = load i32* %59, align 4, !dbg !599, !tbaa !535
  %mul240 = mul nsw i32 %58, %indvars.iv8584, !dbg !599
  %add241 = add nsw i32 %mul240, %indvars.iv8582, !dbg !599
  %mul242 = mul nsw i32 %add241, %65, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %mul242}, i64 0, metadata !185), !dbg !599
  %add247 = add nsw i32 %dy.0, %indvars.iv8582, !dbg !599
  %mul251 = mul nsw i32 %58, %add607, !dbg !599
  %add252 = add nsw i32 %add247, %mul251, !dbg !599
  %mul253 = mul nsw i32 %add252, %65, !dbg !599
  %add254 = add nsw i32 %mul253, 1, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %add254}, i64 0, metadata !184), !dbg !599
  %ispos8306 = icmp sgt i32 %dy.0, -1, !dbg !599
  %neg8307 = sub i32 0, %dy.0, !dbg !599
  %66 = select i1 %ispos8306, i32 %dy.0, i32 %neg8307, !dbg !599
  %mul257 = shl nsw i32 %66, 1, !dbg !599
  %add2588308 = or i32 %mul257, 1, !dbg !599
  %add261 = add nsw i32 %add2588308, %mul617, !dbg !599
  %idxprom262 = sext i32 %add261 to i64, !dbg !599
  %arrayidx263 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom262, !dbg !599
  %67 = load double* %arrayidx263, align 8, !dbg !599, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %67}, i64 0, metadata !186), !dbg !599
  %add269 = add i32 %add627, %66, !dbg !601
  %cmp270 = icmp eq i32 %add269, 1, !dbg !601
  %idxprom274 = sext i32 %mul242 to i64, !dbg !602
  %arrayidx275 = getelementptr inbounds double* %6, i64 %idxprom274, !dbg !602
  %68 = load double* %arrayidx275, align 8, !dbg !602, !tbaa !559
  br i1 %cmp270, label %cond.end283, label %if.else303, !dbg !601

cond.end283:                                      ; preds = %if.then235
  %call285 = call double @fabs(double %68) #9, !dbg !602
  call void @llvm.dbg.value(metadata !{double %call285}, i64 0, metadata !198), !dbg !602
  %idxprom288 = sext i32 %add254 to i64, !dbg !602
  %arrayidx289 = getelementptr inbounds double* %6, i64 %idxprom288, !dbg !602
  %69 = load double* %arrayidx289, align 8, !dbg !602, !tbaa !559
  %call302 = call double @fabs(double %69) #9, !dbg !602
  call void @llvm.dbg.value(metadata !{double %call302}, i64 0, metadata !197), !dbg !602
  br label %if.end364, !dbg !602

if.else303:                                       ; preds = %if.then235
  %mul312 = fmul double %68, %68, !dbg !604
  %conv313 = sitofp i32 %dy.0 to double, !dbg !604
  %arrayidx315 = getelementptr inbounds double* %10, i64 %idxprom274, !dbg !604
  %70 = load double* %arrayidx315, align 8, !dbg !604, !tbaa !559
  %mul316 = fmul double %conv313, %70, !dbg !604
  %mul321 = fmul double %mul316, %mul316, !dbg !604
  %add322 = fadd double %mul312, %mul321, !dbg !604
  %arrayidx325 = getelementptr inbounds double* %14, i64 %idxprom274, !dbg !604
  %71 = load double* %arrayidx325, align 8, !dbg !604, !tbaa !559
  %mul326 = fmul double %conv687, %71, !dbg !604
  %mul331 = fmul double %mul326, %mul326, !dbg !604
  %add332 = fadd double %add322, %mul331, !dbg !604
  %call333 = call double @sqrt(double %add332) #7, !dbg !604
  call void @llvm.dbg.value(metadata !{double %call333}, i64 0, metadata !198), !dbg !604
  %idxprom335 = sext i32 %add254 to i64, !dbg !604
  %arrayidx336 = getelementptr inbounds double* %6, i64 %idxprom335, !dbg !604
  %72 = load double* %arrayidx336, align 8, !dbg !604, !tbaa !559
  %mul342 = fmul double %72, %72, !dbg !604
  %arrayidx345 = getelementptr inbounds double* %10, i64 %idxprom335, !dbg !604
  %73 = load double* %arrayidx345, align 8, !dbg !604, !tbaa !559
  %mul346 = fmul double %conv313, %73, !dbg !604
  %mul351 = fmul double %mul346, %mul346, !dbg !604
  %add352 = fadd double %mul342, %mul351, !dbg !604
  %arrayidx355 = getelementptr inbounds double* %14, i64 %idxprom335, !dbg !604
  %74 = load double* %arrayidx355, align 8, !dbg !604, !tbaa !559
  %mul356 = fmul double %conv687, %74, !dbg !604
  %mul361 = fmul double %mul356, %mul356, !dbg !604
  %add362 = fadd double %add352, %mul361, !dbg !604
  %call363 = call double @sqrt(double %add362) #7, !dbg !604
  call void @llvm.dbg.value(metadata !{double %call363}, i64 0, metadata !197), !dbg !604
  br label %if.end364

if.end364:                                        ; preds = %if.else303, %cond.end283
  %u_dst.0 = phi double [ %call285, %cond.end283 ], [ %call333, %if.else303 ]
  %u_src.0 = phi double [ %call302, %cond.end283 ], [ %call363, %if.else303 ]
  %mul365 = fmul double %conv, %67, !dbg !601
  %add366 = fadd double %u_dst.0, %u_src.0, !dbg !601
  %mul367 = fmul double %mul365, %add366, !dbg !601
  %idxprom368 = sext i32 %add254 to i64, !dbg !601
  %arrayidx369 = getelementptr inbounds double* %18, i64 %idxprom368, !dbg !601
  %75 = load double* %arrayidx369, align 8, !dbg !601, !tbaa !559
  %arrayidx371 = getelementptr inbounds double* %18, i64 %idxprom274, !dbg !601
  %76 = load double* %arrayidx371, align 8, !dbg !601, !tbaa !559
  %add372 = fadd double %75, %76, !dbg !601
  %mul378 = fmul double %add372, %add372, !dbg !601
  %div = fdiv double %mul367, %mul378, !dbg !601
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !199), !dbg !601
  %77 = load i8**** %data, align 8, !dbg !601, !tbaa !547
  %arrayidx381 = getelementptr inbounds i8*** %77, i64 %indvars.iv8600, !dbg !601
  %78 = load i8*** %arrayidx381, align 8, !dbg !601, !tbaa !547
  %79 = load i8** %78, align 8, !dbg !601, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %79}, i64 0, metadata !187), !dbg !601
  %mul383 = fmul double %div, 2.000000e+00, !dbg !601
  %mul384 = fmul double %mul383, %finf, !dbg !601
  %arrayidx386 = getelementptr inbounds i8* %79, i64 %idxprom368, !dbg !601
  %80 = load i8* %arrayidx386, align 1, !dbg !601, !tbaa !536
  %conv387 = zext i8 %80 to i32, !dbg !601
  %conv388 = sitofp i32 %conv387 to double, !dbg !601
  %sub389 = fsub double 1.000000e+00, %div, !dbg !601
  %mul390 = fmul double %sub389, %conv388, !dbg !601
  %add391 = fadd double %mul384, %mul390, !dbg !601
  %add392 = fadd double %div, 1.000000e+00, !dbg !601
  %div393 = fdiv double %add391, %add392, !dbg !601
  %conv394 = fptoui double %div393 to i8, !dbg !601
  %arrayidx396 = getelementptr inbounds i8* %79, i64 %idxprom274, !dbg !601
  store i8 %conv394, i8* %arrayidx396, align 1, !dbg !601, !tbaa !536
  br label %if.end397, !dbg !598

if.end397:                                        ; preds = %if.end232, %if.end364
  %tobool398 = icmp ne i32 %dy.0, 0, !dbg !578
  %tobool398.not = xor i1 %tobool398, true, !dbg !578
  %or.cond = and i1 %tobool400, %tobool398.not, !dbg !578
  br i1 %or.cond, label %if.end583, label %if.then401, !dbg !578

if.then401:                                       ; preds = %if.end397
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !606
  %81 = load i32** %cctk_lsh174, align 8, !dbg !607, !tbaa !547
  %82 = load i32* %81, align 4, !dbg !607, !tbaa !535
  %arrayidx405 = getelementptr inbounds i32* %81, i64 1, !dbg !607
  %83 = load i32* %arrayidx405, align 4, !dbg !607, !tbaa !535
  %ispos8302 = icmp sgt i32 %dy.0, -1, !dbg !607
  %neg8303 = sub i32 0, %dy.0, !dbg !607
  %84 = select i1 %ispos8302, i32 %dy.0, i32 %neg8303, !dbg !607
  call void @llvm.dbg.value(metadata !{double %85}, i64 0, metadata !186), !dbg !607
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !174), !dbg !609
  %sub4338489 = add nsw i32 %82, -1, !dbg !609
  %cmp4348490 = icmp sgt i32 %sub4338489, 1, !dbg !609
  br i1 %cmp4348490, label %for.body436.lr.ph, label %if.end583, !dbg !609

for.body436.lr.ph:                                ; preds = %if.then401
  %mul423 = shl nsw i32 %84, 1, !dbg !607
  %add427 = add nsw i32 %mul423, %mul617, !dbg !607
  %idxprom428 = sext i32 %add427 to i64, !dbg !607
  %arrayidx429 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom428, !dbg !607
  %85 = load double* %arrayidx429, align 16, !dbg !607, !tbaa !559
  %add445 = add nsw i32 %84, %57, !dbg !610
  %cmp446 = icmp eq i32 %add445, 1, !dbg !610
  %.8331 = select i1 %tobool398, double* %10, double* %14, !dbg !611
  %mul545 = fmul double %conv, %85, !dbg !610
  %conv493 = sitofp i32 %dy.0 to double, !dbg !613
  %86 = mul i32 %indvars.iv8584, %83, !dbg !609
  %87 = add i32 %indvars.iv8582, %86, !dbg !609
  %88 = mul i32 %82, %87, !dbg !609
  %89 = sext i32 %88 to i64, !dbg !576
  %90 = add i32 %dy.0, %indvars.iv8582, !dbg !609
  %91 = mul i32 %add607, %83, !dbg !609
  %92 = add i32 %90, %91, !dbg !609
  %93 = mul i32 %82, %92, !dbg !609
  %94 = sext i32 %93 to i64, !dbg !609
  br label %for.body436, !dbg !609

for.body436:                                      ; preds = %for.body436.lr.ph, %if.end544
  %indvars.iv8588 = phi i64 [ %94, %for.body436.lr.ph ], [ %indvars.iv.next8589, %if.end544 ], !dbg !609
  %indvars.iv8586 = phi i64 [ %89, %for.body436.lr.ph ], [ %indvars.iv.next8587, %if.end544 ], !dbg !576
  %i.08491 = phi i32 [ 1, %for.body436.lr.ph ], [ %inc579, %if.end544 ]
  %indvars.iv.next8589 = add i64 %indvars.iv8588, 1, !dbg !609
  %indvars.iv.next8587 = add i64 %indvars.iv8586, 1, !dbg !609
  br i1 %cmp446, label %cond.false453, label %if.else483, !dbg !610

cond.false453:                                    ; preds = %for.body436
  %cond464.in = getelementptr inbounds double* %.8331, i64 %indvars.iv.next8587, !dbg !611
  %cond464 = load double* %cond464.in, align 8, !dbg !611
  %call465 = call double @fabs(double %cond464) #9, !dbg !611
  call void @llvm.dbg.value(metadata !{double %call465}, i64 0, metadata !206), !dbg !611
  %cond481.in = getelementptr inbounds double* %.8331, i64 %indvars.iv.next8589, !dbg !611
  %cond481 = load double* %cond481.in, align 8, !dbg !611
  %call482 = call double @fabs(double %cond481) #9, !dbg !611
  call void @llvm.dbg.value(metadata !{double %call482}, i64 0, metadata !205), !dbg !611
  br label %if.end544, !dbg !611

if.else483:                                       ; preds = %for.body436
  %arrayidx486 = getelementptr inbounds double* %6, i64 %indvars.iv.next8587, !dbg !613
  %95 = load double* %arrayidx486, align 8, !dbg !613, !tbaa !559
  %mul487 = fmul double %95, 0.000000e+00, !dbg !613
  %mul492 = fmul double %mul487, %mul487, !dbg !613
  %arrayidx495 = getelementptr inbounds double* %10, i64 %indvars.iv.next8587, !dbg !613
  %96 = load double* %arrayidx495, align 8, !dbg !613, !tbaa !559
  %mul496 = fmul double %conv493, %96, !dbg !613
  %mul501 = fmul double %mul496, %mul496, !dbg !613
  %add502 = fadd double %mul492, %mul501, !dbg !613
  %arrayidx505 = getelementptr inbounds double* %14, i64 %indvars.iv.next8587, !dbg !613
  %97 = load double* %arrayidx505, align 8, !dbg !613, !tbaa !559
  %mul506 = fmul double %conv687, %97, !dbg !613
  %mul511 = fmul double %mul506, %mul506, !dbg !613
  %add512 = fadd double %add502, %mul511, !dbg !613
  %call513 = call double @sqrt(double %add512) #7, !dbg !613
  call void @llvm.dbg.value(metadata !{double %call513}, i64 0, metadata !206), !dbg !613
  %arrayidx516 = getelementptr inbounds double* %6, i64 %indvars.iv.next8589, !dbg !613
  %98 = load double* %arrayidx516, align 8, !dbg !613, !tbaa !559
  %mul517 = fmul double %98, 0.000000e+00, !dbg !613
  %mul522 = fmul double %mul517, %mul517, !dbg !613
  %arrayidx525 = getelementptr inbounds double* %10, i64 %indvars.iv.next8589, !dbg !613
  %99 = load double* %arrayidx525, align 8, !dbg !613, !tbaa !559
  %mul526 = fmul double %conv493, %99, !dbg !613
  %mul531 = fmul double %mul526, %mul526, !dbg !613
  %add532 = fadd double %mul522, %mul531, !dbg !613
  %arrayidx535 = getelementptr inbounds double* %14, i64 %indvars.iv.next8589, !dbg !613
  %100 = load double* %arrayidx535, align 8, !dbg !613, !tbaa !559
  %mul536 = fmul double %conv687, %100, !dbg !613
  %mul541 = fmul double %mul536, %mul536, !dbg !613
  %add542 = fadd double %add532, %mul541, !dbg !613
  %call543 = call double @sqrt(double %add542) #7, !dbg !613
  call void @llvm.dbg.value(metadata !{double %call543}, i64 0, metadata !205), !dbg !613
  br label %if.end544

if.end544:                                        ; preds = %if.else483, %cond.false453
  %u_dst439.0 = phi double [ %call465, %cond.false453 ], [ %call513, %if.else483 ]
  %u_src438.0 = phi double [ %call482, %cond.false453 ], [ %call543, %if.else483 ]
  %add546 = fadd double %u_dst439.0, %u_src438.0, !dbg !610
  %mul547 = fmul double %mul545, %add546, !dbg !610
  %arrayidx549 = getelementptr inbounds double* %18, i64 %indvars.iv.next8589, !dbg !610
  %101 = load double* %arrayidx549, align 8, !dbg !610, !tbaa !559
  %arrayidx551 = getelementptr inbounds double* %18, i64 %indvars.iv.next8587, !dbg !610
  %102 = load double* %arrayidx551, align 8, !dbg !610, !tbaa !559
  %add552 = fadd double %101, %102, !dbg !610
  %mul558 = fmul double %add552, %add552, !dbg !610
  %div559 = fdiv double %mul547, %mul558, !dbg !610
  call void @llvm.dbg.value(metadata !{double %div559}, i64 0, metadata !207), !dbg !610
  %103 = load i8**** %data, align 8, !dbg !610, !tbaa !547
  %arrayidx562 = getelementptr inbounds i8*** %103, i64 %indvars.iv8600, !dbg !610
  %104 = load i8*** %arrayidx562, align 8, !dbg !610, !tbaa !547
  %105 = load i8** %104, align 8, !dbg !610, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %105}, i64 0, metadata !200), !dbg !610
  %mul564 = fmul double %div559, 2.000000e+00, !dbg !610
  %mul565 = fmul double %mul564, %finf, !dbg !610
  %arrayidx567 = getelementptr inbounds i8* %105, i64 %indvars.iv.next8589, !dbg !610
  %106 = load i8* %arrayidx567, align 1, !dbg !610, !tbaa !536
  %conv568 = zext i8 %106 to i32, !dbg !610
  %conv569 = sitofp i32 %conv568 to double, !dbg !610
  %sub570 = fsub double 1.000000e+00, %div559, !dbg !610
  %mul571 = fmul double %sub570, %conv569, !dbg !610
  %add572 = fadd double %mul565, %mul571, !dbg !610
  %add573 = fadd double %div559, 1.000000e+00, !dbg !610
  %div574 = fdiv double %add572, %add573, !dbg !610
  %conv575 = fptoui double %div574 to i8, !dbg !610
  %arrayidx577 = getelementptr inbounds i8* %105, i64 %indvars.iv.next8587, !dbg !610
  store i8 %conv575, i8* %arrayidx577, align 1, !dbg !610, !tbaa !536
  %inc579 = add nsw i32 %i.08491, 1, !dbg !609
  call void @llvm.dbg.value(metadata !{i32 %inc579}, i64 0, metadata !174), !dbg !609
  %107 = load i32** %cctk_lsh174, align 8, !dbg !609, !tbaa !547
  %108 = load i32* %107, align 4, !dbg !609, !tbaa !535
  %sub433 = add nsw i32 %108, -1, !dbg !609
  %cmp434 = icmp slt i32 %inc579, %sub433, !dbg !609
  br i1 %cmp434, label %for.body436, label %if.end583, !dbg !609

if.end583:                                        ; preds = %if.then401, %if.end544, %if.end397
  %tobool585 = icmp ult i64 %63, 4294967296, !dbg !578
  br i1 %tobool585, label %for.inc763, label %if.then586, !dbg !578

if.then586:                                       ; preds = %if.end583
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !181), !dbg !615
  %109 = load i32** %cctk_lsh174, align 8, !dbg !590, !tbaa !547
  %110 = load i32* %109, align 4, !dbg !590, !tbaa !535
  %sub589 = add nsw i32 %110, -1, !dbg !590
  %arrayidx593 = getelementptr inbounds i32* %109, i64 1, !dbg !590
  %111 = load i32* %arrayidx593, align 4, !dbg !590, !tbaa !535
  %mul594 = mul nsw i32 %111, %indvars.iv8584, !dbg !590
  %add595 = add nsw i32 %mul594, %indvars.iv8582, !dbg !590
  %mul596 = mul nsw i32 %add595, %110, !dbg !590
  %add597 = add nsw i32 %sub589, %mul596, !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %add597}, i64 0, metadata !185), !dbg !590
  %add601 = add nsw i32 %110, -2, !dbg !590
  %add604 = add nsw i32 %dy.0, %indvars.iv8582, !dbg !590
  %mul608 = mul nsw i32 %111, %add607, !dbg !590
  %add609 = add nsw i32 %add604, %mul608, !dbg !590
  %mul610 = mul nsw i32 %add609, %110, !dbg !590
  %add611 = add nsw i32 %add601, %mul610, !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %add611}, i64 0, metadata !184), !dbg !590
  %ispos8297 = icmp sgt i32 %dy.0, -1, !dbg !590
  %neg8298 = sub i32 0, %dy.0, !dbg !590
  %112 = select i1 %ispos8297, i32 %dy.0, i32 %neg8298, !dbg !590
  %mul614 = shl nsw i32 %112, 1, !dbg !590
  %add6158299 = or i32 %mul614, 1, !dbg !590
  %add618 = add nsw i32 %add6158299, %mul617, !dbg !590
  %idxprom619 = sext i32 %add618 to i64, !dbg !590
  %arrayidx620 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom619, !dbg !590
  %113 = load double* %arrayidx620, align 8, !dbg !590, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %113}, i64 0, metadata !186), !dbg !590
  %add629 = add i32 %add627, %112, !dbg !592
  %cmp630 = icmp eq i32 %add629, 1, !dbg !592
  %idxprom635 = sext i32 %add597 to i64, !dbg !616
  %arrayidx636 = getelementptr inbounds double* %6, i64 %idxprom635, !dbg !616
  %114 = load double* %arrayidx636, align 8, !dbg !616, !tbaa !559
  br i1 %cmp630, label %cond.end647, label %if.else667, !dbg !592

cond.end647:                                      ; preds = %if.then586
  %call649 = call double @fabs(double %114) #9, !dbg !616
  call void @llvm.dbg.value(metadata !{double %call649}, i64 0, metadata !212), !dbg !616
  %idxprom652 = sext i32 %add611 to i64, !dbg !616
  %arrayidx653 = getelementptr inbounds double* %6, i64 %idxprom652, !dbg !616
  %115 = load double* %arrayidx653, align 8, !dbg !616, !tbaa !559
  %call666 = call double @fabs(double %115) #9, !dbg !616
  call void @llvm.dbg.value(metadata !{double %call666}, i64 0, metadata !211), !dbg !616
  br label %if.end728, !dbg !616

if.else667:                                       ; preds = %if.then586
  %mul671 = fmul double %114, -1.000000e+00, !dbg !593
  %mul676 = fmul double %mul671, %mul671, !dbg !593
  %conv677 = sitofp i32 %dy.0 to double, !dbg !593
  %arrayidx679 = getelementptr inbounds double* %10, i64 %idxprom635, !dbg !593
  %116 = load double* %arrayidx679, align 8, !dbg !593, !tbaa !559
  %mul680 = fmul double %conv677, %116, !dbg !593
  %mul685 = fmul double %mul680, %mul680, !dbg !593
  %add686 = fadd double %mul676, %mul685, !dbg !593
  %arrayidx689 = getelementptr inbounds double* %14, i64 %idxprom635, !dbg !593
  %117 = load double* %arrayidx689, align 8, !dbg !593, !tbaa !559
  %mul690 = fmul double %conv687, %117, !dbg !593
  %mul695 = fmul double %mul690, %mul690, !dbg !593
  %add696 = fadd double %add686, %mul695, !dbg !593
  %call697 = call double @sqrt(double %add696) #7, !dbg !593
  call void @llvm.dbg.value(metadata !{double %call697}, i64 0, metadata !212), !dbg !593
  %idxprom699 = sext i32 %add611 to i64, !dbg !593
  %arrayidx700 = getelementptr inbounds double* %6, i64 %idxprom699, !dbg !593
  %118 = load double* %arrayidx700, align 8, !dbg !593, !tbaa !559
  %mul701 = fmul double %118, -1.000000e+00, !dbg !593
  %mul706 = fmul double %mul701, %mul701, !dbg !593
  %arrayidx709 = getelementptr inbounds double* %10, i64 %idxprom699, !dbg !593
  %119 = load double* %arrayidx709, align 8, !dbg !593, !tbaa !559
  %mul710 = fmul double %conv677, %119, !dbg !593
  %mul715 = fmul double %mul710, %mul710, !dbg !593
  %add716 = fadd double %mul706, %mul715, !dbg !593
  %arrayidx719 = getelementptr inbounds double* %14, i64 %idxprom699, !dbg !593
  %120 = load double* %arrayidx719, align 8, !dbg !593, !tbaa !559
  %mul720 = fmul double %conv687, %120, !dbg !593
  %mul725 = fmul double %mul720, %mul720, !dbg !593
  %add726 = fadd double %add716, %mul725, !dbg !593
  %call727 = call double @sqrt(double %add726) #7, !dbg !593
  call void @llvm.dbg.value(metadata !{double %call727}, i64 0, metadata !211), !dbg !593
  br label %if.end728

if.end728:                                        ; preds = %if.else667, %cond.end647
  %u_dst623.0 = phi double [ %call649, %cond.end647 ], [ %call697, %if.else667 ]
  %u_src622.0 = phi double [ %call666, %cond.end647 ], [ %call727, %if.else667 ]
  %mul729 = fmul double %conv, %113, !dbg !592
  %add730 = fadd double %u_dst623.0, %u_src622.0, !dbg !592
  %mul731 = fmul double %mul729, %add730, !dbg !592
  %idxprom732 = sext i32 %add611 to i64, !dbg !592
  %arrayidx733 = getelementptr inbounds double* %18, i64 %idxprom732, !dbg !592
  %121 = load double* %arrayidx733, align 8, !dbg !592, !tbaa !559
  %arrayidx735 = getelementptr inbounds double* %18, i64 %idxprom635, !dbg !592
  %122 = load double* %arrayidx735, align 8, !dbg !592, !tbaa !559
  %add736 = fadd double %121, %122, !dbg !592
  %mul742 = fmul double %add736, %add736, !dbg !592
  %div743 = fdiv double %mul731, %mul742, !dbg !592
  call void @llvm.dbg.value(metadata !{double %div743}, i64 0, metadata !213), !dbg !592
  %123 = load i8**** %data, align 8, !dbg !592, !tbaa !547
  %arrayidx746 = getelementptr inbounds i8*** %123, i64 %indvars.iv8600, !dbg !592
  %124 = load i8*** %arrayidx746, align 8, !dbg !592, !tbaa !547
  %125 = load i8** %124, align 8, !dbg !592, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %125}, i64 0, metadata !208), !dbg !592
  %mul748 = fmul double %div743, 2.000000e+00, !dbg !592
  %mul749 = fmul double %mul748, %finf, !dbg !592
  %arrayidx751 = getelementptr inbounds i8* %125, i64 %idxprom732, !dbg !592
  %126 = load i8* %arrayidx751, align 1, !dbg !592, !tbaa !536
  %conv752 = zext i8 %126 to i32, !dbg !592
  %conv753 = sitofp i32 %conv752 to double, !dbg !592
  %sub754 = fsub double 1.000000e+00, %div743, !dbg !592
  %mul755 = fmul double %sub754, %conv753, !dbg !592
  %add756 = fadd double %mul749, %mul755, !dbg !592
  %add757 = fadd double %div743, 1.000000e+00, !dbg !592
  %div758 = fdiv double %add756, %add757, !dbg !592
  %conv759 = fptoui double %div758 to i8, !dbg !592
  %arrayidx761 = getelementptr inbounds i8* %125, i64 %idxprom635, !dbg !592
  store i8 %conv759, i8* %arrayidx761, align 1, !dbg !592, !tbaa !536
  br label %for.inc763, !dbg !615

for.inc763:                                       ; preds = %if.end583, %if.end728
  %indvars.iv.next8583 = add i32 %indvars.iv8582, 1, !dbg !587
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8583}, i64 0, metadata !179), !dbg !587
  %127 = load i32** %cctk_lsh174, align 8, !dbg !587, !tbaa !547
  %arrayidx211 = getelementptr inbounds i32* %127, i64 1, !dbg !587
  %128 = load i32* %arrayidx211, align 4, !dbg !587, !tbaa !535
  %cmp212 = icmp slt i32 %indvars.iv.next8583, %128, !dbg !587
  br i1 %cmp212, label %for.body214, label %for.cond209.for.inc766.loopexit_crit_edge, !dbg !587

for.cond209.for.inc766.loopexit_crit_edge:        ; preds = %for.inc763
  %arrayidx175.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %127, i64 2
  %.pre8617.pre = load i32* %arrayidx175.phi.trans.insert.phi.trans.insert, align 4, !dbg !576, !tbaa !535
  br label %for.inc766, !dbg !587

for.inc766:                                       ; preds = %if.end208, %for.cond209.for.inc766.loopexit_crit_edge, %land.lhs.true, %land.lhs.true187
  %129 = phi i32 [ %50, %land.lhs.true187 ], [ %50, %land.lhs.true ], [ %.pre8617.pre, %for.cond209.for.inc766.loopexit_crit_edge ], [ %50, %if.end208 ], !dbg !576
  %130 = phi i32* [ %51, %land.lhs.true187 ], [ %51, %land.lhs.true ], [ %127, %for.cond209.for.inc766.loopexit_crit_edge ], [ %51, %if.end208 ], !dbg !576
  %indvars.iv.next8585 = add i32 %indvars.iv8584, 1, !dbg !576
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8585}, i64 0, metadata !180), !dbg !576
  %cmp176 = icmp slt i32 %indvars.iv.next8585, %129, !dbg !576
  br i1 %cmp176, label %for.body178, label %for.inc5726, !dbg !576

sw.bb769:                                         ; preds = %for.end167
  br i1 %cmp168, label %for.cond784.preheader, label %if.then781, !dbg !618

for.cond784.preheader:                            ; preds = %sw.bb769
  %131 = load i32** %cctk_lsh174, align 8, !dbg !619, !tbaa !547
  %arrayidx7868483 = getelementptr inbounds i32* %131, i64 2, !dbg !619
  %132 = load i32* %arrayidx7868483, align 4, !dbg !619, !tbaa !535
  %cmp7878484 = icmp sgt i32 %132, 0, !dbg !619
  br i1 %cmp7878484, label %for.body789, label %for.inc5726, !dbg !619

if.then781:                                       ; preds = %sw.bb769
  %call782 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 743, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !620
  br label %cleanup, !dbg !620

for.body789:                                      ; preds = %for.cond784.preheader, %for.inc1386
  %133 = phi i32 [ %216, %for.inc1386 ], [ %132, %for.cond784.preheader ]
  %134 = phi i32* [ %217, %for.inc1386 ], [ %131, %for.cond784.preheader ]
  %indvars.iv8576 = phi i32 [ %indvars.iv.next8577, %for.inc1386 ], [ 0, %for.cond784.preheader ], !dbg !622
  %cmp790 = icmp eq i32 %indvars.iv8576, 0, !dbg !623
  br i1 %cmp790, label %land.lhs.true792, label %lor.lhs.false795, !dbg !623

land.lhs.true792:                                 ; preds = %for.body789
  %135 = load i32* %arrayidx181, align 16, !dbg !623, !tbaa !535
  %tobool794 = icmp eq i32 %135, 0, !dbg !623
  br i1 %tobool794, label %for.inc1386, label %lor.lhs.false795, !dbg !623

lor.lhs.false795:                                 ; preds = %land.lhs.true792, %for.body789
  %sub798 = add nsw i32 %133, -1, !dbg !623
  %cmp799 = icmp eq i32 %indvars.iv8576, %sub798, !dbg !623
  br i1 %cmp799, label %land.lhs.true801, label %if.end805, !dbg !623

land.lhs.true801:                                 ; preds = %lor.lhs.false795
  %136 = load i32* %arrayidx188, align 4, !dbg !623, !tbaa !535
  %tobool803 = icmp eq i32 %136, 0, !dbg !623
  br i1 %tobool803, label %for.inc1386, label %if.end805, !dbg !623

if.end805:                                        ; preds = %land.lhs.true801, %lor.lhs.false795
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !623
  br i1 %cmp790, label %land.lhs.true808, label %if.else812, !dbg !623

land.lhs.true808:                                 ; preds = %if.end805
  %137 = load i32* %arrayidx181, align 16, !dbg !623, !tbaa !535
  %tobool810.not = icmp ne i32 %137, 0, !dbg !623
  %cmp799.not = xor i1 %cmp799, true, !dbg !623
  %brmerge8640 = or i1 %tobool810.not, %cmp799.not, !dbg !623
  %.mux8641 = zext i1 %tobool810.not to i32, !dbg !623
  br i1 %brmerge8640, label %if.end823, label %land.lhs.true818, !dbg !623

if.else812:                                       ; preds = %if.end805
  br i1 %cmp799, label %land.lhs.true818, label %if.end823, !dbg !623

land.lhs.true818:                                 ; preds = %land.lhs.true808, %if.else812
  %138 = load i32* %arrayidx188, align 4, !dbg !623, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !220), !dbg !624
  %not.tobool820 = icmp ne i32 %138, 0, !dbg !623
  %.8332 = sext i1 %not.tobool820 to i32, !dbg !623
  br label %if.end823, !dbg !623

if.end823:                                        ; preds = %land.lhs.true808, %land.lhs.true818, %if.else812
  %dz775.0 = phi i32 [ 0, %if.else812 ], [ %.mux8641, %land.lhs.true808 ], [ %.8332, %land.lhs.true818 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !622
  %arrayidx8268479 = getelementptr inbounds i32* %134, i64 1, !dbg !622
  %139 = load i32* %arrayidx8268479, align 4, !dbg !622, !tbaa !535
  %cmp8278480 = icmp sgt i32 %139, 0, !dbg !622
  br i1 %cmp8278480, label %for.body829.lr.ph, label %for.inc1386, !dbg !622

for.body829.lr.ph:                                ; preds = %if.end823
  %tobool1022 = icmp eq i32 %dz775.0, 0, !dbg !626
  %add1228 = add i32 %dz775.0, %indvars.iv8576, !dbg !627
  %ispos8286 = icmp sgt i32 %dz775.0, -1, !dbg !627
  %neg8287 = sub i32 0, %dz775.0, !dbg !627
  %140 = select i1 %ispos8286, i32 %dz775.0, i32 %neg8287, !dbg !627
  %mul1238 = shl nsw i32 %140, 2, !dbg !627
  %add1248 = add i32 %140, 1, !dbg !629
  %conv1308 = sitofp i32 %dz775.0 to double, !dbg !630
  br label %for.body829, !dbg !622

for.body829:                                      ; preds = %for.body829.lr.ph, %for.inc1383
  %141 = phi i32 [ %139, %for.body829.lr.ph ], [ %215, %for.inc1383 ]
  %142 = phi i32* [ %134, %for.body829.lr.ph ], [ %214, %for.inc1383 ]
  %indvars.iv8574 = phi i32 [ 0, %for.body829.lr.ph ], [ %indvars.iv.next8575, %for.inc1383 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !626
  %cmp830 = icmp eq i32 %indvars.iv8574, 0, !dbg !626
  br i1 %cmp830, label %land.lhs.true832, label %if.else836, !dbg !626

land.lhs.true832:                                 ; preds = %for.body829
  %143 = load i32* %arrayidx218, align 8, !dbg !626, !tbaa !535
  %tobool834 = icmp eq i32 %143, 0, !dbg !626
  br i1 %tobool834, label %if.else836, label %if.end847, !dbg !626

if.else836:                                       ; preds = %land.lhs.true832, %for.body829
  %sub839 = add nsw i32 %141, -1, !dbg !626
  %cmp840 = icmp eq i32 %indvars.iv8574, %sub839, !dbg !626
  br i1 %cmp840, label %land.lhs.true842, label %if.end847, !dbg !626

land.lhs.true842:                                 ; preds = %if.else836
  %144 = load i32* %arrayidx228, align 4, !dbg !626, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !219), !dbg !632
  %not.tobool844 = icmp ne i32 %144, 0, !dbg !626
  %.8333 = sext i1 %not.tobool844 to i32, !dbg !626
  br label %if.end847, !dbg !626

if.end847:                                        ; preds = %if.else836, %land.lhs.true832, %land.lhs.true842
  %dy774.0 = phi i32 [ %.8333, %land.lhs.true842 ], [ 1, %land.lhs.true832 ], [ 0, %if.else836 ]
  %145 = bitcast [6 x i32]* %doBC to i64*, !dbg !626
  %146 = load i64* %145, align 16, !dbg !626
  %147 = trunc i64 %146 to i32, !dbg !626
  %tobool849 = icmp eq i32 %147, 0, !dbg !626
  br i1 %tobool849, label %if.end1019, label %if.then850, !dbg !626

if.then850:                                       ; preds = %if.end847
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !218), !dbg !634
  %148 = load i32* %142, align 4, !dbg !635, !tbaa !535
  %mul855 = mul nsw i32 %141, %indvars.iv8576, !dbg !635
  %add856 = add nsw i32 %mul855, %indvars.iv8574, !dbg !635
  %mul857 = mul nsw i32 %add856, %148, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %mul857}, i64 0, metadata !222), !dbg !635
  %add862 = add nsw i32 %dy774.0, %indvars.iv8574, !dbg !635
  %mul866 = mul nsw i32 %141, %add1228, !dbg !635
  %add867 = add nsw i32 %add862, %mul866, !dbg !635
  %mul868 = mul nsw i32 %add867, %148, !dbg !635
  %add869 = add nsw i32 %mul868, 1, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %add869}, i64 0, metadata !221), !dbg !635
  %ispos8292 = icmp sgt i32 %dy774.0, -1, !dbg !635
  %neg8293 = sub i32 0, %dy774.0, !dbg !635
  %149 = select i1 %ispos8292, i32 %dy774.0, i32 %neg8293, !dbg !635
  %mul872 = shl nsw i32 %149, 1, !dbg !635
  %add8738294 = or i32 %mul872, 1, !dbg !635
  %add876 = add nsw i32 %add8738294, %mul1238, !dbg !635
  %idxprom877 = sext i32 %add876 to i64, !dbg !635
  %arrayidx878 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom877, !dbg !635
  %150 = load double* %arrayidx878, align 8, !dbg !635, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %150}, i64 0, metadata !223), !dbg !635
  %add887 = add i32 %add1248, %149, !dbg !637
  %cmp888 = icmp eq i32 %add887, 1, !dbg !637
  %idxprom893 = sext i32 %mul857 to i64, !dbg !638
  %arrayidx894 = getelementptr inbounds double* %6, i64 %idxprom893, !dbg !638
  %151 = load double* %arrayidx894, align 8, !dbg !638, !tbaa !559
  br i1 %cmp888, label %cond.end905, label %if.else925, !dbg !637

cond.end905:                                      ; preds = %if.then850
  %call907 = call double @fabs(double %151) #9, !dbg !638
  call void @llvm.dbg.value(metadata !{double %call907}, i64 0, metadata !232), !dbg !638
  %idxprom910 = sext i32 %add869 to i64, !dbg !638
  %arrayidx911 = getelementptr inbounds double* %6, i64 %idxprom910, !dbg !638
  %152 = load double* %arrayidx911, align 8, !dbg !638, !tbaa !559
  %call924 = call double @fabs(double %152) #9, !dbg !638
  call void @llvm.dbg.value(metadata !{double %call924}, i64 0, metadata !231), !dbg !638
  br label %if.end986, !dbg !638

if.else925:                                       ; preds = %if.then850
  %mul934 = fmul double %151, %151, !dbg !640
  %conv935 = sitofp i32 %dy774.0 to double, !dbg !640
  %arrayidx937 = getelementptr inbounds double* %10, i64 %idxprom893, !dbg !640
  %153 = load double* %arrayidx937, align 8, !dbg !640, !tbaa !559
  %mul938 = fmul double %conv935, %153, !dbg !640
  %mul943 = fmul double %mul938, %mul938, !dbg !640
  %add944 = fadd double %mul934, %mul943, !dbg !640
  %arrayidx947 = getelementptr inbounds double* %14, i64 %idxprom893, !dbg !640
  %154 = load double* %arrayidx947, align 8, !dbg !640, !tbaa !559
  %mul948 = fmul double %conv1308, %154, !dbg !640
  %mul953 = fmul double %mul948, %mul948, !dbg !640
  %add954 = fadd double %add944, %mul953, !dbg !640
  %call955 = call double @sqrt(double %add954) #7, !dbg !640
  call void @llvm.dbg.value(metadata !{double %call955}, i64 0, metadata !232), !dbg !640
  %idxprom957 = sext i32 %add869 to i64, !dbg !640
  %arrayidx958 = getelementptr inbounds double* %6, i64 %idxprom957, !dbg !640
  %155 = load double* %arrayidx958, align 8, !dbg !640, !tbaa !559
  %mul964 = fmul double %155, %155, !dbg !640
  %arrayidx967 = getelementptr inbounds double* %10, i64 %idxprom957, !dbg !640
  %156 = load double* %arrayidx967, align 8, !dbg !640, !tbaa !559
  %mul968 = fmul double %conv935, %156, !dbg !640
  %mul973 = fmul double %mul968, %mul968, !dbg !640
  %add974 = fadd double %mul964, %mul973, !dbg !640
  %arrayidx977 = getelementptr inbounds double* %14, i64 %idxprom957, !dbg !640
  %157 = load double* %arrayidx977, align 8, !dbg !640, !tbaa !559
  %mul978 = fmul double %conv1308, %157, !dbg !640
  %mul983 = fmul double %mul978, %mul978, !dbg !640
  %add984 = fadd double %add974, %mul983, !dbg !640
  %call985 = call double @sqrt(double %add984) #7, !dbg !640
  call void @llvm.dbg.value(metadata !{double %call985}, i64 0, metadata !231), !dbg !640
  br label %if.end986

if.end986:                                        ; preds = %if.else925, %cond.end905
  %u_dst881.0 = phi double [ %call907, %cond.end905 ], [ %call955, %if.else925 ]
  %u_src880.0 = phi double [ %call924, %cond.end905 ], [ %call985, %if.else925 ]
  %mul987 = fmul double %conv, %150, !dbg !637
  %add988 = fadd double %u_dst881.0, %u_src880.0, !dbg !637
  %mul989 = fmul double %mul987, %add988, !dbg !637
  %idxprom990 = sext i32 %add869 to i64, !dbg !637
  %arrayidx991 = getelementptr inbounds double* %18, i64 %idxprom990, !dbg !637
  %158 = load double* %arrayidx991, align 8, !dbg !637, !tbaa !559
  %arrayidx993 = getelementptr inbounds double* %18, i64 %idxprom893, !dbg !637
  %159 = load double* %arrayidx993, align 8, !dbg !637, !tbaa !559
  %add994 = fadd double %158, %159, !dbg !637
  %mul1000 = fmul double %add994, %add994, !dbg !637
  %div1001 = fdiv double %mul989, %mul1000, !dbg !637
  call void @llvm.dbg.value(metadata !{double %div1001}, i64 0, metadata !233), !dbg !637
  %160 = load i8**** %data, align 8, !dbg !637, !tbaa !547
  %arrayidx1004 = getelementptr inbounds i8*** %160, i64 %indvars.iv8600, !dbg !637
  %161 = load i8*** %arrayidx1004, align 8, !dbg !637, !tbaa !547
  %162 = load i8** %161, align 8, !dbg !637, !tbaa !547
  %163 = bitcast i8* %162 to i32*, !dbg !637
  call void @llvm.dbg.value(metadata !{i32* %163}, i64 0, metadata !224), !dbg !637
  %mul1006 = fmul double %div1001, 2.000000e+00, !dbg !637
  %mul1007 = fmul double %mul1006, %finf, !dbg !637
  %arrayidx1009 = getelementptr inbounds i32* %163, i64 %idxprom990, !dbg !637
  %164 = load i32* %arrayidx1009, align 4, !dbg !637, !tbaa !535
  %conv1010 = sitofp i32 %164 to double, !dbg !637
  %sub1011 = fsub double 1.000000e+00, %div1001, !dbg !637
  %mul1012 = fmul double %sub1011, %conv1010, !dbg !637
  %add1013 = fadd double %mul1007, %mul1012, !dbg !637
  %add1014 = fadd double %div1001, 1.000000e+00, !dbg !637
  %div1015 = fdiv double %add1013, %add1014, !dbg !637
  %conv1016 = fptosi double %div1015 to i32, !dbg !637
  %arrayidx1018 = getelementptr inbounds i32* %163, i64 %idxprom893, !dbg !637
  store i32 %conv1016, i32* %arrayidx1018, align 4, !dbg !637, !tbaa !535
  br label %if.end1019, !dbg !634

if.end1019:                                       ; preds = %if.end847, %if.end986
  %tobool1020 = icmp ne i32 %dy774.0, 0, !dbg !626
  %tobool1020.not = xor i1 %tobool1020, true, !dbg !626
  %or.cond8334 = and i1 %tobool1022, %tobool1020.not, !dbg !626
  br i1 %or.cond8334, label %if.end1204, label %if.then1023, !dbg !626

if.then1023:                                      ; preds = %if.end1019
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !218), !dbg !642
  %165 = load i32** %cctk_lsh174, align 8, !dbg !643, !tbaa !547
  %166 = load i32* %165, align 4, !dbg !643, !tbaa !535
  %arrayidx1027 = getelementptr inbounds i32* %165, i64 1, !dbg !643
  %167 = load i32* %arrayidx1027, align 4, !dbg !643, !tbaa !535
  %ispos8288 = icmp sgt i32 %dy774.0, -1, !dbg !643
  %neg8289 = sub i32 0, %dy774.0, !dbg !643
  %168 = select i1 %ispos8288, i32 %dy774.0, i32 %neg8289, !dbg !643
  call void @llvm.dbg.value(metadata !{double %169}, i64 0, metadata !223), !dbg !643
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !214), !dbg !645
  %sub10558474 = add nsw i32 %166, -1, !dbg !645
  %cmp10568475 = icmp sgt i32 %sub10558474, 1, !dbg !645
  br i1 %cmp10568475, label %for.body1058.lr.ph, label %if.end1204, !dbg !645

for.body1058.lr.ph:                               ; preds = %if.then1023
  %mul1045 = shl nsw i32 %168, 1, !dbg !643
  %add1049 = add nsw i32 %mul1045, %mul1238, !dbg !643
  %idxprom1050 = sext i32 %add1049 to i64, !dbg !643
  %arrayidx1051 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom1050, !dbg !643
  %169 = load double* %arrayidx1051, align 16, !dbg !643, !tbaa !559
  %add1067 = add nsw i32 %168, %140, !dbg !646
  %cmp1068 = icmp eq i32 %add1067, 1, !dbg !646
  %.8335 = select i1 %tobool1020, double* %10, double* %14, !dbg !647
  %mul1167 = fmul double %conv, %169, !dbg !646
  %conv1115 = sitofp i32 %dy774.0 to double, !dbg !649
  %170 = mul i32 %indvars.iv8576, %167, !dbg !645
  %171 = add i32 %indvars.iv8574, %170, !dbg !645
  %172 = mul i32 %166, %171, !dbg !645
  %173 = sext i32 %172 to i64, !dbg !619
  %174 = add i32 %dy774.0, %indvars.iv8574, !dbg !645
  %175 = mul i32 %add1228, %167, !dbg !645
  %176 = add i32 %174, %175, !dbg !645
  %177 = mul i32 %166, %176, !dbg !645
  %178 = sext i32 %177 to i64, !dbg !645
  br label %for.body1058, !dbg !645

for.body1058:                                     ; preds = %for.body1058.lr.ph, %if.end1166
  %179 = phi i32* [ %165, %for.body1058.lr.ph ], [ %186, %if.end1166 ]
  %indvars.iv8580 = phi i64 [ %178, %for.body1058.lr.ph ], [ %indvars.iv.next8581, %if.end1166 ], !dbg !645
  %indvars.iv8578 = phi i64 [ %173, %for.body1058.lr.ph ], [ %indvars.iv.next8579, %if.end1166 ], !dbg !619
  %i770.08476 = phi i32 [ 1, %for.body1058.lr.ph ], [ %inc1200, %if.end1166 ]
  %indvars.iv.next8581 = add i64 %indvars.iv8580, 1, !dbg !645
  %indvars.iv.next8579 = add i64 %indvars.iv8578, 1, !dbg !645
  br i1 %cmp1068, label %cond.false1075, label %if.else1105, !dbg !646

cond.false1075:                                   ; preds = %for.body1058
  %cond1086.in = getelementptr inbounds double* %.8335, i64 %indvars.iv.next8579, !dbg !647
  %cond1086 = load double* %cond1086.in, align 8, !dbg !647
  %call1087 = call double @fabs(double %cond1086) #9, !dbg !647
  call void @llvm.dbg.value(metadata !{double %call1087}, i64 0, metadata !240), !dbg !647
  %cond1103.in = getelementptr inbounds double* %.8335, i64 %indvars.iv.next8581, !dbg !647
  %cond1103 = load double* %cond1103.in, align 8, !dbg !647
  %call1104 = call double @fabs(double %cond1103) #9, !dbg !647
  call void @llvm.dbg.value(metadata !{double %call1104}, i64 0, metadata !239), !dbg !647
  br label %if.end1166, !dbg !647

if.else1105:                                      ; preds = %for.body1058
  %arrayidx1108 = getelementptr inbounds double* %6, i64 %indvars.iv.next8579, !dbg !649
  %180 = load double* %arrayidx1108, align 8, !dbg !649, !tbaa !559
  %mul1109 = fmul double %180, 0.000000e+00, !dbg !649
  %mul1114 = fmul double %mul1109, %mul1109, !dbg !649
  %arrayidx1117 = getelementptr inbounds double* %10, i64 %indvars.iv.next8579, !dbg !649
  %181 = load double* %arrayidx1117, align 8, !dbg !649, !tbaa !559
  %mul1118 = fmul double %conv1115, %181, !dbg !649
  %mul1123 = fmul double %mul1118, %mul1118, !dbg !649
  %add1124 = fadd double %mul1114, %mul1123, !dbg !649
  %arrayidx1127 = getelementptr inbounds double* %14, i64 %indvars.iv.next8579, !dbg !649
  %182 = load double* %arrayidx1127, align 8, !dbg !649, !tbaa !559
  %mul1128 = fmul double %conv1308, %182, !dbg !649
  %mul1133 = fmul double %mul1128, %mul1128, !dbg !649
  %add1134 = fadd double %add1124, %mul1133, !dbg !649
  %call1135 = call double @sqrt(double %add1134) #7, !dbg !649
  call void @llvm.dbg.value(metadata !{double %call1135}, i64 0, metadata !240), !dbg !649
  %arrayidx1138 = getelementptr inbounds double* %6, i64 %indvars.iv.next8581, !dbg !649
  %183 = load double* %arrayidx1138, align 8, !dbg !649, !tbaa !559
  %mul1139 = fmul double %183, 0.000000e+00, !dbg !649
  %mul1144 = fmul double %mul1139, %mul1139, !dbg !649
  %arrayidx1147 = getelementptr inbounds double* %10, i64 %indvars.iv.next8581, !dbg !649
  %184 = load double* %arrayidx1147, align 8, !dbg !649, !tbaa !559
  %mul1148 = fmul double %conv1115, %184, !dbg !649
  %mul1153 = fmul double %mul1148, %mul1148, !dbg !649
  %add1154 = fadd double %mul1144, %mul1153, !dbg !649
  %arrayidx1157 = getelementptr inbounds double* %14, i64 %indvars.iv.next8581, !dbg !649
  %185 = load double* %arrayidx1157, align 8, !dbg !649, !tbaa !559
  %mul1158 = fmul double %conv1308, %185, !dbg !649
  %mul1163 = fmul double %mul1158, %mul1158, !dbg !649
  %add1164 = fadd double %add1154, %mul1163, !dbg !649
  %call1165 = call double @sqrt(double %add1164) #7, !dbg !649
  call void @llvm.dbg.value(metadata !{double %call1165}, i64 0, metadata !239), !dbg !649
  %.pre = load i32** %cctk_lsh174, align 8, !dbg !645, !tbaa !547
  br label %if.end1166

if.end1166:                                       ; preds = %if.else1105, %cond.false1075
  %186 = phi i32* [ %179, %cond.false1075 ], [ %.pre, %if.else1105 ], !dbg !646
  %u_dst1061.0 = phi double [ %call1087, %cond.false1075 ], [ %call1135, %if.else1105 ]
  %u_src1060.0 = phi double [ %call1104, %cond.false1075 ], [ %call1165, %if.else1105 ]
  %add1168 = fadd double %u_dst1061.0, %u_src1060.0, !dbg !646
  %mul1169 = fmul double %mul1167, %add1168, !dbg !646
  %arrayidx1171 = getelementptr inbounds double* %18, i64 %indvars.iv.next8581, !dbg !646
  %187 = load double* %arrayidx1171, align 8, !dbg !646, !tbaa !559
  %arrayidx1173 = getelementptr inbounds double* %18, i64 %indvars.iv.next8579, !dbg !646
  %188 = load double* %arrayidx1173, align 8, !dbg !646, !tbaa !559
  %add1174 = fadd double %187, %188, !dbg !646
  %mul1180 = fmul double %add1174, %add1174, !dbg !646
  %div1181 = fdiv double %mul1169, %mul1180, !dbg !646
  call void @llvm.dbg.value(metadata !{double %div1181}, i64 0, metadata !241), !dbg !646
  %189 = load i8**** %data, align 8, !dbg !646, !tbaa !547
  %arrayidx1184 = getelementptr inbounds i8*** %189, i64 %indvars.iv8600, !dbg !646
  %190 = load i8*** %arrayidx1184, align 8, !dbg !646, !tbaa !547
  %191 = load i8** %190, align 8, !dbg !646, !tbaa !547
  %192 = bitcast i8* %191 to i32*, !dbg !646
  call void @llvm.dbg.value(metadata !{i32* %192}, i64 0, metadata !234), !dbg !646
  %mul1186 = fmul double %div1181, 2.000000e+00, !dbg !646
  %mul1187 = fmul double %mul1186, %finf, !dbg !646
  %arrayidx1189 = getelementptr inbounds i32* %192, i64 %indvars.iv.next8581, !dbg !646
  %193 = load i32* %arrayidx1189, align 4, !dbg !646, !tbaa !535
  %conv1190 = sitofp i32 %193 to double, !dbg !646
  %sub1191 = fsub double 1.000000e+00, %div1181, !dbg !646
  %mul1192 = fmul double %sub1191, %conv1190, !dbg !646
  %add1193 = fadd double %mul1187, %mul1192, !dbg !646
  %add1194 = fadd double %div1181, 1.000000e+00, !dbg !646
  %div1195 = fdiv double %add1193, %add1194, !dbg !646
  %conv1196 = fptosi double %div1195 to i32, !dbg !646
  %arrayidx1198 = getelementptr inbounds i32* %192, i64 %indvars.iv.next8579, !dbg !646
  store i32 %conv1196, i32* %arrayidx1198, align 4, !dbg !646, !tbaa !535
  %inc1200 = add nsw i32 %i770.08476, 1, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %inc1200}, i64 0, metadata !214), !dbg !645
  %194 = load i32* %186, align 4, !dbg !645, !tbaa !535
  %sub1055 = add nsw i32 %194, -1, !dbg !645
  %cmp1056 = icmp slt i32 %inc1200, %sub1055, !dbg !645
  br i1 %cmp1056, label %for.body1058, label %if.end1204, !dbg !645

if.end1204:                                       ; preds = %if.then1023, %if.end1166, %if.end1019
  %tobool1206 = icmp ult i64 %146, 4294967296, !dbg !626
  br i1 %tobool1206, label %for.inc1383, label %if.then1207, !dbg !626

if.then1207:                                      ; preds = %if.end1204
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !218), !dbg !651
  %195 = load i32** %cctk_lsh174, align 8, !dbg !627, !tbaa !547
  %196 = load i32* %195, align 4, !dbg !627, !tbaa !535
  %sub1210 = add nsw i32 %196, -1, !dbg !627
  %arrayidx1214 = getelementptr inbounds i32* %195, i64 1, !dbg !627
  %197 = load i32* %arrayidx1214, align 4, !dbg !627, !tbaa !535
  %mul1215 = mul nsw i32 %197, %indvars.iv8576, !dbg !627
  %add1216 = add nsw i32 %mul1215, %indvars.iv8574, !dbg !627
  %mul1217 = mul nsw i32 %add1216, %196, !dbg !627
  %add1218 = add nsw i32 %sub1210, %mul1217, !dbg !627
  call void @llvm.dbg.value(metadata !{i32 %add1218}, i64 0, metadata !222), !dbg !627
  %add1222 = add nsw i32 %196, -2, !dbg !627
  %add1225 = add nsw i32 %dy774.0, %indvars.iv8574, !dbg !627
  %mul1229 = mul nsw i32 %197, %add1228, !dbg !627
  %add1230 = add nsw i32 %add1225, %mul1229, !dbg !627
  %mul1231 = mul nsw i32 %add1230, %196, !dbg !627
  %add1232 = add nsw i32 %add1222, %mul1231, !dbg !627
  call void @llvm.dbg.value(metadata !{i32 %add1232}, i64 0, metadata !221), !dbg !627
  %ispos8283 = icmp sgt i32 %dy774.0, -1, !dbg !627
  %neg8284 = sub i32 0, %dy774.0, !dbg !627
  %198 = select i1 %ispos8283, i32 %dy774.0, i32 %neg8284, !dbg !627
  %mul1235 = shl nsw i32 %198, 1, !dbg !627
  %add12368285 = or i32 %mul1235, 1, !dbg !627
  %add1239 = add nsw i32 %add12368285, %mul1238, !dbg !627
  %idxprom1240 = sext i32 %add1239 to i64, !dbg !627
  %arrayidx1241 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom1240, !dbg !627
  %199 = load double* %arrayidx1241, align 8, !dbg !627, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %199}, i64 0, metadata !223), !dbg !627
  %add1250 = add i32 %add1248, %198, !dbg !629
  %cmp1251 = icmp eq i32 %add1250, 1, !dbg !629
  %idxprom1256 = sext i32 %add1218 to i64, !dbg !652
  %arrayidx1257 = getelementptr inbounds double* %6, i64 %idxprom1256, !dbg !652
  %200 = load double* %arrayidx1257, align 8, !dbg !652, !tbaa !559
  br i1 %cmp1251, label %cond.end1268, label %if.else1288, !dbg !629

cond.end1268:                                     ; preds = %if.then1207
  %call1270 = call double @fabs(double %200) #9, !dbg !652
  call void @llvm.dbg.value(metadata !{double %call1270}, i64 0, metadata !246), !dbg !652
  %idxprom1273 = sext i32 %add1232 to i64, !dbg !652
  %arrayidx1274 = getelementptr inbounds double* %6, i64 %idxprom1273, !dbg !652
  %201 = load double* %arrayidx1274, align 8, !dbg !652, !tbaa !559
  %call1287 = call double @fabs(double %201) #9, !dbg !652
  call void @llvm.dbg.value(metadata !{double %call1287}, i64 0, metadata !245), !dbg !652
  br label %if.end1349, !dbg !652

if.else1288:                                      ; preds = %if.then1207
  %mul1292 = fmul double %200, -1.000000e+00, !dbg !630
  %mul1297 = fmul double %mul1292, %mul1292, !dbg !630
  %conv1298 = sitofp i32 %dy774.0 to double, !dbg !630
  %arrayidx1300 = getelementptr inbounds double* %10, i64 %idxprom1256, !dbg !630
  %202 = load double* %arrayidx1300, align 8, !dbg !630, !tbaa !559
  %mul1301 = fmul double %conv1298, %202, !dbg !630
  %mul1306 = fmul double %mul1301, %mul1301, !dbg !630
  %add1307 = fadd double %mul1297, %mul1306, !dbg !630
  %arrayidx1310 = getelementptr inbounds double* %14, i64 %idxprom1256, !dbg !630
  %203 = load double* %arrayidx1310, align 8, !dbg !630, !tbaa !559
  %mul1311 = fmul double %conv1308, %203, !dbg !630
  %mul1316 = fmul double %mul1311, %mul1311, !dbg !630
  %add1317 = fadd double %add1307, %mul1316, !dbg !630
  %call1318 = call double @sqrt(double %add1317) #7, !dbg !630
  call void @llvm.dbg.value(metadata !{double %call1318}, i64 0, metadata !246), !dbg !630
  %idxprom1320 = sext i32 %add1232 to i64, !dbg !630
  %arrayidx1321 = getelementptr inbounds double* %6, i64 %idxprom1320, !dbg !630
  %204 = load double* %arrayidx1321, align 8, !dbg !630, !tbaa !559
  %mul1322 = fmul double %204, -1.000000e+00, !dbg !630
  %mul1327 = fmul double %mul1322, %mul1322, !dbg !630
  %arrayidx1330 = getelementptr inbounds double* %10, i64 %idxprom1320, !dbg !630
  %205 = load double* %arrayidx1330, align 8, !dbg !630, !tbaa !559
  %mul1331 = fmul double %conv1298, %205, !dbg !630
  %mul1336 = fmul double %mul1331, %mul1331, !dbg !630
  %add1337 = fadd double %mul1327, %mul1336, !dbg !630
  %arrayidx1340 = getelementptr inbounds double* %14, i64 %idxprom1320, !dbg !630
  %206 = load double* %arrayidx1340, align 8, !dbg !630, !tbaa !559
  %mul1341 = fmul double %conv1308, %206, !dbg !630
  %mul1346 = fmul double %mul1341, %mul1341, !dbg !630
  %add1347 = fadd double %add1337, %mul1346, !dbg !630
  %call1348 = call double @sqrt(double %add1347) #7, !dbg !630
  call void @llvm.dbg.value(metadata !{double %call1348}, i64 0, metadata !245), !dbg !630
  br label %if.end1349

if.end1349:                                       ; preds = %if.else1288, %cond.end1268
  %u_dst1244.0 = phi double [ %call1270, %cond.end1268 ], [ %call1318, %if.else1288 ]
  %u_src1243.0 = phi double [ %call1287, %cond.end1268 ], [ %call1348, %if.else1288 ]
  %mul1350 = fmul double %conv, %199, !dbg !629
  %add1351 = fadd double %u_dst1244.0, %u_src1243.0, !dbg !629
  %mul1352 = fmul double %mul1350, %add1351, !dbg !629
  %idxprom1353 = sext i32 %add1232 to i64, !dbg !629
  %arrayidx1354 = getelementptr inbounds double* %18, i64 %idxprom1353, !dbg !629
  %207 = load double* %arrayidx1354, align 8, !dbg !629, !tbaa !559
  %arrayidx1356 = getelementptr inbounds double* %18, i64 %idxprom1256, !dbg !629
  %208 = load double* %arrayidx1356, align 8, !dbg !629, !tbaa !559
  %add1357 = fadd double %207, %208, !dbg !629
  %mul1363 = fmul double %add1357, %add1357, !dbg !629
  %div1364 = fdiv double %mul1352, %mul1363, !dbg !629
  call void @llvm.dbg.value(metadata !{double %div1364}, i64 0, metadata !247), !dbg !629
  %209 = load i8**** %data, align 8, !dbg !629, !tbaa !547
  %arrayidx1367 = getelementptr inbounds i8*** %209, i64 %indvars.iv8600, !dbg !629
  %210 = load i8*** %arrayidx1367, align 8, !dbg !629, !tbaa !547
  %211 = load i8** %210, align 8, !dbg !629, !tbaa !547
  %212 = bitcast i8* %211 to i32*, !dbg !629
  call void @llvm.dbg.value(metadata !{i32* %212}, i64 0, metadata !242), !dbg !629
  %mul1369 = fmul double %div1364, 2.000000e+00, !dbg !629
  %mul1370 = fmul double %mul1369, %finf, !dbg !629
  %arrayidx1372 = getelementptr inbounds i32* %212, i64 %idxprom1353, !dbg !629
  %213 = load i32* %arrayidx1372, align 4, !dbg !629, !tbaa !535
  %conv1373 = sitofp i32 %213 to double, !dbg !629
  %sub1374 = fsub double 1.000000e+00, %div1364, !dbg !629
  %mul1375 = fmul double %sub1374, %conv1373, !dbg !629
  %add1376 = fadd double %mul1370, %mul1375, !dbg !629
  %add1377 = fadd double %div1364, 1.000000e+00, !dbg !629
  %div1378 = fdiv double %add1376, %add1377, !dbg !629
  %conv1379 = fptosi double %div1378 to i32, !dbg !629
  %arrayidx1381 = getelementptr inbounds i32* %212, i64 %idxprom1256, !dbg !629
  store i32 %conv1379, i32* %arrayidx1381, align 4, !dbg !629, !tbaa !535
  br label %for.inc1383, !dbg !651

for.inc1383:                                      ; preds = %if.end1204, %if.end1349
  %indvars.iv.next8575 = add i32 %indvars.iv8574, 1, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8575}, i64 0, metadata !216), !dbg !622
  %214 = load i32** %cctk_lsh174, align 8, !dbg !622, !tbaa !547
  %arrayidx826 = getelementptr inbounds i32* %214, i64 1, !dbg !622
  %215 = load i32* %arrayidx826, align 4, !dbg !622, !tbaa !535
  %cmp827 = icmp slt i32 %indvars.iv.next8575, %215, !dbg !622
  br i1 %cmp827, label %for.body829, label %for.cond824.for.inc1386.loopexit_crit_edge, !dbg !622

for.cond824.for.inc1386.loopexit_crit_edge:       ; preds = %for.inc1383
  %arrayidx786.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %214, i64 2
  %.pre8619.pre = load i32* %arrayidx786.phi.trans.insert.phi.trans.insert, align 4, !dbg !619, !tbaa !535
  br label %for.inc1386, !dbg !622

for.inc1386:                                      ; preds = %if.end823, %for.cond824.for.inc1386.loopexit_crit_edge, %land.lhs.true792, %land.lhs.true801
  %216 = phi i32 [ %133, %land.lhs.true801 ], [ %133, %land.lhs.true792 ], [ %.pre8619.pre, %for.cond824.for.inc1386.loopexit_crit_edge ], [ %133, %if.end823 ], !dbg !619
  %217 = phi i32* [ %134, %land.lhs.true801 ], [ %134, %land.lhs.true792 ], [ %214, %for.cond824.for.inc1386.loopexit_crit_edge ], [ %134, %if.end823 ], !dbg !619
  %indvars.iv.next8577 = add i32 %indvars.iv8576, 1, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8577}, i64 0, metadata !217), !dbg !619
  %cmp787 = icmp slt i32 %indvars.iv.next8577, %216, !dbg !619
  br i1 %cmp787, label %for.body789, label %for.inc5726, !dbg !619

sw.bb1389:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond1404.preheader, label %if.then1401, !dbg !654

for.cond1404.preheader:                           ; preds = %sw.bb1389
  %218 = load i32** %cctk_lsh174, align 8, !dbg !655, !tbaa !547
  %arrayidx14068468 = getelementptr inbounds i32* %218, i64 2, !dbg !655
  %219 = load i32* %arrayidx14068468, align 4, !dbg !655, !tbaa !535
  %cmp14078469 = icmp sgt i32 %219, 0, !dbg !655
  br i1 %cmp14078469, label %for.body1409, label %for.inc5726, !dbg !655

if.then1401:                                      ; preds = %sw.bb1389
  %call1402 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 746, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !656
  br label %cleanup, !dbg !656

for.body1409:                                     ; preds = %for.cond1404.preheader, %for.inc2000
  %220 = phi i32 [ %302, %for.inc2000 ], [ %219, %for.cond1404.preheader ]
  %221 = phi i32* [ %303, %for.inc2000 ], [ %218, %for.cond1404.preheader ]
  %indvars.iv8568 = phi i32 [ %indvars.iv.next8569, %for.inc2000 ], [ 0, %for.cond1404.preheader ], !dbg !658
  %cmp1410 = icmp eq i32 %indvars.iv8568, 0, !dbg !659
  br i1 %cmp1410, label %land.lhs.true1412, label %lor.lhs.false1415, !dbg !659

land.lhs.true1412:                                ; preds = %for.body1409
  %222 = load i32* %arrayidx181, align 16, !dbg !659, !tbaa !535
  %tobool1414 = icmp eq i32 %222, 0, !dbg !659
  br i1 %tobool1414, label %for.inc2000, label %lor.lhs.false1415, !dbg !659

lor.lhs.false1415:                                ; preds = %land.lhs.true1412, %for.body1409
  %sub1418 = add nsw i32 %220, -1, !dbg !659
  %cmp1419 = icmp eq i32 %indvars.iv8568, %sub1418, !dbg !659
  br i1 %cmp1419, label %land.lhs.true1421, label %if.end1425, !dbg !659

land.lhs.true1421:                                ; preds = %lor.lhs.false1415
  %223 = load i32* %arrayidx188, align 4, !dbg !659, !tbaa !535
  %tobool1423 = icmp eq i32 %223, 0, !dbg !659
  br i1 %tobool1423, label %for.inc2000, label %if.end1425, !dbg !659

if.end1425:                                       ; preds = %land.lhs.true1421, %lor.lhs.false1415
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !254), !dbg !659
  br i1 %cmp1410, label %land.lhs.true1428, label %if.else1432, !dbg !659

land.lhs.true1428:                                ; preds = %if.end1425
  %224 = load i32* %arrayidx181, align 16, !dbg !659, !tbaa !535
  %tobool1430.not = icmp ne i32 %224, 0, !dbg !659
  %cmp1419.not = xor i1 %cmp1419, true, !dbg !659
  %brmerge8642 = or i1 %tobool1430.not, %cmp1419.not, !dbg !659
  %.mux8643 = zext i1 %tobool1430.not to i32, !dbg !659
  br i1 %brmerge8642, label %if.end1443, label %land.lhs.true1438, !dbg !659

if.else1432:                                      ; preds = %if.end1425
  br i1 %cmp1419, label %land.lhs.true1438, label %if.end1443, !dbg !659

land.lhs.true1438:                                ; preds = %land.lhs.true1428, %if.else1432
  %225 = load i32* %arrayidx188, align 4, !dbg !659, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !254), !dbg !660
  %not.tobool1440 = icmp ne i32 %225, 0, !dbg !659
  %.8336 = sext i1 %not.tobool1440 to i32, !dbg !659
  br label %if.end1443, !dbg !659

if.end1443:                                       ; preds = %land.lhs.true1428, %land.lhs.true1438, %if.else1432
  %dz1395.0 = phi i32 [ 0, %if.else1432 ], [ %.mux8643, %land.lhs.true1428 ], [ %.8336, %land.lhs.true1438 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !250), !dbg !658
  %arrayidx14468464 = getelementptr inbounds i32* %221, i64 1, !dbg !658
  %226 = load i32* %arrayidx14468464, align 4, !dbg !658, !tbaa !535
  %cmp14478465 = icmp sgt i32 %226, 0, !dbg !658
  br i1 %cmp14478465, label %for.body1449.lr.ph, label %for.inc2000, !dbg !658

for.body1449.lr.ph:                               ; preds = %if.end1443
  %tobool1640 = icmp eq i32 %dz1395.0, 0, !dbg !662
  %add1844 = add i32 %dz1395.0, %indvars.iv8568, !dbg !663
  %ispos8272 = icmp sgt i32 %dz1395.0, -1, !dbg !663
  %neg8273 = sub i32 0, %dz1395.0, !dbg !663
  %227 = select i1 %ispos8272, i32 %dz1395.0, i32 %neg8273, !dbg !663
  %mul1854 = shl nsw i32 %227, 2, !dbg !663
  %add1864 = add i32 %227, 1, !dbg !665
  %conv1924 = sitofp i32 %dz1395.0 to double, !dbg !666
  br label %for.body1449, !dbg !658

for.body1449:                                     ; preds = %for.body1449.lr.ph, %for.inc1997
  %228 = phi i32 [ %226, %for.body1449.lr.ph ], [ %301, %for.inc1997 ]
  %229 = phi i32* [ %221, %for.body1449.lr.ph ], [ %300, %for.inc1997 ]
  %indvars.iv8566 = phi i32 [ 0, %for.body1449.lr.ph ], [ %indvars.iv.next8567, %for.inc1997 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !662
  %cmp1450 = icmp eq i32 %indvars.iv8566, 0, !dbg !662
  br i1 %cmp1450, label %land.lhs.true1452, label %if.else1456, !dbg !662

land.lhs.true1452:                                ; preds = %for.body1449
  %230 = load i32* %arrayidx218, align 8, !dbg !662, !tbaa !535
  %tobool1454 = icmp eq i32 %230, 0, !dbg !662
  br i1 %tobool1454, label %if.else1456, label %if.end1467, !dbg !662

if.else1456:                                      ; preds = %land.lhs.true1452, %for.body1449
  %sub1459 = add nsw i32 %228, -1, !dbg !662
  %cmp1460 = icmp eq i32 %indvars.iv8566, %sub1459, !dbg !662
  br i1 %cmp1460, label %land.lhs.true1462, label %if.end1467, !dbg !662

land.lhs.true1462:                                ; preds = %if.else1456
  %231 = load i32* %arrayidx228, align 4, !dbg !662, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !253), !dbg !668
  %not.tobool1464 = icmp ne i32 %231, 0, !dbg !662
  %.8337 = sext i1 %not.tobool1464 to i32, !dbg !662
  br label %if.end1467, !dbg !662

if.end1467:                                       ; preds = %if.else1456, %land.lhs.true1452, %land.lhs.true1462
  %dy1394.0 = phi i32 [ %.8337, %land.lhs.true1462 ], [ 1, %land.lhs.true1452 ], [ 0, %if.else1456 ]
  %232 = bitcast [6 x i32]* %doBC to i64*, !dbg !662
  %233 = load i64* %232, align 16, !dbg !662
  %234 = trunc i64 %233 to i32, !dbg !662
  %tobool1469 = icmp eq i32 %234, 0, !dbg !662
  br i1 %tobool1469, label %if.end1637, label %if.then1470, !dbg !662

if.then1470:                                      ; preds = %if.end1467
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !252), !dbg !670
  %235 = load i32* %229, align 4, !dbg !671, !tbaa !535
  %mul1475 = mul nsw i32 %228, %indvars.iv8568, !dbg !671
  %add1476 = add nsw i32 %mul1475, %indvars.iv8566, !dbg !671
  %mul1477 = mul nsw i32 %add1476, %235, !dbg !671
  call void @llvm.dbg.value(metadata !{i32 %mul1477}, i64 0, metadata !256), !dbg !671
  %add1482 = add nsw i32 %dy1394.0, %indvars.iv8566, !dbg !671
  %mul1486 = mul nsw i32 %228, %add1844, !dbg !671
  %add1487 = add nsw i32 %add1482, %mul1486, !dbg !671
  %mul1488 = mul nsw i32 %add1487, %235, !dbg !671
  %add1489 = add nsw i32 %mul1488, 1, !dbg !671
  call void @llvm.dbg.value(metadata !{i32 %add1489}, i64 0, metadata !255), !dbg !671
  %ispos8278 = icmp sgt i32 %dy1394.0, -1, !dbg !671
  %neg8279 = sub i32 0, %dy1394.0, !dbg !671
  %236 = select i1 %ispos8278, i32 %dy1394.0, i32 %neg8279, !dbg !671
  %mul1492 = shl nsw i32 %236, 1, !dbg !671
  %add14938280 = or i32 %mul1492, 1, !dbg !671
  %add1496 = add nsw i32 %add14938280, %mul1854, !dbg !671
  %idxprom1497 = sext i32 %add1496 to i64, !dbg !671
  %arrayidx1498 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom1497, !dbg !671
  %237 = load double* %arrayidx1498, align 8, !dbg !671, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %237}, i64 0, metadata !257), !dbg !671
  %add1507 = add i32 %add1864, %236, !dbg !673
  %cmp1508 = icmp eq i32 %add1507, 1, !dbg !673
  %idxprom1513 = sext i32 %mul1477 to i64, !dbg !674
  %arrayidx1514 = getelementptr inbounds double* %6, i64 %idxprom1513, !dbg !674
  %238 = load double* %arrayidx1514, align 8, !dbg !674, !tbaa !559
  br i1 %cmp1508, label %cond.end1525, label %if.else1545, !dbg !673

cond.end1525:                                     ; preds = %if.then1470
  %call1527 = call double @fabs(double %238) #9, !dbg !674
  call void @llvm.dbg.value(metadata !{double %call1527}, i64 0, metadata !266), !dbg !674
  %idxprom1530 = sext i32 %add1489 to i64, !dbg !674
  %arrayidx1531 = getelementptr inbounds double* %6, i64 %idxprom1530, !dbg !674
  %239 = load double* %arrayidx1531, align 8, !dbg !674, !tbaa !559
  %call1544 = call double @fabs(double %239) #9, !dbg !674
  call void @llvm.dbg.value(metadata !{double %call1544}, i64 0, metadata !265), !dbg !674
  br label %if.end1606, !dbg !674

if.else1545:                                      ; preds = %if.then1470
  %mul1554 = fmul double %238, %238, !dbg !676
  %conv1555 = sitofp i32 %dy1394.0 to double, !dbg !676
  %arrayidx1557 = getelementptr inbounds double* %10, i64 %idxprom1513, !dbg !676
  %240 = load double* %arrayidx1557, align 8, !dbg !676, !tbaa !559
  %mul1558 = fmul double %conv1555, %240, !dbg !676
  %mul1563 = fmul double %mul1558, %mul1558, !dbg !676
  %add1564 = fadd double %mul1554, %mul1563, !dbg !676
  %arrayidx1567 = getelementptr inbounds double* %14, i64 %idxprom1513, !dbg !676
  %241 = load double* %arrayidx1567, align 8, !dbg !676, !tbaa !559
  %mul1568 = fmul double %conv1924, %241, !dbg !676
  %mul1573 = fmul double %mul1568, %mul1568, !dbg !676
  %add1574 = fadd double %add1564, %mul1573, !dbg !676
  %call1575 = call double @sqrt(double %add1574) #7, !dbg !676
  call void @llvm.dbg.value(metadata !{double %call1575}, i64 0, metadata !266), !dbg !676
  %idxprom1577 = sext i32 %add1489 to i64, !dbg !676
  %arrayidx1578 = getelementptr inbounds double* %6, i64 %idxprom1577, !dbg !676
  %242 = load double* %arrayidx1578, align 8, !dbg !676, !tbaa !559
  %mul1584 = fmul double %242, %242, !dbg !676
  %arrayidx1587 = getelementptr inbounds double* %10, i64 %idxprom1577, !dbg !676
  %243 = load double* %arrayidx1587, align 8, !dbg !676, !tbaa !559
  %mul1588 = fmul double %conv1555, %243, !dbg !676
  %mul1593 = fmul double %mul1588, %mul1588, !dbg !676
  %add1594 = fadd double %mul1584, %mul1593, !dbg !676
  %arrayidx1597 = getelementptr inbounds double* %14, i64 %idxprom1577, !dbg !676
  %244 = load double* %arrayidx1597, align 8, !dbg !676, !tbaa !559
  %mul1598 = fmul double %conv1924, %244, !dbg !676
  %mul1603 = fmul double %mul1598, %mul1598, !dbg !676
  %add1604 = fadd double %add1594, %mul1603, !dbg !676
  %call1605 = call double @sqrt(double %add1604) #7, !dbg !676
  call void @llvm.dbg.value(metadata !{double %call1605}, i64 0, metadata !265), !dbg !676
  br label %if.end1606

if.end1606:                                       ; preds = %if.else1545, %cond.end1525
  %u_src1500.0 = phi double [ %call1544, %cond.end1525 ], [ %call1605, %if.else1545 ]
  %u_dst1501.0 = phi double [ %call1527, %cond.end1525 ], [ %call1575, %if.else1545 ]
  %mul1607 = fmul double %conv, %237, !dbg !673
  %add1608 = fadd double %u_src1500.0, %u_dst1501.0, !dbg !673
  %mul1609 = fmul double %mul1607, %add1608, !dbg !673
  %idxprom1610 = sext i32 %add1489 to i64, !dbg !673
  %arrayidx1611 = getelementptr inbounds double* %18, i64 %idxprom1610, !dbg !673
  %245 = load double* %arrayidx1611, align 8, !dbg !673, !tbaa !559
  %arrayidx1613 = getelementptr inbounds double* %18, i64 %idxprom1513, !dbg !673
  %246 = load double* %arrayidx1613, align 8, !dbg !673, !tbaa !559
  %add1614 = fadd double %245, %246, !dbg !673
  %mul1620 = fmul double %add1614, %add1614, !dbg !673
  %div1621 = fdiv double %mul1609, %mul1620, !dbg !673
  call void @llvm.dbg.value(metadata !{double %div1621}, i64 0, metadata !267), !dbg !673
  %247 = load i8**** %data, align 8, !dbg !673, !tbaa !547
  %arrayidx1624 = getelementptr inbounds i8*** %247, i64 %indvars.iv8600, !dbg !673
  %248 = load i8*** %arrayidx1624, align 8, !dbg !673, !tbaa !547
  %249 = load i8** %248, align 8, !dbg !673, !tbaa !547
  %250 = bitcast i8* %249 to double*, !dbg !673
  call void @llvm.dbg.value(metadata !{double* %250}, i64 0, metadata !258), !dbg !673
  %mul1626 = fmul double %div1621, 2.000000e+00, !dbg !673
  %mul1627 = fmul double %mul1626, %finf, !dbg !673
  %arrayidx1629 = getelementptr inbounds double* %250, i64 %idxprom1610, !dbg !673
  %251 = load double* %arrayidx1629, align 8, !dbg !673, !tbaa !559
  %sub1630 = fsub double 1.000000e+00, %div1621, !dbg !673
  %mul1631 = fmul double %sub1630, %251, !dbg !673
  %add1632 = fadd double %mul1627, %mul1631, !dbg !673
  %add1633 = fadd double %div1621, 1.000000e+00, !dbg !673
  %div1634 = fdiv double %add1632, %add1633, !dbg !673
  %arrayidx1636 = getelementptr inbounds double* %250, i64 %idxprom1513, !dbg !673
  store double %div1634, double* %arrayidx1636, align 8, !dbg !673, !tbaa !559
  br label %if.end1637, !dbg !670

if.end1637:                                       ; preds = %if.end1467, %if.end1606
  %tobool1638 = icmp ne i32 %dy1394.0, 0, !dbg !662
  %tobool1638.not = xor i1 %tobool1638, true, !dbg !662
  %or.cond8338 = and i1 %tobool1640, %tobool1638.not, !dbg !662
  br i1 %or.cond8338, label %if.end1820, label %if.then1641, !dbg !662

if.then1641:                                      ; preds = %if.end1637
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !252), !dbg !678
  %252 = load i32** %cctk_lsh174, align 8, !dbg !679, !tbaa !547
  %253 = load i32* %252, align 4, !dbg !679, !tbaa !535
  %arrayidx1645 = getelementptr inbounds i32* %252, i64 1, !dbg !679
  %254 = load i32* %arrayidx1645, align 4, !dbg !679, !tbaa !535
  %ispos8274 = icmp sgt i32 %dy1394.0, -1, !dbg !679
  %neg8275 = sub i32 0, %dy1394.0, !dbg !679
  %255 = select i1 %ispos8274, i32 %dy1394.0, i32 %neg8275, !dbg !679
  call void @llvm.dbg.value(metadata !{double %256}, i64 0, metadata !257), !dbg !679
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !248), !dbg !681
  %sub16738459 = add nsw i32 %253, -1, !dbg !681
  %cmp16748460 = icmp sgt i32 %sub16738459, 1, !dbg !681
  br i1 %cmp16748460, label %for.body1676.lr.ph, label %if.end1820, !dbg !681

for.body1676.lr.ph:                               ; preds = %if.then1641
  %mul1663 = shl nsw i32 %255, 1, !dbg !679
  %add1667 = add nsw i32 %mul1663, %mul1854, !dbg !679
  %idxprom1668 = sext i32 %add1667 to i64, !dbg !679
  %arrayidx1669 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom1668, !dbg !679
  %256 = load double* %arrayidx1669, align 16, !dbg !679, !tbaa !559
  %add1685 = add nsw i32 %255, %227, !dbg !682
  %cmp1686 = icmp eq i32 %add1685, 1, !dbg !682
  %.8339 = select i1 %tobool1638, double* %10, double* %14, !dbg !683
  %mul1785 = fmul double %conv, %256, !dbg !682
  %conv1733 = sitofp i32 %dy1394.0 to double, !dbg !685
  %257 = mul i32 %indvars.iv8568, %254, !dbg !681
  %258 = add i32 %indvars.iv8566, %257, !dbg !681
  %259 = mul i32 %253, %258, !dbg !681
  %260 = sext i32 %259 to i64, !dbg !655
  %261 = add i32 %dy1394.0, %indvars.iv8566, !dbg !681
  %262 = mul i32 %add1844, %254, !dbg !681
  %263 = add i32 %261, %262, !dbg !681
  %264 = mul i32 %253, %263, !dbg !681
  %265 = sext i32 %264 to i64, !dbg !681
  br label %for.body1676, !dbg !681

for.body1676:                                     ; preds = %for.body1676.lr.ph, %if.end1784
  %266 = phi i32 [ %253, %for.body1676.lr.ph ], [ %273, %if.end1784 ]
  %indvars.iv8572 = phi i64 [ %265, %for.body1676.lr.ph ], [ %indvars.iv.next8573, %if.end1784 ], !dbg !681
  %indvars.iv8570 = phi i64 [ %260, %for.body1676.lr.ph ], [ %indvars.iv.next8571, %if.end1784 ], !dbg !655
  %i1390.08461 = phi i32 [ 1, %for.body1676.lr.ph ], [ %inc1816, %if.end1784 ]
  %indvars.iv.next8573 = add i64 %indvars.iv8572, 1, !dbg !681
  %indvars.iv.next8571 = add i64 %indvars.iv8570, 1, !dbg !681
  br i1 %cmp1686, label %cond.false1693, label %if.else1723, !dbg !682

cond.false1693:                                   ; preds = %for.body1676
  %cond1704.in = getelementptr inbounds double* %.8339, i64 %indvars.iv.next8571, !dbg !683
  %cond1704 = load double* %cond1704.in, align 8, !dbg !683
  %call1705 = call double @fabs(double %cond1704) #9, !dbg !683
  call void @llvm.dbg.value(metadata !{double %call1705}, i64 0, metadata !274), !dbg !683
  %cond1721.in = getelementptr inbounds double* %.8339, i64 %indvars.iv.next8573, !dbg !683
  %cond1721 = load double* %cond1721.in, align 8, !dbg !683
  %call1722 = call double @fabs(double %cond1721) #9, !dbg !683
  call void @llvm.dbg.value(metadata !{double %call1722}, i64 0, metadata !273), !dbg !683
  br label %if.end1784, !dbg !683

if.else1723:                                      ; preds = %for.body1676
  %arrayidx1726 = getelementptr inbounds double* %6, i64 %indvars.iv.next8571, !dbg !685
  %267 = load double* %arrayidx1726, align 8, !dbg !685, !tbaa !559
  %mul1727 = fmul double %267, 0.000000e+00, !dbg !685
  %mul1732 = fmul double %mul1727, %mul1727, !dbg !685
  %arrayidx1735 = getelementptr inbounds double* %10, i64 %indvars.iv.next8571, !dbg !685
  %268 = load double* %arrayidx1735, align 8, !dbg !685, !tbaa !559
  %mul1736 = fmul double %conv1733, %268, !dbg !685
  %mul1741 = fmul double %mul1736, %mul1736, !dbg !685
  %add1742 = fadd double %mul1732, %mul1741, !dbg !685
  %arrayidx1745 = getelementptr inbounds double* %14, i64 %indvars.iv.next8571, !dbg !685
  %269 = load double* %arrayidx1745, align 8, !dbg !685, !tbaa !559
  %mul1746 = fmul double %conv1924, %269, !dbg !685
  %mul1751 = fmul double %mul1746, %mul1746, !dbg !685
  %add1752 = fadd double %add1742, %mul1751, !dbg !685
  %call1753 = call double @sqrt(double %add1752) #7, !dbg !685
  call void @llvm.dbg.value(metadata !{double %call1753}, i64 0, metadata !274), !dbg !685
  %arrayidx1756 = getelementptr inbounds double* %6, i64 %indvars.iv.next8573, !dbg !685
  %270 = load double* %arrayidx1756, align 8, !dbg !685, !tbaa !559
  %mul1757 = fmul double %270, 0.000000e+00, !dbg !685
  %mul1762 = fmul double %mul1757, %mul1757, !dbg !685
  %arrayidx1765 = getelementptr inbounds double* %10, i64 %indvars.iv.next8573, !dbg !685
  %271 = load double* %arrayidx1765, align 8, !dbg !685, !tbaa !559
  %mul1766 = fmul double %conv1733, %271, !dbg !685
  %mul1771 = fmul double %mul1766, %mul1766, !dbg !685
  %add1772 = fadd double %mul1762, %mul1771, !dbg !685
  %arrayidx1775 = getelementptr inbounds double* %14, i64 %indvars.iv.next8573, !dbg !685
  %272 = load double* %arrayidx1775, align 8, !dbg !685, !tbaa !559
  %mul1776 = fmul double %conv1924, %272, !dbg !685
  %mul1781 = fmul double %mul1776, %mul1776, !dbg !685
  %add1782 = fadd double %add1772, %mul1781, !dbg !685
  %call1783 = call double @sqrt(double %add1782) #7, !dbg !685
  call void @llvm.dbg.value(metadata !{double %call1783}, i64 0, metadata !273), !dbg !685
  %.pre8604 = load i32** %cctk_lsh174, align 8, !dbg !681, !tbaa !547
  %.pre8605 = load i32* %.pre8604, align 4, !dbg !681, !tbaa !535
  br label %if.end1784

if.end1784:                                       ; preds = %if.else1723, %cond.false1693
  %273 = phi i32 [ %266, %cond.false1693 ], [ %.pre8605, %if.else1723 ], !dbg !682
  %u_src1678.0 = phi double [ %call1722, %cond.false1693 ], [ %call1783, %if.else1723 ]
  %u_dst1679.0 = phi double [ %call1705, %cond.false1693 ], [ %call1753, %if.else1723 ]
  %add1786 = fadd double %u_src1678.0, %u_dst1679.0, !dbg !682
  %mul1787 = fmul double %mul1785, %add1786, !dbg !682
  %arrayidx1789 = getelementptr inbounds double* %18, i64 %indvars.iv.next8573, !dbg !682
  %274 = load double* %arrayidx1789, align 8, !dbg !682, !tbaa !559
  %arrayidx1791 = getelementptr inbounds double* %18, i64 %indvars.iv.next8571, !dbg !682
  %275 = load double* %arrayidx1791, align 8, !dbg !682, !tbaa !559
  %add1792 = fadd double %274, %275, !dbg !682
  %mul1798 = fmul double %add1792, %add1792, !dbg !682
  %div1799 = fdiv double %mul1787, %mul1798, !dbg !682
  call void @llvm.dbg.value(metadata !{double %div1799}, i64 0, metadata !275), !dbg !682
  %276 = load i8**** %data, align 8, !dbg !682, !tbaa !547
  %arrayidx1802 = getelementptr inbounds i8*** %276, i64 %indvars.iv8600, !dbg !682
  %277 = load i8*** %arrayidx1802, align 8, !dbg !682, !tbaa !547
  %278 = load i8** %277, align 8, !dbg !682, !tbaa !547
  %279 = bitcast i8* %278 to double*, !dbg !682
  call void @llvm.dbg.value(metadata !{double* %279}, i64 0, metadata !268), !dbg !682
  %mul1804 = fmul double %div1799, 2.000000e+00, !dbg !682
  %mul1805 = fmul double %mul1804, %finf, !dbg !682
  %arrayidx1807 = getelementptr inbounds double* %279, i64 %indvars.iv.next8573, !dbg !682
  %280 = load double* %arrayidx1807, align 8, !dbg !682, !tbaa !559
  %sub1808 = fsub double 1.000000e+00, %div1799, !dbg !682
  %mul1809 = fmul double %sub1808, %280, !dbg !682
  %add1810 = fadd double %mul1805, %mul1809, !dbg !682
  %add1811 = fadd double %div1799, 1.000000e+00, !dbg !682
  %div1812 = fdiv double %add1810, %add1811, !dbg !682
  %arrayidx1814 = getelementptr inbounds double* %279, i64 %indvars.iv.next8571, !dbg !682
  store double %div1812, double* %arrayidx1814, align 8, !dbg !682, !tbaa !559
  %inc1816 = add nsw i32 %i1390.08461, 1, !dbg !681
  call void @llvm.dbg.value(metadata !{i32 %inc1816}, i64 0, metadata !248), !dbg !681
  %sub1673 = add nsw i32 %273, -1, !dbg !681
  %cmp1674 = icmp slt i32 %inc1816, %sub1673, !dbg !681
  br i1 %cmp1674, label %for.body1676, label %if.end1820, !dbg !681

if.end1820:                                       ; preds = %if.then1641, %if.end1784, %if.end1637
  %tobool1822 = icmp ult i64 %233, 4294967296, !dbg !662
  br i1 %tobool1822, label %for.inc1997, label %if.then1823, !dbg !662

if.then1823:                                      ; preds = %if.end1820
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !252), !dbg !687
  %281 = load i32** %cctk_lsh174, align 8, !dbg !663, !tbaa !547
  %282 = load i32* %281, align 4, !dbg !663, !tbaa !535
  %sub1826 = add nsw i32 %282, -1, !dbg !663
  %arrayidx1830 = getelementptr inbounds i32* %281, i64 1, !dbg !663
  %283 = load i32* %arrayidx1830, align 4, !dbg !663, !tbaa !535
  %mul1831 = mul nsw i32 %283, %indvars.iv8568, !dbg !663
  %add1832 = add nsw i32 %mul1831, %indvars.iv8566, !dbg !663
  %mul1833 = mul nsw i32 %add1832, %282, !dbg !663
  %add1834 = add nsw i32 %sub1826, %mul1833, !dbg !663
  call void @llvm.dbg.value(metadata !{i32 %add1834}, i64 0, metadata !256), !dbg !663
  %add1838 = add nsw i32 %282, -2, !dbg !663
  %add1841 = add nsw i32 %dy1394.0, %indvars.iv8566, !dbg !663
  %mul1845 = mul nsw i32 %283, %add1844, !dbg !663
  %add1846 = add nsw i32 %add1841, %mul1845, !dbg !663
  %mul1847 = mul nsw i32 %add1846, %282, !dbg !663
  %add1848 = add nsw i32 %add1838, %mul1847, !dbg !663
  call void @llvm.dbg.value(metadata !{i32 %add1848}, i64 0, metadata !255), !dbg !663
  %ispos8269 = icmp sgt i32 %dy1394.0, -1, !dbg !663
  %neg8270 = sub i32 0, %dy1394.0, !dbg !663
  %284 = select i1 %ispos8269, i32 %dy1394.0, i32 %neg8270, !dbg !663
  %mul1851 = shl nsw i32 %284, 1, !dbg !663
  %add18528271 = or i32 %mul1851, 1, !dbg !663
  %add1855 = add nsw i32 %add18528271, %mul1854, !dbg !663
  %idxprom1856 = sext i32 %add1855 to i64, !dbg !663
  %arrayidx1857 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom1856, !dbg !663
  %285 = load double* %arrayidx1857, align 8, !dbg !663, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %285}, i64 0, metadata !257), !dbg !663
  %add1866 = add i32 %add1864, %284, !dbg !665
  %cmp1867 = icmp eq i32 %add1866, 1, !dbg !665
  %idxprom1872 = sext i32 %add1834 to i64, !dbg !688
  %arrayidx1873 = getelementptr inbounds double* %6, i64 %idxprom1872, !dbg !688
  %286 = load double* %arrayidx1873, align 8, !dbg !688, !tbaa !559
  br i1 %cmp1867, label %cond.end1884, label %if.else1904, !dbg !665

cond.end1884:                                     ; preds = %if.then1823
  %call1886 = call double @fabs(double %286) #9, !dbg !688
  call void @llvm.dbg.value(metadata !{double %call1886}, i64 0, metadata !280), !dbg !688
  %idxprom1889 = sext i32 %add1848 to i64, !dbg !688
  %arrayidx1890 = getelementptr inbounds double* %6, i64 %idxprom1889, !dbg !688
  %287 = load double* %arrayidx1890, align 8, !dbg !688, !tbaa !559
  %call1903 = call double @fabs(double %287) #9, !dbg !688
  call void @llvm.dbg.value(metadata !{double %call1903}, i64 0, metadata !279), !dbg !688
  br label %if.end1965, !dbg !688

if.else1904:                                      ; preds = %if.then1823
  %mul1908 = fmul double %286, -1.000000e+00, !dbg !666
  %mul1913 = fmul double %mul1908, %mul1908, !dbg !666
  %conv1914 = sitofp i32 %dy1394.0 to double, !dbg !666
  %arrayidx1916 = getelementptr inbounds double* %10, i64 %idxprom1872, !dbg !666
  %288 = load double* %arrayidx1916, align 8, !dbg !666, !tbaa !559
  %mul1917 = fmul double %conv1914, %288, !dbg !666
  %mul1922 = fmul double %mul1917, %mul1917, !dbg !666
  %add1923 = fadd double %mul1913, %mul1922, !dbg !666
  %arrayidx1926 = getelementptr inbounds double* %14, i64 %idxprom1872, !dbg !666
  %289 = load double* %arrayidx1926, align 8, !dbg !666, !tbaa !559
  %mul1927 = fmul double %conv1924, %289, !dbg !666
  %mul1932 = fmul double %mul1927, %mul1927, !dbg !666
  %add1933 = fadd double %add1923, %mul1932, !dbg !666
  %call1934 = call double @sqrt(double %add1933) #7, !dbg !666
  call void @llvm.dbg.value(metadata !{double %call1934}, i64 0, metadata !280), !dbg !666
  %idxprom1936 = sext i32 %add1848 to i64, !dbg !666
  %arrayidx1937 = getelementptr inbounds double* %6, i64 %idxprom1936, !dbg !666
  %290 = load double* %arrayidx1937, align 8, !dbg !666, !tbaa !559
  %mul1938 = fmul double %290, -1.000000e+00, !dbg !666
  %mul1943 = fmul double %mul1938, %mul1938, !dbg !666
  %arrayidx1946 = getelementptr inbounds double* %10, i64 %idxprom1936, !dbg !666
  %291 = load double* %arrayidx1946, align 8, !dbg !666, !tbaa !559
  %mul1947 = fmul double %conv1914, %291, !dbg !666
  %mul1952 = fmul double %mul1947, %mul1947, !dbg !666
  %add1953 = fadd double %mul1943, %mul1952, !dbg !666
  %arrayidx1956 = getelementptr inbounds double* %14, i64 %idxprom1936, !dbg !666
  %292 = load double* %arrayidx1956, align 8, !dbg !666, !tbaa !559
  %mul1957 = fmul double %conv1924, %292, !dbg !666
  %mul1962 = fmul double %mul1957, %mul1957, !dbg !666
  %add1963 = fadd double %add1953, %mul1962, !dbg !666
  %call1964 = call double @sqrt(double %add1963) #7, !dbg !666
  call void @llvm.dbg.value(metadata !{double %call1964}, i64 0, metadata !279), !dbg !666
  br label %if.end1965

if.end1965:                                       ; preds = %if.else1904, %cond.end1884
  %u_src1859.0 = phi double [ %call1903, %cond.end1884 ], [ %call1964, %if.else1904 ]
  %u_dst1860.0 = phi double [ %call1886, %cond.end1884 ], [ %call1934, %if.else1904 ]
  %mul1966 = fmul double %conv, %285, !dbg !665
  %add1967 = fadd double %u_src1859.0, %u_dst1860.0, !dbg !665
  %mul1968 = fmul double %mul1966, %add1967, !dbg !665
  %idxprom1969 = sext i32 %add1848 to i64, !dbg !665
  %arrayidx1970 = getelementptr inbounds double* %18, i64 %idxprom1969, !dbg !665
  %293 = load double* %arrayidx1970, align 8, !dbg !665, !tbaa !559
  %arrayidx1972 = getelementptr inbounds double* %18, i64 %idxprom1872, !dbg !665
  %294 = load double* %arrayidx1972, align 8, !dbg !665, !tbaa !559
  %add1973 = fadd double %293, %294, !dbg !665
  %mul1979 = fmul double %add1973, %add1973, !dbg !665
  %div1980 = fdiv double %mul1968, %mul1979, !dbg !665
  call void @llvm.dbg.value(metadata !{double %div1980}, i64 0, metadata !281), !dbg !665
  %295 = load i8**** %data, align 8, !dbg !665, !tbaa !547
  %arrayidx1983 = getelementptr inbounds i8*** %295, i64 %indvars.iv8600, !dbg !665
  %296 = load i8*** %arrayidx1983, align 8, !dbg !665, !tbaa !547
  %297 = load i8** %296, align 8, !dbg !665, !tbaa !547
  %298 = bitcast i8* %297 to double*, !dbg !665
  call void @llvm.dbg.value(metadata !{double* %298}, i64 0, metadata !276), !dbg !665
  %mul1985 = fmul double %div1980, 2.000000e+00, !dbg !665
  %mul1986 = fmul double %mul1985, %finf, !dbg !665
  %arrayidx1988 = getelementptr inbounds double* %298, i64 %idxprom1969, !dbg !665
  %299 = load double* %arrayidx1988, align 8, !dbg !665, !tbaa !559
  %sub1989 = fsub double 1.000000e+00, %div1980, !dbg !665
  %mul1990 = fmul double %sub1989, %299, !dbg !665
  %add1991 = fadd double %mul1986, %mul1990, !dbg !665
  %add1992 = fadd double %div1980, 1.000000e+00, !dbg !665
  %div1993 = fdiv double %add1991, %add1992, !dbg !665
  %arrayidx1995 = getelementptr inbounds double* %298, i64 %idxprom1872, !dbg !665
  store double %div1993, double* %arrayidx1995, align 8, !dbg !665, !tbaa !559
  br label %for.inc1997, !dbg !687

for.inc1997:                                      ; preds = %if.end1820, %if.end1965
  %indvars.iv.next8567 = add i32 %indvars.iv8566, 1, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8567}, i64 0, metadata !250), !dbg !658
  %300 = load i32** %cctk_lsh174, align 8, !dbg !658, !tbaa !547
  %arrayidx1446 = getelementptr inbounds i32* %300, i64 1, !dbg !658
  %301 = load i32* %arrayidx1446, align 4, !dbg !658, !tbaa !535
  %cmp1447 = icmp slt i32 %indvars.iv.next8567, %301, !dbg !658
  br i1 %cmp1447, label %for.body1449, label %for.cond1444.for.inc2000.loopexit_crit_edge, !dbg !658

for.cond1444.for.inc2000.loopexit_crit_edge:      ; preds = %for.inc1997
  %arrayidx1406.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %300, i64 2
  %.pre8621.pre = load i32* %arrayidx1406.phi.trans.insert.phi.trans.insert, align 4, !dbg !655, !tbaa !535
  br label %for.inc2000, !dbg !658

for.inc2000:                                      ; preds = %if.end1443, %for.cond1444.for.inc2000.loopexit_crit_edge, %land.lhs.true1412, %land.lhs.true1421
  %302 = phi i32 [ %220, %land.lhs.true1421 ], [ %220, %land.lhs.true1412 ], [ %.pre8621.pre, %for.cond1444.for.inc2000.loopexit_crit_edge ], [ %220, %if.end1443 ], !dbg !655
  %303 = phi i32* [ %221, %land.lhs.true1421 ], [ %221, %land.lhs.true1412 ], [ %300, %for.cond1444.for.inc2000.loopexit_crit_edge ], [ %221, %if.end1443 ], !dbg !655
  %indvars.iv.next8569 = add i32 %indvars.iv8568, 1, !dbg !655
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8569}, i64 0, metadata !251), !dbg !655
  %cmp1407 = icmp slt i32 %indvars.iv.next8569, %302, !dbg !655
  br i1 %cmp1407, label %for.body1409, label %for.inc5726, !dbg !655

sw.bb2003:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond2018.preheader, label %if.then2015, !dbg !690

for.cond2018.preheader:                           ; preds = %sw.bb2003
  %304 = load i32** %cctk_lsh174, align 8, !dbg !691, !tbaa !547
  %arrayidx20208453 = getelementptr inbounds i32* %304, i64 2, !dbg !691
  %305 = load i32* %arrayidx20208453, align 4, !dbg !691, !tbaa !535
  %cmp20218454 = icmp sgt i32 %305, 0, !dbg !691
  br i1 %cmp20218454, label %for.body2023, label %for.inc5726, !dbg !691

if.then2015:                                      ; preds = %sw.bb2003
  %call2016 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 750, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !692
  br label %cleanup, !dbg !692

for.body2023:                                     ; preds = %for.cond2018.preheader, %for.inc2623
  %306 = phi i32 [ %388, %for.inc2623 ], [ %305, %for.cond2018.preheader ]
  %307 = phi i32* [ %389, %for.inc2623 ], [ %304, %for.cond2018.preheader ]
  %indvars.iv8560 = phi i32 [ %indvars.iv.next8561, %for.inc2623 ], [ 0, %for.cond2018.preheader ], !dbg !694
  %cmp2024 = icmp eq i32 %indvars.iv8560, 0, !dbg !695
  br i1 %cmp2024, label %land.lhs.true2026, label %lor.lhs.false2029, !dbg !695

land.lhs.true2026:                                ; preds = %for.body2023
  %308 = load i32* %arrayidx181, align 16, !dbg !695, !tbaa !535
  %tobool2028 = icmp eq i32 %308, 0, !dbg !695
  br i1 %tobool2028, label %for.inc2623, label %lor.lhs.false2029, !dbg !695

lor.lhs.false2029:                                ; preds = %land.lhs.true2026, %for.body2023
  %sub2032 = add nsw i32 %306, -1, !dbg !695
  %cmp2033 = icmp eq i32 %indvars.iv8560, %sub2032, !dbg !695
  br i1 %cmp2033, label %land.lhs.true2035, label %if.end2039, !dbg !695

land.lhs.true2035:                                ; preds = %lor.lhs.false2029
  %309 = load i32* %arrayidx188, align 4, !dbg !695, !tbaa !535
  %tobool2037 = icmp eq i32 %309, 0, !dbg !695
  br i1 %tobool2037, label %for.inc2623, label %if.end2039, !dbg !695

if.end2039:                                       ; preds = %land.lhs.true2035, %lor.lhs.false2029
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !288), !dbg !695
  br i1 %cmp2024, label %land.lhs.true2042, label %if.else2046, !dbg !695

land.lhs.true2042:                                ; preds = %if.end2039
  %310 = load i32* %arrayidx181, align 16, !dbg !695, !tbaa !535
  %tobool2044.not = icmp ne i32 %310, 0, !dbg !695
  %cmp2033.not = xor i1 %cmp2033, true, !dbg !695
  %brmerge8644 = or i1 %tobool2044.not, %cmp2033.not, !dbg !695
  %.mux8645 = zext i1 %tobool2044.not to i32, !dbg !695
  br i1 %brmerge8644, label %if.end2057, label %land.lhs.true2052, !dbg !695

if.else2046:                                      ; preds = %if.end2039
  br i1 %cmp2033, label %land.lhs.true2052, label %if.end2057, !dbg !695

land.lhs.true2052:                                ; preds = %land.lhs.true2042, %if.else2046
  %311 = load i32* %arrayidx188, align 4, !dbg !695, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !288), !dbg !696
  %not.tobool2054 = icmp ne i32 %311, 0, !dbg !695
  %.8340 = sext i1 %not.tobool2054 to i32, !dbg !695
  br label %if.end2057, !dbg !695

if.end2057:                                       ; preds = %land.lhs.true2042, %land.lhs.true2052, %if.else2046
  %dz2009.0 = phi i32 [ 0, %if.else2046 ], [ %.mux8645, %land.lhs.true2042 ], [ %.8340, %land.lhs.true2052 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !284), !dbg !694
  %arrayidx20608449 = getelementptr inbounds i32* %307, i64 1, !dbg !694
  %312 = load i32* %arrayidx20608449, align 4, !dbg !694, !tbaa !535
  %cmp20618450 = icmp sgt i32 %312, 0, !dbg !694
  br i1 %cmp20618450, label %for.body2063.lr.ph, label %for.inc2623, !dbg !694

for.body2063.lr.ph:                               ; preds = %if.end2057
  %tobool2257 = icmp eq i32 %dz2009.0, 0, !dbg !698
  %add2464 = add i32 %dz2009.0, %indvars.iv8560, !dbg !699
  %ispos8258 = icmp sgt i32 %dz2009.0, -1, !dbg !699
  %neg8259 = sub i32 0, %dz2009.0, !dbg !699
  %313 = select i1 %ispos8258, i32 %dz2009.0, i32 %neg8259, !dbg !699
  %mul2474 = shl nsw i32 %313, 2, !dbg !699
  %add2484 = add i32 %313, 1, !dbg !701
  %conv2544 = sitofp i32 %dz2009.0 to double, !dbg !702
  br label %for.body2063, !dbg !694

for.body2063:                                     ; preds = %for.body2063.lr.ph, %for.inc2620
  %314 = phi i32 [ %312, %for.body2063.lr.ph ], [ %387, %for.inc2620 ]
  %315 = phi i32* [ %307, %for.body2063.lr.ph ], [ %386, %for.inc2620 ]
  %indvars.iv8558 = phi i32 [ 0, %for.body2063.lr.ph ], [ %indvars.iv.next8559, %for.inc2620 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !287), !dbg !698
  %cmp2064 = icmp eq i32 %indvars.iv8558, 0, !dbg !698
  br i1 %cmp2064, label %land.lhs.true2066, label %if.else2070, !dbg !698

land.lhs.true2066:                                ; preds = %for.body2063
  %316 = load i32* %arrayidx218, align 8, !dbg !698, !tbaa !535
  %tobool2068 = icmp eq i32 %316, 0, !dbg !698
  br i1 %tobool2068, label %if.else2070, label %if.end2081, !dbg !698

if.else2070:                                      ; preds = %land.lhs.true2066, %for.body2063
  %sub2073 = add nsw i32 %314, -1, !dbg !698
  %cmp2074 = icmp eq i32 %indvars.iv8558, %sub2073, !dbg !698
  br i1 %cmp2074, label %land.lhs.true2076, label %if.end2081, !dbg !698

land.lhs.true2076:                                ; preds = %if.else2070
  %317 = load i32* %arrayidx228, align 4, !dbg !698, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !287), !dbg !704
  %not.tobool2078 = icmp ne i32 %317, 0, !dbg !698
  %.8341 = sext i1 %not.tobool2078 to i32, !dbg !698
  br label %if.end2081, !dbg !698

if.end2081:                                       ; preds = %if.else2070, %land.lhs.true2066, %land.lhs.true2076
  %dy2008.0 = phi i32 [ %.8341, %land.lhs.true2076 ], [ 1, %land.lhs.true2066 ], [ 0, %if.else2070 ]
  %318 = bitcast [6 x i32]* %doBC to i64*, !dbg !698
  %319 = load i64* %318, align 16, !dbg !698
  %320 = trunc i64 %319 to i32, !dbg !698
  %tobool2083 = icmp eq i32 %320, 0, !dbg !698
  br i1 %tobool2083, label %if.end2254, label %if.then2084, !dbg !698

if.then2084:                                      ; preds = %if.end2081
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !286), !dbg !706
  %321 = load i32* %315, align 4, !dbg !707, !tbaa !535
  %mul2089 = mul nsw i32 %314, %indvars.iv8560, !dbg !707
  %add2090 = add nsw i32 %mul2089, %indvars.iv8558, !dbg !707
  %mul2091 = mul nsw i32 %add2090, %321, !dbg !707
  call void @llvm.dbg.value(metadata !{i32 %mul2091}, i64 0, metadata !290), !dbg !707
  %add2096 = add nsw i32 %dy2008.0, %indvars.iv8558, !dbg !707
  %mul2100 = mul nsw i32 %314, %add2464, !dbg !707
  %add2101 = add nsw i32 %add2096, %mul2100, !dbg !707
  %mul2102 = mul nsw i32 %add2101, %321, !dbg !707
  %add2103 = add nsw i32 %mul2102, 1, !dbg !707
  call void @llvm.dbg.value(metadata !{i32 %add2103}, i64 0, metadata !289), !dbg !707
  %ispos8264 = icmp sgt i32 %dy2008.0, -1, !dbg !707
  %neg8265 = sub i32 0, %dy2008.0, !dbg !707
  %322 = select i1 %ispos8264, i32 %dy2008.0, i32 %neg8265, !dbg !707
  %mul2106 = shl nsw i32 %322, 1, !dbg !707
  %add21078266 = or i32 %mul2106, 1, !dbg !707
  %add2110 = add nsw i32 %add21078266, %mul2474, !dbg !707
  %idxprom2111 = sext i32 %add2110 to i64, !dbg !707
  %arrayidx2112 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom2111, !dbg !707
  %323 = load double* %arrayidx2112, align 8, !dbg !707, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %323}, i64 0, metadata !291), !dbg !707
  %add2121 = add i32 %add2484, %322, !dbg !709
  %cmp2122 = icmp eq i32 %add2121, 1, !dbg !709
  %idxprom2127 = sext i32 %mul2091 to i64, !dbg !710
  %arrayidx2128 = getelementptr inbounds double* %6, i64 %idxprom2127, !dbg !710
  %324 = load double* %arrayidx2128, align 8, !dbg !710, !tbaa !559
  br i1 %cmp2122, label %cond.end2139, label %if.else2159, !dbg !709

cond.end2139:                                     ; preds = %if.then2084
  %call2141 = call double @fabs(double %324) #9, !dbg !710
  call void @llvm.dbg.value(metadata !{double %call2141}, i64 0, metadata !302), !dbg !710
  %idxprom2144 = sext i32 %add2103 to i64, !dbg !710
  %arrayidx2145 = getelementptr inbounds double* %6, i64 %idxprom2144, !dbg !710
  %325 = load double* %arrayidx2145, align 8, !dbg !710, !tbaa !559
  %call2158 = call double @fabs(double %325) #9, !dbg !710
  call void @llvm.dbg.value(metadata !{double %call2158}, i64 0, metadata !301), !dbg !710
  br label %if.end2220, !dbg !710

if.else2159:                                      ; preds = %if.then2084
  %mul2168 = fmul double %324, %324, !dbg !712
  %conv2169 = sitofp i32 %dy2008.0 to double, !dbg !712
  %arrayidx2171 = getelementptr inbounds double* %10, i64 %idxprom2127, !dbg !712
  %326 = load double* %arrayidx2171, align 8, !dbg !712, !tbaa !559
  %mul2172 = fmul double %conv2169, %326, !dbg !712
  %mul2177 = fmul double %mul2172, %mul2172, !dbg !712
  %add2178 = fadd double %mul2168, %mul2177, !dbg !712
  %arrayidx2181 = getelementptr inbounds double* %14, i64 %idxprom2127, !dbg !712
  %327 = load double* %arrayidx2181, align 8, !dbg !712, !tbaa !559
  %mul2182 = fmul double %conv2544, %327, !dbg !712
  %mul2187 = fmul double %mul2182, %mul2182, !dbg !712
  %add2188 = fadd double %add2178, %mul2187, !dbg !712
  %call2189 = call double @sqrt(double %add2188) #7, !dbg !712
  call void @llvm.dbg.value(metadata !{double %call2189}, i64 0, metadata !302), !dbg !712
  %idxprom2191 = sext i32 %add2103 to i64, !dbg !712
  %arrayidx2192 = getelementptr inbounds double* %6, i64 %idxprom2191, !dbg !712
  %328 = load double* %arrayidx2192, align 8, !dbg !712, !tbaa !559
  %mul2198 = fmul double %328, %328, !dbg !712
  %arrayidx2201 = getelementptr inbounds double* %10, i64 %idxprom2191, !dbg !712
  %329 = load double* %arrayidx2201, align 8, !dbg !712, !tbaa !559
  %mul2202 = fmul double %conv2169, %329, !dbg !712
  %mul2207 = fmul double %mul2202, %mul2202, !dbg !712
  %add2208 = fadd double %mul2198, %mul2207, !dbg !712
  %arrayidx2211 = getelementptr inbounds double* %14, i64 %idxprom2191, !dbg !712
  %330 = load double* %arrayidx2211, align 8, !dbg !712, !tbaa !559
  %mul2212 = fmul double %conv2544, %330, !dbg !712
  %mul2217 = fmul double %mul2212, %mul2212, !dbg !712
  %add2218 = fadd double %add2208, %mul2217, !dbg !712
  %call2219 = call double @sqrt(double %add2218) #7, !dbg !712
  call void @llvm.dbg.value(metadata !{double %call2219}, i64 0, metadata !301), !dbg !712
  br label %if.end2220

if.end2220:                                       ; preds = %if.else2159, %cond.end2139
  %u_src2114.0 = phi double [ %call2158, %cond.end2139 ], [ %call2219, %if.else2159 ]
  %u_dst2115.0 = phi double [ %call2141, %cond.end2139 ], [ %call2189, %if.else2159 ]
  %mul2221 = fmul double %conv, %323, !dbg !709
  %add2222 = fadd double %u_src2114.0, %u_dst2115.0, !dbg !709
  %mul2223 = fmul double %mul2221, %add2222, !dbg !709
  %idxprom2224 = sext i32 %add2103 to i64, !dbg !709
  %arrayidx2225 = getelementptr inbounds double* %18, i64 %idxprom2224, !dbg !709
  %331 = load double* %arrayidx2225, align 8, !dbg !709, !tbaa !559
  %arrayidx2227 = getelementptr inbounds double* %18, i64 %idxprom2127, !dbg !709
  %332 = load double* %arrayidx2227, align 8, !dbg !709, !tbaa !559
  %add2228 = fadd double %331, %332, !dbg !709
  %mul2234 = fmul double %add2228, %add2228, !dbg !709
  %div2235 = fdiv double %mul2223, %mul2234, !dbg !709
  call void @llvm.dbg.value(metadata !{double %div2235}, i64 0, metadata !303), !dbg !709
  %333 = load i8**** %data, align 8, !dbg !709, !tbaa !547
  %arrayidx2238 = getelementptr inbounds i8*** %333, i64 %indvars.iv8600, !dbg !709
  %334 = load i8*** %arrayidx2238, align 8, !dbg !709, !tbaa !547
  %335 = load i8** %334, align 8, !dbg !709, !tbaa !547
  %336 = bitcast i8* %335 to i16*, !dbg !709
  call void @llvm.dbg.value(metadata !{i16* %336}, i64 0, metadata !292), !dbg !709
  %mul2240 = fmul double %div2235, 2.000000e+00, !dbg !709
  %mul2241 = fmul double %mul2240, %finf, !dbg !709
  %arrayidx2243 = getelementptr inbounds i16* %336, i64 %idxprom2224, !dbg !709
  %337 = load i16* %arrayidx2243, align 2, !dbg !709, !tbaa !714
  %conv2245 = sitofp i16 %337 to double, !dbg !709
  %sub2246 = fsub double 1.000000e+00, %div2235, !dbg !709
  %mul2247 = fmul double %sub2246, %conv2245, !dbg !709
  %add2248 = fadd double %mul2241, %mul2247, !dbg !709
  %add2249 = fadd double %div2235, 1.000000e+00, !dbg !709
  %div2250 = fdiv double %add2248, %add2249, !dbg !709
  %conv2251 = fptosi double %div2250 to i16, !dbg !709
  %arrayidx2253 = getelementptr inbounds i16* %336, i64 %idxprom2127, !dbg !709
  store i16 %conv2251, i16* %arrayidx2253, align 2, !dbg !709, !tbaa !714
  br label %if.end2254, !dbg !706

if.end2254:                                       ; preds = %if.end2081, %if.end2220
  %tobool2255 = icmp ne i32 %dy2008.0, 0, !dbg !698
  %tobool2255.not = xor i1 %tobool2255, true, !dbg !698
  %or.cond8342 = and i1 %tobool2257, %tobool2255.not, !dbg !698
  br i1 %or.cond8342, label %if.end2440, label %if.then2258, !dbg !698

if.then2258:                                      ; preds = %if.end2254
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !286), !dbg !715
  %338 = load i32** %cctk_lsh174, align 8, !dbg !716, !tbaa !547
  %339 = load i32* %338, align 4, !dbg !716, !tbaa !535
  %arrayidx2262 = getelementptr inbounds i32* %338, i64 1, !dbg !716
  %340 = load i32* %arrayidx2262, align 4, !dbg !716, !tbaa !535
  %ispos8260 = icmp sgt i32 %dy2008.0, -1, !dbg !716
  %neg8261 = sub i32 0, %dy2008.0, !dbg !716
  %341 = select i1 %ispos8260, i32 %dy2008.0, i32 %neg8261, !dbg !716
  call void @llvm.dbg.value(metadata !{double %342}, i64 0, metadata !291), !dbg !716
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !282), !dbg !718
  %sub22908444 = add nsw i32 %339, -1, !dbg !718
  %cmp22918445 = icmp sgt i32 %sub22908444, 1, !dbg !718
  br i1 %cmp22918445, label %for.body2293.lr.ph, label %if.end2440, !dbg !718

for.body2293.lr.ph:                               ; preds = %if.then2258
  %mul2280 = shl nsw i32 %341, 1, !dbg !716
  %add2284 = add nsw i32 %mul2280, %mul2474, !dbg !716
  %idxprom2285 = sext i32 %add2284 to i64, !dbg !716
  %arrayidx2286 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom2285, !dbg !716
  %342 = load double* %arrayidx2286, align 16, !dbg !716, !tbaa !559
  %add2302 = add nsw i32 %341, %313, !dbg !719
  %cmp2303 = icmp eq i32 %add2302, 1, !dbg !719
  %.8343 = select i1 %tobool2255, double* %10, double* %14, !dbg !720
  %mul2402 = fmul double %conv, %342, !dbg !719
  %conv2350 = sitofp i32 %dy2008.0 to double, !dbg !722
  %343 = add i32 %dy2008.0, %indvars.iv8558, !dbg !718
  %344 = mul i32 %add2464, %340, !dbg !718
  %345 = add i32 %343, %344, !dbg !718
  %346 = mul i32 %339, %345, !dbg !718
  %347 = sext i32 %346 to i64, !dbg !691
  %348 = mul i32 %indvars.iv8560, %340, !dbg !718
  %349 = add i32 %indvars.iv8558, %348, !dbg !718
  %350 = mul i32 %339, %349, !dbg !718
  %351 = sext i32 %350 to i64, !dbg !718
  br label %for.body2293, !dbg !718

for.body2293:                                     ; preds = %for.body2293.lr.ph, %if.end2401
  %352 = phi i32 [ %339, %for.body2293.lr.ph ], [ %359, %if.end2401 ]
  %indvars.iv8564 = phi i64 [ %351, %for.body2293.lr.ph ], [ %indvars.iv.next8565, %if.end2401 ], !dbg !718
  %indvars.iv8562 = phi i64 [ %347, %for.body2293.lr.ph ], [ %indvars.iv.next8563, %if.end2401 ], !dbg !691
  %i2004.08446 = phi i32 [ 1, %for.body2293.lr.ph ], [ %inc2436, %if.end2401 ]
  %indvars.iv.next8565 = add i64 %indvars.iv8564, 1, !dbg !718
  %indvars.iv.next8563 = add i64 %indvars.iv8562, 1, !dbg !718
  br i1 %cmp2303, label %cond.false2310, label %if.else2340, !dbg !719

cond.false2310:                                   ; preds = %for.body2293
  %cond2321.in = getelementptr inbounds double* %.8343, i64 %indvars.iv.next8565, !dbg !720
  %cond2321 = load double* %cond2321.in, align 8, !dbg !720
  %call2322 = call double @fabs(double %cond2321) #9, !dbg !720
  call void @llvm.dbg.value(metadata !{double %call2322}, i64 0, metadata !310), !dbg !720
  %cond2338.in = getelementptr inbounds double* %.8343, i64 %indvars.iv.next8563, !dbg !720
  %cond2338 = load double* %cond2338.in, align 8, !dbg !720
  %call2339 = call double @fabs(double %cond2338) #9, !dbg !720
  call void @llvm.dbg.value(metadata !{double %call2339}, i64 0, metadata !309), !dbg !720
  br label %if.end2401, !dbg !720

if.else2340:                                      ; preds = %for.body2293
  %arrayidx2343 = getelementptr inbounds double* %6, i64 %indvars.iv.next8565, !dbg !722
  %353 = load double* %arrayidx2343, align 8, !dbg !722, !tbaa !559
  %mul2344 = fmul double %353, 0.000000e+00, !dbg !722
  %mul2349 = fmul double %mul2344, %mul2344, !dbg !722
  %arrayidx2352 = getelementptr inbounds double* %10, i64 %indvars.iv.next8565, !dbg !722
  %354 = load double* %arrayidx2352, align 8, !dbg !722, !tbaa !559
  %mul2353 = fmul double %conv2350, %354, !dbg !722
  %mul2358 = fmul double %mul2353, %mul2353, !dbg !722
  %add2359 = fadd double %mul2349, %mul2358, !dbg !722
  %arrayidx2362 = getelementptr inbounds double* %14, i64 %indvars.iv.next8565, !dbg !722
  %355 = load double* %arrayidx2362, align 8, !dbg !722, !tbaa !559
  %mul2363 = fmul double %conv2544, %355, !dbg !722
  %mul2368 = fmul double %mul2363, %mul2363, !dbg !722
  %add2369 = fadd double %add2359, %mul2368, !dbg !722
  %call2370 = call double @sqrt(double %add2369) #7, !dbg !722
  call void @llvm.dbg.value(metadata !{double %call2370}, i64 0, metadata !310), !dbg !722
  %arrayidx2373 = getelementptr inbounds double* %6, i64 %indvars.iv.next8563, !dbg !722
  %356 = load double* %arrayidx2373, align 8, !dbg !722, !tbaa !559
  %mul2374 = fmul double %356, 0.000000e+00, !dbg !722
  %mul2379 = fmul double %mul2374, %mul2374, !dbg !722
  %arrayidx2382 = getelementptr inbounds double* %10, i64 %indvars.iv.next8563, !dbg !722
  %357 = load double* %arrayidx2382, align 8, !dbg !722, !tbaa !559
  %mul2383 = fmul double %conv2350, %357, !dbg !722
  %mul2388 = fmul double %mul2383, %mul2383, !dbg !722
  %add2389 = fadd double %mul2379, %mul2388, !dbg !722
  %arrayidx2392 = getelementptr inbounds double* %14, i64 %indvars.iv.next8563, !dbg !722
  %358 = load double* %arrayidx2392, align 8, !dbg !722, !tbaa !559
  %mul2393 = fmul double %conv2544, %358, !dbg !722
  %mul2398 = fmul double %mul2393, %mul2393, !dbg !722
  %add2399 = fadd double %add2389, %mul2398, !dbg !722
  %call2400 = call double @sqrt(double %add2399) #7, !dbg !722
  call void @llvm.dbg.value(metadata !{double %call2400}, i64 0, metadata !309), !dbg !722
  %.pre8606 = load i32** %cctk_lsh174, align 8, !dbg !718, !tbaa !547
  %.pre8607 = load i32* %.pre8606, align 4, !dbg !718, !tbaa !535
  br label %if.end2401

if.end2401:                                       ; preds = %if.else2340, %cond.false2310
  %359 = phi i32 [ %352, %cond.false2310 ], [ %.pre8607, %if.else2340 ], !dbg !719
  %u_src2295.0 = phi double [ %call2339, %cond.false2310 ], [ %call2400, %if.else2340 ]
  %u_dst2296.0 = phi double [ %call2322, %cond.false2310 ], [ %call2370, %if.else2340 ]
  %add2403 = fadd double %u_src2295.0, %u_dst2296.0, !dbg !719
  %mul2404 = fmul double %mul2402, %add2403, !dbg !719
  %arrayidx2406 = getelementptr inbounds double* %18, i64 %indvars.iv.next8563, !dbg !719
  %360 = load double* %arrayidx2406, align 8, !dbg !719, !tbaa !559
  %arrayidx2408 = getelementptr inbounds double* %18, i64 %indvars.iv.next8565, !dbg !719
  %361 = load double* %arrayidx2408, align 8, !dbg !719, !tbaa !559
  %add2409 = fadd double %360, %361, !dbg !719
  %mul2415 = fmul double %add2409, %add2409, !dbg !719
  %div2416 = fdiv double %mul2404, %mul2415, !dbg !719
  call void @llvm.dbg.value(metadata !{double %div2416}, i64 0, metadata !311), !dbg !719
  %362 = load i8**** %data, align 8, !dbg !719, !tbaa !547
  %arrayidx2419 = getelementptr inbounds i8*** %362, i64 %indvars.iv8600, !dbg !719
  %363 = load i8*** %arrayidx2419, align 8, !dbg !719, !tbaa !547
  %364 = load i8** %363, align 8, !dbg !719, !tbaa !547
  %365 = bitcast i8* %364 to i16*, !dbg !719
  call void @llvm.dbg.value(metadata !{i16* %365}, i64 0, metadata !304), !dbg !719
  %mul2421 = fmul double %div2416, 2.000000e+00, !dbg !719
  %mul2422 = fmul double %mul2421, %finf, !dbg !719
  %arrayidx2424 = getelementptr inbounds i16* %365, i64 %indvars.iv.next8563, !dbg !719
  %366 = load i16* %arrayidx2424, align 2, !dbg !719, !tbaa !714
  %conv2426 = sitofp i16 %366 to double, !dbg !719
  %sub2427 = fsub double 1.000000e+00, %div2416, !dbg !719
  %mul2428 = fmul double %sub2427, %conv2426, !dbg !719
  %add2429 = fadd double %mul2422, %mul2428, !dbg !719
  %add2430 = fadd double %div2416, 1.000000e+00, !dbg !719
  %div2431 = fdiv double %add2429, %add2430, !dbg !719
  %conv2432 = fptosi double %div2431 to i16, !dbg !719
  %arrayidx2434 = getelementptr inbounds i16* %365, i64 %indvars.iv.next8565, !dbg !719
  store i16 %conv2432, i16* %arrayidx2434, align 2, !dbg !719, !tbaa !714
  %inc2436 = add nsw i32 %i2004.08446, 1, !dbg !718
  call void @llvm.dbg.value(metadata !{i32 %inc2436}, i64 0, metadata !282), !dbg !718
  %sub2290 = add nsw i32 %359, -1, !dbg !718
  %cmp2291 = icmp slt i32 %inc2436, %sub2290, !dbg !718
  br i1 %cmp2291, label %for.body2293, label %if.end2440, !dbg !718

if.end2440:                                       ; preds = %if.then2258, %if.end2401, %if.end2254
  %tobool2442 = icmp ult i64 %319, 4294967296, !dbg !698
  br i1 %tobool2442, label %for.inc2620, label %if.then2443, !dbg !698

if.then2443:                                      ; preds = %if.end2440
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !286), !dbg !724
  %367 = load i32** %cctk_lsh174, align 8, !dbg !699, !tbaa !547
  %368 = load i32* %367, align 4, !dbg !699, !tbaa !535
  %sub2446 = add nsw i32 %368, -1, !dbg !699
  %arrayidx2450 = getelementptr inbounds i32* %367, i64 1, !dbg !699
  %369 = load i32* %arrayidx2450, align 4, !dbg !699, !tbaa !535
  %mul2451 = mul nsw i32 %369, %indvars.iv8560, !dbg !699
  %add2452 = add nsw i32 %mul2451, %indvars.iv8558, !dbg !699
  %mul2453 = mul nsw i32 %add2452, %368, !dbg !699
  %add2454 = add nsw i32 %sub2446, %mul2453, !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %add2454}, i64 0, metadata !290), !dbg !699
  %add2458 = add nsw i32 %368, -2, !dbg !699
  %add2461 = add nsw i32 %dy2008.0, %indvars.iv8558, !dbg !699
  %mul2465 = mul nsw i32 %369, %add2464, !dbg !699
  %add2466 = add nsw i32 %add2461, %mul2465, !dbg !699
  %mul2467 = mul nsw i32 %add2466, %368, !dbg !699
  %add2468 = add nsw i32 %add2458, %mul2467, !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %add2468}, i64 0, metadata !289), !dbg !699
  %ispos8255 = icmp sgt i32 %dy2008.0, -1, !dbg !699
  %neg8256 = sub i32 0, %dy2008.0, !dbg !699
  %370 = select i1 %ispos8255, i32 %dy2008.0, i32 %neg8256, !dbg !699
  %mul2471 = shl nsw i32 %370, 1, !dbg !699
  %add24728257 = or i32 %mul2471, 1, !dbg !699
  %add2475 = add nsw i32 %add24728257, %mul2474, !dbg !699
  %idxprom2476 = sext i32 %add2475 to i64, !dbg !699
  %arrayidx2477 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom2476, !dbg !699
  %371 = load double* %arrayidx2477, align 8, !dbg !699, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %371}, i64 0, metadata !291), !dbg !699
  %add2486 = add i32 %add2484, %370, !dbg !701
  %cmp2487 = icmp eq i32 %add2486, 1, !dbg !701
  %idxprom2492 = sext i32 %add2454 to i64, !dbg !725
  %arrayidx2493 = getelementptr inbounds double* %6, i64 %idxprom2492, !dbg !725
  %372 = load double* %arrayidx2493, align 8, !dbg !725, !tbaa !559
  br i1 %cmp2487, label %cond.end2504, label %if.else2524, !dbg !701

cond.end2504:                                     ; preds = %if.then2443
  %call2506 = call double @fabs(double %372) #9, !dbg !725
  call void @llvm.dbg.value(metadata !{double %call2506}, i64 0, metadata !316), !dbg !725
  %idxprom2509 = sext i32 %add2468 to i64, !dbg !725
  %arrayidx2510 = getelementptr inbounds double* %6, i64 %idxprom2509, !dbg !725
  %373 = load double* %arrayidx2510, align 8, !dbg !725, !tbaa !559
  %call2523 = call double @fabs(double %373) #9, !dbg !725
  call void @llvm.dbg.value(metadata !{double %call2523}, i64 0, metadata !315), !dbg !725
  br label %if.end2585, !dbg !725

if.else2524:                                      ; preds = %if.then2443
  %mul2528 = fmul double %372, -1.000000e+00, !dbg !702
  %mul2533 = fmul double %mul2528, %mul2528, !dbg !702
  %conv2534 = sitofp i32 %dy2008.0 to double, !dbg !702
  %arrayidx2536 = getelementptr inbounds double* %10, i64 %idxprom2492, !dbg !702
  %374 = load double* %arrayidx2536, align 8, !dbg !702, !tbaa !559
  %mul2537 = fmul double %conv2534, %374, !dbg !702
  %mul2542 = fmul double %mul2537, %mul2537, !dbg !702
  %add2543 = fadd double %mul2533, %mul2542, !dbg !702
  %arrayidx2546 = getelementptr inbounds double* %14, i64 %idxprom2492, !dbg !702
  %375 = load double* %arrayidx2546, align 8, !dbg !702, !tbaa !559
  %mul2547 = fmul double %conv2544, %375, !dbg !702
  %mul2552 = fmul double %mul2547, %mul2547, !dbg !702
  %add2553 = fadd double %add2543, %mul2552, !dbg !702
  %call2554 = call double @sqrt(double %add2553) #7, !dbg !702
  call void @llvm.dbg.value(metadata !{double %call2554}, i64 0, metadata !316), !dbg !702
  %idxprom2556 = sext i32 %add2468 to i64, !dbg !702
  %arrayidx2557 = getelementptr inbounds double* %6, i64 %idxprom2556, !dbg !702
  %376 = load double* %arrayidx2557, align 8, !dbg !702, !tbaa !559
  %mul2558 = fmul double %376, -1.000000e+00, !dbg !702
  %mul2563 = fmul double %mul2558, %mul2558, !dbg !702
  %arrayidx2566 = getelementptr inbounds double* %10, i64 %idxprom2556, !dbg !702
  %377 = load double* %arrayidx2566, align 8, !dbg !702, !tbaa !559
  %mul2567 = fmul double %conv2534, %377, !dbg !702
  %mul2572 = fmul double %mul2567, %mul2567, !dbg !702
  %add2573 = fadd double %mul2563, %mul2572, !dbg !702
  %arrayidx2576 = getelementptr inbounds double* %14, i64 %idxprom2556, !dbg !702
  %378 = load double* %arrayidx2576, align 8, !dbg !702, !tbaa !559
  %mul2577 = fmul double %conv2544, %378, !dbg !702
  %mul2582 = fmul double %mul2577, %mul2577, !dbg !702
  %add2583 = fadd double %add2573, %mul2582, !dbg !702
  %call2584 = call double @sqrt(double %add2583) #7, !dbg !702
  call void @llvm.dbg.value(metadata !{double %call2584}, i64 0, metadata !315), !dbg !702
  br label %if.end2585

if.end2585:                                       ; preds = %if.else2524, %cond.end2504
  %u_src2479.0 = phi double [ %call2523, %cond.end2504 ], [ %call2584, %if.else2524 ]
  %u_dst2480.0 = phi double [ %call2506, %cond.end2504 ], [ %call2554, %if.else2524 ]
  %mul2586 = fmul double %conv, %371, !dbg !701
  %add2587 = fadd double %u_src2479.0, %u_dst2480.0, !dbg !701
  %mul2588 = fmul double %mul2586, %add2587, !dbg !701
  %idxprom2589 = sext i32 %add2468 to i64, !dbg !701
  %arrayidx2590 = getelementptr inbounds double* %18, i64 %idxprom2589, !dbg !701
  %379 = load double* %arrayidx2590, align 8, !dbg !701, !tbaa !559
  %arrayidx2592 = getelementptr inbounds double* %18, i64 %idxprom2492, !dbg !701
  %380 = load double* %arrayidx2592, align 8, !dbg !701, !tbaa !559
  %add2593 = fadd double %379, %380, !dbg !701
  %mul2599 = fmul double %add2593, %add2593, !dbg !701
  %div2600 = fdiv double %mul2588, %mul2599, !dbg !701
  call void @llvm.dbg.value(metadata !{double %div2600}, i64 0, metadata !317), !dbg !701
  %381 = load i8**** %data, align 8, !dbg !701, !tbaa !547
  %arrayidx2603 = getelementptr inbounds i8*** %381, i64 %indvars.iv8600, !dbg !701
  %382 = load i8*** %arrayidx2603, align 8, !dbg !701, !tbaa !547
  %383 = load i8** %382, align 8, !dbg !701, !tbaa !547
  %384 = bitcast i8* %383 to i16*, !dbg !701
  call void @llvm.dbg.value(metadata !{i16* %384}, i64 0, metadata !312), !dbg !701
  %mul2605 = fmul double %div2600, 2.000000e+00, !dbg !701
  %mul2606 = fmul double %mul2605, %finf, !dbg !701
  %arrayidx2608 = getelementptr inbounds i16* %384, i64 %idxprom2589, !dbg !701
  %385 = load i16* %arrayidx2608, align 2, !dbg !701, !tbaa !714
  %conv2610 = sitofp i16 %385 to double, !dbg !701
  %sub2611 = fsub double 1.000000e+00, %div2600, !dbg !701
  %mul2612 = fmul double %sub2611, %conv2610, !dbg !701
  %add2613 = fadd double %mul2606, %mul2612, !dbg !701
  %add2614 = fadd double %div2600, 1.000000e+00, !dbg !701
  %div2615 = fdiv double %add2613, %add2614, !dbg !701
  %conv2616 = fptosi double %div2615 to i16, !dbg !701
  %arrayidx2618 = getelementptr inbounds i16* %384, i64 %idxprom2492, !dbg !701
  store i16 %conv2616, i16* %arrayidx2618, align 2, !dbg !701, !tbaa !714
  br label %for.inc2620, !dbg !724

for.inc2620:                                      ; preds = %if.end2440, %if.end2585
  %indvars.iv.next8559 = add i32 %indvars.iv8558, 1, !dbg !694
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8559}, i64 0, metadata !284), !dbg !694
  %386 = load i32** %cctk_lsh174, align 8, !dbg !694, !tbaa !547
  %arrayidx2060 = getelementptr inbounds i32* %386, i64 1, !dbg !694
  %387 = load i32* %arrayidx2060, align 4, !dbg !694, !tbaa !535
  %cmp2061 = icmp slt i32 %indvars.iv.next8559, %387, !dbg !694
  br i1 %cmp2061, label %for.body2063, label %for.cond2058.for.inc2623.loopexit_crit_edge, !dbg !694

for.cond2058.for.inc2623.loopexit_crit_edge:      ; preds = %for.inc2620
  %arrayidx2020.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %386, i64 2
  %.pre8623.pre = load i32* %arrayidx2020.phi.trans.insert.phi.trans.insert, align 4, !dbg !691, !tbaa !535
  br label %for.inc2623, !dbg !694

for.inc2623:                                      ; preds = %if.end2057, %for.cond2058.for.inc2623.loopexit_crit_edge, %land.lhs.true2026, %land.lhs.true2035
  %388 = phi i32 [ %306, %land.lhs.true2035 ], [ %306, %land.lhs.true2026 ], [ %.pre8623.pre, %for.cond2058.for.inc2623.loopexit_crit_edge ], [ %306, %if.end2057 ], !dbg !691
  %389 = phi i32* [ %307, %land.lhs.true2035 ], [ %307, %land.lhs.true2026 ], [ %386, %for.cond2058.for.inc2623.loopexit_crit_edge ], [ %307, %if.end2057 ], !dbg !691
  %indvars.iv.next8561 = add i32 %indvars.iv8560, 1, !dbg !691
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8561}, i64 0, metadata !285), !dbg !691
  %cmp2021 = icmp slt i32 %indvars.iv.next8561, %388, !dbg !691
  br i1 %cmp2021, label %for.body2023, label %for.inc5726, !dbg !691

sw.bb2626:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond2641.preheader, label %if.then2638, !dbg !727

for.cond2641.preheader:                           ; preds = %sw.bb2626
  %390 = load i32** %cctk_lsh174, align 8, !dbg !728, !tbaa !547
  %arrayidx26438438 = getelementptr inbounds i32* %390, i64 2, !dbg !728
  %391 = load i32* %arrayidx26438438, align 4, !dbg !728, !tbaa !535
  %cmp26448439 = icmp sgt i32 %391, 0, !dbg !728
  br i1 %cmp26448439, label %for.body2646, label %for.inc5726, !dbg !728

if.then2638:                                      ; preds = %sw.bb2626
  %call2639 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 755, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !729
  br label %cleanup, !dbg !729

for.body2646:                                     ; preds = %for.cond2641.preheader, %for.inc3243
  %392 = phi i32 [ %475, %for.inc3243 ], [ %391, %for.cond2641.preheader ]
  %393 = phi i32* [ %476, %for.inc3243 ], [ %390, %for.cond2641.preheader ]
  %indvars.iv8552 = phi i32 [ %indvars.iv.next8553, %for.inc3243 ], [ 0, %for.cond2641.preheader ], !dbg !731
  %cmp2647 = icmp eq i32 %indvars.iv8552, 0, !dbg !732
  br i1 %cmp2647, label %land.lhs.true2649, label %lor.lhs.false2652, !dbg !732

land.lhs.true2649:                                ; preds = %for.body2646
  %394 = load i32* %arrayidx181, align 16, !dbg !732, !tbaa !535
  %tobool2651 = icmp eq i32 %394, 0, !dbg !732
  br i1 %tobool2651, label %for.inc3243, label %lor.lhs.false2652, !dbg !732

lor.lhs.false2652:                                ; preds = %land.lhs.true2649, %for.body2646
  %sub2655 = add nsw i32 %392, -1, !dbg !732
  %cmp2656 = icmp eq i32 %indvars.iv8552, %sub2655, !dbg !732
  br i1 %cmp2656, label %land.lhs.true2658, label %if.end2662, !dbg !732

land.lhs.true2658:                                ; preds = %lor.lhs.false2652
  %395 = load i32* %arrayidx188, align 4, !dbg !732, !tbaa !535
  %tobool2660 = icmp eq i32 %395, 0, !dbg !732
  br i1 %tobool2660, label %for.inc3243, label %if.end2662, !dbg !732

if.end2662:                                       ; preds = %land.lhs.true2658, %lor.lhs.false2652
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !324), !dbg !732
  br i1 %cmp2647, label %land.lhs.true2665, label %if.else2669, !dbg !732

land.lhs.true2665:                                ; preds = %if.end2662
  %396 = load i32* %arrayidx181, align 16, !dbg !732, !tbaa !535
  %tobool2667.not = icmp ne i32 %396, 0, !dbg !732
  %cmp2656.not = xor i1 %cmp2656, true, !dbg !732
  %brmerge8646 = or i1 %tobool2667.not, %cmp2656.not, !dbg !732
  %.mux8647 = zext i1 %tobool2667.not to i32, !dbg !732
  br i1 %brmerge8646, label %if.end2680, label %land.lhs.true2675, !dbg !732

if.else2669:                                      ; preds = %if.end2662
  br i1 %cmp2656, label %land.lhs.true2675, label %if.end2680, !dbg !732

land.lhs.true2675:                                ; preds = %land.lhs.true2665, %if.else2669
  %397 = load i32* %arrayidx188, align 4, !dbg !732, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !324), !dbg !733
  %not.tobool2677 = icmp ne i32 %397, 0, !dbg !732
  %.8344 = sext i1 %not.tobool2677 to i32, !dbg !732
  br label %if.end2680, !dbg !732

if.end2680:                                       ; preds = %land.lhs.true2665, %land.lhs.true2675, %if.else2669
  %dz2632.0 = phi i32 [ 0, %if.else2669 ], [ %.mux8647, %land.lhs.true2665 ], [ %.8344, %land.lhs.true2675 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !320), !dbg !731
  %arrayidx26838434 = getelementptr inbounds i32* %393, i64 1, !dbg !731
  %398 = load i32* %arrayidx26838434, align 4, !dbg !731, !tbaa !535
  %cmp26848435 = icmp sgt i32 %398, 0, !dbg !731
  br i1 %cmp26848435, label %for.body2686.lr.ph, label %for.inc3243, !dbg !731

for.body2686.lr.ph:                               ; preds = %if.end2680
  %tobool2879 = icmp eq i32 %dz2632.0, 0, !dbg !735
  %add3085 = add i32 %dz2632.0, %indvars.iv8552, !dbg !736
  %ispos8244 = icmp sgt i32 %dz2632.0, -1, !dbg !736
  %neg8245 = sub i32 0, %dz2632.0, !dbg !736
  %399 = select i1 %ispos8244, i32 %dz2632.0, i32 %neg8245, !dbg !736
  %mul3095 = shl nsw i32 %399, 2, !dbg !736
  %add3105 = add i32 %399, 1, !dbg !738
  %conv3165 = sitofp i32 %dz2632.0 to double, !dbg !739
  br label %for.body2686, !dbg !731

for.body2686:                                     ; preds = %for.body2686.lr.ph, %for.inc3240
  %400 = phi i32 [ %398, %for.body2686.lr.ph ], [ %474, %for.inc3240 ]
  %401 = phi i32* [ %393, %for.body2686.lr.ph ], [ %473, %for.inc3240 ]
  %indvars.iv8550 = phi i32 [ 0, %for.body2686.lr.ph ], [ %indvars.iv.next8551, %for.inc3240 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323), !dbg !735
  %cmp2687 = icmp eq i32 %indvars.iv8550, 0, !dbg !735
  br i1 %cmp2687, label %land.lhs.true2689, label %if.else2693, !dbg !735

land.lhs.true2689:                                ; preds = %for.body2686
  %402 = load i32* %arrayidx218, align 8, !dbg !735, !tbaa !535
  %tobool2691 = icmp eq i32 %402, 0, !dbg !735
  br i1 %tobool2691, label %if.else2693, label %if.end2704, !dbg !735

if.else2693:                                      ; preds = %land.lhs.true2689, %for.body2686
  %sub2696 = add nsw i32 %400, -1, !dbg !735
  %cmp2697 = icmp eq i32 %indvars.iv8550, %sub2696, !dbg !735
  br i1 %cmp2697, label %land.lhs.true2699, label %if.end2704, !dbg !735

land.lhs.true2699:                                ; preds = %if.else2693
  %403 = load i32* %arrayidx228, align 4, !dbg !735, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !323), !dbg !741
  %not.tobool2701 = icmp ne i32 %403, 0, !dbg !735
  %.8345 = sext i1 %not.tobool2701 to i32, !dbg !735
  br label %if.end2704, !dbg !735

if.end2704:                                       ; preds = %if.else2693, %land.lhs.true2689, %land.lhs.true2699
  %dy2631.0 = phi i32 [ %.8345, %land.lhs.true2699 ], [ 1, %land.lhs.true2689 ], [ 0, %if.else2693 ]
  %404 = bitcast [6 x i32]* %doBC to i64*, !dbg !735
  %405 = load i64* %404, align 16, !dbg !735
  %406 = trunc i64 %405 to i32, !dbg !735
  %tobool2706 = icmp eq i32 %406, 0, !dbg !735
  br i1 %tobool2706, label %if.end2876, label %if.then2707, !dbg !735

if.then2707:                                      ; preds = %if.end2704
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !322), !dbg !743
  %407 = load i32* %401, align 4, !dbg !744, !tbaa !535
  %mul2712 = mul nsw i32 %400, %indvars.iv8552, !dbg !744
  %add2713 = add nsw i32 %mul2712, %indvars.iv8550, !dbg !744
  %mul2714 = mul nsw i32 %add2713, %407, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %mul2714}, i64 0, metadata !326), !dbg !744
  %add2719 = add nsw i32 %dy2631.0, %indvars.iv8550, !dbg !744
  %mul2723 = mul nsw i32 %400, %add3085, !dbg !744
  %add2724 = add nsw i32 %add2719, %mul2723, !dbg !744
  %mul2725 = mul nsw i32 %add2724, %407, !dbg !744
  %add2726 = add nsw i32 %mul2725, 1, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %add2726}, i64 0, metadata !325), !dbg !744
  %ispos8250 = icmp sgt i32 %dy2631.0, -1, !dbg !744
  %neg8251 = sub i32 0, %dy2631.0, !dbg !744
  %408 = select i1 %ispos8250, i32 %dy2631.0, i32 %neg8251, !dbg !744
  %mul2729 = shl nsw i32 %408, 1, !dbg !744
  %add27308252 = or i32 %mul2729, 1, !dbg !744
  %add2733 = add nsw i32 %add27308252, %mul3095, !dbg !744
  %idxprom2734 = sext i32 %add2733 to i64, !dbg !744
  %arrayidx2735 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom2734, !dbg !744
  %409 = load double* %arrayidx2735, align 8, !dbg !744, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %409}, i64 0, metadata !327), !dbg !744
  %add2744 = add i32 %add3105, %408, !dbg !746
  %cmp2745 = icmp eq i32 %add2744, 1, !dbg !746
  %idxprom2750 = sext i32 %mul2714 to i64, !dbg !747
  %arrayidx2751 = getelementptr inbounds double* %6, i64 %idxprom2750, !dbg !747
  %410 = load double* %arrayidx2751, align 8, !dbg !747, !tbaa !559
  br i1 %cmp2745, label %cond.end2762, label %if.else2782, !dbg !746

cond.end2762:                                     ; preds = %if.then2707
  %call2764 = call double @fabs(double %410) #9, !dbg !747
  call void @llvm.dbg.value(metadata !{double %call2764}, i64 0, metadata !336), !dbg !747
  %idxprom2767 = sext i32 %add2726 to i64, !dbg !747
  %arrayidx2768 = getelementptr inbounds double* %6, i64 %idxprom2767, !dbg !747
  %411 = load double* %arrayidx2768, align 8, !dbg !747, !tbaa !559
  %call2781 = call double @fabs(double %411) #9, !dbg !747
  call void @llvm.dbg.value(metadata !{double %call2781}, i64 0, metadata !335), !dbg !747
  br label %if.end2843, !dbg !747

if.else2782:                                      ; preds = %if.then2707
  %mul2791 = fmul double %410, %410, !dbg !749
  %conv2792 = sitofp i32 %dy2631.0 to double, !dbg !749
  %arrayidx2794 = getelementptr inbounds double* %10, i64 %idxprom2750, !dbg !749
  %412 = load double* %arrayidx2794, align 8, !dbg !749, !tbaa !559
  %mul2795 = fmul double %conv2792, %412, !dbg !749
  %mul2800 = fmul double %mul2795, %mul2795, !dbg !749
  %add2801 = fadd double %mul2791, %mul2800, !dbg !749
  %arrayidx2804 = getelementptr inbounds double* %14, i64 %idxprom2750, !dbg !749
  %413 = load double* %arrayidx2804, align 8, !dbg !749, !tbaa !559
  %mul2805 = fmul double %conv3165, %413, !dbg !749
  %mul2810 = fmul double %mul2805, %mul2805, !dbg !749
  %add2811 = fadd double %add2801, %mul2810, !dbg !749
  %call2812 = call double @sqrt(double %add2811) #7, !dbg !749
  call void @llvm.dbg.value(metadata !{double %call2812}, i64 0, metadata !336), !dbg !749
  %idxprom2814 = sext i32 %add2726 to i64, !dbg !749
  %arrayidx2815 = getelementptr inbounds double* %6, i64 %idxprom2814, !dbg !749
  %414 = load double* %arrayidx2815, align 8, !dbg !749, !tbaa !559
  %mul2821 = fmul double %414, %414, !dbg !749
  %arrayidx2824 = getelementptr inbounds double* %10, i64 %idxprom2814, !dbg !749
  %415 = load double* %arrayidx2824, align 8, !dbg !749, !tbaa !559
  %mul2825 = fmul double %conv2792, %415, !dbg !749
  %mul2830 = fmul double %mul2825, %mul2825, !dbg !749
  %add2831 = fadd double %mul2821, %mul2830, !dbg !749
  %arrayidx2834 = getelementptr inbounds double* %14, i64 %idxprom2814, !dbg !749
  %416 = load double* %arrayidx2834, align 8, !dbg !749, !tbaa !559
  %mul2835 = fmul double %conv3165, %416, !dbg !749
  %mul2840 = fmul double %mul2835, %mul2835, !dbg !749
  %add2841 = fadd double %add2831, %mul2840, !dbg !749
  %call2842 = call double @sqrt(double %add2841) #7, !dbg !749
  call void @llvm.dbg.value(metadata !{double %call2842}, i64 0, metadata !335), !dbg !749
  br label %if.end2843

if.end2843:                                       ; preds = %if.else2782, %cond.end2762
  %u_src2737.0 = phi double [ %call2781, %cond.end2762 ], [ %call2842, %if.else2782 ]
  %u_dst2738.0 = phi double [ %call2764, %cond.end2762 ], [ %call2812, %if.else2782 ]
  %mul2844 = fmul double %conv, %409, !dbg !746
  %add2845 = fadd double %u_src2737.0, %u_dst2738.0, !dbg !746
  %mul2846 = fmul double %mul2844, %add2845, !dbg !746
  %idxprom2847 = sext i32 %add2726 to i64, !dbg !746
  %arrayidx2848 = getelementptr inbounds double* %18, i64 %idxprom2847, !dbg !746
  %417 = load double* %arrayidx2848, align 8, !dbg !746, !tbaa !559
  %arrayidx2850 = getelementptr inbounds double* %18, i64 %idxprom2750, !dbg !746
  %418 = load double* %arrayidx2850, align 8, !dbg !746, !tbaa !559
  %add2851 = fadd double %417, %418, !dbg !746
  %mul2857 = fmul double %add2851, %add2851, !dbg !746
  %div2858 = fdiv double %mul2846, %mul2857, !dbg !746
  call void @llvm.dbg.value(metadata !{double %div2858}, i64 0, metadata !337), !dbg !746
  %419 = load i8**** %data, align 8, !dbg !746, !tbaa !547
  %arrayidx2861 = getelementptr inbounds i8*** %419, i64 %indvars.iv8600, !dbg !746
  %420 = load i8*** %arrayidx2861, align 8, !dbg !746, !tbaa !547
  %421 = load i8** %420, align 8, !dbg !746, !tbaa !547
  %422 = bitcast i8* %421 to i32*, !dbg !746
  call void @llvm.dbg.value(metadata !{i32* %422}, i64 0, metadata !328), !dbg !746
  %mul2863 = fmul double %div2858, 2.000000e+00, !dbg !746
  %mul2864 = fmul double %mul2863, %finf, !dbg !746
  %arrayidx2866 = getelementptr inbounds i32* %422, i64 %idxprom2847, !dbg !746
  %423 = load i32* %arrayidx2866, align 4, !dbg !746, !tbaa !535
  %conv2867 = sitofp i32 %423 to double, !dbg !746
  %sub2868 = fsub double 1.000000e+00, %div2858, !dbg !746
  %mul2869 = fmul double %sub2868, %conv2867, !dbg !746
  %add2870 = fadd double %mul2864, %mul2869, !dbg !746
  %add2871 = fadd double %div2858, 1.000000e+00, !dbg !746
  %div2872 = fdiv double %add2870, %add2871, !dbg !746
  %conv2873 = fptosi double %div2872 to i32, !dbg !746
  %arrayidx2875 = getelementptr inbounds i32* %422, i64 %idxprom2750, !dbg !746
  store i32 %conv2873, i32* %arrayidx2875, align 4, !dbg !746, !tbaa !535
  br label %if.end2876, !dbg !743

if.end2876:                                       ; preds = %if.end2704, %if.end2843
  %tobool2877 = icmp ne i32 %dy2631.0, 0, !dbg !735
  %tobool2877.not = xor i1 %tobool2877, true, !dbg !735
  %or.cond8346 = and i1 %tobool2879, %tobool2877.not, !dbg !735
  br i1 %or.cond8346, label %if.end3061, label %if.then2880, !dbg !735

if.then2880:                                      ; preds = %if.end2876
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !751
  %424 = load i32** %cctk_lsh174, align 8, !dbg !752, !tbaa !547
  %425 = load i32* %424, align 4, !dbg !752, !tbaa !535
  %arrayidx2884 = getelementptr inbounds i32* %424, i64 1, !dbg !752
  %426 = load i32* %arrayidx2884, align 4, !dbg !752, !tbaa !535
  %ispos8246 = icmp sgt i32 %dy2631.0, -1, !dbg !752
  %neg8247 = sub i32 0, %dy2631.0, !dbg !752
  %427 = select i1 %ispos8246, i32 %dy2631.0, i32 %neg8247, !dbg !752
  call void @llvm.dbg.value(metadata !{double %428}, i64 0, metadata !327), !dbg !752
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !318), !dbg !754
  %sub29128429 = add nsw i32 %425, -1, !dbg !754
  %cmp29138430 = icmp sgt i32 %sub29128429, 1, !dbg !754
  br i1 %cmp29138430, label %for.body2915.lr.ph, label %if.end3061, !dbg !754

for.body2915.lr.ph:                               ; preds = %if.then2880
  %mul2902 = shl nsw i32 %427, 1, !dbg !752
  %add2906 = add nsw i32 %mul2902, %mul3095, !dbg !752
  %idxprom2907 = sext i32 %add2906 to i64, !dbg !752
  %arrayidx2908 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom2907, !dbg !752
  %428 = load double* %arrayidx2908, align 16, !dbg !752, !tbaa !559
  %add2924 = add nsw i32 %427, %399, !dbg !755
  %cmp2925 = icmp eq i32 %add2924, 1, !dbg !755
  %.8347 = select i1 %tobool2877, double* %10, double* %14, !dbg !756
  %mul3024 = fmul double %conv, %428, !dbg !755
  %conv2972 = sitofp i32 %dy2631.0 to double, !dbg !758
  %429 = add i32 %dy2631.0, %indvars.iv8550, !dbg !754
  %430 = mul i32 %add3085, %426, !dbg !754
  %431 = add i32 %429, %430, !dbg !754
  %432 = mul i32 %425, %431, !dbg !754
  %433 = sext i32 %432 to i64, !dbg !728
  %434 = mul i32 %indvars.iv8552, %426, !dbg !754
  %435 = add i32 %indvars.iv8550, %434, !dbg !754
  %436 = mul i32 %425, %435, !dbg !754
  %437 = sext i32 %436 to i64, !dbg !754
  br label %for.body2915, !dbg !754

for.body2915:                                     ; preds = %for.body2915.lr.ph, %if.end3023
  %438 = phi i32* [ %424, %for.body2915.lr.ph ], [ %445, %if.end3023 ]
  %indvars.iv8556 = phi i64 [ %437, %for.body2915.lr.ph ], [ %indvars.iv.next8557, %if.end3023 ], !dbg !754
  %indvars.iv8554 = phi i64 [ %433, %for.body2915.lr.ph ], [ %indvars.iv.next8555, %if.end3023 ], !dbg !728
  %i2627.08431 = phi i32 [ 1, %for.body2915.lr.ph ], [ %inc3057, %if.end3023 ]
  %indvars.iv.next8557 = add i64 %indvars.iv8556, 1, !dbg !754
  %indvars.iv.next8555 = add i64 %indvars.iv8554, 1, !dbg !754
  br i1 %cmp2925, label %cond.false2932, label %if.else2962, !dbg !755

cond.false2932:                                   ; preds = %for.body2915
  %cond2943.in = getelementptr inbounds double* %.8347, i64 %indvars.iv.next8557, !dbg !756
  %cond2943 = load double* %cond2943.in, align 8, !dbg !756
  %call2944 = call double @fabs(double %cond2943) #9, !dbg !756
  call void @llvm.dbg.value(metadata !{double %call2944}, i64 0, metadata !344), !dbg !756
  %cond2960.in = getelementptr inbounds double* %.8347, i64 %indvars.iv.next8555, !dbg !756
  %cond2960 = load double* %cond2960.in, align 8, !dbg !756
  %call2961 = call double @fabs(double %cond2960) #9, !dbg !756
  call void @llvm.dbg.value(metadata !{double %call2961}, i64 0, metadata !343), !dbg !756
  br label %if.end3023, !dbg !756

if.else2962:                                      ; preds = %for.body2915
  %arrayidx2965 = getelementptr inbounds double* %6, i64 %indvars.iv.next8557, !dbg !758
  %439 = load double* %arrayidx2965, align 8, !dbg !758, !tbaa !559
  %mul2966 = fmul double %439, 0.000000e+00, !dbg !758
  %mul2971 = fmul double %mul2966, %mul2966, !dbg !758
  %arrayidx2974 = getelementptr inbounds double* %10, i64 %indvars.iv.next8557, !dbg !758
  %440 = load double* %arrayidx2974, align 8, !dbg !758, !tbaa !559
  %mul2975 = fmul double %conv2972, %440, !dbg !758
  %mul2980 = fmul double %mul2975, %mul2975, !dbg !758
  %add2981 = fadd double %mul2971, %mul2980, !dbg !758
  %arrayidx2984 = getelementptr inbounds double* %14, i64 %indvars.iv.next8557, !dbg !758
  %441 = load double* %arrayidx2984, align 8, !dbg !758, !tbaa !559
  %mul2985 = fmul double %conv3165, %441, !dbg !758
  %mul2990 = fmul double %mul2985, %mul2985, !dbg !758
  %add2991 = fadd double %add2981, %mul2990, !dbg !758
  %call2992 = call double @sqrt(double %add2991) #7, !dbg !758
  call void @llvm.dbg.value(metadata !{double %call2992}, i64 0, metadata !344), !dbg !758
  %arrayidx2995 = getelementptr inbounds double* %6, i64 %indvars.iv.next8555, !dbg !758
  %442 = load double* %arrayidx2995, align 8, !dbg !758, !tbaa !559
  %mul2996 = fmul double %442, 0.000000e+00, !dbg !758
  %mul3001 = fmul double %mul2996, %mul2996, !dbg !758
  %arrayidx3004 = getelementptr inbounds double* %10, i64 %indvars.iv.next8555, !dbg !758
  %443 = load double* %arrayidx3004, align 8, !dbg !758, !tbaa !559
  %mul3005 = fmul double %conv2972, %443, !dbg !758
  %mul3010 = fmul double %mul3005, %mul3005, !dbg !758
  %add3011 = fadd double %mul3001, %mul3010, !dbg !758
  %arrayidx3014 = getelementptr inbounds double* %14, i64 %indvars.iv.next8555, !dbg !758
  %444 = load double* %arrayidx3014, align 8, !dbg !758, !tbaa !559
  %mul3015 = fmul double %conv3165, %444, !dbg !758
  %mul3020 = fmul double %mul3015, %mul3015, !dbg !758
  %add3021 = fadd double %add3011, %mul3020, !dbg !758
  %call3022 = call double @sqrt(double %add3021) #7, !dbg !758
  call void @llvm.dbg.value(metadata !{double %call3022}, i64 0, metadata !343), !dbg !758
  %.pre8608 = load i32** %cctk_lsh174, align 8, !dbg !754, !tbaa !547
  br label %if.end3023

if.end3023:                                       ; preds = %if.else2962, %cond.false2932
  %445 = phi i32* [ %438, %cond.false2932 ], [ %.pre8608, %if.else2962 ], !dbg !755
  %u_src2917.0 = phi double [ %call2961, %cond.false2932 ], [ %call3022, %if.else2962 ]
  %u_dst2918.0 = phi double [ %call2944, %cond.false2932 ], [ %call2992, %if.else2962 ]
  %add3025 = fadd double %u_src2917.0, %u_dst2918.0, !dbg !755
  %mul3026 = fmul double %mul3024, %add3025, !dbg !755
  %arrayidx3028 = getelementptr inbounds double* %18, i64 %indvars.iv.next8555, !dbg !755
  %446 = load double* %arrayidx3028, align 8, !dbg !755, !tbaa !559
  %arrayidx3030 = getelementptr inbounds double* %18, i64 %indvars.iv.next8557, !dbg !755
  %447 = load double* %arrayidx3030, align 8, !dbg !755, !tbaa !559
  %add3031 = fadd double %446, %447, !dbg !755
  %mul3037 = fmul double %add3031, %add3031, !dbg !755
  %div3038 = fdiv double %mul3026, %mul3037, !dbg !755
  call void @llvm.dbg.value(metadata !{double %div3038}, i64 0, metadata !345), !dbg !755
  %448 = load i8**** %data, align 8, !dbg !755, !tbaa !547
  %arrayidx3041 = getelementptr inbounds i8*** %448, i64 %indvars.iv8600, !dbg !755
  %449 = load i8*** %arrayidx3041, align 8, !dbg !755, !tbaa !547
  %450 = load i8** %449, align 8, !dbg !755, !tbaa !547
  %451 = bitcast i8* %450 to i32*, !dbg !755
  call void @llvm.dbg.value(metadata !{i32* %451}, i64 0, metadata !338), !dbg !755
  %mul3043 = fmul double %div3038, 2.000000e+00, !dbg !755
  %mul3044 = fmul double %mul3043, %finf, !dbg !755
  %arrayidx3046 = getelementptr inbounds i32* %451, i64 %indvars.iv.next8555, !dbg !755
  %452 = load i32* %arrayidx3046, align 4, !dbg !755, !tbaa !535
  %conv3047 = sitofp i32 %452 to double, !dbg !755
  %sub3048 = fsub double 1.000000e+00, %div3038, !dbg !755
  %mul3049 = fmul double %sub3048, %conv3047, !dbg !755
  %add3050 = fadd double %mul3044, %mul3049, !dbg !755
  %add3051 = fadd double %div3038, 1.000000e+00, !dbg !755
  %div3052 = fdiv double %add3050, %add3051, !dbg !755
  %conv3053 = fptosi double %div3052 to i32, !dbg !755
  %arrayidx3055 = getelementptr inbounds i32* %451, i64 %indvars.iv.next8557, !dbg !755
  store i32 %conv3053, i32* %arrayidx3055, align 4, !dbg !755, !tbaa !535
  %inc3057 = add nsw i32 %i2627.08431, 1, !dbg !754
  call void @llvm.dbg.value(metadata !{i32 %inc3057}, i64 0, metadata !318), !dbg !754
  %453 = load i32* %445, align 4, !dbg !754, !tbaa !535
  %sub2912 = add nsw i32 %453, -1, !dbg !754
  %cmp2913 = icmp slt i32 %inc3057, %sub2912, !dbg !754
  br i1 %cmp2913, label %for.body2915, label %if.end3061, !dbg !754

if.end3061:                                       ; preds = %if.then2880, %if.end3023, %if.end2876
  %tobool3063 = icmp ult i64 %405, 4294967296, !dbg !735
  br i1 %tobool3063, label %for.inc3240, label %if.then3064, !dbg !735

if.then3064:                                      ; preds = %if.end3061
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !322), !dbg !760
  %454 = load i32** %cctk_lsh174, align 8, !dbg !736, !tbaa !547
  %455 = load i32* %454, align 4, !dbg !736, !tbaa !535
  %sub3067 = add nsw i32 %455, -1, !dbg !736
  %arrayidx3071 = getelementptr inbounds i32* %454, i64 1, !dbg !736
  %456 = load i32* %arrayidx3071, align 4, !dbg !736, !tbaa !535
  %mul3072 = mul nsw i32 %456, %indvars.iv8552, !dbg !736
  %add3073 = add nsw i32 %mul3072, %indvars.iv8550, !dbg !736
  %mul3074 = mul nsw i32 %add3073, %455, !dbg !736
  %add3075 = add nsw i32 %sub3067, %mul3074, !dbg !736
  call void @llvm.dbg.value(metadata !{i32 %add3075}, i64 0, metadata !326), !dbg !736
  %add3079 = add nsw i32 %455, -2, !dbg !736
  %add3082 = add nsw i32 %dy2631.0, %indvars.iv8550, !dbg !736
  %mul3086 = mul nsw i32 %456, %add3085, !dbg !736
  %add3087 = add nsw i32 %add3082, %mul3086, !dbg !736
  %mul3088 = mul nsw i32 %add3087, %455, !dbg !736
  %add3089 = add nsw i32 %add3079, %mul3088, !dbg !736
  call void @llvm.dbg.value(metadata !{i32 %add3089}, i64 0, metadata !325), !dbg !736
  %ispos8241 = icmp sgt i32 %dy2631.0, -1, !dbg !736
  %neg8242 = sub i32 0, %dy2631.0, !dbg !736
  %457 = select i1 %ispos8241, i32 %dy2631.0, i32 %neg8242, !dbg !736
  %mul3092 = shl nsw i32 %457, 1, !dbg !736
  %add30938243 = or i32 %mul3092, 1, !dbg !736
  %add3096 = add nsw i32 %add30938243, %mul3095, !dbg !736
  %idxprom3097 = sext i32 %add3096 to i64, !dbg !736
  %arrayidx3098 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom3097, !dbg !736
  %458 = load double* %arrayidx3098, align 8, !dbg !736, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %458}, i64 0, metadata !327), !dbg !736
  %add3107 = add i32 %add3105, %457, !dbg !738
  %cmp3108 = icmp eq i32 %add3107, 1, !dbg !738
  %idxprom3113 = sext i32 %add3075 to i64, !dbg !761
  %arrayidx3114 = getelementptr inbounds double* %6, i64 %idxprom3113, !dbg !761
  %459 = load double* %arrayidx3114, align 8, !dbg !761, !tbaa !559
  br i1 %cmp3108, label %cond.end3125, label %if.else3145, !dbg !738

cond.end3125:                                     ; preds = %if.then3064
  %call3127 = call double @fabs(double %459) #9, !dbg !761
  call void @llvm.dbg.value(metadata !{double %call3127}, i64 0, metadata !350), !dbg !761
  %idxprom3130 = sext i32 %add3089 to i64, !dbg !761
  %arrayidx3131 = getelementptr inbounds double* %6, i64 %idxprom3130, !dbg !761
  %460 = load double* %arrayidx3131, align 8, !dbg !761, !tbaa !559
  %call3144 = call double @fabs(double %460) #9, !dbg !761
  call void @llvm.dbg.value(metadata !{double %call3144}, i64 0, metadata !349), !dbg !761
  br label %if.end3206, !dbg !761

if.else3145:                                      ; preds = %if.then3064
  %mul3149 = fmul double %459, -1.000000e+00, !dbg !739
  %mul3154 = fmul double %mul3149, %mul3149, !dbg !739
  %conv3155 = sitofp i32 %dy2631.0 to double, !dbg !739
  %arrayidx3157 = getelementptr inbounds double* %10, i64 %idxprom3113, !dbg !739
  %461 = load double* %arrayidx3157, align 8, !dbg !739, !tbaa !559
  %mul3158 = fmul double %conv3155, %461, !dbg !739
  %mul3163 = fmul double %mul3158, %mul3158, !dbg !739
  %add3164 = fadd double %mul3154, %mul3163, !dbg !739
  %arrayidx3167 = getelementptr inbounds double* %14, i64 %idxprom3113, !dbg !739
  %462 = load double* %arrayidx3167, align 8, !dbg !739, !tbaa !559
  %mul3168 = fmul double %conv3165, %462, !dbg !739
  %mul3173 = fmul double %mul3168, %mul3168, !dbg !739
  %add3174 = fadd double %add3164, %mul3173, !dbg !739
  %call3175 = call double @sqrt(double %add3174) #7, !dbg !739
  call void @llvm.dbg.value(metadata !{double %call3175}, i64 0, metadata !350), !dbg !739
  %idxprom3177 = sext i32 %add3089 to i64, !dbg !739
  %arrayidx3178 = getelementptr inbounds double* %6, i64 %idxprom3177, !dbg !739
  %463 = load double* %arrayidx3178, align 8, !dbg !739, !tbaa !559
  %mul3179 = fmul double %463, -1.000000e+00, !dbg !739
  %mul3184 = fmul double %mul3179, %mul3179, !dbg !739
  %arrayidx3187 = getelementptr inbounds double* %10, i64 %idxprom3177, !dbg !739
  %464 = load double* %arrayidx3187, align 8, !dbg !739, !tbaa !559
  %mul3188 = fmul double %conv3155, %464, !dbg !739
  %mul3193 = fmul double %mul3188, %mul3188, !dbg !739
  %add3194 = fadd double %mul3184, %mul3193, !dbg !739
  %arrayidx3197 = getelementptr inbounds double* %14, i64 %idxprom3177, !dbg !739
  %465 = load double* %arrayidx3197, align 8, !dbg !739, !tbaa !559
  %mul3198 = fmul double %conv3165, %465, !dbg !739
  %mul3203 = fmul double %mul3198, %mul3198, !dbg !739
  %add3204 = fadd double %add3194, %mul3203, !dbg !739
  %call3205 = call double @sqrt(double %add3204) #7, !dbg !739
  call void @llvm.dbg.value(metadata !{double %call3205}, i64 0, metadata !349), !dbg !739
  br label %if.end3206

if.end3206:                                       ; preds = %if.else3145, %cond.end3125
  %u_src3100.0 = phi double [ %call3144, %cond.end3125 ], [ %call3205, %if.else3145 ]
  %u_dst3101.0 = phi double [ %call3127, %cond.end3125 ], [ %call3175, %if.else3145 ]
  %mul3207 = fmul double %conv, %458, !dbg !738
  %add3208 = fadd double %u_src3100.0, %u_dst3101.0, !dbg !738
  %mul3209 = fmul double %mul3207, %add3208, !dbg !738
  %idxprom3210 = sext i32 %add3089 to i64, !dbg !738
  %arrayidx3211 = getelementptr inbounds double* %18, i64 %idxprom3210, !dbg !738
  %466 = load double* %arrayidx3211, align 8, !dbg !738, !tbaa !559
  %arrayidx3213 = getelementptr inbounds double* %18, i64 %idxprom3113, !dbg !738
  %467 = load double* %arrayidx3213, align 8, !dbg !738, !tbaa !559
  %add3214 = fadd double %466, %467, !dbg !738
  %mul3220 = fmul double %add3214, %add3214, !dbg !738
  %div3221 = fdiv double %mul3209, %mul3220, !dbg !738
  call void @llvm.dbg.value(metadata !{double %div3221}, i64 0, metadata !351), !dbg !738
  %468 = load i8**** %data, align 8, !dbg !738, !tbaa !547
  %arrayidx3224 = getelementptr inbounds i8*** %468, i64 %indvars.iv8600, !dbg !738
  %469 = load i8*** %arrayidx3224, align 8, !dbg !738, !tbaa !547
  %470 = load i8** %469, align 8, !dbg !738, !tbaa !547
  %471 = bitcast i8* %470 to i32*, !dbg !738
  call void @llvm.dbg.value(metadata !{i32* %471}, i64 0, metadata !346), !dbg !738
  %mul3226 = fmul double %div3221, 2.000000e+00, !dbg !738
  %mul3227 = fmul double %mul3226, %finf, !dbg !738
  %arrayidx3229 = getelementptr inbounds i32* %471, i64 %idxprom3210, !dbg !738
  %472 = load i32* %arrayidx3229, align 4, !dbg !738, !tbaa !535
  %conv3230 = sitofp i32 %472 to double, !dbg !738
  %sub3231 = fsub double 1.000000e+00, %div3221, !dbg !738
  %mul3232 = fmul double %sub3231, %conv3230, !dbg !738
  %add3233 = fadd double %mul3227, %mul3232, !dbg !738
  %add3234 = fadd double %div3221, 1.000000e+00, !dbg !738
  %div3235 = fdiv double %add3233, %add3234, !dbg !738
  %conv3236 = fptosi double %div3235 to i32, !dbg !738
  %arrayidx3238 = getelementptr inbounds i32* %471, i64 %idxprom3113, !dbg !738
  store i32 %conv3236, i32* %arrayidx3238, align 4, !dbg !738, !tbaa !535
  br label %for.inc3240, !dbg !760

for.inc3240:                                      ; preds = %if.end3061, %if.end3206
  %indvars.iv.next8551 = add i32 %indvars.iv8550, 1, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8551}, i64 0, metadata !320), !dbg !731
  %473 = load i32** %cctk_lsh174, align 8, !dbg !731, !tbaa !547
  %arrayidx2683 = getelementptr inbounds i32* %473, i64 1, !dbg !731
  %474 = load i32* %arrayidx2683, align 4, !dbg !731, !tbaa !535
  %cmp2684 = icmp slt i32 %indvars.iv.next8551, %474, !dbg !731
  br i1 %cmp2684, label %for.body2686, label %for.cond2681.for.inc3243.loopexit_crit_edge, !dbg !731

for.cond2681.for.inc3243.loopexit_crit_edge:      ; preds = %for.inc3240
  %arrayidx2643.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %473, i64 2
  %.pre8625.pre = load i32* %arrayidx2643.phi.trans.insert.phi.trans.insert, align 4, !dbg !728, !tbaa !535
  br label %for.inc3243, !dbg !731

for.inc3243:                                      ; preds = %if.end2680, %for.cond2681.for.inc3243.loopexit_crit_edge, %land.lhs.true2649, %land.lhs.true2658
  %475 = phi i32 [ %392, %land.lhs.true2658 ], [ %392, %land.lhs.true2649 ], [ %.pre8625.pre, %for.cond2681.for.inc3243.loopexit_crit_edge ], [ %392, %if.end2680 ], !dbg !728
  %476 = phi i32* [ %393, %land.lhs.true2658 ], [ %393, %land.lhs.true2649 ], [ %473, %for.cond2681.for.inc3243.loopexit_crit_edge ], [ %393, %if.end2680 ], !dbg !728
  %indvars.iv.next8553 = add i32 %indvars.iv8552, 1, !dbg !728
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8553}, i64 0, metadata !321), !dbg !728
  %cmp2644 = icmp slt i32 %indvars.iv.next8553, %475, !dbg !728
  br i1 %cmp2644, label %for.body2646, label %for.inc5726, !dbg !728

sw.bb3246:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond3261.preheader, label %if.then3258, !dbg !763

for.cond3261.preheader:                           ; preds = %sw.bb3246
  %477 = load i32** %cctk_lsh174, align 8, !dbg !764, !tbaa !547
  %arrayidx32638423 = getelementptr inbounds i32* %477, i64 2, !dbg !764
  %478 = load i32* %arrayidx32638423, align 4, !dbg !764, !tbaa !535
  %cmp32648424 = icmp sgt i32 %478, 0, !dbg !764
  br i1 %cmp32648424, label %for.body3266, label %for.inc5726, !dbg !764

if.then3258:                                      ; preds = %sw.bb3246
  %call3259 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 760, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !765
  br label %cleanup, !dbg !765

for.body3266:                                     ; preds = %for.cond3261.preheader, %for.inc3863
  %479 = phi i32 [ %561, %for.inc3863 ], [ %478, %for.cond3261.preheader ]
  %480 = phi i32* [ %562, %for.inc3863 ], [ %477, %for.cond3261.preheader ]
  %indvars.iv8544 = phi i32 [ %indvars.iv.next8545, %for.inc3863 ], [ 0, %for.cond3261.preheader ], !dbg !767
  %cmp3267 = icmp eq i32 %indvars.iv8544, 0, !dbg !768
  br i1 %cmp3267, label %land.lhs.true3269, label %lor.lhs.false3272, !dbg !768

land.lhs.true3269:                                ; preds = %for.body3266
  %481 = load i32* %arrayidx181, align 16, !dbg !768, !tbaa !535
  %tobool3271 = icmp eq i32 %481, 0, !dbg !768
  br i1 %tobool3271, label %for.inc3863, label %lor.lhs.false3272, !dbg !768

lor.lhs.false3272:                                ; preds = %land.lhs.true3269, %for.body3266
  %sub3275 = add nsw i32 %479, -1, !dbg !768
  %cmp3276 = icmp eq i32 %indvars.iv8544, %sub3275, !dbg !768
  br i1 %cmp3276, label %land.lhs.true3278, label %if.end3282, !dbg !768

land.lhs.true3278:                                ; preds = %lor.lhs.false3272
  %482 = load i32* %arrayidx188, align 4, !dbg !768, !tbaa !535
  %tobool3280 = icmp eq i32 %482, 0, !dbg !768
  br i1 %tobool3280, label %for.inc3863, label %if.end3282, !dbg !768

if.end3282:                                       ; preds = %land.lhs.true3278, %lor.lhs.false3272
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !358), !dbg !768
  br i1 %cmp3267, label %land.lhs.true3285, label %if.else3289, !dbg !768

land.lhs.true3285:                                ; preds = %if.end3282
  %483 = load i32* %arrayidx181, align 16, !dbg !768, !tbaa !535
  %tobool3287.not = icmp ne i32 %483, 0, !dbg !768
  %cmp3276.not = xor i1 %cmp3276, true, !dbg !768
  %brmerge8648 = or i1 %tobool3287.not, %cmp3276.not, !dbg !768
  %.mux8649 = zext i1 %tobool3287.not to i32, !dbg !768
  br i1 %brmerge8648, label %if.end3300, label %land.lhs.true3295, !dbg !768

if.else3289:                                      ; preds = %if.end3282
  br i1 %cmp3276, label %land.lhs.true3295, label %if.end3300, !dbg !768

land.lhs.true3295:                                ; preds = %land.lhs.true3285, %if.else3289
  %484 = load i32* %arrayidx188, align 4, !dbg !768, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !358), !dbg !769
  %not.tobool3297 = icmp ne i32 %484, 0, !dbg !768
  %.8348 = sext i1 %not.tobool3297 to i32, !dbg !768
  br label %if.end3300, !dbg !768

if.end3300:                                       ; preds = %land.lhs.true3285, %land.lhs.true3295, %if.else3289
  %dz3252.0 = phi i32 [ 0, %if.else3289 ], [ %.mux8649, %land.lhs.true3285 ], [ %.8348, %land.lhs.true3295 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !354), !dbg !767
  %arrayidx33038419 = getelementptr inbounds i32* %480, i64 1, !dbg !767
  %485 = load i32* %arrayidx33038419, align 4, !dbg !767, !tbaa !535
  %cmp33048420 = icmp sgt i32 %485, 0, !dbg !767
  br i1 %cmp33048420, label %for.body3306.lr.ph, label %for.inc3863, !dbg !767

for.body3306.lr.ph:                               ; preds = %if.end3300
  %tobool3499 = icmp eq i32 %dz3252.0, 0, !dbg !771
  %add3705 = add i32 %dz3252.0, %indvars.iv8544, !dbg !772
  %ispos8230 = icmp sgt i32 %dz3252.0, -1, !dbg !772
  %neg8231 = sub i32 0, %dz3252.0, !dbg !772
  %486 = select i1 %ispos8230, i32 %dz3252.0, i32 %neg8231, !dbg !772
  %mul3715 = shl nsw i32 %486, 2, !dbg !772
  %add3725 = add i32 %486, 1, !dbg !774
  %conv3785 = sitofp i32 %dz3252.0 to double, !dbg !775
  br label %for.body3306, !dbg !767

for.body3306:                                     ; preds = %for.body3306.lr.ph, %for.inc3860
  %487 = phi i32 [ %485, %for.body3306.lr.ph ], [ %560, %for.inc3860 ]
  %488 = phi i32* [ %480, %for.body3306.lr.ph ], [ %559, %for.inc3860 ]
  %indvars.iv8542 = phi i32 [ 0, %for.body3306.lr.ph ], [ %indvars.iv.next8543, %for.inc3860 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !357), !dbg !771
  %cmp3307 = icmp eq i32 %indvars.iv8542, 0, !dbg !771
  br i1 %cmp3307, label %land.lhs.true3309, label %if.else3313, !dbg !771

land.lhs.true3309:                                ; preds = %for.body3306
  %489 = load i32* %arrayidx218, align 8, !dbg !771, !tbaa !535
  %tobool3311 = icmp eq i32 %489, 0, !dbg !771
  br i1 %tobool3311, label %if.else3313, label %if.end3324, !dbg !771

if.else3313:                                      ; preds = %land.lhs.true3309, %for.body3306
  %sub3316 = add nsw i32 %487, -1, !dbg !771
  %cmp3317 = icmp eq i32 %indvars.iv8542, %sub3316, !dbg !771
  br i1 %cmp3317, label %land.lhs.true3319, label %if.end3324, !dbg !771

land.lhs.true3319:                                ; preds = %if.else3313
  %490 = load i32* %arrayidx228, align 4, !dbg !771, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !357), !dbg !777
  %not.tobool3321 = icmp ne i32 %490, 0, !dbg !771
  %.8349 = sext i1 %not.tobool3321 to i32, !dbg !771
  br label %if.end3324, !dbg !771

if.end3324:                                       ; preds = %if.else3313, %land.lhs.true3309, %land.lhs.true3319
  %dy3251.0 = phi i32 [ %.8349, %land.lhs.true3319 ], [ 1, %land.lhs.true3309 ], [ 0, %if.else3313 ]
  %491 = bitcast [6 x i32]* %doBC to i64*, !dbg !771
  %492 = load i64* %491, align 16, !dbg !771
  %493 = trunc i64 %492 to i32, !dbg !771
  %tobool3326 = icmp eq i32 %493, 0, !dbg !771
  br i1 %tobool3326, label %if.end3496, label %if.then3327, !dbg !771

if.then3327:                                      ; preds = %if.end3324
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !356), !dbg !779
  %494 = load i32* %488, align 4, !dbg !780, !tbaa !535
  %mul3332 = mul nsw i32 %487, %indvars.iv8544, !dbg !780
  %add3333 = add nsw i32 %mul3332, %indvars.iv8542, !dbg !780
  %mul3334 = mul nsw i32 %add3333, %494, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %mul3334}, i64 0, metadata !360), !dbg !780
  %add3339 = add nsw i32 %dy3251.0, %indvars.iv8542, !dbg !780
  %mul3343 = mul nsw i32 %487, %add3705, !dbg !780
  %add3344 = add nsw i32 %add3339, %mul3343, !dbg !780
  %mul3345 = mul nsw i32 %add3344, %494, !dbg !780
  %add3346 = add nsw i32 %mul3345, 1, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %add3346}, i64 0, metadata !359), !dbg !780
  %ispos8236 = icmp sgt i32 %dy3251.0, -1, !dbg !780
  %neg8237 = sub i32 0, %dy3251.0, !dbg !780
  %495 = select i1 %ispos8236, i32 %dy3251.0, i32 %neg8237, !dbg !780
  %mul3349 = shl nsw i32 %495, 1, !dbg !780
  %add33508238 = or i32 %mul3349, 1, !dbg !780
  %add3353 = add nsw i32 %add33508238, %mul3715, !dbg !780
  %idxprom3354 = sext i32 %add3353 to i64, !dbg !780
  %arrayidx3355 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom3354, !dbg !780
  %496 = load double* %arrayidx3355, align 8, !dbg !780, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %496}, i64 0, metadata !361), !dbg !780
  %add3364 = add i32 %add3725, %495, !dbg !782
  %cmp3365 = icmp eq i32 %add3364, 1, !dbg !782
  %idxprom3370 = sext i32 %mul3334 to i64, !dbg !783
  %arrayidx3371 = getelementptr inbounds double* %6, i64 %idxprom3370, !dbg !783
  %497 = load double* %arrayidx3371, align 8, !dbg !783, !tbaa !559
  br i1 %cmp3365, label %cond.end3382, label %if.else3402, !dbg !782

cond.end3382:                                     ; preds = %if.then3327
  %call3384 = call double @fabs(double %497) #9, !dbg !783
  call void @llvm.dbg.value(metadata !{double %call3384}, i64 0, metadata !372), !dbg !783
  %idxprom3387 = sext i32 %add3346 to i64, !dbg !783
  %arrayidx3388 = getelementptr inbounds double* %6, i64 %idxprom3387, !dbg !783
  %498 = load double* %arrayidx3388, align 8, !dbg !783, !tbaa !559
  %call3401 = call double @fabs(double %498) #9, !dbg !783
  call void @llvm.dbg.value(metadata !{double %call3401}, i64 0, metadata !371), !dbg !783
  br label %if.end3463, !dbg !783

if.else3402:                                      ; preds = %if.then3327
  %mul3411 = fmul double %497, %497, !dbg !785
  %conv3412 = sitofp i32 %dy3251.0 to double, !dbg !785
  %arrayidx3414 = getelementptr inbounds double* %10, i64 %idxprom3370, !dbg !785
  %499 = load double* %arrayidx3414, align 8, !dbg !785, !tbaa !559
  %mul3415 = fmul double %conv3412, %499, !dbg !785
  %mul3420 = fmul double %mul3415, %mul3415, !dbg !785
  %add3421 = fadd double %mul3411, %mul3420, !dbg !785
  %arrayidx3424 = getelementptr inbounds double* %14, i64 %idxprom3370, !dbg !785
  %500 = load double* %arrayidx3424, align 8, !dbg !785, !tbaa !559
  %mul3425 = fmul double %conv3785, %500, !dbg !785
  %mul3430 = fmul double %mul3425, %mul3425, !dbg !785
  %add3431 = fadd double %add3421, %mul3430, !dbg !785
  %call3432 = call double @sqrt(double %add3431) #7, !dbg !785
  call void @llvm.dbg.value(metadata !{double %call3432}, i64 0, metadata !372), !dbg !785
  %idxprom3434 = sext i32 %add3346 to i64, !dbg !785
  %arrayidx3435 = getelementptr inbounds double* %6, i64 %idxprom3434, !dbg !785
  %501 = load double* %arrayidx3435, align 8, !dbg !785, !tbaa !559
  %mul3441 = fmul double %501, %501, !dbg !785
  %arrayidx3444 = getelementptr inbounds double* %10, i64 %idxprom3434, !dbg !785
  %502 = load double* %arrayidx3444, align 8, !dbg !785, !tbaa !559
  %mul3445 = fmul double %conv3412, %502, !dbg !785
  %mul3450 = fmul double %mul3445, %mul3445, !dbg !785
  %add3451 = fadd double %mul3441, %mul3450, !dbg !785
  %arrayidx3454 = getelementptr inbounds double* %14, i64 %idxprom3434, !dbg !785
  %503 = load double* %arrayidx3454, align 8, !dbg !785, !tbaa !559
  %mul3455 = fmul double %conv3785, %503, !dbg !785
  %mul3460 = fmul double %mul3455, %mul3455, !dbg !785
  %add3461 = fadd double %add3451, %mul3460, !dbg !785
  %call3462 = call double @sqrt(double %add3461) #7, !dbg !785
  call void @llvm.dbg.value(metadata !{double %call3462}, i64 0, metadata !371), !dbg !785
  br label %if.end3463

if.end3463:                                       ; preds = %if.else3402, %cond.end3382
  %u_src3357.0 = phi double [ %call3401, %cond.end3382 ], [ %call3462, %if.else3402 ]
  %u_dst3358.0 = phi double [ %call3384, %cond.end3382 ], [ %call3432, %if.else3402 ]
  %mul3464 = fmul double %conv, %496, !dbg !782
  %add3465 = fadd double %u_src3357.0, %u_dst3358.0, !dbg !782
  %mul3466 = fmul double %mul3464, %add3465, !dbg !782
  %idxprom3467 = sext i32 %add3346 to i64, !dbg !782
  %arrayidx3468 = getelementptr inbounds double* %18, i64 %idxprom3467, !dbg !782
  %504 = load double* %arrayidx3468, align 8, !dbg !782, !tbaa !559
  %arrayidx3470 = getelementptr inbounds double* %18, i64 %idxprom3370, !dbg !782
  %505 = load double* %arrayidx3470, align 8, !dbg !782, !tbaa !559
  %add3471 = fadd double %504, %505, !dbg !782
  %mul3477 = fmul double %add3471, %add3471, !dbg !782
  %div3478 = fdiv double %mul3466, %mul3477, !dbg !782
  call void @llvm.dbg.value(metadata !{double %div3478}, i64 0, metadata !373), !dbg !782
  %506 = load i8**** %data, align 8, !dbg !782, !tbaa !547
  %arrayidx3481 = getelementptr inbounds i8*** %506, i64 %indvars.iv8600, !dbg !782
  %507 = load i8*** %arrayidx3481, align 8, !dbg !782, !tbaa !547
  %508 = load i8** %507, align 8, !dbg !782, !tbaa !547
  %509 = bitcast i8* %508 to i64*, !dbg !782
  call void @llvm.dbg.value(metadata !{i64* %509}, i64 0, metadata !362), !dbg !782
  %mul3483 = fmul double %div3478, 2.000000e+00, !dbg !782
  %mul3484 = fmul double %mul3483, %finf, !dbg !782
  %arrayidx3486 = getelementptr inbounds i64* %509, i64 %idxprom3467, !dbg !782
  %510 = load i64* %arrayidx3486, align 8, !dbg !782, !tbaa !787
  %conv3487 = sitofp i64 %510 to double, !dbg !782
  %sub3488 = fsub double 1.000000e+00, %div3478, !dbg !782
  %mul3489 = fmul double %sub3488, %conv3487, !dbg !782
  %add3490 = fadd double %mul3484, %mul3489, !dbg !782
  %add3491 = fadd double %div3478, 1.000000e+00, !dbg !782
  %div3492 = fdiv double %add3490, %add3491, !dbg !782
  %conv3493 = fptosi double %div3492 to i64, !dbg !782
  %arrayidx3495 = getelementptr inbounds i64* %509, i64 %idxprom3370, !dbg !782
  store i64 %conv3493, i64* %arrayidx3495, align 8, !dbg !782, !tbaa !787
  br label %if.end3496, !dbg !779

if.end3496:                                       ; preds = %if.end3324, %if.end3463
  %tobool3497 = icmp ne i32 %dy3251.0, 0, !dbg !771
  %tobool3497.not = xor i1 %tobool3497, true, !dbg !771
  %or.cond8350 = and i1 %tobool3499, %tobool3497.not, !dbg !771
  br i1 %or.cond8350, label %if.end3681, label %if.then3500, !dbg !771

if.then3500:                                      ; preds = %if.end3496
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !356), !dbg !788
  %511 = load i32** %cctk_lsh174, align 8, !dbg !789, !tbaa !547
  %512 = load i32* %511, align 4, !dbg !789, !tbaa !535
  %arrayidx3504 = getelementptr inbounds i32* %511, i64 1, !dbg !789
  %513 = load i32* %arrayidx3504, align 4, !dbg !789, !tbaa !535
  %ispos8232 = icmp sgt i32 %dy3251.0, -1, !dbg !789
  %neg8233 = sub i32 0, %dy3251.0, !dbg !789
  %514 = select i1 %ispos8232, i32 %dy3251.0, i32 %neg8233, !dbg !789
  call void @llvm.dbg.value(metadata !{double %515}, i64 0, metadata !361), !dbg !789
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !352), !dbg !791
  %sub35328414 = add nsw i32 %512, -1, !dbg !791
  %cmp35338415 = icmp sgt i32 %sub35328414, 1, !dbg !791
  br i1 %cmp35338415, label %for.body3535.lr.ph, label %if.end3681, !dbg !791

for.body3535.lr.ph:                               ; preds = %if.then3500
  %mul3522 = shl nsw i32 %514, 1, !dbg !789
  %add3526 = add nsw i32 %mul3522, %mul3715, !dbg !789
  %idxprom3527 = sext i32 %add3526 to i64, !dbg !789
  %arrayidx3528 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom3527, !dbg !789
  %515 = load double* %arrayidx3528, align 16, !dbg !789, !tbaa !559
  %add3544 = add nsw i32 %514, %486, !dbg !792
  %cmp3545 = icmp eq i32 %add3544, 1, !dbg !792
  %.8351 = select i1 %tobool3497, double* %10, double* %14, !dbg !793
  %mul3644 = fmul double %conv, %515, !dbg !792
  %conv3592 = sitofp i32 %dy3251.0 to double, !dbg !795
  %516 = add i32 %dy3251.0, %indvars.iv8542, !dbg !791
  %517 = mul i32 %add3705, %513, !dbg !791
  %518 = add i32 %516, %517, !dbg !791
  %519 = mul i32 %512, %518, !dbg !791
  %520 = sext i32 %519 to i64, !dbg !764
  %521 = mul i32 %indvars.iv8544, %513, !dbg !791
  %522 = add i32 %indvars.iv8542, %521, !dbg !791
  %523 = mul i32 %512, %522, !dbg !791
  %524 = sext i32 %523 to i64, !dbg !791
  br label %for.body3535, !dbg !791

for.body3535:                                     ; preds = %for.body3535.lr.ph, %if.end3643
  %525 = phi i32 [ %512, %for.body3535.lr.ph ], [ %532, %if.end3643 ]
  %indvars.iv8548 = phi i64 [ %524, %for.body3535.lr.ph ], [ %indvars.iv.next8549, %if.end3643 ], !dbg !791
  %indvars.iv8546 = phi i64 [ %520, %for.body3535.lr.ph ], [ %indvars.iv.next8547, %if.end3643 ], !dbg !764
  %i3247.08416 = phi i32 [ 1, %for.body3535.lr.ph ], [ %inc3677, %if.end3643 ]
  %indvars.iv.next8549 = add i64 %indvars.iv8548, 1, !dbg !791
  %indvars.iv.next8547 = add i64 %indvars.iv8546, 1, !dbg !791
  br i1 %cmp3545, label %cond.false3552, label %if.else3582, !dbg !792

cond.false3552:                                   ; preds = %for.body3535
  %cond3563.in = getelementptr inbounds double* %.8351, i64 %indvars.iv.next8549, !dbg !793
  %cond3563 = load double* %cond3563.in, align 8, !dbg !793
  %call3564 = call double @fabs(double %cond3563) #9, !dbg !793
  call void @llvm.dbg.value(metadata !{double %call3564}, i64 0, metadata !380), !dbg !793
  %cond3580.in = getelementptr inbounds double* %.8351, i64 %indvars.iv.next8547, !dbg !793
  %cond3580 = load double* %cond3580.in, align 8, !dbg !793
  %call3581 = call double @fabs(double %cond3580) #9, !dbg !793
  call void @llvm.dbg.value(metadata !{double %call3581}, i64 0, metadata !379), !dbg !793
  br label %if.end3643, !dbg !793

if.else3582:                                      ; preds = %for.body3535
  %arrayidx3585 = getelementptr inbounds double* %6, i64 %indvars.iv.next8549, !dbg !795
  %526 = load double* %arrayidx3585, align 8, !dbg !795, !tbaa !559
  %mul3586 = fmul double %526, 0.000000e+00, !dbg !795
  %mul3591 = fmul double %mul3586, %mul3586, !dbg !795
  %arrayidx3594 = getelementptr inbounds double* %10, i64 %indvars.iv.next8549, !dbg !795
  %527 = load double* %arrayidx3594, align 8, !dbg !795, !tbaa !559
  %mul3595 = fmul double %conv3592, %527, !dbg !795
  %mul3600 = fmul double %mul3595, %mul3595, !dbg !795
  %add3601 = fadd double %mul3591, %mul3600, !dbg !795
  %arrayidx3604 = getelementptr inbounds double* %14, i64 %indvars.iv.next8549, !dbg !795
  %528 = load double* %arrayidx3604, align 8, !dbg !795, !tbaa !559
  %mul3605 = fmul double %conv3785, %528, !dbg !795
  %mul3610 = fmul double %mul3605, %mul3605, !dbg !795
  %add3611 = fadd double %add3601, %mul3610, !dbg !795
  %call3612 = call double @sqrt(double %add3611) #7, !dbg !795
  call void @llvm.dbg.value(metadata !{double %call3612}, i64 0, metadata !380), !dbg !795
  %arrayidx3615 = getelementptr inbounds double* %6, i64 %indvars.iv.next8547, !dbg !795
  %529 = load double* %arrayidx3615, align 8, !dbg !795, !tbaa !559
  %mul3616 = fmul double %529, 0.000000e+00, !dbg !795
  %mul3621 = fmul double %mul3616, %mul3616, !dbg !795
  %arrayidx3624 = getelementptr inbounds double* %10, i64 %indvars.iv.next8547, !dbg !795
  %530 = load double* %arrayidx3624, align 8, !dbg !795, !tbaa !559
  %mul3625 = fmul double %conv3592, %530, !dbg !795
  %mul3630 = fmul double %mul3625, %mul3625, !dbg !795
  %add3631 = fadd double %mul3621, %mul3630, !dbg !795
  %arrayidx3634 = getelementptr inbounds double* %14, i64 %indvars.iv.next8547, !dbg !795
  %531 = load double* %arrayidx3634, align 8, !dbg !795, !tbaa !559
  %mul3635 = fmul double %conv3785, %531, !dbg !795
  %mul3640 = fmul double %mul3635, %mul3635, !dbg !795
  %add3641 = fadd double %add3631, %mul3640, !dbg !795
  %call3642 = call double @sqrt(double %add3641) #7, !dbg !795
  call void @llvm.dbg.value(metadata !{double %call3642}, i64 0, metadata !379), !dbg !795
  %.pre8609 = load i32** %cctk_lsh174, align 8, !dbg !791, !tbaa !547
  %.pre8610 = load i32* %.pre8609, align 4, !dbg !791, !tbaa !535
  br label %if.end3643

if.end3643:                                       ; preds = %if.else3582, %cond.false3552
  %532 = phi i32 [ %525, %cond.false3552 ], [ %.pre8610, %if.else3582 ], !dbg !792
  %u_src3537.0 = phi double [ %call3581, %cond.false3552 ], [ %call3642, %if.else3582 ]
  %u_dst3538.0 = phi double [ %call3564, %cond.false3552 ], [ %call3612, %if.else3582 ]
  %add3645 = fadd double %u_src3537.0, %u_dst3538.0, !dbg !792
  %mul3646 = fmul double %mul3644, %add3645, !dbg !792
  %arrayidx3648 = getelementptr inbounds double* %18, i64 %indvars.iv.next8547, !dbg !792
  %533 = load double* %arrayidx3648, align 8, !dbg !792, !tbaa !559
  %arrayidx3650 = getelementptr inbounds double* %18, i64 %indvars.iv.next8549, !dbg !792
  %534 = load double* %arrayidx3650, align 8, !dbg !792, !tbaa !559
  %add3651 = fadd double %533, %534, !dbg !792
  %mul3657 = fmul double %add3651, %add3651, !dbg !792
  %div3658 = fdiv double %mul3646, %mul3657, !dbg !792
  call void @llvm.dbg.value(metadata !{double %div3658}, i64 0, metadata !381), !dbg !792
  %535 = load i8**** %data, align 8, !dbg !792, !tbaa !547
  %arrayidx3661 = getelementptr inbounds i8*** %535, i64 %indvars.iv8600, !dbg !792
  %536 = load i8*** %arrayidx3661, align 8, !dbg !792, !tbaa !547
  %537 = load i8** %536, align 8, !dbg !792, !tbaa !547
  %538 = bitcast i8* %537 to i64*, !dbg !792
  call void @llvm.dbg.value(metadata !{i64* %538}, i64 0, metadata !374), !dbg !792
  %mul3663 = fmul double %div3658, 2.000000e+00, !dbg !792
  %mul3664 = fmul double %mul3663, %finf, !dbg !792
  %arrayidx3666 = getelementptr inbounds i64* %538, i64 %indvars.iv.next8547, !dbg !792
  %539 = load i64* %arrayidx3666, align 8, !dbg !792, !tbaa !787
  %conv3667 = sitofp i64 %539 to double, !dbg !792
  %sub3668 = fsub double 1.000000e+00, %div3658, !dbg !792
  %mul3669 = fmul double %sub3668, %conv3667, !dbg !792
  %add3670 = fadd double %mul3664, %mul3669, !dbg !792
  %add3671 = fadd double %div3658, 1.000000e+00, !dbg !792
  %div3672 = fdiv double %add3670, %add3671, !dbg !792
  %conv3673 = fptosi double %div3672 to i64, !dbg !792
  %arrayidx3675 = getelementptr inbounds i64* %538, i64 %indvars.iv.next8549, !dbg !792
  store i64 %conv3673, i64* %arrayidx3675, align 8, !dbg !792, !tbaa !787
  %inc3677 = add nsw i32 %i3247.08416, 1, !dbg !791
  call void @llvm.dbg.value(metadata !{i32 %inc3677}, i64 0, metadata !352), !dbg !791
  %sub3532 = add nsw i32 %532, -1, !dbg !791
  %cmp3533 = icmp slt i32 %inc3677, %sub3532, !dbg !791
  br i1 %cmp3533, label %for.body3535, label %if.end3681, !dbg !791

if.end3681:                                       ; preds = %if.then3500, %if.end3643, %if.end3496
  %tobool3683 = icmp ult i64 %492, 4294967296, !dbg !771
  br i1 %tobool3683, label %for.inc3860, label %if.then3684, !dbg !771

if.then3684:                                      ; preds = %if.end3681
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !356), !dbg !797
  %540 = load i32** %cctk_lsh174, align 8, !dbg !772, !tbaa !547
  %541 = load i32* %540, align 4, !dbg !772, !tbaa !535
  %sub3687 = add nsw i32 %541, -1, !dbg !772
  %arrayidx3691 = getelementptr inbounds i32* %540, i64 1, !dbg !772
  %542 = load i32* %arrayidx3691, align 4, !dbg !772, !tbaa !535
  %mul3692 = mul nsw i32 %542, %indvars.iv8544, !dbg !772
  %add3693 = add nsw i32 %mul3692, %indvars.iv8542, !dbg !772
  %mul3694 = mul nsw i32 %add3693, %541, !dbg !772
  %add3695 = add nsw i32 %sub3687, %mul3694, !dbg !772
  call void @llvm.dbg.value(metadata !{i32 %add3695}, i64 0, metadata !360), !dbg !772
  %add3699 = add nsw i32 %541, -2, !dbg !772
  %add3702 = add nsw i32 %dy3251.0, %indvars.iv8542, !dbg !772
  %mul3706 = mul nsw i32 %542, %add3705, !dbg !772
  %add3707 = add nsw i32 %add3702, %mul3706, !dbg !772
  %mul3708 = mul nsw i32 %add3707, %541, !dbg !772
  %add3709 = add nsw i32 %add3699, %mul3708, !dbg !772
  call void @llvm.dbg.value(metadata !{i32 %add3709}, i64 0, metadata !359), !dbg !772
  %ispos8227 = icmp sgt i32 %dy3251.0, -1, !dbg !772
  %neg8228 = sub i32 0, %dy3251.0, !dbg !772
  %543 = select i1 %ispos8227, i32 %dy3251.0, i32 %neg8228, !dbg !772
  %mul3712 = shl nsw i32 %543, 1, !dbg !772
  %add37138229 = or i32 %mul3712, 1, !dbg !772
  %add3716 = add nsw i32 %add37138229, %mul3715, !dbg !772
  %idxprom3717 = sext i32 %add3716 to i64, !dbg !772
  %arrayidx3718 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom3717, !dbg !772
  %544 = load double* %arrayidx3718, align 8, !dbg !772, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %544}, i64 0, metadata !361), !dbg !772
  %add3727 = add i32 %add3725, %543, !dbg !774
  %cmp3728 = icmp eq i32 %add3727, 1, !dbg !774
  %idxprom3733 = sext i32 %add3695 to i64, !dbg !798
  %arrayidx3734 = getelementptr inbounds double* %6, i64 %idxprom3733, !dbg !798
  %545 = load double* %arrayidx3734, align 8, !dbg !798, !tbaa !559
  br i1 %cmp3728, label %cond.end3745, label %if.else3765, !dbg !774

cond.end3745:                                     ; preds = %if.then3684
  %call3747 = call double @fabs(double %545) #9, !dbg !798
  call void @llvm.dbg.value(metadata !{double %call3747}, i64 0, metadata !386), !dbg !798
  %idxprom3750 = sext i32 %add3709 to i64, !dbg !798
  %arrayidx3751 = getelementptr inbounds double* %6, i64 %idxprom3750, !dbg !798
  %546 = load double* %arrayidx3751, align 8, !dbg !798, !tbaa !559
  %call3764 = call double @fabs(double %546) #9, !dbg !798
  call void @llvm.dbg.value(metadata !{double %call3764}, i64 0, metadata !385), !dbg !798
  br label %if.end3826, !dbg !798

if.else3765:                                      ; preds = %if.then3684
  %mul3769 = fmul double %545, -1.000000e+00, !dbg !775
  %mul3774 = fmul double %mul3769, %mul3769, !dbg !775
  %conv3775 = sitofp i32 %dy3251.0 to double, !dbg !775
  %arrayidx3777 = getelementptr inbounds double* %10, i64 %idxprom3733, !dbg !775
  %547 = load double* %arrayidx3777, align 8, !dbg !775, !tbaa !559
  %mul3778 = fmul double %conv3775, %547, !dbg !775
  %mul3783 = fmul double %mul3778, %mul3778, !dbg !775
  %add3784 = fadd double %mul3774, %mul3783, !dbg !775
  %arrayidx3787 = getelementptr inbounds double* %14, i64 %idxprom3733, !dbg !775
  %548 = load double* %arrayidx3787, align 8, !dbg !775, !tbaa !559
  %mul3788 = fmul double %conv3785, %548, !dbg !775
  %mul3793 = fmul double %mul3788, %mul3788, !dbg !775
  %add3794 = fadd double %add3784, %mul3793, !dbg !775
  %call3795 = call double @sqrt(double %add3794) #7, !dbg !775
  call void @llvm.dbg.value(metadata !{double %call3795}, i64 0, metadata !386), !dbg !775
  %idxprom3797 = sext i32 %add3709 to i64, !dbg !775
  %arrayidx3798 = getelementptr inbounds double* %6, i64 %idxprom3797, !dbg !775
  %549 = load double* %arrayidx3798, align 8, !dbg !775, !tbaa !559
  %mul3799 = fmul double %549, -1.000000e+00, !dbg !775
  %mul3804 = fmul double %mul3799, %mul3799, !dbg !775
  %arrayidx3807 = getelementptr inbounds double* %10, i64 %idxprom3797, !dbg !775
  %550 = load double* %arrayidx3807, align 8, !dbg !775, !tbaa !559
  %mul3808 = fmul double %conv3775, %550, !dbg !775
  %mul3813 = fmul double %mul3808, %mul3808, !dbg !775
  %add3814 = fadd double %mul3804, %mul3813, !dbg !775
  %arrayidx3817 = getelementptr inbounds double* %14, i64 %idxprom3797, !dbg !775
  %551 = load double* %arrayidx3817, align 8, !dbg !775, !tbaa !559
  %mul3818 = fmul double %conv3785, %551, !dbg !775
  %mul3823 = fmul double %mul3818, %mul3818, !dbg !775
  %add3824 = fadd double %add3814, %mul3823, !dbg !775
  %call3825 = call double @sqrt(double %add3824) #7, !dbg !775
  call void @llvm.dbg.value(metadata !{double %call3825}, i64 0, metadata !385), !dbg !775
  br label %if.end3826

if.end3826:                                       ; preds = %if.else3765, %cond.end3745
  %u_src3720.0 = phi double [ %call3764, %cond.end3745 ], [ %call3825, %if.else3765 ]
  %u_dst3721.0 = phi double [ %call3747, %cond.end3745 ], [ %call3795, %if.else3765 ]
  %mul3827 = fmul double %conv, %544, !dbg !774
  %add3828 = fadd double %u_src3720.0, %u_dst3721.0, !dbg !774
  %mul3829 = fmul double %mul3827, %add3828, !dbg !774
  %idxprom3830 = sext i32 %add3709 to i64, !dbg !774
  %arrayidx3831 = getelementptr inbounds double* %18, i64 %idxprom3830, !dbg !774
  %552 = load double* %arrayidx3831, align 8, !dbg !774, !tbaa !559
  %arrayidx3833 = getelementptr inbounds double* %18, i64 %idxprom3733, !dbg !774
  %553 = load double* %arrayidx3833, align 8, !dbg !774, !tbaa !559
  %add3834 = fadd double %552, %553, !dbg !774
  %mul3840 = fmul double %add3834, %add3834, !dbg !774
  %div3841 = fdiv double %mul3829, %mul3840, !dbg !774
  call void @llvm.dbg.value(metadata !{double %div3841}, i64 0, metadata !387), !dbg !774
  %554 = load i8**** %data, align 8, !dbg !774, !tbaa !547
  %arrayidx3844 = getelementptr inbounds i8*** %554, i64 %indvars.iv8600, !dbg !774
  %555 = load i8*** %arrayidx3844, align 8, !dbg !774, !tbaa !547
  %556 = load i8** %555, align 8, !dbg !774, !tbaa !547
  %557 = bitcast i8* %556 to i64*, !dbg !774
  call void @llvm.dbg.value(metadata !{i64* %557}, i64 0, metadata !382), !dbg !774
  %mul3846 = fmul double %div3841, 2.000000e+00, !dbg !774
  %mul3847 = fmul double %mul3846, %finf, !dbg !774
  %arrayidx3849 = getelementptr inbounds i64* %557, i64 %idxprom3830, !dbg !774
  %558 = load i64* %arrayidx3849, align 8, !dbg !774, !tbaa !787
  %conv3850 = sitofp i64 %558 to double, !dbg !774
  %sub3851 = fsub double 1.000000e+00, %div3841, !dbg !774
  %mul3852 = fmul double %sub3851, %conv3850, !dbg !774
  %add3853 = fadd double %mul3847, %mul3852, !dbg !774
  %add3854 = fadd double %div3841, 1.000000e+00, !dbg !774
  %div3855 = fdiv double %add3853, %add3854, !dbg !774
  %conv3856 = fptosi double %div3855 to i64, !dbg !774
  %arrayidx3858 = getelementptr inbounds i64* %557, i64 %idxprom3733, !dbg !774
  store i64 %conv3856, i64* %arrayidx3858, align 8, !dbg !774, !tbaa !787
  br label %for.inc3860, !dbg !797

for.inc3860:                                      ; preds = %if.end3681, %if.end3826
  %indvars.iv.next8543 = add i32 %indvars.iv8542, 1, !dbg !767
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8543}, i64 0, metadata !354), !dbg !767
  %559 = load i32** %cctk_lsh174, align 8, !dbg !767, !tbaa !547
  %arrayidx3303 = getelementptr inbounds i32* %559, i64 1, !dbg !767
  %560 = load i32* %arrayidx3303, align 4, !dbg !767, !tbaa !535
  %cmp3304 = icmp slt i32 %indvars.iv.next8543, %560, !dbg !767
  br i1 %cmp3304, label %for.body3306, label %for.cond3301.for.inc3863.loopexit_crit_edge, !dbg !767

for.cond3301.for.inc3863.loopexit_crit_edge:      ; preds = %for.inc3860
  %arrayidx3263.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %559, i64 2
  %.pre8627.pre = load i32* %arrayidx3263.phi.trans.insert.phi.trans.insert, align 4, !dbg !764, !tbaa !535
  br label %for.inc3863, !dbg !767

for.inc3863:                                      ; preds = %if.end3300, %for.cond3301.for.inc3863.loopexit_crit_edge, %land.lhs.true3269, %land.lhs.true3278
  %561 = phi i32 [ %479, %land.lhs.true3278 ], [ %479, %land.lhs.true3269 ], [ %.pre8627.pre, %for.cond3301.for.inc3863.loopexit_crit_edge ], [ %479, %if.end3300 ], !dbg !764
  %562 = phi i32* [ %480, %land.lhs.true3278 ], [ %480, %land.lhs.true3269 ], [ %559, %for.cond3301.for.inc3863.loopexit_crit_edge ], [ %480, %if.end3300 ], !dbg !764
  %indvars.iv.next8545 = add i32 %indvars.iv8544, 1, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8545}, i64 0, metadata !355), !dbg !764
  %cmp3264 = icmp slt i32 %indvars.iv.next8545, %561, !dbg !764
  br i1 %cmp3264, label %for.body3266, label %for.inc5726, !dbg !764

sw.bb3866:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond3881.preheader, label %if.then3878, !dbg !800

for.cond3881.preheader:                           ; preds = %sw.bb3866
  %563 = load i32** %cctk_lsh174, align 8, !dbg !801, !tbaa !547
  %arrayidx38838408 = getelementptr inbounds i32* %563, i64 2, !dbg !801
  %564 = load i32* %arrayidx38838408, align 4, !dbg !801, !tbaa !535
  %cmp38848409 = icmp sgt i32 %564, 0, !dbg !801
  br i1 %cmp38848409, label %for.body3886, label %for.inc5726, !dbg !801

if.then3878:                                      ; preds = %sw.bb3866
  %call3879 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 765, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !802
  br label %cleanup, !dbg !802

for.body3886:                                     ; preds = %for.cond3881.preheader, %for.inc4483
  %565 = phi i32 [ %647, %for.inc4483 ], [ %564, %for.cond3881.preheader ]
  %566 = phi i32* [ %648, %for.inc4483 ], [ %563, %for.cond3881.preheader ]
  %indvars.iv8536 = phi i32 [ %indvars.iv.next8537, %for.inc4483 ], [ 0, %for.cond3881.preheader ], !dbg !804
  %cmp3887 = icmp eq i32 %indvars.iv8536, 0, !dbg !805
  br i1 %cmp3887, label %land.lhs.true3889, label %lor.lhs.false3892, !dbg !805

land.lhs.true3889:                                ; preds = %for.body3886
  %567 = load i32* %arrayidx181, align 16, !dbg !805, !tbaa !535
  %tobool3891 = icmp eq i32 %567, 0, !dbg !805
  br i1 %tobool3891, label %for.inc4483, label %lor.lhs.false3892, !dbg !805

lor.lhs.false3892:                                ; preds = %land.lhs.true3889, %for.body3886
  %sub3895 = add nsw i32 %565, -1, !dbg !805
  %cmp3896 = icmp eq i32 %indvars.iv8536, %sub3895, !dbg !805
  br i1 %cmp3896, label %land.lhs.true3898, label %if.end3902, !dbg !805

land.lhs.true3898:                                ; preds = %lor.lhs.false3892
  %568 = load i32* %arrayidx188, align 4, !dbg !805, !tbaa !535
  %tobool3900 = icmp eq i32 %568, 0, !dbg !805
  br i1 %tobool3900, label %for.inc4483, label %if.end3902, !dbg !805

if.end3902:                                       ; preds = %land.lhs.true3898, %lor.lhs.false3892
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !394), !dbg !805
  br i1 %cmp3887, label %land.lhs.true3905, label %if.else3909, !dbg !805

land.lhs.true3905:                                ; preds = %if.end3902
  %569 = load i32* %arrayidx181, align 16, !dbg !805, !tbaa !535
  %tobool3907.not = icmp ne i32 %569, 0, !dbg !805
  %cmp3896.not = xor i1 %cmp3896, true, !dbg !805
  %brmerge8650 = or i1 %tobool3907.not, %cmp3896.not, !dbg !805
  %.mux8651 = zext i1 %tobool3907.not to i32, !dbg !805
  br i1 %brmerge8650, label %if.end3920, label %land.lhs.true3915, !dbg !805

if.else3909:                                      ; preds = %if.end3902
  br i1 %cmp3896, label %land.lhs.true3915, label %if.end3920, !dbg !805

land.lhs.true3915:                                ; preds = %land.lhs.true3905, %if.else3909
  %570 = load i32* %arrayidx188, align 4, !dbg !805, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !394), !dbg !806
  %not.tobool3917 = icmp ne i32 %570, 0, !dbg !805
  %.8352 = sext i1 %not.tobool3917 to i32, !dbg !805
  br label %if.end3920, !dbg !805

if.end3920:                                       ; preds = %land.lhs.true3905, %land.lhs.true3915, %if.else3909
  %dz3872.0 = phi i32 [ 0, %if.else3909 ], [ %.mux8651, %land.lhs.true3905 ], [ %.8352, %land.lhs.true3915 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !390), !dbg !804
  %arrayidx39238404 = getelementptr inbounds i32* %566, i64 1, !dbg !804
  %571 = load i32* %arrayidx39238404, align 4, !dbg !804, !tbaa !535
  %cmp39248405 = icmp sgt i32 %571, 0, !dbg !804
  br i1 %cmp39248405, label %for.body3926.lr.ph, label %for.inc4483, !dbg !804

for.body3926.lr.ph:                               ; preds = %if.end3920
  %tobool4119 = icmp eq i32 %dz3872.0, 0, !dbg !808
  %add4325 = add i32 %dz3872.0, %indvars.iv8536, !dbg !809
  %ispos8216 = icmp sgt i32 %dz3872.0, -1, !dbg !809
  %neg8217 = sub i32 0, %dz3872.0, !dbg !809
  %572 = select i1 %ispos8216, i32 %dz3872.0, i32 %neg8217, !dbg !809
  %mul4335 = shl nsw i32 %572, 2, !dbg !809
  %add4345 = add i32 %572, 1, !dbg !811
  %conv4405 = sitofp i32 %dz3872.0 to double, !dbg !812
  br label %for.body3926, !dbg !804

for.body3926:                                     ; preds = %for.body3926.lr.ph, %for.inc4480
  %573 = phi i32 [ %571, %for.body3926.lr.ph ], [ %646, %for.inc4480 ]
  %574 = phi i32* [ %566, %for.body3926.lr.ph ], [ %645, %for.inc4480 ]
  %indvars.iv8534 = phi i32 [ 0, %for.body3926.lr.ph ], [ %indvars.iv.next8535, %for.inc4480 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !393), !dbg !808
  %cmp3927 = icmp eq i32 %indvars.iv8534, 0, !dbg !808
  br i1 %cmp3927, label %land.lhs.true3929, label %if.else3933, !dbg !808

land.lhs.true3929:                                ; preds = %for.body3926
  %575 = load i32* %arrayidx218, align 8, !dbg !808, !tbaa !535
  %tobool3931 = icmp eq i32 %575, 0, !dbg !808
  br i1 %tobool3931, label %if.else3933, label %if.end3944, !dbg !808

if.else3933:                                      ; preds = %land.lhs.true3929, %for.body3926
  %sub3936 = add nsw i32 %573, -1, !dbg !808
  %cmp3937 = icmp eq i32 %indvars.iv8534, %sub3936, !dbg !808
  br i1 %cmp3937, label %land.lhs.true3939, label %if.end3944, !dbg !808

land.lhs.true3939:                                ; preds = %if.else3933
  %576 = load i32* %arrayidx228, align 4, !dbg !808, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !393), !dbg !814
  %not.tobool3941 = icmp ne i32 %576, 0, !dbg !808
  %.8353 = sext i1 %not.tobool3941 to i32, !dbg !808
  br label %if.end3944, !dbg !808

if.end3944:                                       ; preds = %if.else3933, %land.lhs.true3929, %land.lhs.true3939
  %dy3871.0 = phi i32 [ %.8353, %land.lhs.true3939 ], [ 1, %land.lhs.true3929 ], [ 0, %if.else3933 ]
  %577 = bitcast [6 x i32]* %doBC to i64*, !dbg !808
  %578 = load i64* %577, align 16, !dbg !808
  %579 = trunc i64 %578 to i32, !dbg !808
  %tobool3946 = icmp eq i32 %579, 0, !dbg !808
  br i1 %tobool3946, label %if.end4116, label %if.then3947, !dbg !808

if.then3947:                                      ; preds = %if.end3944
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !392), !dbg !816
  %580 = load i32* %574, align 4, !dbg !817, !tbaa !535
  %mul3952 = mul nsw i32 %573, %indvars.iv8536, !dbg !817
  %add3953 = add nsw i32 %mul3952, %indvars.iv8534, !dbg !817
  %mul3954 = mul nsw i32 %add3953, %580, !dbg !817
  call void @llvm.dbg.value(metadata !{i32 %mul3954}, i64 0, metadata !396), !dbg !817
  %add3959 = add nsw i32 %dy3871.0, %indvars.iv8534, !dbg !817
  %mul3963 = mul nsw i32 %573, %add4325, !dbg !817
  %add3964 = add nsw i32 %add3959, %mul3963, !dbg !817
  %mul3965 = mul nsw i32 %add3964, %580, !dbg !817
  %add3966 = add nsw i32 %mul3965, 1, !dbg !817
  call void @llvm.dbg.value(metadata !{i32 %add3966}, i64 0, metadata !395), !dbg !817
  %ispos8222 = icmp sgt i32 %dy3871.0, -1, !dbg !817
  %neg8223 = sub i32 0, %dy3871.0, !dbg !817
  %581 = select i1 %ispos8222, i32 %dy3871.0, i32 %neg8223, !dbg !817
  %mul3969 = shl nsw i32 %581, 1, !dbg !817
  %add39708224 = or i32 %mul3969, 1, !dbg !817
  %add3973 = add nsw i32 %add39708224, %mul4335, !dbg !817
  %idxprom3974 = sext i32 %add3973 to i64, !dbg !817
  %arrayidx3975 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom3974, !dbg !817
  %582 = load double* %arrayidx3975, align 8, !dbg !817, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %582}, i64 0, metadata !397), !dbg !817
  %add3984 = add i32 %add4345, %581, !dbg !819
  %cmp3985 = icmp eq i32 %add3984, 1, !dbg !819
  %idxprom3990 = sext i32 %mul3954 to i64, !dbg !820
  %arrayidx3991 = getelementptr inbounds double* %6, i64 %idxprom3990, !dbg !820
  %583 = load double* %arrayidx3991, align 8, !dbg !820, !tbaa !559
  br i1 %cmp3985, label %cond.end4002, label %if.else4022, !dbg !819

cond.end4002:                                     ; preds = %if.then3947
  %call4004 = call double @fabs(double %583) #9, !dbg !820
  call void @llvm.dbg.value(metadata !{double %call4004}, i64 0, metadata !408), !dbg !820
  %idxprom4007 = sext i32 %add3966 to i64, !dbg !820
  %arrayidx4008 = getelementptr inbounds double* %6, i64 %idxprom4007, !dbg !820
  %584 = load double* %arrayidx4008, align 8, !dbg !820, !tbaa !559
  %call4021 = call double @fabs(double %584) #9, !dbg !820
  call void @llvm.dbg.value(metadata !{double %call4021}, i64 0, metadata !407), !dbg !820
  br label %if.end4083, !dbg !820

if.else4022:                                      ; preds = %if.then3947
  %mul4031 = fmul double %583, %583, !dbg !822
  %conv4032 = sitofp i32 %dy3871.0 to double, !dbg !822
  %arrayidx4034 = getelementptr inbounds double* %10, i64 %idxprom3990, !dbg !822
  %585 = load double* %arrayidx4034, align 8, !dbg !822, !tbaa !559
  %mul4035 = fmul double %conv4032, %585, !dbg !822
  %mul4040 = fmul double %mul4035, %mul4035, !dbg !822
  %add4041 = fadd double %mul4031, %mul4040, !dbg !822
  %arrayidx4044 = getelementptr inbounds double* %14, i64 %idxprom3990, !dbg !822
  %586 = load double* %arrayidx4044, align 8, !dbg !822, !tbaa !559
  %mul4045 = fmul double %conv4405, %586, !dbg !822
  %mul4050 = fmul double %mul4045, %mul4045, !dbg !822
  %add4051 = fadd double %add4041, %mul4050, !dbg !822
  %call4052 = call double @sqrt(double %add4051) #7, !dbg !822
  call void @llvm.dbg.value(metadata !{double %call4052}, i64 0, metadata !408), !dbg !822
  %idxprom4054 = sext i32 %add3966 to i64, !dbg !822
  %arrayidx4055 = getelementptr inbounds double* %6, i64 %idxprom4054, !dbg !822
  %587 = load double* %arrayidx4055, align 8, !dbg !822, !tbaa !559
  %mul4061 = fmul double %587, %587, !dbg !822
  %arrayidx4064 = getelementptr inbounds double* %10, i64 %idxprom4054, !dbg !822
  %588 = load double* %arrayidx4064, align 8, !dbg !822, !tbaa !559
  %mul4065 = fmul double %conv4032, %588, !dbg !822
  %mul4070 = fmul double %mul4065, %mul4065, !dbg !822
  %add4071 = fadd double %mul4061, %mul4070, !dbg !822
  %arrayidx4074 = getelementptr inbounds double* %14, i64 %idxprom4054, !dbg !822
  %589 = load double* %arrayidx4074, align 8, !dbg !822, !tbaa !559
  %mul4075 = fmul double %conv4405, %589, !dbg !822
  %mul4080 = fmul double %mul4075, %mul4075, !dbg !822
  %add4081 = fadd double %add4071, %mul4080, !dbg !822
  %call4082 = call double @sqrt(double %add4081) #7, !dbg !822
  call void @llvm.dbg.value(metadata !{double %call4082}, i64 0, metadata !407), !dbg !822
  br label %if.end4083

if.end4083:                                       ; preds = %if.else4022, %cond.end4002
  %u_src3977.0 = phi double [ %call4021, %cond.end4002 ], [ %call4082, %if.else4022 ]
  %u_dst3978.0 = phi double [ %call4004, %cond.end4002 ], [ %call4052, %if.else4022 ]
  %mul4084 = fmul double %conv, %582, !dbg !819
  %add4085 = fadd double %u_src3977.0, %u_dst3978.0, !dbg !819
  %mul4086 = fmul double %mul4084, %add4085, !dbg !819
  %idxprom4087 = sext i32 %add3966 to i64, !dbg !819
  %arrayidx4088 = getelementptr inbounds double* %18, i64 %idxprom4087, !dbg !819
  %590 = load double* %arrayidx4088, align 8, !dbg !819, !tbaa !559
  %arrayidx4090 = getelementptr inbounds double* %18, i64 %idxprom3990, !dbg !819
  %591 = load double* %arrayidx4090, align 8, !dbg !819, !tbaa !559
  %add4091 = fadd double %590, %591, !dbg !819
  %mul4097 = fmul double %add4091, %add4091, !dbg !819
  %div4098 = fdiv double %mul4086, %mul4097, !dbg !819
  call void @llvm.dbg.value(metadata !{double %div4098}, i64 0, metadata !409), !dbg !819
  %592 = load i8**** %data, align 8, !dbg !819, !tbaa !547
  %arrayidx4101 = getelementptr inbounds i8*** %592, i64 %indvars.iv8600, !dbg !819
  %593 = load i8*** %arrayidx4101, align 8, !dbg !819, !tbaa !547
  %594 = load i8** %593, align 8, !dbg !819, !tbaa !547
  %595 = bitcast i8* %594 to float*, !dbg !819
  call void @llvm.dbg.value(metadata !{float* %595}, i64 0, metadata !398), !dbg !819
  %mul4103 = fmul double %div4098, 2.000000e+00, !dbg !819
  %mul4104 = fmul double %mul4103, %finf, !dbg !819
  %arrayidx4106 = getelementptr inbounds float* %595, i64 %idxprom4087, !dbg !819
  %596 = load float* %arrayidx4106, align 4, !dbg !819, !tbaa !824
  %conv4107 = fpext float %596 to double, !dbg !819
  %sub4108 = fsub double 1.000000e+00, %div4098, !dbg !819
  %mul4109 = fmul double %sub4108, %conv4107, !dbg !819
  %add4110 = fadd double %mul4104, %mul4109, !dbg !819
  %add4111 = fadd double %div4098, 1.000000e+00, !dbg !819
  %div4112 = fdiv double %add4110, %add4111, !dbg !819
  %conv4113 = fptrunc double %div4112 to float, !dbg !819
  %arrayidx4115 = getelementptr inbounds float* %595, i64 %idxprom3990, !dbg !819
  store float %conv4113, float* %arrayidx4115, align 4, !dbg !819, !tbaa !824
  br label %if.end4116, !dbg !816

if.end4116:                                       ; preds = %if.end3944, %if.end4083
  %tobool4117 = icmp ne i32 %dy3871.0, 0, !dbg !808
  %tobool4117.not = xor i1 %tobool4117, true, !dbg !808
  %or.cond8354 = and i1 %tobool4119, %tobool4117.not, !dbg !808
  br i1 %or.cond8354, label %if.end4301, label %if.then4120, !dbg !808

if.then4120:                                      ; preds = %if.end4116
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !392), !dbg !825
  %597 = load i32** %cctk_lsh174, align 8, !dbg !826, !tbaa !547
  %598 = load i32* %597, align 4, !dbg !826, !tbaa !535
  %arrayidx4124 = getelementptr inbounds i32* %597, i64 1, !dbg !826
  %599 = load i32* %arrayidx4124, align 4, !dbg !826, !tbaa !535
  %ispos8218 = icmp sgt i32 %dy3871.0, -1, !dbg !826
  %neg8219 = sub i32 0, %dy3871.0, !dbg !826
  %600 = select i1 %ispos8218, i32 %dy3871.0, i32 %neg8219, !dbg !826
  call void @llvm.dbg.value(metadata !{double %601}, i64 0, metadata !397), !dbg !826
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !388), !dbg !828
  %sub41528399 = add nsw i32 %598, -1, !dbg !828
  %cmp41538400 = icmp sgt i32 %sub41528399, 1, !dbg !828
  br i1 %cmp41538400, label %for.body4155.lr.ph, label %if.end4301, !dbg !828

for.body4155.lr.ph:                               ; preds = %if.then4120
  %mul4142 = shl nsw i32 %600, 1, !dbg !826
  %add4146 = add nsw i32 %mul4142, %mul4335, !dbg !826
  %idxprom4147 = sext i32 %add4146 to i64, !dbg !826
  %arrayidx4148 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom4147, !dbg !826
  %601 = load double* %arrayidx4148, align 16, !dbg !826, !tbaa !559
  %add4164 = add nsw i32 %600, %572, !dbg !829
  %cmp4165 = icmp eq i32 %add4164, 1, !dbg !829
  %.8355 = select i1 %tobool4117, double* %10, double* %14, !dbg !830
  %mul4264 = fmul double %conv, %601, !dbg !829
  %conv4212 = sitofp i32 %dy3871.0 to double, !dbg !832
  %602 = add i32 %dy3871.0, %indvars.iv8534, !dbg !828
  %603 = mul i32 %add4325, %599, !dbg !828
  %604 = add i32 %602, %603, !dbg !828
  %605 = mul i32 %598, %604, !dbg !828
  %606 = sext i32 %605 to i64, !dbg !801
  %607 = mul i32 %indvars.iv8536, %599, !dbg !828
  %608 = add i32 %indvars.iv8534, %607, !dbg !828
  %609 = mul i32 %598, %608, !dbg !828
  %610 = sext i32 %609 to i64, !dbg !828
  br label %for.body4155, !dbg !828

for.body4155:                                     ; preds = %for.body4155.lr.ph, %if.end4263
  %611 = phi i32 [ %598, %for.body4155.lr.ph ], [ %618, %if.end4263 ]
  %indvars.iv8540 = phi i64 [ %610, %for.body4155.lr.ph ], [ %indvars.iv.next8541, %if.end4263 ], !dbg !828
  %indvars.iv8538 = phi i64 [ %606, %for.body4155.lr.ph ], [ %indvars.iv.next8539, %if.end4263 ], !dbg !801
  %i3867.08401 = phi i32 [ 1, %for.body4155.lr.ph ], [ %inc4297, %if.end4263 ]
  %indvars.iv.next8541 = add i64 %indvars.iv8540, 1, !dbg !828
  %indvars.iv.next8539 = add i64 %indvars.iv8538, 1, !dbg !828
  br i1 %cmp4165, label %cond.false4172, label %if.else4202, !dbg !829

cond.false4172:                                   ; preds = %for.body4155
  %cond4183.in = getelementptr inbounds double* %.8355, i64 %indvars.iv.next8541, !dbg !830
  %cond4183 = load double* %cond4183.in, align 8, !dbg !830
  %call4184 = call double @fabs(double %cond4183) #9, !dbg !830
  call void @llvm.dbg.value(metadata !{double %call4184}, i64 0, metadata !416), !dbg !830
  %cond4200.in = getelementptr inbounds double* %.8355, i64 %indvars.iv.next8539, !dbg !830
  %cond4200 = load double* %cond4200.in, align 8, !dbg !830
  %call4201 = call double @fabs(double %cond4200) #9, !dbg !830
  call void @llvm.dbg.value(metadata !{double %call4201}, i64 0, metadata !415), !dbg !830
  br label %if.end4263, !dbg !830

if.else4202:                                      ; preds = %for.body4155
  %arrayidx4205 = getelementptr inbounds double* %6, i64 %indvars.iv.next8541, !dbg !832
  %612 = load double* %arrayidx4205, align 8, !dbg !832, !tbaa !559
  %mul4206 = fmul double %612, 0.000000e+00, !dbg !832
  %mul4211 = fmul double %mul4206, %mul4206, !dbg !832
  %arrayidx4214 = getelementptr inbounds double* %10, i64 %indvars.iv.next8541, !dbg !832
  %613 = load double* %arrayidx4214, align 8, !dbg !832, !tbaa !559
  %mul4215 = fmul double %conv4212, %613, !dbg !832
  %mul4220 = fmul double %mul4215, %mul4215, !dbg !832
  %add4221 = fadd double %mul4211, %mul4220, !dbg !832
  %arrayidx4224 = getelementptr inbounds double* %14, i64 %indvars.iv.next8541, !dbg !832
  %614 = load double* %arrayidx4224, align 8, !dbg !832, !tbaa !559
  %mul4225 = fmul double %conv4405, %614, !dbg !832
  %mul4230 = fmul double %mul4225, %mul4225, !dbg !832
  %add4231 = fadd double %add4221, %mul4230, !dbg !832
  %call4232 = call double @sqrt(double %add4231) #7, !dbg !832
  call void @llvm.dbg.value(metadata !{double %call4232}, i64 0, metadata !416), !dbg !832
  %arrayidx4235 = getelementptr inbounds double* %6, i64 %indvars.iv.next8539, !dbg !832
  %615 = load double* %arrayidx4235, align 8, !dbg !832, !tbaa !559
  %mul4236 = fmul double %615, 0.000000e+00, !dbg !832
  %mul4241 = fmul double %mul4236, %mul4236, !dbg !832
  %arrayidx4244 = getelementptr inbounds double* %10, i64 %indvars.iv.next8539, !dbg !832
  %616 = load double* %arrayidx4244, align 8, !dbg !832, !tbaa !559
  %mul4245 = fmul double %conv4212, %616, !dbg !832
  %mul4250 = fmul double %mul4245, %mul4245, !dbg !832
  %add4251 = fadd double %mul4241, %mul4250, !dbg !832
  %arrayidx4254 = getelementptr inbounds double* %14, i64 %indvars.iv.next8539, !dbg !832
  %617 = load double* %arrayidx4254, align 8, !dbg !832, !tbaa !559
  %mul4255 = fmul double %conv4405, %617, !dbg !832
  %mul4260 = fmul double %mul4255, %mul4255, !dbg !832
  %add4261 = fadd double %add4251, %mul4260, !dbg !832
  %call4262 = call double @sqrt(double %add4261) #7, !dbg !832
  call void @llvm.dbg.value(metadata !{double %call4262}, i64 0, metadata !415), !dbg !832
  %.pre8611 = load i32** %cctk_lsh174, align 8, !dbg !828, !tbaa !547
  %.pre8612 = load i32* %.pre8611, align 4, !dbg !828, !tbaa !535
  br label %if.end4263

if.end4263:                                       ; preds = %if.else4202, %cond.false4172
  %618 = phi i32 [ %611, %cond.false4172 ], [ %.pre8612, %if.else4202 ], !dbg !829
  %u_src4157.0 = phi double [ %call4201, %cond.false4172 ], [ %call4262, %if.else4202 ]
  %u_dst4158.0 = phi double [ %call4184, %cond.false4172 ], [ %call4232, %if.else4202 ]
  %add4265 = fadd double %u_src4157.0, %u_dst4158.0, !dbg !829
  %mul4266 = fmul double %mul4264, %add4265, !dbg !829
  %arrayidx4268 = getelementptr inbounds double* %18, i64 %indvars.iv.next8539, !dbg !829
  %619 = load double* %arrayidx4268, align 8, !dbg !829, !tbaa !559
  %arrayidx4270 = getelementptr inbounds double* %18, i64 %indvars.iv.next8541, !dbg !829
  %620 = load double* %arrayidx4270, align 8, !dbg !829, !tbaa !559
  %add4271 = fadd double %619, %620, !dbg !829
  %mul4277 = fmul double %add4271, %add4271, !dbg !829
  %div4278 = fdiv double %mul4266, %mul4277, !dbg !829
  call void @llvm.dbg.value(metadata !{double %div4278}, i64 0, metadata !417), !dbg !829
  %621 = load i8**** %data, align 8, !dbg !829, !tbaa !547
  %arrayidx4281 = getelementptr inbounds i8*** %621, i64 %indvars.iv8600, !dbg !829
  %622 = load i8*** %arrayidx4281, align 8, !dbg !829, !tbaa !547
  %623 = load i8** %622, align 8, !dbg !829, !tbaa !547
  %624 = bitcast i8* %623 to float*, !dbg !829
  call void @llvm.dbg.value(metadata !{float* %624}, i64 0, metadata !410), !dbg !829
  %mul4283 = fmul double %div4278, 2.000000e+00, !dbg !829
  %mul4284 = fmul double %mul4283, %finf, !dbg !829
  %arrayidx4286 = getelementptr inbounds float* %624, i64 %indvars.iv.next8539, !dbg !829
  %625 = load float* %arrayidx4286, align 4, !dbg !829, !tbaa !824
  %conv4287 = fpext float %625 to double, !dbg !829
  %sub4288 = fsub double 1.000000e+00, %div4278, !dbg !829
  %mul4289 = fmul double %sub4288, %conv4287, !dbg !829
  %add4290 = fadd double %mul4284, %mul4289, !dbg !829
  %add4291 = fadd double %div4278, 1.000000e+00, !dbg !829
  %div4292 = fdiv double %add4290, %add4291, !dbg !829
  %conv4293 = fptrunc double %div4292 to float, !dbg !829
  %arrayidx4295 = getelementptr inbounds float* %624, i64 %indvars.iv.next8541, !dbg !829
  store float %conv4293, float* %arrayidx4295, align 4, !dbg !829, !tbaa !824
  %inc4297 = add nsw i32 %i3867.08401, 1, !dbg !828
  call void @llvm.dbg.value(metadata !{i32 %inc4297}, i64 0, metadata !388), !dbg !828
  %sub4152 = add nsw i32 %618, -1, !dbg !828
  %cmp4153 = icmp slt i32 %inc4297, %sub4152, !dbg !828
  br i1 %cmp4153, label %for.body4155, label %if.end4301, !dbg !828

if.end4301:                                       ; preds = %if.then4120, %if.end4263, %if.end4116
  %tobool4303 = icmp ult i64 %578, 4294967296, !dbg !808
  br i1 %tobool4303, label %for.inc4480, label %if.then4304, !dbg !808

if.then4304:                                      ; preds = %if.end4301
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !392), !dbg !834
  %626 = load i32** %cctk_lsh174, align 8, !dbg !809, !tbaa !547
  %627 = load i32* %626, align 4, !dbg !809, !tbaa !535
  %sub4307 = add nsw i32 %627, -1, !dbg !809
  %arrayidx4311 = getelementptr inbounds i32* %626, i64 1, !dbg !809
  %628 = load i32* %arrayidx4311, align 4, !dbg !809, !tbaa !535
  %mul4312 = mul nsw i32 %628, %indvars.iv8536, !dbg !809
  %add4313 = add nsw i32 %mul4312, %indvars.iv8534, !dbg !809
  %mul4314 = mul nsw i32 %add4313, %627, !dbg !809
  %add4315 = add nsw i32 %sub4307, %mul4314, !dbg !809
  call void @llvm.dbg.value(metadata !{i32 %add4315}, i64 0, metadata !396), !dbg !809
  %add4319 = add nsw i32 %627, -2, !dbg !809
  %add4322 = add nsw i32 %dy3871.0, %indvars.iv8534, !dbg !809
  %mul4326 = mul nsw i32 %628, %add4325, !dbg !809
  %add4327 = add nsw i32 %add4322, %mul4326, !dbg !809
  %mul4328 = mul nsw i32 %add4327, %627, !dbg !809
  %add4329 = add nsw i32 %add4319, %mul4328, !dbg !809
  call void @llvm.dbg.value(metadata !{i32 %add4329}, i64 0, metadata !395), !dbg !809
  %ispos8213 = icmp sgt i32 %dy3871.0, -1, !dbg !809
  %neg8214 = sub i32 0, %dy3871.0, !dbg !809
  %629 = select i1 %ispos8213, i32 %dy3871.0, i32 %neg8214, !dbg !809
  %mul4332 = shl nsw i32 %629, 1, !dbg !809
  %add43338215 = or i32 %mul4332, 1, !dbg !809
  %add4336 = add nsw i32 %add43338215, %mul4335, !dbg !809
  %idxprom4337 = sext i32 %add4336 to i64, !dbg !809
  %arrayidx4338 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom4337, !dbg !809
  %630 = load double* %arrayidx4338, align 8, !dbg !809, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %630}, i64 0, metadata !397), !dbg !809
  %add4347 = add i32 %add4345, %629, !dbg !811
  %cmp4348 = icmp eq i32 %add4347, 1, !dbg !811
  %idxprom4353 = sext i32 %add4315 to i64, !dbg !835
  %arrayidx4354 = getelementptr inbounds double* %6, i64 %idxprom4353, !dbg !835
  %631 = load double* %arrayidx4354, align 8, !dbg !835, !tbaa !559
  br i1 %cmp4348, label %cond.end4365, label %if.else4385, !dbg !811

cond.end4365:                                     ; preds = %if.then4304
  %call4367 = call double @fabs(double %631) #9, !dbg !835
  call void @llvm.dbg.value(metadata !{double %call4367}, i64 0, metadata !422), !dbg !835
  %idxprom4370 = sext i32 %add4329 to i64, !dbg !835
  %arrayidx4371 = getelementptr inbounds double* %6, i64 %idxprom4370, !dbg !835
  %632 = load double* %arrayidx4371, align 8, !dbg !835, !tbaa !559
  %call4384 = call double @fabs(double %632) #9, !dbg !835
  call void @llvm.dbg.value(metadata !{double %call4384}, i64 0, metadata !421), !dbg !835
  br label %if.end4446, !dbg !835

if.else4385:                                      ; preds = %if.then4304
  %mul4389 = fmul double %631, -1.000000e+00, !dbg !812
  %mul4394 = fmul double %mul4389, %mul4389, !dbg !812
  %conv4395 = sitofp i32 %dy3871.0 to double, !dbg !812
  %arrayidx4397 = getelementptr inbounds double* %10, i64 %idxprom4353, !dbg !812
  %633 = load double* %arrayidx4397, align 8, !dbg !812, !tbaa !559
  %mul4398 = fmul double %conv4395, %633, !dbg !812
  %mul4403 = fmul double %mul4398, %mul4398, !dbg !812
  %add4404 = fadd double %mul4394, %mul4403, !dbg !812
  %arrayidx4407 = getelementptr inbounds double* %14, i64 %idxprom4353, !dbg !812
  %634 = load double* %arrayidx4407, align 8, !dbg !812, !tbaa !559
  %mul4408 = fmul double %conv4405, %634, !dbg !812
  %mul4413 = fmul double %mul4408, %mul4408, !dbg !812
  %add4414 = fadd double %add4404, %mul4413, !dbg !812
  %call4415 = call double @sqrt(double %add4414) #7, !dbg !812
  call void @llvm.dbg.value(metadata !{double %call4415}, i64 0, metadata !422), !dbg !812
  %idxprom4417 = sext i32 %add4329 to i64, !dbg !812
  %arrayidx4418 = getelementptr inbounds double* %6, i64 %idxprom4417, !dbg !812
  %635 = load double* %arrayidx4418, align 8, !dbg !812, !tbaa !559
  %mul4419 = fmul double %635, -1.000000e+00, !dbg !812
  %mul4424 = fmul double %mul4419, %mul4419, !dbg !812
  %arrayidx4427 = getelementptr inbounds double* %10, i64 %idxprom4417, !dbg !812
  %636 = load double* %arrayidx4427, align 8, !dbg !812, !tbaa !559
  %mul4428 = fmul double %conv4395, %636, !dbg !812
  %mul4433 = fmul double %mul4428, %mul4428, !dbg !812
  %add4434 = fadd double %mul4424, %mul4433, !dbg !812
  %arrayidx4437 = getelementptr inbounds double* %14, i64 %idxprom4417, !dbg !812
  %637 = load double* %arrayidx4437, align 8, !dbg !812, !tbaa !559
  %mul4438 = fmul double %conv4405, %637, !dbg !812
  %mul4443 = fmul double %mul4438, %mul4438, !dbg !812
  %add4444 = fadd double %add4434, %mul4443, !dbg !812
  %call4445 = call double @sqrt(double %add4444) #7, !dbg !812
  call void @llvm.dbg.value(metadata !{double %call4445}, i64 0, metadata !421), !dbg !812
  br label %if.end4446

if.end4446:                                       ; preds = %if.else4385, %cond.end4365
  %u_src4340.0 = phi double [ %call4384, %cond.end4365 ], [ %call4445, %if.else4385 ]
  %u_dst4341.0 = phi double [ %call4367, %cond.end4365 ], [ %call4415, %if.else4385 ]
  %mul4447 = fmul double %conv, %630, !dbg !811
  %add4448 = fadd double %u_src4340.0, %u_dst4341.0, !dbg !811
  %mul4449 = fmul double %mul4447, %add4448, !dbg !811
  %idxprom4450 = sext i32 %add4329 to i64, !dbg !811
  %arrayidx4451 = getelementptr inbounds double* %18, i64 %idxprom4450, !dbg !811
  %638 = load double* %arrayidx4451, align 8, !dbg !811, !tbaa !559
  %arrayidx4453 = getelementptr inbounds double* %18, i64 %idxprom4353, !dbg !811
  %639 = load double* %arrayidx4453, align 8, !dbg !811, !tbaa !559
  %add4454 = fadd double %638, %639, !dbg !811
  %mul4460 = fmul double %add4454, %add4454, !dbg !811
  %div4461 = fdiv double %mul4449, %mul4460, !dbg !811
  call void @llvm.dbg.value(metadata !{double %div4461}, i64 0, metadata !423), !dbg !811
  %640 = load i8**** %data, align 8, !dbg !811, !tbaa !547
  %arrayidx4464 = getelementptr inbounds i8*** %640, i64 %indvars.iv8600, !dbg !811
  %641 = load i8*** %arrayidx4464, align 8, !dbg !811, !tbaa !547
  %642 = load i8** %641, align 8, !dbg !811, !tbaa !547
  %643 = bitcast i8* %642 to float*, !dbg !811
  call void @llvm.dbg.value(metadata !{float* %643}, i64 0, metadata !418), !dbg !811
  %mul4466 = fmul double %div4461, 2.000000e+00, !dbg !811
  %mul4467 = fmul double %mul4466, %finf, !dbg !811
  %arrayidx4469 = getelementptr inbounds float* %643, i64 %idxprom4450, !dbg !811
  %644 = load float* %arrayidx4469, align 4, !dbg !811, !tbaa !824
  %conv4470 = fpext float %644 to double, !dbg !811
  %sub4471 = fsub double 1.000000e+00, %div4461, !dbg !811
  %mul4472 = fmul double %sub4471, %conv4470, !dbg !811
  %add4473 = fadd double %mul4467, %mul4472, !dbg !811
  %add4474 = fadd double %div4461, 1.000000e+00, !dbg !811
  %div4475 = fdiv double %add4473, %add4474, !dbg !811
  %conv4476 = fptrunc double %div4475 to float, !dbg !811
  %arrayidx4478 = getelementptr inbounds float* %643, i64 %idxprom4353, !dbg !811
  store float %conv4476, float* %arrayidx4478, align 4, !dbg !811, !tbaa !824
  br label %for.inc4480, !dbg !834

for.inc4480:                                      ; preds = %if.end4301, %if.end4446
  %indvars.iv.next8535 = add i32 %indvars.iv8534, 1, !dbg !804
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8535}, i64 0, metadata !390), !dbg !804
  %645 = load i32** %cctk_lsh174, align 8, !dbg !804, !tbaa !547
  %arrayidx3923 = getelementptr inbounds i32* %645, i64 1, !dbg !804
  %646 = load i32* %arrayidx3923, align 4, !dbg !804, !tbaa !535
  %cmp3924 = icmp slt i32 %indvars.iv.next8535, %646, !dbg !804
  br i1 %cmp3924, label %for.body3926, label %for.cond3921.for.inc4483.loopexit_crit_edge, !dbg !804

for.cond3921.for.inc4483.loopexit_crit_edge:      ; preds = %for.inc4480
  %arrayidx3883.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %645, i64 2
  %.pre8629.pre = load i32* %arrayidx3883.phi.trans.insert.phi.trans.insert, align 4, !dbg !801, !tbaa !535
  br label %for.inc4483, !dbg !804

for.inc4483:                                      ; preds = %if.end3920, %for.cond3921.for.inc4483.loopexit_crit_edge, %land.lhs.true3889, %land.lhs.true3898
  %647 = phi i32 [ %565, %land.lhs.true3898 ], [ %565, %land.lhs.true3889 ], [ %.pre8629.pre, %for.cond3921.for.inc4483.loopexit_crit_edge ], [ %565, %if.end3920 ], !dbg !801
  %648 = phi i32* [ %566, %land.lhs.true3898 ], [ %566, %land.lhs.true3889 ], [ %645, %for.cond3921.for.inc4483.loopexit_crit_edge ], [ %566, %if.end3920 ], !dbg !801
  %indvars.iv.next8537 = add i32 %indvars.iv8536, 1, !dbg !801
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8537}, i64 0, metadata !391), !dbg !801
  %cmp3884 = icmp slt i32 %indvars.iv.next8537, %647, !dbg !801
  br i1 %cmp3884, label %for.body3886, label %for.inc5726, !dbg !801

sw.bb4486:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond4501.preheader, label %if.then4498, !dbg !837

for.cond4501.preheader:                           ; preds = %sw.bb4486
  %649 = load i32** %cctk_lsh174, align 8, !dbg !838, !tbaa !547
  %arrayidx45038393 = getelementptr inbounds i32* %649, i64 2, !dbg !838
  %650 = load i32* %arrayidx45038393, align 4, !dbg !838, !tbaa !535
  %cmp45048394 = icmp sgt i32 %650, 0, !dbg !838
  br i1 %cmp45048394, label %for.body4506, label %for.inc5726, !dbg !838

if.then4498:                                      ; preds = %sw.bb4486
  %call4499 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 770, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !839
  br label %cleanup, !dbg !839

for.body4506:                                     ; preds = %for.cond4501.preheader, %for.inc5097
  %651 = phi i32 [ %733, %for.inc5097 ], [ %650, %for.cond4501.preheader ]
  %652 = phi i32* [ %734, %for.inc5097 ], [ %649, %for.cond4501.preheader ]
  %indvars.iv8528 = phi i32 [ %indvars.iv.next8529, %for.inc5097 ], [ 0, %for.cond4501.preheader ], !dbg !841
  %cmp4507 = icmp eq i32 %indvars.iv8528, 0, !dbg !842
  br i1 %cmp4507, label %land.lhs.true4509, label %lor.lhs.false4512, !dbg !842

land.lhs.true4509:                                ; preds = %for.body4506
  %653 = load i32* %arrayidx181, align 16, !dbg !842, !tbaa !535
  %tobool4511 = icmp eq i32 %653, 0, !dbg !842
  br i1 %tobool4511, label %for.inc5097, label %lor.lhs.false4512, !dbg !842

lor.lhs.false4512:                                ; preds = %land.lhs.true4509, %for.body4506
  %sub4515 = add nsw i32 %651, -1, !dbg !842
  %cmp4516 = icmp eq i32 %indvars.iv8528, %sub4515, !dbg !842
  br i1 %cmp4516, label %land.lhs.true4518, label %if.end4522, !dbg !842

land.lhs.true4518:                                ; preds = %lor.lhs.false4512
  %654 = load i32* %arrayidx188, align 4, !dbg !842, !tbaa !535
  %tobool4520 = icmp eq i32 %654, 0, !dbg !842
  br i1 %tobool4520, label %for.inc5097, label %if.end4522, !dbg !842

if.end4522:                                       ; preds = %land.lhs.true4518, %lor.lhs.false4512
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !430), !dbg !842
  br i1 %cmp4507, label %land.lhs.true4525, label %if.else4529, !dbg !842

land.lhs.true4525:                                ; preds = %if.end4522
  %655 = load i32* %arrayidx181, align 16, !dbg !842, !tbaa !535
  %tobool4527.not = icmp ne i32 %655, 0, !dbg !842
  %cmp4516.not = xor i1 %cmp4516, true, !dbg !842
  %brmerge8652 = or i1 %tobool4527.not, %cmp4516.not, !dbg !842
  %.mux8653 = zext i1 %tobool4527.not to i32, !dbg !842
  br i1 %brmerge8652, label %if.end4540, label %land.lhs.true4535, !dbg !842

if.else4529:                                      ; preds = %if.end4522
  br i1 %cmp4516, label %land.lhs.true4535, label %if.end4540, !dbg !842

land.lhs.true4535:                                ; preds = %land.lhs.true4525, %if.else4529
  %656 = load i32* %arrayidx188, align 4, !dbg !842, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !430), !dbg !843
  %not.tobool4537 = icmp ne i32 %656, 0, !dbg !842
  %.8356 = sext i1 %not.tobool4537 to i32, !dbg !842
  br label %if.end4540, !dbg !842

if.end4540:                                       ; preds = %land.lhs.true4525, %land.lhs.true4535, %if.else4529
  %dz4492.0 = phi i32 [ 0, %if.else4529 ], [ %.mux8653, %land.lhs.true4525 ], [ %.8356, %land.lhs.true4535 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !426), !dbg !841
  %arrayidx45438389 = getelementptr inbounds i32* %652, i64 1, !dbg !841
  %657 = load i32* %arrayidx45438389, align 4, !dbg !841, !tbaa !535
  %cmp45448390 = icmp sgt i32 %657, 0, !dbg !841
  br i1 %cmp45448390, label %for.body4546.lr.ph, label %for.inc5097, !dbg !841

for.body4546.lr.ph:                               ; preds = %if.end4540
  %tobool4737 = icmp eq i32 %dz4492.0, 0, !dbg !845
  %add4941 = add i32 %dz4492.0, %indvars.iv8528, !dbg !846
  %ispos8202 = icmp sgt i32 %dz4492.0, -1, !dbg !846
  %neg8203 = sub i32 0, %dz4492.0, !dbg !846
  %658 = select i1 %ispos8202, i32 %dz4492.0, i32 %neg8203, !dbg !846
  %mul4951 = shl nsw i32 %658, 2, !dbg !846
  %add4961 = add i32 %658, 1, !dbg !848
  %conv5021 = sitofp i32 %dz4492.0 to double, !dbg !849
  br label %for.body4546, !dbg !841

for.body4546:                                     ; preds = %for.body4546.lr.ph, %for.inc5094
  %659 = phi i32 [ %657, %for.body4546.lr.ph ], [ %732, %for.inc5094 ]
  %660 = phi i32* [ %652, %for.body4546.lr.ph ], [ %731, %for.inc5094 ]
  %indvars.iv8526 = phi i32 [ 0, %for.body4546.lr.ph ], [ %indvars.iv.next8527, %for.inc5094 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !429), !dbg !845
  %cmp4547 = icmp eq i32 %indvars.iv8526, 0, !dbg !845
  br i1 %cmp4547, label %land.lhs.true4549, label %if.else4553, !dbg !845

land.lhs.true4549:                                ; preds = %for.body4546
  %661 = load i32* %arrayidx218, align 8, !dbg !845, !tbaa !535
  %tobool4551 = icmp eq i32 %661, 0, !dbg !845
  br i1 %tobool4551, label %if.else4553, label %if.end4564, !dbg !845

if.else4553:                                      ; preds = %land.lhs.true4549, %for.body4546
  %sub4556 = add nsw i32 %659, -1, !dbg !845
  %cmp4557 = icmp eq i32 %indvars.iv8526, %sub4556, !dbg !845
  br i1 %cmp4557, label %land.lhs.true4559, label %if.end4564, !dbg !845

land.lhs.true4559:                                ; preds = %if.else4553
  %662 = load i32* %arrayidx228, align 4, !dbg !845, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !429), !dbg !851
  %not.tobool4561 = icmp ne i32 %662, 0, !dbg !845
  %.8357 = sext i1 %not.tobool4561 to i32, !dbg !845
  br label %if.end4564, !dbg !845

if.end4564:                                       ; preds = %if.else4553, %land.lhs.true4549, %land.lhs.true4559
  %dy4491.0 = phi i32 [ %.8357, %land.lhs.true4559 ], [ 1, %land.lhs.true4549 ], [ 0, %if.else4553 ]
  %663 = bitcast [6 x i32]* %doBC to i64*, !dbg !845
  %664 = load i64* %663, align 16, !dbg !845
  %665 = trunc i64 %664 to i32, !dbg !845
  %tobool4566 = icmp eq i32 %665, 0, !dbg !845
  br i1 %tobool4566, label %if.end4734, label %if.then4567, !dbg !845

if.then4567:                                      ; preds = %if.end4564
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !428), !dbg !853
  %666 = load i32* %660, align 4, !dbg !854, !tbaa !535
  %mul4572 = mul nsw i32 %659, %indvars.iv8528, !dbg !854
  %add4573 = add nsw i32 %mul4572, %indvars.iv8526, !dbg !854
  %mul4574 = mul nsw i32 %add4573, %666, !dbg !854
  call void @llvm.dbg.value(metadata !{i32 %mul4574}, i64 0, metadata !432), !dbg !854
  %add4579 = add nsw i32 %dy4491.0, %indvars.iv8526, !dbg !854
  %mul4583 = mul nsw i32 %659, %add4941, !dbg !854
  %add4584 = add nsw i32 %add4579, %mul4583, !dbg !854
  %mul4585 = mul nsw i32 %add4584, %666, !dbg !854
  %add4586 = add nsw i32 %mul4585, 1, !dbg !854
  call void @llvm.dbg.value(metadata !{i32 %add4586}, i64 0, metadata !431), !dbg !854
  %ispos8208 = icmp sgt i32 %dy4491.0, -1, !dbg !854
  %neg8209 = sub i32 0, %dy4491.0, !dbg !854
  %667 = select i1 %ispos8208, i32 %dy4491.0, i32 %neg8209, !dbg !854
  %mul4589 = shl nsw i32 %667, 1, !dbg !854
  %add45908210 = or i32 %mul4589, 1, !dbg !854
  %add4593 = add nsw i32 %add45908210, %mul4951, !dbg !854
  %idxprom4594 = sext i32 %add4593 to i64, !dbg !854
  %arrayidx4595 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom4594, !dbg !854
  %668 = load double* %arrayidx4595, align 8, !dbg !854, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %668}, i64 0, metadata !433), !dbg !854
  %add4604 = add i32 %add4961, %667, !dbg !856
  %cmp4605 = icmp eq i32 %add4604, 1, !dbg !856
  %idxprom4610 = sext i32 %mul4574 to i64, !dbg !857
  %arrayidx4611 = getelementptr inbounds double* %6, i64 %idxprom4610, !dbg !857
  %669 = load double* %arrayidx4611, align 8, !dbg !857, !tbaa !559
  br i1 %cmp4605, label %cond.end4622, label %if.else4642, !dbg !856

cond.end4622:                                     ; preds = %if.then4567
  %call4624 = call double @fabs(double %669) #9, !dbg !857
  call void @llvm.dbg.value(metadata !{double %call4624}, i64 0, metadata !442), !dbg !857
  %idxprom4627 = sext i32 %add4586 to i64, !dbg !857
  %arrayidx4628 = getelementptr inbounds double* %6, i64 %idxprom4627, !dbg !857
  %670 = load double* %arrayidx4628, align 8, !dbg !857, !tbaa !559
  %call4641 = call double @fabs(double %670) #9, !dbg !857
  call void @llvm.dbg.value(metadata !{double %call4641}, i64 0, metadata !441), !dbg !857
  br label %if.end4703, !dbg !857

if.else4642:                                      ; preds = %if.then4567
  %mul4651 = fmul double %669, %669, !dbg !859
  %conv4652 = sitofp i32 %dy4491.0 to double, !dbg !859
  %arrayidx4654 = getelementptr inbounds double* %10, i64 %idxprom4610, !dbg !859
  %671 = load double* %arrayidx4654, align 8, !dbg !859, !tbaa !559
  %mul4655 = fmul double %conv4652, %671, !dbg !859
  %mul4660 = fmul double %mul4655, %mul4655, !dbg !859
  %add4661 = fadd double %mul4651, %mul4660, !dbg !859
  %arrayidx4664 = getelementptr inbounds double* %14, i64 %idxprom4610, !dbg !859
  %672 = load double* %arrayidx4664, align 8, !dbg !859, !tbaa !559
  %mul4665 = fmul double %conv5021, %672, !dbg !859
  %mul4670 = fmul double %mul4665, %mul4665, !dbg !859
  %add4671 = fadd double %add4661, %mul4670, !dbg !859
  %call4672 = call double @sqrt(double %add4671) #7, !dbg !859
  call void @llvm.dbg.value(metadata !{double %call4672}, i64 0, metadata !442), !dbg !859
  %idxprom4674 = sext i32 %add4586 to i64, !dbg !859
  %arrayidx4675 = getelementptr inbounds double* %6, i64 %idxprom4674, !dbg !859
  %673 = load double* %arrayidx4675, align 8, !dbg !859, !tbaa !559
  %mul4681 = fmul double %673, %673, !dbg !859
  %arrayidx4684 = getelementptr inbounds double* %10, i64 %idxprom4674, !dbg !859
  %674 = load double* %arrayidx4684, align 8, !dbg !859, !tbaa !559
  %mul4685 = fmul double %conv4652, %674, !dbg !859
  %mul4690 = fmul double %mul4685, %mul4685, !dbg !859
  %add4691 = fadd double %mul4681, %mul4690, !dbg !859
  %arrayidx4694 = getelementptr inbounds double* %14, i64 %idxprom4674, !dbg !859
  %675 = load double* %arrayidx4694, align 8, !dbg !859, !tbaa !559
  %mul4695 = fmul double %conv5021, %675, !dbg !859
  %mul4700 = fmul double %mul4695, %mul4695, !dbg !859
  %add4701 = fadd double %add4691, %mul4700, !dbg !859
  %call4702 = call double @sqrt(double %add4701) #7, !dbg !859
  call void @llvm.dbg.value(metadata !{double %call4702}, i64 0, metadata !441), !dbg !859
  br label %if.end4703

if.end4703:                                       ; preds = %if.else4642, %cond.end4622
  %u_src4597.0 = phi double [ %call4641, %cond.end4622 ], [ %call4702, %if.else4642 ]
  %u_dst4598.0 = phi double [ %call4624, %cond.end4622 ], [ %call4672, %if.else4642 ]
  %mul4704 = fmul double %conv, %668, !dbg !856
  %add4705 = fadd double %u_src4597.0, %u_dst4598.0, !dbg !856
  %mul4706 = fmul double %mul4704, %add4705, !dbg !856
  %idxprom4707 = sext i32 %add4586 to i64, !dbg !856
  %arrayidx4708 = getelementptr inbounds double* %18, i64 %idxprom4707, !dbg !856
  %676 = load double* %arrayidx4708, align 8, !dbg !856, !tbaa !559
  %arrayidx4710 = getelementptr inbounds double* %18, i64 %idxprom4610, !dbg !856
  %677 = load double* %arrayidx4710, align 8, !dbg !856, !tbaa !559
  %add4711 = fadd double %676, %677, !dbg !856
  %mul4717 = fmul double %add4711, %add4711, !dbg !856
  %div4718 = fdiv double %mul4706, %mul4717, !dbg !856
  call void @llvm.dbg.value(metadata !{double %div4718}, i64 0, metadata !443), !dbg !856
  %678 = load i8**** %data, align 8, !dbg !856, !tbaa !547
  %arrayidx4721 = getelementptr inbounds i8*** %678, i64 %indvars.iv8600, !dbg !856
  %679 = load i8*** %arrayidx4721, align 8, !dbg !856, !tbaa !547
  %680 = load i8** %679, align 8, !dbg !856, !tbaa !547
  %681 = bitcast i8* %680 to double*, !dbg !856
  call void @llvm.dbg.value(metadata !{double* %681}, i64 0, metadata !434), !dbg !856
  %mul4723 = fmul double %div4718, 2.000000e+00, !dbg !856
  %mul4724 = fmul double %mul4723, %finf, !dbg !856
  %arrayidx4726 = getelementptr inbounds double* %681, i64 %idxprom4707, !dbg !856
  %682 = load double* %arrayidx4726, align 8, !dbg !856, !tbaa !559
  %sub4727 = fsub double 1.000000e+00, %div4718, !dbg !856
  %mul4728 = fmul double %sub4727, %682, !dbg !856
  %add4729 = fadd double %mul4724, %mul4728, !dbg !856
  %add4730 = fadd double %div4718, 1.000000e+00, !dbg !856
  %div4731 = fdiv double %add4729, %add4730, !dbg !856
  %arrayidx4733 = getelementptr inbounds double* %681, i64 %idxprom4610, !dbg !856
  store double %div4731, double* %arrayidx4733, align 8, !dbg !856, !tbaa !559
  br label %if.end4734, !dbg !853

if.end4734:                                       ; preds = %if.end4564, %if.end4703
  %tobool4735 = icmp ne i32 %dy4491.0, 0, !dbg !845
  %tobool4735.not = xor i1 %tobool4735, true, !dbg !845
  %or.cond8358 = and i1 %tobool4737, %tobool4735.not, !dbg !845
  br i1 %or.cond8358, label %if.end4917, label %if.then4738, !dbg !845

if.then4738:                                      ; preds = %if.end4734
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !428), !dbg !861
  %683 = load i32** %cctk_lsh174, align 8, !dbg !862, !tbaa !547
  %684 = load i32* %683, align 4, !dbg !862, !tbaa !535
  %arrayidx4742 = getelementptr inbounds i32* %683, i64 1, !dbg !862
  %685 = load i32* %arrayidx4742, align 4, !dbg !862, !tbaa !535
  %ispos8204 = icmp sgt i32 %dy4491.0, -1, !dbg !862
  %neg8205 = sub i32 0, %dy4491.0, !dbg !862
  %686 = select i1 %ispos8204, i32 %dy4491.0, i32 %neg8205, !dbg !862
  call void @llvm.dbg.value(metadata !{double %687}, i64 0, metadata !433), !dbg !862
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !424), !dbg !864
  %sub47708384 = add nsw i32 %684, -1, !dbg !864
  %cmp47718385 = icmp sgt i32 %sub47708384, 1, !dbg !864
  br i1 %cmp47718385, label %for.body4773.lr.ph, label %if.end4917, !dbg !864

for.body4773.lr.ph:                               ; preds = %if.then4738
  %mul4760 = shl nsw i32 %686, 1, !dbg !862
  %add4764 = add nsw i32 %mul4760, %mul4951, !dbg !862
  %idxprom4765 = sext i32 %add4764 to i64, !dbg !862
  %arrayidx4766 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom4765, !dbg !862
  %687 = load double* %arrayidx4766, align 16, !dbg !862, !tbaa !559
  %add4782 = add nsw i32 %686, %658, !dbg !865
  %cmp4783 = icmp eq i32 %add4782, 1, !dbg !865
  %.8359 = select i1 %tobool4735, double* %10, double* %14, !dbg !866
  %mul4882 = fmul double %conv, %687, !dbg !865
  %conv4830 = sitofp i32 %dy4491.0 to double, !dbg !868
  %688 = add i32 %dy4491.0, %indvars.iv8526, !dbg !864
  %689 = mul i32 %add4941, %685, !dbg !864
  %690 = add i32 %688, %689, !dbg !864
  %691 = mul i32 %684, %690, !dbg !864
  %692 = sext i32 %691 to i64, !dbg !838
  %693 = mul i32 %indvars.iv8528, %685, !dbg !864
  %694 = add i32 %indvars.iv8526, %693, !dbg !864
  %695 = mul i32 %684, %694, !dbg !864
  %696 = sext i32 %695 to i64, !dbg !864
  br label %for.body4773, !dbg !864

for.body4773:                                     ; preds = %for.body4773.lr.ph, %if.end4881
  %697 = phi i32 [ %684, %for.body4773.lr.ph ], [ %704, %if.end4881 ]
  %indvars.iv8532 = phi i64 [ %696, %for.body4773.lr.ph ], [ %indvars.iv.next8533, %if.end4881 ], !dbg !864
  %indvars.iv8530 = phi i64 [ %692, %for.body4773.lr.ph ], [ %indvars.iv.next8531, %if.end4881 ], !dbg !838
  %i4487.08386 = phi i32 [ 1, %for.body4773.lr.ph ], [ %inc4913, %if.end4881 ]
  %indvars.iv.next8533 = add i64 %indvars.iv8532, 1, !dbg !864
  %indvars.iv.next8531 = add i64 %indvars.iv8530, 1, !dbg !864
  br i1 %cmp4783, label %cond.false4790, label %if.else4820, !dbg !865

cond.false4790:                                   ; preds = %for.body4773
  %cond4801.in = getelementptr inbounds double* %.8359, i64 %indvars.iv.next8533, !dbg !866
  %cond4801 = load double* %cond4801.in, align 8, !dbg !866
  %call4802 = call double @fabs(double %cond4801) #9, !dbg !866
  call void @llvm.dbg.value(metadata !{double %call4802}, i64 0, metadata !450), !dbg !866
  %cond4818.in = getelementptr inbounds double* %.8359, i64 %indvars.iv.next8531, !dbg !866
  %cond4818 = load double* %cond4818.in, align 8, !dbg !866
  %call4819 = call double @fabs(double %cond4818) #9, !dbg !866
  call void @llvm.dbg.value(metadata !{double %call4819}, i64 0, metadata !449), !dbg !866
  br label %if.end4881, !dbg !866

if.else4820:                                      ; preds = %for.body4773
  %arrayidx4823 = getelementptr inbounds double* %6, i64 %indvars.iv.next8533, !dbg !868
  %698 = load double* %arrayidx4823, align 8, !dbg !868, !tbaa !559
  %mul4824 = fmul double %698, 0.000000e+00, !dbg !868
  %mul4829 = fmul double %mul4824, %mul4824, !dbg !868
  %arrayidx4832 = getelementptr inbounds double* %10, i64 %indvars.iv.next8533, !dbg !868
  %699 = load double* %arrayidx4832, align 8, !dbg !868, !tbaa !559
  %mul4833 = fmul double %conv4830, %699, !dbg !868
  %mul4838 = fmul double %mul4833, %mul4833, !dbg !868
  %add4839 = fadd double %mul4829, %mul4838, !dbg !868
  %arrayidx4842 = getelementptr inbounds double* %14, i64 %indvars.iv.next8533, !dbg !868
  %700 = load double* %arrayidx4842, align 8, !dbg !868, !tbaa !559
  %mul4843 = fmul double %conv5021, %700, !dbg !868
  %mul4848 = fmul double %mul4843, %mul4843, !dbg !868
  %add4849 = fadd double %add4839, %mul4848, !dbg !868
  %call4850 = call double @sqrt(double %add4849) #7, !dbg !868
  call void @llvm.dbg.value(metadata !{double %call4850}, i64 0, metadata !450), !dbg !868
  %arrayidx4853 = getelementptr inbounds double* %6, i64 %indvars.iv.next8531, !dbg !868
  %701 = load double* %arrayidx4853, align 8, !dbg !868, !tbaa !559
  %mul4854 = fmul double %701, 0.000000e+00, !dbg !868
  %mul4859 = fmul double %mul4854, %mul4854, !dbg !868
  %arrayidx4862 = getelementptr inbounds double* %10, i64 %indvars.iv.next8531, !dbg !868
  %702 = load double* %arrayidx4862, align 8, !dbg !868, !tbaa !559
  %mul4863 = fmul double %conv4830, %702, !dbg !868
  %mul4868 = fmul double %mul4863, %mul4863, !dbg !868
  %add4869 = fadd double %mul4859, %mul4868, !dbg !868
  %arrayidx4872 = getelementptr inbounds double* %14, i64 %indvars.iv.next8531, !dbg !868
  %703 = load double* %arrayidx4872, align 8, !dbg !868, !tbaa !559
  %mul4873 = fmul double %conv5021, %703, !dbg !868
  %mul4878 = fmul double %mul4873, %mul4873, !dbg !868
  %add4879 = fadd double %add4869, %mul4878, !dbg !868
  %call4880 = call double @sqrt(double %add4879) #7, !dbg !868
  call void @llvm.dbg.value(metadata !{double %call4880}, i64 0, metadata !449), !dbg !868
  %.pre8613 = load i32** %cctk_lsh174, align 8, !dbg !864, !tbaa !547
  %.pre8614 = load i32* %.pre8613, align 4, !dbg !864, !tbaa !535
  br label %if.end4881

if.end4881:                                       ; preds = %if.else4820, %cond.false4790
  %704 = phi i32 [ %697, %cond.false4790 ], [ %.pre8614, %if.else4820 ], !dbg !865
  %u_src4775.0 = phi double [ %call4819, %cond.false4790 ], [ %call4880, %if.else4820 ]
  %u_dst4776.0 = phi double [ %call4802, %cond.false4790 ], [ %call4850, %if.else4820 ]
  %add4883 = fadd double %u_src4775.0, %u_dst4776.0, !dbg !865
  %mul4884 = fmul double %mul4882, %add4883, !dbg !865
  %arrayidx4886 = getelementptr inbounds double* %18, i64 %indvars.iv.next8531, !dbg !865
  %705 = load double* %arrayidx4886, align 8, !dbg !865, !tbaa !559
  %arrayidx4888 = getelementptr inbounds double* %18, i64 %indvars.iv.next8533, !dbg !865
  %706 = load double* %arrayidx4888, align 8, !dbg !865, !tbaa !559
  %add4889 = fadd double %705, %706, !dbg !865
  %mul4895 = fmul double %add4889, %add4889, !dbg !865
  %div4896 = fdiv double %mul4884, %mul4895, !dbg !865
  call void @llvm.dbg.value(metadata !{double %div4896}, i64 0, metadata !451), !dbg !865
  %707 = load i8**** %data, align 8, !dbg !865, !tbaa !547
  %arrayidx4899 = getelementptr inbounds i8*** %707, i64 %indvars.iv8600, !dbg !865
  %708 = load i8*** %arrayidx4899, align 8, !dbg !865, !tbaa !547
  %709 = load i8** %708, align 8, !dbg !865, !tbaa !547
  %710 = bitcast i8* %709 to double*, !dbg !865
  call void @llvm.dbg.value(metadata !{double* %710}, i64 0, metadata !444), !dbg !865
  %mul4901 = fmul double %div4896, 2.000000e+00, !dbg !865
  %mul4902 = fmul double %mul4901, %finf, !dbg !865
  %arrayidx4904 = getelementptr inbounds double* %710, i64 %indvars.iv.next8531, !dbg !865
  %711 = load double* %arrayidx4904, align 8, !dbg !865, !tbaa !559
  %sub4905 = fsub double 1.000000e+00, %div4896, !dbg !865
  %mul4906 = fmul double %sub4905, %711, !dbg !865
  %add4907 = fadd double %mul4902, %mul4906, !dbg !865
  %add4908 = fadd double %div4896, 1.000000e+00, !dbg !865
  %div4909 = fdiv double %add4907, %add4908, !dbg !865
  %arrayidx4911 = getelementptr inbounds double* %710, i64 %indvars.iv.next8533, !dbg !865
  store double %div4909, double* %arrayidx4911, align 8, !dbg !865, !tbaa !559
  %inc4913 = add nsw i32 %i4487.08386, 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i32 %inc4913}, i64 0, metadata !424), !dbg !864
  %sub4770 = add nsw i32 %704, -1, !dbg !864
  %cmp4771 = icmp slt i32 %inc4913, %sub4770, !dbg !864
  br i1 %cmp4771, label %for.body4773, label %if.end4917, !dbg !864

if.end4917:                                       ; preds = %if.then4738, %if.end4881, %if.end4734
  %tobool4919 = icmp ult i64 %664, 4294967296, !dbg !845
  br i1 %tobool4919, label %for.inc5094, label %if.then4920, !dbg !845

if.then4920:                                      ; preds = %if.end4917
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !428), !dbg !870
  %712 = load i32** %cctk_lsh174, align 8, !dbg !846, !tbaa !547
  %713 = load i32* %712, align 4, !dbg !846, !tbaa !535
  %sub4923 = add nsw i32 %713, -1, !dbg !846
  %arrayidx4927 = getelementptr inbounds i32* %712, i64 1, !dbg !846
  %714 = load i32* %arrayidx4927, align 4, !dbg !846, !tbaa !535
  %mul4928 = mul nsw i32 %714, %indvars.iv8528, !dbg !846
  %add4929 = add nsw i32 %mul4928, %indvars.iv8526, !dbg !846
  %mul4930 = mul nsw i32 %add4929, %713, !dbg !846
  %add4931 = add nsw i32 %sub4923, %mul4930, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %add4931}, i64 0, metadata !432), !dbg !846
  %add4935 = add nsw i32 %713, -2, !dbg !846
  %add4938 = add nsw i32 %dy4491.0, %indvars.iv8526, !dbg !846
  %mul4942 = mul nsw i32 %714, %add4941, !dbg !846
  %add4943 = add nsw i32 %add4938, %mul4942, !dbg !846
  %mul4944 = mul nsw i32 %add4943, %713, !dbg !846
  %add4945 = add nsw i32 %add4935, %mul4944, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %add4945}, i64 0, metadata !431), !dbg !846
  %ispos8199 = icmp sgt i32 %dy4491.0, -1, !dbg !846
  %neg8200 = sub i32 0, %dy4491.0, !dbg !846
  %715 = select i1 %ispos8199, i32 %dy4491.0, i32 %neg8200, !dbg !846
  %mul4948 = shl nsw i32 %715, 1, !dbg !846
  %add49498201 = or i32 %mul4948, 1, !dbg !846
  %add4952 = add nsw i32 %add49498201, %mul4951, !dbg !846
  %idxprom4953 = sext i32 %add4952 to i64, !dbg !846
  %arrayidx4954 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom4953, !dbg !846
  %716 = load double* %arrayidx4954, align 8, !dbg !846, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %716}, i64 0, metadata !433), !dbg !846
  %add4963 = add i32 %add4961, %715, !dbg !848
  %cmp4964 = icmp eq i32 %add4963, 1, !dbg !848
  %idxprom4969 = sext i32 %add4931 to i64, !dbg !871
  %arrayidx4970 = getelementptr inbounds double* %6, i64 %idxprom4969, !dbg !871
  %717 = load double* %arrayidx4970, align 8, !dbg !871, !tbaa !559
  br i1 %cmp4964, label %cond.end4981, label %if.else5001, !dbg !848

cond.end4981:                                     ; preds = %if.then4920
  %call4983 = call double @fabs(double %717) #9, !dbg !871
  call void @llvm.dbg.value(metadata !{double %call4983}, i64 0, metadata !456), !dbg !871
  %idxprom4986 = sext i32 %add4945 to i64, !dbg !871
  %arrayidx4987 = getelementptr inbounds double* %6, i64 %idxprom4986, !dbg !871
  %718 = load double* %arrayidx4987, align 8, !dbg !871, !tbaa !559
  %call5000 = call double @fabs(double %718) #9, !dbg !871
  call void @llvm.dbg.value(metadata !{double %call5000}, i64 0, metadata !455), !dbg !871
  br label %if.end5062, !dbg !871

if.else5001:                                      ; preds = %if.then4920
  %mul5005 = fmul double %717, -1.000000e+00, !dbg !849
  %mul5010 = fmul double %mul5005, %mul5005, !dbg !849
  %conv5011 = sitofp i32 %dy4491.0 to double, !dbg !849
  %arrayidx5013 = getelementptr inbounds double* %10, i64 %idxprom4969, !dbg !849
  %719 = load double* %arrayidx5013, align 8, !dbg !849, !tbaa !559
  %mul5014 = fmul double %conv5011, %719, !dbg !849
  %mul5019 = fmul double %mul5014, %mul5014, !dbg !849
  %add5020 = fadd double %mul5010, %mul5019, !dbg !849
  %arrayidx5023 = getelementptr inbounds double* %14, i64 %idxprom4969, !dbg !849
  %720 = load double* %arrayidx5023, align 8, !dbg !849, !tbaa !559
  %mul5024 = fmul double %conv5021, %720, !dbg !849
  %mul5029 = fmul double %mul5024, %mul5024, !dbg !849
  %add5030 = fadd double %add5020, %mul5029, !dbg !849
  %call5031 = call double @sqrt(double %add5030) #7, !dbg !849
  call void @llvm.dbg.value(metadata !{double %call5031}, i64 0, metadata !456), !dbg !849
  %idxprom5033 = sext i32 %add4945 to i64, !dbg !849
  %arrayidx5034 = getelementptr inbounds double* %6, i64 %idxprom5033, !dbg !849
  %721 = load double* %arrayidx5034, align 8, !dbg !849, !tbaa !559
  %mul5035 = fmul double %721, -1.000000e+00, !dbg !849
  %mul5040 = fmul double %mul5035, %mul5035, !dbg !849
  %arrayidx5043 = getelementptr inbounds double* %10, i64 %idxprom5033, !dbg !849
  %722 = load double* %arrayidx5043, align 8, !dbg !849, !tbaa !559
  %mul5044 = fmul double %conv5011, %722, !dbg !849
  %mul5049 = fmul double %mul5044, %mul5044, !dbg !849
  %add5050 = fadd double %mul5040, %mul5049, !dbg !849
  %arrayidx5053 = getelementptr inbounds double* %14, i64 %idxprom5033, !dbg !849
  %723 = load double* %arrayidx5053, align 8, !dbg !849, !tbaa !559
  %mul5054 = fmul double %conv5021, %723, !dbg !849
  %mul5059 = fmul double %mul5054, %mul5054, !dbg !849
  %add5060 = fadd double %add5050, %mul5059, !dbg !849
  %call5061 = call double @sqrt(double %add5060) #7, !dbg !849
  call void @llvm.dbg.value(metadata !{double %call5061}, i64 0, metadata !455), !dbg !849
  br label %if.end5062

if.end5062:                                       ; preds = %if.else5001, %cond.end4981
  %u_src4956.0 = phi double [ %call5000, %cond.end4981 ], [ %call5061, %if.else5001 ]
  %u_dst4957.0 = phi double [ %call4983, %cond.end4981 ], [ %call5031, %if.else5001 ]
  %mul5063 = fmul double %conv, %716, !dbg !848
  %add5064 = fadd double %u_src4956.0, %u_dst4957.0, !dbg !848
  %mul5065 = fmul double %mul5063, %add5064, !dbg !848
  %idxprom5066 = sext i32 %add4945 to i64, !dbg !848
  %arrayidx5067 = getelementptr inbounds double* %18, i64 %idxprom5066, !dbg !848
  %724 = load double* %arrayidx5067, align 8, !dbg !848, !tbaa !559
  %arrayidx5069 = getelementptr inbounds double* %18, i64 %idxprom4969, !dbg !848
  %725 = load double* %arrayidx5069, align 8, !dbg !848, !tbaa !559
  %add5070 = fadd double %724, %725, !dbg !848
  %mul5076 = fmul double %add5070, %add5070, !dbg !848
  %div5077 = fdiv double %mul5065, %mul5076, !dbg !848
  call void @llvm.dbg.value(metadata !{double %div5077}, i64 0, metadata !457), !dbg !848
  %726 = load i8**** %data, align 8, !dbg !848, !tbaa !547
  %arrayidx5080 = getelementptr inbounds i8*** %726, i64 %indvars.iv8600, !dbg !848
  %727 = load i8*** %arrayidx5080, align 8, !dbg !848, !tbaa !547
  %728 = load i8** %727, align 8, !dbg !848, !tbaa !547
  %729 = bitcast i8* %728 to double*, !dbg !848
  call void @llvm.dbg.value(metadata !{double* %729}, i64 0, metadata !452), !dbg !848
  %mul5082 = fmul double %div5077, 2.000000e+00, !dbg !848
  %mul5083 = fmul double %mul5082, %finf, !dbg !848
  %arrayidx5085 = getelementptr inbounds double* %729, i64 %idxprom5066, !dbg !848
  %730 = load double* %arrayidx5085, align 8, !dbg !848, !tbaa !559
  %sub5086 = fsub double 1.000000e+00, %div5077, !dbg !848
  %mul5087 = fmul double %sub5086, %730, !dbg !848
  %add5088 = fadd double %mul5083, %mul5087, !dbg !848
  %add5089 = fadd double %div5077, 1.000000e+00, !dbg !848
  %div5090 = fdiv double %add5088, %add5089, !dbg !848
  %arrayidx5092 = getelementptr inbounds double* %729, i64 %idxprom4969, !dbg !848
  store double %div5090, double* %arrayidx5092, align 8, !dbg !848, !tbaa !559
  br label %for.inc5094, !dbg !870

for.inc5094:                                      ; preds = %if.end4917, %if.end5062
  %indvars.iv.next8527 = add i32 %indvars.iv8526, 1, !dbg !841
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8527}, i64 0, metadata !426), !dbg !841
  %731 = load i32** %cctk_lsh174, align 8, !dbg !841, !tbaa !547
  %arrayidx4543 = getelementptr inbounds i32* %731, i64 1, !dbg !841
  %732 = load i32* %arrayidx4543, align 4, !dbg !841, !tbaa !535
  %cmp4544 = icmp slt i32 %indvars.iv.next8527, %732, !dbg !841
  br i1 %cmp4544, label %for.body4546, label %for.cond4541.for.inc5097.loopexit_crit_edge, !dbg !841

for.cond4541.for.inc5097.loopexit_crit_edge:      ; preds = %for.inc5094
  %arrayidx4503.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %731, i64 2
  %.pre8631.pre = load i32* %arrayidx4503.phi.trans.insert.phi.trans.insert, align 4, !dbg !838, !tbaa !535
  br label %for.inc5097, !dbg !841

for.inc5097:                                      ; preds = %if.end4540, %for.cond4541.for.inc5097.loopexit_crit_edge, %land.lhs.true4509, %land.lhs.true4518
  %733 = phi i32 [ %651, %land.lhs.true4518 ], [ %651, %land.lhs.true4509 ], [ %.pre8631.pre, %for.cond4541.for.inc5097.loopexit_crit_edge ], [ %651, %if.end4540 ], !dbg !838
  %734 = phi i32* [ %652, %land.lhs.true4518 ], [ %652, %land.lhs.true4509 ], [ %731, %for.cond4541.for.inc5097.loopexit_crit_edge ], [ %652, %if.end4540 ], !dbg !838
  %indvars.iv.next8529 = add i32 %indvars.iv8528, 1, !dbg !838
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8529}, i64 0, metadata !427), !dbg !838
  %cmp4504 = icmp slt i32 %indvars.iv.next8529, %733, !dbg !838
  br i1 %cmp4504, label %for.body4506, label %for.inc5726, !dbg !838

sw.bb5100:                                        ; preds = %for.end167
  br i1 %cmp168, label %for.cond5115.preheader, label %if.then5112, !dbg !873

for.cond5115.preheader:                           ; preds = %sw.bb5100
  %735 = load i32** %cctk_lsh174, align 8, !dbg !874, !tbaa !547
  %arrayidx51178378 = getelementptr inbounds i32* %735, i64 2, !dbg !874
  %736 = load i32* %arrayidx51178378, align 4, !dbg !874, !tbaa !535
  %cmp51188379 = icmp sgt i32 %736, 0, !dbg !874
  br i1 %cmp51188379, label %for.body5120, label %for.inc5726, !dbg !874

if.then5112:                                      ; preds = %sw.bb5100
  %call5113 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 775, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str17, i64 0, i64 0), i32 %call1) #7, !dbg !875
  br label %cleanup, !dbg !875

for.body5120:                                     ; preds = %for.cond5115.preheader, %for.inc5720
  %737 = phi i32 [ %819, %for.inc5720 ], [ %736, %for.cond5115.preheader ]
  %738 = phi i32* [ %820, %for.inc5720 ], [ %735, %for.cond5115.preheader ]
  %indvars.iv8520 = phi i32 [ %indvars.iv.next8521, %for.inc5720 ], [ 0, %for.cond5115.preheader ], !dbg !877
  %cmp5121 = icmp eq i32 %indvars.iv8520, 0, !dbg !878
  br i1 %cmp5121, label %land.lhs.true5123, label %lor.lhs.false5126, !dbg !878

land.lhs.true5123:                                ; preds = %for.body5120
  %739 = load i32* %arrayidx181, align 16, !dbg !878, !tbaa !535
  %tobool5125 = icmp eq i32 %739, 0, !dbg !878
  br i1 %tobool5125, label %for.inc5720, label %lor.lhs.false5126, !dbg !878

lor.lhs.false5126:                                ; preds = %land.lhs.true5123, %for.body5120
  %sub5129 = add nsw i32 %737, -1, !dbg !878
  %cmp5130 = icmp eq i32 %indvars.iv8520, %sub5129, !dbg !878
  br i1 %cmp5130, label %land.lhs.true5132, label %if.end5136, !dbg !878

land.lhs.true5132:                                ; preds = %lor.lhs.false5126
  %740 = load i32* %arrayidx188, align 4, !dbg !878, !tbaa !535
  %tobool5134 = icmp eq i32 %740, 0, !dbg !878
  br i1 %tobool5134, label %for.inc5720, label %if.end5136, !dbg !878

if.end5136:                                       ; preds = %land.lhs.true5132, %lor.lhs.false5126
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !464), !dbg !878
  br i1 %cmp5121, label %land.lhs.true5139, label %if.else5143, !dbg !878

land.lhs.true5139:                                ; preds = %if.end5136
  %741 = load i32* %arrayidx181, align 16, !dbg !878, !tbaa !535
  %tobool5141.not = icmp ne i32 %741, 0, !dbg !878
  %cmp5130.not = xor i1 %cmp5130, true, !dbg !878
  %brmerge8654 = or i1 %tobool5141.not, %cmp5130.not, !dbg !878
  %.mux8655 = zext i1 %tobool5141.not to i32, !dbg !878
  br i1 %brmerge8654, label %if.end5154, label %land.lhs.true5149, !dbg !878

if.else5143:                                      ; preds = %if.end5136
  br i1 %cmp5130, label %land.lhs.true5149, label %if.end5154, !dbg !878

land.lhs.true5149:                                ; preds = %land.lhs.true5139, %if.else5143
  %742 = load i32* %arrayidx188, align 4, !dbg !878, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !464), !dbg !879
  %not.tobool5151 = icmp ne i32 %742, 0, !dbg !878
  %.8360 = sext i1 %not.tobool5151 to i32, !dbg !878
  br label %if.end5154, !dbg !878

if.end5154:                                       ; preds = %land.lhs.true5139, %land.lhs.true5149, %if.else5143
  %dz5106.0 = phi i32 [ 0, %if.else5143 ], [ %.mux8655, %land.lhs.true5139 ], [ %.8360, %land.lhs.true5149 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !460), !dbg !877
  %arrayidx51578375 = getelementptr inbounds i32* %738, i64 1, !dbg !877
  %743 = load i32* %arrayidx51578375, align 4, !dbg !877, !tbaa !535
  %cmp51588376 = icmp sgt i32 %743, 0, !dbg !877
  br i1 %cmp51588376, label %for.body5160.lr.ph, label %for.inc5720, !dbg !877

for.body5160.lr.ph:                               ; preds = %if.end5154
  %tobool5354 = icmp eq i32 %dz5106.0, 0, !dbg !881
  %add5561 = add i32 %dz5106.0, %indvars.iv8520, !dbg !882
  %ispos8188 = icmp sgt i32 %dz5106.0, -1, !dbg !882
  %neg8189 = sub i32 0, %dz5106.0, !dbg !882
  %744 = select i1 %ispos8188, i32 %dz5106.0, i32 %neg8189, !dbg !882
  %mul5571 = shl nsw i32 %744, 2, !dbg !882
  %add5581 = add i32 %744, 1, !dbg !884
  %conv5641 = sitofp i32 %dz5106.0 to double, !dbg !885
  br label %for.body5160, !dbg !877

for.body5160:                                     ; preds = %for.body5160.lr.ph, %for.inc5717
  %745 = phi i32 [ %743, %for.body5160.lr.ph ], [ %818, %for.inc5717 ]
  %746 = phi i32* [ %738, %for.body5160.lr.ph ], [ %817, %for.inc5717 ]
  %indvars.iv8518 = phi i32 [ 0, %for.body5160.lr.ph ], [ %indvars.iv.next8519, %for.inc5717 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !463), !dbg !881
  %cmp5161 = icmp eq i32 %indvars.iv8518, 0, !dbg !881
  br i1 %cmp5161, label %land.lhs.true5163, label %if.else5167, !dbg !881

land.lhs.true5163:                                ; preds = %for.body5160
  %747 = load i32* %arrayidx218, align 8, !dbg !881, !tbaa !535
  %tobool5165 = icmp eq i32 %747, 0, !dbg !881
  br i1 %tobool5165, label %if.else5167, label %if.end5178, !dbg !881

if.else5167:                                      ; preds = %land.lhs.true5163, %for.body5160
  %sub5170 = add nsw i32 %745, -1, !dbg !881
  %cmp5171 = icmp eq i32 %indvars.iv8518, %sub5170, !dbg !881
  br i1 %cmp5171, label %land.lhs.true5173, label %if.end5178, !dbg !881

land.lhs.true5173:                                ; preds = %if.else5167
  %748 = load i32* %arrayidx228, align 4, !dbg !881, !tbaa !535
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !463), !dbg !887
  %not.tobool5175 = icmp ne i32 %748, 0, !dbg !881
  %.8361 = sext i1 %not.tobool5175 to i32, !dbg !881
  br label %if.end5178, !dbg !881

if.end5178:                                       ; preds = %if.else5167, %land.lhs.true5163, %land.lhs.true5173
  %dy5105.0 = phi i32 [ %.8361, %land.lhs.true5173 ], [ 1, %land.lhs.true5163 ], [ 0, %if.else5167 ]
  %749 = bitcast [6 x i32]* %doBC to i64*, !dbg !881
  %750 = load i64* %749, align 16, !dbg !881
  %751 = trunc i64 %750 to i32, !dbg !881
  %tobool5180 = icmp eq i32 %751, 0, !dbg !881
  br i1 %tobool5180, label %if.end5351, label %if.then5181, !dbg !881

if.then5181:                                      ; preds = %if.end5178
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !462), !dbg !889
  %752 = load i32* %746, align 4, !dbg !890, !tbaa !535
  %mul5186 = mul nsw i32 %745, %indvars.iv8520, !dbg !890
  %add5187 = add nsw i32 %mul5186, %indvars.iv8518, !dbg !890
  %mul5188 = mul nsw i32 %add5187, %752, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %mul5188}, i64 0, metadata !466), !dbg !890
  %add5193 = add nsw i32 %dy5105.0, %indvars.iv8518, !dbg !890
  %mul5197 = mul nsw i32 %745, %add5561, !dbg !890
  %add5198 = add nsw i32 %add5193, %mul5197, !dbg !890
  %mul5199 = mul nsw i32 %add5198, %752, !dbg !890
  %add5200 = add nsw i32 %mul5199, 1, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %add5200}, i64 0, metadata !465), !dbg !890
  %ispos8194 = icmp sgt i32 %dy5105.0, -1, !dbg !890
  %neg8195 = sub i32 0, %dy5105.0, !dbg !890
  %753 = select i1 %ispos8194, i32 %dy5105.0, i32 %neg8195, !dbg !890
  %mul5203 = shl nsw i32 %753, 1, !dbg !890
  %add52048196 = or i32 %mul5203, 1, !dbg !890
  %add5207 = add nsw i32 %add52048196, %mul5571, !dbg !890
  %idxprom5208 = sext i32 %add5207 to i64, !dbg !890
  %arrayidx5209 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom5208, !dbg !890
  %754 = load double* %arrayidx5209, align 8, !dbg !890, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %754}, i64 0, metadata !467), !dbg !890
  %add5218 = add i32 %add5581, %753, !dbg !892
  %cmp5219 = icmp eq i32 %add5218, 1, !dbg !892
  %idxprom5224 = sext i32 %mul5188 to i64, !dbg !893
  %arrayidx5225 = getelementptr inbounds double* %6, i64 %idxprom5224, !dbg !893
  %755 = load double* %arrayidx5225, align 8, !dbg !893, !tbaa !559
  br i1 %cmp5219, label %cond.end5236, label %if.else5256, !dbg !892

cond.end5236:                                     ; preds = %if.then5181
  %call5238 = call double @fabs(double %755) #9, !dbg !893
  call void @llvm.dbg.value(metadata !{double %call5238}, i64 0, metadata !478), !dbg !893
  %idxprom5241 = sext i32 %add5200 to i64, !dbg !893
  %arrayidx5242 = getelementptr inbounds double* %6, i64 %idxprom5241, !dbg !893
  %756 = load double* %arrayidx5242, align 8, !dbg !893, !tbaa !559
  %call5255 = call double @fabs(double %756) #9, !dbg !893
  call void @llvm.dbg.value(metadata !{double %call5255}, i64 0, metadata !477), !dbg !893
  br label %if.end5317, !dbg !893

if.else5256:                                      ; preds = %if.then5181
  %mul5265 = fmul double %755, %755, !dbg !895
  %conv5266 = sitofp i32 %dy5105.0 to double, !dbg !895
  %arrayidx5268 = getelementptr inbounds double* %10, i64 %idxprom5224, !dbg !895
  %757 = load double* %arrayidx5268, align 8, !dbg !895, !tbaa !559
  %mul5269 = fmul double %conv5266, %757, !dbg !895
  %mul5274 = fmul double %mul5269, %mul5269, !dbg !895
  %add5275 = fadd double %mul5265, %mul5274, !dbg !895
  %arrayidx5278 = getelementptr inbounds double* %14, i64 %idxprom5224, !dbg !895
  %758 = load double* %arrayidx5278, align 8, !dbg !895, !tbaa !559
  %mul5279 = fmul double %conv5641, %758, !dbg !895
  %mul5284 = fmul double %mul5279, %mul5279, !dbg !895
  %add5285 = fadd double %add5275, %mul5284, !dbg !895
  %call5286 = call double @sqrt(double %add5285) #7, !dbg !895
  call void @llvm.dbg.value(metadata !{double %call5286}, i64 0, metadata !478), !dbg !895
  %idxprom5288 = sext i32 %add5200 to i64, !dbg !895
  %arrayidx5289 = getelementptr inbounds double* %6, i64 %idxprom5288, !dbg !895
  %759 = load double* %arrayidx5289, align 8, !dbg !895, !tbaa !559
  %mul5295 = fmul double %759, %759, !dbg !895
  %arrayidx5298 = getelementptr inbounds double* %10, i64 %idxprom5288, !dbg !895
  %760 = load double* %arrayidx5298, align 8, !dbg !895, !tbaa !559
  %mul5299 = fmul double %conv5266, %760, !dbg !895
  %mul5304 = fmul double %mul5299, %mul5299, !dbg !895
  %add5305 = fadd double %mul5295, %mul5304, !dbg !895
  %arrayidx5308 = getelementptr inbounds double* %14, i64 %idxprom5288, !dbg !895
  %761 = load double* %arrayidx5308, align 8, !dbg !895, !tbaa !559
  %mul5309 = fmul double %conv5641, %761, !dbg !895
  %mul5314 = fmul double %mul5309, %mul5309, !dbg !895
  %add5315 = fadd double %add5305, %mul5314, !dbg !895
  %call5316 = call double @sqrt(double %add5315) #7, !dbg !895
  call void @llvm.dbg.value(metadata !{double %call5316}, i64 0, metadata !477), !dbg !895
  br label %if.end5317

if.end5317:                                       ; preds = %if.else5256, %cond.end5236
  %u_src5211.0 = phi double [ %call5255, %cond.end5236 ], [ %call5316, %if.else5256 ]
  %u_dst5212.0 = phi double [ %call5238, %cond.end5236 ], [ %call5286, %if.else5256 ]
  %mul5318 = fmul double %conv, %754, !dbg !892
  %add5319 = fadd double %u_src5211.0, %u_dst5212.0, !dbg !892
  %mul5320 = fmul double %mul5318, %add5319, !dbg !892
  %idxprom5321 = sext i32 %add5200 to i64, !dbg !892
  %arrayidx5322 = getelementptr inbounds double* %18, i64 %idxprom5321, !dbg !892
  %762 = load double* %arrayidx5322, align 8, !dbg !892, !tbaa !559
  %arrayidx5324 = getelementptr inbounds double* %18, i64 %idxprom5224, !dbg !892
  %763 = load double* %arrayidx5324, align 8, !dbg !892, !tbaa !559
  %add5325 = fadd double %762, %763, !dbg !892
  %mul5331 = fmul double %add5325, %add5325, !dbg !892
  %div5332 = fdiv double %mul5320, %mul5331, !dbg !892
  call void @llvm.dbg.value(metadata !{double %div5332}, i64 0, metadata !479), !dbg !892
  %764 = load i8**** %data, align 8, !dbg !892, !tbaa !547
  %arrayidx5335 = getelementptr inbounds i8*** %764, i64 %indvars.iv8600, !dbg !892
  %765 = load i8*** %arrayidx5335, align 8, !dbg !892, !tbaa !547
  %766 = load i8** %765, align 8, !dbg !892, !tbaa !547
  %767 = bitcast i8* %766 to x86_fp80*, !dbg !892
  call void @llvm.dbg.value(metadata !{x86_fp80* %767}, i64 0, metadata !468), !dbg !892
  %mul5337 = fmul double %div5332, 2.000000e+00, !dbg !892
  %mul5338 = fmul double %mul5337, %finf, !dbg !892
  %conv5339 = fpext double %mul5338 to x86_fp80, !dbg !892
  %arrayidx5341 = getelementptr inbounds x86_fp80* %767, i64 %idxprom5321, !dbg !892
  %768 = load x86_fp80* %arrayidx5341, align 16, !dbg !892, !tbaa !897
  %sub5342 = fsub double 1.000000e+00, %div5332, !dbg !892
  %conv5343 = fpext double %sub5342 to x86_fp80, !dbg !892
  %mul5344 = fmul x86_fp80 %conv5343, %768, !dbg !892
  %add5345 = fadd x86_fp80 %conv5339, %mul5344, !dbg !892
  %add5346 = fadd double %div5332, 1.000000e+00, !dbg !892
  %conv5347 = fpext double %add5346 to x86_fp80, !dbg !892
  %div5348 = fdiv x86_fp80 %add5345, %conv5347, !dbg !892
  %arrayidx5350 = getelementptr inbounds x86_fp80* %767, i64 %idxprom5224, !dbg !892
  store x86_fp80 %div5348, x86_fp80* %arrayidx5350, align 16, !dbg !892, !tbaa !897
  br label %if.end5351, !dbg !889

if.end5351:                                       ; preds = %if.end5178, %if.end5317
  %tobool5352 = icmp ne i32 %dy5105.0, 0, !dbg !881
  %tobool5352.not = xor i1 %tobool5352, true, !dbg !881
  %or.cond8362 = and i1 %tobool5354, %tobool5352.not, !dbg !881
  br i1 %or.cond8362, label %if.end5537, label %if.then5355, !dbg !881

if.then5355:                                      ; preds = %if.end5351
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !462), !dbg !898
  %769 = load i32** %cctk_lsh174, align 8, !dbg !899, !tbaa !547
  %770 = load i32* %769, align 4, !dbg !899, !tbaa !535
  %arrayidx5359 = getelementptr inbounds i32* %769, i64 1, !dbg !899
  %771 = load i32* %arrayidx5359, align 4, !dbg !899, !tbaa !535
  %ispos8190 = icmp sgt i32 %dy5105.0, -1, !dbg !899
  %neg8191 = sub i32 0, %dy5105.0, !dbg !899
  %772 = select i1 %ispos8190, i32 %dy5105.0, i32 %neg8191, !dbg !899
  call void @llvm.dbg.value(metadata !{double %773}, i64 0, metadata !467), !dbg !899
  call void @llvm.dbg.value(metadata !597, i64 0, metadata !458), !dbg !901
  %sub53878370 = add nsw i32 %770, -1, !dbg !901
  %cmp53888371 = icmp sgt i32 %sub53878370, 1, !dbg !901
  br i1 %cmp53888371, label %for.body5390.lr.ph, label %if.end5537, !dbg !901

for.body5390.lr.ph:                               ; preds = %if.then5355
  %mul5377 = shl nsw i32 %772, 1, !dbg !899
  %add5381 = add nsw i32 %mul5377, %mul5571, !dbg !899
  %idxprom5382 = sext i32 %add5381 to i64, !dbg !899
  %arrayidx5383 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom5382, !dbg !899
  %773 = load double* %arrayidx5383, align 16, !dbg !899, !tbaa !559
  %add5399 = add nsw i32 %772, %744, !dbg !902
  %cmp5400 = icmp eq i32 %add5399, 1, !dbg !902
  %.8363 = select i1 %tobool5352, double* %10, double* %14, !dbg !903
  %mul5499 = fmul double %conv, %773, !dbg !902
  %conv5447 = sitofp i32 %dy5105.0 to double, !dbg !905
  %774 = add i32 %dy5105.0, %indvars.iv8518, !dbg !901
  %775 = mul i32 %add5561, %771, !dbg !901
  %776 = add i32 %774, %775, !dbg !901
  %777 = mul i32 %770, %776, !dbg !901
  %778 = sext i32 %777 to i64, !dbg !874
  %779 = mul i32 %indvars.iv8520, %771, !dbg !901
  %780 = add i32 %indvars.iv8518, %779, !dbg !901
  %781 = mul i32 %770, %780, !dbg !901
  %782 = sext i32 %781 to i64, !dbg !901
  br label %for.body5390, !dbg !901

for.body5390:                                     ; preds = %for.body5390.lr.ph, %if.end5498
  %783 = phi i32 [ %770, %for.body5390.lr.ph ], [ %790, %if.end5498 ]
  %indvars.iv8524 = phi i64 [ %782, %for.body5390.lr.ph ], [ %indvars.iv.next8525, %if.end5498 ], !dbg !901
  %indvars.iv8522 = phi i64 [ %778, %for.body5390.lr.ph ], [ %indvars.iv.next8523, %if.end5498 ], !dbg !874
  %i5101.08372 = phi i32 [ 1, %for.body5390.lr.ph ], [ %inc5533, %if.end5498 ]
  %indvars.iv.next8525 = add i64 %indvars.iv8524, 1, !dbg !901
  %indvars.iv.next8523 = add i64 %indvars.iv8522, 1, !dbg !901
  br i1 %cmp5400, label %cond.false5407, label %if.else5437, !dbg !902

cond.false5407:                                   ; preds = %for.body5390
  %cond5418.in = getelementptr inbounds double* %.8363, i64 %indvars.iv.next8525, !dbg !903
  %cond5418 = load double* %cond5418.in, align 8, !dbg !903
  %call5419 = call double @fabs(double %cond5418) #9, !dbg !903
  call void @llvm.dbg.value(metadata !{double %call5419}, i64 0, metadata !486), !dbg !903
  %cond5435.in = getelementptr inbounds double* %.8363, i64 %indvars.iv.next8523, !dbg !903
  %cond5435 = load double* %cond5435.in, align 8, !dbg !903
  %call5436 = call double @fabs(double %cond5435) #9, !dbg !903
  call void @llvm.dbg.value(metadata !{double %call5436}, i64 0, metadata !485), !dbg !903
  br label %if.end5498, !dbg !903

if.else5437:                                      ; preds = %for.body5390
  %arrayidx5440 = getelementptr inbounds double* %6, i64 %indvars.iv.next8525, !dbg !905
  %784 = load double* %arrayidx5440, align 8, !dbg !905, !tbaa !559
  %mul5441 = fmul double %784, 0.000000e+00, !dbg !905
  %mul5446 = fmul double %mul5441, %mul5441, !dbg !905
  %arrayidx5449 = getelementptr inbounds double* %10, i64 %indvars.iv.next8525, !dbg !905
  %785 = load double* %arrayidx5449, align 8, !dbg !905, !tbaa !559
  %mul5450 = fmul double %conv5447, %785, !dbg !905
  %mul5455 = fmul double %mul5450, %mul5450, !dbg !905
  %add5456 = fadd double %mul5446, %mul5455, !dbg !905
  %arrayidx5459 = getelementptr inbounds double* %14, i64 %indvars.iv.next8525, !dbg !905
  %786 = load double* %arrayidx5459, align 8, !dbg !905, !tbaa !559
  %mul5460 = fmul double %conv5641, %786, !dbg !905
  %mul5465 = fmul double %mul5460, %mul5460, !dbg !905
  %add5466 = fadd double %add5456, %mul5465, !dbg !905
  %call5467 = call double @sqrt(double %add5466) #7, !dbg !905
  call void @llvm.dbg.value(metadata !{double %call5467}, i64 0, metadata !486), !dbg !905
  %arrayidx5470 = getelementptr inbounds double* %6, i64 %indvars.iv.next8523, !dbg !905
  %787 = load double* %arrayidx5470, align 8, !dbg !905, !tbaa !559
  %mul5471 = fmul double %787, 0.000000e+00, !dbg !905
  %mul5476 = fmul double %mul5471, %mul5471, !dbg !905
  %arrayidx5479 = getelementptr inbounds double* %10, i64 %indvars.iv.next8523, !dbg !905
  %788 = load double* %arrayidx5479, align 8, !dbg !905, !tbaa !559
  %mul5480 = fmul double %conv5447, %788, !dbg !905
  %mul5485 = fmul double %mul5480, %mul5480, !dbg !905
  %add5486 = fadd double %mul5476, %mul5485, !dbg !905
  %arrayidx5489 = getelementptr inbounds double* %14, i64 %indvars.iv.next8523, !dbg !905
  %789 = load double* %arrayidx5489, align 8, !dbg !905, !tbaa !559
  %mul5490 = fmul double %conv5641, %789, !dbg !905
  %mul5495 = fmul double %mul5490, %mul5490, !dbg !905
  %add5496 = fadd double %add5486, %mul5495, !dbg !905
  %call5497 = call double @sqrt(double %add5496) #7, !dbg !905
  call void @llvm.dbg.value(metadata !{double %call5497}, i64 0, metadata !485), !dbg !905
  %.pre8615 = load i32** %cctk_lsh174, align 8, !dbg !901, !tbaa !547
  %.pre8616 = load i32* %.pre8615, align 4, !dbg !901, !tbaa !535
  br label %if.end5498

if.end5498:                                       ; preds = %if.else5437, %cond.false5407
  %790 = phi i32 [ %783, %cond.false5407 ], [ %.pre8616, %if.else5437 ], !dbg !902
  %u_src5392.0 = phi double [ %call5436, %cond.false5407 ], [ %call5497, %if.else5437 ]
  %u_dst5393.0 = phi double [ %call5419, %cond.false5407 ], [ %call5467, %if.else5437 ]
  %add5500 = fadd double %u_src5392.0, %u_dst5393.0, !dbg !902
  %mul5501 = fmul double %mul5499, %add5500, !dbg !902
  %arrayidx5503 = getelementptr inbounds double* %18, i64 %indvars.iv.next8523, !dbg !902
  %791 = load double* %arrayidx5503, align 8, !dbg !902, !tbaa !559
  %arrayidx5505 = getelementptr inbounds double* %18, i64 %indvars.iv.next8525, !dbg !902
  %792 = load double* %arrayidx5505, align 8, !dbg !902, !tbaa !559
  %add5506 = fadd double %791, %792, !dbg !902
  %mul5512 = fmul double %add5506, %add5506, !dbg !902
  %div5513 = fdiv double %mul5501, %mul5512, !dbg !902
  call void @llvm.dbg.value(metadata !{double %div5513}, i64 0, metadata !487), !dbg !902
  %793 = load i8**** %data, align 8, !dbg !902, !tbaa !547
  %arrayidx5516 = getelementptr inbounds i8*** %793, i64 %indvars.iv8600, !dbg !902
  %794 = load i8*** %arrayidx5516, align 8, !dbg !902, !tbaa !547
  %795 = load i8** %794, align 8, !dbg !902, !tbaa !547
  %796 = bitcast i8* %795 to x86_fp80*, !dbg !902
  call void @llvm.dbg.value(metadata !{x86_fp80* %796}, i64 0, metadata !480), !dbg !902
  %mul5518 = fmul double %div5513, 2.000000e+00, !dbg !902
  %mul5519 = fmul double %mul5518, %finf, !dbg !902
  %conv5520 = fpext double %mul5519 to x86_fp80, !dbg !902
  %arrayidx5522 = getelementptr inbounds x86_fp80* %796, i64 %indvars.iv.next8523, !dbg !902
  %797 = load x86_fp80* %arrayidx5522, align 16, !dbg !902, !tbaa !897
  %sub5523 = fsub double 1.000000e+00, %div5513, !dbg !902
  %conv5524 = fpext double %sub5523 to x86_fp80, !dbg !902
  %mul5525 = fmul x86_fp80 %conv5524, %797, !dbg !902
  %add5526 = fadd x86_fp80 %conv5520, %mul5525, !dbg !902
  %add5527 = fadd double %div5513, 1.000000e+00, !dbg !902
  %conv5528 = fpext double %add5527 to x86_fp80, !dbg !902
  %div5529 = fdiv x86_fp80 %add5526, %conv5528, !dbg !902
  %arrayidx5531 = getelementptr inbounds x86_fp80* %796, i64 %indvars.iv.next8525, !dbg !902
  store x86_fp80 %div5529, x86_fp80* %arrayidx5531, align 16, !dbg !902, !tbaa !897
  %inc5533 = add nsw i32 %i5101.08372, 1, !dbg !901
  call void @llvm.dbg.value(metadata !{i32 %inc5533}, i64 0, metadata !458), !dbg !901
  %sub5387 = add nsw i32 %790, -1, !dbg !901
  %cmp5388 = icmp slt i32 %inc5533, %sub5387, !dbg !901
  br i1 %cmp5388, label %for.body5390, label %if.end5537, !dbg !901

if.end5537:                                       ; preds = %if.then5355, %if.end5498, %if.end5351
  %tobool5539 = icmp ult i64 %750, 4294967296, !dbg !881
  br i1 %tobool5539, label %for.inc5717, label %if.then5540, !dbg !881

if.then5540:                                      ; preds = %if.end5537
  call void @llvm.dbg.value(metadata !509, i64 0, metadata !462), !dbg !907
  %798 = load i32** %cctk_lsh174, align 8, !dbg !882, !tbaa !547
  %799 = load i32* %798, align 4, !dbg !882, !tbaa !535
  %sub5543 = add nsw i32 %799, -1, !dbg !882
  %arrayidx5547 = getelementptr inbounds i32* %798, i64 1, !dbg !882
  %800 = load i32* %arrayidx5547, align 4, !dbg !882, !tbaa !535
  %mul5548 = mul nsw i32 %800, %indvars.iv8520, !dbg !882
  %add5549 = add nsw i32 %mul5548, %indvars.iv8518, !dbg !882
  %mul5550 = mul nsw i32 %add5549, %799, !dbg !882
  %add5551 = add nsw i32 %sub5543, %mul5550, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %add5551}, i64 0, metadata !466), !dbg !882
  %add5555 = add nsw i32 %799, -2, !dbg !882
  %add5558 = add nsw i32 %dy5105.0, %indvars.iv8518, !dbg !882
  %mul5562 = mul nsw i32 %800, %add5561, !dbg !882
  %add5563 = add nsw i32 %add5558, %mul5562, !dbg !882
  %mul5564 = mul nsw i32 %add5563, %799, !dbg !882
  %add5565 = add nsw i32 %add5555, %mul5564, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %add5565}, i64 0, metadata !465), !dbg !882
  %ispos = icmp sgt i32 %dy5105.0, -1, !dbg !882
  %neg = sub i32 0, %dy5105.0, !dbg !882
  %801 = select i1 %ispos, i32 %dy5105.0, i32 %neg, !dbg !882
  %mul5568 = shl nsw i32 %801, 1, !dbg !882
  %add55698187 = or i32 %mul5568, 1, !dbg !882
  %add5572 = add nsw i32 %add55698187, %mul5571, !dbg !882
  %idxprom5573 = sext i32 %add5572 to i64, !dbg !882
  %arrayidx5574 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %idxprom5573, !dbg !882
  %802 = load double* %arrayidx5574, align 8, !dbg !882, !tbaa !559
  call void @llvm.dbg.value(metadata !{double %802}, i64 0, metadata !467), !dbg !882
  %add5583 = add i32 %add5581, %801, !dbg !884
  %cmp5584 = icmp eq i32 %add5583, 1, !dbg !884
  %idxprom5589 = sext i32 %add5551 to i64, !dbg !908
  %arrayidx5590 = getelementptr inbounds double* %6, i64 %idxprom5589, !dbg !908
  %803 = load double* %arrayidx5590, align 8, !dbg !908, !tbaa !559
  br i1 %cmp5584, label %cond.end5601, label %if.else5621, !dbg !884

cond.end5601:                                     ; preds = %if.then5540
  %call5603 = call double @fabs(double %803) #9, !dbg !908
  call void @llvm.dbg.value(metadata !{double %call5603}, i64 0, metadata !492), !dbg !908
  %idxprom5606 = sext i32 %add5565 to i64, !dbg !908
  %arrayidx5607 = getelementptr inbounds double* %6, i64 %idxprom5606, !dbg !908
  %804 = load double* %arrayidx5607, align 8, !dbg !908, !tbaa !559
  %call5620 = call double @fabs(double %804) #9, !dbg !908
  call void @llvm.dbg.value(metadata !{double %call5620}, i64 0, metadata !491), !dbg !908
  br label %if.end5682, !dbg !908

if.else5621:                                      ; preds = %if.then5540
  %mul5625 = fmul double %803, -1.000000e+00, !dbg !885
  %mul5630 = fmul double %mul5625, %mul5625, !dbg !885
  %conv5631 = sitofp i32 %dy5105.0 to double, !dbg !885
  %arrayidx5633 = getelementptr inbounds double* %10, i64 %idxprom5589, !dbg !885
  %805 = load double* %arrayidx5633, align 8, !dbg !885, !tbaa !559
  %mul5634 = fmul double %conv5631, %805, !dbg !885
  %mul5639 = fmul double %mul5634, %mul5634, !dbg !885
  %add5640 = fadd double %mul5630, %mul5639, !dbg !885
  %arrayidx5643 = getelementptr inbounds double* %14, i64 %idxprom5589, !dbg !885
  %806 = load double* %arrayidx5643, align 8, !dbg !885, !tbaa !559
  %mul5644 = fmul double %conv5641, %806, !dbg !885
  %mul5649 = fmul double %mul5644, %mul5644, !dbg !885
  %add5650 = fadd double %add5640, %mul5649, !dbg !885
  %call5651 = call double @sqrt(double %add5650) #7, !dbg !885
  call void @llvm.dbg.value(metadata !{double %call5651}, i64 0, metadata !492), !dbg !885
  %idxprom5653 = sext i32 %add5565 to i64, !dbg !885
  %arrayidx5654 = getelementptr inbounds double* %6, i64 %idxprom5653, !dbg !885
  %807 = load double* %arrayidx5654, align 8, !dbg !885, !tbaa !559
  %mul5655 = fmul double %807, -1.000000e+00, !dbg !885
  %mul5660 = fmul double %mul5655, %mul5655, !dbg !885
  %arrayidx5663 = getelementptr inbounds double* %10, i64 %idxprom5653, !dbg !885
  %808 = load double* %arrayidx5663, align 8, !dbg !885, !tbaa !559
  %mul5664 = fmul double %conv5631, %808, !dbg !885
  %mul5669 = fmul double %mul5664, %mul5664, !dbg !885
  %add5670 = fadd double %mul5660, %mul5669, !dbg !885
  %arrayidx5673 = getelementptr inbounds double* %14, i64 %idxprom5653, !dbg !885
  %809 = load double* %arrayidx5673, align 8, !dbg !885, !tbaa !559
  %mul5674 = fmul double %conv5641, %809, !dbg !885
  %mul5679 = fmul double %mul5674, %mul5674, !dbg !885
  %add5680 = fadd double %add5670, %mul5679, !dbg !885
  %call5681 = call double @sqrt(double %add5680) #7, !dbg !885
  call void @llvm.dbg.value(metadata !{double %call5681}, i64 0, metadata !491), !dbg !885
  br label %if.end5682

if.end5682:                                       ; preds = %if.else5621, %cond.end5601
  %u_src5576.0 = phi double [ %call5620, %cond.end5601 ], [ %call5681, %if.else5621 ]
  %u_dst5577.0 = phi double [ %call5603, %cond.end5601 ], [ %call5651, %if.else5621 ]
  %mul5683 = fmul double %conv, %802, !dbg !884
  %add5684 = fadd double %u_src5576.0, %u_dst5577.0, !dbg !884
  %mul5685 = fmul double %mul5683, %add5684, !dbg !884
  %idxprom5686 = sext i32 %add5565 to i64, !dbg !884
  %arrayidx5687 = getelementptr inbounds double* %18, i64 %idxprom5686, !dbg !884
  %810 = load double* %arrayidx5687, align 8, !dbg !884, !tbaa !559
  %arrayidx5689 = getelementptr inbounds double* %18, i64 %idxprom5589, !dbg !884
  %811 = load double* %arrayidx5689, align 8, !dbg !884, !tbaa !559
  %add5690 = fadd double %810, %811, !dbg !884
  %mul5696 = fmul double %add5690, %add5690, !dbg !884
  %div5697 = fdiv double %mul5685, %mul5696, !dbg !884
  call void @llvm.dbg.value(metadata !{double %div5697}, i64 0, metadata !493), !dbg !884
  %812 = load i8**** %data, align 8, !dbg !884, !tbaa !547
  %arrayidx5700 = getelementptr inbounds i8*** %812, i64 %indvars.iv8600, !dbg !884
  %813 = load i8*** %arrayidx5700, align 8, !dbg !884, !tbaa !547
  %814 = load i8** %813, align 8, !dbg !884, !tbaa !547
  %815 = bitcast i8* %814 to x86_fp80*, !dbg !884
  call void @llvm.dbg.value(metadata !{x86_fp80* %815}, i64 0, metadata !488), !dbg !884
  %mul5702 = fmul double %div5697, 2.000000e+00, !dbg !884
  %mul5703 = fmul double %mul5702, %finf, !dbg !884
  %conv5704 = fpext double %mul5703 to x86_fp80, !dbg !884
  %arrayidx5706 = getelementptr inbounds x86_fp80* %815, i64 %idxprom5686, !dbg !884
  %816 = load x86_fp80* %arrayidx5706, align 16, !dbg !884, !tbaa !897
  %sub5707 = fsub double 1.000000e+00, %div5697, !dbg !884
  %conv5708 = fpext double %sub5707 to x86_fp80, !dbg !884
  %mul5709 = fmul x86_fp80 %conv5708, %816, !dbg !884
  %add5710 = fadd x86_fp80 %conv5704, %mul5709, !dbg !884
  %add5711 = fadd double %div5697, 1.000000e+00, !dbg !884
  %conv5712 = fpext double %add5711 to x86_fp80, !dbg !884
  %div5713 = fdiv x86_fp80 %add5710, %conv5712, !dbg !884
  %arrayidx5715 = getelementptr inbounds x86_fp80* %815, i64 %idxprom5589, !dbg !884
  store x86_fp80 %div5713, x86_fp80* %arrayidx5715, align 16, !dbg !884, !tbaa !897
  br label %for.inc5717, !dbg !907

for.inc5717:                                      ; preds = %if.end5537, %if.end5682
  %indvars.iv.next8519 = add i32 %indvars.iv8518, 1, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8519}, i64 0, metadata !460), !dbg !877
  %817 = load i32** %cctk_lsh174, align 8, !dbg !877, !tbaa !547
  %arrayidx5157 = getelementptr inbounds i32* %817, i64 1, !dbg !877
  %818 = load i32* %arrayidx5157, align 4, !dbg !877, !tbaa !535
  %cmp5158 = icmp slt i32 %indvars.iv.next8519, %818, !dbg !877
  br i1 %cmp5158, label %for.body5160, label %for.cond5155.for.inc5720.loopexit_crit_edge, !dbg !877

for.cond5155.for.inc5720.loopexit_crit_edge:      ; preds = %for.inc5717
  %arrayidx5117.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32* %817, i64 2
  %.pre8633.pre = load i32* %arrayidx5117.phi.trans.insert.phi.trans.insert, align 4, !dbg !874, !tbaa !535
  br label %for.inc5720, !dbg !877

for.inc5720:                                      ; preds = %if.end5154, %for.cond5155.for.inc5720.loopexit_crit_edge, %land.lhs.true5123, %land.lhs.true5132
  %819 = phi i32 [ %737, %land.lhs.true5132 ], [ %737, %land.lhs.true5123 ], [ %.pre8633.pre, %for.cond5155.for.inc5720.loopexit_crit_edge ], [ %737, %if.end5154 ], !dbg !874
  %820 = phi i32* [ %738, %land.lhs.true5132 ], [ %738, %land.lhs.true5123 ], [ %817, %for.cond5155.for.inc5720.loopexit_crit_edge ], [ %738, %if.end5154 ], !dbg !874
  %indvars.iv.next8521 = add i32 %indvars.iv8520, 1, !dbg !874
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next8521}, i64 0, metadata !461), !dbg !874
  %cmp5118 = icmp slt i32 %indvars.iv.next8521, %819, !dbg !874
  br i1 %cmp5118, label %for.body5120, label %for.inc5726, !dbg !874

sw.default:                                       ; preds = %for.end167
  %call5723 = call i32 @CCTK_VarTypeI(i32 %var.08513) #7, !dbg !910
  %call5724 = call i8* @CCTK_VarName(i32 %var.08513) #7, !dbg !910
  %call5725 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 779, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str18, i64 0, i64 0), i32 %call5723, i8* %call5724) #7, !dbg !910
  br label %cleanup, !dbg !911

for.inc5726:                                      ; preds = %for.cond173.preheader, %for.inc766, %for.cond784.preheader, %for.inc1386, %for.cond1404.preheader, %for.inc2000, %for.cond2018.preheader, %for.inc2623, %for.cond2641.preheader, %for.inc3243, %for.cond3261.preheader, %for.inc3863, %for.cond3881.preheader, %for.inc4483, %for.cond4501.preheader, %for.inc5097, %for.cond5115.preheader, %for.inc5720
  %indvars.iv.next8601 = add i64 %indvars.iv8600, 1, !dbg !567
  %inc5727 = add nsw i32 %var.08513, 1, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %inc5727}, i64 0, metadata !145), !dbg !567
  %821 = trunc i64 %indvars.iv.next8601 to i32, !dbg !567
  %cmp102 = icmp slt i32 %821, %add101, !dbg !567
  br i1 %cmp102, label %for.body104, label %cleanup, !dbg !567

cleanup:                                          ; preds = %if.end45, %for.inc5726, %sw.default, %if.then5112, %if.then4498, %if.then3878, %if.then3258, %if.then2638, %if.then2015, %if.then1401, %if.then781, %if.then170, %if.then42, %if.then16, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -3, %if.then9 ], [ -6, %if.then16 ], [ -6, %if.then42 ], [ -4, %sw.default ], [ -5, %if.then5112 ], [ -5, %if.then4498 ], [ -5, %if.then3878 ], [ -5, %if.then3258 ], [ -5, %if.then2638 ], [ -5, %if.then2015 ], [ -5, %if.then1401 ], [ -5, %if.then781 ], [ -5, %if.then170 ], [ -2, %if.then4 ], [ 0, %for.inc5726 ], [ 0, %if.end45 ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #5, !dbg !912
  ret i32 %retval.0, !dbg !913
}

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @bndrobingi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture %finf, i32* nocapture %npow, i32* nocapture %gi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !69), !dbg !914
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !70), !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !71), !dbg !916
  tail call void @llvm.dbg.value(metadata !{double* %finf}, i64 0, metadata !72), !dbg !917
  tail call void @llvm.dbg.value(metadata !{i32* %npow}, i64 0, metadata !73), !dbg !918
  tail call void @llvm.dbg.value(metadata !{i32* %gi}, i64 0, metadata !74), !dbg !919
  %0 = load double* %finf, align 8, !dbg !920, !tbaa !559
  %1 = load i32* %npow, align 4, !dbg !920, !tbaa !535
  %2 = load i32* %gi, align 4, !dbg !920, !tbaa !535
  %call = tail call i32 @BndRobinGI(%struct.cGH* %GH, i32* %stencil, double %0, i32 %1, i32 %2) #8, !dbg !920
  store i32 %call, i32* %ierr, align 4, !dbg !920, !tbaa !535
  ret void, !dbg !921
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndRobinGN(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i8* %gname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !79), !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !80), !dbg !923
  tail call void @llvm.dbg.value(metadata !{double %finf}, i64 0, metadata !81), !dbg !924
  tail call void @llvm.dbg.value(metadata !{i32 %npow}, i64 0, metadata !82), !dbg !925
  tail call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !83), !dbg !926
  %call = tail call i32 @CCTK_GroupIndex(i8* %gname) #7, !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !84), !dbg !927
  %cmp = icmp sgt i32 %call, -1, !dbg !928
  br i1 %cmp, label %if.then, label %if.else, !dbg !928

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @BndRobinGI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %call) #8, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !85), !dbg !929
  br label %if.end, !dbg !931

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 216, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0), i8* %gname) #7, !dbg !932
  tail call void @llvm.dbg.value(metadata !509, i64 0, metadata !85), !dbg !934
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !935
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @bndrobingn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture %finf, i32* nocapture %npow, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !92), !dbg !936
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !93), !dbg !937
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !94), !dbg !938
  tail call void @llvm.dbg.value(metadata !{double* %finf}, i64 0, metadata !95), !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32* %npow}, i64 0, metadata !96), !dbg !940
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !97), !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !98), !dbg !941
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !942
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !99), !dbg !942
  %0 = load double* %finf, align 8, !dbg !943, !tbaa !559
  %1 = load i32* %npow, align 4, !dbg !943, !tbaa !535
  %call1 = tail call i32 @BndRobinGN(%struct.cGH* %GH, i32* %stencil, double %0, i32 %1, i8* %call) #8, !dbg !943
  store i32 %call1, i32* %ierr, align 4, !dbg !943, !tbaa !535
  tail call void @free(i8* %call) #7, !dbg !944
  ret void, !dbg !945
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BndRobinVI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %vi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !102), !dbg !946
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !103), !dbg !947
  tail call void @llvm.dbg.value(metadata !{double %finf}, i64 0, metadata !104), !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32 %npow}, i64 0, metadata !105), !dbg !949
  tail call void @llvm.dbg.value(metadata !{i32 %vi}, i64 0, metadata !106), !dbg !950
  %cmp = icmp sgt i32 %vi, -1, !dbg !951
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !951

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @CCTK_NumVars() #7, !dbg !951
  %cmp2 = icmp sgt i32 %call, %vi, !dbg !951
  br i1 %cmp2, label %if.then, label %if.else, !dbg !951

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %vi, i32 1) #8, !dbg !952
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !107), !dbg !952
  br label %if.end, !dbg !954

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 294, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %vi) #7, !dbg !955
  tail call void @llvm.dbg.value(metadata !509, i64 0, metadata !107), !dbg !957
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call3, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !958
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: nounwind optsize uwtable
define void @bndrobinvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture %finf, i32* nocapture %npow, i32* nocapture %vi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !110), !dbg !959
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !111), !dbg !960
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !112), !dbg !961
  tail call void @llvm.dbg.value(metadata !{double* %finf}, i64 0, metadata !113), !dbg !962
  tail call void @llvm.dbg.value(metadata !{i32* %npow}, i64 0, metadata !114), !dbg !963
  tail call void @llvm.dbg.value(metadata !{i32* %vi}, i64 0, metadata !115), !dbg !964
  %0 = load double* %finf, align 8, !dbg !965, !tbaa !559
  %1 = load i32* %npow, align 4, !dbg !965, !tbaa !535
  %2 = load i32* %vi, align 4, !dbg !965, !tbaa !535
  %call = tail call i32 @BndRobinVI(%struct.cGH* %GH, i32* %stencil, double %0, i32 %1, i32 %2) #8, !dbg !965
  store i32 %call, i32* %ierr, align 4, !dbg !965, !tbaa !535
  ret void, !dbg !966
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndRobinVN(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i8* %vname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !118), !dbg !967
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !119), !dbg !968
  tail call void @llvm.dbg.value(metadata !{double %finf}, i64 0, metadata !120), !dbg !969
  tail call void @llvm.dbg.value(metadata !{i32 %npow}, i64 0, metadata !121), !dbg !970
  tail call void @llvm.dbg.value(metadata !{i8* %vname}, i64 0, metadata !122), !dbg !971
  %call = tail call i32 @CCTK_VarIndex(i8* %vname) #7, !dbg !972
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !123), !dbg !972
  %cmp = icmp sgt i32 %call, -1, !dbg !973
  br i1 %cmp, label %if.then, label %if.else, !dbg !973

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @BndRobinVI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %call) #8, !dbg !974
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !124), !dbg !974
  br label %if.end, !dbg !976

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 371, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str5, i64 0, i64 0), i8* %vname) #7, !dbg !977
  tail call void @llvm.dbg.value(metadata !509, i64 0, metadata !124), !dbg !979
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !980
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @bndrobinvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture %finf, i32* nocapture %npow, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !127), !dbg !981
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !128), !dbg !982
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !129), !dbg !983
  tail call void @llvm.dbg.value(metadata !{double* %finf}, i64 0, metadata !130), !dbg !984
  tail call void @llvm.dbg.value(metadata !{i32* %npow}, i64 0, metadata !131), !dbg !985
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !132), !dbg !986
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !133), !dbg !986
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !987
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !134), !dbg !987
  %0 = load double* %finf, align 8, !dbg !988, !tbaa !559
  %1 = load i32* %npow, align 4, !dbg !988, !tbaa !535
  %call1 = tail call i32 @BndRobinVN(%struct.cGH* %GH, i32* %stencil, double %0, i32 %1, i8* %call) #8, !dbg !988
  store i32 %call1, i32* %ierr, align 4, !dbg !988, !tbaa !535
  tail call void @free(i8* %call) #7, !dbg !989
  ret void, !dbg !990
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @CCTK_CoordSystemHandle(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !494, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !63, metadata !75, metadata !86, metadata !100, metadata !108, metadata !116, metadata !125, metadata !135}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_Boundary_RobinBoundary_c", metadata !"CCTKi_version_CactusBase_Boundary_RobinBoundary_c", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_Boundary_RobinBoundary_c, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [CCTKi_version_CactusBase_Boundary_RobinBoundary_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndRobinGI", metadata !"BndRobinGI", metadata !"", i32 122, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, double, i32, i32)* @BndRobinGI, null, null, metadata !55, i32 127} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 127] [BndRobinGI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !53, metadata !32, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!56 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777338, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 122]
!57 = metadata !{i32 786689, metadata !11, metadata !"stencil", metadata !5, i32 33554555, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 123]
!58 = metadata !{i32 786689, metadata !11, metadata !"finf", metadata !5, i32 50331772, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 124]
!59 = metadata !{i32 786689, metadata !11, metadata !"npow", metadata !5, i32 67108989, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 125]
!60 = metadata !{i32 786689, metadata !11, metadata !"gi", metadata !5, i32 83886206, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 126]
!61 = metadata !{i32 786688, metadata !11, metadata !"first_vi", metadata !5, i32 128, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi] [line 128]
!62 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 128, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 128]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndrobingi_", metadata !"bndrobingi_", metadata !"", i32 147, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, double*, i32*, i32*)* @bndrobingi_, null, null, metadata !68, i32 154} ; [ DW_TAG_subprogram ] [line 147] [def] [scope 154] [bndrobingi_]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !24, metadata !15, metadata !53, metadata !66, metadata !53, metadata !53}
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!69 = metadata !{i32 786689, metadata !63, metadata !"ierr", metadata !5, i32 16777364, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 148]
!70 = metadata !{i32 786689, metadata !63, metadata !"GH", metadata !5, i32 33554581, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 149]
!71 = metadata !{i32 786689, metadata !63, metadata !"stencil", metadata !5, i32 50331798, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 150]
!72 = metadata !{i32 786689, metadata !63, metadata !"finf", metadata !5, i32 67109015, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 151]
!73 = metadata !{i32 786689, metadata !63, metadata !"npow", metadata !5, i32 83886232, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 152]
!74 = metadata !{i32 786689, metadata !63, metadata !"gi", metadata !5, i32 100663449, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 153]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndRobinGN", metadata !"BndRobinGN", metadata !"", i32 200, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, double, i32, i8*)* @BndRobinGN, null, null, metadata !78, i32 205} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 205] [BndRobinGN]
!76 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !14, metadata !15, metadata !53, metadata !32, metadata !14, metadata !8}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!79 = metadata !{i32 786689, metadata !75, metadata !"GH", metadata !5, i32 16777416, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 200]
!80 = metadata !{i32 786689, metadata !75, metadata !"stencil", metadata !5, i32 33554633, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 201]
!81 = metadata !{i32 786689, metadata !75, metadata !"finf", metadata !5, i32 50331850, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 202]
!82 = metadata !{i32 786689, metadata !75, metadata !"npow", metadata !5, i32 67109067, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 203]
!83 = metadata !{i32 786689, metadata !75, metadata !"gname", metadata !5, i32 83886284, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 204]
!84 = metadata !{i32 786688, metadata !75, metadata !"gi", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi] [line 206]
!85 = metadata !{i32 786688, metadata !75, metadata !"retval", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 206]
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndrobingn_", metadata !"bndrobingn_", metadata !"", i32 224, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, double*, i32*, i8*, i32)* @bndrobingn_, null, null, metadata !91, i32 231} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 231] [bndrobingn_]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{null, metadata !24, metadata !15, metadata !53, metadata !66, metadata !53, metadata !89, metadata !90}
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!90 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!92 = metadata !{i32 786689, metadata !86, metadata !"ierr", metadata !5, i32 16777441, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 225]
!93 = metadata !{i32 786689, metadata !86, metadata !"GH", metadata !5, i32 33554658, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 226]
!94 = metadata !{i32 786689, metadata !86, metadata !"stencil", metadata !5, i32 50331875, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 227]
!95 = metadata !{i32 786689, metadata !86, metadata !"finf", metadata !5, i32 67109092, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 228]
!96 = metadata !{i32 786689, metadata !86, metadata !"npow", metadata !5, i32 83886309, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 229]
!97 = metadata !{i32 786689, metadata !86, metadata !"cctk_str1", metadata !5, i32 100663526, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 230]
!98 = metadata !{i32 786689, metadata !86, metadata !"cctk_strlen1", metadata !5, i32 117440742, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 230]
!99 = metadata !{i32 786688, metadata !86, metadata !"gname", metadata !5, i32 232, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname] [line 232]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndRobinVI", metadata !"BndRobinVI", metadata !"", i32 279, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, double, i32, i32)* @BndRobinVI, null, null, metadata !101, i32 284} ; [ DW_TAG_subprogram ] [line 279] [def] [scope 284] [BndRobinVI]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!102 = metadata !{i32 786689, metadata !100, metadata !"GH", metadata !5, i32 16777495, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 279]
!103 = metadata !{i32 786689, metadata !100, metadata !"stencil", metadata !5, i32 33554712, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 280]
!104 = metadata !{i32 786689, metadata !100, metadata !"finf", metadata !5, i32 50331929, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 281]
!105 = metadata !{i32 786689, metadata !100, metadata !"npow", metadata !5, i32 67109146, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 282]
!106 = metadata !{i32 786689, metadata !100, metadata !"vi", metadata !5, i32 83886363, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 283]
!107 = metadata !{i32 786688, metadata !100, metadata !"retval", metadata !5, i32 285, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 285]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndrobinvi_", metadata !"bndrobinvi_", metadata !"", i32 302, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, double*, i32*, i32*)* @bndrobinvi_, null, null, metadata !109, i32 309} ; [ DW_TAG_subprogram ] [line 302] [def] [scope 309] [bndrobinvi_]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!110 = metadata !{i32 786689, metadata !108, metadata !"ierr", metadata !5, i32 16777519, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 303]
!111 = metadata !{i32 786689, metadata !108, metadata !"GH", metadata !5, i32 33554736, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 304]
!112 = metadata !{i32 786689, metadata !108, metadata !"stencil", metadata !5, i32 50331953, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 305]
!113 = metadata !{i32 786689, metadata !108, metadata !"finf", metadata !5, i32 67109170, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 306]
!114 = metadata !{i32 786689, metadata !108, metadata !"npow", metadata !5, i32 83886387, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 307]
!115 = metadata !{i32 786689, metadata !108, metadata !"vi", metadata !5, i32 100663604, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 308]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndRobinVN", metadata !"BndRobinVN", metadata !"", i32 355, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, double, i32, i8*)* @BndRobinVN, null, null, metadata !117, i32 360} ; [ DW_TAG_subprogram ] [line 355] [def] [scope 360] [BndRobinVN]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!118 = metadata !{i32 786689, metadata !116, metadata !"GH", metadata !5, i32 16777571, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 355]
!119 = metadata !{i32 786689, metadata !116, metadata !"stencil", metadata !5, i32 33554788, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 356]
!120 = metadata !{i32 786689, metadata !116, metadata !"finf", metadata !5, i32 50332005, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 357]
!121 = metadata !{i32 786689, metadata !116, metadata !"npow", metadata !5, i32 67109222, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 358]
!122 = metadata !{i32 786689, metadata !116, metadata !"vname", metadata !5, i32 83886439, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vname] [line 359]
!123 = metadata !{i32 786688, metadata !116, metadata !"vi", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi] [line 361]
!124 = metadata !{i32 786688, metadata !116, metadata !"retval", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 361]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndrobinvn_", metadata !"bndrobinvn_", metadata !"", i32 379, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, double*, i32*, i8*, i32)* @bndrobinvn_, null, null, metadata !126, i32 386} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 386] [bndrobinvn_]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!127 = metadata !{i32 786689, metadata !125, metadata !"ierr", metadata !5, i32 16777596, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 380]
!128 = metadata !{i32 786689, metadata !125, metadata !"GH", metadata !5, i32 33554813, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 381]
!129 = metadata !{i32 786689, metadata !125, metadata !"stencil", metadata !5, i32 50332030, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 382]
!130 = metadata !{i32 786689, metadata !125, metadata !"finf", metadata !5, i32 67109247, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 383]
!131 = metadata !{i32 786689, metadata !125, metadata !"npow", metadata !5, i32 83886464, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 384]
!132 = metadata !{i32 786689, metadata !125, metadata !"cctk_str1", metadata !5, i32 100663681, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 385]
!133 = metadata !{i32 786689, metadata !125, metadata !"cctk_strlen1", metadata !5, i32 117440897, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 385]
!134 = metadata !{i32 786688, metadata !125, metadata !"vname", metadata !5, i32 387, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname] [line 387]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ApplyBndRobin", metadata !"ApplyBndRobin", metadata !"", i32 630, metadata !136, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, double, i32, i32, i32)* @ApplyBndRobin, null, null, metadata !138, i32 636} ; [ DW_TAG_subprogram ] [line 630] [local] [def] [scope 636] [ApplyBndRobin]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !14, metadata !15, metadata !53, metadata !32, metadata !14, metadata !14, metadata !14}
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !153, metadata !161, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !174, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !197, metadata !198, metadata !199, metadata !200, metadata !205, metadata !206, metadata !207, metadata !208, metadata !211, metadata !212, metadata !213, metadata !214, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !231, metadata !232, metadata !233, metadata !234, metadata !239, metadata !240, metadata !241, metadata !242, metadata !245, metadata !246, metadata !247, metadata !248, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !265, metadata !266, metadata !267, metadata !268, metadata !273, metadata !274, metadata !275, metadata !276, metadata !279, metadata !280, metadata !281, metadata !282, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !301, metadata !302, metadata !303, metadata !304, metadata !309, metadata !310, metadata !311, metadata !312, metadata !315, metadata !316, metadata !317, metadata !318, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !335, metadata !336, metadata !337, metadata !338, metadata !343, metadata !344, metadata !345, metadata !346, metadata !349, metadata !350, metadata !351, metadata !352, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !371, metadata !372, metadata !373, metadata !374, metadata !379, metadata !380, metadata !381, metadata !382, metadata !385, metadata !386, metadata !387, metadata !388, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !407, metadata !408, metadata !409, metadata !410, metadata !415, metadata !416, metadata !417, metadata !418, metadata !421, metadata !422, metadata !423, metadata !424, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !441, metadata !442, metadata !443, metadata !444, metadata !449, metadata !450, metadata !451, metadata !452, metadata !455, metadata !456, metadata !457, metadata !458, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !477, metadata !478, metadata !479, metadata !480, metadata !485, metadata !486, metadata !487, metadata !488, metadata !491, metadata !492, metadata !493}
!139 = metadata !{i32 786689, metadata !135, metadata !"GH", metadata !5, i32 16777846, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 630]
!140 = metadata !{i32 786689, metadata !135, metadata !"stencil", metadata !5, i32 33555063, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 631]
!141 = metadata !{i32 786689, metadata !135, metadata !"finf", metadata !5, i32 50332280, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finf] [line 632]
!142 = metadata !{i32 786689, metadata !135, metadata !"npow", metadata !5, i32 67109497, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npow] [line 633]
!143 = metadata !{i32 786689, metadata !135, metadata !"first_var", metadata !5, i32 83886714, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 634]
!144 = metadata !{i32 786689, metadata !135, metadata !"num_vars", metadata !5, i32 100663931, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_vars] [line 635]
!145 = metadata !{i32 786688, metadata !135, metadata !"var", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 637]
!146 = metadata !{i32 786688, metadata !135, metadata !"vtype", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtype] [line 637]
!147 = metadata !{i32 786688, metadata !135, metadata !"dim", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 637]
!148 = metadata !{i32 786688, metadata !135, metadata !"gdim", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gdim] [line 637]
!149 = metadata !{i32 786688, metadata !135, metadata !"doBC", metadata !5, i32 638, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doBC] [line 638]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!153 = metadata !{i32 786688, metadata !135, metadata !"sGHex", metadata !5, i32 639, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 639]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SymmetryGHex]
!155 = metadata !{i32 786454, metadata !1, null, metadata !"SymmetryGHex", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [SymmetryGHex] [line 36, size 0, align 0, offset 0] [from Symmetry]
!156 = metadata !{i32 786451, metadata !157, null, metadata !"Symmetry", i32 27, i64 64, i64 64, i32 0, i32 0, null, metadata !158, i32 0, null, null} ; [ DW_TAG_structure_type ] [Symmetry] [line 27, size 64, align 64, offset 0] [from ]
!157 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/../include/Symmetry.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"GFSym", i32 34, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ] [GFSym] [line 34, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!161 = metadata !{i32 786688, metadata !135, metadata !"coord_system_name", metadata !5, i32 640, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system_name] [line 640]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!165 = metadata !{i32 786688, metadata !135, metadata !"decay", metadata !5, i32 641, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decay] [line 641]
!166 = metadata !{i32 786688, metadata !135, metadata !"x", metadata !5, i32 642, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 642]
!167 = metadata !{i32 786688, metadata !135, metadata !"y", metadata !5, i32 642, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 642]
!168 = metadata !{i32 786688, metadata !135, metadata !"z", metadata !5, i32 642, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 642]
!169 = metadata !{i32 786688, metadata !135, metadata !"r", metadata !5, i32 642, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 642]
!170 = metadata !{i32 786688, metadata !135, metadata !"dist", metadata !5, i32 643, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dist] [line 643]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !32, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from double]
!172 = metadata !{metadata !173}
!173 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!174 = metadata !{i32 786688, metadata !175, metadata !"i", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 740]
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 740, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 738, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!177 = metadata !{i32 786443, metadata !1, metadata !178, i32 716, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!178 = metadata !{i32 786443, metadata !1, metadata !135, i32 715, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!179 = metadata !{i32 786688, metadata !175, metadata !"j", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 740]
!180 = metadata !{i32 786688, metadata !175, metadata !"k", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 740]
!181 = metadata !{i32 786688, metadata !175, metadata !"dx", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 740]
!182 = metadata !{i32 786688, metadata !175, metadata !"dy", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 740]
!183 = metadata !{i32 786688, metadata !175, metadata !"dz", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 740]
!184 = metadata !{i32 786688, metadata !175, metadata !"src", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 740]
!185 = metadata !{i32 786688, metadata !175, metadata !"dst", metadata !5, i32 740, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 740]
!186 = metadata !{i32 786688, metadata !175, metadata !"distance", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 740]
!187 = metadata !{i32 786688, metadata !188, metadata !"data", metadata !5, i32 740, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 740]
!188 = metadata !{i32 786443, metadata !1, metadata !189, i32 740, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!189 = metadata !{i32 786443, metadata !1, metadata !190, i32 740, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!190 = metadata !{i32 786443, metadata !1, metadata !191, i32 740, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!191 = metadata !{i32 786443, metadata !1, metadata !192, i32 740, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 740, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!193 = metadata !{i32 786443, metadata !1, metadata !175, i32 740, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_CHAR]
!195 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_CHAR", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [CCTK_CHAR] [line 57, size 0, align 0, offset 0] [from unsigned char]
!196 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!197 = metadata !{i32 786688, metadata !188, metadata !"u_src", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 740]
!198 = metadata !{i32 786688, metadata !188, metadata !"u_dst", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 740]
!199 = metadata !{i32 786688, metadata !188, metadata !"aux", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 740]
!200 = metadata !{i32 786688, metadata !201, metadata !"data", metadata !5, i32 740, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 740]
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 740, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 740, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!203 = metadata !{i32 786443, metadata !1, metadata !204, i32 740, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!204 = metadata !{i32 786443, metadata !1, metadata !190, i32 740, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!205 = metadata !{i32 786688, metadata !201, metadata !"u_src", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 740]
!206 = metadata !{i32 786688, metadata !201, metadata !"u_dst", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 740]
!207 = metadata !{i32 786688, metadata !201, metadata !"aux", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 740]
!208 = metadata !{i32 786688, metadata !209, metadata !"data", metadata !5, i32 740, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 740]
!209 = metadata !{i32 786443, metadata !1, metadata !210, i32 740, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!210 = metadata !{i32 786443, metadata !1, metadata !190, i32 740, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!211 = metadata !{i32 786688, metadata !209, metadata !"u_src", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 740]
!212 = metadata !{i32 786688, metadata !209, metadata !"u_dst", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 740]
!213 = metadata !{i32 786688, metadata !209, metadata !"aux", metadata !5, i32 740, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 740]
!214 = metadata !{i32 786688, metadata !215, metadata !"i", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 743]
!215 = metadata !{i32 786443, metadata !1, metadata !176, i32 743, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!216 = metadata !{i32 786688, metadata !215, metadata !"j", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 743]
!217 = metadata !{i32 786688, metadata !215, metadata !"k", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 743]
!218 = metadata !{i32 786688, metadata !215, metadata !"dx", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 743]
!219 = metadata !{i32 786688, metadata !215, metadata !"dy", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 743]
!220 = metadata !{i32 786688, metadata !215, metadata !"dz", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 743]
!221 = metadata !{i32 786688, metadata !215, metadata !"src", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 743]
!222 = metadata !{i32 786688, metadata !215, metadata !"dst", metadata !5, i32 743, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 743]
!223 = metadata !{i32 786688, metadata !215, metadata !"distance", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 743]
!224 = metadata !{i32 786688, metadata !225, metadata !"data", metadata !5, i32 743, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 743]
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 743, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 743, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!227 = metadata !{i32 786443, metadata !1, metadata !228, i32 743, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 743, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!229 = metadata !{i32 786443, metadata !1, metadata !230, i32 743, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!230 = metadata !{i32 786443, metadata !1, metadata !215, i32 743, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!231 = metadata !{i32 786688, metadata !225, metadata !"u_src", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 743]
!232 = metadata !{i32 786688, metadata !225, metadata !"u_dst", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 743]
!233 = metadata !{i32 786688, metadata !225, metadata !"aux", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 743]
!234 = metadata !{i32 786688, metadata !235, metadata !"data", metadata !5, i32 743, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 743]
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 743, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!236 = metadata !{i32 786443, metadata !1, metadata !237, i32 743, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!237 = metadata !{i32 786443, metadata !1, metadata !238, i32 743, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!238 = metadata !{i32 786443, metadata !1, metadata !227, i32 743, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!239 = metadata !{i32 786688, metadata !235, metadata !"u_src", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 743]
!240 = metadata !{i32 786688, metadata !235, metadata !"u_dst", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 743]
!241 = metadata !{i32 786688, metadata !235, metadata !"aux", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 743]
!242 = metadata !{i32 786688, metadata !243, metadata !"data", metadata !5, i32 743, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 743]
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 743, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!244 = metadata !{i32 786443, metadata !1, metadata !227, i32 743, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!245 = metadata !{i32 786688, metadata !243, metadata !"u_src", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 743]
!246 = metadata !{i32 786688, metadata !243, metadata !"u_dst", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 743]
!247 = metadata !{i32 786688, metadata !243, metadata !"aux", metadata !5, i32 743, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 743]
!248 = metadata !{i32 786688, metadata !249, metadata !"i", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 746]
!249 = metadata !{i32 786443, metadata !1, metadata !176, i32 746, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!250 = metadata !{i32 786688, metadata !249, metadata !"j", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 746]
!251 = metadata !{i32 786688, metadata !249, metadata !"k", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 746]
!252 = metadata !{i32 786688, metadata !249, metadata !"dx", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 746]
!253 = metadata !{i32 786688, metadata !249, metadata !"dy", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 746]
!254 = metadata !{i32 786688, metadata !249, metadata !"dz", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 746]
!255 = metadata !{i32 786688, metadata !249, metadata !"src", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 746]
!256 = metadata !{i32 786688, metadata !249, metadata !"dst", metadata !5, i32 746, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 746]
!257 = metadata !{i32 786688, metadata !249, metadata !"distance", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 746]
!258 = metadata !{i32 786688, metadata !259, metadata !"data", metadata !5, i32 746, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 746]
!259 = metadata !{i32 786443, metadata !1, metadata !260, i32 746, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!260 = metadata !{i32 786443, metadata !1, metadata !261, i32 746, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 746, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!262 = metadata !{i32 786443, metadata !1, metadata !263, i32 746, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!263 = metadata !{i32 786443, metadata !1, metadata !264, i32 746, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!264 = metadata !{i32 786443, metadata !1, metadata !249, i32 746, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!265 = metadata !{i32 786688, metadata !259, metadata !"u_src", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 746]
!266 = metadata !{i32 786688, metadata !259, metadata !"u_dst", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 746]
!267 = metadata !{i32 786688, metadata !259, metadata !"aux", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 746]
!268 = metadata !{i32 786688, metadata !269, metadata !"data", metadata !5, i32 746, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 746]
!269 = metadata !{i32 786443, metadata !1, metadata !270, i32 746, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!270 = metadata !{i32 786443, metadata !1, metadata !271, i32 746, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 746, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!272 = metadata !{i32 786443, metadata !1, metadata !261, i32 746, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!273 = metadata !{i32 786688, metadata !269, metadata !"u_src", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 746]
!274 = metadata !{i32 786688, metadata !269, metadata !"u_dst", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 746]
!275 = metadata !{i32 786688, metadata !269, metadata !"aux", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 746]
!276 = metadata !{i32 786688, metadata !277, metadata !"data", metadata !5, i32 746, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 746]
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 746, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!278 = metadata !{i32 786443, metadata !1, metadata !261, i32 746, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!279 = metadata !{i32 786688, metadata !277, metadata !"u_src", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 746]
!280 = metadata !{i32 786688, metadata !277, metadata !"u_dst", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 746]
!281 = metadata !{i32 786688, metadata !277, metadata !"aux", metadata !5, i32 746, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 746]
!282 = metadata !{i32 786688, metadata !283, metadata !"i", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 750]
!283 = metadata !{i32 786443, metadata !1, metadata !176, i32 750, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!284 = metadata !{i32 786688, metadata !283, metadata !"j", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 750]
!285 = metadata !{i32 786688, metadata !283, metadata !"k", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 750]
!286 = metadata !{i32 786688, metadata !283, metadata !"dx", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 750]
!287 = metadata !{i32 786688, metadata !283, metadata !"dy", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 750]
!288 = metadata !{i32 786688, metadata !283, metadata !"dz", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 750]
!289 = metadata !{i32 786688, metadata !283, metadata !"src", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 750]
!290 = metadata !{i32 786688, metadata !283, metadata !"dst", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 750]
!291 = metadata !{i32 786688, metadata !283, metadata !"distance", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 750]
!292 = metadata !{i32 786688, metadata !293, metadata !"data", metadata !5, i32 750, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 750]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 750, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!294 = metadata !{i32 786443, metadata !1, metadata !295, i32 750, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 750, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!296 = metadata !{i32 786443, metadata !1, metadata !297, i32 750, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!297 = metadata !{i32 786443, metadata !1, metadata !298, i32 750, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!298 = metadata !{i32 786443, metadata !1, metadata !283, i32 750, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!299 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!300 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!301 = metadata !{i32 786688, metadata !293, metadata !"u_src", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 750]
!302 = metadata !{i32 786688, metadata !293, metadata !"u_dst", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 750]
!303 = metadata !{i32 786688, metadata !293, metadata !"aux", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 750]
!304 = metadata !{i32 786688, metadata !305, metadata !"data", metadata !5, i32 750, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 750]
!305 = metadata !{i32 786443, metadata !1, metadata !306, i32 750, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!306 = metadata !{i32 786443, metadata !1, metadata !307, i32 750, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 750, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!308 = metadata !{i32 786443, metadata !1, metadata !295, i32 750, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!309 = metadata !{i32 786688, metadata !305, metadata !"u_src", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 750]
!310 = metadata !{i32 786688, metadata !305, metadata !"u_dst", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 750]
!311 = metadata !{i32 786688, metadata !305, metadata !"aux", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 750]
!312 = metadata !{i32 786688, metadata !313, metadata !"data", metadata !5, i32 750, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 750]
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 750, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!314 = metadata !{i32 786443, metadata !1, metadata !295, i32 750, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!315 = metadata !{i32 786688, metadata !313, metadata !"u_src", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 750]
!316 = metadata !{i32 786688, metadata !313, metadata !"u_dst", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 750]
!317 = metadata !{i32 786688, metadata !313, metadata !"aux", metadata !5, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 750]
!318 = metadata !{i32 786688, metadata !319, metadata !"i", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 755]
!319 = metadata !{i32 786443, metadata !1, metadata !176, i32 755, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!320 = metadata !{i32 786688, metadata !319, metadata !"j", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 755]
!321 = metadata !{i32 786688, metadata !319, metadata !"k", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 755]
!322 = metadata !{i32 786688, metadata !319, metadata !"dx", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 755]
!323 = metadata !{i32 786688, metadata !319, metadata !"dy", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 755]
!324 = metadata !{i32 786688, metadata !319, metadata !"dz", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 755]
!325 = metadata !{i32 786688, metadata !319, metadata !"src", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 755]
!326 = metadata !{i32 786688, metadata !319, metadata !"dst", metadata !5, i32 755, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 755]
!327 = metadata !{i32 786688, metadata !319, metadata !"distance", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 755]
!328 = metadata !{i32 786688, metadata !329, metadata !"data", metadata !5, i32 755, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 755]
!329 = metadata !{i32 786443, metadata !1, metadata !330, i32 755, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!330 = metadata !{i32 786443, metadata !1, metadata !331, i32 755, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 755, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!332 = metadata !{i32 786443, metadata !1, metadata !333, i32 755, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!333 = metadata !{i32 786443, metadata !1, metadata !334, i32 755, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!334 = metadata !{i32 786443, metadata !1, metadata !319, i32 755, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!335 = metadata !{i32 786688, metadata !329, metadata !"u_src", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 755]
!336 = metadata !{i32 786688, metadata !329, metadata !"u_dst", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 755]
!337 = metadata !{i32 786688, metadata !329, metadata !"aux", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 755]
!338 = metadata !{i32 786688, metadata !339, metadata !"data", metadata !5, i32 755, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 755]
!339 = metadata !{i32 786443, metadata !1, metadata !340, i32 755, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 755, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!341 = metadata !{i32 786443, metadata !1, metadata !342, i32 755, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!342 = metadata !{i32 786443, metadata !1, metadata !331, i32 755, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!343 = metadata !{i32 786688, metadata !339, metadata !"u_src", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 755]
!344 = metadata !{i32 786688, metadata !339, metadata !"u_dst", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 755]
!345 = metadata !{i32 786688, metadata !339, metadata !"aux", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 755]
!346 = metadata !{i32 786688, metadata !347, metadata !"data", metadata !5, i32 755, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 755]
!347 = metadata !{i32 786443, metadata !1, metadata !348, i32 755, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!348 = metadata !{i32 786443, metadata !1, metadata !331, i32 755, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!349 = metadata !{i32 786688, metadata !347, metadata !"u_src", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 755]
!350 = metadata !{i32 786688, metadata !347, metadata !"u_dst", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 755]
!351 = metadata !{i32 786688, metadata !347, metadata !"aux", metadata !5, i32 755, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 755]
!352 = metadata !{i32 786688, metadata !353, metadata !"i", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 760]
!353 = metadata !{i32 786443, metadata !1, metadata !176, i32 760, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!354 = metadata !{i32 786688, metadata !353, metadata !"j", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 760]
!355 = metadata !{i32 786688, metadata !353, metadata !"k", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 760]
!356 = metadata !{i32 786688, metadata !353, metadata !"dx", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 760]
!357 = metadata !{i32 786688, metadata !353, metadata !"dy", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 760]
!358 = metadata !{i32 786688, metadata !353, metadata !"dz", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 760]
!359 = metadata !{i32 786688, metadata !353, metadata !"src", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 760]
!360 = metadata !{i32 786688, metadata !353, metadata !"dst", metadata !5, i32 760, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 760]
!361 = metadata !{i32 786688, metadata !353, metadata !"distance", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 760]
!362 = metadata !{i32 786688, metadata !363, metadata !"data", metadata !5, i32 760, metadata !369, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 760]
!363 = metadata !{i32 786443, metadata !1, metadata !364, i32 760, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 760, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!365 = metadata !{i32 786443, metadata !1, metadata !366, i32 760, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!366 = metadata !{i32 786443, metadata !1, metadata !367, i32 760, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!367 = metadata !{i32 786443, metadata !1, metadata !368, i32 760, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!368 = metadata !{i32 786443, metadata !1, metadata !353, i32 760, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!369 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !370} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!370 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!371 = metadata !{i32 786688, metadata !363, metadata !"u_src", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 760]
!372 = metadata !{i32 786688, metadata !363, metadata !"u_dst", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 760]
!373 = metadata !{i32 786688, metadata !363, metadata !"aux", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 760]
!374 = metadata !{i32 786688, metadata !375, metadata !"data", metadata !5, i32 760, metadata !369, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 760]
!375 = metadata !{i32 786443, metadata !1, metadata !376, i32 760, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!376 = metadata !{i32 786443, metadata !1, metadata !377, i32 760, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!377 = metadata !{i32 786443, metadata !1, metadata !378, i32 760, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!378 = metadata !{i32 786443, metadata !1, metadata !365, i32 760, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!379 = metadata !{i32 786688, metadata !375, metadata !"u_src", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 760]
!380 = metadata !{i32 786688, metadata !375, metadata !"u_dst", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 760]
!381 = metadata !{i32 786688, metadata !375, metadata !"aux", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 760]
!382 = metadata !{i32 786688, metadata !383, metadata !"data", metadata !5, i32 760, metadata !369, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 760]
!383 = metadata !{i32 786443, metadata !1, metadata !384, i32 760, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!384 = metadata !{i32 786443, metadata !1, metadata !365, i32 760, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!385 = metadata !{i32 786688, metadata !383, metadata !"u_src", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 760]
!386 = metadata !{i32 786688, metadata !383, metadata !"u_dst", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 760]
!387 = metadata !{i32 786688, metadata !383, metadata !"aux", metadata !5, i32 760, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 760]
!388 = metadata !{i32 786688, metadata !389, metadata !"i", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 765]
!389 = metadata !{i32 786443, metadata !1, metadata !176, i32 765, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!390 = metadata !{i32 786688, metadata !389, metadata !"j", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 765]
!391 = metadata !{i32 786688, metadata !389, metadata !"k", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 765]
!392 = metadata !{i32 786688, metadata !389, metadata !"dx", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 765]
!393 = metadata !{i32 786688, metadata !389, metadata !"dy", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 765]
!394 = metadata !{i32 786688, metadata !389, metadata !"dz", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 765]
!395 = metadata !{i32 786688, metadata !389, metadata !"src", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 765]
!396 = metadata !{i32 786688, metadata !389, metadata !"dst", metadata !5, i32 765, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 765]
!397 = metadata !{i32 786688, metadata !389, metadata !"distance", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 765]
!398 = metadata !{i32 786688, metadata !399, metadata !"data", metadata !5, i32 765, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 765]
!399 = metadata !{i32 786443, metadata !1, metadata !400, i32 765, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!400 = metadata !{i32 786443, metadata !1, metadata !401, i32 765, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!401 = metadata !{i32 786443, metadata !1, metadata !402, i32 765, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!402 = metadata !{i32 786443, metadata !1, metadata !403, i32 765, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!403 = metadata !{i32 786443, metadata !1, metadata !404, i32 765, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!404 = metadata !{i32 786443, metadata !1, metadata !389, i32 765, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!405 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !406} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!406 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!407 = metadata !{i32 786688, metadata !399, metadata !"u_src", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 765]
!408 = metadata !{i32 786688, metadata !399, metadata !"u_dst", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 765]
!409 = metadata !{i32 786688, metadata !399, metadata !"aux", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 765]
!410 = metadata !{i32 786688, metadata !411, metadata !"data", metadata !5, i32 765, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 765]
!411 = metadata !{i32 786443, metadata !1, metadata !412, i32 765, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!412 = metadata !{i32 786443, metadata !1, metadata !413, i32 765, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!413 = metadata !{i32 786443, metadata !1, metadata !414, i32 765, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!414 = metadata !{i32 786443, metadata !1, metadata !401, i32 765, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!415 = metadata !{i32 786688, metadata !411, metadata !"u_src", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 765]
!416 = metadata !{i32 786688, metadata !411, metadata !"u_dst", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 765]
!417 = metadata !{i32 786688, metadata !411, metadata !"aux", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 765]
!418 = metadata !{i32 786688, metadata !419, metadata !"data", metadata !5, i32 765, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 765]
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 765, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!420 = metadata !{i32 786443, metadata !1, metadata !401, i32 765, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!421 = metadata !{i32 786688, metadata !419, metadata !"u_src", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 765]
!422 = metadata !{i32 786688, metadata !419, metadata !"u_dst", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 765]
!423 = metadata !{i32 786688, metadata !419, metadata !"aux", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 765]
!424 = metadata !{i32 786688, metadata !425, metadata !"i", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 770]
!425 = metadata !{i32 786443, metadata !1, metadata !176, i32 770, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!426 = metadata !{i32 786688, metadata !425, metadata !"j", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 770]
!427 = metadata !{i32 786688, metadata !425, metadata !"k", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 770]
!428 = metadata !{i32 786688, metadata !425, metadata !"dx", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 770]
!429 = metadata !{i32 786688, metadata !425, metadata !"dy", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 770]
!430 = metadata !{i32 786688, metadata !425, metadata !"dz", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 770]
!431 = metadata !{i32 786688, metadata !425, metadata !"src", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 770]
!432 = metadata !{i32 786688, metadata !425, metadata !"dst", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 770]
!433 = metadata !{i32 786688, metadata !425, metadata !"distance", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 770]
!434 = metadata !{i32 786688, metadata !435, metadata !"data", metadata !5, i32 770, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 770]
!435 = metadata !{i32 786443, metadata !1, metadata !436, i32 770, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!436 = metadata !{i32 786443, metadata !1, metadata !437, i32 770, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!437 = metadata !{i32 786443, metadata !1, metadata !438, i32 770, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!438 = metadata !{i32 786443, metadata !1, metadata !439, i32 770, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!439 = metadata !{i32 786443, metadata !1, metadata !440, i32 770, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!440 = metadata !{i32 786443, metadata !1, metadata !425, i32 770, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!441 = metadata !{i32 786688, metadata !435, metadata !"u_src", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 770]
!442 = metadata !{i32 786688, metadata !435, metadata !"u_dst", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 770]
!443 = metadata !{i32 786688, metadata !435, metadata !"aux", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 770]
!444 = metadata !{i32 786688, metadata !445, metadata !"data", metadata !5, i32 770, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 770]
!445 = metadata !{i32 786443, metadata !1, metadata !446, i32 770, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!446 = metadata !{i32 786443, metadata !1, metadata !447, i32 770, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!447 = metadata !{i32 786443, metadata !1, metadata !448, i32 770, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!448 = metadata !{i32 786443, metadata !1, metadata !437, i32 770, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!449 = metadata !{i32 786688, metadata !445, metadata !"u_src", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 770]
!450 = metadata !{i32 786688, metadata !445, metadata !"u_dst", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 770]
!451 = metadata !{i32 786688, metadata !445, metadata !"aux", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 770]
!452 = metadata !{i32 786688, metadata !453, metadata !"data", metadata !5, i32 770, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 770]
!453 = metadata !{i32 786443, metadata !1, metadata !454, i32 770, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!454 = metadata !{i32 786443, metadata !1, metadata !437, i32 770, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!455 = metadata !{i32 786688, metadata !453, metadata !"u_src", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 770]
!456 = metadata !{i32 786688, metadata !453, metadata !"u_dst", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 770]
!457 = metadata !{i32 786688, metadata !453, metadata !"aux", metadata !5, i32 770, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 770]
!458 = metadata !{i32 786688, metadata !459, metadata !"i", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 775]
!459 = metadata !{i32 786443, metadata !1, metadata !176, i32 775, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!460 = metadata !{i32 786688, metadata !459, metadata !"j", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 775]
!461 = metadata !{i32 786688, metadata !459, metadata !"k", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 775]
!462 = metadata !{i32 786688, metadata !459, metadata !"dx", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 775]
!463 = metadata !{i32 786688, metadata !459, metadata !"dy", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 775]
!464 = metadata !{i32 786688, metadata !459, metadata !"dz", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 775]
!465 = metadata !{i32 786688, metadata !459, metadata !"src", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 775]
!466 = metadata !{i32 786688, metadata !459, metadata !"dst", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 775]
!467 = metadata !{i32 786688, metadata !459, metadata !"distance", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distance] [line 775]
!468 = metadata !{i32 786688, metadata !469, metadata !"data", metadata !5, i32 775, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 775]
!469 = metadata !{i32 786443, metadata !1, metadata !470, i32 775, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!470 = metadata !{i32 786443, metadata !1, metadata !471, i32 775, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!471 = metadata !{i32 786443, metadata !1, metadata !472, i32 775, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!472 = metadata !{i32 786443, metadata !1, metadata !473, i32 775, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 775, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!474 = metadata !{i32 786443, metadata !1, metadata !459, i32 775, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!476 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!477 = metadata !{i32 786688, metadata !469, metadata !"u_src", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 775]
!478 = metadata !{i32 786688, metadata !469, metadata !"u_dst", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 775]
!479 = metadata !{i32 786688, metadata !469, metadata !"aux", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 775]
!480 = metadata !{i32 786688, metadata !481, metadata !"data", metadata !5, i32 775, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 775]
!481 = metadata !{i32 786443, metadata !1, metadata !482, i32 775, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!482 = metadata !{i32 786443, metadata !1, metadata !483, i32 775, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!483 = metadata !{i32 786443, metadata !1, metadata !484, i32 775, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!484 = metadata !{i32 786443, metadata !1, metadata !471, i32 775, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!485 = metadata !{i32 786688, metadata !481, metadata !"u_src", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 775]
!486 = metadata !{i32 786688, metadata !481, metadata !"u_dst", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 775]
!487 = metadata !{i32 786688, metadata !481, metadata !"aux", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 775]
!488 = metadata !{i32 786688, metadata !489, metadata !"data", metadata !5, i32 775, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 775]
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 775, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!490 = metadata !{i32 786443, metadata !1, metadata !471, i32 775, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!491 = metadata !{i32 786688, metadata !489, metadata !"u_src", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_src] [line 775]
!492 = metadata !{i32 786688, metadata !489, metadata !"u_dst", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dst] [line 775]
!493 = metadata !{i32 786688, metadata !489, metadata !"aux", metadata !5, i32 775, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 775]
!494 = metadata !{metadata !495}
!495 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 31, metadata !8, i32 1, i32 1, null, null}
!496 = metadata !{i32 32, i32 0, metadata !4, null}
!497 = metadata !{i32 122, i32 0, metadata !11, null}
!498 = metadata !{i32 123, i32 0, metadata !11, null}
!499 = metadata !{i32 124, i32 0, metadata !11, null}
!500 = metadata !{i32 125, i32 0, metadata !11, null}
!501 = metadata !{i32 126, i32 0, metadata !11, null}
!502 = metadata !{i32 131, i32 0, metadata !11, null}
!503 = metadata !{i32 132, i32 0, metadata !11, null}
!504 = metadata !{i32 135, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !11, i32 133, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!506 = metadata !{i32 136, i32 0, metadata !505, null}
!507 = metadata !{i32 139, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !11, i32 138, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!509 = metadata !{i32 -1}
!510 = metadata !{i32 141, i32 0, metadata !508, null}
!511 = metadata !{i32 144, i32 0, metadata !11, null}
!512 = metadata !{i32 630, i32 0, metadata !135, null}
!513 = metadata !{i32 631, i32 0, metadata !135, null}
!514 = metadata !{i32 632, i32 0, metadata !135, null}
!515 = metadata !{i32 633, i32 0, metadata !135, null}
!516 = metadata !{i32 634, i32 0, metadata !135, null}
!517 = metadata !{i32 635, i32 0, metadata !135, null}
!518 = metadata !{i32 638, i32 0, metadata !135, null}
!519 = metadata !{i32 640, i32 0, metadata !135, null}
!520 = metadata !{i32 643, i32 0, metadata !135, null}
!521 = metadata !{i32 647, i32 0, metadata !135, null}
!522 = metadata !{i32 648, i32 0, metadata !135, null}
!523 = metadata !{i32 651, i32 0, metadata !135, null}
!524 = metadata !{i32 653, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !135, i32 652, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!526 = metadata !{i32 655, i32 0, metadata !525, null}
!527 = metadata !{i32 659, i32 0, metadata !135, null}
!528 = metadata !{i32 665, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !135, i32 665, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!530 = metadata !{i32 661, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !135, i32 660, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!532 = metadata !{i32 662, i32 0, metadata !531, null}
!533 = metadata !{i32 667, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !529, i32 666, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!535 = metadata !{metadata !"int", metadata !536}
!536 = metadata !{metadata !"omnipotent char", metadata !537}
!537 = metadata !{metadata !"Simple C/C++ TBAA"}
!538 = metadata !{i32 669, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !534, i32 668, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!540 = metadata !{i32 671, i32 0, metadata !539, null}
!541 = metadata !{i32 676, i32 0, metadata !135, null}
!542 = metadata !{i32 677, i32 0, metadata !135, null}
!543 = metadata !{i32 679, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !135, i32 678, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!545 = metadata !{i32 682, i32 0, metadata !544, null}
!546 = metadata !{i32 684, i32 0, metadata !135, null}
!547 = metadata !{metadata !"any pointer", metadata !536}
!548 = metadata !{i32 685, i32 0, metadata !135, null}
!549 = metadata !{i32 686, i32 0, metadata !135, null}
!550 = metadata !{i32 688, i32 0, metadata !135, null}
!551 = metadata !{i32 689, i32 0, metadata !135, null}
!552 = metadata !{i32 691, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !135, i32 690, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!554 = metadata !{i32 694, i32 0, metadata !553, null}
!555 = metadata !{i32 696, i32 0, metadata !135, null}
!556 = metadata !{i32 699, i32 0, metadata !135, null}
!557 = metadata !{i32 702, i32 0, metadata !135, null}
!558 = metadata !{i32 705, i32 0, metadata !135, null}
!559 = metadata !{metadata !"double", metadata !536}
!560 = metadata !{i32 706, i32 0, metadata !135, null}
!561 = metadata !{i32 707, i32 0, metadata !135, null}
!562 = metadata !{i32 708, i32 0, metadata !135, null}
!563 = metadata !{i32 709, i32 0, metadata !135, null}
!564 = metadata !{i32 710, i32 0, metadata !135, null}
!565 = metadata !{i32 711, i32 0, metadata !135, null}
!566 = metadata !{i32 712, i32 0, metadata !135, null}
!567 = metadata !{i32 715, i32 0, metadata !178, null}
!568 = metadata !{i32 722, i32 0, metadata !177, null}
!569 = metadata !{i32 723, i32 0, metadata !177, null}
!570 = metadata !{i32 725, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !572, i32 725, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!572 = metadata !{i32 786443, metadata !1, metadata !177, i32 724, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!573 = metadata !{i32 727, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !571, i32 726, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!575 = metadata !{i32 740, i32 0, metadata !175, null}
!576 = metadata !{i32 740, i32 0, metadata !193, null}
!577 = metadata !{i32 740, i32 0, metadata !192, null}
!578 = metadata !{i32 740, i32 0, metadata !190, null}
!579 = metadata !{i32 733, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !581, i32 732, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!581 = metadata !{i32 786443, metadata !1, metadata !177, i32 731, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!582 = metadata !{i32 731, i32 0, metadata !581, null}
!583 = metadata !{i32 734, i32 0, metadata !580, null}
!584 = metadata !{i32 737, i32 0, metadata !177, null}
!585 = metadata !{i32 740, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !175, i32 740, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!587 = metadata !{i32 740, i32 0, metadata !191, null}
!588 = metadata !{i32 740, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !192, i32 740, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!590 = metadata !{i32 740, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !210, i32 740, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!592 = metadata !{i32 740, i32 0, metadata !209, null}
!593 = metadata !{i32 740, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !209, i32 740, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!595 = metadata !{i32 740, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !190, i32 740, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!597 = metadata !{i32 1}
!598 = metadata !{i32 740, i32 0, metadata !189, null}
!599 = metadata !{i32 740, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !189, i32 740, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!601 = metadata !{i32 740, i32 0, metadata !188, null}
!602 = metadata !{i32 740, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !188, i32 740, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!604 = metadata !{i32 740, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !188, i32 740, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!606 = metadata !{i32 740, i32 0, metadata !204, null}
!607 = metadata !{i32 740, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !204, i32 740, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!609 = metadata !{i32 740, i32 0, metadata !203, null}
!610 = metadata !{i32 740, i32 0, metadata !201, null}
!611 = metadata !{i32 740, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !201, i32 740, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!613 = metadata !{i32 740, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !201, i32 740, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!615 = metadata !{i32 740, i32 0, metadata !210, null}
!616 = metadata !{i32 740, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !209, i32 740, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!618 = metadata !{i32 743, i32 0, metadata !215, null}
!619 = metadata !{i32 743, i32 0, metadata !230, null}
!620 = metadata !{i32 743, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !215, i32 743, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!622 = metadata !{i32 743, i32 0, metadata !228, null}
!623 = metadata !{i32 743, i32 0, metadata !229, null}
!624 = metadata !{i32 743, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !229, i32 743, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!626 = metadata !{i32 743, i32 0, metadata !227, null}
!627 = metadata !{i32 743, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !244, i32 743, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!629 = metadata !{i32 743, i32 0, metadata !243, null}
!630 = metadata !{i32 743, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !243, i32 743, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!632 = metadata !{i32 743, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !227, i32 743, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!634 = metadata !{i32 743, i32 0, metadata !226, null}
!635 = metadata !{i32 743, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !226, i32 743, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!637 = metadata !{i32 743, i32 0, metadata !225, null}
!638 = metadata !{i32 743, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !225, i32 743, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!640 = metadata !{i32 743, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !225, i32 743, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!642 = metadata !{i32 743, i32 0, metadata !238, null}
!643 = metadata !{i32 743, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !238, i32 743, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!645 = metadata !{i32 743, i32 0, metadata !237, null}
!646 = metadata !{i32 743, i32 0, metadata !235, null}
!647 = metadata !{i32 743, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !235, i32 743, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!649 = metadata !{i32 743, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !235, i32 743, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!651 = metadata !{i32 743, i32 0, metadata !244, null}
!652 = metadata !{i32 743, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !243, i32 743, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!654 = metadata !{i32 746, i32 0, metadata !249, null}
!655 = metadata !{i32 746, i32 0, metadata !264, null}
!656 = metadata !{i32 746, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !249, i32 746, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!658 = metadata !{i32 746, i32 0, metadata !262, null}
!659 = metadata !{i32 746, i32 0, metadata !263, null}
!660 = metadata !{i32 746, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !263, i32 746, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!662 = metadata !{i32 746, i32 0, metadata !261, null}
!663 = metadata !{i32 746, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !278, i32 746, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!665 = metadata !{i32 746, i32 0, metadata !277, null}
!666 = metadata !{i32 746, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !277, i32 746, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!668 = metadata !{i32 746, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !261, i32 746, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!670 = metadata !{i32 746, i32 0, metadata !260, null}
!671 = metadata !{i32 746, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !260, i32 746, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!673 = metadata !{i32 746, i32 0, metadata !259, null}
!674 = metadata !{i32 746, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !259, i32 746, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!676 = metadata !{i32 746, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !259, i32 746, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!678 = metadata !{i32 746, i32 0, metadata !272, null}
!679 = metadata !{i32 746, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !272, i32 746, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!681 = metadata !{i32 746, i32 0, metadata !271, null}
!682 = metadata !{i32 746, i32 0, metadata !269, null}
!683 = metadata !{i32 746, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !269, i32 746, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!685 = metadata !{i32 746, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !269, i32 746, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!687 = metadata !{i32 746, i32 0, metadata !278, null}
!688 = metadata !{i32 746, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !277, i32 746, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!690 = metadata !{i32 750, i32 0, metadata !283, null}
!691 = metadata !{i32 750, i32 0, metadata !298, null}
!692 = metadata !{i32 750, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !283, i32 750, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!694 = metadata !{i32 750, i32 0, metadata !296, null}
!695 = metadata !{i32 750, i32 0, metadata !297, null}
!696 = metadata !{i32 750, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !297, i32 750, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!698 = metadata !{i32 750, i32 0, metadata !295, null}
!699 = metadata !{i32 750, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !314, i32 750, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!701 = metadata !{i32 750, i32 0, metadata !313, null}
!702 = metadata !{i32 750, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !313, i32 750, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!704 = metadata !{i32 750, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !295, i32 750, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!706 = metadata !{i32 750, i32 0, metadata !294, null}
!707 = metadata !{i32 750, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !294, i32 750, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!709 = metadata !{i32 750, i32 0, metadata !293, null}
!710 = metadata !{i32 750, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !293, i32 750, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!712 = metadata !{i32 750, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !293, i32 750, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!714 = metadata !{metadata !"short", metadata !536}
!715 = metadata !{i32 750, i32 0, metadata !308, null}
!716 = metadata !{i32 750, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !308, i32 750, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!718 = metadata !{i32 750, i32 0, metadata !307, null}
!719 = metadata !{i32 750, i32 0, metadata !305, null}
!720 = metadata !{i32 750, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !305, i32 750, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!722 = metadata !{i32 750, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !305, i32 750, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!724 = metadata !{i32 750, i32 0, metadata !314, null}
!725 = metadata !{i32 750, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !313, i32 750, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!727 = metadata !{i32 755, i32 0, metadata !319, null}
!728 = metadata !{i32 755, i32 0, metadata !334, null}
!729 = metadata !{i32 755, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !319, i32 755, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!731 = metadata !{i32 755, i32 0, metadata !332, null}
!732 = metadata !{i32 755, i32 0, metadata !333, null}
!733 = metadata !{i32 755, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !333, i32 755, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!735 = metadata !{i32 755, i32 0, metadata !331, null}
!736 = metadata !{i32 755, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !348, i32 755, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!738 = metadata !{i32 755, i32 0, metadata !347, null}
!739 = metadata !{i32 755, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !347, i32 755, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!741 = metadata !{i32 755, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !331, i32 755, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!743 = metadata !{i32 755, i32 0, metadata !330, null}
!744 = metadata !{i32 755, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !330, i32 755, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!746 = metadata !{i32 755, i32 0, metadata !329, null}
!747 = metadata !{i32 755, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !329, i32 755, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!749 = metadata !{i32 755, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !329, i32 755, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!751 = metadata !{i32 755, i32 0, metadata !342, null}
!752 = metadata !{i32 755, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !342, i32 755, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!754 = metadata !{i32 755, i32 0, metadata !341, null}
!755 = metadata !{i32 755, i32 0, metadata !339, null}
!756 = metadata !{i32 755, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !339, i32 755, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!758 = metadata !{i32 755, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !339, i32 755, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!760 = metadata !{i32 755, i32 0, metadata !348, null}
!761 = metadata !{i32 755, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !347, i32 755, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!763 = metadata !{i32 760, i32 0, metadata !353, null}
!764 = metadata !{i32 760, i32 0, metadata !368, null}
!765 = metadata !{i32 760, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !353, i32 760, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!767 = metadata !{i32 760, i32 0, metadata !366, null}
!768 = metadata !{i32 760, i32 0, metadata !367, null}
!769 = metadata !{i32 760, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !367, i32 760, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!771 = metadata !{i32 760, i32 0, metadata !365, null}
!772 = metadata !{i32 760, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !384, i32 760, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!774 = metadata !{i32 760, i32 0, metadata !383, null}
!775 = metadata !{i32 760, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !383, i32 760, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!777 = metadata !{i32 760, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !365, i32 760, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!779 = metadata !{i32 760, i32 0, metadata !364, null}
!780 = metadata !{i32 760, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !364, i32 760, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!782 = metadata !{i32 760, i32 0, metadata !363, null}
!783 = metadata !{i32 760, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !363, i32 760, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!785 = metadata !{i32 760, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !363, i32 760, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!787 = metadata !{metadata !"long", metadata !536}
!788 = metadata !{i32 760, i32 0, metadata !378, null}
!789 = metadata !{i32 760, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !378, i32 760, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!791 = metadata !{i32 760, i32 0, metadata !377, null}
!792 = metadata !{i32 760, i32 0, metadata !375, null}
!793 = metadata !{i32 760, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !375, i32 760, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!795 = metadata !{i32 760, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !375, i32 760, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!797 = metadata !{i32 760, i32 0, metadata !384, null}
!798 = metadata !{i32 760, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !383, i32 760, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!800 = metadata !{i32 765, i32 0, metadata !389, null}
!801 = metadata !{i32 765, i32 0, metadata !404, null}
!802 = metadata !{i32 765, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !389, i32 765, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!804 = metadata !{i32 765, i32 0, metadata !402, null}
!805 = metadata !{i32 765, i32 0, metadata !403, null}
!806 = metadata !{i32 765, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !403, i32 765, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!808 = metadata !{i32 765, i32 0, metadata !401, null}
!809 = metadata !{i32 765, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !1, metadata !420, i32 765, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!811 = metadata !{i32 765, i32 0, metadata !419, null}
!812 = metadata !{i32 765, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !419, i32 765, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!814 = metadata !{i32 765, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !401, i32 765, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!816 = metadata !{i32 765, i32 0, metadata !400, null}
!817 = metadata !{i32 765, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !400, i32 765, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!819 = metadata !{i32 765, i32 0, metadata !399, null}
!820 = metadata !{i32 765, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !399, i32 765, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!822 = metadata !{i32 765, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !399, i32 765, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!824 = metadata !{metadata !"float", metadata !536}
!825 = metadata !{i32 765, i32 0, metadata !414, null}
!826 = metadata !{i32 765, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !414, i32 765, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!828 = metadata !{i32 765, i32 0, metadata !413, null}
!829 = metadata !{i32 765, i32 0, metadata !411, null}
!830 = metadata !{i32 765, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !411, i32 765, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!832 = metadata !{i32 765, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !411, i32 765, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!834 = metadata !{i32 765, i32 0, metadata !420, null}
!835 = metadata !{i32 765, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !419, i32 765, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!837 = metadata !{i32 770, i32 0, metadata !425, null}
!838 = metadata !{i32 770, i32 0, metadata !440, null}
!839 = metadata !{i32 770, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !425, i32 770, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!841 = metadata !{i32 770, i32 0, metadata !438, null}
!842 = metadata !{i32 770, i32 0, metadata !439, null}
!843 = metadata !{i32 770, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !439, i32 770, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!845 = metadata !{i32 770, i32 0, metadata !437, null}
!846 = metadata !{i32 770, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !454, i32 770, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!848 = metadata !{i32 770, i32 0, metadata !453, null}
!849 = metadata !{i32 770, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !453, i32 770, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!851 = metadata !{i32 770, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !437, i32 770, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!853 = metadata !{i32 770, i32 0, metadata !436, null}
!854 = metadata !{i32 770, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !436, i32 770, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!856 = metadata !{i32 770, i32 0, metadata !435, null}
!857 = metadata !{i32 770, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !435, i32 770, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!859 = metadata !{i32 770, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !435, i32 770, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!861 = metadata !{i32 770, i32 0, metadata !448, null}
!862 = metadata !{i32 770, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !448, i32 770, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!864 = metadata !{i32 770, i32 0, metadata !447, null}
!865 = metadata !{i32 770, i32 0, metadata !445, null}
!866 = metadata !{i32 770, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !445, i32 770, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!868 = metadata !{i32 770, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !445, i32 770, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!870 = metadata !{i32 770, i32 0, metadata !454, null}
!871 = metadata !{i32 770, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !453, i32 770, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!873 = metadata !{i32 775, i32 0, metadata !459, null}
!874 = metadata !{i32 775, i32 0, metadata !474, null}
!875 = metadata !{i32 775, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !459, i32 775, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!877 = metadata !{i32 775, i32 0, metadata !472, null}
!878 = metadata !{i32 775, i32 0, metadata !473, null}
!879 = metadata !{i32 775, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !473, i32 775, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!881 = metadata !{i32 775, i32 0, metadata !471, null}
!882 = metadata !{i32 775, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !490, i32 775, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!884 = metadata !{i32 775, i32 0, metadata !489, null}
!885 = metadata !{i32 775, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !489, i32 775, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!887 = metadata !{i32 775, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !471, i32 775, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!889 = metadata !{i32 775, i32 0, metadata !470, null}
!890 = metadata !{i32 775, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !470, i32 775, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!892 = metadata !{i32 775, i32 0, metadata !469, null}
!893 = metadata !{i32 775, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !469, i32 775, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!895 = metadata !{i32 775, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !469, i32 775, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!897 = metadata !{metadata !"long double", metadata !536}
!898 = metadata !{i32 775, i32 0, metadata !484, null}
!899 = metadata !{i32 775, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !484, i32 775, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!901 = metadata !{i32 775, i32 0, metadata !483, null}
!902 = metadata !{i32 775, i32 0, metadata !481, null}
!903 = metadata !{i32 775, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !481, i32 775, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!905 = metadata !{i32 775, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !481, i32 775, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!907 = metadata !{i32 775, i32 0, metadata !490, null}
!908 = metadata !{i32 775, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !489, i32 775, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!910 = metadata !{i32 781, i32 0, metadata !176, null}
!911 = metadata !{i32 782, i32 0, metadata !176, null}
!912 = metadata !{i32 786, i32 0, metadata !135, null}
!913 = metadata !{i32 787, i32 0, metadata !135, null}
!914 = metadata !{i32 148, i32 0, metadata !63, null}
!915 = metadata !{i32 149, i32 0, metadata !63, null}
!916 = metadata !{i32 150, i32 0, metadata !63, null}
!917 = metadata !{i32 151, i32 0, metadata !63, null}
!918 = metadata !{i32 152, i32 0, metadata !63, null}
!919 = metadata !{i32 153, i32 0, metadata !63, null}
!920 = metadata !{i32 155, i32 0, metadata !63, null}
!921 = metadata !{i32 156, i32 0, metadata !63, null}
!922 = metadata !{i32 200, i32 0, metadata !75, null}
!923 = metadata !{i32 201, i32 0, metadata !75, null}
!924 = metadata !{i32 202, i32 0, metadata !75, null}
!925 = metadata !{i32 203, i32 0, metadata !75, null}
!926 = metadata !{i32 204, i32 0, metadata !75, null}
!927 = metadata !{i32 209, i32 0, metadata !75, null}
!928 = metadata !{i32 210, i32 0, metadata !75, null}
!929 = metadata !{i32 212, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !75, i32 211, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!931 = metadata !{i32 213, i32 0, metadata !930, null}
!932 = metadata !{i32 216, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !75, i32 215, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!934 = metadata !{i32 218, i32 0, metadata !933, null}
!935 = metadata !{i32 221, i32 0, metadata !75, null}
!936 = metadata !{i32 225, i32 0, metadata !86, null}
!937 = metadata !{i32 226, i32 0, metadata !86, null}
!938 = metadata !{i32 227, i32 0, metadata !86, null}
!939 = metadata !{i32 228, i32 0, metadata !86, null}
!940 = metadata !{i32 229, i32 0, metadata !86, null}
!941 = metadata !{i32 230, i32 0, metadata !86, null}
!942 = metadata !{i32 232, i32 0, metadata !86, null}
!943 = metadata !{i32 233, i32 0, metadata !86, null}
!944 = metadata !{i32 234, i32 0, metadata !86, null}
!945 = metadata !{i32 235, i32 0, metadata !86, null}
!946 = metadata !{i32 279, i32 0, metadata !100, null}
!947 = metadata !{i32 280, i32 0, metadata !100, null}
!948 = metadata !{i32 281, i32 0, metadata !100, null}
!949 = metadata !{i32 282, i32 0, metadata !100, null}
!950 = metadata !{i32 283, i32 0, metadata !100, null}
!951 = metadata !{i32 288, i32 0, metadata !100, null}
!952 = metadata !{i32 290, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !100, i32 289, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!954 = metadata !{i32 291, i32 0, metadata !953, null}
!955 = metadata !{i32 294, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !100, i32 293, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!957 = metadata !{i32 296, i32 0, metadata !956, null}
!958 = metadata !{i32 299, i32 0, metadata !100, null}
!959 = metadata !{i32 303, i32 0, metadata !108, null}
!960 = metadata !{i32 304, i32 0, metadata !108, null}
!961 = metadata !{i32 305, i32 0, metadata !108, null}
!962 = metadata !{i32 306, i32 0, metadata !108, null}
!963 = metadata !{i32 307, i32 0, metadata !108, null}
!964 = metadata !{i32 308, i32 0, metadata !108, null}
!965 = metadata !{i32 310, i32 0, metadata !108, null}
!966 = metadata !{i32 311, i32 0, metadata !108, null}
!967 = metadata !{i32 355, i32 0, metadata !116, null}
!968 = metadata !{i32 356, i32 0, metadata !116, null}
!969 = metadata !{i32 357, i32 0, metadata !116, null}
!970 = metadata !{i32 358, i32 0, metadata !116, null}
!971 = metadata !{i32 359, i32 0, metadata !116, null}
!972 = metadata !{i32 364, i32 0, metadata !116, null}
!973 = metadata !{i32 365, i32 0, metadata !116, null}
!974 = metadata !{i32 367, i32 0, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !116, i32 366, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!976 = metadata !{i32 368, i32 0, metadata !975, null}
!977 = metadata !{i32 371, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !116, i32 370, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c]
!979 = metadata !{i32 373, i32 0, metadata !978, null}
!980 = metadata !{i32 376, i32 0, metadata !116, null}
!981 = metadata !{i32 380, i32 0, metadata !125, null}
!982 = metadata !{i32 381, i32 0, metadata !125, null}
!983 = metadata !{i32 382, i32 0, metadata !125, null}
!984 = metadata !{i32 383, i32 0, metadata !125, null}
!985 = metadata !{i32 384, i32 0, metadata !125, null}
!986 = metadata !{i32 385, i32 0, metadata !125, null}
!987 = metadata !{i32 387, i32 0, metadata !125, null}
!988 = metadata !{i32 388, i32 0, metadata !125, null}
!989 = metadata !{i32 389, i32 0, metadata !125, null}
!990 = metadata !{i32 390, i32 0, metadata !125, null}
