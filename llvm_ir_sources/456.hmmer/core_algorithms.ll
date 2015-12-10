; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.dpshadow_s = type { i8**, i8**, i8**, i8**, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"there's trouble with RAMLIMIT if you grow in both M and N.\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"traceback failed\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"Traceback failed.\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"Bogus state %s\00", align 1
@Alphabet_size = external global i32
@Alphabet = external global [25 x i8]
@.str5 = private unnamed_addr constant [40 x i8] c"HMMER: Bad state (%s) in ShadowTrace()\0A\00", align 1
@.str6 = private unnamed_addr constant [25 x i8] c"TraceDecompose() screwup\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"you can't init get_wee_midpt with a %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %N, i32 %M, i32 %padN, i32 %padM) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !46), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !47), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %padN}, i64 0, metadata !48), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %padM}, i64 0, metadata !49), !dbg !552
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 66, i64 80) #6, !dbg !553
  %0 = bitcast i8* %call to %struct.dpmatrix_s*, !dbg !553
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %0}, i64 0, metadata !50), !dbg !553
  %add = add i32 %N, 1, !dbg !554
  %conv = sext i32 %add to i64, !dbg !554
  %mul = shl nsw i64 %conv, 3, !dbg !554
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 67, i64 %mul) #6, !dbg !554
  %1 = bitcast i8* %call1 to i32**, !dbg !554
  %xmx = bitcast i8* %call to i32***, !dbg !554
  store i32** %1, i32*** %xmx, align 8, !dbg !554, !tbaa !555
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 68, i64 %mul) #6, !dbg !558
  %2 = bitcast i8* %call5 to i32**, !dbg !558
  %mmx = getelementptr inbounds i8* %call, i64 8, !dbg !558
  %3 = bitcast i8* %mmx to i32***, !dbg !558
  store i32** %2, i32*** %3, align 8, !dbg !558, !tbaa !555
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 69, i64 %mul) #6, !dbg !559
  %4 = bitcast i8* %call9 to i32**, !dbg !559
  %imx = getelementptr inbounds i8* %call, i64 16, !dbg !559
  %5 = bitcast i8* %imx to i32***, !dbg !559
  store i32** %4, i32*** %5, align 8, !dbg !559, !tbaa !555
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 70, i64 %mul) #6, !dbg !560
  %6 = bitcast i8* %call13 to i32**, !dbg !560
  %dmx = getelementptr inbounds i8* %call, i64 24, !dbg !560
  %7 = bitcast i8* %dmx to i32***, !dbg !560
  store i32** %6, i32*** %7, align 8, !dbg !560, !tbaa !555
  %mul15 = mul nsw i32 %add, 5, !dbg !561
  %conv16 = sext i32 %mul15 to i64, !dbg !561
  %mul17 = shl nsw i64 %conv16, 2, !dbg !561
  %call18 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 71, i64 %mul17) #6, !dbg !561
  %xmx_mem = getelementptr inbounds i8* %call, i64 32, !dbg !561
  %8 = bitcast i8* %xmx_mem to i8**, !dbg !561
  store i8* %call18, i8** %8, align 8, !dbg !561, !tbaa !555
  %add20 = add nsw i32 %M, 2, !dbg !562
  %mul21 = mul nsw i32 %add20, %add, !dbg !562
  %conv22 = sext i32 %mul21 to i64, !dbg !562
  %mul23 = shl nsw i64 %conv22, 2, !dbg !562
  %call24 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 72, i64 %mul23) #6, !dbg !562
  %mmx_mem = getelementptr inbounds i8* %call, i64 40, !dbg !562
  %9 = bitcast i8* %mmx_mem to i8**, !dbg !562
  store i8* %call24, i8** %9, align 8, !dbg !562, !tbaa !555
  %call30 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 73, i64 %mul23) #6, !dbg !563
  %imx_mem = getelementptr inbounds i8* %call, i64 48, !dbg !563
  %10 = bitcast i8* %imx_mem to i8**, !dbg !563
  store i8* %call30, i8** %10, align 8, !dbg !563, !tbaa !555
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 74, i64 %mul23) #6, !dbg !564
  %dmx_mem = getelementptr inbounds i8* %call, i64 56, !dbg !564
  %11 = bitcast i8* %dmx_mem to i8**, !dbg !564
  store i8* %call36, i8** %11, align 8, !dbg !564, !tbaa !555
  %12 = load i8** %8, align 8, !dbg !565, !tbaa !555
  %13 = bitcast i8* %12 to i32*, !dbg !565
  %14 = load i32*** %xmx, align 8, !dbg !565, !tbaa !555
  store i32* %13, i32** %14, align 8, !dbg !565, !tbaa !555
  %15 = load i8** %9, align 8, !dbg !566, !tbaa !555
  %16 = bitcast i8* %15 to i32*, !dbg !566
  %17 = load i32*** %3, align 8, !dbg !566, !tbaa !555
  store i32* %16, i32** %17, align 8, !dbg !566, !tbaa !555
  %18 = load i8** %10, align 8, !dbg !567, !tbaa !555
  %19 = bitcast i8* %18 to i32*, !dbg !567
  %20 = load i32*** %5, align 8, !dbg !567, !tbaa !555
  store i32* %19, i32** %20, align 8, !dbg !567, !tbaa !555
  %21 = load i8** %11, align 8, !dbg !568, !tbaa !555
  %22 = bitcast i8* %21 to i32*, !dbg !568
  %23 = load i32*** %7, align 8, !dbg !568, !tbaa !555
  store i32* %22, i32** %23, align 8, !dbg !568, !tbaa !555
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !51), !dbg !570
  %cmp141 = icmp slt i32 %N, 1, !dbg !570
  br i1 %cmp141, label %for.end, label %for.body, !dbg !570

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %24 = load i32*** %xmx, align 8, !dbg !572, !tbaa !555
  %25 = load i32** %24, align 8, !dbg !572, !tbaa !555
  %26 = trunc i64 %indvars.iv to i32, !dbg !572
  %sext = mul i64 %indvars.iv, 21474836480, !dbg !572
  %idx.ext = ashr exact i64 %sext, 32, !dbg !572
  %add.ptr = getelementptr inbounds i32* %25, i64 %idx.ext, !dbg !572
  %arrayidx53 = getelementptr inbounds i32** %24, i64 %indvars.iv, !dbg !572
  store i32* %add.ptr, i32** %arrayidx53, align 8, !dbg !572, !tbaa !555
  %27 = load i32*** %3, align 8, !dbg !574, !tbaa !555
  %28 = load i32** %27, align 8, !dbg !574, !tbaa !555
  %mul57 = mul nsw i32 %26, %add20, !dbg !574
  %idx.ext58 = sext i32 %mul57 to i64, !dbg !574
  %add.ptr59 = getelementptr inbounds i32* %28, i64 %idx.ext58, !dbg !574
  %arrayidx62 = getelementptr inbounds i32** %27, i64 %indvars.iv, !dbg !574
  store i32* %add.ptr59, i32** %arrayidx62, align 8, !dbg !574, !tbaa !555
  %29 = load i32*** %5, align 8, !dbg !575, !tbaa !555
  %30 = load i32** %29, align 8, !dbg !575, !tbaa !555
  %add.ptr68 = getelementptr inbounds i32* %30, i64 %idx.ext58, !dbg !575
  %arrayidx71 = getelementptr inbounds i32** %29, i64 %indvars.iv, !dbg !575
  store i32* %add.ptr68, i32** %arrayidx71, align 8, !dbg !575, !tbaa !555
  %31 = load i32*** %7, align 8, !dbg !576, !tbaa !555
  %32 = load i32** %31, align 8, !dbg !576, !tbaa !555
  %add.ptr77 = getelementptr inbounds i32* %32, i64 %idx.ext58, !dbg !576
  %arrayidx80 = getelementptr inbounds i32** %31, i64 %indvars.iv, !dbg !576
  store i32* %add.ptr77, i32** %arrayidx80, align 8, !dbg !576, !tbaa !555
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !570
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !570
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !570
  br i1 %exitcond, label %for.end, label %for.body, !dbg !570

for.end:                                          ; preds = %for.body, %entry
  %cmp81 = icmp sgt i32 %padM, 0, !dbg !577
  %cmp83 = icmp sgt i32 %padN, 0, !dbg !577
  %or.cond = and i1 %cmp81, %cmp83, !dbg !577
  br i1 %or.cond, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !577
  br label %if.end, !dbg !577

if.end:                                           ; preds = %if.then, %for.end
  %maxN = getelementptr inbounds i8* %call, i64 64, !dbg !578
  %33 = bitcast i8* %maxN to i32*, !dbg !578
  store i32 %N, i32* %33, align 4, !dbg !578, !tbaa !579
  %maxM = getelementptr inbounds i8* %call, i64 68, !dbg !580
  %34 = bitcast i8* %maxM to i32*, !dbg !580
  store i32 %M, i32* %34, align 4, !dbg !580, !tbaa !579
  %padN85 = getelementptr inbounds i8* %call, i64 72, !dbg !581
  %35 = bitcast i8* %padN85 to i32*, !dbg !581
  store i32 %padN, i32* %35, align 4, !dbg !581, !tbaa !579
  %padM86 = getelementptr inbounds i8* %call, i64 76, !dbg !582
  %36 = bitcast i8* %padM86 to i32*, !dbg !582
  store i32 %padM, i32* %36, align 4, !dbg !582, !tbaa !579
  ret %struct.dpmatrix_s* %0, !dbg !583
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @ResizePlan7Matrix(%struct.dpmatrix_s* %mx, i32 %N, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !57), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !58), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !59), !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !60), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !61), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !62), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !63), !dbg !585
  %maxN = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 8, !dbg !586
  %0 = load i32* %maxN, align 4, !dbg !586, !tbaa !579
  %cmp = icmp slt i32 %0, %N, !dbg !586
  br i1 %cmp, label %if.then4, label %land.lhs.true, !dbg !586

land.lhs.true:                                    ; preds = %entry
  %maxM = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 9, !dbg !586
  %1 = load i32* %maxM, align 4, !dbg !586, !tbaa !579
  %cmp1 = icmp slt i32 %1, %M, !dbg !586
  br i1 %cmp1, label %if.end27, label %DONE, !dbg !586

if.then4:                                         ; preds = %entry
  %padN = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 10, !dbg !587
  %2 = load i32* %padN, align 4, !dbg !587, !tbaa !579
  %add = add nsw i32 %2, %N, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !58), !dbg !587
  store i32 %add, i32* %maxN, align 4, !dbg !589, !tbaa !579
  %xmx6 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !590
  %3 = load i32*** %xmx6, align 8, !dbg !590, !tbaa !555
  %4 = bitcast i32** %3 to i8*, !dbg !590
  %add7 = add nsw i32 %add, 1, !dbg !590
  %conv = sext i32 %add7 to i64, !dbg !590
  %mul = shl nsw i64 %conv, 3, !dbg !590
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 133, i8* %4, i64 %mul) #6, !dbg !590
  %5 = bitcast i8* %call to i32**, !dbg !590
  store i32** %5, i32*** %xmx6, align 8, !dbg !590, !tbaa !555
  %mmx9 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !591
  %6 = load i32*** %mmx9, align 8, !dbg !591, !tbaa !555
  %7 = bitcast i32** %6 to i8*, !dbg !591
  %call13 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 134, i8* %7, i64 %mul) #6, !dbg !591
  %8 = bitcast i8* %call13 to i32**, !dbg !591
  store i32** %8, i32*** %mmx9, align 8, !dbg !591, !tbaa !555
  %imx15 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !592
  %9 = load i32*** %imx15, align 8, !dbg !592, !tbaa !555
  %10 = bitcast i32** %9 to i8*, !dbg !592
  %call19 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 135, i8* %10, i64 %mul) #6, !dbg !592
  %11 = bitcast i8* %call19 to i32**, !dbg !592
  store i32** %11, i32*** %imx15, align 8, !dbg !592, !tbaa !555
  %dmx21 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !593
  %12 = load i32*** %dmx21, align 8, !dbg !593, !tbaa !555
  %13 = bitcast i32** %12 to i8*, !dbg !593
  %call25 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 136, i8* %13, i64 %mul) #6, !dbg !593
  %14 = bitcast i8* %call25 to i32**, !dbg !593
  store i32** %14, i32*** %dmx21, align 8, !dbg !593, !tbaa !555
  br label %if.end27, !dbg !594

if.end27:                                         ; preds = %land.lhs.true, %if.then4
  %N.addr.0 = phi i32 [ %add, %if.then4 ], [ %N, %land.lhs.true ]
  %maxM28 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 9, !dbg !595
  %15 = load i32* %maxM28, align 4, !dbg !595, !tbaa !579
  %cmp29 = icmp slt i32 %15, %M, !dbg !595
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !595

if.then31:                                        ; preds = %if.end27
  %padM = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 11, !dbg !596
  %16 = load i32* %padM, align 4, !dbg !596, !tbaa !579
  %add32 = add nsw i32 %16, %M, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !59), !dbg !596
  store i32 %add32, i32* %maxM28, align 4, !dbg !598, !tbaa !579
  br label %if.end34, !dbg !599

if.end34:                                         ; preds = %if.then31, %if.end27
  %M.addr.0 = phi i32 [ %add32, %if.then31 ], [ %M, %if.end27 ]
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 4, !dbg !600
  %17 = load i8** %xmx_mem, align 8, !dbg !600, !tbaa !555
  %add35 = add i32 %N.addr.0, 1, !dbg !600
  %mul36 = mul nsw i32 %add35, 5, !dbg !600
  %conv37 = sext i32 %mul36 to i64, !dbg !600
  %mul38 = shl nsw i64 %conv37, 2, !dbg !600
  %call39 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 144, i8* %17, i64 %mul38) #6, !dbg !600
  store i8* %call39, i8** %xmx_mem, align 8, !dbg !600, !tbaa !555
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 5, !dbg !601
  %18 = load i8** %mmx_mem, align 8, !dbg !601, !tbaa !555
  %add42 = add nsw i32 %M.addr.0, 2, !dbg !601
  %mul43 = mul nsw i32 %add42, %add35, !dbg !601
  %conv44 = sext i32 %mul43 to i64, !dbg !601
  %mul45 = shl nsw i64 %conv44, 2, !dbg !601
  %call46 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 145, i8* %18, i64 %mul45) #6, !dbg !601
  store i8* %call46, i8** %mmx_mem, align 8, !dbg !601, !tbaa !555
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 6, !dbg !602
  %19 = load i8** %imx_mem, align 8, !dbg !602, !tbaa !555
  %call53 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 146, i8* %19, i64 %mul45) #6, !dbg !602
  store i8* %call53, i8** %imx_mem, align 8, !dbg !602, !tbaa !555
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 7, !dbg !603
  %20 = load i8** %dmx_mem, align 8, !dbg !603, !tbaa !555
  %call60 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 147, i8* %20, i64 %mul45) #6, !dbg !603
  store i8* %call60, i8** %dmx_mem, align 8, !dbg !603, !tbaa !555
  %21 = load i8** %xmx_mem, align 8, !dbg !604, !tbaa !555
  %22 = bitcast i8* %21 to i32*, !dbg !604
  %xmx63 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !604
  %23 = load i32*** %xmx63, align 8, !dbg !604, !tbaa !555
  store i32* %22, i32** %23, align 8, !dbg !604, !tbaa !555
  %24 = load i8** %mmx_mem, align 8, !dbg !605, !tbaa !555
  %25 = bitcast i8* %24 to i32*, !dbg !605
  %mmx65 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !605
  %26 = load i32*** %mmx65, align 8, !dbg !605, !tbaa !555
  store i32* %25, i32** %26, align 8, !dbg !605, !tbaa !555
  %27 = load i8** %imx_mem, align 8, !dbg !606, !tbaa !555
  %28 = bitcast i8* %27 to i32*, !dbg !606
  %imx68 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !606
  %29 = load i32*** %imx68, align 8, !dbg !606, !tbaa !555
  store i32* %28, i32** %29, align 8, !dbg !606, !tbaa !555
  %30 = load i8** %dmx_mem, align 8, !dbg !607, !tbaa !555
  %31 = bitcast i8* %30 to i32*, !dbg !607
  %dmx71 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !607
  %32 = load i32*** %dmx71, align 8, !dbg !607, !tbaa !555
  store i32* %31, i32** %32, align 8, !dbg !607, !tbaa !555
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !64), !dbg !608
  %cmp73204 = icmp slt i32 %N.addr.0, 1, !dbg !608
  br i1 %cmp73204, label %DONE, label %for.body, !dbg !608

for.body:                                         ; preds = %if.end34, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.end34 ]
  %33 = load i32*** %xmx63, align 8, !dbg !610, !tbaa !555
  %34 = load i32** %33, align 8, !dbg !610, !tbaa !555
  %35 = trunc i64 %indvars.iv to i32, !dbg !610
  %sext = mul i64 %indvars.iv, 21474836480, !dbg !610
  %idx.ext = ashr exact i64 %sext, 32, !dbg !610
  %add.ptr = getelementptr inbounds i32* %34, i64 %idx.ext, !dbg !610
  %arrayidx79 = getelementptr inbounds i32** %33, i64 %indvars.iv, !dbg !610
  store i32* %add.ptr, i32** %arrayidx79, align 8, !dbg !610, !tbaa !555
  %36 = load i32*** %mmx65, align 8, !dbg !612, !tbaa !555
  %37 = load i32** %36, align 8, !dbg !612, !tbaa !555
  %mul83 = mul nsw i32 %35, %add42, !dbg !612
  %idx.ext84 = sext i32 %mul83 to i64, !dbg !612
  %add.ptr85 = getelementptr inbounds i32* %37, i64 %idx.ext84, !dbg !612
  %arrayidx88 = getelementptr inbounds i32** %36, i64 %indvars.iv, !dbg !612
  store i32* %add.ptr85, i32** %arrayidx88, align 8, !dbg !612, !tbaa !555
  %38 = load i32*** %imx68, align 8, !dbg !613, !tbaa !555
  %39 = load i32** %38, align 8, !dbg !613, !tbaa !555
  %add.ptr94 = getelementptr inbounds i32* %39, i64 %idx.ext84, !dbg !613
  %arrayidx97 = getelementptr inbounds i32** %38, i64 %indvars.iv, !dbg !613
  store i32* %add.ptr94, i32** %arrayidx97, align 8, !dbg !613, !tbaa !555
  %40 = load i32*** %dmx71, align 8, !dbg !614, !tbaa !555
  %41 = load i32** %40, align 8, !dbg !614, !tbaa !555
  %add.ptr103 = getelementptr inbounds i32* %41, i64 %idx.ext84, !dbg !614
  %arrayidx106 = getelementptr inbounds i32** %40, i64 %indvars.iv, !dbg !614
  store i32* %add.ptr103, i32** %arrayidx106, align 8, !dbg !614, !tbaa !555
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !608
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !608
  %exitcond = icmp eq i32 %lftr.wideiv, %add35, !dbg !608
  br i1 %exitcond, label %DONE, label %for.body, !dbg !608

DONE:                                             ; preds = %if.end34, %for.body, %land.lhs.true
  %cmp107 = icmp eq i32*** %xmx, null, !dbg !615
  br i1 %cmp107, label %if.end111, label %if.then109, !dbg !615

if.then109:                                       ; preds = %DONE
  %xmx110 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !615
  %42 = load i32*** %xmx110, align 8, !dbg !615, !tbaa !555
  store i32** %42, i32*** %xmx, align 8, !dbg !615, !tbaa !555
  br label %if.end111, !dbg !615

if.end111:                                        ; preds = %DONE, %if.then109
  %cmp112 = icmp eq i32*** %mmx, null, !dbg !616
  br i1 %cmp112, label %if.end116, label %if.then114, !dbg !616

if.then114:                                       ; preds = %if.end111
  %mmx115 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !616
  %43 = load i32*** %mmx115, align 8, !dbg !616, !tbaa !555
  store i32** %43, i32*** %mmx, align 8, !dbg !616, !tbaa !555
  br label %if.end116, !dbg !616

if.end116:                                        ; preds = %if.end111, %if.then114
  %cmp117 = icmp eq i32*** %imx, null, !dbg !617
  br i1 %cmp117, label %if.end121, label %if.then119, !dbg !617

if.then119:                                       ; preds = %if.end116
  %imx120 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !617
  %44 = load i32*** %imx120, align 8, !dbg !617, !tbaa !555
  store i32** %44, i32*** %imx, align 8, !dbg !617, !tbaa !555
  br label %if.end121, !dbg !617

if.end121:                                        ; preds = %if.end116, %if.then119
  %cmp122 = icmp eq i32*** %dmx, null, !dbg !618
  br i1 %cmp122, label %if.end126, label %if.then124, !dbg !618

if.then124:                                       ; preds = %if.end121
  %dmx125 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !618
  %45 = load i32*** %dmx125, align 8, !dbg !618, !tbaa !555
  store i32** %45, i32*** %dmx, align 8, !dbg !618, !tbaa !555
  br label %if.end126, !dbg !618

if.end126:                                        ; preds = %if.end121, %if.then124
  ret void, !dbg !619
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %rows, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %rows}, i64 0, metadata !69), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !70), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !71), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !72), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !73), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !74), !dbg !620
  %sub = add nsw i32 %rows, -1, !dbg !621
  %call = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %sub, i32 %M, i32 0, i32 0) #7, !dbg !621
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call}, i64 0, metadata !75), !dbg !621
  %cmp = icmp eq i32*** %xmx, null, !dbg !622
  br i1 %cmp, label %if.end, label %if.then, !dbg !622

if.then:                                          ; preds = %entry
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 0, !dbg !622
  %0 = load i32*** %xmx1, align 8, !dbg !622, !tbaa !555
  store i32** %0, i32*** %xmx, align 8, !dbg !622, !tbaa !555
  br label %if.end, !dbg !622

if.end:                                           ; preds = %entry, %if.then
  %cmp2 = icmp eq i32*** %mmx, null, !dbg !623
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !623

if.then3:                                         ; preds = %if.end
  %mmx4 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 1, !dbg !623
  %1 = load i32*** %mmx4, align 8, !dbg !623, !tbaa !555
  store i32** %1, i32*** %mmx, align 8, !dbg !623, !tbaa !555
  br label %if.end5, !dbg !623

if.end5:                                          ; preds = %if.end, %if.then3
  %cmp6 = icmp eq i32*** %imx, null, !dbg !624
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !624

if.then7:                                         ; preds = %if.end5
  %imx8 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 2, !dbg !624
  %2 = load i32*** %imx8, align 8, !dbg !624, !tbaa !555
  store i32** %2, i32*** %imx, align 8, !dbg !624, !tbaa !555
  br label %if.end9, !dbg !624

if.end9:                                          ; preds = %if.end5, %if.then7
  %cmp10 = icmp eq i32*** %dmx, null, !dbg !625
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !625

if.then11:                                        ; preds = %if.end9
  %dmx12 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 3, !dbg !625
  %3 = load i32*** %dmx12, align 8, !dbg !625, !tbaa !555
  store i32** %3, i32*** %dmx, align 8, !dbg !625, !tbaa !555
  br label %if.end13, !dbg !625

if.end13:                                         ; preds = %if.end9, %if.then11
  ret %struct.dpmatrix_s* %call, !dbg !626
}

; Function Attrs: nounwind optsize uwtable
define void @FreePlan7Matrix(%struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !80), !dbg !627
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 4, !dbg !628
  %0 = load i8** %xmx_mem, align 8, !dbg !628, !tbaa !555
  tail call void @free(i8* %0) #6, !dbg !628
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 5, !dbg !629
  %1 = load i8** %mmx_mem, align 8, !dbg !629, !tbaa !555
  tail call void @free(i8* %1) #6, !dbg !629
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 6, !dbg !630
  %2 = load i8** %imx_mem, align 8, !dbg !630, !tbaa !555
  tail call void @free(i8* %2) #6, !dbg !630
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 7, !dbg !631
  %3 = load i8** %dmx_mem, align 8, !dbg !631, !tbaa !555
  tail call void @free(i8* %3) #6, !dbg !631
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !632
  %4 = load i32*** %xmx, align 8, !dbg !632, !tbaa !555
  %5 = bitcast i32** %4 to i8*, !dbg !632
  tail call void @free(i8* %5) #6, !dbg !632
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !633
  %6 = load i32*** %mmx, align 8, !dbg !633, !tbaa !555
  %7 = bitcast i32** %6 to i8*, !dbg !633
  tail call void @free(i8* %7) #6, !dbg !633
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !634
  %8 = load i32*** %imx, align 8, !dbg !634, !tbaa !555
  %9 = bitcast i32** %8 to i8*, !dbg !634
  tail call void @free(i8* %9) #6, !dbg !634
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !635
  %10 = load i32*** %dmx, align 8, !dbg !635, !tbaa !555
  %11 = bitcast i32** %10 to i8*, !dbg !635
  tail call void @free(i8* %11) #6, !dbg !635
  %12 = bitcast %struct.dpmatrix_s* %mx to i8*, !dbg !636
  tail call void @free(i8* %12) #6, !dbg !636
  ret void, !dbg !637
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.dpshadow_s* @AllocShadowMatrix(i32 %rows, i32 %M, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %rows}, i64 0, metadata !97), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !98), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !99), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !100), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !101), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !102), !dbg !638
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 244, i64 40) #6, !dbg !639
  %0 = bitcast i8* %call to %struct.dpshadow_s*, !dbg !639
  tail call void @llvm.dbg.value(metadata !{%struct.dpshadow_s* %0}, i64 0, metadata !103), !dbg !639
  %conv = sext i32 %rows to i64, !dbg !640
  %mul = shl nsw i64 %conv, 3, !dbg !640
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 245, i64 %mul) #6, !dbg !640
  %1 = bitcast i8* %call1 to i8**, !dbg !640
  %xtb2 = bitcast i8* %call to i8***, !dbg !640
  store i8** %1, i8*** %xtb2, align 8, !dbg !640, !tbaa !555
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 246, i64 %mul) #6, !dbg !641
  %2 = bitcast i8* %call5 to i8**, !dbg !641
  %mtb6 = getelementptr inbounds i8* %call, i64 8, !dbg !641
  %3 = bitcast i8* %mtb6 to i8***, !dbg !641
  store i8** %2, i8*** %3, align 8, !dbg !641, !tbaa !555
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 247, i64 %mul) #6, !dbg !642
  %4 = bitcast i8* %call9 to i8**, !dbg !642
  %itb10 = getelementptr inbounds i8* %call, i64 16, !dbg !642
  %5 = bitcast i8* %itb10 to i8***, !dbg !642
  store i8** %4, i8*** %5, align 8, !dbg !642, !tbaa !555
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 248, i64 %mul) #6, !dbg !643
  %6 = bitcast i8* %call13 to i8**, !dbg !643
  %dtb14 = getelementptr inbounds i8* %call, i64 24, !dbg !643
  %7 = bitcast i8* %dtb14 to i8***, !dbg !643
  store i8** %6, i8*** %7, align 8, !dbg !643, !tbaa !555
  %mul16 = shl nsw i64 %conv, 2, !dbg !644
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 249, i64 %mul16) #6, !dbg !644
  %8 = bitcast i8* %call17 to i32*, !dbg !644
  %esrc = getelementptr inbounds i8* %call, i64 32, !dbg !644
  %9 = bitcast i8* %esrc to i32**, !dbg !644
  store i32* %8, i32** %9, align 8, !dbg !644, !tbaa !555
  %mul18 = mul nsw i32 %rows, 5, !dbg !645
  %conv19 = sext i32 %mul18 to i64, !dbg !645
  %call21 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 250, i64 %conv19) #6, !dbg !645
  %10 = load i8*** %xtb2, align 8, !dbg !645, !tbaa !555
  store i8* %call21, i8** %10, align 8, !dbg !645, !tbaa !555
  %add = add nsw i32 %M, 2, !dbg !646
  %mul23 = mul nsw i32 %add, %rows, !dbg !646
  %conv24 = sext i32 %mul23 to i64, !dbg !646
  %call26 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 251, i64 %conv24) #6, !dbg !646
  %11 = load i8*** %3, align 8, !dbg !646, !tbaa !555
  store i8* %call26, i8** %11, align 8, !dbg !646, !tbaa !555
  %call33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 252, i64 %conv24) #6, !dbg !647
  %12 = load i8*** %5, align 8, !dbg !647, !tbaa !555
  store i8* %call33, i8** %12, align 8, !dbg !647, !tbaa !555
  %call40 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 253, i64 %conv24) #6, !dbg !648
  %13 = load i8*** %7, align 8, !dbg !648, !tbaa !555
  store i8* %call40, i8** %13, align 8, !dbg !648, !tbaa !555
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !104), !dbg !649
  %cmp142 = icmp sgt i32 %rows, 1, !dbg !649
  br i1 %cmp142, label %for.body, label %for.end, !dbg !649

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %14 = load i8*** %xtb2, align 8, !dbg !651, !tbaa !555
  %15 = load i8** %14, align 8, !dbg !651, !tbaa !555
  %16 = trunc i64 %indvars.iv to i32, !dbg !651
  %sext = mul i64 %indvars.iv, 21474836480, !dbg !651
  %idx.ext = ashr exact i64 %sext, 32, !dbg !651
  %add.ptr = getelementptr inbounds i8* %15, i64 %idx.ext, !dbg !651
  %arrayidx48 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !651
  store i8* %add.ptr, i8** %arrayidx48, align 8, !dbg !651, !tbaa !555
  %17 = load i8*** %3, align 8, !dbg !653, !tbaa !555
  %18 = load i8** %17, align 8, !dbg !653, !tbaa !555
  %mul52 = mul nsw i32 %16, %add, !dbg !653
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !653
  %add.ptr54 = getelementptr inbounds i8* %18, i64 %idx.ext53, !dbg !653
  %arrayidx57 = getelementptr inbounds i8** %17, i64 %indvars.iv, !dbg !653
  store i8* %add.ptr54, i8** %arrayidx57, align 8, !dbg !653, !tbaa !555
  %19 = load i8*** %5, align 8, !dbg !654, !tbaa !555
  %20 = load i8** %19, align 8, !dbg !654, !tbaa !555
  %add.ptr63 = getelementptr inbounds i8* %20, i64 %idx.ext53, !dbg !654
  %arrayidx66 = getelementptr inbounds i8** %19, i64 %indvars.iv, !dbg !654
  store i8* %add.ptr63, i8** %arrayidx66, align 8, !dbg !654, !tbaa !555
  %21 = load i8*** %7, align 8, !dbg !655, !tbaa !555
  %22 = load i8** %21, align 8, !dbg !655, !tbaa !555
  %add.ptr72 = getelementptr inbounds i8* %22, i64 %idx.ext53, !dbg !655
  %arrayidx75 = getelementptr inbounds i8** %21, i64 %indvars.iv, !dbg !655
  store i8* %add.ptr72, i8** %arrayidx75, align 8, !dbg !655, !tbaa !555
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !649
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !649
  %exitcond = icmp eq i32 %lftr.wideiv, %rows, !dbg !649
  br i1 %exitcond, label %for.end, label %for.body, !dbg !649

for.end:                                          ; preds = %for.body, %entry
  %cmp76 = icmp eq i8*** %xtb, null, !dbg !656
  br i1 %cmp76, label %if.end, label %if.then, !dbg !656

if.then:                                          ; preds = %for.end
  %23 = load i8*** %xtb2, align 8, !dbg !656, !tbaa !555
  store i8** %23, i8*** %xtb, align 8, !dbg !656, !tbaa !555
  br label %if.end, !dbg !656

if.end:                                           ; preds = %for.end, %if.then
  %cmp79 = icmp eq i8*** %mtb, null, !dbg !657
  br i1 %cmp79, label %if.end83, label %if.then81, !dbg !657

if.then81:                                        ; preds = %if.end
  %24 = load i8*** %3, align 8, !dbg !657, !tbaa !555
  store i8** %24, i8*** %mtb, align 8, !dbg !657, !tbaa !555
  br label %if.end83, !dbg !657

if.end83:                                         ; preds = %if.end, %if.then81
  %cmp84 = icmp eq i8*** %itb, null, !dbg !658
  br i1 %cmp84, label %if.end88, label %if.then86, !dbg !658

if.then86:                                        ; preds = %if.end83
  %25 = load i8*** %5, align 8, !dbg !658, !tbaa !555
  store i8** %25, i8*** %itb, align 8, !dbg !658, !tbaa !555
  br label %if.end88, !dbg !658

if.end88:                                         ; preds = %if.end83, %if.then86
  %cmp89 = icmp eq i8*** %dtb, null, !dbg !659
  br i1 %cmp89, label %if.end93, label %if.then91, !dbg !659

if.then91:                                        ; preds = %if.end88
  %26 = load i8*** %7, align 8, !dbg !659, !tbaa !555
  store i8** %26, i8*** %dtb, align 8, !dbg !659, !tbaa !555
  br label %if.end93, !dbg !659

if.end93:                                         ; preds = %if.end88, %if.then91
  ret %struct.dpshadow_s* %0, !dbg !660
}

; Function Attrs: nounwind optsize uwtable
define void @FreeShadowMatrix(%struct.dpshadow_s* nocapture %tb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.dpshadow_s* %tb}, i64 0, metadata !109), !dbg !661
  %xtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 0, !dbg !662
  %0 = load i8*** %xtb, align 8, !dbg !662, !tbaa !555
  %1 = load i8** %0, align 8, !dbg !662, !tbaa !555
  tail call void @free(i8* %1) #6, !dbg !662
  %mtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 1, !dbg !663
  %2 = load i8*** %mtb, align 8, !dbg !663, !tbaa !555
  %3 = load i8** %2, align 8, !dbg !663, !tbaa !555
  tail call void @free(i8* %3) #6, !dbg !663
  %itb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 2, !dbg !664
  %4 = load i8*** %itb, align 8, !dbg !664, !tbaa !555
  %5 = load i8** %4, align 8, !dbg !664, !tbaa !555
  tail call void @free(i8* %5) #6, !dbg !664
  %dtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 3, !dbg !665
  %6 = load i8*** %dtb, align 8, !dbg !665, !tbaa !555
  %7 = load i8** %6, align 8, !dbg !665, !tbaa !555
  tail call void @free(i8* %7) #6, !dbg !665
  %esrc = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 4, !dbg !666
  %8 = load i32** %esrc, align 8, !dbg !666, !tbaa !555
  %9 = bitcast i32* %8 to i8*, !dbg !666
  tail call void @free(i8* %9) #6, !dbg !666
  %10 = load i8*** %xtb, align 8, !dbg !667, !tbaa !555
  %11 = bitcast i8** %10 to i8*, !dbg !667
  tail call void @free(i8* %11) #6, !dbg !667
  %12 = load i8*** %mtb, align 8, !dbg !668, !tbaa !555
  %13 = bitcast i8** %12 to i8*, !dbg !668
  tail call void @free(i8* %13) #6, !dbg !668
  %14 = load i8*** %itb, align 8, !dbg !669, !tbaa !555
  %15 = bitcast i8** %14 to i8*, !dbg !669
  tail call void @free(i8* %15) #6, !dbg !669
  %16 = load i8*** %dtb, align 8, !dbg !670, !tbaa !555
  %17 = bitcast i8** %16 to i8*, !dbg !670
  tail call void @free(i8* %17) #6, !dbg !670
  %18 = bitcast %struct.dpshadow_s* %tb to i8*, !dbg !671
  tail call void @free(i8* %18) #6, !dbg !671
  ret void, !dbg !672
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7ViterbiSize(i32 %L, i32 %M) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !114), !dbg !673
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !115), !dbg !673
  tail call void @llvm.dbg.value(metadata !674, i64 0, metadata !116), !dbg !675
  %add = add nsw i32 %L, 1, !dbg !676
  %conv = sitofp i32 %add to float, !dbg !676
  %conv1 = fpext float %conv to double, !dbg !676
  %mul = fmul double %conv1, 3.000000e+00, !dbg !676
  %add2 = add nsw i32 %M, 2, !dbg !676
  %conv3 = sitofp i32 %add2 to float, !dbg !676
  %conv4 = fpext float %conv3 to double, !dbg !676
  %mul5 = fmul double %mul, %conv4, !dbg !676
  %mul6 = fmul double %mul5, 4.000000e+00, !dbg !676
  %add8 = fadd double %mul6, 8.000000e+01, !dbg !676
  %conv9 = fptrunc double %add8 to float, !dbg !676
  tail call void @llvm.dbg.value(metadata !{float %conv9}, i64 0, metadata !116), !dbg !676
  %mul13 = fmul double %conv1, 4.000000e+00, !dbg !677
  %mul14 = fmul double %mul13, 8.000000e+00, !dbg !677
  %conv15 = fpext float %conv9 to double, !dbg !677
  %add16 = fadd double %mul14, %conv15, !dbg !677
  %conv17 = fptrunc double %add16 to float, !dbg !677
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !116), !dbg !677
  %mul21 = fmul double %conv1, 5.000000e+00, !dbg !678
  %mul22 = fmul double %mul21, 4.000000e+00, !dbg !678
  %conv23 = fpext float %conv17 to double, !dbg !678
  %add24 = fadd double %mul22, %conv23, !dbg !678
  %conv25 = fptrunc double %add24 to float, !dbg !678
  tail call void @llvm.dbg.value(metadata !{float %conv25}, i64 0, metadata !116), !dbg !678
  %conv27 = fmul float %conv25, 0x3EB0000000000000, !dbg !679
  tail call void @llvm.dbg.value(metadata !{float %conv27}, i64 0, metadata !116), !dbg !679
  %conv28 = fptosi float %conv27 to i32, !dbg !680
  ret i32 %conv28, !dbg !680
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7SmallViterbiSize(i32 %L, i32 %M) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !119), !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !120), !dbg !681
  %0 = mul i32 %M, 12, !dbg !682
  %mul = add i32 %0, 24, !dbg !682
  %conv = sext i32 %mul to i64, !dbg !682
  %add5 = shl i32 %L, 1, !dbg !682
  %mul6 = add i32 %add5, 2, !dbg !682
  %conv7 = sext i32 %mul6 to i64, !dbg !682
  %tmp = add i64 %conv, %conv7
  %tmp11 = shl nsw i64 %tmp, 2
  %add9 = add i64 %tmp11, 368, !dbg !682
  %div = udiv i64 %add9, 1000000, !dbg !682
  %conv10 = trunc i64 %div to i32, !dbg !682
  ret i32 %conv10, !dbg !682
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7WeeViterbiSize(i32 %L, i32 %M) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !123), !dbg !683
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !124), !dbg !683
  %0 = mul i32 %M, 12, !dbg !684
  %mul = add i32 %0, 24, !dbg !684
  %conv = sext i32 %mul to i64, !dbg !684
  %add5 = add nsw i32 %L, 2, !dbg !684
  %mul6 = shl nsw i32 %add5, 1, !dbg !684
  %conv7 = sext i32 %mul6 to i64, !dbg !684
  %conv11 = sext i32 %add5 to i64, !dbg !684
  %tmp = add i64 %conv7, %conv11
  %tmp21 = add i64 %tmp, %conv
  %tmp22 = shl nsw i64 %tmp21, 2
  %add13 = add i64 %conv11, 368, !dbg !684
  %add17 = add i64 %add13, %tmp22, !dbg !684
  %div = udiv i64 %add17, 1000000, !dbg !684
  %conv18 = trunc i64 %div to i32, !dbg !684
  ret i32 %conv18, !dbg !684
}

; Function Attrs: nounwind optsize uwtable
define float @P7Forward(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !191), !dbg !685
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !192), !dbg !685
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !193), !dbg !685
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %ret_mx}, i64 0, metadata !194), !dbg !685
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !686
  %0 = load i32* %M, align 4, !dbg !686, !tbaa !579
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !687) #8, !dbg !688
  %call.i = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %L, i32 %0, i32 0, i32 0) #6, !dbg !689
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !690) #8, !dbg !689
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0, !dbg !691
  %1 = load i32*** %xmx1.i, align 8, !dbg !691, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !691
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !692), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !693
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !695
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !695
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !695
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !702
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !703
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !706
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !706
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !707
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !707
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !708
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !708
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !196), !dbg !709
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1, !dbg !710
  %2 = load i32*** %mmx4.i, align 8, !dbg !710, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !711), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !716
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !718
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !197), !dbg !704
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2, !dbg !721
  %3 = load i32*** %imx8.i, align 8, !dbg !721, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !721
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !722), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !718
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !718
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !723
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !198), !dbg !719
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3, !dbg !724
  %4 = load i32*** %dmx12.i, align 8, !dbg !724, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !724
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !725), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !714
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !199), !dbg !701
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !195), !dbg !686
  %5 = load i32** %1, align 8, !dbg !693, !tbaa !555
  %arrayidx1 = getelementptr inbounds i32* %5, i64 4, !dbg !693
  store i32 0, i32* %arrayidx1, align 4, !dbg !693, !tbaa !579
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !694
  %6 = load i32* %arrayidx3, align 4, !dbg !694, !tbaa !579
  store i32 %6, i32* %5, align 4, !dbg !694, !tbaa !579
  %arrayidx7 = getelementptr inbounds i32* %5, i64 3, !dbg !695
  store i32 -987654321, i32* %arrayidx7, align 4, !dbg !695, !tbaa !579
  %arrayidx9 = getelementptr inbounds i32* %5, i64 2, !dbg !695
  store i32 -987654321, i32* %arrayidx9, align 4, !dbg !695, !tbaa !579
  %arrayidx11 = getelementptr inbounds i32* %5, i64 1, !dbg !695
  store i32 -987654321, i32* %arrayidx11, align 4, !dbg !695, !tbaa !579
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !201), !dbg !726
  %7 = load i32* %M, align 4, !dbg !726, !tbaa !579
  %cmp501 = icmp slt i32 %7, 0, !dbg !726
  br i1 %cmp501, label %for.cond21.preheader, label %for.body.lr.ph, !dbg !726

for.body.lr.ph:                                   ; preds = %entry
  %8 = load i32** %4, align 8, !dbg !712, !tbaa !555
  %9 = load i32** %3, align 8, !dbg !712, !tbaa !555
  %10 = load i32** %2, align 8, !dbg !712, !tbaa !555
  br label %for.body, !dbg !726

for.cond21.preheader:                             ; preds = %for.body, %entry
  %cmp22499 = icmp slt i32 %L, 1, !dbg !727
  br i1 %cmp22499, label %for.end332, label %for.body23.lr.ph, !dbg !727

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %tsc173 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !719
  %bsc199 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !701
  %msc229 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !720
  %arrayidx244 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !702
  %arrayidx280 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !706
  %arrayidx287 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !706
  %arrayidx305 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !707
  %arrayidx317 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !708
  %arrayidx324 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !708
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !704
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !723
  %11 = add i32 %L, 1, !dbg !727
  br label %for.body23, !dbg !727

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv511, !dbg !712
  store i32 -987654321, i32* %arrayidx14, align 4, !dbg !712, !tbaa !579
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv511, !dbg !712
  store i32 -987654321, i32* %arrayidx17, align 4, !dbg !712, !tbaa !579
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv511, !dbg !712
  store i32 -987654321, i32* %arrayidx20, align 4, !dbg !712, !tbaa !579
  %indvars.iv.next512 = add i64 %indvars.iv511, 1, !dbg !726
  %12 = load i32* %M, align 4, !dbg !726, !tbaa !579
  %13 = trunc i64 %indvars.iv511 to i32, !dbg !726
  %cmp = icmp slt i32 %13, %12, !dbg !726
  br i1 %cmp, label %for.body, label %for.cond21.preheader, !dbg !726

for.body23:                                       ; preds = %for.end273, %for.body23.lr.ph
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %for.end273 ], [ 1, %for.body23.lr.ph ]
  %arrayidx25 = getelementptr inbounds i32** %4, i64 %indvars.iv507, !dbg !714
  %14 = load i32** %arrayidx25, align 8, !dbg !714, !tbaa !555
  store i32 -987654321, i32* %14, align 4, !dbg !714, !tbaa !579
  %arrayidx28 = getelementptr inbounds i32** %3, i64 %indvars.iv507, !dbg !714
  %15 = load i32** %arrayidx28, align 8, !dbg !714, !tbaa !555
  store i32 -987654321, i32* %15, align 4, !dbg !714, !tbaa !579
  %arrayidx31 = getelementptr inbounds i32** %2, i64 %indvars.iv507, !dbg !714
  %16 = load i32** %arrayidx31, align 8, !dbg !714, !tbaa !555
  store i32 -987654321, i32* %16, align 4, !dbg !714, !tbaa !579
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !201), !dbg !728
  %17 = load i32* %M, align 4, !dbg !728, !tbaa !579
  %cmp35495 = icmp sgt i32 %17, 1, !dbg !728
  %18 = add nsw i64 %indvars.iv507, -1, !dbg !715
  %arrayidx40 = getelementptr inbounds i32** %2, i64 %18, !dbg !715
  %arrayidx51 = getelementptr inbounds i32** %3, i64 %18, !dbg !715
  %arrayidx62 = getelementptr inbounds i32** %1, i64 %18, !dbg !696
  %arrayidx71 = getelementptr inbounds i32** %4, i64 %18, !dbg !696
  %arrayidx87 = getelementptr inbounds i8* %dsq, i64 %indvars.iv507, !dbg !716
  br i1 %cmp35495, label %for.body36, label %for.end162, !dbg !728

for.body36:                                       ; preds = %for.body23, %for.body36
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body36 ], [ 1, %for.body23 ]
  %19 = add nsw i64 %indvars.iv, -1, !dbg !715
  %20 = load i32** %arrayidx40, align 8, !dbg !715, !tbaa !555
  %arrayidx41 = getelementptr inbounds i32* %20, i64 %19, !dbg !715
  %21 = load i32* %arrayidx41, align 4, !dbg !715, !tbaa !579
  %22 = load i32*** %tsc173, align 8, !dbg !715, !tbaa !555
  %23 = load i32** %22, align 8, !dbg !715, !tbaa !555
  %arrayidx45 = getelementptr inbounds i32* %23, i64 %19, !dbg !715
  %24 = load i32* %arrayidx45, align 4, !dbg !715, !tbaa !579
  %add46 = add nsw i32 %24, %21, !dbg !715
  %25 = load i32** %arrayidx51, align 8, !dbg !715, !tbaa !555
  %arrayidx52 = getelementptr inbounds i32* %25, i64 %19, !dbg !715
  %26 = load i32* %arrayidx52, align 4, !dbg !715, !tbaa !579
  %arrayidx56 = getelementptr inbounds i32** %22, i64 3, !dbg !715
  %27 = load i32** %arrayidx56, align 8, !dbg !715, !tbaa !555
  %arrayidx57 = getelementptr inbounds i32* %27, i64 %19, !dbg !715
  %28 = load i32* %arrayidx57, align 4, !dbg !715, !tbaa !579
  %add58 = add nsw i32 %28, %26, !dbg !715
  %call59 = tail call i32 @ILogsum(i32 %add46, i32 %add58) #6, !dbg !715
  %29 = load i32** %arrayidx62, align 8, !dbg !696, !tbaa !555
  %30 = load i32* %29, align 4, !dbg !696, !tbaa !579
  %31 = load i32** %bsc199, align 8, !dbg !696, !tbaa !555
  %arrayidx65 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !696
  %32 = load i32* %arrayidx65, align 4, !dbg !696, !tbaa !579
  %add66 = add nsw i32 %32, %30, !dbg !696
  %33 = load i32** %arrayidx71, align 8, !dbg !696, !tbaa !555
  %arrayidx72 = getelementptr inbounds i32* %33, i64 %19, !dbg !696
  %34 = load i32* %arrayidx72, align 4, !dbg !696, !tbaa !579
  %35 = load i32*** %tsc173, align 8, !dbg !696, !tbaa !555
  %arrayidx76 = getelementptr inbounds i32** %35, i64 5, !dbg !696
  %36 = load i32** %arrayidx76, align 8, !dbg !696, !tbaa !555
  %arrayidx77 = getelementptr inbounds i32* %36, i64 %19, !dbg !696
  %37 = load i32* %arrayidx77, align 4, !dbg !696, !tbaa !579
  %add78 = add nsw i32 %37, %34, !dbg !696
  %call79 = tail call i32 @ILogsum(i32 %add66, i32 %add78) #6, !dbg !696
  %call80 = tail call i32 @ILogsum(i32 %call59, i32 %call79) #6, !dbg !696
  %38 = load i32** %arrayidx31, align 8, !dbg !696, !tbaa !555
  %arrayidx84 = getelementptr inbounds i32* %38, i64 %indvars.iv, !dbg !696
  store i32 %call80, i32* %arrayidx84, align 4, !dbg !696, !tbaa !579
  %39 = load i8* %arrayidx87, align 1, !dbg !716, !tbaa !556
  %idxprom88 = sext i8 %39 to i64, !dbg !716
  %40 = load i32*** %msc229, align 8, !dbg !716, !tbaa !555
  %arrayidx89 = getelementptr inbounds i32** %40, i64 %idxprom88, !dbg !716
  %41 = load i32** %arrayidx89, align 8, !dbg !716, !tbaa !555
  %arrayidx90 = getelementptr inbounds i32* %41, i64 %indvars.iv, !dbg !716
  %42 = load i32* %arrayidx90, align 4, !dbg !716, !tbaa !579
  %add95 = add nsw i32 %call80, %42, !dbg !716
  store i32 %add95, i32* %arrayidx84, align 4, !dbg !716, !tbaa !579
  %arrayidx100 = getelementptr inbounds i32* %38, i64 %19, !dbg !717
  %43 = load i32* %arrayidx100, align 4, !dbg !717, !tbaa !579
  %44 = load i32*** %tsc173, align 8, !dbg !717, !tbaa !555
  %arrayidx104 = getelementptr inbounds i32** %44, i64 2, !dbg !717
  %45 = load i32** %arrayidx104, align 8, !dbg !717, !tbaa !555
  %arrayidx105 = getelementptr inbounds i32* %45, i64 %19, !dbg !717
  %46 = load i32* %arrayidx105, align 4, !dbg !717, !tbaa !579
  %add106 = add nsw i32 %46, %43, !dbg !717
  %47 = load i32** %arrayidx25, align 8, !dbg !717, !tbaa !555
  %arrayidx111 = getelementptr inbounds i32* %47, i64 %19, !dbg !717
  %48 = load i32* %arrayidx111, align 4, !dbg !717, !tbaa !579
  %arrayidx115 = getelementptr inbounds i32** %44, i64 6, !dbg !717
  %49 = load i32** %arrayidx115, align 8, !dbg !717, !tbaa !555
  %arrayidx116 = getelementptr inbounds i32* %49, i64 %19, !dbg !717
  %50 = load i32* %arrayidx116, align 4, !dbg !717, !tbaa !579
  %add117 = add nsw i32 %50, %48, !dbg !717
  %call118 = tail call i32 @ILogsum(i32 %add106, i32 %add117) #6, !dbg !717
  %51 = load i32** %arrayidx25, align 8, !dbg !717, !tbaa !555
  %arrayidx122 = getelementptr inbounds i32* %51, i64 %indvars.iv, !dbg !717
  store i32 %call118, i32* %arrayidx122, align 4, !dbg !717, !tbaa !579
  %52 = load i32** %arrayidx40, align 8, !dbg !718, !tbaa !555
  %arrayidx127 = getelementptr inbounds i32* %52, i64 %indvars.iv, !dbg !718
  %53 = load i32* %arrayidx127, align 4, !dbg !718, !tbaa !579
  %54 = load i32*** %tsc173, align 8, !dbg !718, !tbaa !555
  %arrayidx130 = getelementptr inbounds i32** %54, i64 1, !dbg !718
  %55 = load i32** %arrayidx130, align 8, !dbg !718, !tbaa !555
  %arrayidx131 = getelementptr inbounds i32* %55, i64 %indvars.iv, !dbg !718
  %56 = load i32* %arrayidx131, align 4, !dbg !718, !tbaa !579
  %add132 = add nsw i32 %56, %53, !dbg !718
  %57 = load i32** %arrayidx51, align 8, !dbg !718, !tbaa !555
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv, !dbg !718
  %58 = load i32* %arrayidx137, align 4, !dbg !718, !tbaa !579
  %arrayidx140 = getelementptr inbounds i32** %54, i64 4, !dbg !718
  %59 = load i32** %arrayidx140, align 8, !dbg !718, !tbaa !555
  %arrayidx141 = getelementptr inbounds i32* %59, i64 %indvars.iv, !dbg !718
  %60 = load i32* %arrayidx141, align 4, !dbg !718, !tbaa !579
  %add142 = add nsw i32 %60, %58, !dbg !718
  %call143 = tail call i32 @ILogsum(i32 %add132, i32 %add142) #6, !dbg !718
  %61 = load i32** %arrayidx28, align 8, !dbg !718, !tbaa !555
  %arrayidx147 = getelementptr inbounds i32* %61, i64 %indvars.iv, !dbg !718
  store i32 %call143, i32* %arrayidx147, align 4, !dbg !718, !tbaa !579
  %62 = load i8* %arrayidx87, align 1, !dbg !723, !tbaa !556
  %idxprom152 = sext i8 %62 to i64, !dbg !723
  %63 = load i32*** %isc, align 8, !dbg !723, !tbaa !555
  %arrayidx153 = getelementptr inbounds i32** %63, i64 %idxprom152, !dbg !723
  %64 = load i32** %arrayidx153, align 8, !dbg !723, !tbaa !555
  %arrayidx154 = getelementptr inbounds i32* %64, i64 %indvars.iv, !dbg !723
  %65 = load i32* %arrayidx154, align 4, !dbg !723, !tbaa !579
  %add159 = add nsw i32 %call143, %65, !dbg !723
  store i32 %add159, i32* %arrayidx147, align 4, !dbg !723, !tbaa !579
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !728
  %66 = load i32* %M, align 4, !dbg !728, !tbaa !579
  %67 = trunc i64 %indvars.iv.next to i32, !dbg !728
  %cmp35 = icmp slt i32 %67, %66, !dbg !728
  br i1 %cmp35, label %for.body36, label %for.end162, !dbg !728

for.end162:                                       ; preds = %for.body23, %for.body36
  %.lcssa = phi i32 [ %66, %for.body36 ], [ %17, %for.body23 ]
  %sub164 = add nsw i32 %.lcssa, -1, !dbg !719
  %idxprom165 = sext i32 %sub164 to i64, !dbg !719
  %68 = load i32** %arrayidx40, align 8, !dbg !719, !tbaa !555
  %arrayidx169 = getelementptr inbounds i32* %68, i64 %idxprom165, !dbg !719
  %69 = load i32* %arrayidx169, align 4, !dbg !719, !tbaa !579
  %70 = load i32*** %tsc173, align 8, !dbg !719, !tbaa !555
  %71 = load i32** %70, align 8, !dbg !719, !tbaa !555
  %arrayidx175 = getelementptr inbounds i32* %71, i64 %idxprom165, !dbg !719
  %72 = load i32* %arrayidx175, align 4, !dbg !719, !tbaa !579
  %add176 = add nsw i32 %72, %69, !dbg !719
  %73 = load i32** %arrayidx51, align 8, !dbg !719, !tbaa !555
  %arrayidx183 = getelementptr inbounds i32* %73, i64 %idxprom165, !dbg !719
  %74 = load i32* %arrayidx183, align 4, !dbg !719, !tbaa !579
  %arrayidx188 = getelementptr inbounds i32** %70, i64 3, !dbg !719
  %75 = load i32** %arrayidx188, align 8, !dbg !719, !tbaa !555
  %arrayidx189 = getelementptr inbounds i32* %75, i64 %idxprom165, !dbg !719
  %76 = load i32* %arrayidx189, align 4, !dbg !719, !tbaa !579
  %add190 = add nsw i32 %76, %74, !dbg !719
  %call191 = tail call i32 @ILogsum(i32 %add176, i32 %add190) #6, !dbg !719
  %77 = load i32** %arrayidx62, align 8, !dbg !701, !tbaa !555
  %78 = load i32* %77, align 4, !dbg !701, !tbaa !579
  %79 = load i32* %M, align 4, !dbg !701, !tbaa !579
  %sub197 = add nsw i32 %79, -1, !dbg !701
  %idxprom198 = sext i32 %sub197 to i64, !dbg !701
  %80 = load i32** %bsc199, align 8, !dbg !701, !tbaa !555
  %arrayidx200 = getelementptr inbounds i32* %80, i64 %idxprom198, !dbg !701
  %81 = load i32* %arrayidx200, align 4, !dbg !701, !tbaa !579
  %add201 = add nsw i32 %81, %78, !dbg !701
  %82 = load i32** %arrayidx71, align 8, !dbg !701, !tbaa !555
  %arrayidx208 = getelementptr inbounds i32* %82, i64 %idxprom198, !dbg !701
  %83 = load i32* %arrayidx208, align 4, !dbg !701, !tbaa !579
  %84 = load i32*** %tsc173, align 8, !dbg !701, !tbaa !555
  %arrayidx213 = getelementptr inbounds i32** %84, i64 5, !dbg !701
  %85 = load i32** %arrayidx213, align 8, !dbg !701, !tbaa !555
  %arrayidx214 = getelementptr inbounds i32* %85, i64 %idxprom198, !dbg !701
  %86 = load i32* %arrayidx214, align 4, !dbg !701, !tbaa !579
  %add215 = add nsw i32 %86, %83, !dbg !701
  %call216 = tail call i32 @ILogsum(i32 %add201, i32 %add215) #6, !dbg !701
  %call217 = tail call i32 @ILogsum(i32 %call191, i32 %call216) #6, !dbg !701
  %87 = load i32* %M, align 4, !dbg !701, !tbaa !579
  %idxprom219 = sext i32 %87 to i64, !dbg !701
  %88 = load i32** %arrayidx31, align 8, !dbg !701, !tbaa !555
  %arrayidx222 = getelementptr inbounds i32* %88, i64 %idxprom219, !dbg !701
  store i32 %call217, i32* %arrayidx222, align 4, !dbg !701, !tbaa !579
  %89 = load i32* %M, align 4, !dbg !720, !tbaa !579
  %idxprom224 = sext i32 %89 to i64, !dbg !720
  %90 = load i8* %arrayidx87, align 1, !dbg !720, !tbaa !556
  %idxprom228 = sext i8 %90 to i64, !dbg !720
  %91 = load i32*** %msc229, align 8, !dbg !720, !tbaa !555
  %arrayidx230 = getelementptr inbounds i32** %91, i64 %idxprom228, !dbg !720
  %92 = load i32** %arrayidx230, align 8, !dbg !720, !tbaa !555
  %arrayidx231 = getelementptr inbounds i32* %92, i64 %idxprom224, !dbg !720
  %93 = load i32* %arrayidx231, align 4, !dbg !720, !tbaa !579
  %arrayidx236 = getelementptr inbounds i32* %88, i64 %idxprom224, !dbg !720
  %94 = load i32* %arrayidx236, align 4, !dbg !720, !tbaa !579
  %add237 = add nsw i32 %94, %93, !dbg !720
  store i32 %add237, i32* %arrayidx236, align 4, !dbg !720, !tbaa !579
  %95 = load i32** %arrayidx62, align 8, !dbg !702, !tbaa !555
  %arrayidx241 = getelementptr inbounds i32* %95, i64 4, !dbg !702
  %96 = load i32* %arrayidx241, align 4, !dbg !702, !tbaa !579
  %97 = load i32* %arrayidx244, align 4, !dbg !702, !tbaa !579
  %add245 = add nsw i32 %97, %96, !dbg !702
  %arrayidx247 = getelementptr inbounds i32** %1, i64 %indvars.iv507, !dbg !702
  %98 = load i32** %arrayidx247, align 8, !dbg !702, !tbaa !555
  %arrayidx248 = getelementptr inbounds i32* %98, i64 4, !dbg !702
  store i32 %add245, i32* %arrayidx248, align 4, !dbg !702, !tbaa !579
  %arrayidx251 = getelementptr inbounds i32* %98, i64 1, !dbg !703
  store i32 -987654321, i32* %arrayidx251, align 4, !dbg !703, !tbaa !579
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !201), !dbg !729
  %99 = load i32* %M, align 4, !dbg !729, !tbaa !579
  %cmp254497 = icmp slt i32 %99, 1, !dbg !729
  br i1 %cmp254497, label %for.end273, label %for.body256, !dbg !729

for.body256:                                      ; preds = %for.end162, %for.body256.for.body256_crit_edge
  %100 = phi i32* [ %.pre513, %for.body256.for.body256_crit_edge ], [ %88, %for.end162 ]
  %101 = phi i32 [ %call267, %for.body256.for.body256_crit_edge ], [ -987654321, %for.end162 ], !dbg !704
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %for.body256.for.body256_crit_edge ], [ 1, %for.end162 ]
  %arrayidx263 = getelementptr inbounds i32* %100, i64 %indvars.iv505, !dbg !704
  %102 = load i32* %arrayidx263, align 4, !dbg !704, !tbaa !579
  %103 = load i32** %esc, align 8, !dbg !704, !tbaa !555
  %arrayidx265 = getelementptr inbounds i32* %103, i64 %indvars.iv505, !dbg !704
  %104 = load i32* %arrayidx265, align 4, !dbg !704, !tbaa !579
  %add266 = add nsw i32 %104, %102, !dbg !704
  %call267 = tail call i32 @ILogsum(i32 %101, i32 %add266) #6, !dbg !704
  %105 = load i32** %arrayidx247, align 8, !dbg !704, !tbaa !555
  %arrayidx270 = getelementptr inbounds i32* %105, i64 1, !dbg !704
  store i32 %call267, i32* %arrayidx270, align 4, !dbg !704, !tbaa !579
  %106 = load i32* %M, align 4, !dbg !729, !tbaa !579
  %107 = trunc i64 %indvars.iv505 to i32, !dbg !729
  %cmp254 = icmp slt i32 %107, %106, !dbg !729
  br i1 %cmp254, label %for.body256.for.body256_crit_edge, label %for.cond252.for.end273_crit_edge, !dbg !729

for.body256.for.body256_crit_edge:                ; preds = %for.body256
  %indvars.iv.next506 = add i64 %indvars.iv505, 1, !dbg !729
  %.pre513 = load i32** %arrayidx31, align 8, !dbg !704, !tbaa !555
  br label %for.body256, !dbg !729

for.cond252.for.end273_crit_edge:                 ; preds = %for.body256
  %.pre = load i32** %arrayidx62, align 8, !dbg !706, !tbaa !555
  br label %for.end273, !dbg !729

for.end273:                                       ; preds = %for.cond252.for.end273_crit_edge, %for.end162
  %108 = phi i32 [ %call267, %for.cond252.for.end273_crit_edge ], [ -987654321, %for.end162 ]
  %109 = phi i32* [ %.pre, %for.cond252.for.end273_crit_edge ], [ %95, %for.end162 ]
  %arrayidx277 = getelementptr inbounds i32* %109, i64 3, !dbg !706
  %110 = load i32* %arrayidx277, align 4, !dbg !706, !tbaa !579
  %111 = load i32* %arrayidx280, align 4, !dbg !706, !tbaa !579
  %add281 = add nsw i32 %111, %110, !dbg !706
  %112 = load i32* %arrayidx287, align 4, !dbg !706, !tbaa !579
  %add288 = add nsw i32 %112, %108, !dbg !706
  %call289 = tail call i32 @ILogsum(i32 %add281, i32 %add288) #6, !dbg !706
  %113 = load i32** %arrayidx247, align 8, !dbg !706, !tbaa !555
  %arrayidx292 = getelementptr inbounds i32* %113, i64 3, !dbg !706
  store i32 %call289, i32* %arrayidx292, align 4, !dbg !706, !tbaa !579
  %arrayidx295 = getelementptr inbounds i32* %113, i64 4, !dbg !707
  %114 = load i32* %arrayidx295, align 4, !dbg !707, !tbaa !579
  %115 = load i32* %arrayidx3, align 4, !dbg !707, !tbaa !579
  %add299 = add nsw i32 %115, %114, !dbg !707
  %116 = load i32* %arrayidx305, align 4, !dbg !707, !tbaa !579
  %add306 = add nsw i32 %116, %call289, !dbg !707
  %call307 = tail call i32 @ILogsum(i32 %add299, i32 %add306) #6, !dbg !707
  %117 = load i32** %arrayidx247, align 8, !dbg !707, !tbaa !555
  store i32 %call307, i32* %117, align 4, !dbg !707, !tbaa !579
  %118 = load i32** %arrayidx62, align 8, !dbg !708, !tbaa !555
  %arrayidx314 = getelementptr inbounds i32* %118, i64 2, !dbg !708
  %119 = load i32* %arrayidx314, align 4, !dbg !708, !tbaa !579
  %120 = load i32* %arrayidx317, align 4, !dbg !708, !tbaa !579
  %add318 = add nsw i32 %120, %119, !dbg !708
  %arrayidx321 = getelementptr inbounds i32* %117, i64 1, !dbg !708
  %121 = load i32* %arrayidx321, align 4, !dbg !708, !tbaa !579
  %122 = load i32* %arrayidx324, align 4, !dbg !708, !tbaa !579
  %add325 = add nsw i32 %122, %121, !dbg !708
  %call326 = tail call i32 @ILogsum(i32 %add318, i32 %add325) #6, !dbg !708
  %123 = load i32** %arrayidx247, align 8, !dbg !708, !tbaa !555
  %arrayidx329 = getelementptr inbounds i32* %123, i64 2, !dbg !708
  store i32 %call326, i32* %arrayidx329, align 4, !dbg !708, !tbaa !579
  %indvars.iv.next508 = add i64 %indvars.iv507, 1, !dbg !727
  %lftr.wideiv = trunc i64 %indvars.iv.next508 to i32, !dbg !727
  %exitcond = icmp eq i32 %lftr.wideiv, %11, !dbg !727
  br i1 %exitcond, label %for.end332, label %for.body23, !dbg !727

for.end332:                                       ; preds = %for.end273, %for.cond21.preheader
  %idxprom333 = sext i32 %L to i64, !dbg !709
  %arrayidx334 = getelementptr inbounds i32** %1, i64 %idxprom333, !dbg !709
  %124 = load i32** %arrayidx334, align 8, !dbg !709, !tbaa !555
  %arrayidx335 = getelementptr inbounds i32* %124, i64 2, !dbg !709
  %125 = load i32* %arrayidx335, align 4, !dbg !709, !tbaa !579
  %arrayidx338 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !709
  %126 = load i32* %arrayidx338, align 4, !dbg !709, !tbaa !579
  %add339 = add nsw i32 %126, %125, !dbg !709
  tail call void @llvm.dbg.value(metadata !{i32 %add339}, i64 0, metadata !202), !dbg !709
  %cmp340 = icmp eq %struct.dpmatrix_s** %ret_mx, null, !dbg !730
  br i1 %cmp340, label %if.else, label %if.then, !dbg !730

if.then:                                          ; preds = %for.end332
  store %struct.dpmatrix_s* %call.i, %struct.dpmatrix_s** %ret_mx, align 8, !dbg !730, !tbaa !555
  br label %if.end, !dbg !730

if.else:                                          ; preds = %for.end332
  tail call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #7, !dbg !731
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call342 = tail call float @Scorify(i32 %add339) #6, !dbg !732
  ret float %call342, !dbg !732
}

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #2

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @P7ViterbiTrace(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, i32 %N, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !215), !dbg !733
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !216), !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !217), !dbg !733
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !218), !dbg !734
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !219), !dbg !734
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !220), !dbg !735
  %mul = shl nsw i32 %N, 1, !dbg !736
  %add = add nsw i32 %mul, 6, !dbg !736
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !221), !dbg !736
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #6, !dbg !737
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !738
  %0 = load i32*** %xmx1, align 8, !dbg !738, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %0}, i64 0, metadata !225), !dbg !738
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !739
  %1 = load i32*** %mmx2, align 8, !dbg !739, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !226), !dbg !739
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !740
  %2 = load i32*** %imx3, align 8, !dbg !740, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !227), !dbg !740
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !741
  %3 = load i32*** %dmx4, align 8, !dbg !741, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !228), !dbg !741
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !742
  %4 = load %struct.p7trace_s** %tr, align 8, !dbg !742, !tbaa !555
  %statetype = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 1, !dbg !742
  %5 = load i8** %statetype, align 8, !dbg !742, !tbaa !555
  store i8 9, i8* %5, align 1, !dbg !742, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !743
  %6 = load %struct.p7trace_s** %tr, align 8, !dbg !743, !tbaa !555
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2, !dbg !743
  %7 = load i32** %nodeidx, align 8, !dbg !743, !tbaa !555
  store i32 0, i32* %7, align 4, !dbg !743, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !744
  %pos = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 3, !dbg !744
  %8 = load i32** %pos, align 8, !dbg !744, !tbaa !555
  store i32 0, i32* %8, align 4, !dbg !744, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !745
  %statetype7 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1, !dbg !745
  %9 = load i8** %statetype7, align 8, !dbg !745, !tbaa !555
  %arrayidx8 = getelementptr inbounds i8* %9, i64 1, !dbg !745
  store i8 8, i8* %arrayidx8, align 1, !dbg !745, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !746
  %10 = load %struct.p7trace_s** %tr, align 8, !dbg !746, !tbaa !555
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2, !dbg !746
  %11 = load i32** %nodeidx9, align 8, !dbg !746, !tbaa !555
  %arrayidx10 = getelementptr inbounds i32* %11, i64 1, !dbg !746
  store i32 0, i32* %arrayidx10, align 4, !dbg !746, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !747
  %pos11 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3, !dbg !747
  %12 = load i32** %pos11, align 8, !dbg !747, !tbaa !555
  %arrayidx12 = getelementptr inbounds i32* %12, i64 1, !dbg !747
  store i32 0, i32* %arrayidx12, align 4, !dbg !747, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !222), !dbg !749
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !223), !dbg !750
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !751
  %statetype13887 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 1, !dbg !751
  %13 = load i8** %statetype13887, align 8, !dbg !751, !tbaa !555
  %arrayidx14888 = getelementptr inbounds i8* %13, i64 1, !dbg !751
  %14 = load i8* %arrayidx14888, align 1, !dbg !751, !tbaa !556
  %cmp889 = icmp eq i8 %14, 4, !dbg !751
  br i1 %cmp889, label %while.end620, label %while.body.lr.ph, !dbg !751

while.body.lr.ph:                                 ; preds = %entry
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !752
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !753
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !754
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !754
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !756
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !757
  %arrayidx333 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !758
  %arrayidx371 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !759
  %arrayidx394 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !760
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !761
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !762
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !763
  %arrayidx505 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !764
  %arrayidx533 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !765
  %arrayidx568 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !766
  %arrayidx596 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !767
  br label %while.body, !dbg !751

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %15 = phi i8 [ %14, %while.body.lr.ph ], [ %186, %while.cond.backedge ]
  %16 = phi i8* [ %13, %while.body.lr.ph ], [ %185, %while.cond.backedge ]
  %17 = phi %struct.p7trace_s* [ %10, %while.body.lr.ph ], [ %184, %while.cond.backedge ]
  %idxprom896 = phi i64 [ 1, %while.body.lr.ph ], [ %idxprom, %while.cond.backedge ]
  %curralloc.0894 = phi i32 [ %add, %while.body.lr.ph ], [ %curralloc.0.be, %while.cond.backedge ]
  %tpos.0892 = phi i32 [ 2, %while.body.lr.ph ], [ %inc614, %while.cond.backedge ]
  %i.0891 = phi i32 [ %N, %while.body.lr.ph ], [ %i.2, %while.cond.backedge ]
  %k.0890 = phi i32 [ undef, %while.body.lr.ph ], [ %k.5, %while.cond.backedge ]
  %conv = sext i8 %15 to i32, !dbg !751
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb164
    i32 3, label %sw.bb234
    i32 5, label %sw.bb303
    i32 6, label %sw.bb355
    i32 7, label %sw.bb412
    i32 8, label %sw.bb488
    i32 10, label %sw.bb551
  ], !dbg !768

sw.bb:                                            ; preds = %while.body
  %add21 = add nsw i32 %k.0890, 1, !dbg !752
  %idxprom22 = sext i32 %add21 to i64, !dbg !752
  %add23 = add nsw i32 %i.0891, 1, !dbg !752
  %idxprom24 = sext i32 %add23 to i64, !dbg !752
  %arrayidx25 = getelementptr inbounds i32** %1, i64 %idxprom24, !dbg !752
  %18 = load i32** %arrayidx25, align 8, !dbg !752, !tbaa !555
  %arrayidx26 = getelementptr inbounds i32* %18, i64 %idxprom22, !dbg !752
  %19 = load i32* %arrayidx26, align 4, !dbg !752, !tbaa !579
  %arrayidx31 = getelementptr inbounds i8* %dsq, i64 %idxprom24, !dbg !752
  %20 = load i8* %arrayidx31, align 1, !dbg !752, !tbaa !556
  %idxprom33 = sext i8 %20 to i64, !dbg !752
  %21 = load i32*** %msc, align 8, !dbg !752, !tbaa !555
  %arrayidx34 = getelementptr inbounds i32** %21, i64 %idxprom33, !dbg !752
  %22 = load i32** %arrayidx34, align 8, !dbg !752, !tbaa !555
  %arrayidx35 = getelementptr inbounds i32* %22, i64 %idxprom22, !dbg !752
  %23 = load i32* %arrayidx35, align 4, !dbg !752, !tbaa !579
  %sub36 = sub nsw i32 %19, %23, !dbg !752
  call void @llvm.dbg.value(metadata !{i32 %sub36}, i64 0, metadata !229), !dbg !752
  %cmp37 = icmp slt i32 %sub36, -987654320, !dbg !769
  br i1 %cmp37, label %if.then, label %if.else, !dbg !769

if.then:                                          ; preds = %sw.bb
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !770
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !770, !tbaa !555
  br label %return, !dbg !770

if.else:                                          ; preds = %sw.bb
  %idxprom39 = sext i32 %i.0891 to i64, !dbg !753
  %arrayidx40 = getelementptr inbounds i32** %0, i64 %idxprom39, !dbg !753
  %24 = load i32** %arrayidx40, align 8, !dbg !753, !tbaa !555
  %25 = load i32* %24, align 4, !dbg !753, !tbaa !579
  %26 = load i32** %bsc, align 8, !dbg !753, !tbaa !555
  %arrayidx44 = getelementptr inbounds i32* %26, i64 %idxprom22, !dbg !753
  %27 = load i32* %arrayidx44, align 4, !dbg !753, !tbaa !579
  %add45 = add nsw i32 %27, %25, !dbg !753
  %cmp46 = icmp eq i32 %sub36, %add45, !dbg !753
  br i1 %cmp46, label %if.then48, label %if.else89, !dbg !753

if.then48:                                        ; preds = %if.else
  %28 = load float** %begin, align 8, !dbg !754, !tbaa !555
  %arrayidx51 = getelementptr inbounds float* %28, i64 %idxprom22, !dbg !754
  %29 = load float* %arrayidx51, align 4, !dbg !754, !tbaa !772
  %30 = load float* %p1, align 4, !dbg !754, !tbaa !772
  %call = call i32 @Prob2Score(float %29, float %30) #6, !dbg !754
  %conv52 = sitofp i32 %call to double, !dbg !754
  %add53 = fadd double %conv52, 1.000000e+03, !dbg !754
  %31 = load i32** %bsc, align 8, !dbg !754, !tbaa !555
  %arrayidx57 = getelementptr inbounds i32* %31, i64 %idxprom22, !dbg !754
  %32 = load i32* %arrayidx57, align 4, !dbg !754, !tbaa !579
  %conv58 = sitofp i32 %32 to double, !dbg !754
  %cmp59 = fcmp ugt double %add53, %conv58, !dbg !754
  br i1 %cmp59, label %if.end79, label %while.cond62.outer, !dbg !754

while.cond62.outer:                               ; preds = %if.then48, %if.then77
  %k.1.ph = phi i32 [ %dec, %if.then77 ], [ %k.0890, %if.then48 ]
  %tpos.1.ph = phi i32 [ %inc, %if.then77 ], [ %tpos.0892, %if.then48 ]
  %curralloc.1.ph = phi i32 [ %add78, %if.then77 ], [ %curralloc.0894, %if.then48 ]
  %33 = sext i32 %tpos.1.ph to i64
  br label %while.cond62

while.cond62:                                     ; preds = %while.cond62.outer, %while.body65
  %indvars.iv906 = phi i64 [ %33, %while.cond62.outer ], [ %indvars.iv.next907, %while.body65 ]
  %k.1 = phi i32 [ %k.1.ph, %while.cond62.outer ], [ %dec, %while.body65 ]
  %tpos.1 = phi i32 [ %tpos.1.ph, %while.cond62.outer ], [ %inc, %while.body65 ]
  %cmp63 = icmp sgt i32 %k.1, 0, !dbg !773
  br i1 %cmp63, label %while.body65, label %if.end79, !dbg !773

while.body65:                                     ; preds = %while.cond62
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !774
  %34 = load %struct.p7trace_s** %tr, align 8, !dbg !774, !tbaa !555
  %statetype67 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 1, !dbg !774
  %35 = load i8** %statetype67, align 8, !dbg !774, !tbaa !555
  %arrayidx68 = getelementptr inbounds i8* %35, i64 %indvars.iv906, !dbg !774
  store i8 2, i8* %arrayidx68, align 1, !dbg !774, !tbaa !556
  %dec = add nsw i32 %k.1, -1, !dbg !776
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !224), !dbg !776
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !776
  %36 = load %struct.p7trace_s** %tr, align 8, !dbg !776, !tbaa !555
  %nodeidx70 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 2, !dbg !776
  %37 = load i32** %nodeidx70, align 8, !dbg !776, !tbaa !555
  %arrayidx71 = getelementptr inbounds i32* %37, i64 %indvars.iv906, !dbg !776
  store i32 %k.1, i32* %arrayidx71, align 4, !dbg !776, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !777
  %pos73 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 3, !dbg !777
  %38 = load i32** %pos73, align 8, !dbg !777, !tbaa !555
  %arrayidx74 = getelementptr inbounds i32* %38, i64 %indvars.iv906, !dbg !777
  store i32 0, i32* %arrayidx74, align 4, !dbg !777, !tbaa !579
  %indvars.iv.next907 = add i64 %indvars.iv906, 1, !dbg !778
  %inc = add nsw i32 %tpos.1, 1, !dbg !779
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !222), !dbg !779
  %39 = trunc i64 %indvars.iv.next907 to i32, !dbg !778
  %cmp75 = icmp eq i32 %39, %curralloc.1.ph, !dbg !778
  br i1 %cmp75, label %if.then77, label %while.cond62, !dbg !778

if.then77:                                        ; preds = %while.body65
  %add78 = add nsw i32 %curralloc.1.ph, %N, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %add78}, i64 0, metadata !221), !dbg !780
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !782
  call void @P7ReallocTrace(%struct.p7trace_s* %36, i32 %add78) #6, !dbg !782
  br label %while.cond62.outer, !dbg !783

if.end79:                                         ; preds = %while.cond62, %if.then48
  %k.2 = phi i32 [ %k.0890, %if.then48 ], [ %k.1, %while.cond62 ]
  %tpos.2 = phi i32 [ %tpos.0892, %if.then48 ], [ %tpos.1, %while.cond62 ]
  %curralloc.2 = phi i32 [ %curralloc.0894, %if.then48 ], [ %curralloc.1.ph, %while.cond62 ]
  %idxprom80 = sext i32 %tpos.2 to i64, !dbg !784
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !784
  %40 = load %struct.p7trace_s** %tr, align 8, !dbg !784, !tbaa !555
  %statetype81 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 1, !dbg !784
  %41 = load i8** %statetype81, align 8, !dbg !784, !tbaa !555
  %arrayidx82 = getelementptr inbounds i8* %41, i64 %idxprom80, !dbg !784
  store i8 6, i8* %arrayidx82, align 1, !dbg !784, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !785
  %42 = load %struct.p7trace_s** %tr, align 8, !dbg !785, !tbaa !555
  %nodeidx84 = getelementptr inbounds %struct.p7trace_s* %42, i64 0, i32 2, !dbg !785
  %43 = load i32** %nodeidx84, align 8, !dbg !785, !tbaa !555
  %arrayidx85 = getelementptr inbounds i32* %43, i64 %idxprom80, !dbg !785
  store i32 0, i32* %arrayidx85, align 4, !dbg !785, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !786
  %pos87 = getelementptr inbounds %struct.p7trace_s* %42, i64 0, i32 3, !dbg !786
  %44 = load i32** %pos87, align 8, !dbg !786, !tbaa !555
  %arrayidx88 = getelementptr inbounds i32* %44, i64 %idxprom80, !dbg !786
  store i32 0, i32* %arrayidx88, align 4, !dbg !786, !tbaa !579
  br label %sw.epilog, !dbg !787

if.else89:                                        ; preds = %if.else
  %idxprom90 = sext i32 %k.0890 to i64, !dbg !756
  %arrayidx92 = getelementptr inbounds i32** %1, i64 %idxprom39, !dbg !756
  %45 = load i32** %arrayidx92, align 8, !dbg !756, !tbaa !555
  %arrayidx93 = getelementptr inbounds i32* %45, i64 %idxprom90, !dbg !756
  %46 = load i32* %arrayidx93, align 4, !dbg !756, !tbaa !579
  %47 = load i32*** %tsc, align 8, !dbg !756, !tbaa !555
  %48 = load i32** %47, align 8, !dbg !756, !tbaa !555
  %arrayidx96 = getelementptr inbounds i32* %48, i64 %idxprom90, !dbg !756
  %49 = load i32* %arrayidx96, align 4, !dbg !756, !tbaa !579
  %add97 = add nsw i32 %49, %46, !dbg !756
  %cmp98 = icmp eq i32 %sub36, %add97, !dbg !756
  br i1 %cmp98, label %if.then100, label %if.else112, !dbg !756

if.then100:                                       ; preds = %if.else89
  %idxprom101 = sext i32 %tpos.0892 to i64, !dbg !788
  %arrayidx103 = getelementptr inbounds i8* %16, i64 %idxprom101, !dbg !788
  store i8 1, i8* %arrayidx103, align 1, !dbg !788, !tbaa !556
  %dec104 = add nsw i32 %k.0890, -1, !dbg !790
  call void @llvm.dbg.value(metadata !{i32 %dec104}, i64 0, metadata !224), !dbg !790
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !790
  %50 = load %struct.p7trace_s** %tr, align 8, !dbg !790, !tbaa !555
  %nodeidx106 = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 2, !dbg !790
  %51 = load i32** %nodeidx106, align 8, !dbg !790, !tbaa !555
  %arrayidx107 = getelementptr inbounds i32* %51, i64 %idxprom101, !dbg !790
  store i32 %k.0890, i32* %arrayidx107, align 4, !dbg !790, !tbaa !579
  %dec108 = add nsw i32 %i.0891, -1, !dbg !791
  call void @llvm.dbg.value(metadata !{i32 %dec108}, i64 0, metadata !223), !dbg !791
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !791
  %pos110 = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 3, !dbg !791
  %52 = load i32** %pos110, align 8, !dbg !791, !tbaa !555
  %arrayidx111 = getelementptr inbounds i32* %52, i64 %idxprom101, !dbg !791
  store i32 %i.0891, i32* %arrayidx111, align 4, !dbg !791, !tbaa !579
  br label %sw.epilog, !dbg !792

if.else112:                                       ; preds = %if.else89
  %arrayidx115 = getelementptr inbounds i32** %2, i64 %idxprom39, !dbg !793
  %53 = load i32** %arrayidx115, align 8, !dbg !793, !tbaa !555
  %arrayidx116 = getelementptr inbounds i32* %53, i64 %idxprom90, !dbg !793
  %54 = load i32* %arrayidx116, align 4, !dbg !793, !tbaa !579
  %arrayidx119 = getelementptr inbounds i32** %47, i64 3, !dbg !793
  %55 = load i32** %arrayidx119, align 8, !dbg !793, !tbaa !555
  %arrayidx120 = getelementptr inbounds i32* %55, i64 %idxprom90, !dbg !793
  %56 = load i32* %arrayidx120, align 4, !dbg !793, !tbaa !579
  %add121 = add nsw i32 %56, %54, !dbg !793
  %cmp122 = icmp eq i32 %sub36, %add121, !dbg !793
  br i1 %cmp122, label %if.then124, label %if.else135, !dbg !793

if.then124:                                       ; preds = %if.else112
  %idxprom125 = sext i32 %tpos.0892 to i64, !dbg !794
  %arrayidx127 = getelementptr inbounds i8* %16, i64 %idxprom125, !dbg !794
  store i8 3, i8* %arrayidx127, align 1, !dbg !794, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !796
  %57 = load %struct.p7trace_s** %tr, align 8, !dbg !796, !tbaa !555
  %nodeidx129 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 2, !dbg !796
  %58 = load i32** %nodeidx129, align 8, !dbg !796, !tbaa !555
  %arrayidx130 = getelementptr inbounds i32* %58, i64 %idxprom125, !dbg !796
  store i32 %k.0890, i32* %arrayidx130, align 4, !dbg !796, !tbaa !579
  %dec131 = add nsw i32 %i.0891, -1, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %dec131}, i64 0, metadata !223), !dbg !797
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !797
  %pos133 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 3, !dbg !797
  %59 = load i32** %pos133, align 8, !dbg !797, !tbaa !555
  %arrayidx134 = getelementptr inbounds i32* %59, i64 %idxprom125, !dbg !797
  store i32 %i.0891, i32* %arrayidx134, align 4, !dbg !797, !tbaa !579
  br label %sw.epilog, !dbg !798

if.else135:                                       ; preds = %if.else112
  %arrayidx138 = getelementptr inbounds i32** %3, i64 %idxprom39, !dbg !799
  %60 = load i32** %arrayidx138, align 8, !dbg !799, !tbaa !555
  %arrayidx139 = getelementptr inbounds i32* %60, i64 %idxprom90, !dbg !799
  %61 = load i32* %arrayidx139, align 4, !dbg !799, !tbaa !579
  %arrayidx142 = getelementptr inbounds i32** %47, i64 5, !dbg !799
  %62 = load i32** %arrayidx142, align 8, !dbg !799, !tbaa !555
  %arrayidx143 = getelementptr inbounds i32* %62, i64 %idxprom90, !dbg !799
  %63 = load i32* %arrayidx143, align 4, !dbg !799, !tbaa !579
  %add144 = add nsw i32 %63, %61, !dbg !799
  %cmp145 = icmp eq i32 %sub36, %add144, !dbg !799
  br i1 %cmp145, label %if.then147, label %if.else158, !dbg !799

if.then147:                                       ; preds = %if.else135
  %idxprom148 = sext i32 %tpos.0892 to i64, !dbg !800
  %arrayidx150 = getelementptr inbounds i8* %16, i64 %idxprom148, !dbg !800
  store i8 2, i8* %arrayidx150, align 1, !dbg !800, !tbaa !556
  %dec151 = add nsw i32 %k.0890, -1, !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %dec151}, i64 0, metadata !224), !dbg !802
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !802
  %64 = load %struct.p7trace_s** %tr, align 8, !dbg !802, !tbaa !555
  %nodeidx153 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 2, !dbg !802
  %65 = load i32** %nodeidx153, align 8, !dbg !802, !tbaa !555
  %arrayidx154 = getelementptr inbounds i32* %65, i64 %idxprom148, !dbg !802
  store i32 %k.0890, i32* %arrayidx154, align 4, !dbg !802, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !803
  %pos156 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 3, !dbg !803
  %66 = load i32** %pos156, align 8, !dbg !803, !tbaa !555
  %arrayidx157 = getelementptr inbounds i32* %66, i64 %idxprom148, !dbg !803
  store i32 0, i32* %arrayidx157, align 4, !dbg !803, !tbaa !579
  br label %sw.epilog, !dbg !804

if.else158:                                       ; preds = %if.else135
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !805
  br label %sw.epilog

sw.bb164:                                         ; preds = %while.body
  %add165 = add nsw i32 %k.0890, 1, !dbg !806
  %idxprom166 = sext i32 %add165 to i64, !dbg !806
  %idxprom167 = sext i32 %i.0891 to i64, !dbg !806
  %arrayidx168 = getelementptr inbounds i32** %3, i64 %idxprom167, !dbg !806
  %67 = load i32** %arrayidx168, align 8, !dbg !806, !tbaa !555
  %arrayidx169 = getelementptr inbounds i32* %67, i64 %idxprom166, !dbg !806
  %68 = load i32* %arrayidx169, align 4, !dbg !806, !tbaa !579
  %cmp170 = icmp slt i32 %68, -987654320, !dbg !806
  br i1 %cmp170, label %if.then172, label %if.else173, !dbg !806

if.then172:                                       ; preds = %sw.bb164
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !807
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !807, !tbaa !555
  br label %return, !dbg !807

if.else173:                                       ; preds = %sw.bb164
  %idxprom179 = sext i32 %k.0890 to i64, !dbg !809
  %arrayidx181 = getelementptr inbounds i32** %1, i64 %idxprom167, !dbg !809
  %69 = load i32** %arrayidx181, align 8, !dbg !809, !tbaa !555
  %arrayidx182 = getelementptr inbounds i32* %69, i64 %idxprom179, !dbg !809
  %70 = load i32* %arrayidx182, align 4, !dbg !809, !tbaa !579
  %71 = load i32*** %tsc, align 8, !dbg !809, !tbaa !555
  %arrayidx185 = getelementptr inbounds i32** %71, i64 2, !dbg !809
  %72 = load i32** %arrayidx185, align 8, !dbg !809, !tbaa !555
  %arrayidx186 = getelementptr inbounds i32* %72, i64 %idxprom179, !dbg !809
  %73 = load i32* %arrayidx186, align 4, !dbg !809, !tbaa !579
  %add187 = add nsw i32 %73, %70, !dbg !809
  %cmp188 = icmp eq i32 %68, %add187, !dbg !809
  br i1 %cmp188, label %if.then190, label %if.else202, !dbg !809

if.then190:                                       ; preds = %if.else173
  %idxprom191 = sext i32 %tpos.0892 to i64, !dbg !810
  %arrayidx193 = getelementptr inbounds i8* %16, i64 %idxprom191, !dbg !810
  store i8 1, i8* %arrayidx193, align 1, !dbg !810, !tbaa !556
  %dec194 = add nsw i32 %k.0890, -1, !dbg !812
  call void @llvm.dbg.value(metadata !{i32 %dec194}, i64 0, metadata !224), !dbg !812
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !812
  %74 = load %struct.p7trace_s** %tr, align 8, !dbg !812, !tbaa !555
  %nodeidx196 = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 2, !dbg !812
  %75 = load i32** %nodeidx196, align 8, !dbg !812, !tbaa !555
  %arrayidx197 = getelementptr inbounds i32* %75, i64 %idxprom191, !dbg !812
  store i32 %k.0890, i32* %arrayidx197, align 4, !dbg !812, !tbaa !579
  %dec198 = add nsw i32 %i.0891, -1, !dbg !813
  call void @llvm.dbg.value(metadata !{i32 %dec198}, i64 0, metadata !223), !dbg !813
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !813
  %pos200 = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 3, !dbg !813
  %76 = load i32** %pos200, align 8, !dbg !813, !tbaa !555
  %arrayidx201 = getelementptr inbounds i32* %76, i64 %idxprom191, !dbg !813
  store i32 %i.0891, i32* %arrayidx201, align 4, !dbg !813, !tbaa !579
  br label %sw.epilog, !dbg !814

if.else202:                                       ; preds = %if.else173
  %arrayidx211 = getelementptr inbounds i32* %67, i64 %idxprom179, !dbg !815
  %77 = load i32* %arrayidx211, align 4, !dbg !815, !tbaa !579
  %arrayidx214 = getelementptr inbounds i32** %71, i64 6, !dbg !815
  %78 = load i32** %arrayidx214, align 8, !dbg !815, !tbaa !555
  %arrayidx215 = getelementptr inbounds i32* %78, i64 %idxprom179, !dbg !815
  %79 = load i32* %arrayidx215, align 4, !dbg !815, !tbaa !579
  %add216 = add nsw i32 %79, %77, !dbg !815
  %cmp217 = icmp eq i32 %68, %add216, !dbg !815
  br i1 %cmp217, label %if.then219, label %if.else230, !dbg !815

if.then219:                                       ; preds = %if.else202
  %idxprom220 = sext i32 %tpos.0892 to i64, !dbg !816
  %arrayidx222 = getelementptr inbounds i8* %16, i64 %idxprom220, !dbg !816
  store i8 2, i8* %arrayidx222, align 1, !dbg !816, !tbaa !556
  %dec223 = add nsw i32 %k.0890, -1, !dbg !818
  call void @llvm.dbg.value(metadata !{i32 %dec223}, i64 0, metadata !224), !dbg !818
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !818
  %80 = load %struct.p7trace_s** %tr, align 8, !dbg !818, !tbaa !555
  %nodeidx225 = getelementptr inbounds %struct.p7trace_s* %80, i64 0, i32 2, !dbg !818
  %81 = load i32** %nodeidx225, align 8, !dbg !818, !tbaa !555
  %arrayidx226 = getelementptr inbounds i32* %81, i64 %idxprom220, !dbg !818
  store i32 %k.0890, i32* %arrayidx226, align 4, !dbg !818, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !819
  %pos228 = getelementptr inbounds %struct.p7trace_s* %80, i64 0, i32 3, !dbg !819
  %82 = load i32** %pos228, align 8, !dbg !819, !tbaa !555
  %arrayidx229 = getelementptr inbounds i32* %82, i64 %idxprom220, !dbg !819
  store i32 0, i32* %arrayidx229, align 4, !dbg !819, !tbaa !579
  br label %sw.epilog, !dbg !820

if.else230:                                       ; preds = %if.else202
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !821
  br label %sw.epilog

sw.bb234:                                         ; preds = %while.body
  %idxprom235 = sext i32 %k.0890 to i64, !dbg !757
  %add236 = add nsw i32 %i.0891, 1, !dbg !757
  %idxprom237 = sext i32 %add236 to i64, !dbg !757
  %arrayidx238 = getelementptr inbounds i32** %2, i64 %idxprom237, !dbg !757
  %83 = load i32** %arrayidx238, align 8, !dbg !757, !tbaa !555
  %arrayidx239 = getelementptr inbounds i32* %83, i64 %idxprom235, !dbg !757
  %84 = load i32* %arrayidx239, align 4, !dbg !757, !tbaa !579
  %arrayidx243 = getelementptr inbounds i8* %dsq, i64 %idxprom237, !dbg !757
  %85 = load i8* %arrayidx243, align 1, !dbg !757, !tbaa !556
  %idxprom245 = sext i8 %85 to i64, !dbg !757
  %86 = load i32*** %isc, align 8, !dbg !757, !tbaa !555
  %arrayidx246 = getelementptr inbounds i32** %86, i64 %idxprom245, !dbg !757
  %87 = load i32** %arrayidx246, align 8, !dbg !757, !tbaa !555
  %arrayidx247 = getelementptr inbounds i32* %87, i64 %idxprom235, !dbg !757
  %88 = load i32* %arrayidx247, align 4, !dbg !757, !tbaa !579
  %sub248 = sub nsw i32 %84, %88, !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %sub248}, i64 0, metadata !229), !dbg !757
  %cmp249 = icmp slt i32 %sub248, -987654320, !dbg !822
  br i1 %cmp249, label %if.then251, label %if.else252, !dbg !822

if.then251:                                       ; preds = %sw.bb234
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !823
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !823, !tbaa !555
  br label %return, !dbg !823

if.else252:                                       ; preds = %sw.bb234
  %idxprom254 = sext i32 %i.0891 to i64, !dbg !825
  %arrayidx255 = getelementptr inbounds i32** %1, i64 %idxprom254, !dbg !825
  %89 = load i32** %arrayidx255, align 8, !dbg !825, !tbaa !555
  %arrayidx256 = getelementptr inbounds i32* %89, i64 %idxprom235, !dbg !825
  %90 = load i32* %arrayidx256, align 4, !dbg !825, !tbaa !579
  %91 = load i32*** %tsc, align 8, !dbg !825, !tbaa !555
  %arrayidx259 = getelementptr inbounds i32** %91, i64 1, !dbg !825
  %92 = load i32** %arrayidx259, align 8, !dbg !825, !tbaa !555
  %arrayidx260 = getelementptr inbounds i32* %92, i64 %idxprom235, !dbg !825
  %93 = load i32* %arrayidx260, align 4, !dbg !825, !tbaa !579
  %add261 = add nsw i32 %93, %90, !dbg !825
  %cmp262 = icmp eq i32 %sub248, %add261, !dbg !825
  br i1 %cmp262, label %if.then264, label %if.else276, !dbg !825

if.then264:                                       ; preds = %if.else252
  %idxprom265 = sext i32 %tpos.0892 to i64, !dbg !826
  %arrayidx267 = getelementptr inbounds i8* %16, i64 %idxprom265, !dbg !826
  store i8 1, i8* %arrayidx267, align 1, !dbg !826, !tbaa !556
  %dec268 = add nsw i32 %k.0890, -1, !dbg !828
  call void @llvm.dbg.value(metadata !{i32 %dec268}, i64 0, metadata !224), !dbg !828
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !828
  %94 = load %struct.p7trace_s** %tr, align 8, !dbg !828, !tbaa !555
  %nodeidx270 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 2, !dbg !828
  %95 = load i32** %nodeidx270, align 8, !dbg !828, !tbaa !555
  %arrayidx271 = getelementptr inbounds i32* %95, i64 %idxprom265, !dbg !828
  store i32 %k.0890, i32* %arrayidx271, align 4, !dbg !828, !tbaa !579
  %dec272 = add nsw i32 %i.0891, -1, !dbg !829
  call void @llvm.dbg.value(metadata !{i32 %dec272}, i64 0, metadata !223), !dbg !829
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !829
  %pos274 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 3, !dbg !829
  %96 = load i32** %pos274, align 8, !dbg !829, !tbaa !555
  %arrayidx275 = getelementptr inbounds i32* %96, i64 %idxprom265, !dbg !829
  store i32 %i.0891, i32* %arrayidx275, align 4, !dbg !829, !tbaa !579
  br label %sw.epilog, !dbg !830

if.else276:                                       ; preds = %if.else252
  %arrayidx279 = getelementptr inbounds i32** %2, i64 %idxprom254, !dbg !831
  %97 = load i32** %arrayidx279, align 8, !dbg !831, !tbaa !555
  %arrayidx280 = getelementptr inbounds i32* %97, i64 %idxprom235, !dbg !831
  %98 = load i32* %arrayidx280, align 4, !dbg !831, !tbaa !579
  %arrayidx283 = getelementptr inbounds i32** %91, i64 4, !dbg !831
  %99 = load i32** %arrayidx283, align 8, !dbg !831, !tbaa !555
  %arrayidx284 = getelementptr inbounds i32* %99, i64 %idxprom235, !dbg !831
  %100 = load i32* %arrayidx284, align 4, !dbg !831, !tbaa !579
  %add285 = add nsw i32 %100, %98, !dbg !831
  %cmp286 = icmp eq i32 %sub248, %add285, !dbg !831
  br i1 %cmp286, label %if.then288, label %if.else299, !dbg !831

if.then288:                                       ; preds = %if.else276
  %idxprom289 = sext i32 %tpos.0892 to i64, !dbg !832
  %arrayidx291 = getelementptr inbounds i8* %16, i64 %idxprom289, !dbg !832
  store i8 3, i8* %arrayidx291, align 1, !dbg !832, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !834
  %101 = load %struct.p7trace_s** %tr, align 8, !dbg !834, !tbaa !555
  %nodeidx293 = getelementptr inbounds %struct.p7trace_s* %101, i64 0, i32 2, !dbg !834
  %102 = load i32** %nodeidx293, align 8, !dbg !834, !tbaa !555
  %arrayidx294 = getelementptr inbounds i32* %102, i64 %idxprom289, !dbg !834
  store i32 %k.0890, i32* %arrayidx294, align 4, !dbg !834, !tbaa !579
  %dec295 = add nsw i32 %i.0891, -1, !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %dec295}, i64 0, metadata !223), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !835
  %pos297 = getelementptr inbounds %struct.p7trace_s* %101, i64 0, i32 3, !dbg !835
  %103 = load i32** %pos297, align 8, !dbg !835, !tbaa !555
  %arrayidx298 = getelementptr inbounds i32* %103, i64 %idxprom289, !dbg !835
  store i32 %i.0891, i32* %arrayidx298, align 4, !dbg !835, !tbaa !579
  br label %sw.epilog, !dbg !836

if.else299:                                       ; preds = %if.else276
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !837
  br label %sw.epilog

sw.bb303:                                         ; preds = %while.body
  %cmp304 = icmp eq i32 %i.0891, 0, !dbg !838
  br i1 %cmp304, label %land.lhs.true, label %if.else321, !dbg !838

land.lhs.true:                                    ; preds = %sw.bb303
  %104 = load i32** %0, align 8, !dbg !838, !tbaa !555
  %arrayidx308 = getelementptr inbounds i32* %104, i64 4, !dbg !838
  %105 = load i32* %arrayidx308, align 4, !dbg !838, !tbaa !579
  %cmp309 = icmp eq i32 %105, 0, !dbg !838
  br i1 %cmp309, label %if.then311, label %if.else352, !dbg !838

if.then311:                                       ; preds = %land.lhs.true
  %idxprom312 = sext i32 %tpos.0892 to i64, !dbg !839
  %arrayidx314 = getelementptr inbounds i8* %16, i64 %idxprom312, !dbg !839
  store i8 4, i8* %arrayidx314, align 1, !dbg !839, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !841
  %106 = load %struct.p7trace_s** %tr, align 8, !dbg !841, !tbaa !555
  %nodeidx316 = getelementptr inbounds %struct.p7trace_s* %106, i64 0, i32 2, !dbg !841
  %107 = load i32** %nodeidx316, align 8, !dbg !841, !tbaa !555
  %arrayidx317 = getelementptr inbounds i32* %107, i64 %idxprom312, !dbg !841
  store i32 0, i32* %arrayidx317, align 4, !dbg !841, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !842
  %pos319 = getelementptr inbounds %struct.p7trace_s* %106, i64 0, i32 3, !dbg !842
  %108 = load i32** %pos319, align 8, !dbg !842, !tbaa !555
  %arrayidx320 = getelementptr inbounds i32* %108, i64 %idxprom312, !dbg !842
  store i32 0, i32* %arrayidx320, align 4, !dbg !842, !tbaa !579
  br label %sw.epilog, !dbg !843

if.else321:                                       ; preds = %sw.bb303
  %cmp322 = icmp sgt i32 %i.0891, 0, !dbg !758
  br i1 %cmp322, label %land.lhs.true324, label %if.else352, !dbg !758

land.lhs.true324:                                 ; preds = %if.else321
  %add325 = add nsw i32 %i.0891, 1, !dbg !758
  %idxprom326 = sext i32 %add325 to i64, !dbg !758
  %arrayidx327 = getelementptr inbounds i32** %0, i64 %idxprom326, !dbg !758
  %109 = load i32** %arrayidx327, align 8, !dbg !758, !tbaa !555
  %arrayidx328 = getelementptr inbounds i32* %109, i64 4, !dbg !758
  %110 = load i32* %arrayidx328, align 4, !dbg !758, !tbaa !579
  %idxprom329 = sext i32 %i.0891 to i64, !dbg !758
  %arrayidx330 = getelementptr inbounds i32** %0, i64 %idxprom329, !dbg !758
  %111 = load i32** %arrayidx330, align 8, !dbg !758, !tbaa !555
  %arrayidx331 = getelementptr inbounds i32* %111, i64 4, !dbg !758
  %112 = load i32* %arrayidx331, align 4, !dbg !758, !tbaa !579
  %113 = load i32* %arrayidx333, align 4, !dbg !758, !tbaa !579
  %add334 = add nsw i32 %113, %112, !dbg !758
  %cmp335 = icmp eq i32 %110, %add334, !dbg !758
  br i1 %cmp335, label %if.then337, label %if.else352, !dbg !758

if.then337:                                       ; preds = %land.lhs.true324
  %idxprom338 = sext i32 %tpos.0892 to i64, !dbg !844
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !844
  %arrayidx340 = getelementptr inbounds i8* %16, i64 %idxprom338, !dbg !844
  store i8 5, i8* %arrayidx340, align 1, !dbg !844, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !846
  %114 = load %struct.p7trace_s** %tr, align 8, !dbg !846, !tbaa !555
  %nodeidx342 = getelementptr inbounds %struct.p7trace_s* %114, i64 0, i32 2, !dbg !846
  %115 = load i32** %nodeidx342, align 8, !dbg !846, !tbaa !555
  %arrayidx343 = getelementptr inbounds i32* %115, i64 %idxprom338, !dbg !846
  store i32 0, i32* %arrayidx343, align 4, !dbg !846, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !847
  %pos345 = getelementptr inbounds %struct.p7trace_s* %114, i64 0, i32 3, !dbg !847
  %116 = load i32** %pos345, align 8, !dbg !847, !tbaa !555
  %arrayidx346 = getelementptr inbounds i32* %116, i64 %idxprom338, !dbg !847
  store i32 0, i32* %arrayidx346, align 4, !dbg !847, !tbaa !579
  %dec347 = add nsw i32 %i.0891, -1, !dbg !848
  call void @llvm.dbg.value(metadata !{i32 %dec347}, i64 0, metadata !223), !dbg !848
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !848
  %arrayidx351 = getelementptr inbounds i32* %116, i64 %idxprom896, !dbg !848
  store i32 %i.0891, i32* %arrayidx351, align 4, !dbg !848, !tbaa !579
  br label %sw.epilog, !dbg !849

if.else352:                                       ; preds = %land.lhs.true, %land.lhs.true324, %if.else321
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !850
  br label %sw.epilog

sw.bb355:                                         ; preds = %while.body
  %idxprom356 = sext i32 %i.0891 to i64, !dbg !851
  %arrayidx357 = getelementptr inbounds i32** %0, i64 %idxprom356, !dbg !851
  %117 = load i32** %arrayidx357, align 8, !dbg !851, !tbaa !555
  %118 = load i32* %117, align 4, !dbg !851, !tbaa !579
  %cmp359 = icmp slt i32 %118, -987654320, !dbg !851
  br i1 %cmp359, label %if.then361, label %if.else362, !dbg !851

if.then361:                                       ; preds = %sw.bb355
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !852
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !852, !tbaa !555
  br label %return, !dbg !852

if.else362:                                       ; preds = %sw.bb355
  %arrayidx368 = getelementptr inbounds i32* %117, i64 4, !dbg !759
  %119 = load i32* %arrayidx368, align 4, !dbg !759, !tbaa !579
  %120 = load i32* %arrayidx371, align 4, !dbg !759, !tbaa !579
  %add372 = add nsw i32 %120, %119, !dbg !759
  %cmp373 = icmp eq i32 %118, %add372, !dbg !759
  br i1 %cmp373, label %if.then375, label %if.else385, !dbg !759

if.then375:                                       ; preds = %if.else362
  %idxprom376 = sext i32 %tpos.0892 to i64, !dbg !854
  %arrayidx378 = getelementptr inbounds i8* %16, i64 %idxprom376, !dbg !854
  store i8 5, i8* %arrayidx378, align 1, !dbg !854, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !856
  %121 = load %struct.p7trace_s** %tr, align 8, !dbg !856, !tbaa !555
  %nodeidx380 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 2, !dbg !856
  %122 = load i32** %nodeidx380, align 8, !dbg !856, !tbaa !555
  %arrayidx381 = getelementptr inbounds i32* %122, i64 %idxprom376, !dbg !856
  store i32 0, i32* %arrayidx381, align 4, !dbg !856, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !857
  %pos383 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 3, !dbg !857
  %123 = load i32** %pos383, align 8, !dbg !857, !tbaa !555
  %arrayidx384 = getelementptr inbounds i32* %123, i64 %idxprom376, !dbg !857
  store i32 0, i32* %arrayidx384, align 4, !dbg !857, !tbaa !579
  br label %sw.epilog, !dbg !858

if.else385:                                       ; preds = %if.else362
  %arrayidx391 = getelementptr inbounds i32* %117, i64 3, !dbg !760
  %124 = load i32* %arrayidx391, align 4, !dbg !760, !tbaa !579
  %125 = load i32* %arrayidx394, align 4, !dbg !760, !tbaa !579
  %add395 = add nsw i32 %125, %124, !dbg !760
  %cmp396 = icmp eq i32 %118, %add395, !dbg !760
  br i1 %cmp396, label %if.then398, label %if.else408, !dbg !760

if.then398:                                       ; preds = %if.else385
  %idxprom399 = sext i32 %tpos.0892 to i64, !dbg !859
  %arrayidx401 = getelementptr inbounds i8* %16, i64 %idxprom399, !dbg !859
  store i8 10, i8* %arrayidx401, align 1, !dbg !859, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !861
  %126 = load %struct.p7trace_s** %tr, align 8, !dbg !861, !tbaa !555
  %nodeidx403 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 2, !dbg !861
  %127 = load i32** %nodeidx403, align 8, !dbg !861, !tbaa !555
  %arrayidx404 = getelementptr inbounds i32* %127, i64 %idxprom399, !dbg !861
  store i32 0, i32* %arrayidx404, align 4, !dbg !861, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !862
  %pos406 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 3, !dbg !862
  %128 = load i32** %pos406, align 8, !dbg !862, !tbaa !555
  %arrayidx407 = getelementptr inbounds i32* %128, i64 %idxprom399, !dbg !862
  store i32 0, i32* %arrayidx407, align 4, !dbg !862, !tbaa !579
  br label %sw.epilog, !dbg !863

if.else408:                                       ; preds = %if.else385
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !864
  br label %sw.epilog

sw.bb412:                                         ; preds = %while.body
  %idxprom413 = sext i32 %i.0891 to i64, !dbg !865
  %arrayidx414 = getelementptr inbounds i32** %0, i64 %idxprom413, !dbg !865
  %129 = load i32** %arrayidx414, align 8, !dbg !865, !tbaa !555
  %arrayidx415 = getelementptr inbounds i32* %129, i64 1, !dbg !865
  %130 = load i32* %arrayidx415, align 4, !dbg !865, !tbaa !579
  %cmp416 = icmp slt i32 %130, -987654320, !dbg !865
  br i1 %cmp416, label %if.then418, label %if.end419, !dbg !865

if.then418:                                       ; preds = %sw.bb412
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !866
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !866, !tbaa !555
  br label %return, !dbg !866

if.end419:                                        ; preds = %sw.bb412
  %131 = load i32* %M, align 4, !dbg !761, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %131}, i64 0, metadata !224), !dbg !761
  %cmp420863 = icmp sgt i32 %131, 0, !dbg !761
  br i1 %cmp420863, label %for.body.lr.ph, label %for.end483, !dbg !761

for.body.lr.ph:                                   ; preds = %if.end419
  %arrayidx427 = getelementptr inbounds i32** %1, i64 %idxprom413, !dbg !762
  %132 = load i32** %arrayidx427, align 8, !dbg !762, !tbaa !555
  %133 = load i32** %esc, align 8, !dbg !762, !tbaa !555
  %134 = sext i32 %131 to i64
  br label %for.body, !dbg !761

for.cond:                                         ; preds = %for.body
  %135 = trunc i64 %indvars.iv.next to i32, !dbg !761
  %cmp420 = icmp sgt i32 %135, 0, !dbg !761
  br i1 %cmp420, label %for.body, label %for.end483, !dbg !761

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %134, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %k.3864 = phi i32 [ %131, %for.body.lr.ph ], [ %dec482, %for.cond ]
  %arrayidx428 = getelementptr inbounds i32* %132, i64 %indvars.iv, !dbg !762
  %136 = load i32* %arrayidx428, align 4, !dbg !762, !tbaa !579
  %arrayidx430 = getelementptr inbounds i32* %133, i64 %indvars.iv, !dbg !762
  %137 = load i32* %arrayidx430, align 4, !dbg !762, !tbaa !579
  %add431 = add nsw i32 %137, %136, !dbg !762
  %cmp432 = icmp eq i32 %130, %add431, !dbg !762
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !761
  %dec482 = add nsw i32 %k.3864, -1, !dbg !761
  call void @llvm.dbg.value(metadata !{i32 %dec482}, i64 0, metadata !224), !dbg !761
  br i1 %cmp432, label %if.then434, label %for.cond, !dbg !762

if.then434:                                       ; preds = %for.body
  %138 = load float** %end, align 8, !dbg !763, !tbaa !555
  %arrayidx436 = getelementptr inbounds float* %138, i64 %indvars.iv, !dbg !763
  %139 = load float* %arrayidx436, align 4, !dbg !763, !tbaa !772
  %call437 = call i32 @Prob2Score(float %139, float 1.000000e+00) #6, !dbg !763
  %conv438 = sitofp i32 %call437 to double, !dbg !763
  %add439 = fadd double %conv438, 1.000000e+03, !dbg !763
  %140 = load i32** %esc, align 8, !dbg !763, !tbaa !555
  %arrayidx442 = getelementptr inbounds i32* %140, i64 %indvars.iv, !dbg !763
  %141 = load i32* %arrayidx442, align 4, !dbg !763, !tbaa !579
  %conv443 = sitofp i32 %141 to double, !dbg !763
  %cmp444 = fcmp ugt double %add439, %conv443, !dbg !763
  br i1 %cmp444, label %if.end468, label %if.then446, !dbg !763

if.then446:                                       ; preds = %if.then434
  %142 = load i32* %M, align 4, !dbg !868, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %142}, i64 0, metadata !230), !dbg !868
  %cmp449865 = icmp sgt i32 %142, %k.3864, !dbg !868
  br i1 %cmp449865, label %for.body451.lr.ph, label %if.end468, !dbg !868

for.body451.lr.ph:                                ; preds = %if.then446
  %143 = sext i32 %tpos.0892 to i64
  %144 = add i32 %tpos.0892, %142, !dbg !868
  br label %for.body451, !dbg !868

for.body451:                                      ; preds = %for.inc, %for.body451.lr.ph
  %indvars.iv902 = phi i64 [ %143, %for.body451.lr.ph ], [ %indvars.iv.next903, %for.inc ]
  %dk.0868 = phi i32 [ %142, %for.body451.lr.ph ], [ %dec467, %for.inc ]
  %curralloc.3867 = phi i32 [ %curralloc.0894, %for.body451.lr.ph ], [ %curralloc.4, %for.inc ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !870
  %145 = load %struct.p7trace_s** %tr, align 8, !dbg !870, !tbaa !555
  %statetype453 = getelementptr inbounds %struct.p7trace_s* %145, i64 0, i32 1, !dbg !870
  %146 = load i8** %statetype453, align 8, !dbg !870, !tbaa !555
  %arrayidx454 = getelementptr inbounds i8* %146, i64 %indvars.iv902, !dbg !870
  store i8 2, i8* %arrayidx454, align 1, !dbg !870, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !872
  %147 = load %struct.p7trace_s** %tr, align 8, !dbg !872, !tbaa !555
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 2, !dbg !872
  %148 = load i32** %nodeidx456, align 8, !dbg !872, !tbaa !555
  %arrayidx457 = getelementptr inbounds i32* %148, i64 %indvars.iv902, !dbg !872
  store i32 %dk.0868, i32* %arrayidx457, align 4, !dbg !872, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !873
  %pos459 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 3, !dbg !873
  %149 = load i32** %pos459, align 8, !dbg !873, !tbaa !555
  %arrayidx460 = getelementptr inbounds i32* %149, i64 %indvars.iv902, !dbg !873
  store i32 0, i32* %arrayidx460, align 4, !dbg !873, !tbaa !579
  %indvars.iv.next903 = add i64 %indvars.iv902, 1, !dbg !868
  call void @llvm.dbg.value(metadata !{i32 %151}, i64 0, metadata !222), !dbg !874
  %150 = trunc i64 %indvars.iv.next903 to i32, !dbg !875
  %cmp462 = icmp eq i32 %150, %curralloc.3867, !dbg !875
  br i1 %cmp462, label %if.then464, label %for.inc, !dbg !875

if.then464:                                       ; preds = %for.body451
  %add465 = add nsw i32 %curralloc.3867, %N, !dbg !876
  call void @llvm.dbg.value(metadata !{i32 %add465}, i64 0, metadata !221), !dbg !876
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !878
  call void @P7ReallocTrace(%struct.p7trace_s* %147, i32 %add465) #6, !dbg !878
  br label %for.inc, !dbg !879

for.inc:                                          ; preds = %for.body451, %if.then464
  %curralloc.4 = phi i32 [ %add465, %if.then464 ], [ %curralloc.3867, %for.body451 ]
  %dec467 = add nsw i32 %dk.0868, -1, !dbg !868
  call void @llvm.dbg.value(metadata !{i32 %dec467}, i64 0, metadata !230), !dbg !868
  %cmp449 = icmp sgt i32 %dec467, %k.3864, !dbg !868
  br i1 %cmp449, label %for.body451, label %for.cond448.if.end468.loopexit_crit_edge, !dbg !868

for.cond448.if.end468.loopexit_crit_edge:         ; preds = %for.inc
  %151 = sub i32 %144, %k.3864, !dbg !868
  br label %if.end468, !dbg !868

if.end468:                                        ; preds = %if.then446, %for.cond448.if.end468.loopexit_crit_edge, %if.then434
  %tpos.4 = phi i32 [ %tpos.0892, %if.then434 ], [ %151, %for.cond448.if.end468.loopexit_crit_edge ], [ %tpos.0892, %if.then446 ]
  %curralloc.5 = phi i32 [ %curralloc.0894, %if.then434 ], [ %curralloc.4, %for.cond448.if.end468.loopexit_crit_edge ], [ %curralloc.0894, %if.then446 ]
  %idxprom469 = sext i32 %tpos.4 to i64, !dbg !880
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !880
  %152 = load %struct.p7trace_s** %tr, align 8, !dbg !880, !tbaa !555
  %statetype470 = getelementptr inbounds %struct.p7trace_s* %152, i64 0, i32 1, !dbg !880
  %153 = load i8** %statetype470, align 8, !dbg !880, !tbaa !555
  %arrayidx471 = getelementptr inbounds i8* %153, i64 %idxprom469, !dbg !880
  store i8 1, i8* %arrayidx471, align 1, !dbg !880, !tbaa !556
  call void @llvm.dbg.value(metadata !{i32 %dec482}, i64 0, metadata !224), !dbg !881
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !881
  %154 = load %struct.p7trace_s** %tr, align 8, !dbg !881, !tbaa !555
  %nodeidx474 = getelementptr inbounds %struct.p7trace_s* %154, i64 0, i32 2, !dbg !881
  %155 = load i32** %nodeidx474, align 8, !dbg !881, !tbaa !555
  %arrayidx475 = getelementptr inbounds i32* %155, i64 %idxprom469, !dbg !881
  store i32 %k.3864, i32* %arrayidx475, align 4, !dbg !881, !tbaa !579
  %dec476 = add nsw i32 %i.0891, -1, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %dec476}, i64 0, metadata !223), !dbg !882
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !882
  %pos478 = getelementptr inbounds %struct.p7trace_s* %154, i64 0, i32 3, !dbg !882
  %156 = load i32** %pos478, align 8, !dbg !882, !tbaa !555
  %arrayidx479 = getelementptr inbounds i32* %156, i64 %idxprom469, !dbg !882
  store i32 %i.0891, i32* %arrayidx479, align 4, !dbg !882, !tbaa !579
  br label %for.end483, !dbg !883

for.end483:                                       ; preds = %if.end419, %for.cond, %if.end468
  %k.4 = phi i32 [ %dec482, %if.end468 ], [ %131, %if.end419 ], [ %dec482, %for.cond ]
  %i.1 = phi i32 [ %dec476, %if.end468 ], [ %i.0891, %if.end419 ], [ %i.0891, %for.cond ]
  %tpos.5 = phi i32 [ %tpos.4, %if.end468 ], [ %tpos.0892, %if.end419 ], [ %tpos.0892, %for.cond ]
  %curralloc.6 = phi i32 [ %curralloc.5, %if.end468 ], [ %curralloc.0894, %if.end419 ], [ %curralloc.0894, %for.cond ]
  %cmp484 = icmp slt i32 %k.4, 0, !dbg !884
  br i1 %cmp484, label %if.then486, label %sw.epilog, !dbg !884

if.then486:                                       ; preds = %for.end483
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !884
  br label %sw.epilog, !dbg !884

sw.bb488:                                         ; preds = %while.body
  %idxprom489 = sext i32 %i.0891 to i64, !dbg !885
  %arrayidx490 = getelementptr inbounds i32** %0, i64 %idxprom489, !dbg !885
  %157 = load i32** %arrayidx490, align 8, !dbg !885, !tbaa !555
  %arrayidx491 = getelementptr inbounds i32* %157, i64 2, !dbg !885
  %158 = load i32* %arrayidx491, align 4, !dbg !885, !tbaa !579
  %cmp492 = icmp slt i32 %158, -987654320, !dbg !885
  br i1 %cmp492, label %if.then494, label %if.else495, !dbg !885

if.then494:                                       ; preds = %sw.bb488
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !886
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !886, !tbaa !555
  br label %return, !dbg !886

if.else495:                                       ; preds = %sw.bb488
  %sub499 = add nsw i32 %i.0891, -1, !dbg !764
  %idxprom500 = sext i32 %sub499 to i64, !dbg !764
  %arrayidx501 = getelementptr inbounds i32** %0, i64 %idxprom500, !dbg !764
  %159 = load i32** %arrayidx501, align 8, !dbg !764, !tbaa !555
  %arrayidx502 = getelementptr inbounds i32* %159, i64 2, !dbg !764
  %160 = load i32* %arrayidx502, align 4, !dbg !764, !tbaa !579
  %161 = load i32* %arrayidx505, align 4, !dbg !764, !tbaa !579
  %add506 = add nsw i32 %161, %160, !dbg !764
  %cmp507 = icmp eq i32 %158, %add506, !dbg !764
  br i1 %cmp507, label %if.then509, label %if.else524, !dbg !764

if.then509:                                       ; preds = %if.else495
  %idxprom510 = sext i32 %tpos.0892 to i64, !dbg !888
  %arrayidx512 = getelementptr inbounds i8* %16, i64 %idxprom510, !dbg !888
  store i8 8, i8* %arrayidx512, align 1, !dbg !888, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !890
  %162 = load %struct.p7trace_s** %tr, align 8, !dbg !890, !tbaa !555
  %nodeidx514 = getelementptr inbounds %struct.p7trace_s* %162, i64 0, i32 2, !dbg !890
  %163 = load i32** %nodeidx514, align 8, !dbg !890, !tbaa !555
  %arrayidx515 = getelementptr inbounds i32* %163, i64 %idxprom510, !dbg !890
  store i32 0, i32* %arrayidx515, align 4, !dbg !890, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !891
  %pos517 = getelementptr inbounds %struct.p7trace_s* %162, i64 0, i32 3, !dbg !891
  %164 = load i32** %pos517, align 8, !dbg !891, !tbaa !555
  %arrayidx518 = getelementptr inbounds i32* %164, i64 %idxprom510, !dbg !891
  store i32 0, i32* %arrayidx518, align 4, !dbg !891, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %sub499}, i64 0, metadata !223), !dbg !892
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !892
  %arrayidx523 = getelementptr inbounds i32* %164, i64 %idxprom896, !dbg !892
  store i32 %i.0891, i32* %arrayidx523, align 4, !dbg !892, !tbaa !579
  br label %sw.epilog, !dbg !893

if.else524:                                       ; preds = %if.else495
  %arrayidx530 = getelementptr inbounds i32* %157, i64 1, !dbg !765
  %165 = load i32* %arrayidx530, align 4, !dbg !765, !tbaa !579
  %166 = load i32* %arrayidx533, align 4, !dbg !765, !tbaa !579
  %add534 = add nsw i32 %166, %165, !dbg !765
  %cmp535 = icmp eq i32 %158, %add534, !dbg !765
  br i1 %cmp535, label %if.then537, label %if.else547, !dbg !765

if.then537:                                       ; preds = %if.else524
  %idxprom538 = sext i32 %tpos.0892 to i64, !dbg !894
  %arrayidx540 = getelementptr inbounds i8* %16, i64 %idxprom538, !dbg !894
  store i8 7, i8* %arrayidx540, align 1, !dbg !894, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !896
  %167 = load %struct.p7trace_s** %tr, align 8, !dbg !896, !tbaa !555
  %nodeidx542 = getelementptr inbounds %struct.p7trace_s* %167, i64 0, i32 2, !dbg !896
  %168 = load i32** %nodeidx542, align 8, !dbg !896, !tbaa !555
  %arrayidx543 = getelementptr inbounds i32* %168, i64 %idxprom538, !dbg !896
  store i32 0, i32* %arrayidx543, align 4, !dbg !896, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !897
  %pos545 = getelementptr inbounds %struct.p7trace_s* %167, i64 0, i32 3, !dbg !897
  %169 = load i32** %pos545, align 8, !dbg !897, !tbaa !555
  %arrayidx546 = getelementptr inbounds i32* %169, i64 %idxprom538, !dbg !897
  store i32 0, i32* %arrayidx546, align 4, !dbg !897, !tbaa !579
  br label %sw.epilog, !dbg !898

if.else547:                                       ; preds = %if.else524
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !899
  br label %sw.epilog

sw.bb551:                                         ; preds = %while.body
  %idxprom552 = sext i32 %i.0891 to i64, !dbg !900
  %arrayidx553 = getelementptr inbounds i32** %0, i64 %idxprom552, !dbg !900
  %170 = load i32** %arrayidx553, align 8, !dbg !900, !tbaa !555
  %arrayidx554 = getelementptr inbounds i32* %170, i64 3, !dbg !900
  %171 = load i32* %arrayidx554, align 4, !dbg !900, !tbaa !579
  %cmp555 = icmp slt i32 %171, -987654320, !dbg !900
  br i1 %cmp555, label %if.then557, label %if.else558, !dbg !900

if.then557:                                       ; preds = %sw.bb551
  call void @P7FreeTrace(%struct.p7trace_s* %17) #6, !dbg !901
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !dbg !901, !tbaa !555
  br label %return, !dbg !901

if.else558:                                       ; preds = %sw.bb551
  %sub562 = add nsw i32 %i.0891, -1, !dbg !766
  %idxprom563 = sext i32 %sub562 to i64, !dbg !766
  %arrayidx564 = getelementptr inbounds i32** %0, i64 %idxprom563, !dbg !766
  %172 = load i32** %arrayidx564, align 8, !dbg !766, !tbaa !555
  %arrayidx565 = getelementptr inbounds i32* %172, i64 3, !dbg !766
  %173 = load i32* %arrayidx565, align 4, !dbg !766, !tbaa !579
  %174 = load i32* %arrayidx568, align 4, !dbg !766, !tbaa !579
  %add569 = add nsw i32 %174, %173, !dbg !766
  %cmp570 = icmp eq i32 %171, %add569, !dbg !766
  br i1 %cmp570, label %if.then572, label %if.else587, !dbg !766

if.then572:                                       ; preds = %if.else558
  %idxprom573 = sext i32 %tpos.0892 to i64, !dbg !903
  %arrayidx575 = getelementptr inbounds i8* %16, i64 %idxprom573, !dbg !903
  store i8 10, i8* %arrayidx575, align 1, !dbg !903, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !905
  %175 = load %struct.p7trace_s** %tr, align 8, !dbg !905, !tbaa !555
  %nodeidx577 = getelementptr inbounds %struct.p7trace_s* %175, i64 0, i32 2, !dbg !905
  %176 = load i32** %nodeidx577, align 8, !dbg !905, !tbaa !555
  %arrayidx578 = getelementptr inbounds i32* %176, i64 %idxprom573, !dbg !905
  store i32 0, i32* %arrayidx578, align 4, !dbg !905, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !906
  %pos580 = getelementptr inbounds %struct.p7trace_s* %175, i64 0, i32 3, !dbg !906
  %177 = load i32** %pos580, align 8, !dbg !906, !tbaa !555
  %arrayidx581 = getelementptr inbounds i32* %177, i64 %idxprom573, !dbg !906
  store i32 0, i32* %arrayidx581, align 4, !dbg !906, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %sub562}, i64 0, metadata !223), !dbg !907
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !907
  %arrayidx586 = getelementptr inbounds i32* %177, i64 %idxprom896, !dbg !907
  store i32 %i.0891, i32* %arrayidx586, align 4, !dbg !907, !tbaa !579
  br label %sw.epilog, !dbg !908

if.else587:                                       ; preds = %if.else558
  %arrayidx593 = getelementptr inbounds i32* %170, i64 1, !dbg !767
  %178 = load i32* %arrayidx593, align 4, !dbg !767, !tbaa !579
  %179 = load i32* %arrayidx596, align 4, !dbg !767, !tbaa !579
  %add597 = add nsw i32 %179, %178, !dbg !767
  %cmp598 = icmp eq i32 %171, %add597, !dbg !767
  br i1 %cmp598, label %if.then600, label %if.else610, !dbg !767

if.then600:                                       ; preds = %if.else587
  %idxprom601 = sext i32 %tpos.0892 to i64, !dbg !909
  %arrayidx603 = getelementptr inbounds i8* %16, i64 %idxprom601, !dbg !909
  store i8 7, i8* %arrayidx603, align 1, !dbg !909, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !911
  %180 = load %struct.p7trace_s** %tr, align 8, !dbg !911, !tbaa !555
  %nodeidx605 = getelementptr inbounds %struct.p7trace_s* %180, i64 0, i32 2, !dbg !911
  %181 = load i32** %nodeidx605, align 8, !dbg !911, !tbaa !555
  %arrayidx606 = getelementptr inbounds i32* %181, i64 %idxprom601, !dbg !911
  store i32 0, i32* %arrayidx606, align 4, !dbg !911, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !912
  %pos608 = getelementptr inbounds %struct.p7trace_s* %180, i64 0, i32 3, !dbg !912
  %182 = load i32** %pos608, align 8, !dbg !912, !tbaa !555
  %arrayidx609 = getelementptr inbounds i32* %182, i64 %idxprom601, !dbg !912
  store i32 0, i32* %arrayidx609, align 4, !dbg !912, !tbaa !579
  br label %sw.epilog, !dbg !913

if.else610:                                       ; preds = %if.else587
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !914
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !915
  br label %sw.epilog, !dbg !916

sw.epilog:                                        ; preds = %if.then600, %if.else610, %if.then572, %if.then537, %if.else547, %if.then509, %for.end483, %if.then486, %if.then398, %if.else408, %if.then375, %if.then311, %if.else352, %if.then337, %if.then288, %if.else299, %if.then264, %if.then219, %if.else230, %if.then190, %if.then100, %if.then147, %if.else158, %if.then124, %if.end79, %sw.default
  %k.5 = phi i32 [ %k.0890, %sw.default ], [ %k.0890, %if.then572 ], [ %k.0890, %if.then600 ], [ %k.0890, %if.else610 ], [ %k.0890, %if.then509 ], [ %k.0890, %if.then537 ], [ %k.0890, %if.else547 ], [ %k.4, %if.then486 ], [ %k.4, %for.end483 ], [ %k.0890, %if.then375 ], [ %k.0890, %if.then398 ], [ %k.0890, %if.else408 ], [ %k.0890, %if.then311 ], [ %k.0890, %if.then337 ], [ %k.0890, %if.else352 ], [ %dec268, %if.then264 ], [ %k.0890, %if.then288 ], [ %k.0890, %if.else299 ], [ %dec194, %if.then190 ], [ %dec223, %if.then219 ], [ %k.0890, %if.else230 ], [ %k.2, %if.end79 ], [ %dec104, %if.then100 ], [ %k.0890, %if.then124 ], [ %dec151, %if.then147 ], [ %k.0890, %if.else158 ]
  %i.2 = phi i32 [ %i.0891, %sw.default ], [ %sub562, %if.then572 ], [ %i.0891, %if.then600 ], [ %i.0891, %if.else610 ], [ %sub499, %if.then509 ], [ %i.0891, %if.then537 ], [ %i.0891, %if.else547 ], [ %i.1, %if.then486 ], [ %i.1, %for.end483 ], [ %i.0891, %if.then375 ], [ %i.0891, %if.then398 ], [ %i.0891, %if.else408 ], [ 0, %if.then311 ], [ %dec347, %if.then337 ], [ %i.0891, %if.else352 ], [ %dec272, %if.then264 ], [ %dec295, %if.then288 ], [ %i.0891, %if.else299 ], [ %dec198, %if.then190 ], [ %i.0891, %if.then219 ], [ %i.0891, %if.else230 ], [ %i.0891, %if.end79 ], [ %dec108, %if.then100 ], [ %dec131, %if.then124 ], [ %i.0891, %if.then147 ], [ %i.0891, %if.else158 ]
  %tpos.6 = phi i32 [ %tpos.0892, %sw.default ], [ %tpos.0892, %if.then572 ], [ %tpos.0892, %if.then600 ], [ %tpos.0892, %if.else610 ], [ %tpos.0892, %if.then509 ], [ %tpos.0892, %if.then537 ], [ %tpos.0892, %if.else547 ], [ %tpos.5, %if.then486 ], [ %tpos.5, %for.end483 ], [ %tpos.0892, %if.then375 ], [ %tpos.0892, %if.then398 ], [ %tpos.0892, %if.else408 ], [ %tpos.0892, %if.then311 ], [ %tpos.0892, %if.then337 ], [ %tpos.0892, %if.else352 ], [ %tpos.0892, %if.then264 ], [ %tpos.0892, %if.then288 ], [ %tpos.0892, %if.else299 ], [ %tpos.0892, %if.then190 ], [ %tpos.0892, %if.then219 ], [ %tpos.0892, %if.else230 ], [ %tpos.2, %if.end79 ], [ %tpos.0892, %if.then100 ], [ %tpos.0892, %if.then124 ], [ %tpos.0892, %if.then147 ], [ %tpos.0892, %if.else158 ]
  %curralloc.7 = phi i32 [ %curralloc.0894, %sw.default ], [ %curralloc.0894, %if.then572 ], [ %curralloc.0894, %if.then600 ], [ %curralloc.0894, %if.else610 ], [ %curralloc.0894, %if.then509 ], [ %curralloc.0894, %if.then537 ], [ %curralloc.0894, %if.else547 ], [ %curralloc.6, %if.then486 ], [ %curralloc.6, %for.end483 ], [ %curralloc.0894, %if.then375 ], [ %curralloc.0894, %if.then398 ], [ %curralloc.0894, %if.else408 ], [ %curralloc.0894, %if.then311 ], [ %curralloc.0894, %if.then337 ], [ %curralloc.0894, %if.else352 ], [ %curralloc.0894, %if.then264 ], [ %curralloc.0894, %if.then288 ], [ %curralloc.0894, %if.else299 ], [ %curralloc.0894, %if.then190 ], [ %curralloc.0894, %if.then219 ], [ %curralloc.0894, %if.else230 ], [ %curralloc.2, %if.end79 ], [ %curralloc.0894, %if.then100 ], [ %curralloc.0894, %if.then124 ], [ %curralloc.0894, %if.then147 ], [ %curralloc.0894, %if.else158 ]
  %inc614 = add nsw i32 %tpos.6, 1, !dbg !917
  call void @llvm.dbg.value(metadata !{i32 %inc614}, i64 0, metadata !222), !dbg !917
  %cmp615 = icmp eq i32 %inc614, %curralloc.7, !dbg !918
  br i1 %cmp615, label %if.then617, label %while.cond.backedge, !dbg !918

if.then617:                                       ; preds = %sw.epilog
  %add618 = add nsw i32 %curralloc.7, %N, !dbg !919
  call void @llvm.dbg.value(metadata !{i32 %add618}, i64 0, metadata !221), !dbg !919
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !921
  %183 = load %struct.p7trace_s** %tr, align 8, !dbg !921, !tbaa !555
  call void @P7ReallocTrace(%struct.p7trace_s* %183, i32 %add618) #6, !dbg !921
  br label %while.cond.backedge, !dbg !922

while.cond.backedge:                              ; preds = %sw.epilog, %if.then617
  %curralloc.0.be = phi i32 [ %add618, %if.then617 ], [ %curralloc.7, %sw.epilog ]
  %idxprom = sext i32 %tpos.6 to i64, !dbg !751
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !751
  %184 = load %struct.p7trace_s** %tr, align 8, !dbg !751, !tbaa !555
  %statetype13 = getelementptr inbounds %struct.p7trace_s* %184, i64 0, i32 1, !dbg !751
  %185 = load i8** %statetype13, align 8, !dbg !751, !tbaa !555
  %arrayidx14 = getelementptr inbounds i8* %185, i64 %idxprom, !dbg !751
  %186 = load i8* %arrayidx14, align 1, !dbg !751, !tbaa !556
  %cmp = icmp eq i8 %186, 4, !dbg !751
  br i1 %cmp, label %while.end620, label %while.body, !dbg !751

while.end620:                                     ; preds = %while.cond.backedge, %entry
  %187 = phi %struct.p7trace_s* [ %10, %entry ], [ %184, %while.cond.backedge ]
  %tpos.0.lcssa = phi i32 [ 2, %entry ], [ %inc614, %while.cond.backedge ]
  %tlen = getelementptr inbounds %struct.p7trace_s* %187, i64 0, i32 0, !dbg !923
  store i32 %tpos.0.lcssa, i32* %tlen, align 4, !dbg !923, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !924
  call void @P7ReverseTrace(%struct.p7trace_s* %187) #6, !dbg !924
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !220), !dbg !925
  %188 = load %struct.p7trace_s** %tr, align 8, !dbg !925, !tbaa !555
  store %struct.p7trace_s* %188, %struct.p7trace_s** %ret_tr, align 8, !dbg !925, !tbaa !555
  br label %return, !dbg !925

return:                                           ; preds = %while.end620, %if.then557, %if.then494, %if.then418, %if.then361, %if.then251, %if.then172, %if.then
  ret void, !dbg !925
}

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #2

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #2

; Function Attrs: optsize
declare void @P7ReverseTrace(%struct.p7trace_s*) #2

; Function Attrs: nounwind optsize uwtable
define float @P7SmallViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %ctr = alloca %struct.p7trace_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !240), !dbg !926
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !241), !dbg !926
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !242), !dbg !926
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !243), !dbg !926
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !244), !dbg !926
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %ctr}, metadata !245), !dbg !927
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !246), !dbg !928
  %call = call float @P7ParsingViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ctr) #7, !dbg !929
  call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !255), !dbg !929
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !930
  %0 = load %struct.p7trace_s** %ctr, align 8, !dbg !930, !tbaa !555
  %cmp = icmp eq %struct.p7trace_s* %0, null, !dbg !930
  %cmp1 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !930
  %or.cond = or i1 %cmp, %cmp1, !dbg !930
  br i1 %or.cond, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !931
  call void @P7FreeTrace(%struct.p7trace_s* %0) #6, !dbg !931
  br label %return, !dbg !933

if.end:                                           ; preds = %entry
  %tlen2 = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 0, !dbg !934
  %1 = load i32* %tlen2, align 4, !dbg !934, !tbaa !579
  %div = sdiv i32 %1, 2, !dbg !934
  %sub = add i32 %div, -1, !dbg !934
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !248), !dbg !934
  %conv = sext i32 %sub to i64, !dbg !935
  %mul = shl nsw i64 %conv, 3, !dbg !935
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 930, i64 %mul) #6, !dbg !935
  %2 = bitcast i8* %call3 to %struct.p7trace_s**, !dbg !935
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %2}, i64 0, metadata !247), !dbg !935
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !254), !dbg !936
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !252), !dbg !936
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !249), !dbg !937
  %cmp4353 = icmp sgt i32 %sub, 0, !dbg !937
  %pos7 = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 3, !dbg !939
  br i1 %cmp4353, label %for.body.lr.ph, label %for.end, !dbg !937

for.body.lr.ph:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !939
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !941
  br label %for.body, !dbg !937

for.body:                                         ; preds = %if.end36, %for.body.lr.ph
  %indvars.iv377 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next378, %if.end36 ]
  %totlen.0356 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %if.end36 ]
  %tlen.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %add41, %if.end36 ]
  %3 = trunc i64 %indvars.iv377 to i32, !dbg !939
  %mul6 = shl nsw i32 %3, 1, !dbg !939
  %add = add nsw i32 %mul6, 2, !dbg !939
  %idxprom = sext i32 %add to i64, !dbg !939
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !939
  %4 = load i32** %pos7, align 8, !dbg !939, !tbaa !555
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !939
  %5 = load i32* %arrayidx, align 4, !dbg !939, !tbaa !579
  %add9317 = or i32 %mul6, 1, !dbg !939
  %idxprom10 = sext i32 %add9317 to i64, !dbg !939
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %idxprom10, !dbg !939
  %6 = load i32* %arrayidx12, align 4, !dbg !939, !tbaa !579
  %sub13 = sub nsw i32 %5, %6, !dbg !939
  call void @llvm.dbg.value(metadata !{i32 %sub13}, i64 0, metadata !253), !dbg !939
  %7 = load i32* %M, align 4, !dbg !941, !tbaa !579
  tail call void @llvm.dbg.value(metadata !{i32 %sub13}, i64 0, metadata !942), !dbg !943
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !944), !dbg !943
  tail call void @llvm.dbg.value(metadata !674, i64 0, metadata !945), !dbg !946
  %add.i = add nsw i32 %sub13, 1, !dbg !947
  %conv.i = sitofp i32 %add.i to float, !dbg !947
  %conv1.i = fpext float %conv.i to double, !dbg !947
  %mul.i = fmul double %conv1.i, 3.000000e+00, !dbg !947
  %add2.i = add nsw i32 %7, 2, !dbg !947
  %conv3.i = sitofp i32 %add2.i to float, !dbg !947
  %conv4.i = fpext float %conv3.i to double, !dbg !947
  %mul5.i = fmul double %conv4.i, %mul.i, !dbg !947
  %mul6.i = fmul double %mul5.i, 4.000000e+00, !dbg !947
  %add8.i = fadd double %mul6.i, 8.000000e+01, !dbg !947
  %conv9.i = fptrunc double %add8.i to float, !dbg !947
  tail call void @llvm.dbg.value(metadata !{float %conv9.i}, i64 0, metadata !945), !dbg !947
  %mul13.i = fmul double %conv1.i, 4.000000e+00, !dbg !948
  %mul14.i = fmul double %mul13.i, 8.000000e+00, !dbg !948
  %conv15.i = fpext float %conv9.i to double, !dbg !948
  %add16.i = fadd double %mul14.i, %conv15.i, !dbg !948
  %conv17.i = fptrunc double %add16.i to float, !dbg !948
  tail call void @llvm.dbg.value(metadata !{float %conv17.i}, i64 0, metadata !945), !dbg !948
  %mul21.i = fmul double %conv1.i, 5.000000e+00, !dbg !949
  %mul22.i = fmul double %mul21.i, 4.000000e+00, !dbg !949
  %conv23.i = fpext float %conv17.i to double, !dbg !949
  %add24.i = fadd double %mul22.i, %conv23.i, !dbg !949
  %conv25.i = fptrunc double %add24.i to float, !dbg !949
  tail call void @llvm.dbg.value(metadata !{float %conv25.i}, i64 0, metadata !945), !dbg !949
  %conv27.i = fmul float %conv25.i, 0x3EB0000000000000, !dbg !950
  tail call void @llvm.dbg.value(metadata !{float %conv27.i}, i64 0, metadata !945), !dbg !950
  %conv28.i = fptosi float %conv27.i to i32, !dbg !951
  %cmp15 = icmp sgt i32 %conv28.i, 1000, !dbg !941
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !952
  %idx.ext = sext i32 %6 to i64, !dbg !952
  %add.ptr = getelementptr inbounds i8* %dsq, i64 %idx.ext, !dbg !952
  %arrayidx24 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv377, !dbg !952
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !941

if.then17:                                        ; preds = %for.body
  %call25 = call float @P7WeeViterbi(i8* %add.ptr, i32 %sub13, %struct.plan7_s* %hmm, %struct.p7trace_s** %arrayidx24) #7, !dbg !952
  br label %if.end36, !dbg !952

if.else:                                          ; preds = %for.body
  %call35 = call float @P7Viterbi(i8* %add.ptr, i32 %sub13, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %arrayidx24) #6, !dbg !953
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then17
  %8 = load %struct.p7trace_s** %arrayidx24, align 8, !dbg !954, !tbaa !555
  %tlen39 = getelementptr inbounds %struct.p7trace_s* %8, i64 0, i32 0, !dbg !954
  %9 = load i32* %tlen39, align 4, !dbg !954, !tbaa !579
  %sub40 = add i32 %tlen.0354, -4, !dbg !954
  %add41 = add i32 %sub40, %9, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !252), !dbg !954
  %add42 = add nsw i32 %sub13, %totlen.0356, !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %add42}, i64 0, metadata !254), !dbg !955
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !937
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32, !dbg !937
  %exitcond380 = icmp eq i32 %lftr.wideiv379, %sub, !dbg !937
  br i1 %exitcond380, label %for.end, label %for.body, !dbg !937

for.end:                                          ; preds = %if.end, %if.end36
  %totlen.0.lcssa = phi i32 [ %add42, %if.end36 ], [ 0, %if.end ]
  %tlen.0.lcssa = phi i32 [ %add41, %if.end36 ], [ 0, %if.end ]
  %sub43 = add nsw i32 %div, -2, !dbg !956
  %sub45 = add i32 %L, 2, !dbg !956
  %add44 = add i32 %sub45, %div, !dbg !956
  %add46 = add i32 %add44, %tlen.0.lcssa, !dbg !956
  %add47 = sub i32 %add46, %totlen.0.lcssa, !dbg !956
  call void @llvm.dbg.value(metadata !{i32 %add47}, i64 0, metadata !252), !dbg !956
  call void @P7AllocTrace(i32 %add47, %struct.p7trace_s** %tr) #6, !dbg !957
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !958
  %10 = load %struct.p7trace_s** %tr, align 8, !dbg !958, !tbaa !555
  %tlen48 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 0, !dbg !958
  store i32 %add47, i32* %tlen48, align 4, !dbg !958, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !959
  %statetype = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 1, !dbg !959
  %11 = load i8** %statetype, align 8, !dbg !959, !tbaa !555
  store i8 4, i8* %11, align 1, !dbg !959, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !960
  %12 = load %struct.p7trace_s** %tr, align 8, !dbg !960, !tbaa !555
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 2, !dbg !960
  %13 = load i32** %nodeidx, align 8, !dbg !960, !tbaa !555
  store i32 0, i32* %13, align 4, !dbg !960, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !961
  %pos51 = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 3, !dbg !961
  %14 = load i32** %pos51, align 8, !dbg !961, !tbaa !555
  store i32 0, i32* %14, align 4, !dbg !961, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !962
  %statetype53 = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 1, !dbg !962
  %15 = load i8** %statetype53, align 8, !dbg !962, !tbaa !555
  %arrayidx54 = getelementptr inbounds i8* %15, i64 1, !dbg !962
  store i8 5, i8* %arrayidx54, align 1, !dbg !962, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !963
  %16 = load %struct.p7trace_s** %tr, align 8, !dbg !963, !tbaa !555
  %nodeidx55 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 2, !dbg !963
  %17 = load i32** %nodeidx55, align 8, !dbg !963, !tbaa !555
  %arrayidx56 = getelementptr inbounds i32* %17, i64 1, !dbg !963
  store i32 0, i32* %arrayidx56, align 4, !dbg !963, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !964
  %pos57 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 3, !dbg !964
  %18 = load i32** %pos57, align 8, !dbg !964, !tbaa !555
  %arrayidx58 = getelementptr inbounds i32* %18, i64 1, !dbg !964
  store i32 0, i32* %arrayidx58, align 4, !dbg !964, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !251), !dbg !965
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !250), !dbg !966
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !966
  %19 = load i32** %pos7, align 8, !dbg !966, !tbaa !555
  %arrayidx61348 = getelementptr inbounds i32* %19, i64 1, !dbg !966
  %20 = load i32* %arrayidx61348, align 4, !dbg !966, !tbaa !579
  %cmp62349 = icmp slt i32 %20, 1, !dbg !966
  br i1 %cmp62349, label %for.cond78.preheader, label %for.body64, !dbg !966

for.cond78.preheader:                             ; preds = %for.body64, %for.end
  %21 = phi i32* [ %19, %for.end ], [ %28, %for.body64 ]
  %22 = phi %struct.p7trace_s* [ %16, %for.end ], [ %25, %for.body64 ]
  %tpos.0.lcssa = phi i32 [ 2, %for.end ], [ %inc74, %for.body64 ]
  br i1 %cmp4353, label %for.cond82.preheader, label %for.end187, !dbg !968

for.body64:                                       ; preds = %for.end, %for.body64
  %23 = phi %struct.p7trace_s* [ %25, %for.body64 ], [ %16, %for.end ], !dbg !970
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %for.body64 ], [ 2, %for.end ]
  %tpos.0351 = phi i32 [ %inc74, %for.body64 ], [ 2, %for.end ]
  %pos.0350 = phi i32 [ %inc76, %for.body64 ], [ 1, %for.end ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !970
  %statetype66 = getelementptr inbounds %struct.p7trace_s* %23, i64 0, i32 1, !dbg !970
  %24 = load i8** %statetype66, align 8, !dbg !970, !tbaa !555
  %arrayidx67 = getelementptr inbounds i8* %24, i64 %indvars.iv375, !dbg !970
  store i8 5, i8* %arrayidx67, align 1, !dbg !970, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !972
  %25 = load %struct.p7trace_s** %tr, align 8, !dbg !972, !tbaa !555
  %nodeidx69 = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 2, !dbg !972
  %26 = load i32** %nodeidx69, align 8, !dbg !972, !tbaa !555
  %arrayidx70 = getelementptr inbounds i32* %26, i64 %indvars.iv375, !dbg !972
  store i32 0, i32* %arrayidx70, align 4, !dbg !972, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !973
  %pos72 = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 3, !dbg !973
  %27 = load i32** %pos72, align 8, !dbg !973, !tbaa !555
  %arrayidx73 = getelementptr inbounds i32* %27, i64 %indvars.iv375, !dbg !973
  store i32 %pos.0350, i32* %arrayidx73, align 4, !dbg !973, !tbaa !579
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !966
  %inc74 = add nsw i32 %tpos.0351, 1, !dbg !974
  call void @llvm.dbg.value(metadata !{i32 %inc74}, i64 0, metadata !251), !dbg !974
  %inc76 = add nsw i32 %pos.0350, 1, !dbg !966
  call void @llvm.dbg.value(metadata !{i32 %inc76}, i64 0, metadata !250), !dbg !966
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !966
  %28 = load i32** %pos7, align 8, !dbg !966, !tbaa !555
  %arrayidx61 = getelementptr inbounds i32* %28, i64 1, !dbg !966
  %29 = load i32* %arrayidx61, align 4, !dbg !966, !tbaa !579
  %cmp62 = icmp slt i32 %pos.0350, %29, !dbg !966
  br i1 %cmp62, label %for.body64, label %for.cond78.preheader, !dbg !966

for.cond82.preheader:                             ; preds = %for.cond78.preheader, %for.inc185
  %30 = phi %struct.p7trace_s* [ %69, %for.inc185 ], [ %22, %for.cond78.preheader ]
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.inc185 ], [ 0, %for.cond78.preheader ]
  %tpos.1344 = phi i32 [ %tpos.4, %for.inc185 ], [ %tpos.0.lcssa, %for.cond78.preheader ]
  %arrayidx84 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv371, !dbg !975
  %31 = load %struct.p7trace_s** %arrayidx84, align 8, !dbg !975, !tbaa !555
  %tlen85330 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 0, !dbg !975
  %32 = load i32* %tlen85330, align 4, !dbg !975, !tbaa !579
  %sub86331 = add nsw i32 %32, -2, !dbg !975
  %cmp87332 = icmp sgt i32 %sub86331, 2, !dbg !975
  %33 = trunc i64 %indvars.iv371 to i32, !dbg !978
  br i1 %cmp87332, label %for.body89.lr.ph, label %for.end136, !dbg !975

for.body89.lr.ph:                                 ; preds = %for.cond82.preheader
  %mul119 = shl nsw i32 %33, 1, !dbg !978
  %add120316 = or i32 %mul119, 1, !dbg !978
  %idxprom121 = sext i32 %add120316 to i64, !dbg !978
  %34 = sext i32 %tpos.1344 to i64, !dbg !975
  br label %for.body89, !dbg !975

for.body89:                                       ; preds = %for.body89.lr.ph, %if.end132
  %35 = phi %struct.p7trace_s* [ %30, %for.body89.lr.ph ], [ %43, %if.end132 ]
  %indvars.iv366 = phi i64 [ %34, %for.body89.lr.ph ], [ %indvars.iv.next367, %if.end132 ], !dbg !975
  %indvars.iv364 = phi i64 [ 2, %for.body89.lr.ph ], [ %indvars.iv.next365, %if.end132 ]
  %36 = phi %struct.p7trace_s* [ %31, %for.body89.lr.ph ], [ %40, %if.end132 ]
  %tpos.2333 = phi i32 [ %tpos.1344, %for.body89.lr.ph ], [ %inc133, %if.end132 ]
  %statetype93 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 1, !dbg !980
  %37 = load i8** %statetype93, align 8, !dbg !980, !tbaa !555
  %arrayidx94 = getelementptr inbounds i8* %37, i64 %indvars.iv364, !dbg !980
  %38 = load i8* %arrayidx94, align 1, !dbg !980, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !980
  %statetype96 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 1, !dbg !980
  %39 = load i8** %statetype96, align 8, !dbg !980, !tbaa !555
  %arrayidx97 = getelementptr inbounds i8* %39, i64 %indvars.iv366, !dbg !980
  store i8 %38, i8* %arrayidx97, align 1, !dbg !980, !tbaa !556
  %40 = load %struct.p7trace_s** %arrayidx84, align 8, !dbg !981, !tbaa !555
  %nodeidx101 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 2, !dbg !981
  %41 = load i32** %nodeidx101, align 8, !dbg !981, !tbaa !555
  %arrayidx102 = getelementptr inbounds i32* %41, i64 %indvars.iv364, !dbg !981
  %42 = load i32* %arrayidx102, align 4, !dbg !981, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !981
  %43 = load %struct.p7trace_s** %tr, align 8, !dbg !981, !tbaa !555
  %nodeidx104 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 2, !dbg !981
  %44 = load i32** %nodeidx104, align 8, !dbg !981, !tbaa !555
  %arrayidx105 = getelementptr inbounds i32* %44, i64 %indvars.iv366, !dbg !981
  store i32 %42, i32* %arrayidx105, align 4, !dbg !981, !tbaa !579
  %pos109 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 3, !dbg !982
  %45 = load i32** %pos109, align 8, !dbg !982, !tbaa !555
  %arrayidx110 = getelementptr inbounds i32* %45, i64 %indvars.iv364, !dbg !982
  %46 = load i32* %arrayidx110, align 4, !dbg !982, !tbaa !579
  %cmp111 = icmp sgt i32 %46, 0, !dbg !982
  br i1 %cmp111, label %if.then113, label %if.else128, !dbg !982

if.then113:                                       ; preds = %for.body89
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !978
  %47 = load i32** %pos7, align 8, !dbg !978, !tbaa !555
  %arrayidx123 = getelementptr inbounds i32* %47, i64 %idxprom121, !dbg !978
  %48 = load i32* %arrayidx123, align 4, !dbg !978, !tbaa !579
  %add124 = add nsw i32 %48, %46, !dbg !978
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !978
  %pos126 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 3, !dbg !978
  %49 = load i32** %pos126, align 8, !dbg !978, !tbaa !555
  %arrayidx127 = getelementptr inbounds i32* %49, i64 %indvars.iv366, !dbg !978
  store i32 %add124, i32* %arrayidx127, align 4, !dbg !978, !tbaa !579
  br label %if.end132, !dbg !978

if.else128:                                       ; preds = %for.body89
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !983
  %pos130 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 3, !dbg !983
  %50 = load i32** %pos130, align 8, !dbg !983, !tbaa !555
  %arrayidx131 = getelementptr inbounds i32* %50, i64 %indvars.iv366, !dbg !983
  store i32 0, i32* %arrayidx131, align 4, !dbg !983, !tbaa !579
  br label %if.end132

if.end132:                                        ; preds = %if.else128, %if.then113
  %indvars.iv.next367 = add i64 %indvars.iv366, 1, !dbg !975
  %inc133 = add nsw i32 %tpos.2333, 1, !dbg !984
  call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !251), !dbg !984
  %indvars.iv.next365 = add i64 %indvars.iv364, 1, !dbg !975
  %tlen85 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 0, !dbg !975
  %51 = load i32* %tlen85, align 4, !dbg !975, !tbaa !579
  %sub86 = add nsw i32 %51, -2, !dbg !975
  %52 = trunc i64 %indvars.iv.next365 to i32, !dbg !975
  %cmp87 = icmp slt i32 %52, %sub86, !dbg !975
  br i1 %cmp87, label %for.body89, label %for.end136, !dbg !975

for.end136:                                       ; preds = %for.cond82.preheader, %if.end132
  %53 = phi %struct.p7trace_s* [ %43, %if.end132 ], [ %30, %for.cond82.preheader ], !dbg !985
  %tpos.2.lcssa = phi i32 [ %inc133, %if.end132 ], [ %tpos.1344, %for.cond82.preheader ]
  %cmp138 = icmp eq i32 %33, %sub43, !dbg !985
  %conv140 = select i1 %cmp138, i8 8, i8 10, !dbg !985
  %idxprom141 = sext i32 %tpos.2.lcssa to i64, !dbg !985
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !985
  %statetype142 = getelementptr inbounds %struct.p7trace_s* %53, i64 0, i32 1, !dbg !985
  %54 = load i8** %statetype142, align 8, !dbg !985, !tbaa !555
  %arrayidx143 = getelementptr inbounds i8* %54, i64 %idxprom141, !dbg !985
  store i8 %conv140, i8* %arrayidx143, align 1, !dbg !985, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !986
  %55 = load %struct.p7trace_s** %tr, align 8, !dbg !986, !tbaa !555
  %nodeidx145 = getelementptr inbounds %struct.p7trace_s* %55, i64 0, i32 2, !dbg !986
  %56 = load i32** %nodeidx145, align 8, !dbg !986, !tbaa !555
  %arrayidx146 = getelementptr inbounds i32* %56, i64 %idxprom141, !dbg !986
  store i32 0, i32* %arrayidx146, align 4, !dbg !986, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !987
  %pos148 = getelementptr inbounds %struct.p7trace_s* %55, i64 0, i32 3, !dbg !987
  %57 = load i32** %pos148, align 8, !dbg !987, !tbaa !555
  %arrayidx149 = getelementptr inbounds i32* %57, i64 %idxprom141, !dbg !987
  store i32 0, i32* %arrayidx149, align 4, !dbg !987, !tbaa !579
  %inc150 = add i32 %tpos.2.lcssa, 1, !dbg !988
  call void @llvm.dbg.value(metadata !{i32 %inc150}, i64 0, metadata !251), !dbg !988
  br i1 %cmp138, label %for.inc185, label %if.then154, !dbg !989

if.then154:                                       ; preds = %for.end136
  %mul155 = shl i32 %33, 1, !dbg !990
  %add156 = add nsw i32 %mul155, 2, !dbg !990
  %idxprom157 = sext i32 %add156 to i64, !dbg !990
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !990
  %58 = load i32** %pos7, align 8, !dbg !990, !tbaa !555
  %arrayidx159 = getelementptr inbounds i32* %58, i64 %idxprom157, !dbg !990
  %59 = load i32* %arrayidx159, align 4, !dbg !990, !tbaa !579
  %add164 = add i32 %mul155, 3, !dbg !990
  %idxprom165 = sext i32 %add164 to i64, !dbg !990
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !990
  %arrayidx167338 = getelementptr inbounds i32* %58, i64 %idxprom165, !dbg !990
  %60 = load i32* %arrayidx167338, align 4, !dbg !990, !tbaa !579
  %cmp168339 = icmp slt i32 %59, %60, !dbg !990
  br i1 %cmp168339, label %for.body170.lr.ph, label %for.inc185, !dbg !990

for.body170.lr.ph:                                ; preds = %if.then154
  %61 = sext i32 %inc150 to i64
  br label %for.body170, !dbg !990

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %62 = phi %struct.p7trace_s* [ %55, %for.body170.lr.ph ], [ %64, %for.body170 ], !dbg !990
  %indvars.iv368 = phi i64 [ %61, %for.body170.lr.ph ], [ %indvars.iv.next369, %for.body170 ]
  %pos.1341.in = phi i32 [ %59, %for.body170.lr.ph ], [ %pos.1341, %for.body170 ]
  %tpos.3340 = phi i32 [ %inc150, %for.body170.lr.ph ], [ %inc180, %for.body170 ]
  %pos.1341 = add nsw i32 %pos.1341.in, 1, !dbg !990
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !992
  %statetype172 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 1, !dbg !992
  %63 = load i8** %statetype172, align 8, !dbg !992, !tbaa !555
  %arrayidx173 = getelementptr inbounds i8* %63, i64 %indvars.iv368, !dbg !992
  store i8 10, i8* %arrayidx173, align 1, !dbg !992, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !994
  %64 = load %struct.p7trace_s** %tr, align 8, !dbg !994, !tbaa !555
  %nodeidx175 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 2, !dbg !994
  %65 = load i32** %nodeidx175, align 8, !dbg !994, !tbaa !555
  %arrayidx176 = getelementptr inbounds i32* %65, i64 %indvars.iv368, !dbg !994
  store i32 0, i32* %arrayidx176, align 4, !dbg !994, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !995
  %pos178 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 3, !dbg !995
  %66 = load i32** %pos178, align 8, !dbg !995, !tbaa !555
  %arrayidx179 = getelementptr inbounds i32* %66, i64 %indvars.iv368, !dbg !995
  store i32 %pos.1341, i32* %arrayidx179, align 4, !dbg !995, !tbaa !579
  %inc180 = add nsw i32 %tpos.3340, 1, !dbg !996
  call void @llvm.dbg.value(metadata !{i32 %inc180}, i64 0, metadata !251), !dbg !996
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !990
  %67 = load i32** %pos7, align 8, !dbg !990, !tbaa !555
  %arrayidx167 = getelementptr inbounds i32* %67, i64 %idxprom165, !dbg !990
  %68 = load i32* %arrayidx167, align 4, !dbg !990, !tbaa !579
  %cmp168 = icmp slt i32 %pos.1341, %68, !dbg !990
  %indvars.iv.next369 = add i64 %indvars.iv368, 1, !dbg !990
  br i1 %cmp168, label %for.body170, label %for.inc185, !dbg !990

for.inc185:                                       ; preds = %if.then154, %for.body170, %for.end136
  %69 = phi %struct.p7trace_s* [ %55, %for.end136 ], [ %55, %if.then154 ], [ %64, %for.body170 ]
  %tpos.4 = phi i32 [ %inc150, %for.end136 ], [ %inc150, %if.then154 ], [ %inc180, %for.body170 ]
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !968
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32, !dbg !968
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %sub, !dbg !968
  br i1 %exitcond374, label %for.cond78.for.end187_crit_edge, label %for.cond82.preheader, !dbg !968

for.cond78.for.end187_crit_edge:                  ; preds = %for.inc185
  %.pre = load i32** %pos7, align 8, !dbg !997, !tbaa !555
  br label %for.end187, !dbg !968

for.end187:                                       ; preds = %for.cond78.preheader, %for.cond78.for.end187_crit_edge
  %70 = phi i32* [ %.pre, %for.cond78.for.end187_crit_edge ], [ %21, %for.cond78.preheader ]
  %71 = phi %struct.p7trace_s* [ %69, %for.cond78.for.end187_crit_edge ], [ %22, %for.cond78.preheader ]
  %tpos.1.lcssa = phi i32 [ %tpos.4, %for.cond78.for.end187_crit_edge ], [ %tpos.0.lcssa, %for.cond78.preheader ]
  %mul188 = shl nsw i32 %sub, 1, !dbg !997
  %idxprom189 = sext i32 %mul188 to i64, !dbg !997
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !997
  %arrayidx191 = getelementptr inbounds i32* %70, i64 %idxprom189, !dbg !997
  %72 = load i32* %arrayidx191, align 4, !dbg !997, !tbaa !579
  %cmp194321 = icmp slt i32 %72, %L, !dbg !997
  %idxprom197322 = sext i32 %tpos.1.lcssa to i64, !dbg !999
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !999
  %statetype198323 = getelementptr inbounds %struct.p7trace_s* %71, i64 0, i32 1, !dbg !999
  %73 = load i8** %statetype198323, align 8, !dbg !999, !tbaa !555
  %arrayidx199324 = getelementptr inbounds i8* %73, i64 %idxprom197322, !dbg !999
  br i1 %cmp194321, label %for.body196.lr.ph, label %for.end209, !dbg !997

for.body196.lr.ph:                                ; preds = %for.end187
  %74 = add i32 %L, -1, !dbg !997
  %75 = sub i32 %74, %72, !dbg !997
  %76 = zext i32 %75 to i64, !dbg !997
  %77 = add i64 %idxprom197322, %76, !dbg !997
  br label %for.body196, !dbg !997

for.body196:                                      ; preds = %for.body196, %for.body196.lr.ph
  %indvars.iv361 = phi i64 [ %idxprom197322, %for.body196.lr.ph ], [ %indvars.iv.next362, %for.body196 ]
  %arrayidx199328 = phi i8* [ %arrayidx199324, %for.body196.lr.ph ], [ %arrayidx199, %for.body196 ]
  %pos.2326.in = phi i32 [ %72, %for.body196.lr.ph ], [ %pos.2326, %for.body196 ]
  %pos.2326 = add nsw i32 %pos.2326.in, 1, !dbg !997
  store i8 8, i8* %arrayidx199328, align 1, !dbg !999, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !1001
  %78 = load %struct.p7trace_s** %tr, align 8, !dbg !1001, !tbaa !555
  %nodeidx201 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 2, !dbg !1001
  %79 = load i32** %nodeidx201, align 8, !dbg !1001, !tbaa !555
  %arrayidx202 = getelementptr inbounds i32* %79, i64 %indvars.iv361, !dbg !1001
  store i32 0, i32* %arrayidx202, align 4, !dbg !1001, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !1002
  %pos204 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 3, !dbg !1002
  %80 = load i32** %pos204, align 8, !dbg !1002, !tbaa !555
  %arrayidx205 = getelementptr inbounds i32* %80, i64 %indvars.iv361, !dbg !1002
  store i32 %pos.2326, i32* %arrayidx205, align 4, !dbg !1002, !tbaa !579
  %indvars.iv.next362 = add i64 %indvars.iv361, 1, !dbg !997
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !999
  %statetype198 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 1, !dbg !999
  %81 = load i8** %statetype198, align 8, !dbg !999, !tbaa !555
  %arrayidx199 = getelementptr inbounds i8* %81, i64 %indvars.iv.next362, !dbg !999
  %exitcond363 = icmp eq i32 %pos.2326, %L, !dbg !997
  br i1 %exitcond363, label %for.cond193.for.end209_crit_edge, label %for.body196, !dbg !997

for.cond193.for.end209_crit_edge:                 ; preds = %for.body196
  %82 = add i64 %77, 1, !dbg !997
  br label %for.end209, !dbg !997

for.end209:                                       ; preds = %for.cond193.for.end209_crit_edge, %for.end187
  %arrayidx199.lcssa = phi i8* [ %arrayidx199, %for.cond193.for.end209_crit_edge ], [ %arrayidx199324, %for.end187 ]
  %idxprom197.lcssa = phi i64 [ %82, %for.cond193.for.end209_crit_edge ], [ %idxprom197322, %for.end187 ]
  store i8 9, i8* %arrayidx199.lcssa, align 1, !dbg !1003, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !1004
  %83 = load %struct.p7trace_s** %tr, align 8, !dbg !1004, !tbaa !555
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s* %83, i64 0, i32 2, !dbg !1004
  %84 = load i32** %nodeidx214, align 8, !dbg !1004, !tbaa !555
  %arrayidx215 = getelementptr inbounds i32* %84, i64 %idxprom197.lcssa, !dbg !1004
  store i32 0, i32* %arrayidx215, align 4, !dbg !1004, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !1005
  %pos217 = getelementptr inbounds %struct.p7trace_s* %83, i64 0, i32 3, !dbg !1005
  %85 = load i32** %pos217, align 8, !dbg !1005, !tbaa !555
  %arrayidx218 = getelementptr inbounds i32* %85, i64 %idxprom197.lcssa, !dbg !1005
  store i32 0, i32* %arrayidx218, align 4, !dbg !1005, !tbaa !579
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !249), !dbg !1006
  br i1 %cmp4353, label %for.body223, label %for.end228, !dbg !1006

for.body223:                                      ; preds = %for.end209, %for.body223
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body223 ], [ 0, %for.end209 ]
  %arrayidx225 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv, !dbg !1006
  %86 = load %struct.p7trace_s** %arrayidx225, align 8, !dbg !1006, !tbaa !555
  call void @P7FreeTrace(%struct.p7trace_s* %86) #6, !dbg !1006
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1006
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1006
  %exitcond = icmp eq i32 %lftr.wideiv, %sub, !dbg !1006
  br i1 %exitcond, label %for.end228, label %for.body223, !dbg !1006

for.end228:                                       ; preds = %for.body223, %for.end209
  call void @free(i8* %call3) #6, !dbg !1008
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ctr}, i64 0, metadata !245), !dbg !1009
  %87 = load %struct.p7trace_s** %ctr, align 8, !dbg !1009, !tbaa !555
  call void @P7FreeTrace(%struct.p7trace_s* %87) #6, !dbg !1009
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !246), !dbg !1010
  %88 = load %struct.p7trace_s** %tr, align 8, !dbg !1010, !tbaa !555
  store %struct.p7trace_s* %88, %struct.p7trace_s** %ret_tr, align 8, !dbg !1010, !tbaa !555
  br label %return, !dbg !1011

return:                                           ; preds = %for.end228, %if.then
  ret float %call, !dbg !1012
}

; Function Attrs: nounwind optsize uwtable
define float @P7ParsingViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !261), !dbg !1013
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !262), !dbg !1013
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !263), !dbg !1013
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !264), !dbg !1013
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !267), !dbg !1014
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1015
  %0 = load i32* %M, align 4, !dbg !1015, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !1016) #8, !dbg !1017
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1018) #8, !dbg !1017
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %0, i32 0, i32 0) #6, !dbg !1019
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !1020) #8, !dbg !1019
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0, !dbg !1021
  %1 = load i32*** %xmx1.i, align 8, !dbg !1021, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1021
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !1022), !dbg !1017
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1023
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1024
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1025
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1025
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1025
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1026
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1031
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1032
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1033
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1034
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1036
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1037
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1038
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1039
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1040
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1041
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1042
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1043
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1044
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !268), !dbg !1045
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1, !dbg !1046
  %2 = load i32*** %mmx4.i, align 8, !dbg !1046, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1046
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !1047), !dbg !1017
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1048
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1050
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1051
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1052
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1053
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1026
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1054
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1055
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1056
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1057
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !269), !dbg !1034
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2, !dbg !1059
  %3 = load i32*** %imx8.i, align 8, !dbg !1059, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1059
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !1060), !dbg !1017
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1048
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1050
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1053
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1061
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1062
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1064
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !271), !dbg !1065
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3, !dbg !1066
  %4 = load i32*** %dmx12.i, align 8, !dbg !1066, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1066
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !1067), !dbg !1017
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1048
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1050
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1054
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1068
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1069
  call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !270), !dbg !1071
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !265), !dbg !1015
  %5 = load i32* %M, align 4, !dbg !1072, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !1073) #8, !dbg !1074
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !1075) #8, !dbg !1074
  %call.i807 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %5, i32 0, i32 0) #6, !dbg !1076
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i807}, i64 0, metadata !1077) #8, !dbg !1076
  %xmx1.i808 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 0, !dbg !1078
  %6 = load i32*** %xmx1.i808, align 8, !dbg !1078, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1078
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !1079), !dbg !1074
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1080
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1082
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1084
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1086
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1088
  call void @llvm.dbg.value(metadata !{i32** %6}, i64 0, metadata !272), !dbg !1090
  %mmx4.i809 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 1, !dbg !1091
  %7 = load i32*** %mmx4.i809, align 8, !dbg !1091, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1091
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !1092), !dbg !1074
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1093
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1095
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1097
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1099
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1069
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1062
  call void @llvm.dbg.value(metadata !{i32** %7}, i64 0, metadata !273), !dbg !1101
  %imx8.i810 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 2, !dbg !1103
  %8 = load i32*** %imx8.i810, align 8, !dbg !1103, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !275), !dbg !1103
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !1104), !dbg !1074
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !275), !dbg !1095
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !275), !dbg !1062
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !275), !dbg !1105
  %dmx12.i811 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 3, !dbg !1107
  %9 = load i32*** %dmx12.i811, align 8, !dbg !1107, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %9}, i64 0, metadata !274), !dbg !1107
  call void @llvm.dbg.value(metadata !{i32** %9}, i64 0, metadata !1108), !dbg !1074
  call void @llvm.dbg.value(metadata !{i32** %9}, i64 0, metadata !274), !dbg !1099
  call void @llvm.dbg.value(metadata !{i32** %9}, i64 0, metadata !274), !dbg !1069
  call void @llvm.dbg.value(metadata !{i32** %9}, i64 0, metadata !274), !dbg !1109
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i807}, i64 0, metadata !266), !dbg !1072
  %add = add i32 %L, 1, !dbg !1111
  %conv = sext i32 %add to i64, !dbg !1111
  %mul = shl nsw i64 %conv, 2, !dbg !1111
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1083, i64 %mul) #6, !dbg !1111
  %10 = bitcast i8* %call3 to i32*, !dbg !1111
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !276), !dbg !1111
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1084, i64 %mul) #6, !dbg !1112
  %11 = bitcast i8* %call7 to i32*, !dbg !1112
  call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !277), !dbg !1112
  %12 = load i32** %1, align 8, !dbg !1023, !tbaa !555
  %arrayidx8 = getelementptr inbounds i32* %12, i64 4, !dbg !1023
  store i32 0, i32* %arrayidx8, align 4, !dbg !1023, !tbaa !579
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !1024
  %13 = load i32* %arrayidx10, align 4, !dbg !1024, !tbaa !579
  store i32 %13, i32* %12, align 4, !dbg !1024, !tbaa !579
  store i32 0, i32* %10, align 4, !dbg !1113, !tbaa !579
  %arrayidx15 = getelementptr inbounds i32* %12, i64 3, !dbg !1025
  store i32 -987654321, i32* %arrayidx15, align 4, !dbg !1025, !tbaa !579
  %arrayidx17 = getelementptr inbounds i32* %12, i64 2, !dbg !1025
  store i32 -987654321, i32* %arrayidx17, align 4, !dbg !1025, !tbaa !579
  %arrayidx19 = getelementptr inbounds i32* %12, i64 1, !dbg !1025
  store i32 -987654321, i32* %arrayidx19, align 4, !dbg !1025, !tbaa !579
  store i32 -1, i32* %11, align 4, !dbg !1114, !tbaa !579
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !280), !dbg !1115
  %14 = load i32* %M, align 4, !dbg !1115, !tbaa !579
  %cmp879 = icmp slt i32 %14, 0, !dbg !1115
  br i1 %cmp879, label %for.cond31.preheader, label %for.body.lr.ph, !dbg !1115

for.body.lr.ph:                                   ; preds = %entry
  %15 = load i32** %4, align 8, !dbg !1048, !tbaa !555
  %16 = load i32** %3, align 8, !dbg !1048, !tbaa !555
  %17 = load i32** %2, align 8, !dbg !1048, !tbaa !555
  br label %for.body, !dbg !1115

for.cond31.preheader:                             ; preds = %for.body, %entry
  %cmp32876 = icmp slt i32 %L, 1, !dbg !1116
  br i1 %cmp32876, label %for.end531, label %for.body34.lr.ph, !dbg !1116

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %arrayidx359 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !1032
  %arrayidx410 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !1037
  %arrayidx430 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !1038
  %arrayidx469 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !1041
  %arrayidx494 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !1043
  %arrayidx514 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !1044
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !1034
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !1052
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !1026
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !1117
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !1118
  br label %for.body34, !dbg !1116

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx24 = getelementptr inbounds i32* %15, i64 %indvars.iv887, !dbg !1048
  store i32 -987654321, i32* %arrayidx24, align 4, !dbg !1048, !tbaa !579
  %arrayidx27 = getelementptr inbounds i32* %16, i64 %indvars.iv887, !dbg !1048
  store i32 -987654321, i32* %arrayidx27, align 4, !dbg !1048, !tbaa !579
  %arrayidx30 = getelementptr inbounds i32* %17, i64 %indvars.iv887, !dbg !1048
  store i32 -987654321, i32* %arrayidx30, align 4, !dbg !1048, !tbaa !579
  %indvars.iv.next888 = add i64 %indvars.iv887, 1, !dbg !1115
  %18 = load i32* %M, align 4, !dbg !1115, !tbaa !579
  %19 = trunc i64 %indvars.iv887 to i32, !dbg !1115
  %cmp = icmp slt i32 %19, %18, !dbg !1115
  br i1 %cmp, label %for.body, label %for.cond31.preheader, !dbg !1115

for.body34:                                       ; preds = %for.inc529, %for.body34.lr.ph
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %for.inc529 ], [ 1, %for.body34.lr.ph ]
  %20 = trunc i64 %indvars.iv884 to i32, !dbg !1119
  %rem = srem i32 %20, 2, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !282), !dbg !1119
  %lnot = icmp eq i32 %rem, 0, !dbg !1120
  %idxprom35 = sext i32 %rem to i64, !dbg !1050
  %arrayidx36 = getelementptr inbounds i32** %4, i64 %idxprom35, !dbg !1050
  %21 = load i32** %arrayidx36, align 8, !dbg !1050, !tbaa !555
  store i32 -987654321, i32* %21, align 4, !dbg !1050, !tbaa !579
  %arrayidx39 = getelementptr inbounds i32** %3, i64 %idxprom35, !dbg !1050
  %22 = load i32** %arrayidx39, align 8, !dbg !1050, !tbaa !555
  store i32 -987654321, i32* %22, align 4, !dbg !1050, !tbaa !579
  %arrayidx42 = getelementptr inbounds i32** %2, i64 %idxprom35, !dbg !1050
  %23 = load i32** %arrayidx42, align 8, !dbg !1050, !tbaa !555
  store i32 -987654321, i32* %23, align 4, !dbg !1050, !tbaa !579
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !280), !dbg !1121
  %24 = load i32* %M, align 4, !dbg !1121, !tbaa !579
  %cmp46872 = icmp slt i32 %24, 1, !dbg !1121
  %idxprom354.phi.trans.insert = zext i1 %lnot to i64
  br i1 %cmp46872, label %for.body34.for.end350_crit_edge, label %for.body48.lr.ph, !dbg !1121

for.body34.for.end350_crit_edge:                  ; preds = %for.body34
  %arrayidx355.phi.trans.insert = getelementptr inbounds i32** %1, i64 %idxprom354.phi.trans.insert
  %.pre900 = load i32** %arrayidx355.phi.trans.insert, align 8, !dbg !1032, !tbaa !555
  br label %for.end350, !dbg !1121

for.body48.lr.ph:                                 ; preds = %for.body34
  %arrayidx55 = getelementptr inbounds i32** %2, i64 %idxprom354.phi.trans.insert, !dbg !1052
  %arrayidx71 = getelementptr inbounds i32** %7, i64 %idxprom354.phi.trans.insert, !dbg !1093
  %arrayidx75 = getelementptr inbounds i32** %7, i64 %idxprom35, !dbg !1093
  %arrayidx80 = getelementptr inbounds i32** %3, i64 %idxprom354.phi.trans.insert, !dbg !1053
  %arrayidx102 = getelementptr inbounds i32** %8, i64 %idxprom354.phi.trans.insert, !dbg !1095
  %arrayidx110 = getelementptr inbounds i32** %1, i64 %idxprom354.phi.trans.insert, !dbg !1026
  %25 = add nsw i64 %indvars.iv884, 4294967295, !dbg !1097
  %arrayidx135 = getelementptr inbounds i32** %4, i64 %idxprom354.phi.trans.insert, !dbg !1054
  %arrayidx157 = getelementptr inbounds i32** %9, i64 %idxprom354.phi.trans.insert, !dbg !1099
  %arrayidx166 = getelementptr inbounds i8* %dsq, i64 %indvars.iv884, !dbg !1117
  %arrayidx221 = getelementptr inbounds i32** %9, i64 %idxprom35, !dbg !1069
  %arrayidx286 = getelementptr inbounds i32** %8, i64 %idxprom35, !dbg !1062
  %.pre893 = load i32** %arrayidx55, align 8, !dbg !1052, !tbaa !555
  %.pre894 = load i32*** %tsc, align 8, !dbg !1052, !tbaa !555
  %.pre901 = load i32** %.pre894, align 8, !dbg !1052, !tbaa !555
  br label %for.body48, !dbg !1121

for.body48:                                       ; preds = %for.inc348, %for.body48.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc348 ], [ 1, %for.body48.lr.ph ]
  %arrayidx52 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !1051
  store i32 -987654321, i32* %arrayidx52, align 4, !dbg !1051, !tbaa !579
  %26 = add nsw i64 %indvars.iv, -1, !dbg !1052
  %arrayidx56 = getelementptr inbounds i32* %.pre893, i64 %26, !dbg !1052
  %27 = load i32* %arrayidx56, align 4, !dbg !1052, !tbaa !579
  %arrayidx60 = getelementptr inbounds i32* %.pre901, i64 %26, !dbg !1052
  %28 = load i32* %arrayidx60, align 4, !dbg !1052, !tbaa !579
  %add61 = add nsw i32 %28, %27, !dbg !1052
  call void @llvm.dbg.value(metadata !{i32 %add61}, i64 0, metadata !278), !dbg !1052
  %cmp62 = icmp sgt i32 %add61, -987654321, !dbg !1052
  br i1 %cmp62, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %for.body48
  store i32 %add61, i32* %arrayidx52, align 4, !dbg !1093, !tbaa !579
  %29 = load i32** %arrayidx71, align 8, !dbg !1093, !tbaa !555
  %arrayidx72 = getelementptr inbounds i32* %29, i64 %26, !dbg !1093
  %30 = load i32* %arrayidx72, align 4, !dbg !1093, !tbaa !579
  %31 = load i32** %arrayidx75, align 8, !dbg !1093, !tbaa !555
  %arrayidx76 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !1093
  store i32 %30, i32* %arrayidx76, align 4, !dbg !1093, !tbaa !579
  %.pre895 = load i32* %arrayidx52, align 4, !dbg !1053, !tbaa !579
  br label %if.end, !dbg !1093

if.end:                                           ; preds = %for.body48, %if.then
  %32 = phi i32 [ %.pre895, %if.then ], [ -987654321, %for.body48 ]
  %33 = load i32** %arrayidx80, align 8, !dbg !1053, !tbaa !555
  %arrayidx81 = getelementptr inbounds i32* %33, i64 %26, !dbg !1053
  %34 = load i32* %arrayidx81, align 4, !dbg !1053, !tbaa !579
  %arrayidx85 = getelementptr inbounds i32** %.pre894, i64 3, !dbg !1053
  %35 = load i32** %arrayidx85, align 8, !dbg !1053, !tbaa !555
  %arrayidx86 = getelementptr inbounds i32* %35, i64 %26, !dbg !1053
  %36 = load i32* %arrayidx86, align 4, !dbg !1053, !tbaa !579
  %add87 = add nsw i32 %36, %34, !dbg !1053
  call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !278), !dbg !1053
  %cmp92 = icmp sgt i32 %add87, %32, !dbg !1053
  br i1 %cmp92, label %if.then94, label %if.end108, !dbg !1053

if.then94:                                        ; preds = %if.end
  store i32 %add87, i32* %arrayidx52, align 4, !dbg !1095, !tbaa !579
  %37 = load i32** %arrayidx102, align 8, !dbg !1095, !tbaa !555
  %arrayidx103 = getelementptr inbounds i32* %37, i64 %26, !dbg !1095
  %38 = load i32* %arrayidx103, align 4, !dbg !1095, !tbaa !579
  %39 = load i32** %arrayidx75, align 8, !dbg !1095, !tbaa !555
  %arrayidx107 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !1095
  store i32 %38, i32* %arrayidx107, align 4, !dbg !1095, !tbaa !579
  %.pre896 = load i32* %arrayidx52, align 4, !dbg !1026, !tbaa !579
  br label %if.end108, !dbg !1095

if.end108:                                        ; preds = %if.end, %if.then94
  %40 = phi i32 [ %.pre896, %if.then94 ], [ %32, %if.end ]
  %41 = load i32** %arrayidx110, align 8, !dbg !1026, !tbaa !555
  %42 = load i32* %41, align 4, !dbg !1026, !tbaa !579
  %43 = load i32** %bsc, align 8, !dbg !1026, !tbaa !555
  %arrayidx113 = getelementptr inbounds i32* %43, i64 %indvars.iv, !dbg !1026
  %44 = load i32* %arrayidx113, align 4, !dbg !1026, !tbaa !579
  %add114 = add nsw i32 %44, %42, !dbg !1026
  call void @llvm.dbg.value(metadata !{i32 %add114}, i64 0, metadata !278), !dbg !1026
  %cmp119 = icmp sgt i32 %add114, %40, !dbg !1026
  br i1 %cmp119, label %if.then121, label %if.end131, !dbg !1026

if.then121:                                       ; preds = %if.end108
  store i32 %add114, i32* %arrayidx52, align 4, !dbg !1097, !tbaa !579
  %45 = load i32** %arrayidx75, align 8, !dbg !1097, !tbaa !555
  %arrayidx130 = getelementptr inbounds i32* %45, i64 %indvars.iv, !dbg !1097
  %46 = trunc i64 %25 to i32, !dbg !1097
  store i32 %46, i32* %arrayidx130, align 4, !dbg !1097, !tbaa !579
  %.pre897 = load i32* %arrayidx52, align 4, !dbg !1054, !tbaa !579
  br label %if.end131, !dbg !1097

if.end131:                                        ; preds = %if.end108, %if.then121
  %47 = phi i32 [ %.pre897, %if.then121 ], [ %40, %if.end108 ]
  %48 = load i32** %arrayidx135, align 8, !dbg !1054, !tbaa !555
  %arrayidx136 = getelementptr inbounds i32* %48, i64 %26, !dbg !1054
  %49 = load i32* %arrayidx136, align 4, !dbg !1054, !tbaa !579
  %arrayidx140 = getelementptr inbounds i32** %.pre894, i64 5, !dbg !1054
  %50 = load i32** %arrayidx140, align 8, !dbg !1054, !tbaa !555
  %arrayidx141 = getelementptr inbounds i32* %50, i64 %26, !dbg !1054
  %51 = load i32* %arrayidx141, align 4, !dbg !1054, !tbaa !579
  %add142 = add nsw i32 %51, %49, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %add142}, i64 0, metadata !278), !dbg !1054
  %cmp147 = icmp sgt i32 %add142, %47, !dbg !1054
  br i1 %cmp147, label %if.then149, label %if.end163, !dbg !1054

if.then149:                                       ; preds = %if.end131
  store i32 %add142, i32* %arrayidx52, align 4, !dbg !1099, !tbaa !579
  %52 = load i32** %arrayidx157, align 8, !dbg !1099, !tbaa !555
  %arrayidx158 = getelementptr inbounds i32* %52, i64 %26, !dbg !1099
  %53 = load i32* %arrayidx158, align 4, !dbg !1099, !tbaa !579
  %54 = load i32** %arrayidx75, align 8, !dbg !1099, !tbaa !555
  %arrayidx162 = getelementptr inbounds i32* %54, i64 %indvars.iv, !dbg !1099
  store i32 %53, i32* %arrayidx162, align 4, !dbg !1099, !tbaa !579
  br label %if.end163, !dbg !1099

if.end163:                                        ; preds = %if.end131, %if.then149
  %55 = load i8* %arrayidx166, align 1, !dbg !1117, !tbaa !556
  %idxprom168 = sext i8 %55 to i64, !dbg !1117
  %56 = load i32*** %msc, align 8, !dbg !1117, !tbaa !555
  %arrayidx169 = getelementptr inbounds i32** %56, i64 %idxprom168, !dbg !1117
  %57 = load i32** %arrayidx169, align 8, !dbg !1117, !tbaa !555
  %arrayidx170 = getelementptr inbounds i32* %57, i64 %indvars.iv, !dbg !1117
  %58 = load i32* %arrayidx170, align 4, !dbg !1117, !tbaa !579
  %cmp171 = icmp eq i32 %58, -987654321, !dbg !1117
  br i1 %cmp171, label %if.end191, label %if.then173, !dbg !1117

if.then173:                                       ; preds = %if.end163
  %59 = load i32* %arrayidx52, align 4, !dbg !1122, !tbaa !579
  %add186 = add nsw i32 %59, %58, !dbg !1122
  br label %if.end191, !dbg !1122

if.end191:                                        ; preds = %if.end163, %if.then173
  %storemerge = phi i32 [ %add186, %if.then173 ], [ -987654321, %if.end163 ]
  store i32 %storemerge, i32* %arrayidx52, align 4, !dbg !1055, !tbaa !579
  %arrayidx195 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !1068
  store i32 -987654321, i32* %arrayidx195, align 4, !dbg !1068, !tbaa !579
  %arrayidx200 = getelementptr inbounds i32* %23, i64 %26, !dbg !1056
  %60 = load i32* %arrayidx200, align 4, !dbg !1056, !tbaa !579
  %arrayidx204 = getelementptr inbounds i32** %.pre894, i64 2, !dbg !1056
  %61 = load i32** %arrayidx204, align 8, !dbg !1056, !tbaa !555
  %arrayidx205 = getelementptr inbounds i32* %61, i64 %26, !dbg !1056
  %62 = load i32* %arrayidx205, align 4, !dbg !1056, !tbaa !579
  %add206 = add nsw i32 %62, %60, !dbg !1056
  call void @llvm.dbg.value(metadata !{i32 %add206}, i64 0, metadata !278), !dbg !1056
  %cmp207 = icmp sgt i32 %add206, -987654321, !dbg !1056
  br i1 %cmp207, label %if.then209, label %if.end223, !dbg !1056

if.then209:                                       ; preds = %if.end191
  store i32 %add206, i32* %arrayidx195, align 4, !dbg !1069, !tbaa !579
  %63 = load i32** %arrayidx75, align 8, !dbg !1069, !tbaa !555
  %arrayidx218 = getelementptr inbounds i32* %63, i64 %26, !dbg !1069
  %64 = load i32* %arrayidx218, align 4, !dbg !1069, !tbaa !579
  %65 = load i32** %arrayidx221, align 8, !dbg !1069, !tbaa !555
  %arrayidx222 = getelementptr inbounds i32* %65, i64 %indvars.iv, !dbg !1069
  store i32 %64, i32* %arrayidx222, align 4, !dbg !1069, !tbaa !579
  %.pre898 = load i32* %arrayidx195, align 4, !dbg !1071, !tbaa !579
  br label %if.end223, !dbg !1069

if.end223:                                        ; preds = %if.end191, %if.then209
  %66 = phi i32 [ %.pre898, %if.then209 ], [ -987654321, %if.end191 ]
  %arrayidx228 = getelementptr inbounds i32* %21, i64 %26, !dbg !1071
  %67 = load i32* %arrayidx228, align 4, !dbg !1071, !tbaa !579
  %arrayidx232 = getelementptr inbounds i32** %.pre894, i64 6, !dbg !1071
  %68 = load i32** %arrayidx232, align 8, !dbg !1071, !tbaa !555
  %arrayidx233 = getelementptr inbounds i32* %68, i64 %26, !dbg !1071
  %69 = load i32* %arrayidx233, align 4, !dbg !1071, !tbaa !579
  %add234 = add nsw i32 %69, %67, !dbg !1071
  call void @llvm.dbg.value(metadata !{i32 %add234}, i64 0, metadata !278), !dbg !1071
  %cmp239 = icmp sgt i32 %add234, %66, !dbg !1071
  br i1 %cmp239, label %if.then241, label %if.end255, !dbg !1071

if.then241:                                       ; preds = %if.end223
  store i32 %add234, i32* %arrayidx195, align 4, !dbg !1109, !tbaa !579
  %70 = load i32** %arrayidx221, align 8, !dbg !1109, !tbaa !555
  %arrayidx250 = getelementptr inbounds i32* %70, i64 %26, !dbg !1109
  %71 = load i32* %arrayidx250, align 4, !dbg !1109, !tbaa !579
  %arrayidx254 = getelementptr inbounds i32* %70, i64 %indvars.iv, !dbg !1109
  store i32 %71, i32* %arrayidx254, align 4, !dbg !1109, !tbaa !579
  br label %if.end255, !dbg !1109

if.end255:                                        ; preds = %if.then241, %if.end223
  %72 = load i32* %M, align 4, !dbg !1123, !tbaa !579
  %73 = trunc i64 %indvars.iv to i32, !dbg !1123
  %cmp257 = icmp slt i32 %73, %72, !dbg !1123
  br i1 %cmp257, label %if.then259, label %for.inc348, !dbg !1123

if.then259:                                       ; preds = %if.end255
  %arrayidx263 = getelementptr inbounds i32* %22, i64 %indvars.iv, !dbg !1061
  store i32 -987654321, i32* %arrayidx263, align 4, !dbg !1061, !tbaa !579
  %arrayidx267 = getelementptr inbounds i32* %.pre893, i64 %indvars.iv, !dbg !1057
  %74 = load i32* %arrayidx267, align 4, !dbg !1057, !tbaa !579
  %arrayidx270 = getelementptr inbounds i32** %.pre894, i64 1, !dbg !1057
  %75 = load i32** %arrayidx270, align 8, !dbg !1057, !tbaa !555
  %arrayidx271 = getelementptr inbounds i32* %75, i64 %indvars.iv, !dbg !1057
  %76 = load i32* %arrayidx271, align 4, !dbg !1057, !tbaa !579
  %add272 = add nsw i32 %76, %74, !dbg !1057
  call void @llvm.dbg.value(metadata !{i32 %add272}, i64 0, metadata !278), !dbg !1057
  %cmp273 = icmp sgt i32 %add272, -987654321, !dbg !1057
  br i1 %cmp273, label %if.then275, label %if.end288, !dbg !1057

if.then275:                                       ; preds = %if.then259
  store i32 %add272, i32* %arrayidx263, align 4, !dbg !1062, !tbaa !579
  %77 = load i32** %arrayidx71, align 8, !dbg !1062, !tbaa !555
  %arrayidx283 = getelementptr inbounds i32* %77, i64 %indvars.iv, !dbg !1062
  %78 = load i32* %arrayidx283, align 4, !dbg !1062, !tbaa !579
  %79 = load i32** %arrayidx286, align 8, !dbg !1062, !tbaa !555
  %arrayidx287 = getelementptr inbounds i32* %79, i64 %indvars.iv, !dbg !1062
  store i32 %78, i32* %arrayidx287, align 4, !dbg !1062, !tbaa !579
  %.pre899 = load i32* %arrayidx263, align 4, !dbg !1064, !tbaa !579
  br label %if.end288, !dbg !1062

if.end288:                                        ; preds = %if.then259, %if.then275
  %80 = phi i32 [ %.pre899, %if.then275 ], [ -987654321, %if.then259 ]
  %arrayidx292 = getelementptr inbounds i32* %33, i64 %indvars.iv, !dbg !1064
  %81 = load i32* %arrayidx292, align 4, !dbg !1064, !tbaa !579
  %arrayidx295 = getelementptr inbounds i32** %.pre894, i64 4, !dbg !1064
  %82 = load i32** %arrayidx295, align 8, !dbg !1064, !tbaa !555
  %arrayidx296 = getelementptr inbounds i32* %82, i64 %indvars.iv, !dbg !1064
  %83 = load i32* %arrayidx296, align 4, !dbg !1064, !tbaa !579
  %add297 = add nsw i32 %83, %81, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add297}, i64 0, metadata !278), !dbg !1064
  %cmp302 = icmp sgt i32 %add297, %80, !dbg !1064
  br i1 %cmp302, label %if.then304, label %if.end317, !dbg !1064

if.then304:                                       ; preds = %if.end288
  store i32 %add297, i32* %arrayidx263, align 4, !dbg !1105, !tbaa !579
  %84 = load i32** %arrayidx102, align 8, !dbg !1105, !tbaa !555
  %arrayidx312 = getelementptr inbounds i32* %84, i64 %indvars.iv, !dbg !1105
  %85 = load i32* %arrayidx312, align 4, !dbg !1105, !tbaa !579
  %86 = load i32** %arrayidx286, align 8, !dbg !1105, !tbaa !555
  %arrayidx316 = getelementptr inbounds i32* %86, i64 %indvars.iv, !dbg !1105
  store i32 %85, i32* %arrayidx316, align 4, !dbg !1105, !tbaa !579
  br label %if.end317, !dbg !1105

if.end317:                                        ; preds = %if.end288, %if.then304
  %87 = load i8* %arrayidx166, align 1, !dbg !1118, !tbaa !556
  %idxprom322 = sext i8 %87 to i64, !dbg !1118
  %88 = load i32*** %isc, align 8, !dbg !1118, !tbaa !555
  %arrayidx323 = getelementptr inbounds i32** %88, i64 %idxprom322, !dbg !1118
  %89 = load i32** %arrayidx323, align 8, !dbg !1118, !tbaa !555
  %arrayidx324 = getelementptr inbounds i32* %89, i64 %indvars.iv, !dbg !1118
  %90 = load i32* %arrayidx324, align 4, !dbg !1118, !tbaa !579
  %cmp325 = icmp eq i32 %90, -987654321, !dbg !1118
  br i1 %cmp325, label %if.else341, label %if.then327, !dbg !1118

if.then327:                                       ; preds = %if.end317
  %91 = load i32* %arrayidx263, align 4, !dbg !1124, !tbaa !579
  %add340 = add nsw i32 %91, %90, !dbg !1124
  store i32 %add340, i32* %arrayidx263, align 4, !dbg !1124, !tbaa !579
  br label %for.inc348, !dbg !1124

if.else341:                                       ; preds = %if.end317
  store i32 -987654321, i32* %arrayidx263, align 4, !dbg !1065, !tbaa !579
  br label %for.inc348

for.inc348:                                       ; preds = %if.end255, %if.else341, %if.then327
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1121
  %92 = load i32* %M, align 4, !dbg !1121, !tbaa !579
  %cmp46 = icmp slt i32 %73, %92, !dbg !1121
  br i1 %cmp46, label %for.body48, label %for.end350, !dbg !1121

for.end350:                                       ; preds = %for.inc348, %for.body34.for.end350_crit_edge
  %93 = phi i32* [ %.pre900, %for.body34.for.end350_crit_edge ], [ %41, %for.inc348 ]
  %arrayidx352 = getelementptr inbounds i32** %1, i64 %idxprom35, !dbg !1031
  %94 = load i32** %arrayidx352, align 8, !dbg !1031, !tbaa !555
  %arrayidx353 = getelementptr inbounds i32* %94, i64 4, !dbg !1031
  store i32 -987654321, i32* %arrayidx353, align 4, !dbg !1031, !tbaa !579
  %idxprom354 = zext i1 %lnot to i64, !dbg !1032
  %arrayidx356 = getelementptr inbounds i32* %93, i64 4, !dbg !1032
  %95 = load i32* %arrayidx356, align 4, !dbg !1032, !tbaa !579
  %96 = load i32* %arrayidx359, align 4, !dbg !1032, !tbaa !579
  %add360 = add nsw i32 %96, %95, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %add360}, i64 0, metadata !278), !dbg !1032
  %cmp361 = icmp sgt i32 %add360, -987654321, !dbg !1032
  %add360. = select i1 %cmp361, i32 %add360, i32 -987654321, !dbg !1032
  store i32 %add360., i32* %arrayidx353, align 4, !dbg !1125, !tbaa !579
  %arrayidx370 = getelementptr inbounds i32* %94, i64 1, !dbg !1033
  store i32 -987654321, i32* %arrayidx370, align 4, !dbg !1033, !tbaa !579
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !280), !dbg !1126
  %97 = load i32* %M, align 4, !dbg !1126, !tbaa !579
  %cmp373874 = icmp slt i32 %97, 1, !dbg !1126
  br i1 %cmp373874, label %for.end401, label %for.body375.lr.ph, !dbg !1126

for.body375.lr.ph:                                ; preds = %for.end350
  %98 = load i32** %esc, align 8, !dbg !1034, !tbaa !555
  %arrayidx394 = getelementptr inbounds i32** %7, i64 %idxprom35, !dbg !1101
  %arrayidx397 = getelementptr inbounds i32* %11, i64 %indvars.iv884, !dbg !1101
  br label %for.body375, !dbg !1126

for.body375:                                      ; preds = %for.inc399.for.body375_crit_edge, %for.body375.lr.ph
  %99 = phi i32 [ %.pre, %for.inc399.for.body375_crit_edge ], [ -987654321, %for.body375.lr.ph ], !dbg !1034
  %100 = phi i32 [ %105, %for.inc399.for.body375_crit_edge ], [ %97, %for.body375.lr.ph ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %for.inc399.for.body375_crit_edge ], [ 1, %for.body375.lr.ph ]
  %arrayidx379 = getelementptr inbounds i32* %23, i64 %indvars.iv882, !dbg !1034
  %101 = load i32* %arrayidx379, align 4, !dbg !1034, !tbaa !579
  %arrayidx381 = getelementptr inbounds i32* %98, i64 %indvars.iv882, !dbg !1034
  %102 = load i32* %arrayidx381, align 4, !dbg !1034, !tbaa !579
  %add382 = add nsw i32 %102, %101, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32 %add382}, i64 0, metadata !278), !dbg !1034
  %cmp386 = icmp sgt i32 %add382, %99, !dbg !1034
  br i1 %cmp386, label %if.then388, label %for.inc399, !dbg !1034

if.then388:                                       ; preds = %for.body375
  store i32 %add382, i32* %arrayidx370, align 4, !dbg !1101, !tbaa !579
  %103 = load i32** %arrayidx394, align 8, !dbg !1101, !tbaa !555
  %arrayidx395 = getelementptr inbounds i32* %103, i64 %indvars.iv882, !dbg !1101
  %104 = load i32* %arrayidx395, align 4, !dbg !1101, !tbaa !579
  store i32 %104, i32* %arrayidx397, align 4, !dbg !1101, !tbaa !579
  %.pre892 = load i32* %M, align 4, !dbg !1126, !tbaa !579
  br label %for.inc399, !dbg !1101

for.inc399:                                       ; preds = %for.body375, %if.then388
  %105 = phi i32 [ %100, %for.body375 ], [ %.pre892, %if.then388 ], !dbg !1126
  %106 = trunc i64 %indvars.iv882 to i32, !dbg !1126
  %cmp373 = icmp slt i32 %106, %105, !dbg !1126
  br i1 %cmp373, label %for.inc399.for.body375_crit_edge, label %for.end401, !dbg !1126

for.inc399.for.body375_crit_edge:                 ; preds = %for.inc399
  %indvars.iv.next883 = add i64 %indvars.iv882, 1, !dbg !1126
  %.pre = load i32* %arrayidx370, align 4, !dbg !1034, !tbaa !579
  br label %for.body375, !dbg !1126

for.end401:                                       ; preds = %for.inc399, %for.end350
  %arrayidx404 = getelementptr inbounds i32* %94, i64 3, !dbg !1036
  store i32 -987654321, i32* %arrayidx404, align 4, !dbg !1036, !tbaa !579
  %arrayidx407 = getelementptr inbounds i32* %93, i64 3, !dbg !1037
  %107 = load i32* %arrayidx407, align 4, !dbg !1037, !tbaa !579
  %108 = load i32* %arrayidx410, align 4, !dbg !1037, !tbaa !579
  %add411 = add nsw i32 %108, %107, !dbg !1037
  call void @llvm.dbg.value(metadata !{i32 %add411}, i64 0, metadata !278), !dbg !1037
  %cmp412 = icmp sgt i32 %add411, -987654321, !dbg !1037
  br i1 %cmp412, label %if.then414, label %if.end424, !dbg !1037

if.then414:                                       ; preds = %for.end401
  store i32 %add411, i32* %arrayidx404, align 4, !dbg !1080, !tbaa !579
  %arrayidx419 = getelementptr inbounds i32** %6, i64 %idxprom354, !dbg !1080
  %109 = load i32** %arrayidx419, align 8, !dbg !1080, !tbaa !555
  %arrayidx420 = getelementptr inbounds i32* %109, i64 3, !dbg !1080
  %110 = load i32* %arrayidx420, align 4, !dbg !1080, !tbaa !579
  %arrayidx422 = getelementptr inbounds i32** %6, i64 %idxprom35, !dbg !1080
  %111 = load i32** %arrayidx422, align 8, !dbg !1080, !tbaa !555
  %arrayidx423 = getelementptr inbounds i32* %111, i64 3, !dbg !1080
  store i32 %110, i32* %arrayidx423, align 4, !dbg !1080, !tbaa !579
  %.pre889 = load i32* %arrayidx404, align 4, !dbg !1038, !tbaa !579
  br label %if.end424, !dbg !1080

if.end424:                                        ; preds = %for.end401, %if.then414
  %112 = phi i32 [ %.pre889, %if.then414 ], [ -987654321, %for.end401 ]
  %113 = load i32* %arrayidx370, align 4, !dbg !1038, !tbaa !579
  %114 = load i32* %arrayidx430, align 4, !dbg !1038, !tbaa !579
  %add431 = add nsw i32 %114, %113, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %add431}, i64 0, metadata !278), !dbg !1038
  %cmp435 = icmp sgt i32 %add431, %112, !dbg !1038
  br i1 %cmp435, label %if.then437, label %if.end444, !dbg !1038

if.then437:                                       ; preds = %if.end424
  store i32 %add431, i32* %arrayidx404, align 4, !dbg !1082, !tbaa !579
  %arrayidx442 = getelementptr inbounds i32** %6, i64 %idxprom35, !dbg !1082
  %115 = load i32** %arrayidx442, align 8, !dbg !1082, !tbaa !555
  %arrayidx443 = getelementptr inbounds i32* %115, i64 3, !dbg !1082
  store i32 %20, i32* %arrayidx443, align 4, !dbg !1082, !tbaa !579
  br label %if.end444, !dbg !1082

if.end444:                                        ; preds = %if.end424, %if.then437
  store i32 -987654321, i32* %94, align 4, !dbg !1039, !tbaa !579
  %116 = load i32* %arrayidx353, align 4, !dbg !1040, !tbaa !579
  %117 = load i32* %arrayidx10, align 4, !dbg !1040, !tbaa !579
  %add454 = add nsw i32 %117, %116, !dbg !1040
  call void @llvm.dbg.value(metadata !{i32 %add454}, i64 0, metadata !278), !dbg !1040
  %cmp455 = icmp sgt i32 %add454, -987654321, !dbg !1040
  br i1 %cmp455, label %if.then457, label %if.end463, !dbg !1040

if.then457:                                       ; preds = %if.end444
  store i32 %add454, i32* %94, align 4, !dbg !1127, !tbaa !579
  %arrayidx462 = getelementptr inbounds i32* %10, i64 %indvars.iv884, !dbg !1127
  store i32 0, i32* %arrayidx462, align 4, !dbg !1127, !tbaa !579
  %.pre890 = load i32* %94, align 4, !dbg !1041, !tbaa !579
  br label %if.end463, !dbg !1127

if.end463:                                        ; preds = %if.end444, %if.then457
  %118 = phi i32 [ %.pre890, %if.then457 ], [ -987654321, %if.end444 ]
  %119 = load i32* %arrayidx404, align 4, !dbg !1041, !tbaa !579
  %120 = load i32* %arrayidx469, align 4, !dbg !1041, !tbaa !579
  %add470 = add nsw i32 %120, %119, !dbg !1041
  call void @llvm.dbg.value(metadata !{i32 %add470}, i64 0, metadata !278), !dbg !1041
  %cmp474 = icmp sgt i32 %add470, %118, !dbg !1041
  br i1 %cmp474, label %if.then476, label %if.end485, !dbg !1041

if.then476:                                       ; preds = %if.end463
  store i32 %add470, i32* %94, align 4, !dbg !1084, !tbaa !579
  %arrayidx481 = getelementptr inbounds i32** %6, i64 %idxprom35, !dbg !1084
  %121 = load i32** %arrayidx481, align 8, !dbg !1084, !tbaa !555
  %arrayidx482 = getelementptr inbounds i32* %121, i64 3, !dbg !1084
  %122 = load i32* %arrayidx482, align 4, !dbg !1084, !tbaa !579
  %arrayidx484 = getelementptr inbounds i32* %10, i64 %indvars.iv884, !dbg !1084
  store i32 %122, i32* %arrayidx484, align 4, !dbg !1084, !tbaa !579
  br label %if.end485, !dbg !1084

if.end485:                                        ; preds = %if.then476, %if.end463
  %arrayidx488 = getelementptr inbounds i32* %94, i64 2, !dbg !1042
  store i32 -987654321, i32* %arrayidx488, align 4, !dbg !1042, !tbaa !579
  %arrayidx491 = getelementptr inbounds i32* %93, i64 2, !dbg !1043
  %123 = load i32* %arrayidx491, align 4, !dbg !1043, !tbaa !579
  %124 = load i32* %arrayidx494, align 4, !dbg !1043, !tbaa !579
  %add495 = add nsw i32 %124, %123, !dbg !1043
  call void @llvm.dbg.value(metadata !{i32 %add495}, i64 0, metadata !278), !dbg !1043
  %cmp496 = icmp sgt i32 %add495, -987654321, !dbg !1043
  br i1 %cmp496, label %if.then498, label %if.end508, !dbg !1043

if.then498:                                       ; preds = %if.end485
  store i32 %add495, i32* %arrayidx488, align 4, !dbg !1086, !tbaa !579
  %arrayidx503 = getelementptr inbounds i32** %6, i64 %idxprom354, !dbg !1086
  %125 = load i32** %arrayidx503, align 8, !dbg !1086, !tbaa !555
  %arrayidx504 = getelementptr inbounds i32* %125, i64 2, !dbg !1086
  %126 = load i32* %arrayidx504, align 4, !dbg !1086, !tbaa !579
  %arrayidx506 = getelementptr inbounds i32** %6, i64 %idxprom35, !dbg !1086
  %127 = load i32** %arrayidx506, align 8, !dbg !1086, !tbaa !555
  %arrayidx507 = getelementptr inbounds i32* %127, i64 2, !dbg !1086
  store i32 %126, i32* %arrayidx507, align 4, !dbg !1086, !tbaa !579
  %.pre891 = load i32* %arrayidx488, align 4, !dbg !1044, !tbaa !579
  br label %if.end508, !dbg !1086

if.end508:                                        ; preds = %if.end485, %if.then498
  %128 = phi i32 [ %.pre891, %if.then498 ], [ -987654321, %if.end485 ]
  %129 = load i32* %arrayidx370, align 4, !dbg !1044, !tbaa !579
  %130 = load i32* %arrayidx514, align 4, !dbg !1044, !tbaa !579
  %add515 = add nsw i32 %130, %129, !dbg !1044
  call void @llvm.dbg.value(metadata !{i32 %add515}, i64 0, metadata !278), !dbg !1044
  %cmp519 = icmp sgt i32 %add515, %128, !dbg !1044
  br i1 %cmp519, label %if.then521, label %for.inc529, !dbg !1044

if.then521:                                       ; preds = %if.end508
  store i32 %add515, i32* %arrayidx488, align 4, !dbg !1088, !tbaa !579
  %arrayidx526 = getelementptr inbounds i32** %6, i64 %idxprom35, !dbg !1088
  %131 = load i32** %arrayidx526, align 8, !dbg !1088, !tbaa !555
  %arrayidx527 = getelementptr inbounds i32* %131, i64 2, !dbg !1088
  store i32 %20, i32* %arrayidx527, align 4, !dbg !1088, !tbaa !579
  br label %for.inc529, !dbg !1088

for.inc529:                                       ; preds = %if.end508, %if.then521
  %indvars.iv.next885 = add i64 %indvars.iv884, 1, !dbg !1116
  %lftr.wideiv = trunc i64 %indvars.iv.next885 to i32, !dbg !1116
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !1116
  br i1 %exitcond, label %for.end531, label %for.body34, !dbg !1116

for.end531:                                       ; preds = %for.inc529, %for.cond31.preheader
  %132 = phi i32* [ %12, %for.cond31.preheader ], [ %94, %for.inc529 ]
  %arrayidx534 = getelementptr inbounds i32* %132, i64 2, !dbg !1045
  %133 = load i32* %arrayidx534, align 4, !dbg !1045, !tbaa !579
  %arrayidx537 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !1045
  %134 = load i32* %arrayidx537, align 4, !dbg !1045, !tbaa !579
  %add538 = add nsw i32 %134, %133, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %add538}, i64 0, metadata !278), !dbg !1045
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !284), !dbg !1129
  call void @P7AllocTrace(i32 2, %struct.p7trace_s** %tr) #6, !dbg !1130
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !281), !dbg !1131
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1132
  %135 = load %struct.p7trace_s** %tr, align 8, !dbg !1132, !tbaa !555
  %statetype = getelementptr inbounds %struct.p7trace_s* %135, i64 0, i32 1, !dbg !1132
  %136 = load i8** %statetype, align 8, !dbg !1132, !tbaa !555
  store i8 9, i8* %136, align 1, !dbg !1132, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1133
  %137 = load %struct.p7trace_s** %tr, align 8, !dbg !1133, !tbaa !555
  %pos = getelementptr inbounds %struct.p7trace_s* %137, i64 0, i32 3, !dbg !1133
  %138 = load i32** %pos, align 8, !dbg !1133, !tbaa !555
  store i32 0, i32* %138, align 4, !dbg !1133, !tbaa !579
  %rem543 = srem i32 %L, 2, !dbg !1090
  %idxprom544 = sext i32 %rem543 to i64, !dbg !1090
  %arrayidx545 = getelementptr inbounds i32** %6, i64 %idxprom544, !dbg !1090
  %139 = load i32** %arrayidx545, align 8, !dbg !1090, !tbaa !555
  %arrayidx546 = getelementptr inbounds i32* %139, i64 2, !dbg !1090
  %i.1867 = load i32* %arrayidx546, align 4, !dbg !1090
  %cmp547868 = icmp sgt i32 %i.1867, 0, !dbg !1134
  br i1 %cmp547868, label %while.body, label %while.end, !dbg !1134

while.body:                                       ; preds = %for.end531, %while.body
  %140 = phi %struct.p7trace_s* [ %147, %while.body ], [ %137, %for.end531 ], !dbg !1135
  %i.1871 = phi i32 [ %i.1, %while.body ], [ %i.1867, %for.end531 ]
  %curralloc.0870 = phi i32 [ %add549, %while.body ], [ 2, %for.end531 ]
  %tpos.0869 = phi i32 [ %phitmp806, %while.body ], [ 1, %for.end531 ]
  %add549 = add nsw i32 %curralloc.0870, 2, !dbg !1135
  call void @llvm.dbg.value(metadata !{i32 %add549}, i64 0, metadata !284), !dbg !1135
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1137
  call void @P7ReallocTrace(%struct.p7trace_s* %140, i32 %add549) #6, !dbg !1137
  call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !281), !dbg !1138
  %idxprom551 = sext i32 %tpos.0869 to i64, !dbg !1139
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1139
  %141 = load %struct.p7trace_s** %tr, align 8, !dbg !1139, !tbaa !555
  %statetype552 = getelementptr inbounds %struct.p7trace_s* %141, i64 0, i32 1, !dbg !1139
  %142 = load i8** %statetype552, align 8, !dbg !1139, !tbaa !555
  %arrayidx553 = getelementptr inbounds i8* %142, i64 %idxprom551, !dbg !1139
  store i8 7, i8* %arrayidx553, align 1, !dbg !1139, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1140
  %143 = load %struct.p7trace_s** %tr, align 8, !dbg !1140, !tbaa !555
  %pos555 = getelementptr inbounds %struct.p7trace_s* %143, i64 0, i32 3, !dbg !1140
  %144 = load i32** %pos555, align 8, !dbg !1140, !tbaa !555
  %arrayidx556 = getelementptr inbounds i32* %144, i64 %idxprom551, !dbg !1140
  store i32 %i.1871, i32* %arrayidx556, align 4, !dbg !1140, !tbaa !579
  %idxprom557 = sext i32 %i.1871 to i64, !dbg !1141
  %arrayidx558 = getelementptr inbounds i32* %11, i64 %idxprom557, !dbg !1141
  %145 = load i32* %arrayidx558, align 4, !dbg !1141, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %145}, i64 0, metadata !279), !dbg !1141
  %inc559 = add nsw i32 %tpos.0869, 1, !dbg !1142
  call void @llvm.dbg.value(metadata !{i32 %inc559}, i64 0, metadata !281), !dbg !1142
  %idxprom560 = sext i32 %inc559 to i64, !dbg !1143
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1143
  %statetype561 = getelementptr inbounds %struct.p7trace_s* %143, i64 0, i32 1, !dbg !1143
  %146 = load i8** %statetype561, align 8, !dbg !1143, !tbaa !555
  %arrayidx562 = getelementptr inbounds i8* %146, i64 %idxprom560, !dbg !1143
  store i8 6, i8* %arrayidx562, align 1, !dbg !1143, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1144
  %147 = load %struct.p7trace_s** %tr, align 8, !dbg !1144, !tbaa !555
  %pos564 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 3, !dbg !1144
  %148 = load i32** %pos564, align 8, !dbg !1144, !tbaa !555
  %arrayidx565 = getelementptr inbounds i32* %148, i64 %idxprom560, !dbg !1144
  store i32 %145, i32* %arrayidx565, align 4, !dbg !1144, !tbaa !579
  %idxprom566 = sext i32 %145 to i64, !dbg !1145
  %arrayidx567 = getelementptr inbounds i32* %10, i64 %idxprom566, !dbg !1145
  %phitmp806 = add i32 %tpos.0869, 2, !dbg !1146
  %i.1 = load i32* %arrayidx567, align 4, !dbg !1090
  %cmp547 = icmp sgt i32 %i.1, 0, !dbg !1134
  br i1 %cmp547, label %while.body, label %while.end, !dbg !1134

while.end:                                        ; preds = %while.body, %for.end531
  %149 = phi %struct.p7trace_s* [ %137, %for.end531 ], [ %147, %while.body ]
  %tpos.0.lcssa = phi i32 [ 1, %for.end531 ], [ %phitmp806, %while.body ]
  call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !281), !dbg !1147
  %idxprom569 = sext i32 %tpos.0.lcssa to i64, !dbg !1148
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1148
  %statetype570 = getelementptr inbounds %struct.p7trace_s* %149, i64 0, i32 1, !dbg !1148
  %150 = load i8** %statetype570, align 8, !dbg !1148, !tbaa !555
  %arrayidx571 = getelementptr inbounds i8* %150, i64 %idxprom569, !dbg !1148
  store i8 4, i8* %arrayidx571, align 1, !dbg !1148, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1149
  %151 = load %struct.p7trace_s** %tr, align 8, !dbg !1149, !tbaa !555
  %pos573 = getelementptr inbounds %struct.p7trace_s* %151, i64 0, i32 3, !dbg !1149
  %152 = load i32** %pos573, align 8, !dbg !1149, !tbaa !555
  %arrayidx574 = getelementptr inbounds i32* %152, i64 %idxprom569, !dbg !1149
  store i32 0, i32* %arrayidx574, align 4, !dbg !1149, !tbaa !579
  %add575 = add nsw i32 %tpos.0.lcssa, 1, !dbg !1150
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1150
  %tlen = getelementptr inbounds %struct.p7trace_s* %151, i64 0, i32 0, !dbg !1150
  store i32 %add575, i32* %tlen, align 4, !dbg !1150, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1151
  call void @P7ReverseTrace(%struct.p7trace_s* %151) #6, !dbg !1151
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #7, !dbg !1152
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i807) #7, !dbg !1153
  call void @free(i8* %call3) #6, !dbg !1154
  call void @free(i8* %call7) #6, !dbg !1155
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !1156
  %153 = load %struct.p7trace_s** %tr, align 8, !dbg !1156, !tbaa !555
  store %struct.p7trace_s* %153, %struct.p7trace_s** %ret_tr, align 8, !dbg !1156, !tbaa !555
  %call576 = call float @Scorify(i32 %add538) #6, !dbg !1157
  ret float %call576, !dbg !1157
}

; Function Attrs: nounwind optsize uwtable
define float @P7WeeViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !287), !dbg !1158
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !288), !dbg !1158
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !289), !dbg !1158
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !290), !dbg !1158
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !291), !dbg !1159
  %add = add i32 %L, 1, !dbg !1160
  %conv = sext i32 %add to i64, !dbg !1160
  %mul = shl nsw i64 %conv, 2, !dbg !1160
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1282, i64 %mul) #6, !dbg !1160
  %0 = bitcast i8* %call to i32*, !dbg !1160
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !292), !dbg !1160
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1283, i64 %conv) #6, !dbg !1161
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !293), !dbg !1161
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1284, i64 %mul) #6, !dbg !1162
  %1 = bitcast i8* %call8 to i32*, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !294), !dbg !1162
  %call12 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1285, i64 %mul) #6, !dbg !1163
  %2 = bitcast i8* %call12 to i32*, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !295), !dbg !1163
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !296), !dbg !1164
  store i32 1, i32* %2, align 4, !dbg !1165, !tbaa !579
  store i32 %L, i32* %1, align 4, !dbg !1166, !tbaa !579
  %arrayidx15 = getelementptr inbounds i8* %call, i64 4, !dbg !1167
  %3 = bitcast i8* %arrayidx15 to i32*, !dbg !1167
  store i32 1, i32* %3, align 4, !dbg !1167, !tbaa !579
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1168
  %4 = load i32* %M, align 4, !dbg !1168, !tbaa !579
  %idxprom16 = sext i32 %L to i64, !dbg !1168
  %arrayidx17 = getelementptr inbounds i32* %0, i64 %idxprom16, !dbg !1168
  store i32 %4, i32* %arrayidx17, align 4, !dbg !1168, !tbaa !579
  %arrayidx18 = getelementptr inbounds i8* %call4, i64 1, !dbg !1169
  store i8 4, i8* %arrayidx18, align 1, !dbg !1169, !tbaa !556
  %arrayidx20 = getelementptr inbounds i8* %call4, i64 %idxprom16, !dbg !1170
  store i8 9, i8* %arrayidx20, align 1, !dbg !1170, !tbaa !556
  %tsc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !1171
  %esc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !1177
  %arrayidx145.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !1178
  %arrayidx162.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !1179
  %isc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !1180
  %bsc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !1184
  %msc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !1185
  %arrayidx569.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !1186
  %arrayidx634.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !1187
  %arrayidx738.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !1188
  br label %while.body, !dbg !1190

while.body:                                       ; preds = %entry, %while.cond.backedge
  %ret_sc.0703 = phi float [ undef, %entry ], [ %ret_sc.1, %while.cond.backedge ]
  %lpos.0702 = phi i32 [ 0, %entry ], [ %lpos.2, %while.cond.backedge ]
  %idxprom22 = sext i32 %lpos.0702 to i64, !dbg !1191
  %arrayidx23 = getelementptr inbounds i32* %2, i64 %idxprom22, !dbg !1191
  %5 = load i32* %arrayidx23, align 4, !dbg !1191, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !303), !dbg !1191
  %idxprom24 = sext i32 %5 to i64, !dbg !1192
  %arrayidx25 = getelementptr inbounds i32* %0, i64 %idxprom24, !dbg !1192
  %6 = load i32* %arrayidx25, align 4, !dbg !1192, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !297), !dbg !1192
  %arrayidx27 = getelementptr inbounds i8* %call4, i64 %idxprom24, !dbg !1193
  %7 = load i8* %arrayidx27, align 1, !dbg !1193, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !300), !dbg !1193
  %arrayidx29 = getelementptr inbounds i32* %1, i64 %idxprom22, !dbg !1194
  %8 = load i32* %arrayidx29, align 4, !dbg !1194, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !305), !dbg !1194
  %idxprom30 = sext i32 %8 to i64, !dbg !1195
  %arrayidx31 = getelementptr inbounds i32* %0, i64 %idxprom30, !dbg !1195
  %9 = load i32* %arrayidx31, align 4, !dbg !1195, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !299), !dbg !1195
  %arrayidx33 = getelementptr inbounds i8* %call4, i64 %idxprom30, !dbg !1196
  %10 = load i8* %arrayidx33, align 1, !dbg !1196, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %10}, i64 0, metadata !302), !dbg !1196
  %dec = add nsw i32 %lpos.0702, -1, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !296), !dbg !1197
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !1198) #8, !dbg !1199
  %sub.i = sub nsw i32 %8, %5, !dbg !1200
  %div.i = sdiv i32 %sub.i, 2, !dbg !1200
  %cmp.i = icmp eq i32 %sub.i, 1, !dbg !1201
  %cmp2.i = icmp eq i8 %7, 4, !dbg !1201
  %or.cond.i = and i1 %cmp.i, %cmp2.i, !dbg !1201
  %add.i = select i1 %or.cond.i, i32 0, i32 %div.i, !dbg !1201
  %s2.0.i = add nsw i32 %add.i, %5, !dbg !1201
  %cmp9.i = icmp eq i8 %10, 9, !dbg !1202
  %or.cond1.i = and i1 %cmp.i, %cmp9.i, !dbg !1202
  %s2.1.i = select i1 %or.cond1.i, i32 %8, i32 %s2.0.i, !dbg !1202
  %conv13.i = sext i8 %7 to i32, !dbg !1203
  %cond.i = select i1 %cmp2.i, i32 0, i32 %5, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !1204) #8, !dbg !1203
  %11 = load i32* %M, align 4, !dbg !1205, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !1206) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !1208) #8, !dbg !1207
  %call.i.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %11, i32 0, i32 0) #6, !dbg !1209
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i.i}, i64 0, metadata !1210) #8, !dbg !1209
  %xmx1.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 0, !dbg !1211
  %12 = load i32*** %xmx1.i.i, align 8, !dbg !1211, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1212) #8, !dbg !1211
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1213) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1216) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1222
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1226
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1178
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1227
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1231
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1186
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1232
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1235
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1236
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1237
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1240
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1240
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1241
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1243
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1248
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1251
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1257
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1258
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1259
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1260
  call void @llvm.dbg.value(metadata !{i32** %12}, i64 0, metadata !1217) #8, !dbg !1264
  %mmx4.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 1, !dbg !1265
  %13 = load i32*** %mmx4.i.i, align 8, !dbg !1265, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1266) #8, !dbg !1265
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1267) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1268) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1272
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1274
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1275
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1276
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1277
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1278
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1281
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1284
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1289
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1290
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1260
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1291
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1294
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1297
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32** %13}, i64 0, metadata !1269) #8, !dbg !1299
  %imx8.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 2, !dbg !1300
  %14 = load i32*** %imx8.i.i, align 8, !dbg !1300, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1301) #8, !dbg !1300
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1302) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1303) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1305
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1306
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1307
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1309
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1310
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1311
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1312
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1313
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1314
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1315
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1316
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1317
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1318
  call void @llvm.dbg.value(metadata !{i32** %14}, i64 0, metadata !1304) #8, !dbg !1319
  %dmx12.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 3, !dbg !1320
  %15 = load i32*** %dmx12.i.i, align 8, !dbg !1320, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1321) #8, !dbg !1320
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1322) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1323) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1325
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1327
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1328
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1329
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1331
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1332
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1333
  call void @llvm.dbg.value(metadata !{i32** %15}, i64 0, metadata !1324) #8, !dbg !1334
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i.i}, i64 0, metadata !1335) #8, !dbg !1205
  %rem.i = srem i32 %cond.i, 2, !dbg !1336
  call void @llvm.dbg.value(metadata !{i32 %rem.i}, i64 0, metadata !1337) #8, !dbg !1336
  %idxprom.i = sext i32 %rem.i to i64, !dbg !1218
  %arrayidx.i = getelementptr inbounds i32** %12, i64 %idxprom.i, !dbg !1218
  %16 = load i32** %arrayidx.i, align 8, !dbg !1218, !tbaa !555
  store i32 -987654321, i32* %16, align 4, !dbg !1218, !tbaa !579
  %arrayidx19.i = getelementptr inbounds i32* %16, i64 4, !dbg !1218
  store i32 -987654321, i32* %arrayidx19.i, align 4, !dbg !1218, !tbaa !579
  %arrayidx22.i = getelementptr inbounds i32* %16, i64 2, !dbg !1219
  store i32 -987654321, i32* %arrayidx22.i, align 4, !dbg !1219, !tbaa !579
  %arrayidx25.i = getelementptr inbounds i32* %16, i64 1, !dbg !1219
  store i32 -987654321, i32* %arrayidx25.i, align 4, !dbg !1219, !tbaa !579
  %cmp26151.i = icmp sgt i32 %6, %9, !dbg !1338
  br i1 %cmp26151.i, label %for.end.i, label %for.body.lr.ph.i, !dbg !1338

for.body.lr.ph.i:                                 ; preds = %while.body
  %arrayidx30.i = getelementptr inbounds i32** %15, i64 %idxprom.i, !dbg !1270
  %17 = load i32** %arrayidx30.i, align 8, !dbg !1270, !tbaa !555
  %arrayidx34.i = getelementptr inbounds i32** %14, i64 %idxprom.i, !dbg !1270
  %18 = load i32** %arrayidx34.i, align 8, !dbg !1270, !tbaa !555
  %arrayidx38.i = getelementptr inbounds i32** %13, i64 %idxprom.i, !dbg !1270
  %19 = load i32** %arrayidx38.i, align 8, !dbg !1270, !tbaa !555
  %20 = sext i32 %6 to i64
  br label %for.body.i, !dbg !1338

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv173.i = phi i64 [ %indvars.iv.next174.i, %for.body.i ], [ %20, %for.body.lr.ph.i ]
  %arrayidx31.i = getelementptr inbounds i32* %17, i64 %indvars.iv173.i, !dbg !1270
  store i32 -987654321, i32* %arrayidx31.i, align 4, !dbg !1270, !tbaa !579
  %arrayidx35.i = getelementptr inbounds i32* %18, i64 %indvars.iv173.i, !dbg !1270
  store i32 -987654321, i32* %arrayidx35.i, align 4, !dbg !1270, !tbaa !579
  %arrayidx39.i = getelementptr inbounds i32* %19, i64 %indvars.iv173.i, !dbg !1270
  store i32 -987654321, i32* %arrayidx39.i, align 4, !dbg !1270, !tbaa !579
  %indvars.iv.next174.i = add i64 %indvars.iv173.i, 1, !dbg !1338
  %21 = trunc i64 %indvars.iv173.i to i32, !dbg !1338
  %cmp26.i = icmp slt i32 %21, %9, !dbg !1338
  br i1 %cmp26.i, label %for.body.i, label %for.end.i, !dbg !1338

for.end.i:                                        ; preds = %for.body.i, %while.body
  switch i32 %conv13.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb45.i
    i32 5, label %sw.bb50.i
    i32 8, label %sw.bb54.i
    i32 4, label %sw.bb58.i
  ], !dbg !1339

sw.bb.i:                                          ; preds = %for.end.i
  %idxprom41.i = sext i32 %6 to i64, !dbg !1272
  %arrayidx43.i = getelementptr inbounds i32** %13, i64 %idxprom.i, !dbg !1272
  %22 = load i32** %arrayidx43.i, align 8, !dbg !1272, !tbaa !555
  %arrayidx44.i = getelementptr inbounds i32* %22, i64 %idxprom41.i, !dbg !1272
  store i32 0, i32* %arrayidx44.i, align 4, !dbg !1272, !tbaa !579
  br label %sw.epilog.i, !dbg !1272

sw.bb45.i:                                        ; preds = %for.end.i
  %idxprom46.i = sext i32 %6 to i64, !dbg !1305
  %arrayidx48.i = getelementptr inbounds i32** %14, i64 %idxprom.i, !dbg !1305
  %23 = load i32** %arrayidx48.i, align 8, !dbg !1305, !tbaa !555
  %arrayidx49.i = getelementptr inbounds i32* %23, i64 %idxprom46.i, !dbg !1305
  store i32 0, i32* %arrayidx49.i, align 4, !dbg !1305, !tbaa !579
  br label %sw.epilog.i, !dbg !1305

sw.bb50.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx19.i, align 4, !dbg !1220, !tbaa !579
  br label %sw.epilog.i, !dbg !1220

sw.bb54.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx22.i, align 4, !dbg !1222, !tbaa !579
  br label %sw.epilog.i, !dbg !1222

sw.bb58.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx19.i, align 4, !dbg !1223, !tbaa !579
  br label %sw.epilog.i, !dbg !1223

sw.default.i:                                     ; preds = %for.end.i
  %call62.i = call i8* @Statetype(i8 signext %7) #6, !dbg !1340
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i8* %call62.i) #6, !dbg !1340
  br label %sw.epilog.i, !dbg !1341

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb58.i, %sw.bb54.i, %sw.bb50.i, %sw.bb45.i, %sw.bb.i
  %cmp64.i = icmp eq i8 %7, 1, !dbg !1342
  br i1 %cmp64.i, label %for.cond68.preheader.i, label %sw.epilog.if.end137_crit_edge.i, !dbg !1342

sw.epilog.if.end137_crit_edge.i:                  ; preds = %sw.epilog.i
  %.pre179.i = load i32** %arrayidx.i, align 8, !dbg !1226, !tbaa !555
  %arrayidx159.i.phi.trans.insert = getelementptr inbounds i32* %.pre179.i, i64 1
  %.pre728 = load i32* %arrayidx159.i.phi.trans.insert, align 4, !dbg !1179, !tbaa !579
  br label %if.end137.i, !dbg !1342

for.cond68.preheader.i:                           ; preds = %sw.epilog.i
  %cmp69148.i = icmp slt i32 %6, %9, !dbg !1343
  br i1 %cmp69148.i, label %for.body71.lr.ph.i, label %for.cond68.preheader.for.end119_crit_edge.i, !dbg !1343

for.cond68.preheader.for.end119_crit_edge.i:      ; preds = %for.cond68.preheader.i
  %arrayidx125.phi.trans.insert.i = getelementptr inbounds i32** %13, i64 %idxprom.i
  %.pre182.i = load i32** %arrayidx125.phi.trans.insert.i, align 8, !dbg !1177, !tbaa !555
  %idxprom123.pre.i = sext i32 %6 to i64, !dbg !1177
  br label %for.end119.i, !dbg !1343

for.body71.lr.ph.i:                               ; preds = %for.cond68.preheader.i
  %arrayidx74.i = getelementptr inbounds i32** %15, i64 %idxprom.i, !dbg !1325
  %24 = load i32** %arrayidx74.i, align 8, !dbg !1325, !tbaa !555
  %arrayidx79.i = getelementptr inbounds i32** %13, i64 %idxprom.i, !dbg !1171
  %25 = load i32** %arrayidx79.i, align 8, !dbg !1171, !tbaa !555
  %26 = load i32*** %tsc.i, align 8, !dbg !1171, !tbaa !555
  %arrayidx83.i = getelementptr inbounds i32** %26, i64 2, !dbg !1171
  %27 = load i32** %arrayidx83.i, align 8, !dbg !1171, !tbaa !555
  %arrayidx102.i = getelementptr inbounds i32** %26, i64 6, !dbg !1327
  %28 = load i32** %arrayidx102.i, align 8, !dbg !1327, !tbaa !555
  %29 = sext i32 %6 to i64
  %arrayidx98.i.phi.trans.insert = getelementptr inbounds i32* %24, i64 %29
  %.pre = load i32* %arrayidx98.i.phi.trans.insert, align 4, !dbg !1327, !tbaa !579
  br label %for.body71.i, !dbg !1343

for.body71.i:                                     ; preds = %for.body71.i, %for.body71.lr.ph.i
  %30 = phi i32 [ %.pre, %for.body71.lr.ph.i ], [ %add104.i.add85..i, %for.body71.i ], !dbg !1343
  %indvars.iv171.i = phi i64 [ %29, %for.body71.lr.ph.i ], [ %indvars.iv.next172.i, %for.body71.i ]
  %indvars.iv.next172.i = add i64 %indvars.iv171.i, 1, !dbg !1343
  %arrayidx75.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next172.i, !dbg !1325
  store i32 -987654321, i32* %arrayidx75.i, align 4, !dbg !1325, !tbaa !579
  %arrayidx80.i = getelementptr inbounds i32* %25, i64 %indvars.iv171.i, !dbg !1171
  %31 = load i32* %arrayidx80.i, align 4, !dbg !1171, !tbaa !579
  %arrayidx84.i = getelementptr inbounds i32* %27, i64 %indvars.iv171.i, !dbg !1171
  %32 = load i32* %arrayidx84.i, align 4, !dbg !1171, !tbaa !579
  %add85.i = add nsw i32 %32, %31, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %add85.i}, i64 0, metadata !1344) #8, !dbg !1171
  %cmp86.i = icmp sgt i32 %add85.i, -987654321, !dbg !1171
  %add85..i = select i1 %cmp86.i, i32 %add85.i, i32 -987654321, !dbg !1171
  store i32 %add85..i, i32* %arrayidx75.i, align 4, !dbg !1326, !tbaa !579
  %arrayidx103.i = getelementptr inbounds i32* %28, i64 %indvars.iv171.i, !dbg !1327
  %33 = load i32* %arrayidx103.i, align 4, !dbg !1327, !tbaa !579
  %add104.i = add nsw i32 %33, %30, !dbg !1327
  call void @llvm.dbg.value(metadata !{i32 %add104.i}, i64 0, metadata !1344) #8, !dbg !1327
  %cmp109.i = icmp sgt i32 %add104.i, %add85..i, !dbg !1327
  %add104.i.add85..i = select i1 %cmp109.i, i32 %add104.i, i32 %add85..i, !dbg !1327
  store i32 %add104.i.add85..i, i32* %arrayidx75.i, align 4, !dbg !1345, !tbaa !579
  %34 = trunc i64 %indvars.iv.next172.i to i32, !dbg !1343
  %cmp69.i = icmp slt i32 %34, %9, !dbg !1343
  br i1 %cmp69.i, label %for.body71.i, label %for.end119.i, !dbg !1343

for.end119.i:                                     ; preds = %for.body71.i, %for.cond68.preheader.for.end119_crit_edge.i
  %idxprom123.pre-phi.i = phi i64 [ %idxprom123.pre.i, %for.cond68.preheader.for.end119_crit_edge.i ], [ %29, %for.body71.i ], !dbg !1177
  %35 = phi i32* [ %.pre182.i, %for.cond68.preheader.for.end119_crit_edge.i ], [ %25, %for.body71.i ]
  %36 = load i32** %arrayidx.i, align 8, !dbg !1224, !tbaa !555
  %arrayidx122.i = getelementptr inbounds i32* %36, i64 1, !dbg !1224
  store i32 -987654321, i32* %arrayidx122.i, align 4, !dbg !1224, !tbaa !579
  %arrayidx126.i = getelementptr inbounds i32* %35, i64 %idxprom123.pre-phi.i, !dbg !1177
  %37 = load i32* %arrayidx126.i, align 4, !dbg !1177, !tbaa !579
  %38 = load i32** %esc.i, align 8, !dbg !1177, !tbaa !555
  %arrayidx128.i = getelementptr inbounds i32* %38, i64 %idxprom123.pre-phi.i, !dbg !1177
  %39 = load i32* %arrayidx128.i, align 4, !dbg !1177, !tbaa !579
  %add129.i = add nsw i32 %39, %37, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32 %add129.i}, i64 0, metadata !1344) #8, !dbg !1177
  %cmp130.i = icmp sgt i32 %add129.i, -987654321, !dbg !1177
  br i1 %cmp130.i, label %if.then132.i, label %if.end137.i, !dbg !1177

if.then132.i:                                     ; preds = %for.end119.i
  store i32 %add129.i, i32* %arrayidx122.i, align 4, !dbg !1225, !tbaa !579
  br label %if.end137.i, !dbg !1225

if.end137.i:                                      ; preds = %if.then132.i, %for.end119.i, %sw.epilog.if.end137_crit_edge.i
  %40 = phi i32 [ %.pre728, %sw.epilog.if.end137_crit_edge.i ], [ -987654321, %for.end119.i ], [ %add129.i, %if.then132.i ]
  %41 = phi i32* [ %.pre179.i, %sw.epilog.if.end137_crit_edge.i ], [ %36, %for.end119.i ], [ %36, %if.then132.i ]
  store i32 -987654321, i32* %41, align 4, !dbg !1226, !tbaa !579
  %arrayidx143.i = getelementptr inbounds i32* %41, i64 4, !dbg !1178
  %42 = load i32* %arrayidx143.i, align 4, !dbg !1178, !tbaa !579
  %43 = load i32* %arrayidx145.i, align 4, !dbg !1178, !tbaa !579
  %add146.i = add nsw i32 %43, %42, !dbg !1178
  call void @llvm.dbg.value(metadata !{i32 %add146.i}, i64 0, metadata !1344) #8, !dbg !1178
  %cmp147.i = icmp sgt i32 %add146.i, -987654321, !dbg !1178
  %add146..i = select i1 %cmp147.i, i32 %add146.i, i32 -987654321, !dbg !1178
  store i32 %add146..i, i32* %41, align 4, !dbg !1346, !tbaa !579
  %arrayidx156.i = getelementptr inbounds i32* %41, i64 2, !dbg !1227
  store i32 -987654321, i32* %arrayidx156.i, align 4, !dbg !1227, !tbaa !579
  %44 = load i32* %arrayidx162.i, align 4, !dbg !1179, !tbaa !579
  %add163.i = add nsw i32 %44, %40, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %add163.i}, i64 0, metadata !1344) #8, !dbg !1179
  %cmp164.i = icmp sgt i32 %add163.i, -987654321, !dbg !1179
  %add163..i = select i1 %cmp164.i, i32 %add163.i, i32 -987654321, !dbg !1179
  store i32 %add163..i, i32* %arrayidx156.i, align 4, !dbg !1347, !tbaa !579
  %cmp173145.i = icmp slt i32 %cond.i, %s2.1.i, !dbg !1348
  br i1 %cmp173145.i, label %for.body175.lr.ph.i, label %for.end662.i, !dbg !1348

for.body175.lr.ph.i:                              ; preds = %if.end137.i
  %idxprom177.i = sext i32 %6 to i64, !dbg !1273
  %cmp309139.i = icmp slt i32 %6, %9, !dbg !1349
  %45 = sext i32 %cond.i to i64
  br label %for.body175.i, !dbg !1348

for.body175.i:                                    ; preds = %for.end608.i, %for.body175.lr.ph.i
  %indvars.iv169.i = phi i64 [ %45, %for.body175.lr.ph.i ], [ %indvars.iv.next170.i, %for.end608.i ]
  %indvars.iv.next170.i = add i64 %indvars.iv169.i, 1, !dbg !1348
  %46 = trunc i64 %indvars.iv.next170.i to i32, !dbg !1350
  %rem176.i = srem i32 %46, 2, !dbg !1350
  call void @llvm.dbg.value(metadata !{i32 %rem176.i}, i64 0, metadata !1337) #8, !dbg !1350
  %lnot.i = icmp eq i32 %rem176.i, 0, !dbg !1351
  %idxprom178.i = sext i32 %rem176.i to i64, !dbg !1273
  %arrayidx179.i = getelementptr inbounds i32** %15, i64 %idxprom178.i, !dbg !1273
  %47 = load i32** %arrayidx179.i, align 8, !dbg !1273, !tbaa !555
  %arrayidx180.i = getelementptr inbounds i32* %47, i64 %idxprom177.i, !dbg !1273
  store i32 -987654321, i32* %arrayidx180.i, align 4, !dbg !1273, !tbaa !579
  %arrayidx183.i = getelementptr inbounds i32** %14, i64 %idxprom178.i, !dbg !1273
  %48 = load i32** %arrayidx183.i, align 8, !dbg !1273, !tbaa !555
  %arrayidx184.i = getelementptr inbounds i32* %48, i64 %idxprom177.i, !dbg !1273
  store i32 -987654321, i32* %arrayidx184.i, align 4, !dbg !1273, !tbaa !579
  %arrayidx187.i = getelementptr inbounds i32** %13, i64 %idxprom178.i, !dbg !1273
  %49 = load i32** %arrayidx187.i, align 8, !dbg !1273, !tbaa !555
  %arrayidx188.i = getelementptr inbounds i32* %49, i64 %idxprom177.i, !dbg !1273
  store i32 -987654321, i32* %arrayidx188.i, align 4, !dbg !1273, !tbaa !579
  %50 = load i32* %M, align 4, !dbg !1352, !tbaa !579
  %cmp190.i = icmp sgt i32 %50, %6, !dbg !1352
  br i1 %cmp190.i, label %if.then192.i, label %for.body175.if.end263_crit_edge.i, !dbg !1352

for.body175.if.end263_crit_edge.i:                ; preds = %for.body175.i
  %idxprom264.pre.i = zext i1 %lnot.i to i64, !dbg !1184
  br label %if.end263.i, !dbg !1352

if.then192.i:                                     ; preds = %for.body175.i
  store i32 -987654321, i32* %arrayidx184.i, align 4, !dbg !1306, !tbaa !579
  %idxprom198.i = zext i1 %lnot.i to i64, !dbg !1274
  %arrayidx199.i = getelementptr inbounds i32** %13, i64 %idxprom198.i, !dbg !1274
  %51 = load i32** %arrayidx199.i, align 8, !dbg !1274, !tbaa !555
  %arrayidx200.i = getelementptr inbounds i32* %51, i64 %idxprom177.i, !dbg !1274
  %52 = load i32* %arrayidx200.i, align 4, !dbg !1274, !tbaa !579
  %53 = load i32*** %tsc.i, align 8, !dbg !1274, !tbaa !555
  %arrayidx203.i = getelementptr inbounds i32** %53, i64 1, !dbg !1274
  %54 = load i32** %arrayidx203.i, align 8, !dbg !1274, !tbaa !555
  %arrayidx204.i = getelementptr inbounds i32* %54, i64 %idxprom177.i, !dbg !1274
  %55 = load i32* %arrayidx204.i, align 4, !dbg !1274, !tbaa !579
  %add205.i = add nsw i32 %55, %52, !dbg !1274
  call void @llvm.dbg.value(metadata !{i32 %add205.i}, i64 0, metadata !1344) #8, !dbg !1274
  %cmp206.i = icmp sgt i32 %add205.i, -987654321, !dbg !1274
  br i1 %cmp206.i, label %if.then208.i, label %if.end213.i, !dbg !1274

if.then208.i:                                     ; preds = %if.then192.i
  store i32 %add205.i, i32* %arrayidx184.i, align 4, !dbg !1307, !tbaa !579
  br label %if.end213.i, !dbg !1307

if.end213.i:                                      ; preds = %if.then208.i, %if.then192.i
  %56 = phi i32 [ %add205.i, %if.then208.i ], [ -987654321, %if.then192.i ]
  %arrayidx216.i = getelementptr inbounds i32** %14, i64 %idxprom198.i, !dbg !1308
  %57 = load i32** %arrayidx216.i, align 8, !dbg !1308, !tbaa !555
  %arrayidx217.i = getelementptr inbounds i32* %57, i64 %idxprom177.i, !dbg !1308
  %58 = load i32* %arrayidx217.i, align 4, !dbg !1308, !tbaa !579
  %arrayidx220.i = getelementptr inbounds i32** %53, i64 4, !dbg !1308
  %59 = load i32** %arrayidx220.i, align 8, !dbg !1308, !tbaa !555
  %arrayidx221.i = getelementptr inbounds i32* %59, i64 %idxprom177.i, !dbg !1308
  %60 = load i32* %arrayidx221.i, align 4, !dbg !1308, !tbaa !579
  %add222.i = add nsw i32 %60, %58, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32 %add222.i}, i64 0, metadata !1344) #8, !dbg !1308
  %cmp227.i = icmp sgt i32 %add222.i, %56, !dbg !1308
  br i1 %cmp227.i, label %if.then229.i, label %if.end234.i, !dbg !1308

if.then229.i:                                     ; preds = %if.end213.i
  store i32 %add222.i, i32* %arrayidx184.i, align 4, !dbg !1353, !tbaa !579
  br label %if.end234.i, !dbg !1353

if.end234.i:                                      ; preds = %if.end213.i, %if.then229.i
  %61 = phi i32 [ %add222.i, %if.then229.i ], [ %56, %if.end213.i ]
  %arrayidx237.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next170.i, !dbg !1180
  %62 = load i8* %arrayidx237.i, align 1, !dbg !1180, !tbaa !556
  %idxprom239.i = sext i8 %62 to i64, !dbg !1180
  %63 = load i32*** %isc.i, align 8, !dbg !1180, !tbaa !555
  %arrayidx240.i = getelementptr inbounds i32** %63, i64 %idxprom239.i, !dbg !1180
  %64 = load i32** %arrayidx240.i, align 8, !dbg !1180, !tbaa !555
  %arrayidx241.i = getelementptr inbounds i32* %64, i64 %idxprom177.i, !dbg !1180
  %65 = load i32* %arrayidx241.i, align 4, !dbg !1180, !tbaa !579
  %cmp242.i = icmp eq i32 %65, -987654321, !dbg !1180
  br i1 %cmp242.i, label %if.else.i, label %if.then244.i, !dbg !1180

if.then244.i:                                     ; preds = %if.end234.i
  %add257.i = add nsw i32 %65, %61, !dbg !1354
  store i32 %add257.i, i32* %arrayidx184.i, align 4, !dbg !1354, !tbaa !579
  br label %if.end263.i, !dbg !1354

if.else.i:                                        ; preds = %if.end234.i
  store i32 -987654321, i32* %arrayidx184.i, align 4, !dbg !1309, !tbaa !579
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else.i, %if.then244.i, %for.body175.if.end263_crit_edge.i
  %idxprom264.pre-phi.i = phi i64 [ %idxprom264.pre.i, %for.body175.if.end263_crit_edge.i ], [ %idxprom198.i, %if.then244.i ], [ %idxprom198.i, %if.else.i ], !dbg !1184
  %arrayidx265.i = getelementptr inbounds i32** %12, i64 %idxprom264.pre-phi.i, !dbg !1184
  %66 = load i32** %arrayidx265.i, align 8, !dbg !1184, !tbaa !555
  %67 = load i32* %66, align 4, !dbg !1184, !tbaa !579
  %68 = load i32** %bsc.i, align 8, !dbg !1184, !tbaa !555
  %arrayidx268.i = getelementptr inbounds i32* %68, i64 %idxprom177.i, !dbg !1184
  %69 = load i32* %arrayidx268.i, align 4, !dbg !1184, !tbaa !579
  %add269.i = add nsw i32 %69, %67, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32 %add269.i}, i64 0, metadata !1344) #8, !dbg !1184
  %cmp270.i = icmp sgt i32 %add269.i, -987654321, !dbg !1184
  br i1 %cmp270.i, label %if.then272.i, label %if.end277.i, !dbg !1184

if.then272.i:                                     ; preds = %if.end263.i
  store i32 %add269.i, i32* %arrayidx188.i, align 4, !dbg !1275, !tbaa !579
  br label %if.end277.i, !dbg !1275

if.end277.i:                                      ; preds = %if.end263.i, %if.then272.i
  %arrayidx280.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next170.i, !dbg !1185
  %70 = load i8* %arrayidx280.i, align 1, !dbg !1185, !tbaa !556
  %idxprom282.i = sext i8 %70 to i64, !dbg !1185
  %71 = load i32*** %msc.i, align 8, !dbg !1185, !tbaa !555
  %arrayidx283.i = getelementptr inbounds i32** %71, i64 %idxprom282.i, !dbg !1185
  %72 = load i32** %arrayidx283.i, align 8, !dbg !1185, !tbaa !555
  %arrayidx284.i = getelementptr inbounds i32* %72, i64 %idxprom177.i, !dbg !1185
  %73 = load i32* %arrayidx284.i, align 4, !dbg !1185, !tbaa !579
  %cmp285.i = icmp eq i32 %73, -987654321, !dbg !1185
  br i1 %cmp285.i, label %for.cond308.preheader.i, label %if.then287.i, !dbg !1185

if.then287.i:                                     ; preds = %if.end277.i
  %74 = load i32* %arrayidx188.i, align 4, !dbg !1355, !tbaa !579
  %add300.i = add nsw i32 %74, %73, !dbg !1355
  br label %for.cond308.preheader.i, !dbg !1355

for.cond308.preheader.i:                          ; preds = %if.then287.i, %if.end277.i
  %storemerge153.i = phi i32 [ %add300.i, %if.then287.i ], [ -987654321, %if.end277.i ]
  store i32 %storemerge153.i, i32* %arrayidx188.i, align 4, !dbg !1276, !tbaa !579
  br i1 %cmp309139.i, label %for.body311.lr.ph.i, label %for.end560.i, !dbg !1349

for.body311.lr.ph.i:                              ; preds = %for.cond308.preheader.i
  %arrayidx319.i = getelementptr inbounds i32** %13, i64 %idxprom264.pre-phi.i, !dbg !1278
  %arrayidx338.i = getelementptr inbounds i32** %14, i64 %idxprom264.pre-phi.i, !dbg !1279
  %arrayidx380.i = getelementptr inbounds i32** %15, i64 %idxprom264.pre-phi.i, !dbg !1280
  %.pre177.i = load i32** %arrayidx319.i, align 8, !dbg !1278, !tbaa !555
  %.pre178.i = load i32*** %tsc.i, align 8, !dbg !1278, !tbaa !555
  %.pre181.i = load i32** %.pre178.i, align 8, !dbg !1278, !tbaa !555
  %arrayidx343.i = getelementptr inbounds i32** %.pre178.i, i64 3, !dbg !1279
  %arrayidx385.i = getelementptr inbounds i32** %.pre178.i, i64 5, !dbg !1280
  %arrayidx446.i = getelementptr inbounds i32** %.pre178.i, i64 2, !dbg !1282
  %arrayidx465.i = getelementptr inbounds i32** %.pre178.i, i64 6, !dbg !1330
  %arrayidx495.i = getelementptr inbounds i32** %.pre178.i, i64 1, !dbg !1284
  %arrayidx512.i = getelementptr inbounds i32** %.pre178.i, i64 4, !dbg !1312
  %.pre729 = load i32** %arrayidx338.i, align 8, !dbg !1279, !tbaa !555
  %.pre730 = load i32** %arrayidx343.i, align 8, !dbg !1279, !tbaa !555
  br label %for.body311.i, !dbg !1349

for.body311.i:                                    ; preds = %for.cond308.backedge.i, %for.body311.lr.ph.i
  %indvars.iv165.i = phi i64 [ %idxprom177.i, %for.body311.lr.ph.i ], [ %indvars.iv.next166.i, %for.cond308.backedge.i ]
  %indvars.iv.next166.i = add i64 %indvars.iv165.i, 1, !dbg !1349
  %arrayidx315.i = getelementptr inbounds i32* %49, i64 %indvars.iv.next166.i, !dbg !1277
  store i32 -987654321, i32* %arrayidx315.i, align 4, !dbg !1277, !tbaa !579
  %arrayidx320.i = getelementptr inbounds i32* %.pre177.i, i64 %indvars.iv165.i, !dbg !1278
  %75 = load i32* %arrayidx320.i, align 4, !dbg !1278, !tbaa !579
  %arrayidx325.i = getelementptr inbounds i32* %.pre181.i, i64 %indvars.iv165.i, !dbg !1278
  %76 = load i32* %arrayidx325.i, align 4, !dbg !1278, !tbaa !579
  %add326.i = add nsw i32 %76, %75, !dbg !1278
  call void @llvm.dbg.value(metadata !{i32 %add326.i}, i64 0, metadata !1344) #8, !dbg !1278
  %cmp327.i = icmp sgt i32 %add326.i, -987654321, !dbg !1278
  %add326..i = select i1 %cmp327.i, i32 %add326.i, i32 -987654321, !dbg !1278
  store i32 %add326..i, i32* %arrayidx315.i, align 4, !dbg !1356, !tbaa !579
  %arrayidx339.i = getelementptr inbounds i32* %.pre729, i64 %indvars.iv165.i, !dbg !1279
  %77 = load i32* %arrayidx339.i, align 4, !dbg !1279, !tbaa !579
  %arrayidx344.i = getelementptr inbounds i32* %.pre730, i64 %indvars.iv165.i, !dbg !1279
  %78 = load i32* %arrayidx344.i, align 4, !dbg !1279, !tbaa !579
  %add345.i = add nsw i32 %78, %77, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32 %add345.i}, i64 0, metadata !1344) #8, !dbg !1279
  %cmp350.i = icmp sgt i32 %add345.i, %add326..i, !dbg !1279
  %add345.i.add326..i = select i1 %cmp350.i, i32 %add345.i, i32 %add326..i, !dbg !1279
  store i32 %add345.i.add326..i, i32* %arrayidx315.i, align 4, !dbg !1357, !tbaa !579
  %add345.i.add326..i736 = select i1 %cmp350.i, i32 %add345.i, i32 %add326..i, !dbg !1279
  %79 = load i32* %66, align 4, !dbg !1228, !tbaa !579
  %arrayidx363.i = getelementptr inbounds i32* %68, i64 %indvars.iv.next166.i, !dbg !1228
  %80 = load i32* %arrayidx363.i, align 4, !dbg !1228, !tbaa !579
  %add364.i = add nsw i32 %80, %79, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32 %add364.i}, i64 0, metadata !1344) #8, !dbg !1228
  %cmp369.i = icmp sgt i32 %add364.i, %add345.i.add326..i736, !dbg !1228
  %add364.i.add345.i.add326..i = select i1 %cmp369.i, i32 %add364.i, i32 %add345.i.add326..i, !dbg !1228
  store i32 %add364.i.add345.i.add326..i, i32* %arrayidx315.i, align 4, !dbg !1358, !tbaa !579
  %add364.i.add345.i.add326..i736 = select i1 %cmp369.i, i32 %add364.i, i32 %add345.i.add326..i736, !dbg !1228
  %81 = load i32** %arrayidx380.i, align 8, !dbg !1280, !tbaa !555
  %arrayidx381.i = getelementptr inbounds i32* %81, i64 %indvars.iv165.i, !dbg !1280
  %82 = load i32* %arrayidx381.i, align 4, !dbg !1280, !tbaa !579
  %83 = load i32** %arrayidx385.i, align 8, !dbg !1280, !tbaa !555
  %arrayidx386.i = getelementptr inbounds i32* %83, i64 %indvars.iv165.i, !dbg !1280
  %84 = load i32* %arrayidx386.i, align 4, !dbg !1280, !tbaa !579
  %add387.i = add nsw i32 %84, %82, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32 %add387.i}, i64 0, metadata !1344) #8, !dbg !1280
  %cmp392.i = icmp sgt i32 %add387.i, %add364.i.add345.i.add326..i736, !dbg !1280
  br i1 %cmp392.i, label %if.then394.i, label %if.end399.i, !dbg !1280

if.then394.i:                                     ; preds = %for.body311.i
  store i32 %add387.i, i32* %arrayidx315.i, align 4, !dbg !1359, !tbaa !579
  br label %if.end399.i, !dbg !1359

if.end399.i:                                      ; preds = %if.then394.i, %for.body311.i
  %85 = phi i32 [ %add387.i, %if.then394.i ], [ %add364.i.add345.i.add326..i736, %for.body311.i ]
  %86 = load i8* %arrayidx280.i, align 1, !dbg !1360, !tbaa !556
  %idxprom404.i = sext i8 %86 to i64, !dbg !1360
  %arrayidx406.i = getelementptr inbounds i32** %71, i64 %idxprom404.i, !dbg !1360
  %87 = load i32** %arrayidx406.i, align 8, !dbg !1360, !tbaa !555
  %arrayidx407.i = getelementptr inbounds i32* %87, i64 %indvars.iv.next166.i, !dbg !1360
  %88 = load i32* %arrayidx407.i, align 4, !dbg !1360, !tbaa !579
  %cmp408.i = icmp eq i32 %88, -987654321, !dbg !1360
  %add423.i = add nsw i32 %88, %85, !dbg !1361
  %storemerge.i = select i1 %cmp408.i, i32 -987654321, i32 %add423.i, !dbg !1360
  store i32 %storemerge.i, i32* %arrayidx315.i, align 4, !dbg !1281, !tbaa !579
  %arrayidx433.i = getelementptr inbounds i32* %47, i64 %indvars.iv.next166.i, !dbg !1328
  store i32 -987654321, i32* %arrayidx433.i, align 4, !dbg !1328, !tbaa !579
  %89 = load i32* %M, align 4, !dbg !1362, !tbaa !579
  %90 = trunc i64 %indvars.iv.next166.i to i32, !dbg !1362
  %cmp435.i = icmp slt i32 %90, %89, !dbg !1362
  br i1 %cmp435.i, label %if.then437.i, label %if.end480.i, !dbg !1362

if.then437.i:                                     ; preds = %if.end399.i
  %arrayidx442.i = getelementptr inbounds i32* %49, i64 %indvars.iv165.i, !dbg !1282
  %91 = load i32* %arrayidx442.i, align 4, !dbg !1282, !tbaa !579
  %92 = load i32** %arrayidx446.i, align 8, !dbg !1282, !tbaa !555
  %arrayidx447.i = getelementptr inbounds i32* %92, i64 %indvars.iv165.i, !dbg !1282
  %93 = load i32* %arrayidx447.i, align 4, !dbg !1282, !tbaa !579
  %add448.i = add nsw i32 %93, %91, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32 %add448.i}, i64 0, metadata !1344) #8, !dbg !1282
  %cmp449.i = icmp sgt i32 %add448.i, -987654321, !dbg !1282
  br i1 %cmp449.i, label %if.then451.i, label %if.end456.i, !dbg !1282

if.then451.i:                                     ; preds = %if.then437.i
  store i32 %add448.i, i32* %arrayidx433.i, align 4, !dbg !1329, !tbaa !579
  br label %if.end456.i, !dbg !1329

if.end456.i:                                      ; preds = %if.then437.i, %if.then451.i
  %94 = phi i32 [ %add448.i, %if.then451.i ], [ -987654321, %if.then437.i ]
  %arrayidx461.i = getelementptr inbounds i32* %47, i64 %indvars.iv165.i, !dbg !1330
  %95 = load i32* %arrayidx461.i, align 4, !dbg !1330, !tbaa !579
  %96 = load i32** %arrayidx465.i, align 8, !dbg !1330, !tbaa !555
  %arrayidx466.i = getelementptr inbounds i32* %96, i64 %indvars.iv165.i, !dbg !1330
  %97 = load i32* %arrayidx466.i, align 4, !dbg !1330, !tbaa !579
  %add467.i = add nsw i32 %97, %95, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32 %add467.i}, i64 0, metadata !1344) #8, !dbg !1330
  %cmp472.i = icmp sgt i32 %add467.i, %94, !dbg !1330
  br i1 %cmp472.i, label %if.then474.i, label %if.end480.i, !dbg !1330

if.then474.i:                                     ; preds = %if.end456.i
  store i32 %add467.i, i32* %arrayidx433.i, align 4, !dbg !1363, !tbaa !579
  br label %if.end480.i, !dbg !1363

if.end480.i:                                      ; preds = %if.then474.i, %if.end456.i, %if.end399.i
  %arrayidx484.i = getelementptr inbounds i32* %48, i64 %indvars.iv.next166.i, !dbg !1310
  store i32 -987654321, i32* %arrayidx484.i, align 4, !dbg !1310, !tbaa !579
  %98 = load i32* %M, align 4, !dbg !1364, !tbaa !579
  %cmp486.i = icmp slt i32 %90, %98, !dbg !1364
  br i1 %cmp486.i, label %if.then488.i, label %for.cond308.backedge.i, !dbg !1364

for.cond308.backedge.i:                           ; preds = %if.else551.i, %if.then537.i, %if.end480.i
  %cmp309.i = icmp slt i32 %90, %9, !dbg !1349
  br i1 %cmp309.i, label %for.body311.i, label %for.end560.i, !dbg !1349

if.then488.i:                                     ; preds = %if.end480.i
  %arrayidx492.i = getelementptr inbounds i32* %.pre177.i, i64 %indvars.iv.next166.i, !dbg !1284
  %99 = load i32* %arrayidx492.i, align 4, !dbg !1284, !tbaa !579
  %100 = load i32** %arrayidx495.i, align 8, !dbg !1284, !tbaa !555
  %arrayidx496.i = getelementptr inbounds i32* %100, i64 %indvars.iv.next166.i, !dbg !1284
  %101 = load i32* %arrayidx496.i, align 4, !dbg !1284, !tbaa !579
  %add497.i = add nsw i32 %101, %99, !dbg !1284
  call void @llvm.dbg.value(metadata !{i32 %add497.i}, i64 0, metadata !1344) #8, !dbg !1284
  %cmp498.i = icmp sgt i32 %add497.i, -987654321, !dbg !1284
  br i1 %cmp498.i, label %if.then500.i, label %if.end505.i, !dbg !1284

if.then500.i:                                     ; preds = %if.then488.i
  store i32 %add497.i, i32* %arrayidx484.i, align 4, !dbg !1311, !tbaa !579
  br label %if.end505.i, !dbg !1311

if.end505.i:                                      ; preds = %if.then488.i, %if.then500.i
  %102 = phi i32 [ %add497.i, %if.then500.i ], [ -987654321, %if.then488.i ]
  %arrayidx509.i = getelementptr inbounds i32* %.pre729, i64 %indvars.iv.next166.i, !dbg !1312
  %103 = load i32* %arrayidx509.i, align 4, !dbg !1312, !tbaa !579
  %104 = load i32** %arrayidx512.i, align 8, !dbg !1312, !tbaa !555
  %arrayidx513.i = getelementptr inbounds i32* %104, i64 %indvars.iv.next166.i, !dbg !1312
  %105 = load i32* %arrayidx513.i, align 4, !dbg !1312, !tbaa !579
  %add514.i = add nsw i32 %105, %103, !dbg !1312
  call void @llvm.dbg.value(metadata !{i32 %add514.i}, i64 0, metadata !1344) #8, !dbg !1312
  %cmp519.i = icmp sgt i32 %add514.i, %102, !dbg !1312
  br i1 %cmp519.i, label %if.then521.i, label %if.end526.i, !dbg !1312

if.then521.i:                                     ; preds = %if.end505.i
  store i32 %add514.i, i32* %arrayidx484.i, align 4, !dbg !1365, !tbaa !579
  br label %if.end526.i, !dbg !1365

if.end526.i:                                      ; preds = %if.end505.i, %if.then521.i
  %106 = phi i32 [ %add514.i, %if.then521.i ], [ %102, %if.end505.i ]
  %107 = load i8* %arrayidx280.i, align 1, !dbg !1366, !tbaa !556
  %idxprom531.i = sext i8 %107 to i64, !dbg !1366
  %108 = load i32*** %isc.i, align 8, !dbg !1366, !tbaa !555
  %arrayidx533.i = getelementptr inbounds i32** %108, i64 %idxprom531.i, !dbg !1366
  %109 = load i32** %arrayidx533.i, align 8, !dbg !1366, !tbaa !555
  %arrayidx534.i = getelementptr inbounds i32* %109, i64 %indvars.iv.next166.i, !dbg !1366
  %110 = load i32* %arrayidx534.i, align 4, !dbg !1366, !tbaa !579
  %cmp535.i = icmp eq i32 %110, -987654321, !dbg !1366
  br i1 %cmp535.i, label %if.else551.i, label %if.then537.i, !dbg !1366

if.then537.i:                                     ; preds = %if.end526.i
  %add550.i = add nsw i32 %110, %106, !dbg !1367
  store i32 %add550.i, i32* %arrayidx484.i, align 4, !dbg !1367, !tbaa !579
  br label %for.cond308.backedge.i, !dbg !1367

if.else551.i:                                     ; preds = %if.end526.i
  store i32 -987654321, i32* %arrayidx484.i, align 4, !dbg !1313, !tbaa !579
  br label %for.cond308.backedge.i

for.end560.i:                                     ; preds = %for.cond308.backedge.i, %for.cond308.preheader.i
  %arrayidx562.i = getelementptr inbounds i32** %12, i64 %idxprom178.i, !dbg !1231
  %111 = load i32** %arrayidx562.i, align 8, !dbg !1231, !tbaa !555
  %arrayidx563.i = getelementptr inbounds i32* %111, i64 4, !dbg !1231
  store i32 -987654321, i32* %arrayidx563.i, align 4, !dbg !1231, !tbaa !579
  %arrayidx566.i = getelementptr inbounds i32* %66, i64 4, !dbg !1186
  %112 = load i32* %arrayidx566.i, align 4, !dbg !1186, !tbaa !579
  %113 = load i32* %arrayidx569.i, align 4, !dbg !1186, !tbaa !579
  %add570.i = add nsw i32 %113, %112, !dbg !1186
  call void @llvm.dbg.value(metadata !{i32 %add570.i}, i64 0, metadata !1344) #8, !dbg !1186
  %cmp571.i = icmp sgt i32 %add570.i, -987654321, !dbg !1186
  %add570..i = select i1 %cmp571.i, i32 %add570.i, i32 -987654321, !dbg !1186
  store i32 %add570..i, i32* %arrayidx563.i, align 4, !dbg !1368, !tbaa !579
  %arrayidx580.i = getelementptr inbounds i32* %111, i64 1, !dbg !1232
  store i32 -987654321, i32* %arrayidx580.i, align 4, !dbg !1232, !tbaa !579
  br i1 %cmp26151.i, label %for.end608.i, label %land.rhs.i.preheader, !dbg !1369

land.rhs.i.preheader:                             ; preds = %for.end560.i
  %114 = load i32* %M, align 4, !dbg !1369, !tbaa !579
  %cmp585.i694 = icmp sgt i32 %6, %114, !dbg !1369
  br i1 %cmp585.i694, label %for.end608.i, label %for.body587.i.lr.ph

for.body587.i.lr.ph:                              ; preds = %land.rhs.i.preheader
  %115 = load i32** %esc.i, align 8, !dbg !1233, !tbaa !555
  br label %for.body587.i

land.rhs.i:                                       ; preds = %for.inc606.i
  %116 = load i32* %M, align 4, !dbg !1369, !tbaa !579
  %117 = trunc i64 %indvars.iv.next168.i to i32, !dbg !1369
  %cmp585.i = icmp sgt i32 %117, %116, !dbg !1369
  br i1 %cmp585.i, label %for.end608.i, label %for.body587.i

for.body587.i:                                    ; preds = %for.body587.i.lr.ph, %land.rhs.i
  %118 = phi i32 [ %6, %for.body587.i.lr.ph ], [ %117, %land.rhs.i ]
  %indvars.iv167.i695 = phi i64 [ %idxprom177.i, %for.body587.i.lr.ph ], [ %indvars.iv.next168.i, %land.rhs.i ]
  %119 = phi i32 [ -987654321, %for.body587.i.lr.ph ], [ %122, %land.rhs.i ]
  %arrayidx591.i = getelementptr inbounds i32* %49, i64 %indvars.iv167.i695, !dbg !1233
  %120 = load i32* %arrayidx591.i, align 4, !dbg !1233, !tbaa !579
  %arrayidx594.i = getelementptr inbounds i32* %115, i64 %indvars.iv167.i695, !dbg !1233
  %121 = load i32* %arrayidx594.i, align 4, !dbg !1233, !tbaa !579
  %add595.i = add nsw i32 %121, %120, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32 %add595.i}, i64 0, metadata !1344) #8, !dbg !1233
  %cmp599.i = icmp sgt i32 %add595.i, %119, !dbg !1233
  br i1 %cmp599.i, label %if.then601.i, label %for.inc606.i, !dbg !1233

if.then601.i:                                     ; preds = %for.body587.i
  store i32 %add595.i, i32* %arrayidx580.i, align 4, !dbg !1370, !tbaa !579
  br label %for.inc606.i, !dbg !1370

for.inc606.i:                                     ; preds = %if.then601.i, %for.body587.i
  %122 = phi i32 [ %119, %for.body587.i ], [ %add595.i, %if.then601.i ]
  %cmp582.i = icmp slt i32 %118, %9, !dbg !1369
  %indvars.iv.next168.i = add i64 %indvars.iv167.i695, 1, !dbg !1369
  br i1 %cmp582.i, label %land.rhs.i, label %for.end608.i, !dbg !1369

for.end608.i:                                     ; preds = %land.rhs.i.preheader, %for.inc606.i, %land.rhs.i, %for.end560.i
  %123 = phi i32 [ -987654321, %for.end560.i ], [ -987654321, %land.rhs.i.preheader ], [ %122, %for.inc606.i ], [ %122, %land.rhs.i ]
  store i32 -987654321, i32* %111, align 4, !dbg !1235, !tbaa !579
  %124 = load i32* %arrayidx145.i, align 4, !dbg !1236, !tbaa !579
  %add618.i = add nsw i32 %124, %add570..i, !dbg !1236
  call void @llvm.dbg.value(metadata !{i32 %add618.i}, i64 0, metadata !1344) #8, !dbg !1236
  %cmp619.i = icmp sgt i32 %add618.i, -987654321, !dbg !1236
  %add618..i = select i1 %cmp619.i, i32 %add618.i, i32 -987654321, !dbg !1236
  store i32 %add618..i, i32* %111, align 4, !dbg !1371, !tbaa !579
  %arrayidx628.i = getelementptr inbounds i32* %111, i64 2, !dbg !1237
  store i32 -987654321, i32* %arrayidx628.i, align 4, !dbg !1237, !tbaa !579
  %arrayidx631.i = getelementptr inbounds i32* %66, i64 2, !dbg !1187
  %125 = load i32* %arrayidx631.i, align 4, !dbg !1187, !tbaa !579
  %126 = load i32* %arrayidx634.i, align 4, !dbg !1187, !tbaa !579
  %add635.i = add nsw i32 %126, %125, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32 %add635.i}, i64 0, metadata !1344) #8, !dbg !1187
  %cmp636.i = icmp sgt i32 %add635.i, -987654321, !dbg !1187
  %add635..i = select i1 %cmp636.i, i32 %add635.i, i32 -987654321, !dbg !1187
  store i32 %add635..i, i32* %arrayidx628.i, align 4, !dbg !1372, !tbaa !579
  %127 = load i32* %arrayidx162.i, align 4, !dbg !1238, !tbaa !579
  %add649.i = add nsw i32 %127, %123, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32 %add649.i}, i64 0, metadata !1344) #8, !dbg !1238
  %cmp653.i = icmp sgt i32 %add649.i, %add635..i, !dbg !1238
  %add649.add635..i = select i1 %cmp653.i, i32 %add649.i, i32 %add635..i, !dbg !1238
  store i32 %add649.add635..i, i32* %arrayidx628.i, align 4, !dbg !1373, !tbaa !579
  %cmp173.i = icmp slt i32 %46, %s2.1.i, !dbg !1348
  br i1 %cmp173.i, label %for.body175.i, label %for.end662.i, !dbg !1348

for.end662.i:                                     ; preds = %for.end608.i, %if.end137.i
  %128 = load i32* %M, align 4, !dbg !1214, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !1374) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %128}, i64 0, metadata !1375) #8, !dbg !1215
  %call.i3.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %128, i32 0, i32 0) #6, !dbg !1376
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i3.i}, i64 0, metadata !1377) #8, !dbg !1376
  %xmx1.i4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 0, !dbg !1378
  %129 = load i32*** %xmx1.i4.i, align 8, !dbg !1378, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1379) #8, !dbg !1378
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1213) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1216) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1220
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1222
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1226
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1178
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1227
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1231
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1186
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1232
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1235
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1236
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1237
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1240
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1240
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1241
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1243
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1248
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1251
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1257
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1258
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1259
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1260
  call void @llvm.dbg.value(metadata !{i32** %129}, i64 0, metadata !1217) #8, !dbg !1264
  %mmx4.i5.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 1, !dbg !1380
  %130 = load i32*** %mmx4.i5.i, align 8, !dbg !1380, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1381) #8, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1267) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1268) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1272
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1274
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1275
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1276
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1277
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1278
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1281
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1284
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1289
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1290
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1260
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1291
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1294
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1297
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32** %130}, i64 0, metadata !1269) #8, !dbg !1299
  %imx8.i6.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 2, !dbg !1382
  %131 = load i32*** %imx8.i6.i, align 8, !dbg !1382, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1383) #8, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1302) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1303) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1305
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1306
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1307
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1309
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1310
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1311
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1312
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1313
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1314
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1315
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1316
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1317
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1318
  call void @llvm.dbg.value(metadata !{i32** %131}, i64 0, metadata !1304) #8, !dbg !1319
  %dmx12.i7.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 3, !dbg !1384
  %132 = load i32*** %dmx12.i7.i, align 8, !dbg !1384, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1385) #8, !dbg !1384
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1322) #8, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1323) #8, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1325
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1327
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1273
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1328
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1329
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1286
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1331
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1332
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1333
  call void @llvm.dbg.value(metadata !{i32** %132}, i64 0, metadata !1324) #8, !dbg !1334
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i3.i}, i64 0, metadata !1386) #8, !dbg !1214
  %rem665.i = srem i32 %8, 2, !dbg !1387
  call void @llvm.dbg.value(metadata !{i32 %rem665.i}, i64 0, metadata !1388) #8, !dbg !1387
  %idxprom666.i = sext i32 %rem665.i to i64, !dbg !1239
  %arrayidx667.i = getelementptr inbounds i32** %129, i64 %idxprom666.i, !dbg !1239
  %133 = load i32** %arrayidx667.i, align 8, !dbg !1239, !tbaa !555
  store i32 -987654321, i32* %133, align 4, !dbg !1239, !tbaa !579
  %arrayidx671.i = getelementptr inbounds i32* %133, i64 4, !dbg !1239
  store i32 -987654321, i32* %arrayidx671.i, align 4, !dbg !1239, !tbaa !579
  %arrayidx674.i = getelementptr inbounds i32* %133, i64 2, !dbg !1240
  store i32 -987654321, i32* %arrayidx674.i, align 4, !dbg !1240, !tbaa !579
  %arrayidx677.i = getelementptr inbounds i32* %133, i64 1, !dbg !1240
  store i32 -987654321, i32* %arrayidx677.i, align 4, !dbg !1240, !tbaa !579
  %add679.i = add nsw i32 %9, 1, !dbg !1389
  %cmp680135.i = icmp slt i32 %add679.i, %6, !dbg !1389
  br i1 %cmp680135.i, label %for.end697.i, label %for.body682.lr.ph.i, !dbg !1389

for.body682.lr.ph.i:                              ; preds = %for.end662.i
  %arrayidx685.i = getelementptr inbounds i32** %132, i64 %idxprom666.i, !dbg !1286
  %134 = load i32** %arrayidx685.i, align 8, !dbg !1286, !tbaa !555
  %arrayidx689.i = getelementptr inbounds i32** %131, i64 %idxprom666.i, !dbg !1286
  %135 = load i32** %arrayidx689.i, align 8, !dbg !1286, !tbaa !555
  %arrayidx693.i = getelementptr inbounds i32** %130, i64 %idxprom666.i, !dbg !1286
  %136 = load i32** %arrayidx693.i, align 8, !dbg !1286, !tbaa !555
  %137 = sext i32 %6 to i64
  br label %for.body682.i, !dbg !1389

for.body682.i:                                    ; preds = %for.body682.i, %for.body682.lr.ph.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %for.body682.i ], [ %137, %for.body682.lr.ph.i ]
  %arrayidx686.i = getelementptr inbounds i32* %134, i64 %indvars.iv163.i, !dbg !1286
  store i32 -987654321, i32* %arrayidx686.i, align 4, !dbg !1286, !tbaa !579
  %arrayidx690.i = getelementptr inbounds i32* %135, i64 %indvars.iv163.i, !dbg !1286
  store i32 -987654321, i32* %arrayidx690.i, align 4, !dbg !1286, !tbaa !579
  %arrayidx694.i = getelementptr inbounds i32* %136, i64 %indvars.iv163.i, !dbg !1286
  store i32 -987654321, i32* %arrayidx694.i, align 4, !dbg !1286, !tbaa !579
  %indvars.iv.next164.i = add i64 %indvars.iv163.i, 1, !dbg !1389
  %138 = trunc i64 %indvars.iv163.i to i32, !dbg !1389
  %cmp680.i = icmp slt i32 %138, %add679.i, !dbg !1389
  br i1 %cmp680.i, label %for.body682.i, label %for.end697.i, !dbg !1389

for.end697.i:                                     ; preds = %for.body682.i, %for.end662.i
  %lnot699.i = icmp eq i32 %rem665.i, 0, !dbg !1390
  %idxprom702.i = sext i32 %add679.i to i64, !dbg !1288
  %idxprom703.i = zext i1 %lnot699.i to i64, !dbg !1288
  %arrayidx704.i = getelementptr inbounds i32** %132, i64 %idxprom703.i, !dbg !1288
  %139 = load i32** %arrayidx704.i, align 8, !dbg !1288, !tbaa !555
  %arrayidx705.i = getelementptr inbounds i32* %139, i64 %idxprom702.i, !dbg !1288
  store i32 -987654321, i32* %arrayidx705.i, align 4, !dbg !1288, !tbaa !579
  %arrayidx709.i = getelementptr inbounds i32** %131, i64 %idxprom703.i, !dbg !1288
  %140 = load i32** %arrayidx709.i, align 8, !dbg !1288, !tbaa !555
  %arrayidx710.i = getelementptr inbounds i32* %140, i64 %idxprom702.i, !dbg !1288
  store i32 -987654321, i32* %arrayidx710.i, align 4, !dbg !1288, !tbaa !579
  %arrayidx714.i = getelementptr inbounds i32** %130, i64 %idxprom703.i, !dbg !1288
  %141 = load i32** %arrayidx714.i, align 8, !dbg !1288, !tbaa !555
  %arrayidx715.i = getelementptr inbounds i32* %141, i64 %idxprom702.i, !dbg !1288
  store i32 -987654321, i32* %arrayidx715.i, align 4, !dbg !1288, !tbaa !579
  %conv716.i = sext i8 %10 to i32, !dbg !1391
  switch i32 %conv716.i, label %sw.default742.i [
    i32 1, label %sw.bb717.i
    i32 3, label %sw.bb722.i
    i32 5, label %sw.bb727.i
    i32 8, label %sw.bb731.i
    i32 9, label %sw.bb735.i
  ], !dbg !1391

sw.bb717.i:                                       ; preds = %for.end697.i
  %idxprom718.i = sext i32 %9 to i64, !dbg !1289
  %arrayidx720.i = getelementptr inbounds i32** %130, i64 %idxprom666.i, !dbg !1289
  %142 = load i32** %arrayidx720.i, align 8, !dbg !1289, !tbaa !555
  %arrayidx721.i = getelementptr inbounds i32* %142, i64 %idxprom718.i, !dbg !1289
  store i32 0, i32* %arrayidx721.i, align 4, !dbg !1289, !tbaa !579
  br label %sw.epilog744.i, !dbg !1289

sw.bb722.i:                                       ; preds = %for.end697.i
  %idxprom723.i = sext i32 %9 to i64, !dbg !1314
  %arrayidx725.i = getelementptr inbounds i32** %131, i64 %idxprom666.i, !dbg !1314
  %143 = load i32** %arrayidx725.i, align 8, !dbg !1314, !tbaa !555
  %arrayidx726.i = getelementptr inbounds i32* %143, i64 %idxprom723.i, !dbg !1314
  store i32 0, i32* %arrayidx726.i, align 4, !dbg !1314, !tbaa !579
  br label %sw.epilog744.i, !dbg !1314

sw.bb727.i:                                       ; preds = %for.end697.i
  store i32 0, i32* %arrayidx671.i, align 4, !dbg !1241, !tbaa !579
  br label %sw.epilog744.i, !dbg !1241

sw.bb731.i:                                       ; preds = %for.end697.i
  store i32 0, i32* %arrayidx674.i, align 4, !dbg !1242, !tbaa !579
  br label %sw.epilog744.i, !dbg !1242

sw.bb735.i:                                       ; preds = %for.end697.i
  %144 = load i32* %arrayidx738.i, align 4, !dbg !1188, !tbaa !579
  store i32 %144, i32* %arrayidx674.i, align 4, !dbg !1188, !tbaa !579
  br label %sw.epilog744.i, !dbg !1188

sw.default742.i:                                  ; preds = %for.end697.i
  %call743.i = call i8* @Statetype(i8 signext %10) #6, !dbg !1392
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i8* %call743.i) #6, !dbg !1392
  br label %sw.epilog744.i, !dbg !1393

sw.epilog744.i:                                   ; preds = %sw.default742.i, %sw.bb735.i, %sw.bb731.i, %sw.bb727.i, %sw.bb722.i, %sw.bb717.i
  br i1 %cmp9.i, label %if.then748.i, label %for.cond795.preheader.i, !dbg !1394

for.cond795.preheader.i:                          ; preds = %for.inc791.i, %if.then748.i, %sw.epilog744.i
  %cmp796131.i = icmp slt i32 %s2.1.i, %8, !dbg !1395
  br i1 %cmp796131.i, label %for.body798.lr.ph.i, label %for.end1150.i, !dbg !1395

for.body798.lr.ph.i:                              ; preds = %for.cond795.preheader.i
  %145 = sext i32 %6 to i64
  %146 = sext i32 %9 to i64
  br label %for.body798.i, !dbg !1395

if.then748.i:                                     ; preds = %sw.epilog744.i
  %147 = load i32** %arrayidx667.i, align 8, !dbg !1243, !tbaa !555
  %arrayidx751.i = getelementptr inbounds i32* %147, i64 2, !dbg !1243
  %148 = load i32* %arrayidx751.i, align 4, !dbg !1243, !tbaa !579
  %149 = load i32* %arrayidx162.i, align 4, !dbg !1243, !tbaa !579
  %add755.i = add nsw i32 %149, %148, !dbg !1243
  %arrayidx758.i = getelementptr inbounds i32* %147, i64 1, !dbg !1243
  store i32 %add755.i, i32* %arrayidx758.i, align 4, !dbg !1243, !tbaa !579
  br i1 %cmp26151.i, label %for.cond795.preheader.i, label %for.body762.lr.ph.i, !dbg !1396

for.body762.lr.ph.i:                              ; preds = %if.then748.i
  %arrayidx772.i = getelementptr inbounds i32** %130, i64 %idxprom666.i, !dbg !1245
  %cmp774.i = icmp eq i32 %s2.1.i, %8, !dbg !1397
  %arrayidx779.i = getelementptr inbounds i8* %dsq, i64 %idxprom30, !dbg !1290
  %150 = sext i32 %9 to i64
  %.pre.i = load i32** %esc.i, align 8, !dbg !1245, !tbaa !555
  %.pre175.i = load i32** %arrayidx772.i, align 8, !dbg !1245, !tbaa !555
  br label %for.body762.i, !dbg !1396

for.body762.i:                                    ; preds = %for.inc791.for.body762_crit_edge.i, %for.body762.lr.ph.i
  %151 = phi i32 [ %.pre180.i, %for.inc791.for.body762_crit_edge.i ], [ %add755.i, %for.body762.lr.ph.i ]
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %for.inc791.for.body762_crit_edge.i ], [ %150, %for.body762.lr.ph.i ]
  %arrayidx768.i = getelementptr inbounds i32* %.pre.i, i64 %indvars.iv161.i, !dbg !1245
  %152 = load i32* %arrayidx768.i, align 4, !dbg !1245, !tbaa !579
  %add769.i = add nsw i32 %152, %151, !dbg !1245
  %arrayidx773.i = getelementptr inbounds i32* %.pre175.i, i64 %indvars.iv161.i, !dbg !1245
  store i32 %add769.i, i32* %arrayidx773.i, align 4, !dbg !1245, !tbaa !579
  br i1 %cmp774.i, label %for.inc791.i, label %if.then776.i, !dbg !1397

if.then776.i:                                     ; preds = %for.body762.i
  %153 = load i8* %arrayidx779.i, align 1, !dbg !1290, !tbaa !556
  %idxprom781.i = sext i8 %153 to i64, !dbg !1290
  %154 = load i32*** %msc.i, align 8, !dbg !1290, !tbaa !555
  %arrayidx783.i = getelementptr inbounds i32** %154, i64 %idxprom781.i, !dbg !1290
  %155 = load i32** %arrayidx783.i, align 8, !dbg !1290, !tbaa !555
  %arrayidx784.i = getelementptr inbounds i32* %155, i64 %indvars.iv161.i, !dbg !1290
  %156 = load i32* %arrayidx784.i, align 4, !dbg !1290, !tbaa !579
  %add789.i = add nsw i32 %156, %add769.i, !dbg !1290
  store i32 %add789.i, i32* %arrayidx773.i, align 4, !dbg !1290, !tbaa !579
  br label %for.inc791.i, !dbg !1290

for.inc791.i:                                     ; preds = %if.then776.i, %for.body762.i
  %157 = trunc i64 %indvars.iv161.i to i32, !dbg !1396
  %cmp760.i = icmp sgt i32 %157, %6, !dbg !1396
  br i1 %cmp760.i, label %for.inc791.for.body762_crit_edge.i, label %for.cond795.preheader.i, !dbg !1396

for.inc791.for.body762_crit_edge.i:               ; preds = %for.inc791.i
  %indvars.iv.next162.i = add i64 %indvars.iv161.i, -1, !dbg !1396
  %.pre180.i = load i32* %arrayidx758.i, align 4, !dbg !1245, !tbaa !579
  br label %for.body762.i, !dbg !1396

for.cond795.loopexit.i:                           ; preds = %for.inc1145.i, %for.end847.i
  %cmp796.i = icmp sgt i32 %158, %s2.1.i, !dbg !1395
  br i1 %cmp796.i, label %for.body798.i, label %for.end1150.i, !dbg !1395

for.body798.i:                                    ; preds = %for.cond795.loopexit.i, %for.body798.lr.ph.i
  %indvars.iv159.i = phi i64 [ %idxprom30, %for.body798.lr.ph.i ], [ %indvars.iv.next160.i, %for.cond795.loopexit.i ]
  %indvars.iv.next160.i = add i64 %indvars.iv159.i, -1, !dbg !1395
  %158 = trunc i64 %indvars.iv.next160.i to i32, !dbg !1398
  %rem799.i = srem i32 %158, 2, !dbg !1398
  call void @llvm.dbg.value(metadata !{i32 %rem799.i}, i64 0, metadata !1337) #8, !dbg !1398
  %lnot801.i = icmp eq i32 %rem799.i, 0, !dbg !1399
  %idxprom803.i = sext i32 %rem799.i to i64, !dbg !1248
  %arrayidx804.i = getelementptr inbounds i32** %129, i64 %idxprom803.i, !dbg !1248
  %159 = load i32** %arrayidx804.i, align 8, !dbg !1248, !tbaa !555
  %arrayidx805.i = getelementptr inbounds i32* %159, i64 2, !dbg !1248
  store i32 -987654321, i32* %arrayidx805.i, align 4, !dbg !1248, !tbaa !579
  %idxprom806.i = zext i1 %lnot801.i to i64, !dbg !1251
  %arrayidx807.i = getelementptr inbounds i32** %129, i64 %idxprom806.i, !dbg !1251
  %160 = load i32** %arrayidx807.i, align 8, !dbg !1251, !tbaa !555
  %arrayidx808.i = getelementptr inbounds i32* %160, i64 2, !dbg !1251
  %161 = load i32* %arrayidx808.i, align 4, !dbg !1251, !tbaa !579
  %162 = load i32* %arrayidx634.i, align 4, !dbg !1251, !tbaa !579
  %add812.i = add nsw i32 %162, %161, !dbg !1251
  call void @llvm.dbg.value(metadata !{i32 %add812.i}, i64 0, metadata !1344) #8, !dbg !1251
  %cmp813.i = icmp sgt i32 %add812.i, -987654321, !dbg !1251
  br i1 %cmp813.i, label %if.then815.i, label %if.end819.i, !dbg !1251

if.then815.i:                                     ; preds = %for.body798.i
  store i32 %add812.i, i32* %arrayidx805.i, align 4, !dbg !1400, !tbaa !579
  br label %if.end819.i, !dbg !1400

if.end819.i:                                      ; preds = %if.then815.i, %for.body798.i
  %.pre176.i = phi i32 [ %add812.i, %if.then815.i ], [ -987654321, %for.body798.i ]
  store i32 -987654321, i32* %159, align 4, !dbg !1252, !tbaa !579
  br i1 %cmp26151.i, label %for.end847.i, label %for.body826.lr.ph.i, !dbg !1401

for.body826.lr.ph.i:                              ; preds = %if.end819.i
  %arrayidx829.i = getelementptr inbounds i32** %130, i64 %idxprom806.i, !dbg !1253
  %163 = load i32** %arrayidx829.i, align 8, !dbg !1253, !tbaa !555
  %164 = load i32** %bsc.i, align 8, !dbg !1253, !tbaa !555
  br label %for.body826.i, !dbg !1401

for.body826.i:                                    ; preds = %for.inc845.i, %for.body826.lr.ph.i
  %165 = phi i32 [ %168, %for.inc845.i ], [ -987654321, %for.body826.lr.ph.i ], !dbg !1253
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %for.inc845.i ], [ %145, %for.body826.lr.ph.i ]
  %arrayidx830.i = getelementptr inbounds i32* %163, i64 %indvars.iv154.i, !dbg !1253
  %166 = load i32* %arrayidx830.i, align 4, !dbg !1253, !tbaa !579
  %arrayidx833.i = getelementptr inbounds i32* %164, i64 %indvars.iv154.i, !dbg !1253
  %167 = load i32* %arrayidx833.i, align 4, !dbg !1253, !tbaa !579
  %add834.i = add nsw i32 %167, %166, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32 %add834.i}, i64 0, metadata !1344) #8, !dbg !1253
  %cmp838.i = icmp sgt i32 %add834.i, %165, !dbg !1253
  br i1 %cmp838.i, label %if.then840.i, label %for.inc845.i, !dbg !1253

if.then840.i:                                     ; preds = %for.body826.i
  store i32 %add834.i, i32* %159, align 4, !dbg !1402, !tbaa !579
  br label %for.inc845.i, !dbg !1402

for.inc845.i:                                     ; preds = %if.then840.i, %for.body826.i
  %168 = phi i32 [ %165, %for.body826.i ], [ %add834.i, %if.then840.i ]
  %indvars.iv.next155.i = add i64 %indvars.iv154.i, 1, !dbg !1401
  %169 = trunc i64 %indvars.iv154.i to i32, !dbg !1401
  %cmp824.i = icmp slt i32 %169, %9, !dbg !1401
  br i1 %cmp824.i, label %for.body826.i, label %for.end847.i, !dbg !1401

for.end847.i:                                     ; preds = %for.inc845.i, %if.end819.i
  %170 = phi i32 [ -987654321, %if.end819.i ], [ %168, %for.inc845.i ]
  %arrayidx850.i = getelementptr inbounds i32* %159, i64 1, !dbg !1255
  store i32 -987654321, i32* %arrayidx850.i, align 4, !dbg !1255, !tbaa !579
  %171 = load i32* %arrayidx162.i, align 4, !dbg !1256, !tbaa !579
  %add857.i = add nsw i32 %171, %.pre176.i, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32 %add857.i}, i64 0, metadata !1344) #8, !dbg !1256
  %cmp858.i = icmp sgt i32 %add857.i, -987654321, !dbg !1256
  %add857..i = select i1 %cmp858.i, i32 %add857.i, i32 -987654321, !dbg !1256
  store i32 %add857..i, i32* %arrayidx850.i, align 4, !dbg !1403, !tbaa !579
  %arrayidx867.i = getelementptr inbounds i32* %159, i64 4, !dbg !1257
  store i32 -987654321, i32* %arrayidx867.i, align 4, !dbg !1257, !tbaa !579
  %172 = load i32* %arrayidx145.i, align 4, !dbg !1258, !tbaa !579
  %add874.i = add nsw i32 %172, %170, !dbg !1258
  call void @llvm.dbg.value(metadata !{i32 %add874.i}, i64 0, metadata !1344) #8, !dbg !1258
  %cmp875.i = icmp sgt i32 %add874.i, -987654321, !dbg !1258
  %add874..i = select i1 %cmp875.i, i32 %add874.i, i32 -987654321, !dbg !1258
  store i32 %add874..i, i32* %arrayidx867.i, align 4, !dbg !1404, !tbaa !579
  %arrayidx884.i = getelementptr inbounds i32* %160, i64 4, !dbg !1259
  %173 = load i32* %arrayidx884.i, align 4, !dbg !1259, !tbaa !579
  %174 = load i32* %arrayidx569.i, align 4, !dbg !1259, !tbaa !579
  %add888.i = add nsw i32 %174, %173, !dbg !1259
  call void @llvm.dbg.value(metadata !{i32 %add888.i}, i64 0, metadata !1344) #8, !dbg !1259
  %cmp892.i = icmp sgt i32 %add888.i, %add874..i, !dbg !1259
  %add888.add874..i = select i1 %cmp892.i, i32 %add888.i, i32 %add874..i, !dbg !1259
  store i32 %add888.add874..i, i32* %arrayidx867.i, align 4, !dbg !1405, !tbaa !579
  br i1 %cmp26151.i, label %for.cond795.loopexit.i, label %for.body902.lr.ph.i, !dbg !1406

for.body902.lr.ph.i:                              ; preds = %for.end847.i
  %arrayidx912.i = getelementptr inbounds i32** %130, i64 %idxprom803.i, !dbg !1260
  %arrayidx916.i = getelementptr inbounds i32** %132, i64 %idxprom803.i, !dbg !1331
  %arrayidx920.i = getelementptr inbounds i32** %131, i64 %idxprom803.i, !dbg !1315
  %cmp922.i = icmp eq i32 %158, %s2.1.i, !dbg !1407
  %arrayidx927.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next160.i, !dbg !1291
  %arrayidx962.i = getelementptr inbounds i32** %130, i64 %idxprom806.i, !dbg !1294
  %arrayidx983.i = getelementptr inbounds i32** %131, i64 %idxprom806.i, !dbg !1295
  %cmp1024.i = icmp ne i32 %158, %s2.1.i, !dbg !1408
  br label %for.body902.i, !dbg !1406

for.body902.i:                                    ; preds = %for.inc1145.i, %for.body902.lr.ph.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %for.inc1145.i ], [ %146, %for.body902.lr.ph.i ]
  %175 = load i32* %M, align 4, !dbg !1409, !tbaa !579
  %176 = trunc i64 %indvars.iv156.i to i32, !dbg !1409
  %cmp904.i = icmp eq i32 %176, %175, !dbg !1409
  br i1 %cmp904.i, label %if.then906.i, label %if.end939.i, !dbg !1409

if.then906.i:                                     ; preds = %for.body902.i
  %177 = load i32* %arrayidx850.i, align 4, !dbg !1260, !tbaa !579
  %178 = load i32** %arrayidx912.i, align 8, !dbg !1260, !tbaa !555
  %arrayidx913.i = getelementptr inbounds i32* %178, i64 %indvars.iv156.i, !dbg !1260
  store i32 %177, i32* %arrayidx913.i, align 4, !dbg !1260, !tbaa !579
  %179 = load i32** %arrayidx916.i, align 8, !dbg !1331, !tbaa !555
  %arrayidx917.i = getelementptr inbounds i32* %179, i64 %indvars.iv156.i, !dbg !1331
  store i32 -987654321, i32* %arrayidx917.i, align 4, !dbg !1331, !tbaa !579
  %180 = load i32** %arrayidx920.i, align 8, !dbg !1315, !tbaa !555
  %arrayidx921.i = getelementptr inbounds i32* %180, i64 %indvars.iv156.i, !dbg !1315
  store i32 -987654321, i32* %arrayidx921.i, align 4, !dbg !1315, !tbaa !579
  br i1 %cmp922.i, label %for.inc1145.i, label %if.then924.i, !dbg !1407

if.then924.i:                                     ; preds = %if.then906.i
  %181 = load i8* %arrayidx927.i, align 1, !dbg !1291, !tbaa !556
  %idxprom929.i = sext i8 %181 to i64, !dbg !1291
  %182 = load i32*** %msc.i, align 8, !dbg !1291, !tbaa !555
  %arrayidx931.i = getelementptr inbounds i32** %182, i64 %idxprom929.i, !dbg !1291
  %183 = load i32** %arrayidx931.i, align 8, !dbg !1291, !tbaa !555
  %arrayidx932.i = getelementptr inbounds i32* %183, i64 %indvars.iv156.i, !dbg !1291
  %184 = load i32* %arrayidx932.i, align 4, !dbg !1291, !tbaa !579
  %185 = load i32* %arrayidx913.i, align 4, !dbg !1291, !tbaa !579
  %add937.i = add nsw i32 %185, %184, !dbg !1291
  store i32 %add937.i, i32* %arrayidx913.i, align 4, !dbg !1291, !tbaa !579
  br label %for.inc1145.i, !dbg !1291

if.end939.i:                                      ; preds = %for.body902.i
  %186 = load i32** %arrayidx912.i, align 8, !dbg !1292, !tbaa !555
  %arrayidx943.i = getelementptr inbounds i32* %186, i64 %indvars.iv156.i, !dbg !1292
  store i32 -987654321, i32* %arrayidx943.i, align 4, !dbg !1292, !tbaa !579
  %187 = load i32* %arrayidx850.i, align 4, !dbg !1264, !tbaa !579
  %188 = load i32** %esc.i, align 8, !dbg !1264, !tbaa !555
  %arrayidx949.i = getelementptr inbounds i32* %188, i64 %indvars.iv156.i, !dbg !1264
  %189 = load i32* %arrayidx949.i, align 4, !dbg !1264, !tbaa !579
  %add950.i = add nsw i32 %189, %187, !dbg !1264
  call void @llvm.dbg.value(metadata !{i32 %add950.i}, i64 0, metadata !1344) #8, !dbg !1264
  %cmp951.i = icmp sgt i32 %add950.i, -987654321, !dbg !1264
  %add950..i = select i1 %cmp951.i, i32 %add950.i, i32 -987654321, !dbg !1264
  store i32 %add950..i, i32* %arrayidx943.i, align 4, !dbg !1293, !tbaa !579
  %190 = add nsw i64 %indvars.iv156.i, 1, !dbg !1294
  %191 = load i32** %arrayidx962.i, align 8, !dbg !1294, !tbaa !555
  %arrayidx963.i = getelementptr inbounds i32* %191, i64 %190, !dbg !1294
  %192 = load i32* %arrayidx963.i, align 4, !dbg !1294, !tbaa !579
  %193 = load i32*** %tsc.i, align 8, !dbg !1294, !tbaa !555
  %194 = load i32** %193, align 8, !dbg !1294, !tbaa !555
  %arrayidx967.i = getelementptr inbounds i32* %194, i64 %indvars.iv156.i, !dbg !1294
  %195 = load i32* %arrayidx967.i, align 4, !dbg !1294, !tbaa !579
  %add968.i = add nsw i32 %195, %192, !dbg !1294
  call void @llvm.dbg.value(metadata !{i32 %add968.i}, i64 0, metadata !1344) #8, !dbg !1294
  %cmp973.i = icmp sgt i32 %add968.i, %add950..i, !dbg !1294
  br i1 %cmp973.i, label %if.then975.i, label %if.end980.i, !dbg !1294

if.then975.i:                                     ; preds = %if.end939.i
  store i32 %add968.i, i32* %arrayidx943.i, align 4, !dbg !1410, !tbaa !579
  br label %if.end980.i, !dbg !1410

if.end980.i:                                      ; preds = %if.end939.i, %if.then975.i
  %196 = phi i32 [ %add968.i, %if.then975.i ], [ %add950..i, %if.end939.i ]
  %197 = load i32** %arrayidx983.i, align 8, !dbg !1295, !tbaa !555
  %arrayidx984.i = getelementptr inbounds i32* %197, i64 %indvars.iv156.i, !dbg !1295
  %198 = load i32* %arrayidx984.i, align 4, !dbg !1295, !tbaa !579
  %arrayidx987.i = getelementptr inbounds i32** %193, i64 1, !dbg !1295
  %199 = load i32** %arrayidx987.i, align 8, !dbg !1295, !tbaa !555
  %arrayidx988.i = getelementptr inbounds i32* %199, i64 %indvars.iv156.i, !dbg !1295
  %200 = load i32* %arrayidx988.i, align 4, !dbg !1295, !tbaa !579
  %add989.i = add nsw i32 %200, %198, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32 %add989.i}, i64 0, metadata !1344) #8, !dbg !1295
  %cmp994.i = icmp sgt i32 %add989.i, %196, !dbg !1295
  br i1 %cmp994.i, label %if.then996.i, label %if.end1001.i, !dbg !1295

if.then996.i:                                     ; preds = %if.end980.i
  store i32 %add989.i, i32* %arrayidx943.i, align 4, !dbg !1411, !tbaa !579
  br label %if.end1001.i, !dbg !1411

if.end1001.i:                                     ; preds = %if.end980.i, %if.then996.i
  %201 = phi i32 [ %add989.i, %if.then996.i ], [ %196, %if.end980.i ]
  %202 = load i32** %arrayidx916.i, align 8, !dbg !1296, !tbaa !555
  %arrayidx1006.i = getelementptr inbounds i32* %202, i64 %190, !dbg !1296
  %203 = load i32* %arrayidx1006.i, align 4, !dbg !1296, !tbaa !579
  %arrayidx1009.i = getelementptr inbounds i32** %193, i64 2, !dbg !1296
  %204 = load i32** %arrayidx1009.i, align 8, !dbg !1296, !tbaa !555
  %arrayidx1010.i = getelementptr inbounds i32* %204, i64 %indvars.iv156.i, !dbg !1296
  %205 = load i32* %arrayidx1010.i, align 4, !dbg !1296, !tbaa !579
  %add1011.i = add nsw i32 %205, %203, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32 %add1011.i}, i64 0, metadata !1344) #8, !dbg !1296
  %cmp1016.i = icmp sgt i32 %add1011.i, %201, !dbg !1296
  br i1 %cmp1016.i, label %if.then1018.i, label %if.end1023.i, !dbg !1296

if.then1018.i:                                    ; preds = %if.end1001.i
  store i32 %add1011.i, i32* %arrayidx943.i, align 4, !dbg !1412, !tbaa !579
  br label %if.end1023.i, !dbg !1412

if.end1023.i:                                     ; preds = %if.then1018.i, %if.end1001.i
  %206 = phi i32 [ %add1011.i, %if.then1018.i ], [ %201, %if.end1001.i ]
  br i1 %cmp1024.i, label %if.then1026.i, label %if.end1040.i, !dbg !1408

if.then1026.i:                                    ; preds = %if.end1023.i
  %207 = load i8* %arrayidx927.i, align 1, !dbg !1297, !tbaa !556
  %idxprom1031.i = sext i8 %207 to i64, !dbg !1297
  %208 = load i32*** %msc.i, align 8, !dbg !1297, !tbaa !555
  %arrayidx1033.i = getelementptr inbounds i32** %208, i64 %idxprom1031.i, !dbg !1297
  %209 = load i32** %arrayidx1033.i, align 8, !dbg !1297, !tbaa !555
  %arrayidx1034.i = getelementptr inbounds i32* %209, i64 %indvars.iv156.i, !dbg !1297
  %210 = load i32* %arrayidx1034.i, align 4, !dbg !1297, !tbaa !579
  %add1039.i = add nsw i32 %210, %206, !dbg !1297
  store i32 %add1039.i, i32* %arrayidx943.i, align 4, !dbg !1297, !tbaa !579
  br label %if.end1040.i, !dbg !1297

if.end1040.i:                                     ; preds = %if.then1026.i, %if.end1023.i
  %arrayidx1044.i = getelementptr inbounds i32* %202, i64 %indvars.iv156.i, !dbg !1332
  store i32 -987654321, i32* %arrayidx1044.i, align 4, !dbg !1332, !tbaa !579
  %211 = load i32* %arrayidx963.i, align 4, !dbg !1298, !tbaa !579
  %arrayidx1052.i = getelementptr inbounds i32** %193, i64 5, !dbg !1298
  %212 = load i32** %arrayidx1052.i, align 8, !dbg !1298, !tbaa !555
  %arrayidx1053.i = getelementptr inbounds i32* %212, i64 %indvars.iv156.i, !dbg !1298
  %213 = load i32* %arrayidx1053.i, align 4, !dbg !1298, !tbaa !579
  %add1054.i = add nsw i32 %213, %211, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32 %add1054.i}, i64 0, metadata !1344) #8, !dbg !1298
  %cmp1055.i = icmp sgt i32 %add1054.i, -987654321, !dbg !1298
  br i1 %cmp1055.i, label %if.then1057.i, label %if.end1062.i, !dbg !1298

if.then1057.i:                                    ; preds = %if.end1040.i
  store i32 %add1054.i, i32* %arrayidx1044.i, align 4, !dbg !1333, !tbaa !579
  br label %if.end1062.i, !dbg !1333

if.end1062.i:                                     ; preds = %if.end1040.i, %if.then1057.i
  %214 = phi i32 [ %add1054.i, %if.then1057.i ], [ -987654321, %if.end1040.i ]
  %215 = load i32* %arrayidx1006.i, align 4, !dbg !1334, !tbaa !579
  %arrayidx1070.i = getelementptr inbounds i32** %193, i64 6, !dbg !1334
  %216 = load i32** %arrayidx1070.i, align 8, !dbg !1334, !tbaa !555
  %arrayidx1071.i = getelementptr inbounds i32* %216, i64 %indvars.iv156.i, !dbg !1334
  %217 = load i32* %arrayidx1071.i, align 4, !dbg !1334, !tbaa !579
  %add1072.i = add nsw i32 %217, %215, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %add1072.i}, i64 0, metadata !1344) #8, !dbg !1334
  %cmp1077.i = icmp sgt i32 %add1072.i, %214, !dbg !1334
  br i1 %cmp1077.i, label %if.then1079.i, label %if.end1084.i, !dbg !1334

if.then1079.i:                                    ; preds = %if.end1062.i
  store i32 %add1072.i, i32* %arrayidx1044.i, align 4, !dbg !1413, !tbaa !579
  br label %if.end1084.i, !dbg !1413

if.end1084.i:                                     ; preds = %if.end1062.i, %if.then1079.i
  %218 = load i32** %arrayidx920.i, align 8, !dbg !1316, !tbaa !555
  %arrayidx1088.i = getelementptr inbounds i32* %218, i64 %indvars.iv156.i, !dbg !1316
  store i32 -987654321, i32* %arrayidx1088.i, align 4, !dbg !1316, !tbaa !579
  %219 = load i32* %arrayidx963.i, align 4, !dbg !1299, !tbaa !579
  %arrayidx1096.i = getelementptr inbounds i32** %193, i64 3, !dbg !1299
  %220 = load i32** %arrayidx1096.i, align 8, !dbg !1299, !tbaa !555
  %arrayidx1097.i = getelementptr inbounds i32* %220, i64 %indvars.iv156.i, !dbg !1299
  %221 = load i32* %arrayidx1097.i, align 4, !dbg !1299, !tbaa !579
  %add1098.i = add nsw i32 %221, %219, !dbg !1299
  call void @llvm.dbg.value(metadata !{i32 %add1098.i}, i64 0, metadata !1344) #8, !dbg !1299
  %cmp1099.i = icmp sgt i32 %add1098.i, -987654321, !dbg !1299
  br i1 %cmp1099.i, label %if.then1101.i, label %if.end1106.i, !dbg !1299

if.then1101.i:                                    ; preds = %if.end1084.i
  store i32 %add1098.i, i32* %arrayidx1088.i, align 4, !dbg !1317, !tbaa !579
  br label %if.end1106.i, !dbg !1317

if.end1106.i:                                     ; preds = %if.then1101.i, %if.end1084.i
  %222 = phi i32 [ %add1098.i, %if.then1101.i ], [ -987654321, %if.end1084.i ]
  %223 = load i32* %arrayidx984.i, align 4, !dbg !1318, !tbaa !579
  %arrayidx1113.i = getelementptr inbounds i32** %193, i64 4, !dbg !1318
  %224 = load i32** %arrayidx1113.i, align 8, !dbg !1318, !tbaa !555
  %arrayidx1114.i = getelementptr inbounds i32* %224, i64 %indvars.iv156.i, !dbg !1318
  %225 = load i32* %arrayidx1114.i, align 4, !dbg !1318, !tbaa !579
  %add1115.i = add nsw i32 %225, %223, !dbg !1318
  call void @llvm.dbg.value(metadata !{i32 %add1115.i}, i64 0, metadata !1344) #8, !dbg !1318
  %cmp1120.i = icmp sgt i32 %add1115.i, %222, !dbg !1318
  br i1 %cmp1120.i, label %if.then1122.i, label %if.end1127.i, !dbg !1318

if.then1122.i:                                    ; preds = %if.end1106.i
  store i32 %add1115.i, i32* %arrayidx1088.i, align 4, !dbg !1414, !tbaa !579
  br label %if.end1127.i, !dbg !1414

if.end1127.i:                                     ; preds = %if.then1122.i, %if.end1106.i
  %226 = phi i32 [ %add1115.i, %if.then1122.i ], [ %222, %if.end1106.i ]
  br i1 %cmp1024.i, label %if.then1130.i, label %for.inc1145.i, !dbg !1415

if.then1130.i:                                    ; preds = %if.end1127.i
  %227 = load i8* %arrayidx927.i, align 1, !dbg !1319, !tbaa !556
  %idxprom1135.i = sext i8 %227 to i64, !dbg !1319
  %228 = load i32*** %isc.i, align 8, !dbg !1319, !tbaa !555
  %arrayidx1137.i = getelementptr inbounds i32** %228, i64 %idxprom1135.i, !dbg !1319
  %229 = load i32** %arrayidx1137.i, align 8, !dbg !1319, !tbaa !555
  %arrayidx1138.i = getelementptr inbounds i32* %229, i64 %indvars.iv156.i, !dbg !1319
  %230 = load i32* %arrayidx1138.i, align 4, !dbg !1319, !tbaa !579
  %add1143.i = add nsw i32 %230, %226, !dbg !1319
  store i32 %add1143.i, i32* %arrayidx1088.i, align 4, !dbg !1319, !tbaa !579
  br label %for.inc1145.i, !dbg !1319

for.inc1145.i:                                    ; preds = %if.then1130.i, %if.end1127.i, %if.then924.i, %if.then906.i
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, -1, !dbg !1406
  %cmp900.i = icmp sgt i32 %176, %6, !dbg !1406
  br i1 %cmp900.i, label %for.body902.i, label %for.cond795.loopexit.i, !dbg !1406

for.end1150.i:                                    ; preds = %for.cond795.loopexit.i, %for.cond795.preheader.i
  %rem1151.i = srem i32 %s2.1.i, 2, !dbg !1416
  call void @llvm.dbg.value(metadata !{i32 %rem1151.i}, i64 0, metadata !1337) #8, !dbg !1416
  call void @llvm.dbg.value(metadata !1417, i64 0, metadata !1418) #8, !dbg !1419
  %idxprom1189.pre.i = sext i32 %rem1151.i to i64, !dbg !1420
  br i1 %cmp26151.i, label %for.end1188.i, label %for.body1155.lr.ph.i, !dbg !1421

for.body1155.lr.ph.i:                             ; preds = %for.end1150.i
  %231 = load i32*** %mmx4.i.i, align 8, !dbg !1423, !tbaa !555
  %arrayidx1159.i = getelementptr inbounds i32** %231, i64 %idxprom1189.pre.i, !dbg !1423
  %232 = load i32** %arrayidx1159.i, align 8, !dbg !1423, !tbaa !555
  %233 = load i32*** %mmx4.i5.i, align 8, !dbg !1423, !tbaa !555
  %arrayidx1164.i = getelementptr inbounds i32** %233, i64 %idxprom1189.pre.i, !dbg !1423
  %234 = load i32** %arrayidx1164.i, align 8, !dbg !1423, !tbaa !555
  %235 = load i32*** %imx8.i.i, align 8, !dbg !1425, !tbaa !555
  %arrayidx1174.i = getelementptr inbounds i32** %235, i64 %idxprom1189.pre.i, !dbg !1425
  %236 = load i32** %arrayidx1174.i, align 8, !dbg !1425, !tbaa !555
  %237 = load i32*** %imx8.i6.i, align 8, !dbg !1425, !tbaa !555
  %arrayidx1179.i = getelementptr inbounds i32** %237, i64 %idxprom1189.pre.i, !dbg !1425
  %238 = load i32** %arrayidx1179.i, align 8, !dbg !1425, !tbaa !555
  %239 = sext i32 %6 to i64
  br label %for.body1155.i, !dbg !1421

for.body1155.i:                                   ; preds = %for.body1155.i, %for.body1155.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body1155.i ], [ %239, %for.body1155.lr.ph.i ]
  %k2.0122.i = phi i32 [ %k2.2.i, %for.body1155.i ], [ undef, %for.body1155.lr.ph.i ]
  %max.0121.i = phi i32 [ %max.2.i, %for.body1155.i ], [ -987654321, %for.body1155.lr.ph.i ]
  %t2.0119.i = phi i8 [ %t2.2.i, %for.body1155.i ], [ undef, %for.body1155.lr.ph.i ]
  %arrayidx1160.i = getelementptr inbounds i32* %232, i64 %indvars.iv.i, !dbg !1423
  %240 = load i32* %arrayidx1160.i, align 4, !dbg !1423, !tbaa !579
  %arrayidx1165.i = getelementptr inbounds i32* %234, i64 %indvars.iv.i, !dbg !1423
  %241 = load i32* %arrayidx1165.i, align 4, !dbg !1423, !tbaa !579
  %add1166.i = add nsw i32 %241, %240, !dbg !1423
  call void @llvm.dbg.value(metadata !{i32 %add1166.i}, i64 0, metadata !1344) #8, !dbg !1423
  %cmp1167.i = icmp sgt i32 %add1166.i, %max.0121.i, !dbg !1423
  call void @llvm.dbg.value(metadata !1426, i64 0, metadata !1427) #8, !dbg !1428
  call void @llvm.dbg.value(metadata !1430, i64 0, metadata !1431) #8, !dbg !1428
  call void @llvm.dbg.value(metadata !{i32 %add1166.i}, i64 0, metadata !1418) #8, !dbg !1428
  %.t2.0.i = select i1 %cmp1167.i, i8 1, i8 %t2.0119.i, !dbg !1423
  %add1166.max.0.i = select i1 %cmp1167.i, i32 %add1166.i, i32 %max.0121.i, !dbg !1423
  %242 = trunc i64 %indvars.iv.i to i32, !dbg !1423
  %k.8.k2.0.i = select i1 %cmp1167.i, i32 %242, i32 %k2.0122.i, !dbg !1423
  %arrayidx1175.i = getelementptr inbounds i32* %236, i64 %indvars.iv.i, !dbg !1425
  %243 = load i32* %arrayidx1175.i, align 4, !dbg !1425, !tbaa !579
  %arrayidx1180.i = getelementptr inbounds i32* %238, i64 %indvars.iv.i, !dbg !1425
  %244 = load i32* %arrayidx1180.i, align 4, !dbg !1425, !tbaa !579
  %add1181.i = add nsw i32 %244, %243, !dbg !1425
  call void @llvm.dbg.value(metadata !{i32 %add1181.i}, i64 0, metadata !1344) #8, !dbg !1425
  %cmp1182.i = icmp sgt i32 %add1181.i, %add1166.max.0.i, !dbg !1425
  call void @llvm.dbg.value(metadata !1426, i64 0, metadata !1427) #8, !dbg !1432
  call void @llvm.dbg.value(metadata !1434, i64 0, metadata !1431) #8, !dbg !1432
  call void @llvm.dbg.value(metadata !{i32 %add1181.i}, i64 0, metadata !1418) #8, !dbg !1432
  %t2.2.i = select i1 %cmp1182.i, i8 3, i8 %.t2.0.i, !dbg !1425
  %max.2.i = select i1 %cmp1182.i, i32 %add1181.i, i32 %add1166.max.0.i, !dbg !1425
  %k2.2.i = select i1 %cmp1182.i, i32 %242, i32 %k.8.k2.0.i, !dbg !1425
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1421
  %cmp1153.i = icmp slt i32 %242, %9, !dbg !1421
  br i1 %cmp1153.i, label %for.body1155.i, label %for.end1188.i, !dbg !1421

for.end1188.i:                                    ; preds = %for.body1155.i, %for.end1150.i
  %k2.0.lcssa.i = phi i32 [ undef, %for.end1150.i ], [ %k2.2.i, %for.body1155.i ]
  %max.0.lcssa.i = phi i32 [ -987654321, %for.end1150.i ], [ %max.2.i, %for.body1155.i ]
  %t2.0.lcssa.i = phi i8 [ undef, %for.end1150.i ], [ %t2.2.i, %for.body1155.i ]
  %245 = load i32*** %xmx1.i.i, align 8, !dbg !1420, !tbaa !555
  %arrayidx1191.i = getelementptr inbounds i32** %245, i64 %idxprom1189.pre.i, !dbg !1420
  %246 = load i32** %arrayidx1191.i, align 8, !dbg !1420, !tbaa !555
  %arrayidx1192.i = getelementptr inbounds i32* %246, i64 4, !dbg !1420
  %247 = load i32* %arrayidx1192.i, align 4, !dbg !1420, !tbaa !579
  %248 = load i32*** %xmx1.i4.i, align 8, !dbg !1420, !tbaa !555
  %arrayidx1195.i = getelementptr inbounds i32** %248, i64 %idxprom1189.pre.i, !dbg !1420
  %249 = load i32** %arrayidx1195.i, align 8, !dbg !1420, !tbaa !555
  %arrayidx1196.i = getelementptr inbounds i32* %249, i64 4, !dbg !1420
  %250 = load i32* %arrayidx1196.i, align 4, !dbg !1420, !tbaa !579
  %add1197.i = add nsw i32 %250, %247, !dbg !1420
  call void @llvm.dbg.value(metadata !{i32 %add1197.i}, i64 0, metadata !1344) #8, !dbg !1420
  %cmp1198.i = icmp sgt i32 %add1197.i, %max.0.lcssa.i, !dbg !1420
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !1427) #8, !dbg !1435
  call void @llvm.dbg.value(metadata !1437, i64 0, metadata !1431) #8, !dbg !1435
  call void @llvm.dbg.value(metadata !{i32 %add1197.i}, i64 0, metadata !1418) #8, !dbg !1435
  %.t2.02.i = select i1 %cmp1198.i, i8 5, i8 %t2.0.lcssa.i, !dbg !1420
  %add1197.max.0.i = select i1 %cmp1198.i, i32 %add1197.i, i32 %max.0.lcssa.i, !dbg !1420
  %.k2.0.i = select i1 %cmp1198.i, i32 1, i32 %k2.0.lcssa.i, !dbg !1420
  %arrayidx1205.i = getelementptr inbounds i32* %246, i64 2, !dbg !1438
  %251 = load i32* %arrayidx1205.i, align 4, !dbg !1438, !tbaa !579
  %arrayidx1209.i = getelementptr inbounds i32* %249, i64 2, !dbg !1438
  %252 = load i32* %arrayidx1209.i, align 4, !dbg !1438, !tbaa !579
  %add1210.i = add nsw i32 %252, %251, !dbg !1438
  call void @llvm.dbg.value(metadata !{i32 %add1210.i}, i64 0, metadata !1344) #8, !dbg !1438
  %cmp1211.i = icmp sgt i32 %add1210.i, %add1197.max.0.i, !dbg !1438
  br i1 %cmp1211.i, label %if.then1213.i, label %get_wee_midpt.exit, !dbg !1438

if.then1213.i:                                    ; preds = %for.end1188.i
  %253 = load i32* %M, align 4, !dbg !1439, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %253}, i64 0, metadata !1427) #8, !dbg !1439
  call void @llvm.dbg.value(metadata !1441, i64 0, metadata !1431) #8, !dbg !1439
  call void @llvm.dbg.value(metadata !{i32 %add1210.i}, i64 0, metadata !1418) #8, !dbg !1439
  br label %get_wee_midpt.exit, !dbg !1439

get_wee_midpt.exit:                               ; preds = %for.end1188.i, %if.then1213.i
  %t2.4.i = phi i8 [ 8, %if.then1213.i ], [ %.t2.02.i, %for.end1188.i ]
  %max.4.i = phi i32 [ %add1210.i, %if.then1213.i ], [ %add1197.max.0.i, %for.end1188.i ]
  %k2.4.i = phi i32 [ %253, %if.then1213.i ], [ %.k2.0.i, %for.end1188.i ]
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i.i) #6, !dbg !1442
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i3.i) #6, !dbg !1443
  call void @llvm.dbg.value(metadata !{i32 %k2.4.i}, i64 0, metadata !298), !dbg !1444
  call void @llvm.dbg.value(metadata !{i32 %k2.4.i}, i64 0, metadata !298), !dbg !1445
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1446
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1447
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1448
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1449
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1450
  call void @llvm.dbg.value(metadata !{i8 %t2.4.i}, i64 0, metadata !301), !dbg !1451
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1452
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1445
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1447
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1448
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1453
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1449
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1455
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1460
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1462
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1465
  call void @llvm.dbg.value(metadata !{i32 %s2.1.i}, i64 0, metadata !304), !dbg !1462
  %call1216.i = call float @Scorify(i32 %max.4.i) #6, !dbg !1467
  call void @llvm.dbg.value(metadata !{float %call1216.i}, i64 0, metadata !306), !dbg !1175
  %idxprom35 = sext i32 %s2.1.i to i64, !dbg !1445
  %arrayidx36 = getelementptr inbounds i32* %0, i64 %idxprom35, !dbg !1445
  store i32 %k2.4.i, i32* %arrayidx36, align 4, !dbg !1445, !tbaa !579
  %arrayidx38 = getelementptr inbounds i8* %call4, i64 %idxprom35, !dbg !1447
  store i8 %t2.4.i, i8* %arrayidx38, align 1, !dbg !1447, !tbaa !556
  %or.cond = and i1 %cmp2.i, %cmp9.i, !dbg !1468
  call void @llvm.dbg.value(metadata !{float %call1216.i}, i64 0, metadata !307), !dbg !1468
  %ret_sc.1 = select i1 %or.cond, float %call1216.i, float %ret_sc.0703, !dbg !1468
  %cmp46 = icmp eq i8 %t2.4.i, 5, !dbg !1448
  br i1 %cmp46, label %land.lhs.true67, label %land.lhs.true48, !dbg !1448

land.lhs.true48:                                  ; preds = %get_wee_midpt.exit
  %sub = sub nsw i32 %s2.1.i, %5, !dbg !1448
  %cmp49 = icmp sgt i32 %sub, 1, !dbg !1448
  br i1 %cmp49, label %if.then58, label %lor.lhs.false, !dbg !1448

lor.lhs.false:                                    ; preds = %land.lhs.true48
  %cmp52.not = icmp ne i32 %sub, 1, !dbg !1448
  %cmp40.not = xor i1 %cmp2.i, true, !dbg !1448
  %brmerge = or i1 %cmp52.not, %cmp40.not, !dbg !1448
  br i1 %brmerge, label %if.end63, label %if.then58, !dbg !1448

if.then58:                                        ; preds = %lor.lhs.false, %land.lhs.true48
  call void @llvm.dbg.value(metadata !{i32 %lpos.0702}, i64 0, metadata !296), !dbg !1469
  store i32 %5, i32* %arrayidx23, align 4, !dbg !1470, !tbaa !579
  store i32 %s2.1.i, i32* %arrayidx29, align 4, !dbg !1453, !tbaa !579
  br label %if.end63, !dbg !1471

if.end63:                                         ; preds = %lor.lhs.false, %if.then58
  %lpos.1 = phi i32 [ %lpos.0702, %if.then58 ], [ %dec, %lor.lhs.false ]
  %cmp65 = icmp eq i8 %t2.4.i, 8, !dbg !1449
  br i1 %cmp65, label %if.end85, label %land.lhs.true67, !dbg !1449

land.lhs.true67:                                  ; preds = %get_wee_midpt.exit, %if.end63
  %lpos.1666 = phi i32 [ %lpos.1, %if.end63 ], [ %dec, %get_wee_midpt.exit ]
  %sub68 = sub nsw i32 %8, %s2.1.i, !dbg !1449
  %cmp69 = icmp sgt i32 %sub68, 1, !dbg !1449
  %cmp73 = icmp eq i32 %sub68, 1, !dbg !1449
  %or.cond646 = and i1 %cmp73, %cmp9.i, !dbg !1449
  %or.cond669 = or i1 %cmp69, %or.cond646, !dbg !1449
  br i1 %or.cond669, label %if.then79, label %if.end85, !dbg !1449

if.then79:                                        ; preds = %land.lhs.true67
  %inc80 = add nsw i32 %lpos.1666, 1, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !296), !dbg !1472
  %idxprom81 = sext i32 %inc80 to i64, !dbg !1455
  %arrayidx82 = getelementptr inbounds i32* %2, i64 %idxprom81, !dbg !1455
  store i32 %s2.1.i, i32* %arrayidx82, align 4, !dbg !1455, !tbaa !579
  %arrayidx84 = getelementptr inbounds i32* %1, i64 %idxprom81, !dbg !1473
  store i32 %8, i32* %arrayidx84, align 4, !dbg !1473, !tbaa !579
  br label %if.end85, !dbg !1474

if.end85:                                         ; preds = %land.lhs.true67, %if.end63, %if.then79
  %cmp65668 = phi i1 [ true, %if.then79 ], [ false, %if.end63 ], [ true, %land.lhs.true67 ]
  %lpos.2 = phi i32 [ %inc80, %if.then79 ], [ %lpos.1, %if.end63 ], [ %lpos.1666, %land.lhs.true67 ]
  %cmp46.not = xor i1 %cmp46, true, !dbg !1450
  %cmp90697 = icmp slt i32 %s2.1.i, %5, !dbg !1457
  %or.cond737 = or i1 %cmp90697, %cmp46.not, !dbg !1450
  br i1 %or.cond737, label %if.end97, label %for.body.lr.ph, !dbg !1450

for.body.lr.ph:                                   ; preds = %if.end85
  %254 = xor i32 %s2.1.i, -1, !dbg !1457
  %255 = xor i32 %5, -1, !dbg !1457
  %256 = icmp sgt i32 %254, %255, !dbg !1457
  %smax = select i1 %256, i32 %254, i32 %255, !dbg !1457
  br label %for.body, !dbg !1457

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %for.body ], [ %idxprom35, %for.body.lr.ph ]
  %arrayidx93 = getelementptr inbounds i32* %0, i64 %indvars.iv724, !dbg !1475
  store i32 1, i32* %arrayidx93, align 4, !dbg !1475, !tbaa !579
  %arrayidx95 = getelementptr inbounds i8* %call4, i64 %indvars.iv724, !dbg !1460
  store i8 5, i8* %arrayidx95, align 1, !dbg !1460, !tbaa !556
  %indvars.iv.next725 = add i64 %indvars.iv724, -1, !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1445
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1447
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1448
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1453
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1449
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1455
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1460
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1462
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1465
  call void @llvm.dbg.value(metadata !{i32 %258}, i64 0, metadata !304), !dbg !1462
  %257 = trunc i64 %indvars.iv724 to i32, !dbg !1457
  %cmp90 = icmp sgt i32 %257, %5, !dbg !1457
  br i1 %cmp90, label %for.body, label %for.cond.if.end97.loopexit_crit_edge, !dbg !1457

for.cond.if.end97.loopexit_crit_edge:             ; preds = %for.body
  %258 = sub i32 -2, %smax, !dbg !1457
  br label %if.end97, !dbg !1457

if.end97:                                         ; preds = %if.end85, %for.cond.if.end97.loopexit_crit_edge
  %s2.1.i663 = phi i32 [ %s2.1.i, %if.end85 ], [ %258, %for.cond.if.end97.loopexit_crit_edge ]
  %cmp103700 = icmp sgt i32 %s2.1.i663, %8, !dbg !1462
  %or.cond738 = or i1 %cmp65668, %cmp103700, !dbg !1451
  br i1 %or.cond738, label %while.cond.backedge, label %for.body105.lr.ph, !dbg !1451

while.cond.backedge:                              ; preds = %if.end97, %for.body105
  %cmp = icmp sgt i32 %lpos.2, -1, !dbg !1190
  br i1 %cmp, label %while.body, label %while.end, !dbg !1190

for.body105.lr.ph:                                ; preds = %if.end97
  %259 = sext i32 %s2.1.i663 to i64
  br label %for.body105, !dbg !1462

for.body105:                                      ; preds = %for.body105, %for.body105.lr.ph
  %indvars.iv726 = phi i64 [ %indvars.iv.next727, %for.body105 ], [ %259, %for.body105.lr.ph ]
  %260 = load i32* %M, align 4, !dbg !1476, !tbaa !579
  %arrayidx108 = getelementptr inbounds i32* %0, i64 %indvars.iv726, !dbg !1476
  store i32 %260, i32* %arrayidx108, align 4, !dbg !1476, !tbaa !579
  %arrayidx110 = getelementptr inbounds i8* %call4, i64 %indvars.iv726, !dbg !1465
  store i8 8, i8* %arrayidx110, align 1, !dbg !1465, !tbaa !556
  %indvars.iv.next727 = add i64 %indvars.iv726, 1, !dbg !1462
  %261 = trunc i64 %indvars.iv726 to i32, !dbg !1462
  %cmp103 = icmp slt i32 %261, %8, !dbg !1462
  br i1 %cmp103, label %for.body105, label %while.cond.backedge, !dbg !1462

while.end:                                        ; preds = %while.cond.backedge
  %add115 = add nsw i32 %L, 6, !dbg !1477
  call void @llvm.dbg.value(metadata !{i32 %add115}, i64 0, metadata !308), !dbg !1477
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !309), !dbg !1478
  %cmp117690 = icmp sgt i32 %L, 1, !dbg !1478
  br i1 %cmp117690, label %for.body119, label %for.end182, !dbg !1478

for.body119:                                      ; preds = %while.end, %for.inc180
  %indvars.iv715 = phi i64 [ %indvars.iv.next716.pre-phi, %for.inc180 ], [ 1, %while.end ]
  %tlen.0691 = phi i32 [ %tlen.3, %for.inc180 ], [ %add115, %while.end ]
  %arrayidx121 = getelementptr inbounds i8* %call4, i64 %indvars.iv715, !dbg !1480
  %262 = load i8* %arrayidx121, align 1, !dbg !1480, !tbaa !556
  %cmp123 = icmp eq i8 %262, 1, !dbg !1480
  br i1 %cmp123, label %land.lhs.true125, label %if.end141, !dbg !1480

land.lhs.true125:                                 ; preds = %for.body119
  %263 = add nsw i64 %indvars.iv715, 1, !dbg !1480
  %arrayidx128 = getelementptr inbounds i8* %call4, i64 %263, !dbg !1480
  %264 = load i8* %arrayidx128, align 1, !dbg !1480, !tbaa !556
  %cmp130 = icmp eq i8 %264, 1, !dbg !1480
  br i1 %cmp130, label %if.then132, label %land.lhs.true166, !dbg !1480

if.then132:                                       ; preds = %land.lhs.true125
  %arrayidx135 = getelementptr inbounds i32* %0, i64 %263, !dbg !1482
  %265 = load i32* %arrayidx135, align 4, !dbg !1482, !tbaa !579
  %arrayidx137 = getelementptr inbounds i32* %0, i64 %indvars.iv715, !dbg !1482
  %266 = load i32* %arrayidx137, align 4, !dbg !1482, !tbaa !579
  %sub138 = add i32 %tlen.0691, -1, !dbg !1482
  %sub139 = add i32 %sub138, %265, !dbg !1482
  %add140 = sub i32 %sub139, %266, !dbg !1482
  call void @llvm.dbg.value(metadata !{i32 %add140}, i64 0, metadata !308), !dbg !1482
  br label %if.end141, !dbg !1482

if.end141:                                        ; preds = %if.then132, %for.body119
  %tlen.1 = phi i32 [ %tlen.0691, %for.body119 ], [ %add140, %if.then132 ]
  %cmp145 = icmp eq i8 %262, 5, !dbg !1483
  br i1 %cmp145, label %land.lhs.true147, label %if.end160, !dbg !1483

land.lhs.true147:                                 ; preds = %if.end141
  %267 = add nsw i64 %indvars.iv715, 1, !dbg !1483
  %arrayidx150 = getelementptr inbounds i8* %call4, i64 %267, !dbg !1483
  %268 = load i8* %arrayidx150, align 1, !dbg !1483, !tbaa !556
  %cmp152 = icmp eq i8 %268, 1, !dbg !1483
  br i1 %cmp152, label %if.then154, label %if.end160, !dbg !1483

if.then154:                                       ; preds = %land.lhs.true147
  %arrayidx157 = getelementptr inbounds i32* %0, i64 %267, !dbg !1484
  %269 = load i32* %arrayidx157, align 4, !dbg !1484, !tbaa !579
  %sub158 = add i32 %tlen.1, -1, !dbg !1484
  %add159 = add i32 %sub158, %269, !dbg !1484
  call void @llvm.dbg.value(metadata !{i32 %add159}, i64 0, metadata !308), !dbg !1484
  br label %if.end160, !dbg !1484

if.end160:                                        ; preds = %if.then154, %land.lhs.true147, %if.end141
  %tlen.2 = phi i32 [ %add159, %if.then154 ], [ %tlen.1, %land.lhs.true147 ], [ %tlen.1, %if.end141 ]
  br i1 %cmp123, label %land.lhs.true166, label %if.end160.for.inc180_crit_edge, !dbg !1485

if.end160.for.inc180_crit_edge:                   ; preds = %if.end160
  %indvars.iv.next716.pre = add i64 %indvars.iv715, 1, !dbg !1478
  br label %for.inc180, !dbg !1485

land.lhs.true166:                                 ; preds = %land.lhs.true125, %if.end160
  %tlen.2735 = phi i32 [ %tlen.2, %if.end160 ], [ %tlen.0691, %land.lhs.true125 ]
  %270 = add nsw i64 %indvars.iv715, 1, !dbg !1485
  %arrayidx169 = getelementptr inbounds i8* %call4, i64 %270, !dbg !1485
  %271 = load i8* %arrayidx169, align 1, !dbg !1485, !tbaa !556
  %cmp171 = icmp eq i8 %271, 8, !dbg !1485
  br i1 %cmp171, label %if.then173, label %for.inc180, !dbg !1485

if.then173:                                       ; preds = %land.lhs.true166
  %272 = load i32* %M, align 4, !dbg !1486, !tbaa !579
  %arrayidx176 = getelementptr inbounds i32* %0, i64 %indvars.iv715, !dbg !1486
  %273 = load i32* %arrayidx176, align 4, !dbg !1486, !tbaa !579
  %sub177 = add i32 %272, %tlen.2735, !dbg !1486
  %add178 = sub i32 %sub177, %273, !dbg !1486
  call void @llvm.dbg.value(metadata !{i32 %add178}, i64 0, metadata !308), !dbg !1486
  br label %for.inc180, !dbg !1486

for.inc180:                                       ; preds = %if.end160.for.inc180_crit_edge, %land.lhs.true166, %if.then173
  %indvars.iv.next716.pre-phi = phi i64 [ %indvars.iv.next716.pre, %if.end160.for.inc180_crit_edge ], [ %270, %land.lhs.true166 ], [ %270, %if.then173 ], !dbg !1478
  %tlen.3 = phi i32 [ %tlen.2, %if.end160.for.inc180_crit_edge ], [ %tlen.2735, %land.lhs.true166 ], [ %add178, %if.then173 ]
  %lftr.wideiv720 = trunc i64 %indvars.iv.next716.pre-phi to i32, !dbg !1478
  %exitcond721 = icmp eq i32 %lftr.wideiv720, %L, !dbg !1478
  br i1 %exitcond721, label %for.end182, label %for.body119, !dbg !1478

for.end182:                                       ; preds = %for.inc180, %while.end
  %tlen.0.lcssa = phi i32 [ %add115, %while.end ], [ %tlen.3, %for.inc180 ]
  %274 = load i8* %arrayidx18, align 1, !dbg !1487, !tbaa !556
  %cmp185 = icmp eq i8 %274, 1, !dbg !1487
  br i1 %cmp185, label %if.then187, label %if.end191, !dbg !1487

if.then187:                                       ; preds = %for.end182
  %275 = load i32* %3, align 4, !dbg !1487, !tbaa !579
  %sub189 = add i32 %tlen.0.lcssa, -1, !dbg !1487
  %add190 = add i32 %sub189, %275, !dbg !1487
  call void @llvm.dbg.value(metadata !{i32 %add190}, i64 0, metadata !308), !dbg !1487
  br label %if.end191, !dbg !1487

if.end191:                                        ; preds = %if.then187, %for.end182
  %tlen.4 = phi i32 [ %add190, %if.then187 ], [ %tlen.0.lcssa, %for.end182 ]
  %276 = load i8* %arrayidx20, align 1, !dbg !1488, !tbaa !556
  %cmp195 = icmp eq i8 %276, 1, !dbg !1488
  br i1 %cmp195, label %if.then197, label %if.end203, !dbg !1488

if.then197:                                       ; preds = %if.end191
  %277 = load i32* %M, align 4, !dbg !1488, !tbaa !579
  %278 = load i32* %arrayidx17, align 4, !dbg !1488, !tbaa !579
  %sub201 = add i32 %277, %tlen.4, !dbg !1488
  %add202 = sub i32 %sub201, %278, !dbg !1488
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !308), !dbg !1488
  br label %if.end203, !dbg !1488

if.end203:                                        ; preds = %if.then197, %if.end191
  %tlen.5 = phi i32 [ %add202, %if.then197 ], [ %tlen.4, %if.end191 ]
  call void @P7AllocTrace(i32 %tlen.5, %struct.p7trace_s** %tr) #6, !dbg !1489
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1490
  %279 = load %struct.p7trace_s** %tr, align 8, !dbg !1490, !tbaa !555
  %statetype = getelementptr inbounds %struct.p7trace_s* %279, i64 0, i32 1, !dbg !1490
  %280 = load i8** %statetype, align 8, !dbg !1490, !tbaa !555
  store i8 4, i8* %280, align 1, !dbg !1490, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1491
  %281 = load %struct.p7trace_s** %tr, align 8, !dbg !1491, !tbaa !555
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %281, i64 0, i32 2, !dbg !1491
  %282 = load i32** %nodeidx, align 8, !dbg !1491, !tbaa !555
  store i32 0, i32* %282, align 4, !dbg !1491, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1492
  %pos = getelementptr inbounds %struct.p7trace_s* %281, i64 0, i32 3, !dbg !1492
  %283 = load i32** %pos, align 8, !dbg !1492, !tbaa !555
  store i32 0, i32* %283, align 4, !dbg !1492, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1493
  %statetype207 = getelementptr inbounds %struct.p7trace_s* %281, i64 0, i32 1, !dbg !1493
  %284 = load i8** %statetype207, align 8, !dbg !1493, !tbaa !555
  %arrayidx208 = getelementptr inbounds i8* %284, i64 1, !dbg !1493
  store i8 5, i8* %arrayidx208, align 1, !dbg !1493, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1494
  %285 = load %struct.p7trace_s** %tr, align 8, !dbg !1494, !tbaa !555
  %nodeidx209 = getelementptr inbounds %struct.p7trace_s* %285, i64 0, i32 2, !dbg !1494
  %286 = load i32** %nodeidx209, align 8, !dbg !1494, !tbaa !555
  %arrayidx210 = getelementptr inbounds i32* %286, i64 1, !dbg !1494
  store i32 0, i32* %arrayidx210, align 4, !dbg !1494, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1495
  %pos211 = getelementptr inbounds %struct.p7trace_s* %285, i64 0, i32 3, !dbg !1495
  %287 = load i32** %pos211, align 8, !dbg !1495, !tbaa !555
  %arrayidx212 = getelementptr inbounds i32* %287, i64 1, !dbg !1495
  store i32 0, i32* %arrayidx212, align 4, !dbg !1495, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !311), !dbg !1496
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !309), !dbg !1497
  %cmp214685 = icmp slt i32 %L, 1, !dbg !1497
  br i1 %cmp214685, label %for.end439, label %for.body216.lr.ph, !dbg !1497

for.body216.lr.ph:                                ; preds = %if.end203
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !1499
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !1499
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !1503
  br label %for.body216, !dbg !1497

for.body216:                                      ; preds = %for.inc437, %for.body216.lr.ph
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %for.inc437 ], [ 1, %for.body216.lr.ph ]
  %tpos.0688 = phi i32 [ %tpos.7, %for.inc437 ], [ 2, %for.body216.lr.ph ]
  %arrayidx218 = getelementptr inbounds i8* %call4, i64 %indvars.iv710, !dbg !1505
  %288 = load i8* %arrayidx218, align 1, !dbg !1505, !tbaa !556
  %conv219 = sext i8 %288 to i32, !dbg !1505
  switch i32 %conv219, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb399
    i32 5, label %sw.bb412
    i32 8, label %sw.bb423
  ], !dbg !1505

sw.bb:                                            ; preds = %for.body216
  %sub220 = add nsw i32 %tpos.0688, -1, !dbg !1506
  %idxprom221 = sext i32 %sub220 to i64, !dbg !1506
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1506
  %289 = load %struct.p7trace_s** %tr, align 8, !dbg !1506, !tbaa !555
  %statetype222 = getelementptr inbounds %struct.p7trace_s* %289, i64 0, i32 1, !dbg !1506
  %290 = load i8** %statetype222, align 8, !dbg !1506, !tbaa !555
  %arrayidx223 = getelementptr inbounds i8* %290, i64 %idxprom221, !dbg !1506
  %291 = load i8* %arrayidx223, align 1, !dbg !1506, !tbaa !556
  %cmp225 = icmp eq i8 %291, 5, !dbg !1506
  br i1 %cmp225, label %if.then227, label %sw.bb.if.end273_crit_edge, !dbg !1506

sw.bb.if.end273_crit_edge:                        ; preds = %sw.bb
  %arrayidx278.pre = getelementptr inbounds i32* %0, i64 %indvars.iv710, !dbg !1507
  br label %if.end273, !dbg !1506

if.then227:                                       ; preds = %sw.bb
  %idxprom228 = sext i32 %tpos.0688 to i64, !dbg !1508
  %arrayidx230 = getelementptr inbounds i8* %290, i64 %idxprom228, !dbg !1508
  store i8 6, i8* %arrayidx230, align 1, !dbg !1508, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1509
  %292 = load %struct.p7trace_s** %tr, align 8, !dbg !1509, !tbaa !555
  %nodeidx232 = getelementptr inbounds %struct.p7trace_s* %292, i64 0, i32 2, !dbg !1509
  %293 = load i32** %nodeidx232, align 8, !dbg !1509, !tbaa !555
  %arrayidx233 = getelementptr inbounds i32* %293, i64 %idxprom228, !dbg !1509
  store i32 0, i32* %arrayidx233, align 4, !dbg !1509, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1510
  %pos235 = getelementptr inbounds %struct.p7trace_s* %292, i64 0, i32 3, !dbg !1510
  %294 = load i32** %pos235, align 8, !dbg !1510, !tbaa !555
  %arrayidx236 = getelementptr inbounds i32* %294, i64 %idxprom228, !dbg !1510
  store i32 0, i32* %arrayidx236, align 4, !dbg !1510, !tbaa !579
  %inc237 = add i32 %tpos.0688, 1, !dbg !1511
  call void @llvm.dbg.value(metadata !{i32 %inc237}, i64 0, metadata !311), !dbg !1511
  %arrayidx239 = getelementptr inbounds i32* %0, i64 %indvars.iv710, !dbg !1499
  %295 = load i32* %arrayidx239, align 4, !dbg !1499, !tbaa !579
  %idxprom240 = sext i32 %295 to i64, !dbg !1499
  %296 = load float** %begin, align 8, !dbg !1499, !tbaa !555
  %arrayidx241 = getelementptr inbounds float* %296, i64 %idxprom240, !dbg !1499
  %297 = load float* %arrayidx241, align 4, !dbg !1499, !tbaa !772
  %298 = load float* %p1, align 4, !dbg !1499, !tbaa !772
  %call242 = call i32 @Prob2Score(float %297, float %298) #6, !dbg !1499
  %conv243 = sitofp i32 %call242 to double, !dbg !1499
  %add244 = fadd double %conv243, 1.000000e+03, !dbg !1499
  %299 = load i32* %arrayidx239, align 4, !dbg !1499, !tbaa !579
  %idxprom247 = sext i32 %299 to i64, !dbg !1499
  %300 = load i32** %bsc.i, align 8, !dbg !1499, !tbaa !555
  %arrayidx248 = getelementptr inbounds i32* %300, i64 %idxprom247, !dbg !1499
  %301 = load i32* %arrayidx248, align 4, !dbg !1499, !tbaa !579
  %conv249 = sitofp i32 %301 to double, !dbg !1499
  %cmp250 = fcmp ole double %add244, %conv249, !dbg !1499
  %cmp256672 = icmp sgt i32 %299, 1, !dbg !1512
  %or.cond739 = and i1 %cmp250, %cmp256672, !dbg !1499
  br i1 %or.cond739, label %for.body258.lr.ph, label %if.end273, !dbg !1499

for.body258.lr.ph:                                ; preds = %if.then227
  %302 = sext i32 %inc237 to i64
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1514
  %.pre732 = load %struct.p7trace_s** %tr, align 8, !dbg !1514, !tbaa !555
  br label %for.body258, !dbg !1512

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %303 = phi %struct.p7trace_s* [ %.pre732, %for.body258.lr.ph ], [ %305, %for.body258 ], !dbg !1514
  %indvars.iv = phi i64 [ %302, %for.body258.lr.ph ], [ %indvars.iv.next, %for.body258 ]
  %tpos.1674 = phi i32 [ %inc237, %for.body258.lr.ph ], [ %inc268, %for.body258 ]
  %k.0673 = phi i32 [ 1, %for.body258.lr.ph ], [ %inc270, %for.body258 ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1514
  %statetype260 = getelementptr inbounds %struct.p7trace_s* %303, i64 0, i32 1, !dbg !1514
  %304 = load i8** %statetype260, align 8, !dbg !1514, !tbaa !555
  %arrayidx261 = getelementptr inbounds i8* %304, i64 %indvars.iv, !dbg !1514
  store i8 2, i8* %arrayidx261, align 1, !dbg !1514, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1516
  %305 = load %struct.p7trace_s** %tr, align 8, !dbg !1516, !tbaa !555
  %nodeidx263 = getelementptr inbounds %struct.p7trace_s* %305, i64 0, i32 2, !dbg !1516
  %306 = load i32** %nodeidx263, align 8, !dbg !1516, !tbaa !555
  %arrayidx264 = getelementptr inbounds i32* %306, i64 %indvars.iv, !dbg !1516
  store i32 %k.0673, i32* %arrayidx264, align 4, !dbg !1516, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1517
  %pos266 = getelementptr inbounds %struct.p7trace_s* %305, i64 0, i32 3, !dbg !1517
  %307 = load i32** %pos266, align 8, !dbg !1517, !tbaa !555
  %arrayidx267 = getelementptr inbounds i32* %307, i64 %indvars.iv, !dbg !1517
  store i32 0, i32* %arrayidx267, align 4, !dbg !1517, !tbaa !579
  %inc268 = add nsw i32 %tpos.1674, 1, !dbg !1518
  call void @llvm.dbg.value(metadata !{i32 %inc268}, i64 0, metadata !311), !dbg !1518
  %inc270 = add nsw i32 %k.0673, 1, !dbg !1512
  call void @llvm.dbg.value(metadata !{i32 %inc270}, i64 0, metadata !310), !dbg !1512
  %308 = load i32* %arrayidx239, align 4, !dbg !1512, !tbaa !579
  %cmp256 = icmp slt i32 %inc270, %308, !dbg !1512
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1512
  br i1 %cmp256, label %for.body258, label %if.end273, !dbg !1512

if.end273:                                        ; preds = %if.then227, %for.body258, %sw.bb.if.end273_crit_edge
  %arrayidx278.pre-phi = phi i32* [ %arrayidx278.pre, %sw.bb.if.end273_crit_edge ], [ %arrayidx239, %if.then227 ], [ %arrayidx239, %for.body258 ], !dbg !1507
  %tpos.2 = phi i32 [ %tpos.0688, %sw.bb.if.end273_crit_edge ], [ %inc237, %if.then227 ], [ %inc268, %for.body258 ]
  %idxprom274 = sext i32 %tpos.2 to i64, !dbg !1519
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1519
  %309 = load %struct.p7trace_s** %tr, align 8, !dbg !1519, !tbaa !555
  %statetype275 = getelementptr inbounds %struct.p7trace_s* %309, i64 0, i32 1, !dbg !1519
  %310 = load i8** %statetype275, align 8, !dbg !1519, !tbaa !555
  %arrayidx276 = getelementptr inbounds i8* %310, i64 %idxprom274, !dbg !1519
  store i8 1, i8* %arrayidx276, align 1, !dbg !1519, !tbaa !556
  %311 = load i32* %arrayidx278.pre-phi, align 4, !dbg !1507, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1507
  %312 = load %struct.p7trace_s** %tr, align 8, !dbg !1507, !tbaa !555
  %nodeidx280 = getelementptr inbounds %struct.p7trace_s* %312, i64 0, i32 2, !dbg !1507
  %313 = load i32** %nodeidx280, align 8, !dbg !1507, !tbaa !555
  %arrayidx281 = getelementptr inbounds i32* %313, i64 %idxprom274, !dbg !1507
  store i32 %311, i32* %arrayidx281, align 4, !dbg !1507, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1520
  %pos283 = getelementptr inbounds %struct.p7trace_s* %312, i64 0, i32 3, !dbg !1520
  %314 = load i32** %pos283, align 8, !dbg !1520, !tbaa !555
  %arrayidx284 = getelementptr inbounds i32* %314, i64 %idxprom274, !dbg !1520
  %315 = trunc i64 %indvars.iv710 to i32, !dbg !1520
  store i32 %315, i32* %arrayidx284, align 4, !dbg !1520, !tbaa !579
  %inc285 = add i32 %tpos.2, 1, !dbg !1521
  call void @llvm.dbg.value(metadata !{i32 %inc285}, i64 0, metadata !311), !dbg !1521
  %cmp286 = icmp slt i32 %315, %L, !dbg !1522
  br i1 %cmp286, label %land.lhs.true288, label %if.end328, !dbg !1522

land.lhs.true288:                                 ; preds = %if.end273
  %316 = add nsw i64 %indvars.iv710, 1, !dbg !1522
  %arrayidx291 = getelementptr inbounds i8* %call4, i64 %316, !dbg !1522
  %317 = load i8* %arrayidx291, align 1, !dbg !1522, !tbaa !556
  %cmp293 = icmp eq i8 %317, 1, !dbg !1522
  br i1 %cmp293, label %land.lhs.true295, label %if.end328, !dbg !1522

land.lhs.true295:                                 ; preds = %land.lhs.true288
  %arrayidx298 = getelementptr inbounds i32* %0, i64 %316, !dbg !1522
  %318 = load i32* %arrayidx298, align 4, !dbg !1522, !tbaa !579
  %319 = load i32* %arrayidx278.pre-phi, align 4, !dbg !1522, !tbaa !579
  %sub301 = sub nsw i32 %318, %319, !dbg !1522
  %cmp302 = icmp sgt i32 %sub301, 1, !dbg !1522
  br i1 %cmp302, label %for.cond308.preheader, label %if.end328, !dbg !1522

for.cond308.preheader:                            ; preds = %land.lhs.true295
  %k.1675 = add nsw i32 %319, 1, !dbg !1523
  %cmp312676 = icmp slt i32 %k.1675, %318, !dbg !1523
  br i1 %cmp312676, label %for.body314.lr.ph, label %if.end328, !dbg !1523

for.body314.lr.ph:                                ; preds = %for.cond308.preheader
  %320 = sext i32 %inc285 to i64
  br label %for.body314, !dbg !1523

for.body314:                                      ; preds = %for.body314.lr.ph, %for.body314
  %321 = phi %struct.p7trace_s* [ %312, %for.body314.lr.ph ], [ %323, %for.body314 ], !dbg !1525
  %indvars.iv705 = phi i64 [ %320, %for.body314.lr.ph ], [ %indvars.iv.next706, %for.body314 ]
  %k.1678 = phi i32 [ %k.1675, %for.body314.lr.ph ], [ %k.1, %for.body314 ]
  %tpos.3677 = phi i32 [ %inc285, %for.body314.lr.ph ], [ %inc324, %for.body314 ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1525
  %statetype316 = getelementptr inbounds %struct.p7trace_s* %321, i64 0, i32 1, !dbg !1525
  %322 = load i8** %statetype316, align 8, !dbg !1525, !tbaa !555
  %arrayidx317 = getelementptr inbounds i8* %322, i64 %indvars.iv705, !dbg !1525
  store i8 2, i8* %arrayidx317, align 1, !dbg !1525, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1527
  %323 = load %struct.p7trace_s** %tr, align 8, !dbg !1527, !tbaa !555
  %nodeidx319 = getelementptr inbounds %struct.p7trace_s* %323, i64 0, i32 2, !dbg !1527
  %324 = load i32** %nodeidx319, align 8, !dbg !1527, !tbaa !555
  %arrayidx320 = getelementptr inbounds i32* %324, i64 %indvars.iv705, !dbg !1527
  store i32 %k.1678, i32* %arrayidx320, align 4, !dbg !1527, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1528
  %pos322 = getelementptr inbounds %struct.p7trace_s* %323, i64 0, i32 3, !dbg !1528
  %325 = load i32** %pos322, align 8, !dbg !1528, !tbaa !555
  %arrayidx323 = getelementptr inbounds i32* %325, i64 %indvars.iv705, !dbg !1528
  store i32 0, i32* %arrayidx323, align 4, !dbg !1528, !tbaa !579
  %inc324 = add nsw i32 %tpos.3677, 1, !dbg !1529
  call void @llvm.dbg.value(metadata !{i32 %inc324}, i64 0, metadata !311), !dbg !1529
  %k.1 = add nsw i32 %k.1678, 1, !dbg !1523
  %326 = load i32* %arrayidx298, align 4, !dbg !1523, !tbaa !579
  %cmp312 = icmp slt i32 %k.1, %326, !dbg !1523
  %indvars.iv.next706 = add i64 %indvars.iv705, 1, !dbg !1523
  br i1 %cmp312, label %for.body314, label %if.end328, !dbg !1523

if.end328:                                        ; preds = %for.cond308.preheader, %for.body314, %land.lhs.true295, %land.lhs.true288, %if.end273
  %tpos.4 = phi i32 [ %inc285, %land.lhs.true295 ], [ %inc285, %land.lhs.true288 ], [ %inc285, %if.end273 ], [ %inc285, %for.cond308.preheader ], [ %inc324, %for.body314 ]
  %cmp329 = icmp eq i32 %315, %L, !dbg !1530
  br i1 %cmp329, label %if.then338, label %lor.lhs.false331, !dbg !1530

lor.lhs.false331:                                 ; preds = %if.end328
  %327 = add nsw i64 %indvars.iv710, 1, !dbg !1530
  %arrayidx334 = getelementptr inbounds i8* %call4, i64 %327, !dbg !1530
  %328 = load i8* %arrayidx334, align 1, !dbg !1530, !tbaa !556
  %cmp336 = icmp eq i8 %328, 8, !dbg !1530
  br i1 %cmp336, label %if.then338, label %for.inc437, !dbg !1530

if.then338:                                       ; preds = %lor.lhs.false331, %if.end328
  %329 = add nsw i64 %indvars.iv710, -1, !dbg !1503
  %arrayidx341 = getelementptr inbounds i32* %0, i64 %329, !dbg !1503
  %330 = load i32* %arrayidx341, align 4, !dbg !1503, !tbaa !579
  %idxprom342 = sext i32 %330 to i64, !dbg !1503
  %331 = load float** %end, align 8, !dbg !1503, !tbaa !555
  %arrayidx343 = getelementptr inbounds float* %331, i64 %idxprom342, !dbg !1503
  %332 = load float* %arrayidx343, align 4, !dbg !1503, !tbaa !772
  %call344 = call i32 @Prob2Score(float %332, float 1.000000e+00) #6, !dbg !1503
  %conv345 = sitofp i32 %call344 to double, !dbg !1503
  %add346 = fadd double %conv345, 1.000000e+03, !dbg !1503
  %333 = load i32* %arrayidx341, align 4, !dbg !1503, !tbaa !579
  %idxprom350 = sext i32 %333 to i64, !dbg !1503
  %334 = load i32** %esc.i, align 8, !dbg !1503, !tbaa !555
  %arrayidx351 = getelementptr inbounds i32* %334, i64 %idxprom350, !dbg !1503
  %335 = load i32* %arrayidx351, align 4, !dbg !1503, !tbaa !579
  %conv352 = sitofp i32 %335 to double, !dbg !1503
  %cmp353 = fcmp ugt double %add346, %conv352, !dbg !1503
  br i1 %cmp353, label %if.end377, label %if.then355, !dbg !1503

if.then355:                                       ; preds = %if.then338
  %336 = load i32* %arrayidx278.pre-phi, align 4, !dbg !1531, !tbaa !579
  %337 = load i32* %M, align 4, !dbg !1531, !tbaa !579
  %cmp361681 = icmp slt i32 %336, %337, !dbg !1531
  br i1 %cmp361681, label %for.body363.lr.ph, label %if.end377, !dbg !1531

for.body363.lr.ph:                                ; preds = %if.then355
  %338 = sext i32 %tpos.4 to i64
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1533
  %.pre733 = load %struct.p7trace_s** %tr, align 8, !dbg !1533, !tbaa !555
  br label %for.body363, !dbg !1531

for.body363:                                      ; preds = %for.body363.lr.ph, %for.body363
  %339 = phi %struct.p7trace_s* [ %.pre733, %for.body363.lr.ph ], [ %341, %for.body363 ], !dbg !1531
  %indvars.iv708 = phi i64 [ %338, %for.body363.lr.ph ], [ %indvars.iv.next709, %for.body363 ]
  %k.2683.in = phi i32 [ %336, %for.body363.lr.ph ], [ %k.2683, %for.body363 ]
  %tpos.5682 = phi i32 [ %tpos.4, %for.body363.lr.ph ], [ %inc373, %for.body363 ]
  %k.2683 = add nsw i32 %k.2683.in, 1, !dbg !1531
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1533
  %statetype365 = getelementptr inbounds %struct.p7trace_s* %339, i64 0, i32 1, !dbg !1533
  %340 = load i8** %statetype365, align 8, !dbg !1533, !tbaa !555
  %arrayidx366 = getelementptr inbounds i8* %340, i64 %indvars.iv708, !dbg !1533
  store i8 2, i8* %arrayidx366, align 1, !dbg !1533, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1535
  %341 = load %struct.p7trace_s** %tr, align 8, !dbg !1535, !tbaa !555
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s* %341, i64 0, i32 2, !dbg !1535
  %342 = load i32** %nodeidx368, align 8, !dbg !1535, !tbaa !555
  %arrayidx369 = getelementptr inbounds i32* %342, i64 %indvars.iv708, !dbg !1535
  store i32 %k.2683, i32* %arrayidx369, align 4, !dbg !1535, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1536
  %pos371 = getelementptr inbounds %struct.p7trace_s* %341, i64 0, i32 3, !dbg !1536
  %343 = load i32** %pos371, align 8, !dbg !1536, !tbaa !555
  %arrayidx372 = getelementptr inbounds i32* %343, i64 %indvars.iv708, !dbg !1536
  store i32 0, i32* %arrayidx372, align 4, !dbg !1536, !tbaa !579
  %indvars.iv.next709 = add i64 %indvars.iv708, 1, !dbg !1531
  %inc373 = add nsw i32 %tpos.5682, 1, !dbg !1537
  call void @llvm.dbg.value(metadata !{i32 %inc373}, i64 0, metadata !311), !dbg !1537
  %344 = load i32* %M, align 4, !dbg !1531, !tbaa !579
  %cmp361 = icmp slt i32 %k.2683, %344, !dbg !1531
  br i1 %cmp361, label %for.body363, label %if.end377, !dbg !1531

if.end377:                                        ; preds = %if.then355, %for.body363, %if.then338
  %tpos.6 = phi i32 [ %tpos.4, %if.then338 ], [ %tpos.4, %if.then355 ], [ %inc373, %for.body363 ]
  %idxprom378 = sext i32 %tpos.6 to i64, !dbg !1538
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1538
  %345 = load %struct.p7trace_s** %tr, align 8, !dbg !1538, !tbaa !555
  %statetype379 = getelementptr inbounds %struct.p7trace_s* %345, i64 0, i32 1, !dbg !1538
  %346 = load i8** %statetype379, align 8, !dbg !1538, !tbaa !555
  %arrayidx380 = getelementptr inbounds i8* %346, i64 %idxprom378, !dbg !1538
  store i8 7, i8* %arrayidx380, align 1, !dbg !1538, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1539
  %347 = load %struct.p7trace_s** %tr, align 8, !dbg !1539, !tbaa !555
  %nodeidx382 = getelementptr inbounds %struct.p7trace_s* %347, i64 0, i32 2, !dbg !1539
  %348 = load i32** %nodeidx382, align 8, !dbg !1539, !tbaa !555
  %arrayidx383 = getelementptr inbounds i32* %348, i64 %idxprom378, !dbg !1539
  store i32 0, i32* %arrayidx383, align 4, !dbg !1539, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1540
  %pos385 = getelementptr inbounds %struct.p7trace_s* %347, i64 0, i32 3, !dbg !1540
  %349 = load i32** %pos385, align 8, !dbg !1540, !tbaa !555
  %arrayidx386 = getelementptr inbounds i32* %349, i64 %idxprom378, !dbg !1540
  store i32 0, i32* %arrayidx386, align 4, !dbg !1540, !tbaa !579
  %inc387 = add nsw i32 %tpos.6, 1, !dbg !1541
  call void @llvm.dbg.value(metadata !{i32 %inc387}, i64 0, metadata !311), !dbg !1541
  %idxprom388 = sext i32 %inc387 to i64, !dbg !1542
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1542
  %statetype389 = getelementptr inbounds %struct.p7trace_s* %347, i64 0, i32 1, !dbg !1542
  %350 = load i8** %statetype389, align 8, !dbg !1542, !tbaa !555
  %arrayidx390 = getelementptr inbounds i8* %350, i64 %idxprom388, !dbg !1542
  store i8 8, i8* %arrayidx390, align 1, !dbg !1542, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1543
  %351 = load %struct.p7trace_s** %tr, align 8, !dbg !1543, !tbaa !555
  %nodeidx392 = getelementptr inbounds %struct.p7trace_s* %351, i64 0, i32 2, !dbg !1543
  %352 = load i32** %nodeidx392, align 8, !dbg !1543, !tbaa !555
  %arrayidx393 = getelementptr inbounds i32* %352, i64 %idxprom388, !dbg !1543
  store i32 0, i32* %arrayidx393, align 4, !dbg !1543, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1544
  %pos395 = getelementptr inbounds %struct.p7trace_s* %351, i64 0, i32 3, !dbg !1544
  %353 = load i32** %pos395, align 8, !dbg !1544, !tbaa !555
  %arrayidx396 = getelementptr inbounds i32* %353, i64 %idxprom388, !dbg !1544
  store i32 0, i32* %arrayidx396, align 4, !dbg !1544, !tbaa !579
  %inc397 = add nsw i32 %tpos.6, 2, !dbg !1545
  call void @llvm.dbg.value(metadata !{i32 %inc397}, i64 0, metadata !311), !dbg !1545
  br label %for.inc437, !dbg !1546

sw.bb399:                                         ; preds = %for.body216
  %idxprom400 = sext i32 %tpos.0688 to i64, !dbg !1547
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1547
  %354 = load %struct.p7trace_s** %tr, align 8, !dbg !1547, !tbaa !555
  %statetype401 = getelementptr inbounds %struct.p7trace_s* %354, i64 0, i32 1, !dbg !1547
  %355 = load i8** %statetype401, align 8, !dbg !1547, !tbaa !555
  %arrayidx402 = getelementptr inbounds i8* %355, i64 %idxprom400, !dbg !1547
  store i8 3, i8* %arrayidx402, align 1, !dbg !1547, !tbaa !556
  %arrayidx404 = getelementptr inbounds i32* %0, i64 %indvars.iv710, !dbg !1548
  %356 = load i32* %arrayidx404, align 4, !dbg !1548, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1548
  %357 = load %struct.p7trace_s** %tr, align 8, !dbg !1548, !tbaa !555
  %nodeidx406 = getelementptr inbounds %struct.p7trace_s* %357, i64 0, i32 2, !dbg !1548
  %358 = load i32** %nodeidx406, align 8, !dbg !1548, !tbaa !555
  %arrayidx407 = getelementptr inbounds i32* %358, i64 %idxprom400, !dbg !1548
  store i32 %356, i32* %arrayidx407, align 4, !dbg !1548, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1549
  %pos409 = getelementptr inbounds %struct.p7trace_s* %357, i64 0, i32 3, !dbg !1549
  %359 = load i32** %pos409, align 8, !dbg !1549, !tbaa !555
  %arrayidx410 = getelementptr inbounds i32* %359, i64 %idxprom400, !dbg !1549
  %360 = trunc i64 %indvars.iv710 to i32, !dbg !1549
  store i32 %360, i32* %arrayidx410, align 4, !dbg !1549, !tbaa !579
  %inc411 = add nsw i32 %tpos.0688, 1, !dbg !1550
  call void @llvm.dbg.value(metadata !{i32 %inc411}, i64 0, metadata !311), !dbg !1550
  br label %for.inc437, !dbg !1551

sw.bb412:                                         ; preds = %for.body216
  %idxprom413 = sext i32 %tpos.0688 to i64, !dbg !1552
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1552
  %361 = load %struct.p7trace_s** %tr, align 8, !dbg !1552, !tbaa !555
  %statetype414 = getelementptr inbounds %struct.p7trace_s* %361, i64 0, i32 1, !dbg !1552
  %362 = load i8** %statetype414, align 8, !dbg !1552, !tbaa !555
  %arrayidx415 = getelementptr inbounds i8* %362, i64 %idxprom413, !dbg !1552
  store i8 5, i8* %arrayidx415, align 1, !dbg !1552, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1553
  %363 = load %struct.p7trace_s** %tr, align 8, !dbg !1553, !tbaa !555
  %nodeidx417 = getelementptr inbounds %struct.p7trace_s* %363, i64 0, i32 2, !dbg !1553
  %364 = load i32** %nodeidx417, align 8, !dbg !1553, !tbaa !555
  %arrayidx418 = getelementptr inbounds i32* %364, i64 %idxprom413, !dbg !1553
  store i32 0, i32* %arrayidx418, align 4, !dbg !1553, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1554
  %pos420 = getelementptr inbounds %struct.p7trace_s* %363, i64 0, i32 3, !dbg !1554
  %365 = load i32** %pos420, align 8, !dbg !1554, !tbaa !555
  %arrayidx421 = getelementptr inbounds i32* %365, i64 %idxprom413, !dbg !1554
  %366 = trunc i64 %indvars.iv710 to i32, !dbg !1554
  store i32 %366, i32* %arrayidx421, align 4, !dbg !1554, !tbaa !579
  %inc422 = add nsw i32 %tpos.0688, 1, !dbg !1555
  call void @llvm.dbg.value(metadata !{i32 %inc422}, i64 0, metadata !311), !dbg !1555
  br label %for.inc437, !dbg !1556

sw.bb423:                                         ; preds = %for.body216
  %idxprom424 = sext i32 %tpos.0688 to i64, !dbg !1557
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1557
  %367 = load %struct.p7trace_s** %tr, align 8, !dbg !1557, !tbaa !555
  %statetype425 = getelementptr inbounds %struct.p7trace_s* %367, i64 0, i32 1, !dbg !1557
  %368 = load i8** %statetype425, align 8, !dbg !1557, !tbaa !555
  %arrayidx426 = getelementptr inbounds i8* %368, i64 %idxprom424, !dbg !1557
  store i8 8, i8* %arrayidx426, align 1, !dbg !1557, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1558
  %369 = load %struct.p7trace_s** %tr, align 8, !dbg !1558, !tbaa !555
  %nodeidx428 = getelementptr inbounds %struct.p7trace_s* %369, i64 0, i32 2, !dbg !1558
  %370 = load i32** %nodeidx428, align 8, !dbg !1558, !tbaa !555
  %arrayidx429 = getelementptr inbounds i32* %370, i64 %idxprom424, !dbg !1558
  store i32 0, i32* %arrayidx429, align 4, !dbg !1558, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1559
  %pos431 = getelementptr inbounds %struct.p7trace_s* %369, i64 0, i32 3, !dbg !1559
  %371 = load i32** %pos431, align 8, !dbg !1559, !tbaa !555
  %arrayidx432 = getelementptr inbounds i32* %371, i64 %idxprom424, !dbg !1559
  %372 = trunc i64 %indvars.iv710 to i32, !dbg !1559
  store i32 %372, i32* %arrayidx432, align 4, !dbg !1559, !tbaa !579
  %inc433 = add nsw i32 %tpos.0688, 1, !dbg !1560
  call void @llvm.dbg.value(metadata !{i32 %inc433}, i64 0, metadata !311), !dbg !1560
  br label %for.inc437, !dbg !1561

sw.default:                                       ; preds = %for.body216
  %call436 = call i8* @Statetype(i8 signext %288) #6, !dbg !1562
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* %call436) #6, !dbg !1562
  br label %for.inc437, !dbg !1563

for.inc437:                                       ; preds = %sw.bb399, %sw.bb412, %sw.bb423, %sw.default, %if.end377, %lor.lhs.false331
  %tpos.7 = phi i32 [ %tpos.0688, %sw.default ], [ %inc433, %sw.bb423 ], [ %inc422, %sw.bb412 ], [ %inc411, %sw.bb399 ], [ %inc397, %if.end377 ], [ %tpos.4, %lor.lhs.false331 ]
  %indvars.iv.next711 = add i64 %indvars.iv710, 1, !dbg !1497
  %lftr.wideiv = trunc i64 %indvars.iv.next711 to i32, !dbg !1497
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !1497
  br i1 %exitcond, label %for.cond213.for.end439_crit_edge, label %for.body216, !dbg !1497

for.cond213.for.end439_crit_edge:                 ; preds = %for.inc437
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1564
  %.pre731 = load %struct.p7trace_s** %tr, align 8, !dbg !1564, !tbaa !555
  br label %for.end439, !dbg !1497

for.end439:                                       ; preds = %for.cond213.for.end439_crit_edge, %if.end203
  %373 = phi %struct.p7trace_s* [ %.pre731, %for.cond213.for.end439_crit_edge ], [ %285, %if.end203 ]
  %tpos.0.lcssa = phi i32 [ %tpos.7, %for.cond213.for.end439_crit_edge ], [ 2, %if.end203 ]
  %idxprom440 = sext i32 %tpos.0.lcssa to i64, !dbg !1564
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1564
  %statetype441 = getelementptr inbounds %struct.p7trace_s* %373, i64 0, i32 1, !dbg !1564
  %374 = load i8** %statetype441, align 8, !dbg !1564, !tbaa !555
  %arrayidx442 = getelementptr inbounds i8* %374, i64 %idxprom440, !dbg !1564
  store i8 9, i8* %arrayidx442, align 1, !dbg !1564, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1565
  %375 = load %struct.p7trace_s** %tr, align 8, !dbg !1565, !tbaa !555
  %nodeidx444 = getelementptr inbounds %struct.p7trace_s* %375, i64 0, i32 2, !dbg !1565
  %376 = load i32** %nodeidx444, align 8, !dbg !1565, !tbaa !555
  %arrayidx445 = getelementptr inbounds i32* %376, i64 %idxprom440, !dbg !1565
  store i32 0, i32* %arrayidx445, align 4, !dbg !1565, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1566
  %pos447 = getelementptr inbounds %struct.p7trace_s* %375, i64 0, i32 3, !dbg !1566
  %377 = load i32** %pos447, align 8, !dbg !1566, !tbaa !555
  %arrayidx448 = getelementptr inbounds i32* %377, i64 %idxprom440, !dbg !1566
  store i32 0, i32* %arrayidx448, align 4, !dbg !1566, !tbaa !579
  %add449 = add nsw i32 %tpos.0.lcssa, 1, !dbg !1567
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1567
  %tlen450 = getelementptr inbounds %struct.p7trace_s* %375, i64 0, i32 0, !dbg !1567
  store i32 %add449, i32* %tlen450, align 4, !dbg !1567, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !291), !dbg !1568
  store %struct.p7trace_s* %375, %struct.p7trace_s** %ret_tr, align 8, !dbg !1568, !tbaa !555
  call void @free(i8* %call) #6, !dbg !1569
  call void @free(i8* %call4) #6, !dbg !1570
  call void @free(i8* %call12) #6, !dbg !1571
  call void @free(i8* %call8) #6, !dbg !1572
  ret float %ret_sc.1, !dbg !1573
}

; Function Attrs: optsize
declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare i8* @Statetype(i8 signext) #2

; Function Attrs: nounwind optsize uwtable
define float @Plan7ESTViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !314), !dbg !1574
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !315), !dbg !1574
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !316), !dbg !1574
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %ret_mx}, i64 0, metadata !317), !dbg !1574
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1575
  %0 = load i32* %M, align 4, !dbg !1575, !tbaa !579
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1576) #8, !dbg !1577
  %call.i = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %L, i32 %0, i32 0, i32 0) #6, !dbg !1578
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !1579) #8, !dbg !1578
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0, !dbg !1580
  %1 = load i32*** %xmx1.i, align 8, !dbg !1580, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1580
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !1581), !dbg !1577
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1582
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1583
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1584
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1584
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1584
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1585
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1586
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1587
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1587
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1587
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1594
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1595
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1597
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1598
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1599
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1601
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1602
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1603
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1604
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1605
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1606
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !319), !dbg !1607
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1, !dbg !1608
  %2 = load i32*** %mmx4.i, align 8, !dbg !1608, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1608
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !1609), !dbg !1577
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1610
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1612
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1614
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1615
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1616
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1617
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1618
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1619
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1620
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1594
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1621
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1622
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1595
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1624
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1625
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1626
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1628
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1629
  tail call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !320), !dbg !1599
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2, !dbg !1631
  %3 = load i32*** %imx8.i, align 8, !dbg !1631, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1631
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !1632), !dbg !1577
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1610
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1612
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1614
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1616
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1620
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1626
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1633
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1634
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1628
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1635
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1629
  tail call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !321), !dbg !1636
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3, !dbg !1637
  %4 = load i32*** %dmx12.i, align 8, !dbg !1637, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1637
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !1638), !dbg !1577
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1610
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1612
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1614
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1617
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1621
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1624
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1625
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1639
  tail call void @llvm.dbg.value(metadata !{i32** %4}, i64 0, metadata !322), !dbg !1598
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !318), !dbg !1575
  %5 = load i32** %1, align 8, !dbg !1582, !tbaa !555
  %arrayidx1 = getelementptr inbounds i32* %5, i64 4, !dbg !1582
  store i32 0, i32* %arrayidx1, align 4, !dbg !1582, !tbaa !579
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !1583
  %6 = load i32* %arrayidx3, align 4, !dbg !1583, !tbaa !579
  store i32 %6, i32* %5, align 4, !dbg !1583, !tbaa !579
  %arrayidx7 = getelementptr inbounds i32* %5, i64 3, !dbg !1584
  store i32 -987654321, i32* %arrayidx7, align 4, !dbg !1584, !tbaa !579
  %arrayidx9 = getelementptr inbounds i32* %5, i64 2, !dbg !1584
  store i32 -987654321, i32* %arrayidx9, align 4, !dbg !1584, !tbaa !579
  %arrayidx11 = getelementptr inbounds i32* %5, i64 1, !dbg !1584
  store i32 -987654321, i32* %arrayidx11, align 4, !dbg !1584, !tbaa !579
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !324), !dbg !1640
  %7 = load i32* %M, align 4, !dbg !1640, !tbaa !579
  %cmp1079 = icmp slt i32 %7, 0, !dbg !1640
  br i1 %cmp1079, label %for.end, label %for.body.lr.ph, !dbg !1640

for.body.lr.ph:                                   ; preds = %entry
  %8 = load i32** %4, align 8, !dbg !1610, !tbaa !555
  %9 = load i32** %3, align 8, !dbg !1610, !tbaa !555
  %10 = load i32** %2, align 8, !dbg !1610, !tbaa !555
  br label %for.body, !dbg !1640

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv1097, !dbg !1610
  store i32 -987654321, i32* %arrayidx14, align 4, !dbg !1610, !tbaa !579
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv1097, !dbg !1610
  store i32 -987654321, i32* %arrayidx17, align 4, !dbg !1610, !tbaa !579
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv1097, !dbg !1610
  store i32 -987654321, i32* %arrayidx20, align 4, !dbg !1610, !tbaa !579
  %indvars.iv.next1098 = add i64 %indvars.iv1097, 1, !dbg !1640
  %11 = load i32* %M, align 4, !dbg !1640, !tbaa !579
  %12 = trunc i64 %indvars.iv1097 to i32, !dbg !1640
  %cmp = icmp slt i32 %12, %11, !dbg !1640
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !1640

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %arrayidx1, align 4, !dbg !1585, !tbaa !579
  br label %for.end, !dbg !1640

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %13 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx25 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !1585
  %14 = load i32* %arrayidx25, align 4, !dbg !1585, !tbaa !579
  %add26 = add nsw i32 %14, %13, !dbg !1585
  %arrayidx27 = getelementptr inbounds i32** %1, i64 1, !dbg !1585
  %15 = load i32** %arrayidx27, align 8, !dbg !1585, !tbaa !555
  %arrayidx28 = getelementptr inbounds i32* %15, i64 4, !dbg !1585
  store i32 %add26, i32* %arrayidx28, align 4, !dbg !1585, !tbaa !579
  %16 = load i32* %arrayidx3, align 4, !dbg !1586, !tbaa !579
  %add34 = add nsw i32 %16, %add26, !dbg !1586
  store i32 %add34, i32* %15, align 4, !dbg !1586, !tbaa !579
  store i32 -987654321, i32* %arrayidx7, align 4, !dbg !1587, !tbaa !579
  store i32 -987654321, i32* %arrayidx9, align 4, !dbg !1587, !tbaa !579
  store i32 -987654321, i32* %arrayidx11, align 4, !dbg !1587, !tbaa !579
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !324), !dbg !1641
  %17 = load i32* %M, align 4, !dbg !1641, !tbaa !579
  %cmp451077 = icmp slt i32 %17, 0, !dbg !1641
  br i1 %cmp451077, label %for.cond59.preheader, label %for.body46.lr.ph, !dbg !1641

for.body46.lr.ph:                                 ; preds = %for.end
  %18 = load i32** %4, align 8, !dbg !1612, !tbaa !555
  %19 = load i32** %3, align 8, !dbg !1612, !tbaa !555
  %20 = load i32** %2, align 8, !dbg !1612, !tbaa !555
  br label %for.body46, !dbg !1641

for.cond59.preheader:                             ; preds = %for.body46, %for.end
  %cmp601074 = icmp slt i32 %L, 2, !dbg !1642
  br i1 %cmp601074, label %for.end725, label %for.body61.lr.ph, !dbg !1642

for.body61.lr.ph:                                 ; preds = %for.cond59.preheader
  %arrayidx646 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !1601
  %arrayidx656 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !1602
  %arrayidx683 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !1604
  %arrayidx701 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !1605
  %arrayidx711 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !1606
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !1599
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !1615
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !1588
  %dnam = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 41, !dbg !1618
  %dna2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 43, !dbg !1619
  %dna4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 44, !dbg !1622
  %dnai = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 42, !dbg !1634
  %21 = add i32 %L, 1, !dbg !1642
  br label %for.body61, !dbg !1642

for.body46:                                       ; preds = %for.body46, %for.body46.lr.ph
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %for.body46 ], [ 0, %for.body46.lr.ph ]
  %arrayidx49 = getelementptr inbounds i32* %18, i64 %indvars.iv1095, !dbg !1612
  store i32 -987654321, i32* %arrayidx49, align 4, !dbg !1612, !tbaa !579
  %arrayidx52 = getelementptr inbounds i32* %19, i64 %indvars.iv1095, !dbg !1612
  store i32 -987654321, i32* %arrayidx52, align 4, !dbg !1612, !tbaa !579
  %arrayidx55 = getelementptr inbounds i32* %20, i64 %indvars.iv1095, !dbg !1612
  store i32 -987654321, i32* %arrayidx55, align 4, !dbg !1612, !tbaa !579
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1, !dbg !1641
  %22 = load i32* %M, align 4, !dbg !1641, !tbaa !579
  %23 = trunc i64 %indvars.iv1095 to i32, !dbg !1641
  %cmp45 = icmp slt i32 %23, %22, !dbg !1641
  br i1 %cmp45, label %for.body46, label %for.cond59.preheader, !dbg !1641

for.body61:                                       ; preds = %for.end639, %for.body61.lr.ph
  %24 = phi i32* [ %142, %for.end639 ], [ %15, %for.body61.lr.ph ]
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %for.end639 ], [ 2, %for.body61.lr.ph ]
  %codon.01076 = phi i32 [ %codon.1, %for.end639 ], [ undef, %for.body61.lr.ph ]
  %arrayidx63 = getelementptr inbounds i32** %4, i64 %indvars.iv1085, !dbg !1614
  %25 = load i32** %arrayidx63, align 8, !dbg !1614, !tbaa !555
  store i32 -987654321, i32* %25, align 4, !dbg !1614, !tbaa !579
  %arrayidx66 = getelementptr inbounds i32** %3, i64 %indvars.iv1085, !dbg !1614
  %26 = load i32** %arrayidx66, align 8, !dbg !1614, !tbaa !555
  store i32 -987654321, i32* %26, align 4, !dbg !1614, !tbaa !579
  %arrayidx69 = getelementptr inbounds i32** %2, i64 %indvars.iv1085, !dbg !1614
  %27 = load i32** %arrayidx69, align 8, !dbg !1614, !tbaa !555
  store i32 -987654321, i32* %27, align 4, !dbg !1614, !tbaa !579
  %28 = trunc i64 %indvars.iv1085 to i32, !dbg !1643
  %cmp71 = icmp sgt i32 %28, 2, !dbg !1643
  br i1 %cmp71, label %if.then, label %if.end103, !dbg !1643

if.then:                                          ; preds = %for.body61
  %29 = add nsw i64 %indvars.iv1085, -2, !dbg !1644
  %arrayidx73 = getelementptr inbounds i8* %dsq, i64 %29, !dbg !1644
  %30 = load i8* %arrayidx73, align 1, !dbg !1644, !tbaa !556
  %conv = sext i8 %30 to i32, !dbg !1644
  %cmp74 = icmp slt i8 %30, 4, !dbg !1644
  br i1 %cmp74, label %land.lhs.true, label %if.end103, !dbg !1644

land.lhs.true:                                    ; preds = %if.then
  %31 = add nsw i64 %indvars.iv1085, -1, !dbg !1644
  %arrayidx78 = getelementptr inbounds i8* %dsq, i64 %31, !dbg !1644
  %32 = load i8* %arrayidx78, align 1, !dbg !1644, !tbaa !556
  %conv79 = sext i8 %32 to i32, !dbg !1644
  %cmp80 = icmp slt i8 %32, 4, !dbg !1644
  br i1 %cmp80, label %land.lhs.true82, label %if.end103, !dbg !1644

land.lhs.true82:                                  ; preds = %land.lhs.true
  %arrayidx84 = getelementptr inbounds i8* %dsq, i64 %indvars.iv1085, !dbg !1644
  %33 = load i8* %arrayidx84, align 1, !dbg !1644, !tbaa !556
  %cmp86 = icmp slt i8 %33, 4, !dbg !1644
  br i1 %cmp86, label %if.then88, label %if.end103, !dbg !1644

if.then88:                                        ; preds = %land.lhs.true82
  %conv85 = sext i8 %33 to i32, !dbg !1644
  %mul = shl nsw i32 %conv, 4, !dbg !1646
  %mul97 = shl nsw i32 %conv79, 2, !dbg !1646
  %add98 = add nsw i32 %mul97, %mul, !dbg !1646
  %add102 = add nsw i32 %add98, %conv85, !dbg !1646
  tail call void @llvm.dbg.value(metadata !{i32 %add102}, i64 0, metadata !326), !dbg !1646
  br label %if.end103, !dbg !1646

if.end103:                                        ; preds = %if.then, %land.lhs.true, %land.lhs.true82, %if.then88, %for.body61
  %codon.1 = phi i32 [ %add102, %if.then88 ], [ %codon.01076, %for.body61 ], [ 64, %land.lhs.true82 ], [ 64, %land.lhs.true ], [ 64, %if.then ]
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !324), !dbg !1647
  %34 = load i32* %M, align 4, !dbg !1647, !tbaa !579
  %cmp1061070 = icmp slt i32 %34, 1, !dbg !1647
  br i1 %cmp1061070, label %for.end595, label %for.body108.lr.ph, !dbg !1647

for.body108.lr.ph:                                ; preds = %if.end103
  %35 = add nsw i64 %indvars.iv1085, -3, !dbg !1615
  %arrayidx116 = getelementptr inbounds i32** %2, i64 %35, !dbg !1615
  %arrayidx131 = getelementptr inbounds i32** %3, i64 %35, !dbg !1616
  %arrayidx153 = getelementptr inbounds i32** %1, i64 %35, !dbg !1588
  %arrayidx174 = getelementptr inbounds i32** %4, i64 %35, !dbg !1617
  %idxprom195 = sext i32 %codon.1 to i64, !dbg !1618
  %36 = add nsw i64 %indvars.iv1085, -2, !dbg !1619
  %arrayidx208 = getelementptr inbounds i32** %2, i64 %36, !dbg !1619
  %37 = load i32** %arrayidx208, align 8, !dbg !1619, !tbaa !555
  %38 = load i32*** %tsc, align 8, !dbg !1619, !tbaa !555
  %39 = load i32** %38, align 8, !dbg !1619, !tbaa !555
  %arrayidx233 = getelementptr inbounds i32** %3, i64 %36, !dbg !1620
  %40 = load i32** %arrayidx233, align 8, !dbg !1620, !tbaa !555
  %arrayidx238 = getelementptr inbounds i32** %38, i64 3, !dbg !1620
  %41 = load i32** %arrayidx238, align 8, !dbg !1620, !tbaa !555
  %arrayidx257 = getelementptr inbounds i32** %1, i64 %36, !dbg !1594
  %42 = load i32** %arrayidx257, align 8, !dbg !1594, !tbaa !555
  %43 = load i32** %bsc, align 8, !dbg !1594, !tbaa !555
  %arrayidx281 = getelementptr inbounds i32** %4, i64 %36, !dbg !1621
  %44 = load i32** %arrayidx281, align 8, !dbg !1621, !tbaa !555
  %arrayidx286 = getelementptr inbounds i32** %38, i64 5, !dbg !1621
  %45 = load i32** %arrayidx286, align 8, !dbg !1621, !tbaa !555
  %cmp303 = icmp sgt i32 %28, 3, !dbg !1648
  %46 = add nsw i64 %indvars.iv1085, -4, !dbg !1622
  %arrayidx310 = getelementptr inbounds i32** %2, i64 %46, !dbg !1622
  %arrayidx335 = getelementptr inbounds i32** %3, i64 %46, !dbg !1623
  %arrayidx359 = getelementptr inbounds i32** %1, i64 %46, !dbg !1595
  %arrayidx383 = getelementptr inbounds i32** %4, i64 %46, !dbg !1624
  %arrayidx414 = getelementptr inbounds i32** %38, i64 2, !dbg !1625
  %47 = load i32** %arrayidx414, align 8, !dbg !1625, !tbaa !555
  %arrayidx429 = getelementptr inbounds i32** %38, i64 6, !dbg !1639
  %48 = load i32** %arrayidx429, align 8, !dbg !1639, !tbaa !555
  %arrayidx500 = getelementptr inbounds i32** %38, i64 1, !dbg !1628
  %49 = load i32** %arrayidx500, align 8, !dbg !1628, !tbaa !555
  %arrayidx524 = getelementptr inbounds i32** %38, i64 4, !dbg !1635
  %50 = load i32** %arrayidx524, align 8, !dbg !1635, !tbaa !555
  %cmp541 = icmp sgt i32 %28, 4, !dbg !1649
  br label %for.body108, !dbg !1647

for.body108:                                      ; preds = %for.inc593, %for.body108.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc593 ], [ 1, %for.body108.lr.ph ]
  br i1 %cmp71, label %if.then111, label %for.body108.if.end203_crit_edge, !dbg !1650

for.body108.if.end203_crit_edge:                  ; preds = %for.body108
  %arrayidx220.phi.trans.insert = getelementptr inbounds i32* %27, i64 %indvars.iv
  %.pre1108 = load i32* %arrayidx220.phi.trans.insert, align 4, !dbg !1619, !tbaa !579
  %.pre1110 = add nsw i64 %indvars.iv, -1, !dbg !1619
  %arrayidx214.pre = getelementptr inbounds i32* %39, i64 %.pre1110, !dbg !1619
  br label %if.end203, !dbg !1650

if.then111:                                       ; preds = %for.body108
  %51 = add nsw i64 %indvars.iv, -1, !dbg !1615
  %52 = load i32** %arrayidx116, align 8, !dbg !1615, !tbaa !555
  %arrayidx117 = getelementptr inbounds i32* %52, i64 %51, !dbg !1615
  %53 = load i32* %arrayidx117, align 4, !dbg !1615, !tbaa !579
  %arrayidx121 = getelementptr inbounds i32* %39, i64 %51, !dbg !1615
  %54 = load i32* %arrayidx121, align 4, !dbg !1615, !tbaa !579
  %add122 = add nsw i32 %54, %53, !dbg !1615
  %arrayidx126 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !1615
  store i32 %add122, i32* %arrayidx126, align 4, !dbg !1615, !tbaa !579
  %55 = load i32** %arrayidx131, align 8, !dbg !1616, !tbaa !555
  %arrayidx132 = getelementptr inbounds i32* %55, i64 %51, !dbg !1616
  %56 = load i32* %arrayidx132, align 4, !dbg !1616, !tbaa !579
  %arrayidx137 = getelementptr inbounds i32* %41, i64 %51, !dbg !1616
  %57 = load i32* %arrayidx137, align 4, !dbg !1616, !tbaa !579
  %add138 = add nsw i32 %57, %56, !dbg !1616
  tail call void @llvm.dbg.value(metadata !{i32 %add138}, i64 0, metadata !325), !dbg !1616
  %cmp143 = icmp sgt i32 %add138, %add122, !dbg !1616
  br i1 %cmp143, label %if.then145, label %if.end150, !dbg !1616

if.then145:                                       ; preds = %if.then111
  store i32 %add138, i32* %arrayidx126, align 4, !dbg !1651, !tbaa !579
  br label %if.end150, !dbg !1651

if.end150:                                        ; preds = %if.then111, %if.then145
  %58 = phi i32 [ %add138, %if.then145 ], [ %add122, %if.then111 ]
  %59 = load i32** %arrayidx153, align 8, !dbg !1588, !tbaa !555
  %60 = load i32* %59, align 4, !dbg !1588, !tbaa !579
  %arrayidx156 = getelementptr inbounds i32* %43, i64 %indvars.iv, !dbg !1588
  %61 = load i32* %arrayidx156, align 4, !dbg !1588, !tbaa !579
  %add157 = add nsw i32 %61, %60, !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i32 %add157}, i64 0, metadata !325), !dbg !1588
  %cmp162 = icmp sgt i32 %add157, %58, !dbg !1588
  br i1 %cmp162, label %if.then164, label %if.end169, !dbg !1588

if.then164:                                       ; preds = %if.end150
  store i32 %add157, i32* %arrayidx126, align 4, !dbg !1652, !tbaa !579
  br label %if.end169, !dbg !1652

if.end169:                                        ; preds = %if.end150, %if.then164
  %62 = phi i32 [ %add157, %if.then164 ], [ %58, %if.end150 ]
  %63 = load i32** %arrayidx174, align 8, !dbg !1617, !tbaa !555
  %arrayidx175 = getelementptr inbounds i32* %63, i64 %51, !dbg !1617
  %64 = load i32* %arrayidx175, align 4, !dbg !1617, !tbaa !579
  %arrayidx180 = getelementptr inbounds i32* %45, i64 %51, !dbg !1617
  %65 = load i32* %arrayidx180, align 4, !dbg !1617, !tbaa !579
  %add181 = add nsw i32 %65, %64, !dbg !1617
  tail call void @llvm.dbg.value(metadata !{i32 %add181}, i64 0, metadata !325), !dbg !1617
  %cmp186 = icmp sgt i32 %add181, %62, !dbg !1617
  br i1 %cmp186, label %if.then188, label %if.end193, !dbg !1617

if.then188:                                       ; preds = %if.end169
  store i32 %add181, i32* %arrayidx126, align 4, !dbg !1653, !tbaa !579
  br label %if.end193, !dbg !1653

if.end193:                                        ; preds = %if.end169, %if.then188
  %66 = phi i32 [ %add181, %if.then188 ], [ %62, %if.end169 ]
  %67 = load i32*** %dnam, align 8, !dbg !1618, !tbaa !555
  %arrayidx196 = getelementptr inbounds i32** %67, i64 %idxprom195, !dbg !1618
  %68 = load i32** %arrayidx196, align 8, !dbg !1618, !tbaa !555
  %arrayidx197 = getelementptr inbounds i32* %68, i64 %indvars.iv, !dbg !1618
  %69 = load i32* %arrayidx197, align 4, !dbg !1618, !tbaa !579
  %add202 = add nsw i32 %66, %69, !dbg !1618
  store i32 %add202, i32* %arrayidx126, align 4, !dbg !1618, !tbaa !579
  br label %if.end203, !dbg !1654

if.end203:                                        ; preds = %for.body108.if.end203_crit_edge, %if.end193
  %arrayidx214.pre-phi = phi i32* [ %arrayidx214.pre, %for.body108.if.end203_crit_edge ], [ %arrayidx121, %if.end193 ], !dbg !1619
  %.pre-phi = phi i64 [ %.pre1110, %for.body108.if.end203_crit_edge ], [ %51, %if.end193 ], !dbg !1619
  %70 = phi i32 [ %.pre1108, %for.body108.if.end203_crit_edge ], [ %add202, %if.end193 ]
  %arrayidx209 = getelementptr inbounds i32* %37, i64 %.pre-phi, !dbg !1619
  %71 = load i32* %arrayidx209, align 4, !dbg !1619, !tbaa !579
  %72 = load i32* %arrayidx214.pre-phi, align 4, !dbg !1619, !tbaa !579
  %add215 = add nsw i32 %72, %71, !dbg !1619
  %73 = load i32* %dna2, align 4, !dbg !1619, !tbaa !579
  %add216 = add nsw i32 %add215, %73, !dbg !1619
  tail call void @llvm.dbg.value(metadata !{i32 %add216}, i64 0, metadata !325), !dbg !1619
  %arrayidx220 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !1619
  %cmp221 = icmp sgt i32 %add216, %70, !dbg !1619
  br i1 %cmp221, label %if.then223, label %if.end228, !dbg !1619

if.then223:                                       ; preds = %if.end203
  store i32 %add216, i32* %arrayidx220, align 4, !dbg !1655, !tbaa !579
  %.pre1100 = load i32* %dna2, align 4, !dbg !1620, !tbaa !579
  br label %if.end228, !dbg !1655

if.end228:                                        ; preds = %if.end203, %if.then223
  %74 = phi i32 [ %add216, %if.then223 ], [ %70, %if.end203 ]
  %75 = phi i32 [ %.pre1100, %if.then223 ], [ %73, %if.end203 ]
  %arrayidx234 = getelementptr inbounds i32* %40, i64 %.pre-phi, !dbg !1620
  %76 = load i32* %arrayidx234, align 4, !dbg !1620, !tbaa !579
  %arrayidx239 = getelementptr inbounds i32* %41, i64 %.pre-phi, !dbg !1620
  %77 = load i32* %arrayidx239, align 4, !dbg !1620, !tbaa !579
  %add240 = add nsw i32 %77, %76, !dbg !1620
  %add242 = add nsw i32 %add240, %75, !dbg !1620
  tail call void @llvm.dbg.value(metadata !{i32 %add242}, i64 0, metadata !325), !dbg !1620
  %cmp247 = icmp sgt i32 %add242, %74, !dbg !1620
  br i1 %cmp247, label %if.then249, label %if.end254, !dbg !1620

if.then249:                                       ; preds = %if.end228
  store i32 %add242, i32* %arrayidx220, align 4, !dbg !1656, !tbaa !579
  %.pre1101 = load i32* %dna2, align 4, !dbg !1594, !tbaa !579
  br label %if.end254, !dbg !1656

if.end254:                                        ; preds = %if.then249, %if.end228
  %78 = phi i32 [ %add242, %if.then249 ], [ %74, %if.end228 ]
  %79 = phi i32 [ %.pre1101, %if.then249 ], [ %75, %if.end228 ]
  %80 = load i32* %42, align 4, !dbg !1594, !tbaa !579
  %arrayidx261 = getelementptr inbounds i32* %43, i64 %indvars.iv, !dbg !1594
  %81 = load i32* %arrayidx261, align 4, !dbg !1594, !tbaa !579
  %add262 = add nsw i32 %81, %80, !dbg !1594
  %add264 = add nsw i32 %add262, %79, !dbg !1594
  tail call void @llvm.dbg.value(metadata !{i32 %add264}, i64 0, metadata !325), !dbg !1594
  %cmp269 = icmp sgt i32 %add264, %78, !dbg !1594
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1594

if.then271:                                       ; preds = %if.end254
  store i32 %add264, i32* %arrayidx220, align 4, !dbg !1657, !tbaa !579
  %.pre1102 = load i32* %dna2, align 4, !dbg !1621, !tbaa !579
  br label %if.end276, !dbg !1657

if.end276:                                        ; preds = %if.then271, %if.end254
  %82 = phi i32 [ %add264, %if.then271 ], [ %78, %if.end254 ]
  %83 = phi i32 [ %.pre1102, %if.then271 ], [ %79, %if.end254 ]
  %arrayidx282 = getelementptr inbounds i32* %44, i64 %.pre-phi, !dbg !1621
  %84 = load i32* %arrayidx282, align 4, !dbg !1621, !tbaa !579
  %arrayidx287 = getelementptr inbounds i32* %45, i64 %.pre-phi, !dbg !1621
  %85 = load i32* %arrayidx287, align 4, !dbg !1621, !tbaa !579
  %add288 = add nsw i32 %85, %84, !dbg !1621
  %add290 = add nsw i32 %add288, %83, !dbg !1621
  tail call void @llvm.dbg.value(metadata !{i32 %add290}, i64 0, metadata !325), !dbg !1621
  %cmp295 = icmp sgt i32 %add290, %82, !dbg !1621
  br i1 %cmp295, label %if.then297, label %if.end302, !dbg !1621

if.then297:                                       ; preds = %if.end276
  store i32 %add290, i32* %arrayidx220, align 4, !dbg !1658, !tbaa !579
  br label %if.end302, !dbg !1658

if.end302:                                        ; preds = %if.then297, %if.end276
  %86 = phi i32 [ %add290, %if.then297 ], [ %82, %if.end276 ]
  br i1 %cmp303, label %if.then305, label %if.end405, !dbg !1648

if.then305:                                       ; preds = %if.end302
  %87 = load i32** %arrayidx310, align 8, !dbg !1622, !tbaa !555
  %arrayidx311 = getelementptr inbounds i32* %87, i64 %.pre-phi, !dbg !1622
  %88 = load i32* %arrayidx311, align 4, !dbg !1622, !tbaa !579
  %89 = load i32* %arrayidx214.pre-phi, align 4, !dbg !1622, !tbaa !579
  %add317 = add nsw i32 %89, %88, !dbg !1622
  %90 = load i32* %dna4, align 4, !dbg !1622, !tbaa !579
  %add318 = add nsw i32 %add317, %90, !dbg !1622
  tail call void @llvm.dbg.value(metadata !{i32 %add318}, i64 0, metadata !325), !dbg !1622
  %cmp323 = icmp sgt i32 %add318, %86, !dbg !1622
  br i1 %cmp323, label %if.then325, label %if.end330, !dbg !1622

if.then325:                                       ; preds = %if.then305
  store i32 %add318, i32* %arrayidx220, align 4, !dbg !1659, !tbaa !579
  %.pre1103 = load i32* %dna4, align 4, !dbg !1623, !tbaa !579
  br label %if.end330, !dbg !1659

if.end330:                                        ; preds = %if.then305, %if.then325
  %91 = phi i32 [ %add318, %if.then325 ], [ %86, %if.then305 ]
  %92 = phi i32 [ %.pre1103, %if.then325 ], [ %90, %if.then305 ]
  %93 = load i32** %arrayidx335, align 8, !dbg !1623, !tbaa !555
  %arrayidx336 = getelementptr inbounds i32* %93, i64 %.pre-phi, !dbg !1623
  %94 = load i32* %arrayidx336, align 4, !dbg !1623, !tbaa !579
  %95 = load i32* %arrayidx239, align 4, !dbg !1623, !tbaa !579
  %add342 = add nsw i32 %95, %94, !dbg !1623
  %add344 = add nsw i32 %add342, %92, !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i32 %add344}, i64 0, metadata !325), !dbg !1623
  %cmp349 = icmp sgt i32 %add344, %91, !dbg !1623
  br i1 %cmp349, label %if.then351, label %if.end356, !dbg !1623

if.then351:                                       ; preds = %if.end330
  store i32 %add344, i32* %arrayidx220, align 4, !dbg !1660, !tbaa !579
  %.pre1104 = load i32* %dna4, align 4, !dbg !1595, !tbaa !579
  br label %if.end356, !dbg !1660

if.end356:                                        ; preds = %if.end330, %if.then351
  %96 = phi i32 [ %add344, %if.then351 ], [ %91, %if.end330 ]
  %97 = phi i32 [ %.pre1104, %if.then351 ], [ %92, %if.end330 ]
  %98 = load i32** %arrayidx359, align 8, !dbg !1595, !tbaa !555
  %99 = load i32* %98, align 4, !dbg !1595, !tbaa !579
  %100 = load i32* %arrayidx261, align 4, !dbg !1595, !tbaa !579
  %add364 = add nsw i32 %100, %99, !dbg !1595
  %add366 = add nsw i32 %add364, %97, !dbg !1595
  tail call void @llvm.dbg.value(metadata !{i32 %add366}, i64 0, metadata !325), !dbg !1595
  %cmp371 = icmp sgt i32 %add366, %96, !dbg !1595
  br i1 %cmp371, label %if.then373, label %if.end378, !dbg !1595

if.then373:                                       ; preds = %if.end356
  store i32 %add366, i32* %arrayidx220, align 4, !dbg !1661, !tbaa !579
  %.pre1105 = load i32* %dna4, align 4, !dbg !1624, !tbaa !579
  br label %if.end378, !dbg !1661

if.end378:                                        ; preds = %if.end356, %if.then373
  %101 = phi i32 [ %add366, %if.then373 ], [ %96, %if.end356 ]
  %102 = phi i32 [ %.pre1105, %if.then373 ], [ %97, %if.end356 ]
  %103 = load i32** %arrayidx383, align 8, !dbg !1624, !tbaa !555
  %arrayidx384 = getelementptr inbounds i32* %103, i64 %.pre-phi, !dbg !1624
  %104 = load i32* %arrayidx384, align 4, !dbg !1624, !tbaa !579
  %105 = load i32* %arrayidx287, align 4, !dbg !1624, !tbaa !579
  %add390 = add nsw i32 %105, %104, !dbg !1624
  %add392 = add nsw i32 %add390, %102, !dbg !1624
  tail call void @llvm.dbg.value(metadata !{i32 %add392}, i64 0, metadata !325), !dbg !1624
  %cmp397 = icmp sgt i32 %add392, %101, !dbg !1624
  br i1 %cmp397, label %if.then399, label %if.end405, !dbg !1624

if.then399:                                       ; preds = %if.end378
  store i32 %add392, i32* %arrayidx220, align 4, !dbg !1662, !tbaa !579
  br label %if.end405, !dbg !1662

if.end405:                                        ; preds = %if.end378, %if.end302, %if.then399
  %arrayidx410 = getelementptr inbounds i32* %27, i64 %.pre-phi, !dbg !1625
  %106 = load i32* %arrayidx410, align 4, !dbg !1625, !tbaa !579
  %arrayidx415 = getelementptr inbounds i32* %47, i64 %.pre-phi, !dbg !1625
  %107 = load i32* %arrayidx415, align 4, !dbg !1625, !tbaa !579
  %add416 = add nsw i32 %107, %106, !dbg !1625
  %arrayidx420 = getelementptr inbounds i32* %25, i64 %indvars.iv, !dbg !1625
  store i32 %add416, i32* %arrayidx420, align 4, !dbg !1625, !tbaa !579
  %arrayidx425 = getelementptr inbounds i32* %25, i64 %.pre-phi, !dbg !1639
  %108 = load i32* %arrayidx425, align 4, !dbg !1639, !tbaa !579
  %arrayidx430 = getelementptr inbounds i32* %48, i64 %.pre-phi, !dbg !1639
  %109 = load i32* %arrayidx430, align 4, !dbg !1639, !tbaa !579
  %add431 = add nsw i32 %109, %108, !dbg !1639
  tail call void @llvm.dbg.value(metadata !{i32 %add431}, i64 0, metadata !325), !dbg !1639
  %cmp436 = icmp sgt i32 %add431, %add416, !dbg !1639
  %add431.add416 = select i1 %cmp436, i32 %add431, i32 %add416, !dbg !1639
  store i32 %add431.add416, i32* %arrayidx420, align 4, !dbg !1663, !tbaa !579
  br i1 %cmp71, label %if.then446, label %if.end443.if.end492_crit_edge, !dbg !1664

if.end443.if.end492_crit_edge:                    ; preds = %if.end405
  %arrayidx508.phi.trans.insert = getelementptr inbounds i32* %26, i64 %indvars.iv
  %.pre1109 = load i32* %arrayidx508.phi.trans.insert, align 4, !dbg !1628, !tbaa !579
  %arrayidx501.pre = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !1628
  br label %if.end492, !dbg !1664

if.then446:                                       ; preds = %if.end405
  %110 = load i32** %arrayidx116, align 8, !dbg !1626, !tbaa !555
  %arrayidx451 = getelementptr inbounds i32* %110, i64 %indvars.iv, !dbg !1626
  %111 = load i32* %arrayidx451, align 4, !dbg !1626, !tbaa !579
  %arrayidx455 = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !1626
  %112 = load i32* %arrayidx455, align 4, !dbg !1626, !tbaa !579
  %add456 = add nsw i32 %112, %111, !dbg !1626
  %arrayidx460 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !1626
  store i32 %add456, i32* %arrayidx460, align 4, !dbg !1626, !tbaa !579
  %113 = load i32** %arrayidx131, align 8, !dbg !1633, !tbaa !555
  %arrayidx465 = getelementptr inbounds i32* %113, i64 %indvars.iv, !dbg !1633
  %114 = load i32* %arrayidx465, align 4, !dbg !1633, !tbaa !579
  %arrayidx469 = getelementptr inbounds i32* %50, i64 %indvars.iv, !dbg !1633
  %115 = load i32* %arrayidx469, align 4, !dbg !1633, !tbaa !579
  %add470 = add nsw i32 %115, %114, !dbg !1633
  tail call void @llvm.dbg.value(metadata !{i32 %add470}, i64 0, metadata !325), !dbg !1633
  %cmp475 = icmp sgt i32 %add470, %add456, !dbg !1633
  br i1 %cmp475, label %if.then477, label %if.end482, !dbg !1633

if.then477:                                       ; preds = %if.then446
  store i32 %add470, i32* %arrayidx460, align 4, !dbg !1665, !tbaa !579
  br label %if.end482, !dbg !1665

if.end482:                                        ; preds = %if.then446, %if.then477
  %116 = phi i32 [ %add470, %if.then477 ], [ %add456, %if.then446 ]
  %117 = load i32*** %dnai, align 8, !dbg !1634, !tbaa !555
  %arrayidx485 = getelementptr inbounds i32** %117, i64 %idxprom195, !dbg !1634
  %118 = load i32** %arrayidx485, align 8, !dbg !1634, !tbaa !555
  %arrayidx486 = getelementptr inbounds i32* %118, i64 %indvars.iv, !dbg !1634
  %119 = load i32* %arrayidx486, align 4, !dbg !1634, !tbaa !579
  %add491 = add nsw i32 %116, %119, !dbg !1634
  store i32 %add491, i32* %arrayidx460, align 4, !dbg !1634, !tbaa !579
  br label %if.end492, !dbg !1666

if.end492:                                        ; preds = %if.end443.if.end492_crit_edge, %if.end482
  %arrayidx501.pre-phi = phi i32* [ %arrayidx501.pre, %if.end443.if.end492_crit_edge ], [ %arrayidx455, %if.end482 ], !dbg !1628
  %120 = phi i32 [ %.pre1109, %if.end443.if.end492_crit_edge ], [ %add491, %if.end482 ]
  %arrayidx497 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !1628
  %121 = load i32* %arrayidx497, align 4, !dbg !1628, !tbaa !579
  %122 = load i32* %arrayidx501.pre-phi, align 4, !dbg !1628, !tbaa !579
  %add502 = add nsw i32 %122, %121, !dbg !1628
  %123 = load i32* %dna2, align 4, !dbg !1628, !tbaa !579
  %add504 = add nsw i32 %add502, %123, !dbg !1628
  tail call void @llvm.dbg.value(metadata !{i32 %add504}, i64 0, metadata !325), !dbg !1628
  %arrayidx508 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !1628
  %cmp509 = icmp sgt i32 %add504, %120, !dbg !1628
  br i1 %cmp509, label %if.then511, label %if.end516, !dbg !1628

if.then511:                                       ; preds = %if.end492
  store i32 %add504, i32* %arrayidx508, align 4, !dbg !1667, !tbaa !579
  %.pre1106 = load i32* %dna2, align 4, !dbg !1635, !tbaa !579
  br label %if.end516, !dbg !1667

if.end516:                                        ; preds = %if.then511, %if.end492
  %124 = phi i32 [ %add504, %if.then511 ], [ %120, %if.end492 ]
  %125 = phi i32 [ %.pre1106, %if.then511 ], [ %123, %if.end492 ]
  %arrayidx521 = getelementptr inbounds i32* %40, i64 %indvars.iv, !dbg !1635
  %126 = load i32* %arrayidx521, align 4, !dbg !1635, !tbaa !579
  %arrayidx525 = getelementptr inbounds i32* %50, i64 %indvars.iv, !dbg !1635
  %127 = load i32* %arrayidx525, align 4, !dbg !1635, !tbaa !579
  %add526 = add nsw i32 %127, %126, !dbg !1635
  %add528 = add nsw i32 %add526, %125, !dbg !1635
  tail call void @llvm.dbg.value(metadata !{i32 %add528}, i64 0, metadata !325), !dbg !1635
  %cmp533 = icmp sgt i32 %add528, %124, !dbg !1635
  br i1 %cmp533, label %if.then535, label %if.end540, !dbg !1635

if.then535:                                       ; preds = %if.end516
  store i32 %add528, i32* %arrayidx508, align 4, !dbg !1668, !tbaa !579
  br label %if.end540, !dbg !1668

if.end540:                                        ; preds = %if.then535, %if.end516
  %128 = phi i32 [ %add528, %if.then535 ], [ %124, %if.end516 ]
  br i1 %cmp541, label %if.then543, label %for.inc593, !dbg !1649

if.then543:                                       ; preds = %if.end540
  %129 = load i32** %arrayidx310, align 8, !dbg !1629, !tbaa !555
  %arrayidx548 = getelementptr inbounds i32* %129, i64 %indvars.iv, !dbg !1629
  %130 = load i32* %arrayidx548, align 4, !dbg !1629, !tbaa !579
  %131 = load i32* %arrayidx501.pre-phi, align 4, !dbg !1629, !tbaa !579
  %add553 = add nsw i32 %131, %130, !dbg !1629
  %132 = load i32* %dna4, align 4, !dbg !1629, !tbaa !579
  %add555 = add nsw i32 %add553, %132, !dbg !1629
  tail call void @llvm.dbg.value(metadata !{i32 %add555}, i64 0, metadata !325), !dbg !1629
  %cmp560 = icmp sgt i32 %add555, %128, !dbg !1629
  br i1 %cmp560, label %if.then562, label %if.end567, !dbg !1629

if.then562:                                       ; preds = %if.then543
  store i32 %add555, i32* %arrayidx508, align 4, !dbg !1669, !tbaa !579
  %.pre1107 = load i32* %dna4, align 4, !dbg !1636, !tbaa !579
  br label %if.end567, !dbg !1669

if.end567:                                        ; preds = %if.then543, %if.then562
  %133 = phi i32 [ %add555, %if.then562 ], [ %128, %if.then543 ]
  %134 = phi i32 [ %.pre1107, %if.then562 ], [ %132, %if.then543 ]
  %135 = load i32** %arrayidx335, align 8, !dbg !1636, !tbaa !555
  %arrayidx572 = getelementptr inbounds i32* %135, i64 %indvars.iv, !dbg !1636
  %136 = load i32* %arrayidx572, align 4, !dbg !1636, !tbaa !579
  %137 = load i32* %arrayidx525, align 4, !dbg !1636, !tbaa !579
  %add577 = add nsw i32 %137, %136, !dbg !1636
  %add579 = add nsw i32 %add577, %134, !dbg !1636
  tail call void @llvm.dbg.value(metadata !{i32 %add579}, i64 0, metadata !325), !dbg !1636
  %cmp584 = icmp sgt i32 %add579, %133, !dbg !1636
  br i1 %cmp584, label %if.then586, label %for.inc593, !dbg !1636

if.then586:                                       ; preds = %if.end567
  store i32 %add579, i32* %arrayidx508, align 4, !dbg !1670, !tbaa !579
  br label %for.inc593, !dbg !1670

for.inc593:                                       ; preds = %if.end540, %if.then586, %if.end567
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1647
  %138 = load i32* %M, align 4, !dbg !1647, !tbaa !579
  %139 = trunc i64 %indvars.iv to i32, !dbg !1647
  %cmp106 = icmp slt i32 %139, %138, !dbg !1647
  br i1 %cmp106, label %for.body108, label %for.end595, !dbg !1647

for.end595:                                       ; preds = %for.inc593, %if.end103
  %arrayidx599 = getelementptr inbounds i32* %24, i64 4, !dbg !1597
  %140 = load i32* %arrayidx599, align 4, !dbg !1597, !tbaa !579
  %141 = load i32* %arrayidx25, align 4, !dbg !1597, !tbaa !579
  %add603 = add nsw i32 %141, %140, !dbg !1597
  %arrayidx605 = getelementptr inbounds i32** %1, i64 %indvars.iv1085, !dbg !1597
  %142 = load i32** %arrayidx605, align 8, !dbg !1597, !tbaa !555
  %arrayidx606 = getelementptr inbounds i32* %142, i64 4, !dbg !1597
  store i32 %add603, i32* %arrayidx606, align 4, !dbg !1597, !tbaa !579
  %143 = load i32* %M, align 4, !dbg !1598, !tbaa !579
  %idxprom608 = sext i32 %143 to i64, !dbg !1598
  %arrayidx611 = getelementptr inbounds i32* %25, i64 %idxprom608, !dbg !1598
  %144 = load i32* %arrayidx611, align 4, !dbg !1598, !tbaa !579
  %arrayidx614 = getelementptr inbounds i32* %142, i64 1, !dbg !1598
  store i32 %144, i32* %arrayidx614, align 4, !dbg !1598, !tbaa !579
  tail call void @llvm.dbg.value(metadata !569, i64 0, metadata !324), !dbg !1671
  %145 = load i32* %M, align 4, !dbg !1671, !tbaa !579
  %cmp6171072 = icmp slt i32 %145, 1, !dbg !1671
  br i1 %cmp6171072, label %for.end639, label %for.body619.lr.ph, !dbg !1671

for.body619.lr.ph:                                ; preds = %for.end595
  %146 = load i32** %esc, align 8, !dbg !1599, !tbaa !555
  br label %for.body619, !dbg !1671

for.body619:                                      ; preds = %for.inc637, %for.body619.lr.ph
  %147 = phi i32 [ %151, %for.inc637 ], [ %145, %for.body619.lr.ph ]
  %148 = phi i32 [ %152, %for.inc637 ], [ %144, %for.body619.lr.ph ], !dbg !1599
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %for.inc637 ], [ 1, %for.body619.lr.ph ]
  %arrayidx623 = getelementptr inbounds i32* %27, i64 %indvars.iv1083, !dbg !1599
  %149 = load i32* %arrayidx623, align 4, !dbg !1599, !tbaa !579
  %arrayidx625 = getelementptr inbounds i32* %146, i64 %indvars.iv1083, !dbg !1599
  %150 = load i32* %arrayidx625, align 4, !dbg !1599, !tbaa !579
  %add626 = add nsw i32 %150, %149, !dbg !1599
  tail call void @llvm.dbg.value(metadata !{i32 %add626}, i64 0, metadata !325), !dbg !1599
  %cmp630 = icmp sgt i32 %add626, %148, !dbg !1599
  br i1 %cmp630, label %if.then632, label %for.inc637, !dbg !1599

if.then632:                                       ; preds = %for.body619
  store i32 %add626, i32* %arrayidx614, align 4, !dbg !1672, !tbaa !579
  %.pre1099 = load i32* %M, align 4, !dbg !1671, !tbaa !579
  br label %for.inc637, !dbg !1672

for.inc637:                                       ; preds = %for.body619, %if.then632
  %151 = phi i32 [ %147, %for.body619 ], [ %.pre1099, %if.then632 ], !dbg !1671
  %152 = phi i32 [ %148, %for.body619 ], [ %add626, %if.then632 ]
  %indvars.iv.next1084 = add i64 %indvars.iv1083, 1, !dbg !1671
  %153 = trunc i64 %indvars.iv1083 to i32, !dbg !1671
  %cmp617 = icmp slt i32 %153, %151, !dbg !1671
  br i1 %cmp617, label %for.body619, label %for.end639, !dbg !1671

for.end639:                                       ; preds = %for.inc637, %for.end595
  %154 = phi i32 [ %144, %for.end595 ], [ %152, %for.inc637 ]
  %arrayidx643 = getelementptr inbounds i32* %24, i64 3, !dbg !1601
  %155 = load i32* %arrayidx643, align 4, !dbg !1601, !tbaa !579
  %156 = load i32* %arrayidx646, align 4, !dbg !1601, !tbaa !579
  %add647 = add nsw i32 %156, %155, !dbg !1601
  %arrayidx650 = getelementptr inbounds i32* %142, i64 3, !dbg !1601
  store i32 %add647, i32* %arrayidx650, align 4, !dbg !1601, !tbaa !579
  %157 = load i32* %arrayidx656, align 4, !dbg !1602, !tbaa !579
  %add657 = add nsw i32 %157, %154, !dbg !1602
  tail call void @llvm.dbg.value(metadata !{i32 %add657}, i64 0, metadata !325), !dbg !1602
  %cmp661 = icmp sgt i32 %add657, %add647, !dbg !1602
  %add657.add647 = select i1 %cmp661, i32 %add657, i32 %add647, !dbg !1602
  store i32 %add657.add647, i32* %arrayidx650, align 4, !dbg !1673, !tbaa !579
  %add657.add6471111 = select i1 %cmp661, i32 %add657, i32 %add647, !dbg !1602
  %158 = load i32* %arrayidx3, align 4, !dbg !1603, !tbaa !579
  %add674 = add nsw i32 %158, %add603, !dbg !1603
  store i32 %add674, i32* %142, align 4, !dbg !1603, !tbaa !579
  %159 = load i32* %arrayidx683, align 4, !dbg !1604, !tbaa !579
  %add684 = add nsw i32 %159, %add657.add6471111, !dbg !1604
  tail call void @llvm.dbg.value(metadata !{i32 %add684}, i64 0, metadata !325), !dbg !1604
  %cmp688 = icmp sgt i32 %add684, %add674, !dbg !1604
  %add684.add674 = select i1 %cmp688, i32 %add684, i32 %add674, !dbg !1604
  store i32 %add684.add674, i32* %142, align 4, !dbg !1674, !tbaa !579
  %arrayidx698 = getelementptr inbounds i32* %24, i64 2, !dbg !1605
  %160 = load i32* %arrayidx698, align 4, !dbg !1605, !tbaa !579
  %161 = load i32* %arrayidx701, align 4, !dbg !1605, !tbaa !579
  %add702 = add nsw i32 %161, %160, !dbg !1605
  %arrayidx705 = getelementptr inbounds i32* %142, i64 2, !dbg !1605
  store i32 %add702, i32* %arrayidx705, align 4, !dbg !1605, !tbaa !579
  %162 = load i32* %arrayidx711, align 4, !dbg !1606, !tbaa !579
  %add712 = add nsw i32 %162, %154, !dbg !1606
  tail call void @llvm.dbg.value(metadata !{i32 %add712}, i64 0, metadata !325), !dbg !1606
  %cmp716 = icmp sgt i32 %add712, %add702, !dbg !1606
  %add712.add702 = select i1 %cmp716, i32 %add712, i32 %add702, !dbg !1606
  store i32 %add712.add702, i32* %arrayidx705, align 4, !dbg !1675, !tbaa !579
  %indvars.iv.next1086 = add i64 %indvars.iv1085, 1, !dbg !1642
  %lftr.wideiv = trunc i64 %indvars.iv.next1086 to i32, !dbg !1642
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !dbg !1642
  br i1 %exitcond, label %for.end725, label %for.body61, !dbg !1642

for.end725:                                       ; preds = %for.end639, %for.cond59.preheader
  %idxprom726 = sext i32 %L to i64, !dbg !1607
  %arrayidx727 = getelementptr inbounds i32** %1, i64 %idxprom726, !dbg !1607
  %163 = load i32** %arrayidx727, align 8, !dbg !1607, !tbaa !555
  %arrayidx728 = getelementptr inbounds i32* %163, i64 2, !dbg !1607
  %164 = load i32* %arrayidx728, align 4, !dbg !1607, !tbaa !579
  %arrayidx731 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !1607
  %165 = load i32* %arrayidx731, align 4, !dbg !1607, !tbaa !579
  %add732 = add nsw i32 %165, %164, !dbg !1607
  tail call void @llvm.dbg.value(metadata !{i32 %add732}, i64 0, metadata !325), !dbg !1607
  %cmp733 = icmp eq %struct.dpmatrix_s** %ret_mx, null, !dbg !1676
  br i1 %cmp733, label %if.else736, label %if.then735, !dbg !1676

if.then735:                                       ; preds = %for.end725
  store %struct.dpmatrix_s* %call.i, %struct.dpmatrix_s** %ret_mx, align 8, !dbg !1676, !tbaa !555
  br label %if.end737, !dbg !1676

if.else736:                                       ; preds = %for.end725
  tail call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #7, !dbg !1677
  br label %if.end737

if.end737:                                        ; preds = %if.else736, %if.then735
  %call738 = tail call float @Scorify(i32 %add732) #6, !dbg !1678
  ret float %call738, !dbg !1678
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @P7ViterbiAlignAlignment(%struct.msa_struct* nocapture %msa, %struct.plan7_s* nocapture %hmm) #0 {
entry:
  %xtb = alloca i8**, align 8
  %mtb = alloca i8**, align 8
  %itb = alloca i8**, align 8
  %dtb = alloca i8**, align 8
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !402), !dbg !1679
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !403), !dbg !1679
  call void @llvm.dbg.declare(metadata !{i8*** %xtb}, metadata !411), !dbg !1680
  call void @llvm.dbg.declare(metadata !{i8*** %mtb}, metadata !412), !dbg !1680
  call void @llvm.dbg.declare(metadata !{i8*** %itb}, metadata !413), !dbg !1680
  call void @llvm.dbg.declare(metadata !{i8*** %dtb}, metadata !414), !dbg !1680
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1681
  %0 = load i32* %alen, align 4, !dbg !1681, !tbaa !579
  %add = add nsw i32 %0, 1, !dbg !1681
  %conv = sext i32 %add to i64, !dbg !1681
  %mul = shl nsw i64 %conv, 3, !dbg !1681
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2044, i64 %mul) #6, !dbg !1681
  %1 = bitcast i8* %call to float**, !dbg !1681
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !415), !dbg !1681
  %2 = load i32* %alen, align 4, !dbg !1682, !tbaa !579
  %add2 = add nsw i32 %2, 1, !dbg !1682
  %conv3 = sext i32 %add2 to i64, !dbg !1682
  %mul4 = shl nsw i64 %conv3, 2, !dbg !1682
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2045, i64 %mul4) #6, !dbg !1682
  %3 = bitcast i8* %call5 to float*, !dbg !1682
  call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !416), !dbg !1682
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !417), !dbg !1683
  %4 = load i32* %alen, align 4, !dbg !1683, !tbaa !579
  %cmp1220 = icmp slt i32 %4, 1, !dbg !1683
  br i1 %cmp1220, label %for.end, label %for.body, !dbg !1683

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1243 = phi i64 [ %indvars.iv.next1244, %for.body ], [ 1, %entry ]
  %5 = load i32* @Alphabet_size, align 4, !dbg !1685, !tbaa !579
  %conv8 = sext i32 %5 to i64, !dbg !1685
  %mul9 = shl nsw i64 %conv8, 2, !dbg !1685
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2047, i64 %mul9) #6, !dbg !1685
  %6 = bitcast i8* %call10 to float*, !dbg !1685
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv1243, !dbg !1685
  store float* %6, float** %arrayidx, align 8, !dbg !1685, !tbaa !555
  %7 = load i32* @Alphabet_size, align 4, !dbg !1687, !tbaa !579
  call void @FSet(float* %6, i32 %7, float 0.000000e+00) #6, !dbg !1687
  %indvars.iv.next1244 = add i64 %indvars.iv1243, 1, !dbg !1683
  %8 = load i32* %alen, align 4, !dbg !1683, !tbaa !579
  %9 = trunc i64 %indvars.iv1243 to i32, !dbg !1683
  %cmp = icmp slt i32 %9, %8, !dbg !1683
  br i1 %cmp, label %for.body, label %for.end, !dbg !1683

for.end:                                          ; preds = %for.body, %entry
  store float -9.999000e+03, float* %3, align 4, !dbg !1688, !tbaa !772
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !1689
  %10 = load float** %wgt, align 8, !dbg !1689, !tbaa !555
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1689
  %11 = load i32* %nseq, align 4, !dbg !1689, !tbaa !579
  %call14 = call float @FSum(float* %10, i32 %11) #6, !dbg !1689
  call void @llvm.dbg.value(metadata !{float %call14}, i64 0, metadata !422), !dbg !1689
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !417), !dbg !1690
  %12 = load i32* %alen, align 4, !dbg !1690, !tbaa !579
  %cmp171218 = icmp slt i32 %12, 1, !dbg !1690
  br i1 %cmp171218, label %for.end99, label %for.cond20.preheader.lr.ph, !dbg !1690

for.cond20.preheader.lr.ph:                       ; preds = %for.end
  %conv91 = fdiv float 1.000000e+00, %call14, !dbg !1692
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1694
  br label %for.cond20.preheader, !dbg !1690

for.cond20.preheader:                             ; preds = %for.end87, %for.cond20.preheader.lr.ph
  %indvars.iv1240 = phi i64 [ %indvars.iv.next1241, %for.end87 ], [ 1, %for.cond20.preheader.lr.ph ]
  %13 = load i32* %nseq, align 4, !dbg !1696, !tbaa !579
  %cmp221216 = icmp sgt i32 %13, 0, !dbg !1696
  br i1 %cmp221216, label %for.body24.lr.ph, label %for.cond20.preheader.for.end87_crit_edge, !dbg !1696

for.cond20.preheader.for.end87_crit_edge:         ; preds = %for.cond20.preheader
  %arrayidx89.pre = getelementptr inbounds float** %1, i64 %indvars.iv1240, !dbg !1692
  br label %for.end87, !dbg !1696

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %14 = add nsw i64 %indvars.iv1240, -1, !dbg !1694
  %arrayidx72 = getelementptr inbounds float** %1, i64 %indvars.iv1240, !dbg !1697
  br label %for.body24, !dbg !1696

for.body24:                                       ; preds = %for.inc85, %for.body24.lr.ph
  %15 = phi i32 [ %13, %for.body24.lr.ph ], [ %22, %for.inc85 ]
  %indvars.iv1238 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next1239, %for.inc85 ]
  %16 = load i8*** %aseq, align 8, !dbg !1694, !tbaa !555
  %arrayidx27 = getelementptr inbounds i8** %16, i64 %indvars.iv1238, !dbg !1694
  %17 = load i8** %arrayidx27, align 8, !dbg !1694, !tbaa !555
  %arrayidx28 = getelementptr inbounds i8* %17, i64 %14, !dbg !1694
  %18 = load i8* %arrayidx28, align 1, !dbg !1694, !tbaa !556
  switch i8 %18, label %if.then [
    i8 32, label %for.inc85
    i8 46, label %for.inc85
    i8 95, label %for.inc85
    i8 45, label %for.inc85
    i8 126, label %for.inc85
  ], !dbg !1694

if.then:                                          ; preds = %for.body24
  %conv29 = sext i8 %18 to i32, !dbg !1694
  %19 = load float** %arrayidx72, align 8, !dbg !1697, !tbaa !555
  %call80 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv29) #9, !dbg !1697
  %sub.ptr.lhs.cast = ptrtoint i8* %call80 to i64, !dbg !1697
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !1697
  %conv81 = trunc i64 %sub.ptr.sub to i8, !dbg !1697
  %20 = load float** %wgt, align 8, !dbg !1697, !tbaa !555
  %arrayidx84 = getelementptr inbounds float* %20, i64 %indvars.iv1238, !dbg !1697
  %21 = load float* %arrayidx84, align 4, !dbg !1697, !tbaa !772
  call void @P7CountSymbol(float* %19, i8 signext %conv81, float %21) #6, !dbg !1697
  %.pre1246 = load i32* %nseq, align 4, !dbg !1696, !tbaa !579
  br label %for.inc85, !dbg !1697

for.inc85:                                        ; preds = %for.body24, %for.body24, %for.body24, %for.body24, %for.body24, %if.then
  %22 = phi i32 [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %.pre1246, %if.then ], !dbg !1696
  %indvars.iv.next1239 = add i64 %indvars.iv1238, 1, !dbg !1696
  %23 = trunc i64 %indvars.iv.next1239 to i32, !dbg !1696
  %cmp22 = icmp slt i32 %23, %22, !dbg !1696
  br i1 %cmp22, label %for.body24, label %for.end87, !dbg !1696

for.end87:                                        ; preds = %for.inc85, %for.cond20.preheader.for.end87_crit_edge
  %arrayidx89.pre-phi = phi float** [ %arrayidx89.pre, %for.cond20.preheader.for.end87_crit_edge ], [ %arrayidx72, %for.inc85 ], !dbg !1692
  %24 = load float** %arrayidx89.pre-phi, align 8, !dbg !1692, !tbaa !555
  %25 = load i32* @Alphabet_size, align 4, !dbg !1692, !tbaa !579
  call void @FScale(float* %24, i32 %25, float %conv91) #6, !dbg !1692
  %26 = load float** %arrayidx89.pre-phi, align 8, !dbg !1698, !tbaa !555
  %27 = load i32* @Alphabet_size, align 4, !dbg !1698, !tbaa !579
  %call94 = call float @FSum(float* %26, i32 %27) #6, !dbg !1698
  %arrayidx96 = getelementptr inbounds float* %3, i64 %indvars.iv1240, !dbg !1698
  store float %call94, float* %arrayidx96, align 4, !dbg !1698, !tbaa !772
  %indvars.iv.next1241 = add i64 %indvars.iv1240, 1, !dbg !1690
  %28 = load i32* %alen, align 4, !dbg !1690, !tbaa !579
  %29 = trunc i64 %indvars.iv1240 to i32, !dbg !1690
  %cmp17 = icmp slt i32 %29, %28, !dbg !1690
  br i1 %cmp17, label %for.cond20.preheader, label %for.end99, !dbg !1690

for.end99:                                        ; preds = %for.end87, %for.end
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1699
  %30 = load i32* %M, align 4, !dbg !1699, !tbaa !579
  call void @llvm.dbg.value(metadata !748, i64 0, metadata !1700) #8, !dbg !1701
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !1702) #8, !dbg !1701
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %30, i32 0, i32 0) #6, !dbg !1703
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !1704) #8, !dbg !1703
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0, !dbg !1705
  %31 = load i32*** %xmx1.i, align 8, !dbg !1705, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1705
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !1706), !dbg !1701
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1707
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1708
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1709
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1709
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1709
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1710
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1715
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1716
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1717
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1718
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1720
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1721
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1722
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1723
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1724
  call void @llvm.dbg.value(metadata !{i32** %31}, i64 0, metadata !407), !dbg !1725
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1, !dbg !1726
  %32 = load i32*** %mmx4.i, align 8, !dbg !1726, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1726
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !1727), !dbg !1701
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1728
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1731
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1732
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1733
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1734
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1710
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1735
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1736
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1740
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1741
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1742
  call void @llvm.dbg.value(metadata !{i32** %32}, i64 0, metadata !408), !dbg !1718
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2, !dbg !1744
  %33 = load i32*** %imx8.i, align 8, !dbg !1744, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1744
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !1745), !dbg !1701
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1728
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1731
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1734
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1746
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1742
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1747
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1748
  call void @llvm.dbg.value(metadata !{i32** %33}, i64 0, metadata !409), !dbg !1752
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3, !dbg !1753
  %34 = load i32*** %dmx12.i, align 8, !dbg !1753, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1753
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !1754), !dbg !1701
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1728
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1731
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1735
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1755
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1741
  call void @llvm.dbg.value(metadata !{i32** %34}, i64 0, metadata !410), !dbg !1756
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call.i}, i64 0, metadata !404), !dbg !1699
  %35 = load i32* %alen, align 4, !dbg !1757, !tbaa !579
  %add102 = add nsw i32 %35, 1, !dbg !1757
  %36 = load i32* %M, align 4, !dbg !1757, !tbaa !579
  %call104 = call %struct.dpshadow_s* @AllocShadowMatrix(i32 %add102, i32 %36, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb) #7, !dbg !1757
  call void @llvm.dbg.value(metadata !{%struct.dpshadow_s* %call104}, i64 0, metadata !405), !dbg !1757
  %37 = load i32** %31, align 8, !dbg !1707, !tbaa !555
  %arrayidx106 = getelementptr inbounds i32* %37, i64 4, !dbg !1707
  store i32 0, i32* %arrayidx106, align 4, !dbg !1707, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1758
  %38 = load i8*** %xtb, align 8, !dbg !1758, !tbaa !555
  %39 = load i8** %38, align 8, !dbg !1758, !tbaa !555
  %arrayidx108 = getelementptr inbounds i8* %39, i64 4, !dbg !1758
  store i8 4, i8* %arrayidx108, align 1, !dbg !1758, !tbaa !556
  %arrayidx110 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !1708
  %40 = load i32* %arrayidx110, align 4, !dbg !1708, !tbaa !579
  %41 = load i32** %31, align 8, !dbg !1708, !tbaa !555
  store i32 %40, i32* %41, align 4, !dbg !1708, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1759
  %42 = load i8*** %xtb, align 8, !dbg !1759, !tbaa !555
  %43 = load i8** %42, align 8, !dbg !1759, !tbaa !555
  store i8 5, i8* %43, align 1, !dbg !1759, !tbaa !556
  %44 = load i32** %31, align 8, !dbg !1709, !tbaa !555
  %arrayidx116 = getelementptr inbounds i32* %44, i64 3, !dbg !1709
  store i32 -987654321, i32* %arrayidx116, align 4, !dbg !1709, !tbaa !579
  %arrayidx118 = getelementptr inbounds i32* %44, i64 2, !dbg !1709
  store i32 -987654321, i32* %arrayidx118, align 4, !dbg !1709, !tbaa !579
  %arrayidx120 = getelementptr inbounds i32* %44, i64 1, !dbg !1709
  store i32 -987654321, i32* %arrayidx120, align 4, !dbg !1709, !tbaa !579
  %esrc = getelementptr inbounds %struct.dpshadow_s* %call104, i64 0, i32 4, !dbg !1760
  %45 = load i32** %esrc, align 8, !dbg !1760, !tbaa !555
  store i32 0, i32* %45, align 4, !dbg !1760, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1761
  %46 = load i8*** %xtb, align 8, !dbg !1761, !tbaa !555
  %47 = load i8** %46, align 8, !dbg !1761, !tbaa !555
  %arrayidx123 = getelementptr inbounds i8* %47, i64 3, !dbg !1761
  store i8 0, i8* %arrayidx123, align 1, !dbg !1761, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1761
  %48 = load i8*** %xtb, align 8, !dbg !1761, !tbaa !555
  %49 = load i8** %48, align 8, !dbg !1761, !tbaa !555
  %arrayidx125 = getelementptr inbounds i8* %49, i64 2, !dbg !1761
  store i8 0, i8* %arrayidx125, align 1, !dbg !1761, !tbaa !556
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !418), !dbg !1762
  %50 = load i32* %M, align 4, !dbg !1762, !tbaa !579
  %cmp1281214 = icmp slt i32 %50, 0, !dbg !1762
  br i1 %cmp1281214, label %for.cond152.preheader, label %for.body130, !dbg !1762

for.cond152.preheader:                            ; preds = %for.body130, %for.end99
  %51 = load i32* %alen, align 4, !dbg !1763, !tbaa !579
  %cmp1541212 = icmp slt i32 %51, 1, !dbg !1763
  br i1 %cmp1541212, label %for.end837, label %for.body156.lr.ph, !dbg !1763

for.body156.lr.ph:                                ; preds = %for.cond152.preheader
  %arrayidx650 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !1716
  %arrayidx776 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !1723
  %arrayidx811 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !1724
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !1718
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !1733
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !1710
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !1764
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !1765
  br label %for.body156, !dbg !1763

for.body130:                                      ; preds = %for.end99, %for.body130
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %for.body130 ], [ 0, %for.end99 ]
  %52 = load i32** %34, align 8, !dbg !1728, !tbaa !555
  %arrayidx133 = getelementptr inbounds i32* %52, i64 %indvars.iv1236, !dbg !1728
  store i32 -987654321, i32* %arrayidx133, align 4, !dbg !1728, !tbaa !579
  %53 = load i32** %33, align 8, !dbg !1728, !tbaa !555
  %arrayidx136 = getelementptr inbounds i32* %53, i64 %indvars.iv1236, !dbg !1728
  store i32 -987654321, i32* %arrayidx136, align 4, !dbg !1728, !tbaa !579
  %54 = load i32** %32, align 8, !dbg !1728, !tbaa !555
  %arrayidx139 = getelementptr inbounds i32* %54, i64 %indvars.iv1236, !dbg !1728
  store i32 -987654321, i32* %arrayidx139, align 4, !dbg !1728, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !414), !dbg !1766
  %55 = load i8*** %dtb, align 8, !dbg !1766, !tbaa !555
  %56 = load i8** %55, align 8, !dbg !1766, !tbaa !555
  %arrayidx142 = getelementptr inbounds i8* %56, i64 %indvars.iv1236, !dbg !1766
  store i8 0, i8* %arrayidx142, align 1, !dbg !1766, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !413), !dbg !1766
  %57 = load i8*** %itb, align 8, !dbg !1766, !tbaa !555
  %58 = load i8** %57, align 8, !dbg !1766, !tbaa !555
  %arrayidx145 = getelementptr inbounds i8* %58, i64 %indvars.iv1236, !dbg !1766
  store i8 0, i8* %arrayidx145, align 1, !dbg !1766, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1766
  %59 = load i8*** %mtb, align 8, !dbg !1766, !tbaa !555
  %60 = load i8** %59, align 8, !dbg !1766, !tbaa !555
  %arrayidx148 = getelementptr inbounds i8* %60, i64 %indvars.iv1236, !dbg !1766
  store i8 0, i8* %arrayidx148, align 1, !dbg !1766, !tbaa !556
  %indvars.iv.next1237 = add i64 %indvars.iv1236, 1, !dbg !1762
  %61 = load i32* %M, align 4, !dbg !1762, !tbaa !579
  %62 = trunc i64 %indvars.iv1236 to i32, !dbg !1762
  %cmp128 = icmp slt i32 %62, %61, !dbg !1762
  br i1 %cmp128, label %for.body130, label %for.cond152.preheader, !dbg !1762

for.body156:                                      ; preds = %for.inc835, %for.body156.lr.ph
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %for.inc835 ], [ 1, %for.body156.lr.ph ]
  %63 = trunc i64 %indvars.iv1232 to i32, !dbg !1767
  %rem = srem i32 %63, 2, !dbg !1767
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !423), !dbg !1767
  %lnot = icmp eq i32 %rem, 0, !dbg !1768
  %idxprom157 = sext i32 %rem to i64, !dbg !1731
  %arrayidx158 = getelementptr inbounds i32** %34, i64 %idxprom157, !dbg !1731
  %64 = load i32** %arrayidx158, align 8, !dbg !1731, !tbaa !555
  store i32 -987654321, i32* %64, align 4, !dbg !1731, !tbaa !579
  %arrayidx161 = getelementptr inbounds i32** %33, i64 %idxprom157, !dbg !1731
  %65 = load i32** %arrayidx161, align 8, !dbg !1731, !tbaa !555
  store i32 -987654321, i32* %65, align 4, !dbg !1731, !tbaa !579
  %arrayidx164 = getelementptr inbounds i32** %32, i64 %idxprom157, !dbg !1731
  %66 = load i32** %arrayidx164, align 8, !dbg !1731, !tbaa !555
  store i32 -987654321, i32* %66, align 4, !dbg !1731, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !414), !dbg !1769
  %67 = load i8*** %dtb, align 8, !dbg !1769, !tbaa !555
  %arrayidx167 = getelementptr inbounds i8** %67, i64 %indvars.iv1232, !dbg !1769
  %68 = load i8** %arrayidx167, align 8, !dbg !1769, !tbaa !555
  store i8 0, i8* %68, align 1, !dbg !1769, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !413), !dbg !1769
  %69 = load i8*** %itb, align 8, !dbg !1769, !tbaa !555
  %arrayidx170 = getelementptr inbounds i8** %69, i64 %indvars.iv1232, !dbg !1769
  %70 = load i8** %arrayidx170, align 8, !dbg !1769, !tbaa !555
  store i8 0, i8* %70, align 1, !dbg !1769, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1769
  %71 = load i8*** %mtb, align 8, !dbg !1769, !tbaa !555
  %arrayidx173 = getelementptr inbounds i8** %71, i64 %indvars.iv1232, !dbg !1769
  %72 = load i8** %arrayidx173, align 8, !dbg !1769, !tbaa !555
  store i8 0, i8* %72, align 1, !dbg !1769, !tbaa !556
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !418), !dbg !1770
  %73 = load i32* %M, align 4, !dbg !1770, !tbaa !579
  %cmp1771208 = icmp slt i32 %73, 1, !dbg !1770
  %idxprom642.pre = zext i1 %lnot to i64, !dbg !1716
  br i1 %cmp1771208, label %for.body156.for.end635_crit_edge, label %for.body179.lr.ph, !dbg !1770

for.body156.for.end635_crit_edge:                 ; preds = %for.body156
  %arrayidx643.pre = getelementptr inbounds i32** %31, i64 %idxprom642.pre, !dbg !1716
  br label %for.end635, !dbg !1770

for.body179.lr.ph:                                ; preds = %for.body156
  %arrayidx191 = getelementptr inbounds i32** %32, i64 %idxprom642.pre, !dbg !1733
  %arrayidx232 = getelementptr inbounds i32** %33, i64 %idxprom642.pre, !dbg !1734
  %74 = add nsw i64 %indvars.iv1232, -1, !dbg !1734
  %arrayidx259 = getelementptr inbounds float* %3, i64 %74, !dbg !1734
  %arrayidx280 = getelementptr inbounds i32** %31, i64 %idxprom642.pre, !dbg !1710
  %arrayidx304 = getelementptr inbounds i32** %34, i64 %idxprom642.pre, !dbg !1735
  %arrayidx519 = getelementptr inbounds float* %3, i64 %indvars.iv1232, !dbg !1742
  %arrayidx594 = getelementptr inbounds float** %1, i64 %indvars.iv1232, !dbg !1764
  br label %for.body179, !dbg !1770

for.body179:                                      ; preds = %for.inc633.for.body179_crit_edge, %for.body179.lr.ph
  %indvars.iv1226 = phi i64 [ %indvars.iv.next1227, %for.inc633.for.body179_crit_edge ], [ 1, %for.body179.lr.ph ]
  %75 = load i32** %arrayidx164, align 8, !dbg !1732, !tbaa !555
  %arrayidx183 = getelementptr inbounds i32* %75, i64 %indvars.iv1226, !dbg !1732
  store i32 -987654321, i32* %arrayidx183, align 4, !dbg !1732, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1771
  %76 = load i8*** %mtb, align 8, !dbg !1771, !tbaa !555
  %arrayidx186 = getelementptr inbounds i8** %76, i64 %indvars.iv1232, !dbg !1771
  %77 = load i8** %arrayidx186, align 8, !dbg !1771, !tbaa !555
  %arrayidx187 = getelementptr inbounds i8* %77, i64 %indvars.iv1226, !dbg !1771
  store i8 0, i8* %arrayidx187, align 1, !dbg !1771, !tbaa !556
  %78 = add nsw i64 %indvars.iv1226, -1, !dbg !1733
  %79 = load i32** %arrayidx191, align 8, !dbg !1733, !tbaa !555
  %arrayidx192 = getelementptr inbounds i32* %79, i64 %78, !dbg !1733
  %80 = load i32* %arrayidx192, align 4, !dbg !1733, !tbaa !579
  %cmp193 = icmp sgt i32 %80, -987654321, !dbg !1733
  br i1 %cmp193, label %land.lhs.true, label %if.end228, !dbg !1733

land.lhs.true:                                    ; preds = %for.body179
  %81 = load i32*** %tsc, align 8, !dbg !1733, !tbaa !555
  %82 = load i32** %81, align 8, !dbg !1733, !tbaa !555
  %arrayidx198 = getelementptr inbounds i32* %82, i64 %78, !dbg !1733
  %83 = load i32* %arrayidx198, align 4, !dbg !1733, !tbaa !579
  %cmp199 = icmp sgt i32 %83, -987654321, !dbg !1733
  br i1 %cmp199, label %land.lhs.true201, label %if.end228, !dbg !1733

land.lhs.true201:                                 ; preds = %land.lhs.true
  %add212 = add nsw i32 %83, %80, !dbg !1733
  call void @llvm.dbg.value(metadata !{i32 %add212}, i64 0, metadata !421), !dbg !1733
  %84 = load i32** %arrayidx164, align 8, !dbg !1733, !tbaa !555
  %arrayidx216 = getelementptr inbounds i32* %84, i64 %indvars.iv1226, !dbg !1733
  %85 = load i32* %arrayidx216, align 4, !dbg !1733, !tbaa !579
  %cmp217 = icmp sgt i32 %add212, %85, !dbg !1733
  br i1 %cmp217, label %if.then219, label %if.end228, !dbg !1733

if.then219:                                       ; preds = %land.lhs.true201
  store i32 %add212, i32* %arrayidx216, align 4, !dbg !1772, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1772
  %86 = load i8*** %mtb, align 8, !dbg !1772, !tbaa !555
  %arrayidx226 = getelementptr inbounds i8** %86, i64 %indvars.iv1232, !dbg !1772
  %87 = load i8** %arrayidx226, align 8, !dbg !1772, !tbaa !555
  %arrayidx227 = getelementptr inbounds i8* %87, i64 %indvars.iv1226, !dbg !1772
  store i8 1, i8* %arrayidx227, align 1, !dbg !1772, !tbaa !556
  br label %if.end228, !dbg !1772

if.end228:                                        ; preds = %if.then219, %land.lhs.true201, %land.lhs.true, %for.body179
  %88 = load i32** %arrayidx232, align 8, !dbg !1734, !tbaa !555
  %arrayidx233 = getelementptr inbounds i32* %88, i64 %78, !dbg !1734
  %89 = load i32* %arrayidx233, align 4, !dbg !1734, !tbaa !579
  %cmp234 = icmp sgt i32 %89, -987654321, !dbg !1734
  br i1 %cmp234, label %land.lhs.true236, label %if.end278, !dbg !1734

land.lhs.true236:                                 ; preds = %if.end228
  %90 = load i32*** %tsc, align 8, !dbg !1734, !tbaa !555
  %arrayidx240 = getelementptr inbounds i32** %90, i64 3, !dbg !1734
  %91 = load i32** %arrayidx240, align 8, !dbg !1734, !tbaa !555
  %arrayidx241 = getelementptr inbounds i32* %91, i64 %78, !dbg !1734
  %92 = load i32* %arrayidx241, align 4, !dbg !1734, !tbaa !579
  %cmp242 = icmp sgt i32 %92, -987654321, !dbg !1734
  br i1 %cmp242, label %land.lhs.true244, label %if.end278, !dbg !1734

land.lhs.true244:                                 ; preds = %land.lhs.true236
  %conv250 = sitofp i32 %89 to float, !dbg !1734
  %conv256 = sitofp i32 %92 to float, !dbg !1734
  %93 = load float* %arrayidx259, align 4, !dbg !1734, !tbaa !772
  %mul260 = fmul float %conv256, %93, !dbg !1734
  %add261 = fadd float %conv250, %mul260, !dbg !1734
  %conv262 = fptosi float %add261 to i32, !dbg !1734
  call void @llvm.dbg.value(metadata !{i32 %conv262}, i64 0, metadata !421), !dbg !1734
  %94 = load i32** %arrayidx164, align 8, !dbg !1734, !tbaa !555
  %arrayidx266 = getelementptr inbounds i32* %94, i64 %indvars.iv1226, !dbg !1734
  %95 = load i32* %arrayidx266, align 4, !dbg !1734, !tbaa !579
  %cmp267 = icmp sgt i32 %conv262, %95, !dbg !1734
  br i1 %cmp267, label %if.then269, label %if.end278, !dbg !1734

if.then269:                                       ; preds = %land.lhs.true244
  store i32 %conv262, i32* %arrayidx266, align 4, !dbg !1774, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1774
  %96 = load i8*** %mtb, align 8, !dbg !1774, !tbaa !555
  %arrayidx276 = getelementptr inbounds i8** %96, i64 %indvars.iv1232, !dbg !1774
  %97 = load i8** %arrayidx276, align 8, !dbg !1774, !tbaa !555
  %arrayidx277 = getelementptr inbounds i8* %97, i64 %indvars.iv1226, !dbg !1774
  store i8 3, i8* %arrayidx277, align 1, !dbg !1774, !tbaa !556
  br label %if.end278, !dbg !1774

if.end278:                                        ; preds = %land.lhs.true236, %if.end228, %if.then269, %land.lhs.true244
  %98 = load i32** %arrayidx280, align 8, !dbg !1710, !tbaa !555
  %99 = load i32* %98, align 4, !dbg !1710, !tbaa !579
  %100 = load i32** %bsc, align 8, !dbg !1710, !tbaa !555
  %arrayidx283 = getelementptr inbounds i32* %100, i64 %indvars.iv1226, !dbg !1710
  %101 = load i32* %arrayidx283, align 4, !dbg !1710, !tbaa !579
  %add284 = add nsw i32 %101, %99, !dbg !1710
  call void @llvm.dbg.value(metadata !{i32 %add284}, i64 0, metadata !421), !dbg !1710
  %102 = load i32** %arrayidx164, align 8, !dbg !1710, !tbaa !555
  %arrayidx288 = getelementptr inbounds i32* %102, i64 %indvars.iv1226, !dbg !1710
  %103 = load i32* %arrayidx288, align 4, !dbg !1710, !tbaa !579
  %cmp289 = icmp sgt i32 %add284, %103, !dbg !1710
  br i1 %cmp289, label %if.then291, label %if.end300, !dbg !1710

if.then291:                                       ; preds = %if.end278
  store i32 %add284, i32* %arrayidx288, align 4, !dbg !1776, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1776
  %104 = load i8*** %mtb, align 8, !dbg !1776, !tbaa !555
  %arrayidx298 = getelementptr inbounds i8** %104, i64 %indvars.iv1232, !dbg !1776
  %105 = load i8** %arrayidx298, align 8, !dbg !1776, !tbaa !555
  %arrayidx299 = getelementptr inbounds i8* %105, i64 %indvars.iv1226, !dbg !1776
  store i8 6, i8* %arrayidx299, align 1, !dbg !1776, !tbaa !556
  br label %if.end300, !dbg !1776

if.end300:                                        ; preds = %if.then291, %if.end278
  %106 = load i32** %arrayidx304, align 8, !dbg !1735, !tbaa !555
  %arrayidx305 = getelementptr inbounds i32* %106, i64 %78, !dbg !1735
  %107 = load i32* %arrayidx305, align 4, !dbg !1735, !tbaa !579
  %cmp306 = icmp sgt i32 %107, -987654321, !dbg !1735
  br i1 %cmp306, label %land.lhs.true308, label %for.cond344.preheader, !dbg !1735

land.lhs.true308:                                 ; preds = %if.end300
  %108 = load i32*** %tsc, align 8, !dbg !1735, !tbaa !555
  %arrayidx312 = getelementptr inbounds i32** %108, i64 5, !dbg !1735
  %109 = load i32** %arrayidx312, align 8, !dbg !1735, !tbaa !555
  %arrayidx313 = getelementptr inbounds i32* %109, i64 %78, !dbg !1735
  %110 = load i32* %arrayidx313, align 4, !dbg !1735, !tbaa !579
  %cmp314 = icmp sgt i32 %110, -987654321, !dbg !1735
  br i1 %cmp314, label %land.lhs.true316, label %for.cond344.preheader, !dbg !1735

land.lhs.true316:                                 ; preds = %land.lhs.true308
  %add327 = add nsw i32 %110, %107, !dbg !1735
  call void @llvm.dbg.value(metadata !{i32 %add327}, i64 0, metadata !421), !dbg !1735
  %111 = load i32** %arrayidx164, align 8, !dbg !1735, !tbaa !555
  %arrayidx331 = getelementptr inbounds i32* %111, i64 %indvars.iv1226, !dbg !1735
  %112 = load i32* %arrayidx331, align 4, !dbg !1735, !tbaa !579
  %cmp332 = icmp sgt i32 %add327, %112, !dbg !1735
  br i1 %cmp332, label %if.then334, label %for.cond344.preheader, !dbg !1735

if.then334:                                       ; preds = %land.lhs.true316
  store i32 %add327, i32* %arrayidx331, align 4, !dbg !1778, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %mtb}, i64 0, metadata !412), !dbg !1778
  %113 = load i8*** %mtb, align 8, !dbg !1778, !tbaa !555
  %arrayidx341 = getelementptr inbounds i8** %113, i64 %indvars.iv1232, !dbg !1778
  %114 = load i8** %arrayidx341, align 8, !dbg !1778, !tbaa !555
  %arrayidx342 = getelementptr inbounds i8* %114, i64 %indvars.iv1226, !dbg !1778
  store i8 2, i8* %arrayidx342, align 1, !dbg !1778, !tbaa !556
  br label %for.cond344.preheader, !dbg !1778

for.cond344.preheader:                            ; preds = %if.then334, %land.lhs.true316, %land.lhs.true308, %if.end300
  %115 = load i32* @Alphabet_size, align 4, !dbg !1780, !tbaa !579
  %cmp3451204 = icmp sgt i32 %115, 0, !dbg !1780
  br i1 %cmp3451204, label %for.body347.lr.ph, label %for.end387, !dbg !1780

for.body347.lr.ph:                                ; preds = %for.cond344.preheader
  %116 = load float** %arrayidx594, align 8, !dbg !1765, !tbaa !555
  br label %for.body347, !dbg !1780

for.body347:                                      ; preds = %for.body347.lr.ph, %if.end366
  %indvars.iv1222 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next1223, %if.end366 ]
  %arrayidx351 = getelementptr inbounds float* %116, i64 %indvars.iv1222, !dbg !1765
  %117 = load float* %arrayidx351, align 4, !dbg !1765, !tbaa !772
  %cmp352 = fcmp ogt float %117, 0.000000e+00, !dbg !1765
  %118 = load i32*** %msc, align 8, !dbg !1765, !tbaa !555
  %arrayidx357 = getelementptr inbounds i32** %118, i64 %indvars.iv1222, !dbg !1765
  %119 = load i32** %arrayidx357, align 8, !dbg !1765, !tbaa !555
  %arrayidx358 = getelementptr inbounds i32* %119, i64 %indvars.iv1226, !dbg !1765
  %120 = load i32* %arrayidx358, align 4, !dbg !1765, !tbaa !579
  %cmp359 = icmp eq i32 %120, -987654321, !dbg !1765
  %or.cond = and i1 %cmp352, %cmp359, !dbg !1765
  br i1 %or.cond, label %if.then361, label %if.end366, !dbg !1765

if.then361:                                       ; preds = %for.body347
  %121 = load i32** %arrayidx164, align 8, !dbg !1736, !tbaa !555
  %arrayidx365 = getelementptr inbounds i32* %121, i64 %indvars.iv1226, !dbg !1736
  store i32 -987654321, i32* %arrayidx365, align 4, !dbg !1736, !tbaa !579
  br label %for.end387, !dbg !1736

if.end366:                                        ; preds = %for.body347
  %conv372 = sitofp i32 %120 to float, !dbg !1740
  %mul377 = fmul float %conv372, %117, !dbg !1740
  %122 = load i32** %arrayidx164, align 8, !dbg !1740, !tbaa !555
  %arrayidx381 = getelementptr inbounds i32* %122, i64 %indvars.iv1226, !dbg !1740
  %123 = load i32* %arrayidx381, align 4, !dbg !1740, !tbaa !579
  %conv382 = sitofp i32 %123 to float, !dbg !1740
  %add383 = fadd float %mul377, %conv382, !dbg !1740
  %conv384 = fptosi float %add383 to i32, !dbg !1740
  store i32 %conv384, i32* %arrayidx381, align 4, !dbg !1740, !tbaa !579
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 1, !dbg !1780
  %124 = load i32* @Alphabet_size, align 4, !dbg !1780, !tbaa !579
  %125 = trunc i64 %indvars.iv.next1223 to i32, !dbg !1780
  %cmp345 = icmp slt i32 %125, %124, !dbg !1780
  br i1 %cmp345, label %for.body347, label %for.end387, !dbg !1780

for.end387:                                       ; preds = %for.cond344.preheader, %if.end366, %if.then361
  %126 = load i32** %arrayidx158, align 8, !dbg !1755, !tbaa !555
  %arrayidx391 = getelementptr inbounds i32* %126, i64 %indvars.iv1226, !dbg !1755
  store i32 -987654321, i32* %arrayidx391, align 4, !dbg !1755, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !414), !dbg !1781
  %127 = load i8*** %dtb, align 8, !dbg !1781, !tbaa !555
  %arrayidx394 = getelementptr inbounds i8** %127, i64 %indvars.iv1232, !dbg !1781
  %128 = load i8** %arrayidx394, align 8, !dbg !1781, !tbaa !555
  %arrayidx395 = getelementptr inbounds i8* %128, i64 %indvars.iv1226, !dbg !1781
  store i8 0, i8* %arrayidx395, align 1, !dbg !1781, !tbaa !556
  %129 = load i32** %arrayidx164, align 8, !dbg !1741, !tbaa !555
  %arrayidx400 = getelementptr inbounds i32* %129, i64 %78, !dbg !1741
  %130 = load i32* %arrayidx400, align 4, !dbg !1741, !tbaa !579
  %cmp401 = icmp sgt i32 %130, -987654321, !dbg !1741
  br i1 %cmp401, label %land.lhs.true403, label %if.end438, !dbg !1741

land.lhs.true403:                                 ; preds = %for.end387
  %131 = load i32*** %tsc, align 8, !dbg !1741, !tbaa !555
  %arrayidx407 = getelementptr inbounds i32** %131, i64 2, !dbg !1741
  %132 = load i32** %arrayidx407, align 8, !dbg !1741, !tbaa !555
  %arrayidx408 = getelementptr inbounds i32* %132, i64 %78, !dbg !1741
  %133 = load i32* %arrayidx408, align 4, !dbg !1741, !tbaa !579
  %cmp409 = icmp sgt i32 %133, -987654321, !dbg !1741
  br i1 %cmp409, label %land.lhs.true411, label %if.end438, !dbg !1741

land.lhs.true411:                                 ; preds = %land.lhs.true403
  %add422 = add nsw i32 %133, %130, !dbg !1741
  call void @llvm.dbg.value(metadata !{i32 %add422}, i64 0, metadata !421), !dbg !1741
  %134 = load i32** %arrayidx158, align 8, !dbg !1741, !tbaa !555
  %arrayidx426 = getelementptr inbounds i32* %134, i64 %indvars.iv1226, !dbg !1741
  %135 = load i32* %arrayidx426, align 4, !dbg !1741, !tbaa !579
  %cmp427 = icmp sgt i32 %add422, %135, !dbg !1741
  br i1 %cmp427, label %if.then429, label %if.end438, !dbg !1741

if.then429:                                       ; preds = %land.lhs.true411
  store i32 %add422, i32* %arrayidx426, align 4, !dbg !1782, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !414), !dbg !1782
  %136 = load i8*** %dtb, align 8, !dbg !1782, !tbaa !555
  %arrayidx436 = getelementptr inbounds i8** %136, i64 %indvars.iv1232, !dbg !1782
  %137 = load i8** %arrayidx436, align 8, !dbg !1782, !tbaa !555
  %arrayidx437 = getelementptr inbounds i8* %137, i64 %indvars.iv1226, !dbg !1782
  store i8 1, i8* %arrayidx437, align 1, !dbg !1782, !tbaa !556
  br label %if.end438, !dbg !1782

if.end438:                                        ; preds = %land.lhs.true403, %for.end387, %if.then429, %land.lhs.true411
  %138 = load i32** %arrayidx158, align 8, !dbg !1756, !tbaa !555
  %arrayidx443 = getelementptr inbounds i32* %138, i64 %78, !dbg !1756
  %139 = load i32* %arrayidx443, align 4, !dbg !1756, !tbaa !579
  %cmp444 = icmp sgt i32 %139, -987654321, !dbg !1756
  br i1 %cmp444, label %land.lhs.true446, label %if.end481, !dbg !1756

land.lhs.true446:                                 ; preds = %if.end438
  %140 = load i32*** %tsc, align 8, !dbg !1756, !tbaa !555
  %arrayidx450 = getelementptr inbounds i32** %140, i64 6, !dbg !1756
  %141 = load i32** %arrayidx450, align 8, !dbg !1756, !tbaa !555
  %arrayidx451 = getelementptr inbounds i32* %141, i64 %78, !dbg !1756
  %142 = load i32* %arrayidx451, align 4, !dbg !1756, !tbaa !579
  %cmp452 = icmp sgt i32 %142, -987654321, !dbg !1756
  br i1 %cmp452, label %land.lhs.true454, label %if.end481, !dbg !1756

land.lhs.true454:                                 ; preds = %land.lhs.true446
  %add465 = add nsw i32 %142, %139, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32 %add465}, i64 0, metadata !421), !dbg !1756
  %arrayidx469 = getelementptr inbounds i32* %138, i64 %indvars.iv1226, !dbg !1756
  %143 = load i32* %arrayidx469, align 4, !dbg !1756, !tbaa !579
  %cmp470 = icmp sgt i32 %add465, %143, !dbg !1756
  br i1 %cmp470, label %if.then472, label %if.end481, !dbg !1756

if.then472:                                       ; preds = %land.lhs.true454
  store i32 %add465, i32* %arrayidx469, align 4, !dbg !1784, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %dtb}, i64 0, metadata !414), !dbg !1784
  %144 = load i8*** %dtb, align 8, !dbg !1784, !tbaa !555
  %arrayidx479 = getelementptr inbounds i8** %144, i64 %indvars.iv1232, !dbg !1784
  %145 = load i8** %arrayidx479, align 8, !dbg !1784, !tbaa !555
  %arrayidx480 = getelementptr inbounds i8* %145, i64 %indvars.iv1226, !dbg !1784
  store i8 2, i8* %arrayidx480, align 1, !dbg !1784, !tbaa !556
  br label %if.end481, !dbg !1784

if.end481:                                        ; preds = %if.then472, %land.lhs.true454, %land.lhs.true446, %if.end438
  %146 = load i32* %M, align 4, !dbg !1786, !tbaa !579
  %147 = trunc i64 %indvars.iv1226 to i32, !dbg !1786
  %cmp483 = icmp slt i32 %147, %146, !dbg !1786
  br i1 %cmp483, label %if.then485, label %for.inc633, !dbg !1786

if.then485:                                       ; preds = %if.end481
  %148 = load i32** %arrayidx161, align 8, !dbg !1746, !tbaa !555
  %arrayidx489 = getelementptr inbounds i32* %148, i64 %indvars.iv1226, !dbg !1746
  store i32 -987654321, i32* %arrayidx489, align 4, !dbg !1746, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !413), !dbg !1787
  %149 = load i8*** %itb, align 8, !dbg !1787, !tbaa !555
  %arrayidx492 = getelementptr inbounds i8** %149, i64 %indvars.iv1232, !dbg !1787
  %150 = load i8** %arrayidx492, align 8, !dbg !1787, !tbaa !555
  %arrayidx493 = getelementptr inbounds i8* %150, i64 %indvars.iv1226, !dbg !1787
  store i8 0, i8* %arrayidx493, align 1, !dbg !1787, !tbaa !556
  %151 = load i32** %arrayidx191, align 8, !dbg !1742, !tbaa !555
  %arrayidx497 = getelementptr inbounds i32* %151, i64 %indvars.iv1226, !dbg !1742
  %152 = load i32* %arrayidx497, align 4, !dbg !1742, !tbaa !579
  %cmp498 = icmp sgt i32 %152, -987654321, !dbg !1742
  br i1 %cmp498, label %land.lhs.true500, label %if.end538, !dbg !1742

land.lhs.true500:                                 ; preds = %if.then485
  %153 = load i32*** %tsc, align 8, !dbg !1742, !tbaa !555
  %arrayidx503 = getelementptr inbounds i32** %153, i64 1, !dbg !1742
  %154 = load i32** %arrayidx503, align 8, !dbg !1742, !tbaa !555
  %arrayidx504 = getelementptr inbounds i32* %154, i64 %indvars.iv1226, !dbg !1742
  %155 = load i32* %arrayidx504, align 4, !dbg !1742, !tbaa !579
  %cmp505 = icmp sgt i32 %155, -987654321, !dbg !1742
  br i1 %cmp505, label %land.lhs.true507, label %if.end538, !dbg !1742

land.lhs.true507:                                 ; preds = %land.lhs.true500
  %conv512 = sitofp i32 %152 to float, !dbg !1742
  %conv517 = sitofp i32 %155 to float, !dbg !1742
  %156 = load float* %arrayidx519, align 4, !dbg !1742, !tbaa !772
  %mul520 = fmul float %conv517, %156, !dbg !1742
  %add521 = fadd float %conv512, %mul520, !dbg !1742
  %conv522 = fptosi float %add521 to i32, !dbg !1742
  call void @llvm.dbg.value(metadata !{i32 %conv522}, i64 0, metadata !421), !dbg !1742
  %157 = load i32** %arrayidx161, align 8, !dbg !1742, !tbaa !555
  %arrayidx526 = getelementptr inbounds i32* %157, i64 %indvars.iv1226, !dbg !1742
  %158 = load i32* %arrayidx526, align 4, !dbg !1742, !tbaa !579
  %cmp527 = icmp sgt i32 %conv522, %158, !dbg !1742
  br i1 %cmp527, label %if.then529, label %if.end538, !dbg !1742

if.then529:                                       ; preds = %land.lhs.true507
  store i32 %conv522, i32* %arrayidx526, align 4, !dbg !1788, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !413), !dbg !1788
  %159 = load i8*** %itb, align 8, !dbg !1788, !tbaa !555
  %arrayidx536 = getelementptr inbounds i8** %159, i64 %indvars.iv1232, !dbg !1788
  %160 = load i8** %arrayidx536, align 8, !dbg !1788, !tbaa !555
  %arrayidx537 = getelementptr inbounds i8* %160, i64 %indvars.iv1226, !dbg !1788
  store i8 1, i8* %arrayidx537, align 1, !dbg !1788, !tbaa !556
  br label %if.end538, !dbg !1788

if.end538:                                        ; preds = %if.then529, %land.lhs.true507, %land.lhs.true500, %if.then485
  %161 = load i32** %arrayidx232, align 8, !dbg !1747, !tbaa !555
  %arrayidx542 = getelementptr inbounds i32* %161, i64 %indvars.iv1226, !dbg !1747
  %162 = load i32* %arrayidx542, align 4, !dbg !1747, !tbaa !579
  %cmp543 = icmp sgt i32 %162, -987654321, !dbg !1747
  br i1 %cmp543, label %land.lhs.true545, label %for.cond588.preheader, !dbg !1747

land.lhs.true545:                                 ; preds = %if.end538
  %163 = load i32*** %tsc, align 8, !dbg !1747, !tbaa !555
  %arrayidx548 = getelementptr inbounds i32** %163, i64 4, !dbg !1747
  %164 = load i32** %arrayidx548, align 8, !dbg !1747, !tbaa !555
  %arrayidx549 = getelementptr inbounds i32* %164, i64 %indvars.iv1226, !dbg !1747
  %165 = load i32* %arrayidx549, align 4, !dbg !1747, !tbaa !579
  %cmp550 = icmp sgt i32 %165, -987654321, !dbg !1747
  br i1 %cmp550, label %land.lhs.true552, label %for.cond588.preheader, !dbg !1747

land.lhs.true552:                                 ; preds = %land.lhs.true545
  %conv557 = sitofp i32 %162 to float, !dbg !1747
  %conv562 = sitofp i32 %165 to float, !dbg !1747
  %166 = load float* %arrayidx259, align 4, !dbg !1747, !tbaa !772
  %mul566 = fmul float %conv562, %166, !dbg !1747
  %167 = load float* %arrayidx519, align 4, !dbg !1747, !tbaa !772
  %mul569 = fmul float %mul566, %167, !dbg !1747
  %add570 = fadd float %conv557, %mul569, !dbg !1747
  %conv571 = fptosi float %add570 to i32, !dbg !1747
  call void @llvm.dbg.value(metadata !{i32 %conv571}, i64 0, metadata !421), !dbg !1747
  %168 = load i32** %arrayidx161, align 8, !dbg !1747, !tbaa !555
  %arrayidx575 = getelementptr inbounds i32* %168, i64 %indvars.iv1226, !dbg !1747
  %169 = load i32* %arrayidx575, align 4, !dbg !1747, !tbaa !579
  %cmp576 = icmp sgt i32 %conv571, %169, !dbg !1747
  br i1 %cmp576, label %if.then578, label %for.cond588.preheader, !dbg !1747

if.then578:                                       ; preds = %land.lhs.true552
  store i32 %conv571, i32* %arrayidx575, align 4, !dbg !1790, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %itb}, i64 0, metadata !413), !dbg !1790
  %170 = load i8*** %itb, align 8, !dbg !1790, !tbaa !555
  %arrayidx585 = getelementptr inbounds i8** %170, i64 %indvars.iv1232, !dbg !1790
  %171 = load i8** %arrayidx585, align 8, !dbg !1790, !tbaa !555
  %arrayidx586 = getelementptr inbounds i8* %171, i64 %indvars.iv1226, !dbg !1790
  store i8 3, i8* %arrayidx586, align 1, !dbg !1790, !tbaa !556
  br label %for.cond588.preheader, !dbg !1790

for.cond588.preheader:                            ; preds = %if.then578, %land.lhs.true552, %land.lhs.true545, %if.end538
  %172 = load i32* @Alphabet_size, align 4, !dbg !1792, !tbaa !579
  %cmp5891206 = icmp sgt i32 %172, 0, !dbg !1792
  br i1 %cmp5891206, label %for.body591.lr.ph, label %for.inc633, !dbg !1792

for.body591.lr.ph:                                ; preds = %for.cond588.preheader
  %173 = load float** %arrayidx594, align 8, !dbg !1764, !tbaa !555
  br label %for.body591, !dbg !1792

for.body591:                                      ; preds = %for.body591.lr.ph, %if.end610
  %indvars.iv1224 = phi i64 [ 0, %for.body591.lr.ph ], [ %indvars.iv.next1225, %if.end610 ]
  %arrayidx595 = getelementptr inbounds float* %173, i64 %indvars.iv1224, !dbg !1764
  %174 = load float* %arrayidx595, align 4, !dbg !1764, !tbaa !772
  %cmp596 = fcmp ogt float %174, 0.000000e+00, !dbg !1764
  %175 = load i32*** %isc, align 8, !dbg !1764, !tbaa !555
  %arrayidx601 = getelementptr inbounds i32** %175, i64 %indvars.iv1224, !dbg !1764
  %176 = load i32** %arrayidx601, align 8, !dbg !1764, !tbaa !555
  %arrayidx602 = getelementptr inbounds i32* %176, i64 %indvars.iv1226, !dbg !1764
  %177 = load i32* %arrayidx602, align 4, !dbg !1764, !tbaa !579
  %cmp603 = icmp eq i32 %177, -987654321, !dbg !1764
  %or.cond1253 = and i1 %cmp596, %cmp603, !dbg !1764
  br i1 %or.cond1253, label %if.then605, label %if.end610, !dbg !1764

if.then605:                                       ; preds = %for.body591
  %178 = load i32** %arrayidx161, align 8, !dbg !1748, !tbaa !555
  %arrayidx609 = getelementptr inbounds i32* %178, i64 %indvars.iv1226, !dbg !1748
  store i32 -987654321, i32* %arrayidx609, align 4, !dbg !1748, !tbaa !579
  br label %for.inc633, !dbg !1748

if.end610:                                        ; preds = %for.body591
  %conv616 = sitofp i32 %177 to float, !dbg !1752
  %mul621 = fmul float %conv616, %174, !dbg !1752
  %179 = load i32** %arrayidx161, align 8, !dbg !1752, !tbaa !555
  %arrayidx625 = getelementptr inbounds i32* %179, i64 %indvars.iv1226, !dbg !1752
  %180 = load i32* %arrayidx625, align 4, !dbg !1752, !tbaa !579
  %conv626 = sitofp i32 %180 to float, !dbg !1752
  %add627 = fadd float %mul621, %conv626, !dbg !1752
  %conv628 = fptosi float %add627 to i32, !dbg !1752
  store i32 %conv628, i32* %arrayidx625, align 4, !dbg !1752, !tbaa !579
  %indvars.iv.next1225 = add i64 %indvars.iv1224, 1, !dbg !1792
  %181 = load i32* @Alphabet_size, align 4, !dbg !1792, !tbaa !579
  %182 = trunc i64 %indvars.iv.next1225 to i32, !dbg !1792
  %cmp589 = icmp slt i32 %182, %181, !dbg !1792
  br i1 %cmp589, label %for.body591, label %for.inc633, !dbg !1792

for.inc633:                                       ; preds = %for.cond588.preheader, %if.end610, %if.end481, %if.then605
  %183 = load i32* %M, align 4, !dbg !1770, !tbaa !579
  %cmp177 = icmp slt i32 %147, %183, !dbg !1770
  br i1 %cmp177, label %for.inc633.for.body179_crit_edge, label %for.end635, !dbg !1770

for.inc633.for.body179_crit_edge:                 ; preds = %for.inc633
  %indvars.iv.next1227 = add i64 %indvars.iv1226, 1, !dbg !1770
  br label %for.body179, !dbg !1770

for.end635:                                       ; preds = %for.inc633, %for.body156.for.end635_crit_edge
  %arrayidx643.pre-phi = phi i32** [ %arrayidx643.pre, %for.body156.for.end635_crit_edge ], [ %arrayidx280, %for.inc633 ], !dbg !1716
  %arrayidx637 = getelementptr inbounds i32** %31, i64 %idxprom157, !dbg !1715
  %184 = load i32** %arrayidx637, align 8, !dbg !1715, !tbaa !555
  %arrayidx638 = getelementptr inbounds i32* %184, i64 4, !dbg !1715
  store i32 -987654321, i32* %arrayidx638, align 4, !dbg !1715, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1793
  %185 = load i8*** %xtb, align 8, !dbg !1793, !tbaa !555
  %arrayidx640 = getelementptr inbounds i8** %185, i64 %indvars.iv1232, !dbg !1793
  %186 = load i8** %arrayidx640, align 8, !dbg !1793, !tbaa !555
  %arrayidx641 = getelementptr inbounds i8* %186, i64 4, !dbg !1793
  store i8 0, i8* %arrayidx641, align 1, !dbg !1793, !tbaa !556
  %187 = load i32** %arrayidx643.pre-phi, align 8, !dbg !1716, !tbaa !555
  %arrayidx644 = getelementptr inbounds i32* %187, i64 4, !dbg !1716
  %188 = load i32* %arrayidx644, align 4, !dbg !1716, !tbaa !579
  %cmp645 = icmp sgt i32 %188, -987654321, !dbg !1716
  br i1 %cmp645, label %land.lhs.true647, label %if.end676, !dbg !1716

land.lhs.true647:                                 ; preds = %for.end635
  %189 = load i32* %arrayidx650, align 4, !dbg !1716, !tbaa !579
  %cmp651 = icmp sgt i32 %189, -987654321, !dbg !1716
  br i1 %cmp651, label %land.lhs.true653, label %if.end676, !dbg !1716

land.lhs.true653:                                 ; preds = %land.lhs.true647
  %conv657 = sitofp i32 %188 to float, !dbg !1716
  %conv661 = sitofp i32 %189 to float, !dbg !1716
  %arrayidx663 = getelementptr inbounds float* %3, i64 %indvars.iv1232, !dbg !1716
  %190 = load float* %arrayidx663, align 4, !dbg !1716, !tbaa !772
  %mul664 = fmul float %conv661, %190, !dbg !1716
  %add665 = fadd float %conv657, %mul664, !dbg !1716
  %conv666 = fptosi float %add665 to i32, !dbg !1716
  call void @llvm.dbg.value(metadata !{i32 %conv666}, i64 0, metadata !421), !dbg !1716
  %cmp667 = icmp sgt i32 %conv666, -987654321, !dbg !1716
  br i1 %cmp667, label %if.then669, label %if.end676, !dbg !1716

if.then669:                                       ; preds = %land.lhs.true653
  %191 = load i32** %arrayidx637, align 8, !dbg !1794, !tbaa !555
  %arrayidx672 = getelementptr inbounds i32* %191, i64 4, !dbg !1794
  store i32 %conv666, i32* %arrayidx672, align 4, !dbg !1794, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1794
  %192 = load i8*** %xtb, align 8, !dbg !1794, !tbaa !555
  %arrayidx674 = getelementptr inbounds i8** %192, i64 %indvars.iv1232, !dbg !1794
  %193 = load i8** %arrayidx674, align 8, !dbg !1794, !tbaa !555
  %arrayidx675 = getelementptr inbounds i8* %193, i64 4, !dbg !1794
  store i8 5, i8* %arrayidx675, align 1, !dbg !1794, !tbaa !556
  br label %if.end676, !dbg !1794

if.end676:                                        ; preds = %if.then669, %land.lhs.true653, %land.lhs.true647, %for.end635
  %194 = load i32** %arrayidx637, align 8, !dbg !1717, !tbaa !555
  %arrayidx679 = getelementptr inbounds i32* %194, i64 1, !dbg !1717
  store i32 -987654321, i32* %arrayidx679, align 4, !dbg !1717, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1796
  %195 = load i8*** %xtb, align 8, !dbg !1796, !tbaa !555
  %arrayidx681 = getelementptr inbounds i8** %195, i64 %indvars.iv1232, !dbg !1796
  %196 = load i8** %arrayidx681, align 8, !dbg !1796, !tbaa !555
  %arrayidx682 = getelementptr inbounds i8* %196, i64 1, !dbg !1796
  store i8 0, i8* %arrayidx682, align 1, !dbg !1796, !tbaa !556
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !418), !dbg !1797
  %197 = load i32* %M, align 4, !dbg !1797, !tbaa !579
  %cmp6851210 = icmp slt i32 %197, 1, !dbg !1797
  br i1 %cmp6851210, label %for.end723, label %for.body687.lr.ph, !dbg !1797

for.body687.lr.ph:                                ; preds = %if.end676
  %198 = load i32** %arrayidx164, align 8, !dbg !1718, !tbaa !555
  br label %for.body687, !dbg !1797

for.body687:                                      ; preds = %for.inc721, %for.body687.lr.ph
  %199 = phi i32 [ %207, %for.inc721 ], [ %197, %for.body687.lr.ph ]
  %indvars.iv1229 = phi i64 [ %indvars.iv.next1230, %for.inc721 ], [ 1, %for.body687.lr.ph ]
  %arrayidx691 = getelementptr inbounds i32* %198, i64 %indvars.iv1229, !dbg !1718
  %200 = load i32* %arrayidx691, align 4, !dbg !1718, !tbaa !579
  %cmp692 = icmp sgt i32 %200, -987654321, !dbg !1718
  br i1 %cmp692, label %land.lhs.true694, label %for.inc721, !dbg !1718

land.lhs.true694:                                 ; preds = %for.body687
  %201 = load i32** %esc, align 8, !dbg !1718, !tbaa !555
  %arrayidx696 = getelementptr inbounds i32* %201, i64 %indvars.iv1229, !dbg !1718
  %202 = load i32* %arrayidx696, align 4, !dbg !1718, !tbaa !579
  %cmp697 = icmp sgt i32 %202, -987654321, !dbg !1718
  br i1 %cmp697, label %land.lhs.true699, label %for.inc721, !dbg !1718

land.lhs.true699:                                 ; preds = %land.lhs.true694
  %add707 = add nsw i32 %202, %200, !dbg !1718
  call void @llvm.dbg.value(metadata !{i32 %add707}, i64 0, metadata !421), !dbg !1718
  %203 = load i32** %arrayidx637, align 8, !dbg !1718, !tbaa !555
  %arrayidx710 = getelementptr inbounds i32* %203, i64 1, !dbg !1718
  %204 = load i32* %arrayidx710, align 4, !dbg !1718, !tbaa !579
  %cmp711 = icmp sgt i32 %add707, %204, !dbg !1718
  br i1 %cmp711, label %if.then713, label %for.inc721, !dbg !1718

if.then713:                                       ; preds = %land.lhs.true699
  store i32 %add707, i32* %arrayidx710, align 4, !dbg !1798, !tbaa !579
  %205 = load i32** %esrc, align 8, !dbg !1798, !tbaa !555
  %arrayidx719 = getelementptr inbounds i32* %205, i64 %indvars.iv1232, !dbg !1798
  %206 = trunc i64 %indvars.iv1229 to i32, !dbg !1798
  store i32 %206, i32* %arrayidx719, align 4, !dbg !1798, !tbaa !579
  %.pre1245 = load i32* %M, align 4, !dbg !1797, !tbaa !579
  br label %for.inc721, !dbg !1798

for.inc721:                                       ; preds = %for.body687, %land.lhs.true694, %land.lhs.true699, %if.then713
  %207 = phi i32 [ %199, %for.body687 ], [ %199, %land.lhs.true694 ], [ %199, %land.lhs.true699 ], [ %.pre1245, %if.then713 ], !dbg !1797
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1, !dbg !1797
  %208 = trunc i64 %indvars.iv1229 to i32, !dbg !1797
  %cmp685 = icmp slt i32 %208, %207, !dbg !1797
  br i1 %cmp685, label %for.body687, label %for.end723, !dbg !1797

for.end723:                                       ; preds = %for.inc721, %if.end676
  %209 = load i32** %arrayidx637, align 8, !dbg !1720, !tbaa !555
  store i32 -987654321, i32* %209, align 4, !dbg !1720, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1800
  %210 = load i8*** %xtb, align 8, !dbg !1800, !tbaa !555
  %arrayidx728 = getelementptr inbounds i8** %210, i64 %indvars.iv1232, !dbg !1800
  %211 = load i8** %arrayidx728, align 8, !dbg !1800, !tbaa !555
  store i8 0, i8* %211, align 1, !dbg !1800, !tbaa !556
  %212 = load i32** %arrayidx637, align 8, !dbg !1721, !tbaa !555
  %arrayidx732 = getelementptr inbounds i32* %212, i64 4, !dbg !1721
  %213 = load i32* %arrayidx732, align 4, !dbg !1721, !tbaa !579
  %cmp733 = icmp sgt i32 %213, -987654321, !dbg !1721
  br i1 %cmp733, label %land.lhs.true735, label %if.end761, !dbg !1721

land.lhs.true735:                                 ; preds = %for.end723
  %214 = load i32* %arrayidx110, align 4, !dbg !1721, !tbaa !579
  %cmp739 = icmp sgt i32 %214, -987654321, !dbg !1721
  br i1 %cmp739, label %land.lhs.true741, label %if.end761, !dbg !1721

land.lhs.true741:                                 ; preds = %land.lhs.true735
  %add748 = add nsw i32 %214, %213, !dbg !1721
  call void @llvm.dbg.value(metadata !{i32 %add748}, i64 0, metadata !421), !dbg !1721
  %215 = load i32* %212, align 4, !dbg !1721, !tbaa !579
  %cmp752 = icmp sgt i32 %add748, %215, !dbg !1721
  br i1 %cmp752, label %if.then754, label %if.end761, !dbg !1721

if.then754:                                       ; preds = %land.lhs.true741
  store i32 %add748, i32* %212, align 4, !dbg !1801, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1801
  %216 = load i8*** %xtb, align 8, !dbg !1801, !tbaa !555
  %arrayidx759 = getelementptr inbounds i8** %216, i64 %indvars.iv1232, !dbg !1801
  %217 = load i8** %arrayidx759, align 8, !dbg !1801, !tbaa !555
  store i8 5, i8* %217, align 1, !dbg !1801, !tbaa !556
  %.pre = load i32** %arrayidx637, align 8, !dbg !1722, !tbaa !555
  br label %if.end761, !dbg !1801

if.end761:                                        ; preds = %if.then754, %land.lhs.true741, %land.lhs.true735, %for.end723
  %218 = phi i32* [ %.pre, %if.then754 ], [ %212, %land.lhs.true741 ], [ %212, %land.lhs.true735 ], [ %212, %for.end723 ]
  %arrayidx764 = getelementptr inbounds i32* %218, i64 2, !dbg !1722
  store i32 -987654321, i32* %arrayidx764, align 4, !dbg !1722, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1803
  %219 = load i8*** %xtb, align 8, !dbg !1803, !tbaa !555
  %arrayidx766 = getelementptr inbounds i8** %219, i64 %indvars.iv1232, !dbg !1803
  %220 = load i8** %arrayidx766, align 8, !dbg !1803, !tbaa !555
  %arrayidx767 = getelementptr inbounds i8* %220, i64 2, !dbg !1803
  store i8 0, i8* %arrayidx767, align 1, !dbg !1803, !tbaa !556
  %221 = load i32** %arrayidx643.pre-phi, align 8, !dbg !1723, !tbaa !555
  %arrayidx770 = getelementptr inbounds i32* %221, i64 2, !dbg !1723
  %222 = load i32* %arrayidx770, align 4, !dbg !1723, !tbaa !579
  %cmp771 = icmp sgt i32 %222, -987654321, !dbg !1723
  br i1 %cmp771, label %land.lhs.true773, label %if.end802, !dbg !1723

land.lhs.true773:                                 ; preds = %if.end761
  %223 = load i32* %arrayidx776, align 4, !dbg !1723, !tbaa !579
  %cmp777 = icmp sgt i32 %223, -987654321, !dbg !1723
  br i1 %cmp777, label %land.lhs.true779, label %if.end802, !dbg !1723

land.lhs.true779:                                 ; preds = %land.lhs.true773
  %conv783 = sitofp i32 %222 to float, !dbg !1723
  %conv787 = sitofp i32 %223 to float, !dbg !1723
  %arrayidx789 = getelementptr inbounds float* %3, i64 %indvars.iv1232, !dbg !1723
  %224 = load float* %arrayidx789, align 4, !dbg !1723, !tbaa !772
  %mul790 = fmul float %conv787, %224, !dbg !1723
  %add791 = fadd float %conv783, %mul790, !dbg !1723
  %conv792 = fptosi float %add791 to i32, !dbg !1723
  call void @llvm.dbg.value(metadata !{i32 %conv792}, i64 0, metadata !421), !dbg !1723
  %cmp793 = icmp sgt i32 %conv792, -987654321, !dbg !1723
  br i1 %cmp793, label %if.then795, label %if.end802, !dbg !1723

if.then795:                                       ; preds = %land.lhs.true779
  %225 = load i32** %arrayidx637, align 8, !dbg !1804, !tbaa !555
  %arrayidx798 = getelementptr inbounds i32* %225, i64 2, !dbg !1804
  store i32 %conv792, i32* %arrayidx798, align 4, !dbg !1804, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1804
  %226 = load i8*** %xtb, align 8, !dbg !1804, !tbaa !555
  %arrayidx800 = getelementptr inbounds i8** %226, i64 %indvars.iv1232, !dbg !1804
  %227 = load i8** %arrayidx800, align 8, !dbg !1804, !tbaa !555
  %arrayidx801 = getelementptr inbounds i8* %227, i64 2, !dbg !1804
  store i8 8, i8* %arrayidx801, align 1, !dbg !1804, !tbaa !556
  br label %if.end802, !dbg !1804

if.end802:                                        ; preds = %if.then795, %land.lhs.true779, %land.lhs.true773, %if.end761
  %228 = load i32** %arrayidx637, align 8, !dbg !1724, !tbaa !555
  %arrayidx805 = getelementptr inbounds i32* %228, i64 1, !dbg !1724
  %229 = load i32* %arrayidx805, align 4, !dbg !1724, !tbaa !579
  %cmp806 = icmp sgt i32 %229, -987654321, !dbg !1724
  br i1 %cmp806, label %land.lhs.true808, label %for.inc835, !dbg !1724

land.lhs.true808:                                 ; preds = %if.end802
  %230 = load i32* %arrayidx811, align 4, !dbg !1724, !tbaa !579
  %cmp812 = icmp sgt i32 %230, -987654321, !dbg !1724
  br i1 %cmp812, label %land.lhs.true814, label %for.inc835, !dbg !1724

land.lhs.true814:                                 ; preds = %land.lhs.true808
  %add821 = add nsw i32 %230, %229, !dbg !1724
  call void @llvm.dbg.value(metadata !{i32 %add821}, i64 0, metadata !421), !dbg !1724
  %arrayidx824 = getelementptr inbounds i32* %228, i64 2, !dbg !1724
  %231 = load i32* %arrayidx824, align 4, !dbg !1724, !tbaa !579
  %cmp825 = icmp sgt i32 %add821, %231, !dbg !1724
  br i1 %cmp825, label %if.then827, label %for.inc835, !dbg !1724

if.then827:                                       ; preds = %land.lhs.true814
  store i32 %add821, i32* %arrayidx824, align 4, !dbg !1806, !tbaa !579
  call void @llvm.dbg.value(metadata !{i8*** %xtb}, i64 0, metadata !411), !dbg !1806
  %232 = load i8*** %xtb, align 8, !dbg !1806, !tbaa !555
  %arrayidx832 = getelementptr inbounds i8** %232, i64 %indvars.iv1232, !dbg !1806
  %233 = load i8** %arrayidx832, align 8, !dbg !1806, !tbaa !555
  %arrayidx833 = getelementptr inbounds i8* %233, i64 2, !dbg !1806
  store i8 7, i8* %arrayidx833, align 1, !dbg !1806, !tbaa !556
  br label %for.inc835, !dbg !1806

for.inc835:                                       ; preds = %if.end802, %land.lhs.true808, %land.lhs.true814, %if.then827
  %indvars.iv.next1233 = add i64 %indvars.iv1232, 1, !dbg !1763
  %234 = load i32* %alen, align 4, !dbg !1763, !tbaa !579
  %cmp154 = icmp slt i32 %63, %234, !dbg !1763
  br i1 %cmp154, label %for.body156, label %for.end837, !dbg !1763

for.end837:                                       ; preds = %for.inc835, %for.cond152.preheader
  %.lcssa = phi i32 [ %51, %for.cond152.preheader ], [ %234, %for.inc835 ]
  %call848 = call %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* %call104, %struct.plan7_s* %hmm, i32 %.lcssa) #7, !dbg !1808
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %call848}, i64 0, metadata !406), !dbg !1808
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #7, !dbg !1809
  call void @FreeShadowMatrix(%struct.dpshadow_s* %call104) #7, !dbg !1810
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !417), !dbg !1811
  %235 = load i32* %alen, align 4, !dbg !1811, !tbaa !579
  %cmp8511202 = icmp slt i32 %235, 1, !dbg !1811
  br i1 %cmp8511202, label %for.end858, label %for.body853, !dbg !1811

for.body853:                                      ; preds = %for.end837, %for.body853
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body853 ], [ 1, %for.end837 ]
  %arrayidx855 = getelementptr inbounds float** %1, i64 %indvars.iv, !dbg !1813
  %236 = load float** %arrayidx855, align 8, !dbg !1813, !tbaa !555
  %237 = bitcast float* %236 to i8*, !dbg !1813
  call void @free(i8* %237) #6, !dbg !1813
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1811
  %238 = load i32* %alen, align 4, !dbg !1811, !tbaa !579
  %239 = trunc i64 %indvars.iv to i32, !dbg !1811
  %cmp851 = icmp slt i32 %239, %238, !dbg !1811
  br i1 %cmp851, label %for.body853, label %for.end858, !dbg !1811

for.end858:                                       ; preds = %for.body853, %for.end837
  call void @free(i8* %call) #6, !dbg !1814
  call void @free(i8* %call5) #6, !dbg !1815
  ret %struct.p7trace_s* %call848, !dbg !1816
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare float @FSum(float*, i32) #2

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* nocapture %tb, %struct.plan7_s* nocapture %hmm, i32 %L) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.dpshadow_s* %tb}, i64 0, metadata !429), !dbg !1817
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !430), !dbg !1817
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !431), !dbg !1817
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !432), !dbg !1818
  %mul = shl nsw i32 %L, 1, !dbg !1819
  %add = add nsw i32 %mul, 6, !dbg !1819
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !433), !dbg !1819
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #6, !dbg !1820
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1821
  %0 = load %struct.p7trace_s** %tr, align 8, !dbg !1821, !tbaa !555
  %statetype = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 1, !dbg !1821
  %1 = load i8** %statetype, align 8, !dbg !1821, !tbaa !555
  store i8 9, i8* %1, align 1, !dbg !1821, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1822
  %2 = load %struct.p7trace_s** %tr, align 8, !dbg !1822, !tbaa !555
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %2, i64 0, i32 2, !dbg !1822
  %3 = load i32** %nodeidx, align 8, !dbg !1822, !tbaa !555
  store i32 0, i32* %3, align 4, !dbg !1822, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1823
  %pos = getelementptr inbounds %struct.p7trace_s* %2, i64 0, i32 3, !dbg !1823
  %4 = load i32** %pos, align 8, !dbg !1823, !tbaa !555
  store i32 0, i32* %4, align 4, !dbg !1823, !tbaa !579
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !434), !dbg !1824
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !435), !dbg !1825
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !436), !dbg !1826
  call void @llvm.dbg.value(metadata !1441, i64 0, metadata !437), !dbg !1827
  %mtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 1, !dbg !1828
  %itb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 2, !dbg !1829
  %dtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 3, !dbg !1830
  %xtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 0, !dbg !1831
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !1832
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !1832
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !1832
  %esrc = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 4, !dbg !1833
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !1834
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !1834
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1835
  br label %while.body, !dbg !1837

while.body:                                       ; preds = %entry, %while.cond.backedge
  %nxtstate.0335 = phi i8 [ 8, %entry ], [ %nxtstate.1, %while.cond.backedge ]
  %k.0334 = phi i32 [ 0, %entry ], [ %k.3, %while.cond.backedge ]
  %i.0333 = phi i32 [ %L, %entry ], [ %i.4, %while.cond.backedge ]
  %tpos.0332 = phi i32 [ 1, %entry ], [ %tpos.4, %while.cond.backedge ]
  %curralloc.0331 = phi i32 [ %add, %entry ], [ %curralloc.0.be, %while.cond.backedge ]
  %conv = sext i8 %nxtstate.0335 to i32, !dbg !1837
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
    i32 2, label %sw.bb34
    i32 5, label %sw.bb50
    i32 6, label %sw.bb68
    i32 10, label %sw.bb114
    i32 7, label %sw.bb137
    i32 8, label %sw.bb180
  ], !dbg !1838

sw.bb:                                            ; preds = %while.body
  %idxprom = sext i32 %tpos.0332 to i64, !dbg !1839
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1839
  %5 = load %struct.p7trace_s** %tr, align 8, !dbg !1839, !tbaa !555
  %statetype5 = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 1, !dbg !1839
  %6 = load i8** %statetype5, align 8, !dbg !1839, !tbaa !555
  %arrayidx6 = getelementptr inbounds i8* %6, i64 %idxprom, !dbg !1839
  store i8 1, i8* %arrayidx6, align 1, !dbg !1839, !tbaa !556
  %idxprom7 = sext i32 %k.0334 to i64, !dbg !1828
  %idxprom8 = sext i32 %i.0333 to i64, !dbg !1828
  %7 = load i8*** %mtb, align 8, !dbg !1828, !tbaa !555
  %arrayidx9 = getelementptr inbounds i8** %7, i64 %idxprom8, !dbg !1828
  %8 = load i8** %arrayidx9, align 8, !dbg !1828, !tbaa !555
  %arrayidx10 = getelementptr inbounds i8* %8, i64 %idxprom7, !dbg !1828
  %9 = load i8* %arrayidx10, align 1, !dbg !1828, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %9}, i64 0, metadata !437), !dbg !1828
  %dec = add nsw i32 %k.0334, -1, !dbg !1840
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !436), !dbg !1840
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1840
  %10 = load %struct.p7trace_s** %tr, align 8, !dbg !1840, !tbaa !555
  %nodeidx12 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2, !dbg !1840
  %11 = load i32** %nodeidx12, align 8, !dbg !1840, !tbaa !555
  %arrayidx13 = getelementptr inbounds i32* %11, i64 %idxprom, !dbg !1840
  store i32 %k.0334, i32* %arrayidx13, align 4, !dbg !1840, !tbaa !579
  %dec14 = add nsw i32 %i.0333, -1, !dbg !1841
  call void @llvm.dbg.value(metadata !{i32 %dec14}, i64 0, metadata !435), !dbg !1841
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1841
  %pos16 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3, !dbg !1841
  %12 = load i32** %pos16, align 8, !dbg !1841, !tbaa !555
  %arrayidx17 = getelementptr inbounds i32* %12, i64 %idxprom, !dbg !1841
  store i32 %i.0333, i32* %arrayidx17, align 4, !dbg !1841, !tbaa !579
  %inc = add nsw i32 %tpos.0332, 1, !dbg !1842
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !434), !dbg !1842
  br label %sw.epilog, !dbg !1843

sw.bb18:                                          ; preds = %while.body
  %idxprom19 = sext i32 %tpos.0332 to i64, !dbg !1844
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1844
  %13 = load %struct.p7trace_s** %tr, align 8, !dbg !1844, !tbaa !555
  %statetype20 = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 1, !dbg !1844
  %14 = load i8** %statetype20, align 8, !dbg !1844, !tbaa !555
  %arrayidx21 = getelementptr inbounds i8* %14, i64 %idxprom19, !dbg !1844
  store i8 3, i8* %arrayidx21, align 1, !dbg !1844, !tbaa !556
  %idxprom22 = sext i32 %k.0334 to i64, !dbg !1829
  %idxprom23 = sext i32 %i.0333 to i64, !dbg !1829
  %15 = load i8*** %itb, align 8, !dbg !1829, !tbaa !555
  %arrayidx24 = getelementptr inbounds i8** %15, i64 %idxprom23, !dbg !1829
  %16 = load i8** %arrayidx24, align 8, !dbg !1829, !tbaa !555
  %arrayidx25 = getelementptr inbounds i8* %16, i64 %idxprom22, !dbg !1829
  %17 = load i8* %arrayidx25, align 1, !dbg !1829, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %17}, i64 0, metadata !437), !dbg !1829
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1845
  %18 = load %struct.p7trace_s** %tr, align 8, !dbg !1845, !tbaa !555
  %nodeidx27 = getelementptr inbounds %struct.p7trace_s* %18, i64 0, i32 2, !dbg !1845
  %19 = load i32** %nodeidx27, align 8, !dbg !1845, !tbaa !555
  %arrayidx28 = getelementptr inbounds i32* %19, i64 %idxprom19, !dbg !1845
  store i32 %k.0334, i32* %arrayidx28, align 4, !dbg !1845, !tbaa !579
  %dec29 = add nsw i32 %i.0333, -1, !dbg !1846
  call void @llvm.dbg.value(metadata !{i32 %dec29}, i64 0, metadata !435), !dbg !1846
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1846
  %pos31 = getelementptr inbounds %struct.p7trace_s* %18, i64 0, i32 3, !dbg !1846
  %20 = load i32** %pos31, align 8, !dbg !1846, !tbaa !555
  %arrayidx32 = getelementptr inbounds i32* %20, i64 %idxprom19, !dbg !1846
  store i32 %i.0333, i32* %arrayidx32, align 4, !dbg !1846, !tbaa !579
  %inc33 = add nsw i32 %tpos.0332, 1, !dbg !1847
  call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !434), !dbg !1847
  br label %sw.epilog, !dbg !1848

sw.bb34:                                          ; preds = %while.body
  %idxprom35 = sext i32 %tpos.0332 to i64, !dbg !1849
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1849
  %21 = load %struct.p7trace_s** %tr, align 8, !dbg !1849, !tbaa !555
  %statetype36 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1, !dbg !1849
  %22 = load i8** %statetype36, align 8, !dbg !1849, !tbaa !555
  %arrayidx37 = getelementptr inbounds i8* %22, i64 %idxprom35, !dbg !1849
  store i8 2, i8* %arrayidx37, align 1, !dbg !1849, !tbaa !556
  %idxprom38 = sext i32 %k.0334 to i64, !dbg !1830
  %idxprom39 = sext i32 %i.0333 to i64, !dbg !1830
  %23 = load i8*** %dtb, align 8, !dbg !1830, !tbaa !555
  %arrayidx40 = getelementptr inbounds i8** %23, i64 %idxprom39, !dbg !1830
  %24 = load i8** %arrayidx40, align 8, !dbg !1830, !tbaa !555
  %arrayidx41 = getelementptr inbounds i8* %24, i64 %idxprom38, !dbg !1830
  %25 = load i8* %arrayidx41, align 1, !dbg !1830, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %25}, i64 0, metadata !437), !dbg !1830
  %dec42 = add nsw i32 %k.0334, -1, !dbg !1850
  call void @llvm.dbg.value(metadata !{i32 %dec42}, i64 0, metadata !436), !dbg !1850
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1850
  %26 = load %struct.p7trace_s** %tr, align 8, !dbg !1850, !tbaa !555
  %nodeidx44 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 2, !dbg !1850
  %27 = load i32** %nodeidx44, align 8, !dbg !1850, !tbaa !555
  %arrayidx45 = getelementptr inbounds i32* %27, i64 %idxprom35, !dbg !1850
  store i32 %k.0334, i32* %arrayidx45, align 4, !dbg !1850, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1851
  %pos47 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 3, !dbg !1851
  %28 = load i32** %pos47, align 8, !dbg !1851, !tbaa !555
  %arrayidx48 = getelementptr inbounds i32* %28, i64 %idxprom35, !dbg !1851
  store i32 0, i32* %arrayidx48, align 4, !dbg !1851, !tbaa !579
  %inc49 = add nsw i32 %tpos.0332, 1, !dbg !1852
  call void @llvm.dbg.value(metadata !{i32 %inc49}, i64 0, metadata !434), !dbg !1852
  br label %sw.epilog, !dbg !1853

sw.bb50:                                          ; preds = %while.body
  %idxprom51 = sext i32 %tpos.0332 to i64, !dbg !1854
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1854
  %29 = load %struct.p7trace_s** %tr, align 8, !dbg !1854, !tbaa !555
  %statetype52 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1, !dbg !1854
  %30 = load i8** %statetype52, align 8, !dbg !1854, !tbaa !555
  %arrayidx53 = getelementptr inbounds i8* %30, i64 %idxprom51, !dbg !1854
  store i8 5, i8* %arrayidx53, align 1, !dbg !1854, !tbaa !556
  %idxprom54 = sext i32 %i.0333 to i64, !dbg !1831
  %31 = load i8*** %xtb, align 8, !dbg !1831, !tbaa !555
  %arrayidx55 = getelementptr inbounds i8** %31, i64 %idxprom54, !dbg !1831
  %32 = load i8** %arrayidx55, align 8, !dbg !1831, !tbaa !555
  %arrayidx56 = getelementptr inbounds i8* %32, i64 4, !dbg !1831
  %33 = load i8* %arrayidx56, align 1, !dbg !1831, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %33}, i64 0, metadata !437), !dbg !1831
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1855
  %34 = load %struct.p7trace_s** %tr, align 8, !dbg !1855, !tbaa !555
  %nodeidx58 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 2, !dbg !1855
  %35 = load i32** %nodeidx58, align 8, !dbg !1855, !tbaa !555
  %arrayidx59 = getelementptr inbounds i32* %35, i64 %idxprom51, !dbg !1855
  store i32 0, i32* %arrayidx59, align 4, !dbg !1855, !tbaa !579
  %cmp61 = icmp eq i8 %33, 5, !dbg !1856
  %dec63 = sext i1 %cmp61 to i32, !dbg !1856
  %dec63.i.0 = add nsw i32 %dec63, %i.0333, !dbg !1856
  %i.0. = select i1 %cmp61, i32 %i.0333, i32 0, !dbg !1856
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1856
  %pos65 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 3, !dbg !1856
  %36 = load i32** %pos65, align 8, !dbg !1856, !tbaa !555
  %arrayidx66 = getelementptr inbounds i32* %36, i64 %idxprom51, !dbg !1856
  store i32 %i.0., i32* %arrayidx66, align 4, !dbg !1856, !tbaa !579
  %inc67 = add nsw i32 %tpos.0332, 1, !dbg !1857
  call void @llvm.dbg.value(metadata !{i32 %inc67}, i64 0, metadata !434), !dbg !1857
  br label %sw.epilog, !dbg !1858

sw.bb68:                                          ; preds = %while.body
  %add69 = add nsw i32 %k.0334, 1, !dbg !1832
  %idxprom70 = sext i32 %add69 to i64, !dbg !1832
  %37 = load float** %begin, align 8, !dbg !1832, !tbaa !555
  %arrayidx71 = getelementptr inbounds float* %37, i64 %idxprom70, !dbg !1832
  %38 = load float* %arrayidx71, align 4, !dbg !1832, !tbaa !772
  %39 = load float* %p1, align 4, !dbg !1832, !tbaa !772
  %call = call i32 @Prob2Score(float %38, float %39) #6, !dbg !1832
  %conv72 = sitofp i32 %call to double, !dbg !1832
  %add73 = fadd double %conv72, 1.000000e+03, !dbg !1832
  %40 = load i32** %bsc, align 8, !dbg !1832, !tbaa !555
  %arrayidx76 = getelementptr inbounds i32* %40, i64 %idxprom70, !dbg !1832
  %41 = load i32* %arrayidx76, align 4, !dbg !1832, !tbaa !579
  %conv77 = sitofp i32 %41 to double, !dbg !1832
  %cmp78 = fcmp ugt double %add73, %conv77, !dbg !1832
  br i1 %cmp78, label %if.end99, label %while.cond80.outer, !dbg !1832

while.cond80.outer:                               ; preds = %sw.bb68, %if.then97
  %curralloc.1.ph = phi i32 [ %add98, %if.then97 ], [ %curralloc.0331, %sw.bb68 ]
  %tpos.1.ph = phi i32 [ %inc94, %if.then97 ], [ %tpos.0332, %sw.bb68 ]
  %k.1.ph = phi i32 [ %dec87, %if.then97 ], [ %k.0334, %sw.bb68 ]
  %42 = sext i32 %tpos.1.ph to i64
  br label %while.cond80

while.cond80:                                     ; preds = %while.cond80.outer, %while.body83
  %indvars.iv339 = phi i64 [ %42, %while.cond80.outer ], [ %indvars.iv.next340, %while.body83 ]
  %tpos.1 = phi i32 [ %tpos.1.ph, %while.cond80.outer ], [ %inc94, %while.body83 ]
  %k.1 = phi i32 [ %k.1.ph, %while.cond80.outer ], [ %dec87, %while.body83 ]
  %cmp81 = icmp sgt i32 %k.1, 0, !dbg !1859
  br i1 %cmp81, label %while.body83, label %if.end99, !dbg !1859

while.body83:                                     ; preds = %while.cond80
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1860
  %43 = load %struct.p7trace_s** %tr, align 8, !dbg !1860, !tbaa !555
  %statetype85 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 1, !dbg !1860
  %44 = load i8** %statetype85, align 8, !dbg !1860, !tbaa !555
  %arrayidx86 = getelementptr inbounds i8* %44, i64 %indvars.iv339, !dbg !1860
  store i8 2, i8* %arrayidx86, align 1, !dbg !1860, !tbaa !556
  %dec87 = add nsw i32 %k.1, -1, !dbg !1862
  call void @llvm.dbg.value(metadata !{i32 %dec87}, i64 0, metadata !436), !dbg !1862
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1862
  %45 = load %struct.p7trace_s** %tr, align 8, !dbg !1862, !tbaa !555
  %nodeidx89 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 2, !dbg !1862
  %46 = load i32** %nodeidx89, align 8, !dbg !1862, !tbaa !555
  %arrayidx90 = getelementptr inbounds i32* %46, i64 %indvars.iv339, !dbg !1862
  store i32 %k.1, i32* %arrayidx90, align 4, !dbg !1862, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1863
  %pos92 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 3, !dbg !1863
  %47 = load i32** %pos92, align 8, !dbg !1863, !tbaa !555
  %arrayidx93 = getelementptr inbounds i32* %47, i64 %indvars.iv339, !dbg !1863
  store i32 0, i32* %arrayidx93, align 4, !dbg !1863, !tbaa !579
  %indvars.iv.next340 = add i64 %indvars.iv339, 1, !dbg !1864
  %inc94 = add nsw i32 %tpos.1, 1, !dbg !1865
  call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !434), !dbg !1865
  %48 = trunc i64 %indvars.iv.next340 to i32, !dbg !1864
  %cmp95 = icmp eq i32 %48, %curralloc.1.ph, !dbg !1864
  br i1 %cmp95, label %if.then97, label %while.cond80, !dbg !1864

if.then97:                                        ; preds = %while.body83
  %add98 = add nsw i32 %curralloc.1.ph, %L, !dbg !1866
  call void @llvm.dbg.value(metadata !{i32 %add98}, i64 0, metadata !433), !dbg !1866
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1868
  call void @P7ReallocTrace(%struct.p7trace_s* %45, i32 %add98) #6, !dbg !1868
  br label %while.cond80.outer, !dbg !1869

if.end99:                                         ; preds = %while.cond80, %sw.bb68
  %curralloc.2 = phi i32 [ %curralloc.0331, %sw.bb68 ], [ %curralloc.1.ph, %while.cond80 ]
  %tpos.2 = phi i32 [ %tpos.0332, %sw.bb68 ], [ %tpos.1, %while.cond80 ]
  %k.2 = phi i32 [ %k.0334, %sw.bb68 ], [ %k.1, %while.cond80 ]
  %idxprom100 = sext i32 %tpos.2 to i64, !dbg !1870
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1870
  %49 = load %struct.p7trace_s** %tr, align 8, !dbg !1870, !tbaa !555
  %statetype101 = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1, !dbg !1870
  %50 = load i8** %statetype101, align 8, !dbg !1870, !tbaa !555
  %arrayidx102 = getelementptr inbounds i8* %50, i64 %idxprom100, !dbg !1870
  store i8 6, i8* %arrayidx102, align 1, !dbg !1870, !tbaa !556
  %idxprom103 = sext i32 %i.0333 to i64, !dbg !1871
  %51 = load i8*** %xtb, align 8, !dbg !1871, !tbaa !555
  %arrayidx105 = getelementptr inbounds i8** %51, i64 %idxprom103, !dbg !1871
  %52 = load i8** %arrayidx105, align 8, !dbg !1871, !tbaa !555
  %53 = load i8* %52, align 1, !dbg !1871, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %53}, i64 0, metadata !437), !dbg !1871
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1872
  %54 = load %struct.p7trace_s** %tr, align 8, !dbg !1872, !tbaa !555
  %nodeidx108 = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 2, !dbg !1872
  %55 = load i32** %nodeidx108, align 8, !dbg !1872, !tbaa !555
  %arrayidx109 = getelementptr inbounds i32* %55, i64 %idxprom100, !dbg !1872
  store i32 0, i32* %arrayidx109, align 4, !dbg !1872, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1873
  %pos111 = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 3, !dbg !1873
  %56 = load i32** %pos111, align 8, !dbg !1873, !tbaa !555
  %arrayidx112 = getelementptr inbounds i32* %56, i64 %idxprom100, !dbg !1873
  store i32 0, i32* %arrayidx112, align 4, !dbg !1873, !tbaa !579
  %inc113 = add nsw i32 %tpos.2, 1, !dbg !1874
  call void @llvm.dbg.value(metadata !{i32 %inc113}, i64 0, metadata !434), !dbg !1874
  br label %sw.epilog, !dbg !1875

sw.bb114:                                         ; preds = %while.body
  %idxprom115 = sext i32 %tpos.0332 to i64, !dbg !1876
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1876
  %57 = load %struct.p7trace_s** %tr, align 8, !dbg !1876, !tbaa !555
  %statetype116 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 1, !dbg !1876
  %58 = load i8** %statetype116, align 8, !dbg !1876, !tbaa !555
  %arrayidx117 = getelementptr inbounds i8* %58, i64 %idxprom115, !dbg !1876
  store i8 10, i8* %arrayidx117, align 1, !dbg !1876, !tbaa !556
  %idxprom118 = sext i32 %i.0333 to i64, !dbg !1877
  %59 = load i8*** %xtb, align 8, !dbg !1877, !tbaa !555
  %arrayidx120 = getelementptr inbounds i8** %59, i64 %idxprom118, !dbg !1877
  %60 = load i8** %arrayidx120, align 8, !dbg !1877, !tbaa !555
  %arrayidx121 = getelementptr inbounds i8* %60, i64 3, !dbg !1877
  %61 = load i8* %arrayidx121, align 1, !dbg !1877, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %61}, i64 0, metadata !437), !dbg !1877
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1878
  %62 = load %struct.p7trace_s** %tr, align 8, !dbg !1878, !tbaa !555
  %nodeidx123 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 2, !dbg !1878
  %63 = load i32** %nodeidx123, align 8, !dbg !1878, !tbaa !555
  %arrayidx124 = getelementptr inbounds i32* %63, i64 %idxprom115, !dbg !1878
  store i32 0, i32* %arrayidx124, align 4, !dbg !1878, !tbaa !579
  %cmp126 = icmp eq i8 %61, 10, !dbg !1879
  %dec129 = sext i1 %cmp126 to i32, !dbg !1879
  %dec129.i.0 = add nsw i32 %dec129, %i.0333, !dbg !1879
  %i.0.322 = select i1 %cmp126, i32 %i.0333, i32 0, !dbg !1879
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1879
  %pos134 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 3, !dbg !1879
  %64 = load i32** %pos134, align 8, !dbg !1879, !tbaa !555
  %arrayidx135 = getelementptr inbounds i32* %64, i64 %idxprom115, !dbg !1879
  store i32 %i.0.322, i32* %arrayidx135, align 4, !dbg !1879, !tbaa !579
  %inc136 = add nsw i32 %tpos.0332, 1, !dbg !1880
  call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !434), !dbg !1880
  br label %sw.epilog, !dbg !1881

sw.bb137:                                         ; preds = %while.body
  %idxprom138 = sext i32 %tpos.0332 to i64, !dbg !1882
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1882
  %65 = load %struct.p7trace_s** %tr, align 8, !dbg !1882, !tbaa !555
  %statetype139 = getelementptr inbounds %struct.p7trace_s* %65, i64 0, i32 1, !dbg !1882
  %66 = load i8** %statetype139, align 8, !dbg !1882, !tbaa !555
  %arrayidx140 = getelementptr inbounds i8* %66, i64 %idxprom138, !dbg !1882
  store i8 7, i8* %arrayidx140, align 1, !dbg !1882, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1883
  %67 = load %struct.p7trace_s** %tr, align 8, !dbg !1883, !tbaa !555
  %nodeidx142 = getelementptr inbounds %struct.p7trace_s* %67, i64 0, i32 2, !dbg !1883
  %68 = load i32** %nodeidx142, align 8, !dbg !1883, !tbaa !555
  %arrayidx143 = getelementptr inbounds i32* %68, i64 %idxprom138, !dbg !1883
  store i32 0, i32* %arrayidx143, align 4, !dbg !1883, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1884
  %pos145 = getelementptr inbounds %struct.p7trace_s* %67, i64 0, i32 3, !dbg !1884
  %69 = load i32** %pos145, align 8, !dbg !1884, !tbaa !555
  %arrayidx146 = getelementptr inbounds i32* %69, i64 %idxprom138, !dbg !1884
  store i32 0, i32* %arrayidx146, align 4, !dbg !1884, !tbaa !579
  %idxprom147 = sext i32 %i.0333 to i64, !dbg !1833
  %70 = load i32** %esrc, align 8, !dbg !1833, !tbaa !555
  %arrayidx148 = getelementptr inbounds i32* %70, i64 %idxprom147, !dbg !1833
  %71 = load i32* %arrayidx148, align 4, !dbg !1833, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %71}, i64 0, metadata !436), !dbg !1833
  call void @llvm.dbg.value(metadata !1430, i64 0, metadata !437), !dbg !1885
  %inc149 = add i32 %tpos.0332, 1, !dbg !1886
  call void @llvm.dbg.value(metadata !{i32 %inc149}, i64 0, metadata !434), !dbg !1886
  %idxprom150 = sext i32 %71 to i64, !dbg !1834
  %72 = load float** %end, align 8, !dbg !1834, !tbaa !555
  %arrayidx151 = getelementptr inbounds float* %72, i64 %idxprom150, !dbg !1834
  %73 = load float* %arrayidx151, align 4, !dbg !1834, !tbaa !772
  %call152 = call i32 @Prob2Score(float %73, float 1.000000e+00) #6, !dbg !1834
  %conv153 = sitofp i32 %call152 to double, !dbg !1834
  %add154 = fadd double %conv153, 1.000000e+03, !dbg !1834
  %74 = load i32** %esc, align 8, !dbg !1834, !tbaa !555
  %arrayidx156 = getelementptr inbounds i32* %74, i64 %idxprom150, !dbg !1834
  %75 = load i32* %arrayidx156, align 4, !dbg !1834, !tbaa !579
  %conv157 = sitofp i32 %75 to double, !dbg !1834
  %cmp158 = fcmp ugt double %add154, %conv157, !dbg !1834
  br i1 %cmp158, label %sw.epilog, label %if.then160, !dbg !1834

if.then160:                                       ; preds = %sw.bb137
  %76 = load i32* %M, align 4, !dbg !1835, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !438), !dbg !1835
  %cmp161324 = icmp sgt i32 %76, %71, !dbg !1835
  br i1 %cmp161324, label %for.body.lr.ph, label %sw.epilog, !dbg !1835

for.body.lr.ph:                                   ; preds = %if.then160
  %77 = sext i32 %inc149 to i64
  %78 = add i32 %inc149, %76, !dbg !1835
  br label %for.body, !dbg !1835

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i64 [ %77, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %dk.0327 = phi i32 [ %76, %for.body.lr.ph ], [ %dec178, %for.inc.for.body_crit_edge ]
  %tpos.3326 = phi i32 [ %inc149, %for.body.lr.ph ], [ %inc172, %for.inc.for.body_crit_edge ]
  %curralloc.3325 = phi i32 [ %curralloc.0331, %for.body.lr.ph ], [ %curralloc.4, %for.inc.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1887
  %79 = load %struct.p7trace_s** %tr, align 8, !dbg !1887, !tbaa !555
  %statetype164 = getelementptr inbounds %struct.p7trace_s* %79, i64 0, i32 1, !dbg !1887
  %80 = load i8** %statetype164, align 8, !dbg !1887, !tbaa !555
  %arrayidx165 = getelementptr inbounds i8* %80, i64 %indvars.iv, !dbg !1887
  store i8 2, i8* %arrayidx165, align 1, !dbg !1887, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1889
  %81 = load %struct.p7trace_s** %tr, align 8, !dbg !1889, !tbaa !555
  %nodeidx167 = getelementptr inbounds %struct.p7trace_s* %81, i64 0, i32 2, !dbg !1889
  %82 = load i32** %nodeidx167, align 8, !dbg !1889, !tbaa !555
  %arrayidx168 = getelementptr inbounds i32* %82, i64 %indvars.iv, !dbg !1889
  store i32 %dk.0327, i32* %arrayidx168, align 4, !dbg !1889, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1890
  %pos170 = getelementptr inbounds %struct.p7trace_s* %81, i64 0, i32 3, !dbg !1890
  %83 = load i32** %pos170, align 8, !dbg !1890, !tbaa !555
  %arrayidx171 = getelementptr inbounds i32* %83, i64 %indvars.iv, !dbg !1890
  store i32 0, i32* %arrayidx171, align 4, !dbg !1890, !tbaa !579
  %inc172 = add nsw i32 %tpos.3326, 1, !dbg !1891
  call void @llvm.dbg.value(metadata !{i32 %92}, i64 0, metadata !434), !dbg !1891
  %cmp173 = icmp eq i32 %inc172, %curralloc.3325, !dbg !1892
  br i1 %cmp173, label %if.then175, label %for.inc, !dbg !1892

if.then175:                                       ; preds = %for.body
  %add176 = add nsw i32 %curralloc.3325, %L, !dbg !1893
  call void @llvm.dbg.value(metadata !{i32 %add176}, i64 0, metadata !433), !dbg !1893
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1895
  call void @P7ReallocTrace(%struct.p7trace_s* %81, i32 %add176) #6, !dbg !1895
  br label %for.inc, !dbg !1896

for.inc:                                          ; preds = %for.body, %if.then175
  %curralloc.4 = phi i32 [ %add176, %if.then175 ], [ %curralloc.3325, %for.body ]
  %dec178 = add nsw i32 %dk.0327, -1, !dbg !1835
  call void @llvm.dbg.value(metadata !{i32 %dec178}, i64 0, metadata !438), !dbg !1835
  %cmp161 = icmp sgt i32 %dec178, %71, !dbg !1835
  br i1 %cmp161, label %for.inc.for.body_crit_edge, label %for.cond.sw.epilog.loopexit_crit_edge, !dbg !1835

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1835
  br label %for.body, !dbg !1835

sw.bb180:                                         ; preds = %while.body
  %idxprom181 = sext i32 %tpos.0332 to i64, !dbg !1897
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1897
  %84 = load %struct.p7trace_s** %tr, align 8, !dbg !1897, !tbaa !555
  %statetype182 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 1, !dbg !1897
  %85 = load i8** %statetype182, align 8, !dbg !1897, !tbaa !555
  %arrayidx183 = getelementptr inbounds i8* %85, i64 %idxprom181, !dbg !1897
  store i8 8, i8* %arrayidx183, align 1, !dbg !1897, !tbaa !556
  %idxprom184 = sext i32 %i.0333 to i64, !dbg !1898
  %86 = load i8*** %xtb, align 8, !dbg !1898, !tbaa !555
  %arrayidx186 = getelementptr inbounds i8** %86, i64 %idxprom184, !dbg !1898
  %87 = load i8** %arrayidx186, align 8, !dbg !1898, !tbaa !555
  %arrayidx187 = getelementptr inbounds i8* %87, i64 2, !dbg !1898
  %88 = load i8* %arrayidx187, align 1, !dbg !1898, !tbaa !556
  call void @llvm.dbg.value(metadata !{i8 %88}, i64 0, metadata !437), !dbg !1898
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1899
  %89 = load %struct.p7trace_s** %tr, align 8, !dbg !1899, !tbaa !555
  %nodeidx189 = getelementptr inbounds %struct.p7trace_s* %89, i64 0, i32 2, !dbg !1899
  %90 = load i32** %nodeidx189, align 8, !dbg !1899, !tbaa !555
  %arrayidx190 = getelementptr inbounds i32* %90, i64 %idxprom181, !dbg !1899
  store i32 0, i32* %arrayidx190, align 4, !dbg !1899, !tbaa !579
  %cmp192 = icmp eq i8 %88, 8, !dbg !1900
  %dec195 = sext i1 %cmp192 to i32, !dbg !1900
  %dec195.i.0 = add nsw i32 %dec195, %i.0333, !dbg !1900
  %i.0.323 = select i1 %cmp192, i32 %i.0333, i32 0, !dbg !1900
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1900
  %pos200 = getelementptr inbounds %struct.p7trace_s* %89, i64 0, i32 3, !dbg !1900
  %91 = load i32** %pos200, align 8, !dbg !1900, !tbaa !555
  %arrayidx201 = getelementptr inbounds i32* %91, i64 %idxprom181, !dbg !1900
  store i32 %i.0.323, i32* %arrayidx201, align 4, !dbg !1900, !tbaa !579
  %inc202 = add nsw i32 %tpos.0332, 1, !dbg !1901
  call void @llvm.dbg.value(metadata !{i32 %inc202}, i64 0, metadata !434), !dbg !1901
  br label %sw.epilog, !dbg !1902

sw.default:                                       ; preds = %while.body
  %call203 = call i8* @Statetype(i8 signext %nxtstate.0335) #6, !dbg !1903
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), i8* %call203) #6, !dbg !1903
  br label %sw.epilog, !dbg !1904

for.cond.sw.epilog.loopexit_crit_edge:            ; preds = %for.inc
  %92 = sub i32 %78, %71, !dbg !1835
  br label %sw.epilog, !dbg !1835

sw.epilog:                                        ; preds = %if.then160, %for.cond.sw.epilog.loopexit_crit_edge, %sw.bb137, %sw.default, %sw.bb180, %sw.bb114, %if.end99, %sw.bb50, %sw.bb34, %sw.bb18, %sw.bb
  %curralloc.5 = phi i32 [ %curralloc.0331, %sw.default ], [ %curralloc.0331, %sw.bb180 ], [ %curralloc.0331, %sw.bb137 ], [ %curralloc.0331, %sw.bb114 ], [ %curralloc.2, %if.end99 ], [ %curralloc.0331, %sw.bb50 ], [ %curralloc.0331, %sw.bb34 ], [ %curralloc.0331, %sw.bb18 ], [ %curralloc.0331, %sw.bb ], [ %curralloc.4, %for.cond.sw.epilog.loopexit_crit_edge ], [ %curralloc.0331, %if.then160 ]
  %tpos.4 = phi i32 [ %tpos.0332, %sw.default ], [ %inc202, %sw.bb180 ], [ %inc149, %sw.bb137 ], [ %inc136, %sw.bb114 ], [ %inc113, %if.end99 ], [ %inc67, %sw.bb50 ], [ %inc49, %sw.bb34 ], [ %inc33, %sw.bb18 ], [ %inc, %sw.bb ], [ %92, %for.cond.sw.epilog.loopexit_crit_edge ], [ %inc149, %if.then160 ]
  %i.4 = phi i32 [ %i.0333, %sw.default ], [ %dec195.i.0, %sw.bb180 ], [ %i.0333, %sw.bb137 ], [ %dec129.i.0, %sw.bb114 ], [ %i.0333, %if.end99 ], [ %dec63.i.0, %sw.bb50 ], [ %i.0333, %sw.bb34 ], [ %dec29, %sw.bb18 ], [ %dec14, %sw.bb ], [ %i.0333, %for.cond.sw.epilog.loopexit_crit_edge ], [ %i.0333, %if.then160 ]
  %k.3 = phi i32 [ %k.0334, %sw.default ], [ %k.0334, %sw.bb180 ], [ %71, %sw.bb137 ], [ %k.0334, %sw.bb114 ], [ %k.2, %if.end99 ], [ %k.0334, %sw.bb50 ], [ %dec42, %sw.bb34 ], [ %k.0334, %sw.bb18 ], [ %dec, %sw.bb ], [ %71, %for.cond.sw.epilog.loopexit_crit_edge ], [ %71, %if.then160 ]
  %nxtstate.1 = phi i8 [ %nxtstate.0335, %sw.default ], [ %88, %sw.bb180 ], [ 1, %sw.bb137 ], [ %61, %sw.bb114 ], [ %53, %if.end99 ], [ %33, %sw.bb50 ], [ %25, %sw.bb34 ], [ %17, %sw.bb18 ], [ %9, %sw.bb ], [ 1, %for.cond.sw.epilog.loopexit_crit_edge ], [ 1, %if.then160 ]
  %cmp204 = icmp eq i32 %tpos.4, %curralloc.5, !dbg !1905
  br i1 %cmp204, label %if.then206, label %while.cond.backedge, !dbg !1905

if.then206:                                       ; preds = %sw.epilog
  %add207 = add nsw i32 %curralloc.5, %L, !dbg !1906
  call void @llvm.dbg.value(metadata !{i32 %add207}, i64 0, metadata !433), !dbg !1906
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1908
  %93 = load %struct.p7trace_s** %tr, align 8, !dbg !1908, !tbaa !555
  call void @P7ReallocTrace(%struct.p7trace_s* %93, i32 %add207) #6, !dbg !1908
  br label %while.cond.backedge, !dbg !1909

while.cond.backedge:                              ; preds = %if.then206, %sw.epilog
  %curralloc.0.be = phi i32 [ %add207, %if.then206 ], [ %curralloc.5, %sw.epilog ]
  %cmp = icmp eq i8 %nxtstate.1, 4, !dbg !1837
  br i1 %cmp, label %while.end209, label %while.body, !dbg !1837

while.end209:                                     ; preds = %while.cond.backedge
  %idxprom210 = sext i32 %tpos.4 to i64, !dbg !1910
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1910
  %94 = load %struct.p7trace_s** %tr, align 8, !dbg !1910, !tbaa !555
  %statetype211 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 1, !dbg !1910
  %95 = load i8** %statetype211, align 8, !dbg !1910, !tbaa !555
  %arrayidx212 = getelementptr inbounds i8* %95, i64 %idxprom210, !dbg !1910
  store i8 4, i8* %arrayidx212, align 1, !dbg !1910, !tbaa !556
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1911
  %96 = load %struct.p7trace_s** %tr, align 8, !dbg !1911, !tbaa !555
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 2, !dbg !1911
  %97 = load i32** %nodeidx214, align 8, !dbg !1911, !tbaa !555
  %arrayidx215 = getelementptr inbounds i32* %97, i64 %idxprom210, !dbg !1911
  store i32 0, i32* %arrayidx215, align 4, !dbg !1911, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1912
  %pos217 = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 3, !dbg !1912
  %98 = load i32** %pos217, align 8, !dbg !1912, !tbaa !555
  %arrayidx218 = getelementptr inbounds i32* %98, i64 %idxprom210, !dbg !1912
  store i32 0, i32* %arrayidx218, align 4, !dbg !1912, !tbaa !579
  %add219 = add nsw i32 %tpos.4, 1, !dbg !1913
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1913
  %tlen = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 0, !dbg !1913
  store i32 %add219, i32* %tlen, align 4, !dbg !1913, !tbaa !579
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1914
  call void @P7ReverseTrace(%struct.p7trace_s* %96) #6, !dbg !1914
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !432), !dbg !1915
  %99 = load %struct.p7trace_s** %tr, align 8, !dbg !1915, !tbaa !555
  ret %struct.p7trace_s* %99, !dbg !1915
}

; Function Attrs: nounwind optsize uwtable
define float @PostprocessSignificantHit(%struct.tophit_s* %ghit, %struct.tophit_s* %dhit, %struct.p7trace_s* %tr, %struct.plan7_s* %hmm, i8* %dsq, i32 %L, i8* %seqname, i8* %seqacc, i8* %seqdesc, i32 %do_forward, float %sc_override, i32 %do_null2, %struct.threshold_s* nocapture %thresh, i32 %hmmpfam_mode) #0 {
entry:
  %tarr = alloca %struct.p7trace_s**, align 8
  %ntr = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %ghit}, i64 0, metadata !489), !dbg !1916
  call void @llvm.dbg.value(metadata !{%struct.tophit_s* %dhit}, i64 0, metadata !490), !dbg !1917
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !491), !dbg !1918
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !492), !dbg !1919
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !493), !dbg !1920
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !494), !dbg !1921
  call void @llvm.dbg.value(metadata !{i8* %seqname}, i64 0, metadata !495), !dbg !1922
  call void @llvm.dbg.value(metadata !{i8* %seqacc}, i64 0, metadata !496), !dbg !1923
  call void @llvm.dbg.value(metadata !{i8* %seqdesc}, i64 0, metadata !497), !dbg !1924
  call void @llvm.dbg.value(metadata !{i32 %do_forward}, i64 0, metadata !498), !dbg !1925
  call void @llvm.dbg.value(metadata !{float %sc_override}, i64 0, metadata !499), !dbg !1926
  call void @llvm.dbg.value(metadata !{i32 %do_null2}, i64 0, metadata !500), !dbg !1927
  call void @llvm.dbg.value(metadata !{%struct.threshold_s* %thresh}, i64 0, metadata !501), !dbg !1928
  call void @llvm.dbg.value(metadata !{i32 %hmmpfam_mode}, i64 0, metadata !502), !dbg !1929
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s*** %tarr}, metadata !503), !dbg !1930
  call void @llvm.dbg.declare(metadata !{i32* %ntr}, metadata !505), !dbg !1931
  call void @llvm.dbg.declare(metadata !{i32* %k1}, metadata !509), !dbg !1932
  call void @llvm.dbg.declare(metadata !{i32* %k2}, metadata !510), !dbg !1932
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !511), !dbg !1933
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !512), !dbg !1933
  %cmp = icmp eq %struct.p7trace_s* %tr, null, !dbg !1934
  br i1 %cmp, label %return, label %if.end, !dbg !1934

if.end:                                           ; preds = %entry
  call void @TraceDecompose(%struct.p7trace_s* %tr, %struct.p7trace_s*** %tarr, i32* %ntr) #6, !dbg !1935
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1936
  %0 = load i32* %ntr, align 4, !dbg !1936, !tbaa !579
  %cmp1 = icmp eq i32 %0, 0, !dbg !1936
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1936

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !1936
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1937
  %.pre = load i32* %ntr, align 4, !dbg !1937, !tbaa !579
  br label %if.end3, !dbg !1936

if.end3:                                          ; preds = %if.then2, %if.end
  %1 = phi i32 [ %.pre, %if.then2 ], [ %0, %if.end ]
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1937
  %conv = sext i32 %1 to i64, !dbg !1937
  %mul = shl nsw i64 %conv, 2, !dbg !1937
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2480, i64 %mul) #6, !dbg !1937
  %2 = bitcast i8* %call to float*, !dbg !1937
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !514), !dbg !1937
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1938
  %3 = load i32* %ntr, align 4, !dbg !1938, !tbaa !579
  %conv4 = sext i32 %3 to i64, !dbg !1938
  %mul5 = shl nsw i64 %conv4, 2, !dbg !1938
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2481, i64 %mul5) #6, !dbg !1938
  %4 = bitcast i8* %call6 to i32*, !dbg !1938
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !515), !dbg !1938
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !507), !dbg !1939
  call void @llvm.dbg.value(metadata !1940, i64 0, metadata !513), !dbg !1941
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !506), !dbg !1942
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1942
  %5 = load i32* %ntr, align 4, !dbg !1942, !tbaa !579
  %cmp7245 = icmp sgt i32 %5, 0, !dbg !1942
  br i1 %cmp7245, label %for.body.lr.ph, label %if.then35, !dbg !1942

for.body.lr.ph:                                   ; preds = %if.end3
  %tobool = icmp eq i32 %do_null2, 0, !dbg !1944
  br label %for.body, !dbg !1942

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv254 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next255, %for.inc ]
  %ndom.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %ndom.1, %for.inc ]
  %whole_sc.0246 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %whole_sc.1, %for.inc ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1946
  %6 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1946, !tbaa !555
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %6, i64 %indvars.iv254, !dbg !1946
  %7 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1946, !tbaa !555
  %call9 = call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %dsq, %struct.p7trace_s* %7) #6, !dbg !1946
  %arrayidx11 = getelementptr inbounds float* %2, i64 %indvars.iv254, !dbg !1946
  store float %call9, float* %arrayidx11, align 4, !dbg !1946, !tbaa !772
  br i1 %tobool, label %if.end18, label %if.then12, !dbg !1944

if.then12:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1944
  %8 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1944, !tbaa !555
  %arrayidx14 = getelementptr inbounds %struct.p7trace_s** %8, i64 %indvars.iv254, !dbg !1944
  %9 = load %struct.p7trace_s** %arrayidx14, align 8, !dbg !1944, !tbaa !555
  %call15 = call float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %9, i8* %dsq) #6, !dbg !1944
  %10 = load float* %arrayidx11, align 4, !dbg !1944, !tbaa !772
  %sub = fsub float %10, %call15, !dbg !1944
  store float %sub, float* %arrayidx11, align 4, !dbg !1944, !tbaa !772
  br label %if.end18, !dbg !1944

if.end18:                                         ; preds = %for.body, %if.then12
  %11 = phi float [ %call9, %for.body ], [ %sub, %if.then12 ], !dbg !1947
  %cmp22 = fcmp ogt float %11, 0.000000e+00, !dbg !1947
  %arrayidx26 = getelementptr inbounds i32* %4, i64 %indvars.iv254, !dbg !1948
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !1947

if.then24:                                        ; preds = %if.end18
  store i32 1, i32* %arrayidx26, align 4, !dbg !1948, !tbaa !579
  %inc = add nsw i32 %ndom.0247, 1, !dbg !1950
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !507), !dbg !1950
  %add = fadd float %whole_sc.0246, %11, !dbg !1951
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !513), !dbg !1951
  br label %for.inc, !dbg !1952

if.else:                                          ; preds = %if.end18
  store i32 0, i32* %arrayidx26, align 4, !dbg !1953, !tbaa !579
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.else
  %whole_sc.1 = phi float [ %add, %if.then24 ], [ %whole_sc.0246, %if.else ]
  %ndom.1 = phi i32 [ %inc, %if.then24 ], [ %ndom.0247, %if.else ]
  %indvars.iv.next255 = add i64 %indvars.iv254, 1, !dbg !1942
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1942
  %12 = load i32* %ntr, align 4, !dbg !1942, !tbaa !579
  %13 = trunc i64 %indvars.iv.next255 to i32, !dbg !1942
  %cmp7 = icmp slt i32 %13, %12, !dbg !1942
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1942

for.end:                                          ; preds = %for.inc
  %cmp33 = icmp eq i32 %ndom.1, 0, !dbg !1954
  br i1 %cmp33, label %if.then35, label %if.end41, !dbg !1954

if.then35:                                        ; preds = %if.end3, %for.end
  %.lcssa259 = phi i32 [ %12, %for.end ], [ %5, %if.end3 ]
  %call36 = call i32 @FArgMax(float* %2, i32 %.lcssa259) #6, !dbg !1955
  call void @llvm.dbg.value(metadata !{i32 %call36}, i64 0, metadata !506), !dbg !1955
  %idxprom37 = sext i32 %call36 to i64, !dbg !1957
  %arrayidx38 = getelementptr inbounds i32* %4, i64 %idxprom37, !dbg !1957
  store i32 1, i32* %arrayidx38, align 4, !dbg !1957, !tbaa !579
  %arrayidx40 = getelementptr inbounds float* %2, i64 %idxprom37, !dbg !1958
  %14 = load float* %arrayidx40, align 4, !dbg !1958, !tbaa !772
  call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !513), !dbg !1958
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !507), !dbg !1959
  br label %if.end41, !dbg !1960

if.end41:                                         ; preds = %if.then35, %for.end
  %whole_sc.2 = phi float [ %14, %if.then35 ], [ %whole_sc.1, %for.end ]
  %ndom.2 = phi i32 [ 1, %if.then35 ], [ %ndom.1, %for.end ]
  %tobool42 = icmp eq i32 %do_forward, 0, !dbg !1961
  call void @llvm.dbg.value(metadata !{float %sc_override}, i64 0, metadata !513), !dbg !1961
  %whole_sc.2.sc_override = select i1 %tobool42, float %whole_sc.2, float %sc_override, !dbg !1961
  %call45 = call double @PValue(%struct.plan7_s* %hmm, float %whole_sc.2.sc_override) #6, !dbg !1962
  call void @llvm.dbg.value(metadata !{double %call45}, i64 0, metadata !516), !dbg !1962
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !506), !dbg !1963
  call void @llvm.dbg.value(metadata !569, i64 0, metadata !508), !dbg !1963
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1963
  %15 = load i32* %ntr, align 4, !dbg !1963, !tbaa !579
  %cmp47242 = icmp sgt i32 %15, 0, !dbg !1963
  br i1 %cmp47242, label %for.body49.lr.ph, label %for.end96, !dbg !1963

for.body49.lr.ph:                                 ; preds = %if.end41
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !1965
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !1965
  %tobool70 = icmp eq i32 %hmmpfam_mode, 0, !dbg !1967
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1969
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !1969
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !1969
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !1969
  br label %for.body49, !dbg !1963

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc94
  %16 = phi i32 [ %15, %for.body49.lr.ph ], [ %38, %for.inc94 ]
  %indvars.iv251 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next252, %for.inc94 ]
  %didx.0243 = phi i32 [ 1, %for.body49.lr.ph ], [ %didx.1, %for.inc94 ]
  %arrayidx51 = getelementptr inbounds i32* %4, i64 %indvars.iv251, !dbg !1970
  %17 = load i32* %arrayidx51, align 4, !dbg !1970, !tbaa !579
  %tobool52 = icmp eq i32 %17, 0, !dbg !1970
  br i1 %tobool52, label %for.inc94, label %if.end54, !dbg !1970

if.end54:                                         ; preds = %for.body49
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1971
  %18 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1971, !tbaa !555
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv251, !dbg !1971
  %19 = load %struct.p7trace_s** %arrayidx56, align 8, !dbg !1971, !tbaa !555
  call void @TraceSimpleBounds(%struct.p7trace_s* %19, i32* %i1, i32* %i2, i32* %k1, i32* %k2) #6, !dbg !1971
  %arrayidx58 = getelementptr inbounds float* %2, i64 %indvars.iv251, !dbg !1972
  %20 = load float* %arrayidx58, align 4, !dbg !1972, !tbaa !772
  %call59 = call double @PValue(%struct.plan7_s* %hmm, float %20) #6, !dbg !1972
  call void @llvm.dbg.value(metadata !{double %call59}, i64 0, metadata !517), !dbg !1972
  %21 = load double* %domE, align 8, !dbg !1965, !tbaa !1973
  %cmp60 = fcmp ugt double %call59, %21, !dbg !1965
  br i1 %cmp60, label %if.end92, label %land.lhs.true, !dbg !1965

land.lhs.true:                                    ; preds = %if.end54
  %22 = load float* %arrayidx58, align 4, !dbg !1965, !tbaa !772
  %23 = load float* %domT, align 4, !dbg !1965, !tbaa !772
  %cmp64 = fcmp ult float %22, %23, !dbg !1965
  br i1 %cmp64, label %if.end92, label %if.then66, !dbg !1965

if.then66:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1974
  %24 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1974, !tbaa !555
  %arrayidx68 = getelementptr inbounds %struct.p7trace_s** %24, i64 %indvars.iv251, !dbg !1974
  %25 = load %struct.p7trace_s** %arrayidx68, align 8, !dbg !1974, !tbaa !555
  %call69 = call %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* %25, %struct.plan7_s* %hmm, i8* %dsq, i8* %seqname) #6, !dbg !1974
  call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %call69}, i64 0, metadata !504), !dbg !1974
  br i1 %tobool70, label %cond.end85, label %cond.true88, !dbg !1967

cond.end85:                                       ; preds = %if.then66
  %26 = load float* %arrayidx58, align 4, !dbg !1975, !tbaa !772
  %conv77 = fpext float %26 to double, !dbg !1975
  call void @llvm.dbg.value(metadata !{double %conv77}, i64 0, metadata !518), !dbg !1975
  call void @llvm.dbg.value(metadata !{i32* %i1}, i64 0, metadata !511), !dbg !1969
  %.pre257 = load i32* %i1, align 4, !dbg !1969, !tbaa !579
  br label %cond.end90

cond.true88:                                      ; preds = %if.then66
  call void @llvm.dbg.value(metadata !{i32* %i1}, i64 0, metadata !511), !dbg !1976
  %27 = load i32* %i1, align 4, !dbg !1976, !tbaa !579
  %conv72 = sitofp i32 %27 to double, !dbg !1976
  %mul73 = fmul double %conv72, -1.000000e+00, !dbg !1976
  call void @llvm.dbg.value(metadata !{double %mul73}, i64 0, metadata !518), !dbg !1976
  %28 = load float* %arrayidx58, align 4, !dbg !1969, !tbaa !772
  %29 = load i8** %name, align 8, !dbg !1969, !tbaa !555
  %30 = load i8** %acc, align 8, !dbg !1969, !tbaa !555
  %31 = load i8** %desc, align 8, !dbg !1969, !tbaa !555
  br label %cond.end90, !dbg !1969

cond.end90:                                       ; preds = %cond.end85, %cond.true88
  %32 = phi i32 [ %27, %cond.true88 ], [ %.pre257, %cond.end85 ]
  %cond86232 = phi i8* [ %30, %cond.true88 ], [ %seqacc, %cond.end85 ]
  %33 = phi float [ %28, %cond.true88 ], [ %26, %cond.end85 ]
  %sortkey.0222224230 = phi double [ %mul73, %cond.true88 ], [ %conv77, %cond.end85 ]
  %cond226228 = phi i8* [ %29, %cond.true88 ], [ %seqname, %cond.end85 ]
  %cond91 = phi i8* [ %31, %cond.true88 ], [ %seqdesc, %cond.end85 ], !dbg !1969
  call void @llvm.dbg.value(metadata !{i32* %i1}, i64 0, metadata !511), !dbg !1969
  call void @llvm.dbg.value(metadata !{i32* %i2}, i64 0, metadata !512), !dbg !1969
  %34 = load i32* %i2, align 4, !dbg !1969, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32* %k1}, i64 0, metadata !509), !dbg !1969
  %35 = load i32* %k1, align 4, !dbg !1969, !tbaa !579
  call void @llvm.dbg.value(metadata !{i32* %k2}, i64 0, metadata !510), !dbg !1969
  %36 = load i32* %k2, align 4, !dbg !1969, !tbaa !579
  %37 = load i32* %M, align 4, !dbg !1969, !tbaa !579
  call void @RegisterHit(%struct.tophit_s* %dhit, double %sortkey.0222224230, double %call59, float %33, double %call45, float %whole_sc.2.sc_override, i8* %cond226228, i8* %cond86232, i8* %cond91, i32 %32, i32 %34, i32 %L, i32 %35, i32 %36, i32 %37, i32 %didx.0243, i32 %ndom.2, %struct.fancyali_s* %call69) #6, !dbg !1969
  br label %if.end92, !dbg !1977

if.end92:                                         ; preds = %land.lhs.true, %if.end54, %cond.end90
  %inc93 = add nsw i32 %didx.0243, 1, !dbg !1978
  call void @llvm.dbg.value(metadata !{i32 %inc93}, i64 0, metadata !508), !dbg !1978
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1963
  %.pre256 = load i32* %ntr, align 4, !dbg !1963, !tbaa !579
  br label %for.inc94, !dbg !1979

for.inc94:                                        ; preds = %for.body49, %if.end92
  %38 = phi i32 [ %.pre256, %if.end92 ], [ %16, %for.body49 ], !dbg !1963
  %didx.1 = phi i32 [ %inc93, %if.end92 ], [ %didx.0243, %for.body49 ]
  %indvars.iv.next252 = add i64 %indvars.iv251, 1, !dbg !1963
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1963
  %39 = trunc i64 %indvars.iv.next252 to i32, !dbg !1963
  %cmp47 = icmp slt i32 %39, %38, !dbg !1963
  br i1 %cmp47, label %for.body49, label %for.end96, !dbg !1963

for.end96:                                        ; preds = %for.inc94, %if.end41
  %tobool97 = icmp ne i32 %hmmpfam_mode, 0, !dbg !1980
  br i1 %tobool97, label %if.then98, label %if.else109, !dbg !1980

if.then98:                                        ; preds = %for.end96
  %cmp99 = fcmp ogt double %call45, 0.000000e+00, !dbg !1981
  br i1 %cmp99, label %cond.true101, label %cond.false104, !dbg !1981

cond.true101:                                     ; preds = %if.then98
  %call102 = call double @log(double %call45) #6, !dbg !1981
  %mul103 = fmul double %call102, -1.000000e+00, !dbg !1981
  br label %if.end111, !dbg !1981

cond.false104:                                    ; preds = %if.then98
  %conv105 = fpext float %whole_sc.2.sc_override to double, !dbg !1981
  %add106 = fadd double %conv105, 1.000000e+05, !dbg !1981
  br label %if.end111, !dbg !1981

if.else109:                                       ; preds = %for.end96
  %conv110 = fpext float %whole_sc.2.sc_override to double, !dbg !1982
  call void @llvm.dbg.value(metadata !{double %conv110}, i64 0, metadata !518), !dbg !1982
  br label %if.end111

if.end111:                                        ; preds = %cond.true101, %cond.false104, %if.else109
  %sortkey.1 = phi double [ %conv110, %if.else109 ], [ %mul103, %cond.true101 ], [ %add106, %cond.false104 ]
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !1983
  %40 = load float* %globT, align 4, !dbg !1983, !tbaa !772
  %cmp112 = fcmp ult float %whole_sc.2.sc_override, %40, !dbg !1983
  br i1 %cmp112, label %for.cond134.preheader, label %if.then114, !dbg !1983

if.then114:                                       ; preds = %if.end111
  br i1 %tobool97, label %cond.true128, label %cond.end131, !dbg !1984

cond.true128:                                     ; preds = %if.then114
  %name117 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !1984
  %41 = load i8** %name117, align 8, !dbg !1984, !tbaa !555
  %acc123 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !1984
  %42 = load i8** %acc123, align 8, !dbg !1984, !tbaa !555
  %desc129 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !1984
  %43 = load i8** %desc129, align 8, !dbg !1984, !tbaa !555
  br label %cond.end131, !dbg !1984

cond.end131:                                      ; preds = %if.then114, %cond.true128
  %cond126238 = phi i8* [ %42, %cond.true128 ], [ %seqacc, %if.then114 ]
  %cond120234236 = phi i8* [ %41, %cond.true128 ], [ %seqname, %if.then114 ]
  %cond132 = phi i8* [ %43, %cond.true128 ], [ %seqdesc, %if.then114 ], !dbg !1984
  call void @RegisterHit(%struct.tophit_s* %ghit, double %sortkey.1, double %call45, float %whole_sc.2.sc_override, double 0.000000e+00, float 0.000000e+00, i8* %cond120234236, i8* %cond126238, i8* %cond132, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %ndom.2, %struct.fancyali_s* null) #6, !dbg !1984
  br label %for.cond134.preheader, !dbg !1986

for.cond134.preheader:                            ; preds = %if.end111, %cond.end131
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1987
  %44 = load i32* %ntr, align 4, !dbg !1987, !tbaa !579
  %cmp135240 = icmp sgt i32 %44, 0, !dbg !1987
  br i1 %cmp135240, label %for.body137, label %for.end142, !dbg !1987

for.body137:                                      ; preds = %for.cond134.preheader, %for.body137
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body137 ], [ 0, %for.cond134.preheader ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1989
  %45 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1989, !tbaa !555
  %arrayidx139 = getelementptr inbounds %struct.p7trace_s** %45, i64 %indvars.iv, !dbg !1989
  %46 = load %struct.p7trace_s** %arrayidx139, align 8, !dbg !1989, !tbaa !555
  call void @P7FreeTrace(%struct.p7trace_s* %46) #6, !dbg !1989
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1987
  call void @llvm.dbg.value(metadata !{i32* %ntr}, i64 0, metadata !505), !dbg !1987
  %47 = load i32* %ntr, align 4, !dbg !1987, !tbaa !579
  %48 = trunc i64 %indvars.iv.next to i32, !dbg !1987
  %cmp135 = icmp slt i32 %48, %47, !dbg !1987
  br i1 %cmp135, label %for.body137, label %for.end142, !dbg !1987

for.end142:                                       ; preds = %for.body137, %for.cond134.preheader
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %tarr}, i64 0, metadata !503), !dbg !1990
  %49 = load %struct.p7trace_s*** %tarr, align 8, !dbg !1990, !tbaa !555
  %50 = bitcast %struct.p7trace_s** %49 to i8*, !dbg !1990
  call void @free(i8* %50) #6, !dbg !1990
  call void @free(i8* %call) #6, !dbg !1991
  call void @free(i8* %call6) #6, !dbg !1992
  br label %return, !dbg !1993

return:                                           ; preds = %entry, %for.end142
  %retval.0 = phi float [ %whole_sc.2.sc_override, %for.end142 ], [ %sc_override, %entry ]
  ret float %retval.0, !dbg !1994
}

; Function Attrs: optsize
declare void @TraceDecompose(%struct.p7trace_s*, %struct.p7trace_s***, i32*) #2

; Function Attrs: optsize
declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #2

; Function Attrs: optsize
declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #2

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #2

; Function Attrs: optsize
declare double @PValue(%struct.plan7_s*, float) #2

; Function Attrs: optsize
declare void @TraceSimpleBounds(%struct.p7trace_s*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s*, %struct.plan7_s*, i8*, i8*) #2

; Function Attrs: optsize
declare void @RegisterHit(%struct.tophit_s*, double, double, float, double, float, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s*) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !21, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, metadata !5, metadata !"", i32 524, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 524, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{i32 786451, metadata !4, null, metadata !"threshold_s", i32 518, i64 320, i64 64, i32 0, i32 0, null, metadata !6, i32 0, null, null} ; [ DW_TAG_structure_type ] [threshold_s] [line 518, size 320, align 64, offset 0] [from ]
!6 = metadata !{metadata !7, metadata !9, metadata !11, metadata !12, metadata !13, metadata !14}
!7 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"globT", i32 519, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [globT] [line 519, size 32, align 32, offset 0] [from float]
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"globE", i32 520, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [globE] [line 520, size 64, align 64, offset 64] [from double]
!10 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"domT", i32 521, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [domT] [line 521, size 32, align 32, offset 128] [from float]
!12 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"domE", i32 522, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [domE] [line 522, size 64, align 64, offset 192] [from double]
!13 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"autocut", i32 524, i64 32, i64 32, i64 256, i32 0, metadata !3} ; [ DW_TAG_member ] [autocut] [line 524, size 32, align 32, offset 256] [from ]
!14 = metadata !{i32 786445, metadata !4, metadata !5, metadata !"Z", i32 525, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [Z] [line 525, size 32, align 32, offset 288] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20}
!17 = metadata !{i32 786472, metadata !"CUT_NONE", i64 0} ; [ DW_TAG_enumerator ] [CUT_NONE :: 0]
!18 = metadata !{i32 786472, metadata !"CUT_GA", i64 1} ; [ DW_TAG_enumerator ] [CUT_GA :: 1]
!19 = metadata !{i32 786472, metadata !"CUT_NC", i64 2} ; [ DW_TAG_enumerator ] [CUT_NC :: 2]
!20 = metadata !{i32 786472, metadata !"CUT_TC", i64 3} ; [ DW_TAG_enumerator ] [CUT_TC :: 3]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !52, metadata !65, metadata !76, metadata !81, metadata !105, metadata !110, metadata !117, metadata !121, metadata !125, metadata !203, metadata !236, metadata !257, metadata !285, metadata !312, metadata !327, metadata !425, metadata !442, metadata !519}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"CreatePlan7Matrix", metadata !"CreatePlan7Matrix", metadata !"", i32 61, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.dpmatrix_s* (i32, i32, i32, i32)* @CreatePlan7Matrix, null, null, metadata !45, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [CreatePlan7Matrix]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !15, metadata !15, metadata !15, metadata !15}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!28 = metadata !{i32 786451, metadata !4, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !33, metadata !34, metadata !35, metadata !36, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!30 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !37} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!39 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!40 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !37} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!41 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!42 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!43 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!44 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!45 = metadata !{metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!46 = metadata !{i32 786689, metadata !23, metadata !"N", metadata !24, i32 16777277, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 61]
!47 = metadata !{i32 786689, metadata !23, metadata !"M", metadata !24, i32 33554493, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 61]
!48 = metadata !{i32 786689, metadata !23, metadata !"padN", metadata !24, i32 50331709, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padN] [line 61]
!49 = metadata !{i32 786689, metadata !23, metadata !"padM", metadata !24, i32 67108925, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padM] [line 61]
!50 = metadata !{i32 786688, metadata !23, metadata !"mx", metadata !24, i32 63, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 63]
!51 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !24, i32 64, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!52 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"ResizePlan7Matrix", metadata !"ResizePlan7Matrix", metadata !"", i32 123, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.dpmatrix_s*, i32, i32, i32***, i32***, i32***, i32***)* @ResizePlan7Matrix, null, null, metadata !56, i32 125} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 125] [ResizePlan7Matrix]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !27, metadata !15, metadata !15, metadata !55, metadata !55, metadata !55, metadata !55}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!57 = metadata !{i32 786689, metadata !52, metadata !"mx", metadata !24, i32 16777339, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 123]
!58 = metadata !{i32 786689, metadata !52, metadata !"N", metadata !24, i32 33554555, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 123]
!59 = metadata !{i32 786689, metadata !52, metadata !"M", metadata !24, i32 50331771, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 123]
!60 = metadata !{i32 786689, metadata !52, metadata !"xmx", metadata !24, i32 67108988, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmx] [line 124]
!61 = metadata !{i32 786689, metadata !52, metadata !"mmx", metadata !24, i32 83886204, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mmx] [line 124]
!62 = metadata !{i32 786689, metadata !52, metadata !"imx", metadata !24, i32 100663420, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imx] [line 124]
!63 = metadata !{i32 786689, metadata !52, metadata !"dmx", metadata !24, i32 117440636, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dmx] [line 124]
!64 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !24, i32 126, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!65 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"AllocPlan7Matrix", metadata !"AllocPlan7Matrix", metadata !"", i32 192, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.dpmatrix_s* (i32, i32, i32***, i32***, i32***, i32***)* @AllocPlan7Matrix, null, null, metadata !68, i32 193} ; [ DW_TAG_subprogram ] [line 192] [def] [scope 193] [AllocPlan7Matrix]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !27, metadata !15, metadata !15, metadata !55, metadata !55, metadata !55, metadata !55}
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!69 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!70 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 192]
!71 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!72 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!73 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!74 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!75 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!76 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"FreePlan7Matrix", metadata !"FreePlan7Matrix", metadata !"", i32 211, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.dpmatrix_s*)* @FreePlan7Matrix, null, null, metadata !79, i32 212} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 212] [FreePlan7Matrix]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !27}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786689, metadata !76, metadata !"mx", metadata !24, i32 16777427, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 211]
!81 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"AllocShadowMatrix", metadata !"AllocShadowMatrix", metadata !"", i32 239, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.dpshadow_s* (i32, i32, i8***, i8***, i8***, i8***)* @AllocShadowMatrix, null, null, metadata !96, i32 240} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 240] [AllocShadowMatrix]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !84, metadata !15, metadata !15, metadata !95, metadata !95, metadata !95, metadata !95}
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpshadow_s]
!85 = metadata !{i32 786451, metadata !4, null, metadata !"dpshadow_s", i32 320, i64 320, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpshadow_s] [line 320, size 320, align 64, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !91, metadata !92, metadata !93, metadata !94}
!87 = metadata !{i32 786445, metadata !4, metadata !85, metadata !"xtb", i32 321, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [xtb] [line 321, size 64, align 64, offset 0] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!90 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!91 = metadata !{i32 786445, metadata !4, metadata !85, metadata !"mtb", i32 322, i64 64, i64 64, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [mtb] [line 322, size 64, align 64, offset 64] [from ]
!92 = metadata !{i32 786445, metadata !4, metadata !85, metadata !"itb", i32 323, i64 64, i64 64, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [itb] [line 323, size 64, align 64, offset 128] [from ]
!93 = metadata !{i32 786445, metadata !4, metadata !85, metadata !"dtb", i32 324, i64 64, i64 64, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [dtb] [line 324, size 64, align 64, offset 192] [from ]
!94 = metadata !{i32 786445, metadata !4, metadata !85, metadata !"esrc", i32 325, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [esrc] [line 325, size 64, align 64, offset 256] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!97 = metadata !{i32 786689, metadata !81, metadata !"rows", metadata !24, i32 16777455, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rows] [line 239]
!98 = metadata !{i32 786689, metadata !81, metadata !"M", metadata !24, i32 33554671, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 239]
!99 = metadata !{i32 786689, metadata !81, metadata !"xtb", metadata !24, i32 50331887, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xtb] [line 239]
!100 = metadata !{i32 786689, metadata !81, metadata !"mtb", metadata !24, i32 67109103, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtb] [line 239]
!101 = metadata !{i32 786689, metadata !81, metadata !"itb", metadata !24, i32 83886319, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [itb] [line 239]
!102 = metadata !{i32 786689, metadata !81, metadata !"dtb", metadata !24, i32 100663535, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtb] [line 239]
!103 = metadata !{i32 786688, metadata !81, metadata !"tb", metadata !24, i32 241, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 241]
!104 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !24, i32 242, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 242]
!105 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"FreeShadowMatrix", metadata !"FreeShadowMatrix", metadata !"", i32 276, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.dpshadow_s*)* @FreeShadowMatrix, null, null, metadata !108, i32 277} ; [ DW_TAG_subprogram ] [line 276] [def] [scope 277] [FreeShadowMatrix]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !84}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786689, metadata !105, metadata !"tb", metadata !24, i32 16777492, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tb] [line 276]
!110 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7ViterbiSize", metadata !"P7ViterbiSize", metadata !"", i32 307, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @P7ViterbiSize, null, null, metadata !113, i32 308} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 308] [P7ViterbiSize]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !15, metadata !15, metadata !15}
!113 = metadata !{metadata !114, metadata !115, metadata !116}
!114 = metadata !{i32 786689, metadata !110, metadata !"L", metadata !24, i32 16777523, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 307]
!115 = metadata !{i32 786689, metadata !110, metadata !"M", metadata !24, i32 33554739, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 307]
!116 = metadata !{i32 786688, metadata !110, metadata !"Mbytes", metadata !24, i32 309, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Mbytes] [line 309]
!117 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7SmallViterbiSize", metadata !"P7SmallViterbiSize", metadata !"", i32 347, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @P7SmallViterbiSize, null, null, metadata !118, i32 348} ; [ DW_TAG_subprogram ] [line 347] [def] [scope 348] [P7SmallViterbiSize]
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786689, metadata !117, metadata !"L", metadata !24, i32 16777563, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 347]
!120 = metadata !{i32 786689, metadata !117, metadata !"M", metadata !24, i32 33554779, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 347]
!121 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7WeeViterbiSize", metadata !"P7WeeViterbiSize", metadata !"", i32 370, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @P7WeeViterbiSize, null, null, metadata !122, i32 371} ; [ DW_TAG_subprogram ] [line 370] [def] [scope 371] [P7WeeViterbiSize]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786689, metadata !121, metadata !"L", metadata !24, i32 16777586, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 370]
!124 = metadata !{i32 786689, metadata !121, metadata !"M", metadata !24, i32 33554802, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 370]
!125 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7Forward", metadata !"P7Forward", metadata !"", i32 397, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**)* @P7Forward, null, null, metadata !190, i32 398} ; [ DW_TAG_subprogram ] [line 397] [def] [scope 398] [P7Forward]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{metadata !8, metadata !89, metadata !15, metadata !128, metadata !189}
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!129 = metadata !{i32 786451, metadata !4, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !155, metadata !156, metadata !157, metadata !158, metadata !163, metadata !164, metadata !165, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!134 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !89} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!135 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!136 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !89} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!137 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !89} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!138 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!139 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !89} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!140 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!141 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!142 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!143 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!144 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !32} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!145 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!146 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!147 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!148 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !8} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!149 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !8} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!150 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !8} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!151 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !15} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!152 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !153} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!155 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !153} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!156 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !153} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!157 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !8} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!158 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !159} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!160 = metadata !{metadata !161, metadata !162}
!161 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!162 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!163 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !154} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!164 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !154} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!165 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !166} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !8, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!169 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !8} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!170 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !31} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!171 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !31} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!172 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !31} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!173 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !174} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !15, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !32} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!176 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !32} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!177 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !32} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!178 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !32} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!179 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !32} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!180 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !32} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!181 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !32} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!182 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !31} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!183 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !31} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!184 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !15} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!185 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !15} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!186 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!187 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !8} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!188 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!191 = metadata !{i32 786689, metadata !125, metadata !"dsq", metadata !24, i32 16777613, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 397]
!192 = metadata !{i32 786689, metadata !125, metadata !"L", metadata !24, i32 33554829, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 397]
!193 = metadata !{i32 786689, metadata !125, metadata !"hmm", metadata !24, i32 50332045, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 397]
!194 = metadata !{i32 786689, metadata !125, metadata !"ret_mx", metadata !24, i32 67109261, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mx] [line 397]
!195 = metadata !{i32 786688, metadata !125, metadata !"mx", metadata !24, i32 399, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 399]
!196 = metadata !{i32 786688, metadata !125, metadata !"xmx", metadata !24, i32 400, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 400]
!197 = metadata !{i32 786688, metadata !125, metadata !"mmx", metadata !24, i32 401, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 401]
!198 = metadata !{i32 786688, metadata !125, metadata !"imx", metadata !24, i32 402, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 402]
!199 = metadata !{i32 786688, metadata !125, metadata !"dmx", metadata !24, i32 403, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 403]
!200 = metadata !{i32 786688, metadata !125, metadata !"i", metadata !24, i32 404, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 404]
!201 = metadata !{i32 786688, metadata !125, metadata !"k", metadata !24, i32 404, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 404]
!202 = metadata !{i32 786688, metadata !125, metadata !"sc", metadata !24, i32 405, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 405]
!203 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7ViterbiTrace", metadata !"P7ViterbiTrace", metadata !"", i32 628, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8*, i32, %struct.dpmatrix_s*, %struct.p7trace_s**)* @P7ViterbiTrace, null, null, metadata !214, i32 630} ; [ DW_TAG_subprogram ] [line 628] [def] [scope 630] [P7ViterbiTrace]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{null, metadata !128, metadata !89, metadata !15, metadata !27, metadata !206}
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!208 = metadata !{i32 786451, metadata !4, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213}
!210 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!211 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!212 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!213 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230}
!215 = metadata !{i32 786689, metadata !203, metadata !"hmm", metadata !24, i32 16777844, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 628]
!216 = metadata !{i32 786689, metadata !203, metadata !"dsq", metadata !24, i32 33555060, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 628]
!217 = metadata !{i32 786689, metadata !203, metadata !"N", metadata !24, i32 50332276, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 628]
!218 = metadata !{i32 786689, metadata !203, metadata !"mx", metadata !24, i32 67109493, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 629]
!219 = metadata !{i32 786689, metadata !203, metadata !"ret_tr", metadata !24, i32 83886709, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 629]
!220 = metadata !{i32 786688, metadata !203, metadata !"tr", metadata !24, i32 631, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 631]
!221 = metadata !{i32 786688, metadata !203, metadata !"curralloc", metadata !24, i32 632, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curralloc] [line 632]
!222 = metadata !{i32 786688, metadata !203, metadata !"tpos", metadata !24, i32 633, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 633]
!223 = metadata !{i32 786688, metadata !203, metadata !"i", metadata !24, i32 634, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 634]
!224 = metadata !{i32 786688, metadata !203, metadata !"k", metadata !24, i32 635, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 635]
!225 = metadata !{i32 786688, metadata !203, metadata !"xmx", metadata !24, i32 636, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 636]
!226 = metadata !{i32 786688, metadata !203, metadata !"mmx", metadata !24, i32 636, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 636]
!227 = metadata !{i32 786688, metadata !203, metadata !"imx", metadata !24, i32 636, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 636]
!228 = metadata !{i32 786688, metadata !203, metadata !"dmx", metadata !24, i32 636, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 636]
!229 = metadata !{i32 786688, metadata !203, metadata !"sc", metadata !24, i32 637, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 637]
!230 = metadata !{i32 786688, metadata !231, metadata !"dk", metadata !24, i32 791, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dk] [line 791]
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 790, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!232 = metadata !{i32 786443, metadata !1, metadata !233, i32 787, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 785, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!234 = metadata !{i32 786443, metadata !1, metadata !235, i32 666, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!235 = metadata !{i32 786443, metadata !1, metadata !203, i32 665, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!236 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7SmallViterbi", metadata !"P7SmallViterbi", metadata !"", i32 896, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**)* @P7SmallViterbi, null, null, metadata !239, i32 897} ; [ DW_TAG_subprogram ] [line 896] [def] [scope 897] [P7SmallViterbi]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{metadata !8, metadata !89, metadata !15, metadata !128, metadata !27, metadata !206}
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256}
!240 = metadata !{i32 786689, metadata !236, metadata !"dsq", metadata !24, i32 16778112, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 896]
!241 = metadata !{i32 786689, metadata !236, metadata !"L", metadata !24, i32 33555328, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 896]
!242 = metadata !{i32 786689, metadata !236, metadata !"hmm", metadata !24, i32 50332544, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 896]
!243 = metadata !{i32 786689, metadata !236, metadata !"mx", metadata !24, i32 67109760, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 896]
!244 = metadata !{i32 786689, metadata !236, metadata !"ret_tr", metadata !24, i32 83886976, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 896]
!245 = metadata !{i32 786688, metadata !236, metadata !"ctr", metadata !24, i32 898, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctr] [line 898]
!246 = metadata !{i32 786688, metadata !236, metadata !"tr", metadata !24, i32 899, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 899]
!247 = metadata !{i32 786688, metadata !236, metadata !"tarr", metadata !24, i32 900, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tarr] [line 900]
!248 = metadata !{i32 786688, metadata !236, metadata !"ndom", metadata !24, i32 901, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 901]
!249 = metadata !{i32 786688, metadata !236, metadata !"i", metadata !24, i32 902, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 902]
!250 = metadata !{i32 786688, metadata !236, metadata !"pos", metadata !24, i32 903, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 903]
!251 = metadata !{i32 786688, metadata !236, metadata !"tpos", metadata !24, i32 904, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 904]
!252 = metadata !{i32 786688, metadata !236, metadata !"tlen", metadata !24, i32 905, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlen] [line 905]
!253 = metadata !{i32 786688, metadata !236, metadata !"sqlen", metadata !24, i32 906, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqlen] [line 906]
!254 = metadata !{i32 786688, metadata !236, metadata !"totlen", metadata !24, i32 907, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totlen] [line 907]
!255 = metadata !{i32 786688, metadata !236, metadata !"sc", metadata !24, i32 908, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 908]
!256 = metadata !{i32 786688, metadata !236, metadata !"t2", metadata !24, i32 909, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 909]
!257 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7ParsingViterbi", metadata !"P7ParsingViterbi", metadata !"", i32 1064, metadata !258, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.p7trace_s**)* @P7ParsingViterbi, null, null, metadata !260, i32 1065} ; [ DW_TAG_subprogram ] [line 1064] [def] [scope 1065] [P7ParsingViterbi]
!258 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{metadata !8, metadata !89, metadata !15, metadata !128, metadata !206}
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284}
!261 = metadata !{i32 786689, metadata !257, metadata !"dsq", metadata !24, i32 16778280, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 1064]
!262 = metadata !{i32 786689, metadata !257, metadata !"L", metadata !24, i32 33555496, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1064]
!263 = metadata !{i32 786689, metadata !257, metadata !"hmm", metadata !24, i32 50332712, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1064]
!264 = metadata !{i32 786689, metadata !257, metadata !"ret_tr", metadata !24, i32 67109928, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 1064]
!265 = metadata !{i32 786688, metadata !257, metadata !"mx", metadata !24, i32 1066, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 1066]
!266 = metadata !{i32 786688, metadata !257, metadata !"tmx", metadata !24, i32 1067, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmx] [line 1067]
!267 = metadata !{i32 786688, metadata !257, metadata !"tr", metadata !24, i32 1068, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 1068]
!268 = metadata !{i32 786688, metadata !257, metadata !"xmx", metadata !24, i32 1069, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 1069]
!269 = metadata !{i32 786688, metadata !257, metadata !"mmx", metadata !24, i32 1069, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 1069]
!270 = metadata !{i32 786688, metadata !257, metadata !"dmx", metadata !24, i32 1069, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 1069]
!271 = metadata !{i32 786688, metadata !257, metadata !"imx", metadata !24, i32 1069, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 1069]
!272 = metadata !{i32 786688, metadata !257, metadata !"xtr", metadata !24, i32 1070, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xtr] [line 1070]
!273 = metadata !{i32 786688, metadata !257, metadata !"mtr", metadata !24, i32 1070, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtr] [line 1070]
!274 = metadata !{i32 786688, metadata !257, metadata !"dtr", metadata !24, i32 1070, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtr] [line 1070]
!275 = metadata !{i32 786688, metadata !257, metadata !"itr", metadata !24, i32 1070, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itr] [line 1070]
!276 = metadata !{i32 786688, metadata !257, metadata !"btr", metadata !24, i32 1071, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [btr] [line 1071]
!277 = metadata !{i32 786688, metadata !257, metadata !"etr", metadata !24, i32 1071, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etr] [line 1071]
!278 = metadata !{i32 786688, metadata !257, metadata !"sc", metadata !24, i32 1072, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1072]
!279 = metadata !{i32 786688, metadata !257, metadata !"i", metadata !24, i32 1073, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1073]
!280 = metadata !{i32 786688, metadata !257, metadata !"k", metadata !24, i32 1073, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1073]
!281 = metadata !{i32 786688, metadata !257, metadata !"tpos", metadata !24, i32 1073, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 1073]
!282 = metadata !{i32 786688, metadata !257, metadata !"cur", metadata !24, i32 1074, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 1074]
!283 = metadata !{i32 786688, metadata !257, metadata !"prv", metadata !24, i32 1074, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prv] [line 1074]
!284 = metadata !{i32 786688, metadata !257, metadata !"curralloc", metadata !24, i32 1075, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curralloc] [line 1075]
!285 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7WeeViterbi", metadata !"P7WeeViterbi", metadata !"", i32 1263, metadata !258, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.p7trace_s**)* @P7WeeViterbi, null, null, metadata !286, i32 1264} ; [ DW_TAG_subprogram ] [line 1263] [def] [scope 1264] [P7WeeViterbi]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311}
!287 = metadata !{i32 786689, metadata !285, metadata !"dsq", metadata !24, i32 16778479, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 1263]
!288 = metadata !{i32 786689, metadata !285, metadata !"L", metadata !24, i32 33555695, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1263]
!289 = metadata !{i32 786689, metadata !285, metadata !"hmm", metadata !24, i32 50332911, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1263]
!290 = metadata !{i32 786689, metadata !285, metadata !"ret_tr", metadata !24, i32 67110127, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 1263]
!291 = metadata !{i32 786688, metadata !285, metadata !"tr", metadata !24, i32 1265, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 1265]
!292 = metadata !{i32 786688, metadata !285, metadata !"kassign", metadata !24, i32 1266, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kassign] [line 1266]
!293 = metadata !{i32 786688, metadata !285, metadata !"tassign", metadata !24, i32 1267, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tassign] [line 1267]
!294 = metadata !{i32 786688, metadata !285, metadata !"endlist", metadata !24, i32 1268, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endlist] [line 1268]
!295 = metadata !{i32 786688, metadata !285, metadata !"startlist", metadata !24, i32 1269, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [startlist] [line 1269]
!296 = metadata !{i32 786688, metadata !285, metadata !"lpos", metadata !24, i32 1270, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lpos] [line 1270]
!297 = metadata !{i32 786688, metadata !285, metadata !"k1", metadata !24, i32 1271, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 1271]
!298 = metadata !{i32 786688, metadata !285, metadata !"k2", metadata !24, i32 1271, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 1271]
!299 = metadata !{i32 786688, metadata !285, metadata !"k3", metadata !24, i32 1271, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k3] [line 1271]
!300 = metadata !{i32 786688, metadata !285, metadata !"t1", metadata !24, i32 1272, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 1272]
!301 = metadata !{i32 786688, metadata !285, metadata !"t2", metadata !24, i32 1272, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 1272]
!302 = metadata !{i32 786688, metadata !285, metadata !"t3", metadata !24, i32 1272, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t3] [line 1272]
!303 = metadata !{i32 786688, metadata !285, metadata !"s1", metadata !24, i32 1273, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 1273]
!304 = metadata !{i32 786688, metadata !285, metadata !"s2", metadata !24, i32 1273, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 1273]
!305 = metadata !{i32 786688, metadata !285, metadata !"s3", metadata !24, i32 1273, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s3] [line 1273]
!306 = metadata !{i32 786688, metadata !285, metadata !"sc", metadata !24, i32 1274, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1274]
!307 = metadata !{i32 786688, metadata !285, metadata !"ret_sc", metadata !24, i32 1275, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret_sc] [line 1275]
!308 = metadata !{i32 786688, metadata !285, metadata !"tlen", metadata !24, i32 1276, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tlen] [line 1276]
!309 = metadata !{i32 786688, metadata !285, metadata !"i", metadata !24, i32 1277, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1277]
!310 = metadata !{i32 786688, metadata !285, metadata !"k", metadata !24, i32 1277, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1277]
!311 = metadata !{i32 786688, metadata !285, metadata !"tpos", metadata !24, i32 1277, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 1277]
!312 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Plan7ESTViterbi", metadata !"Plan7ESTViterbi", metadata !"", i32 1483, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**)* @Plan7ESTViterbi, null, null, metadata !313, i32 1484} ; [ DW_TAG_subprogram ] [line 1483] [def] [scope 1484] [Plan7ESTViterbi]
!313 = metadata !{metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326}
!314 = metadata !{i32 786689, metadata !312, metadata !"dsq", metadata !24, i32 16778699, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 1483]
!315 = metadata !{i32 786689, metadata !312, metadata !"L", metadata !24, i32 33555915, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1483]
!316 = metadata !{i32 786689, metadata !312, metadata !"hmm", metadata !24, i32 50333131, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1483]
!317 = metadata !{i32 786689, metadata !312, metadata !"ret_mx", metadata !24, i32 67110347, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mx] [line 1483]
!318 = metadata !{i32 786688, metadata !312, metadata !"mx", metadata !24, i32 1485, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 1485]
!319 = metadata !{i32 786688, metadata !312, metadata !"xmx", metadata !24, i32 1486, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 1486]
!320 = metadata !{i32 786688, metadata !312, metadata !"mmx", metadata !24, i32 1487, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 1487]
!321 = metadata !{i32 786688, metadata !312, metadata !"imx", metadata !24, i32 1488, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 1488]
!322 = metadata !{i32 786688, metadata !312, metadata !"dmx", metadata !24, i32 1489, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 1489]
!323 = metadata !{i32 786688, metadata !312, metadata !"i", metadata !24, i32 1490, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1490]
!324 = metadata !{i32 786688, metadata !312, metadata !"k", metadata !24, i32 1490, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1490]
!325 = metadata !{i32 786688, metadata !312, metadata !"sc", metadata !24, i32 1491, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1491]
!326 = metadata !{i32 786688, metadata !312, metadata !"codon", metadata !24, i32 1492, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [codon] [line 1492]
!327 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"P7ViterbiAlignAlignment", metadata !"P7ViterbiAlignAlignment", metadata !"", i32 2022, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7trace_s* (%struct.msa_struct*, %struct.plan7_s*)* @P7ViterbiAlignAlignment, null, null, metadata !401, i32 2023} ; [ DW_TAG_subprogram ] [line 2022] [def] [scope 2023] [P7ViterbiAlignAlignment]
!328 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{metadata !207, metadata !330, metadata !128}
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!331 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!332 = metadata !{i32 786451, metadata !333, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!333 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!334 = metadata !{metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !357, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400}
!335 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!336 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!337 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !154} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!338 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!339 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!340 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!341 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!342 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !89} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!343 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !89} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!344 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !89} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!345 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !89} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!346 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !89} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!347 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !89} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!348 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !89} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!349 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!350 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!351 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !88} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!352 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !88} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!353 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !354} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!354 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!355 = metadata !{metadata !356}
!356 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!357 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !358} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!358 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !15, metadata !355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!359 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !88} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!360 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !15} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!361 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!362 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !88} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!363 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !88} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!364 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !15} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!365 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!366 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !88} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!367 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !95} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!368 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !369} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!369 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !370} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!370 = metadata !{i32 786454, metadata !333, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !371} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!371 = metadata !{i32 786451, metadata !372, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !373, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!372 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!373 = metadata !{metadata !374, metadata !382, metadata !383, metadata !384}
!374 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !376} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!376 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !377} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!377 = metadata !{i32 786451, metadata !372, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !378, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!378 = metadata !{metadata !379, metadata !380, metadata !381}
!379 = metadata !{i32 786445, metadata !372, metadata !377, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!380 = metadata !{i32 786445, metadata !372, metadata !377, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!381 = metadata !{i32 786445, metadata !372, metadata !377, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !376} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!382 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!383 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!384 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!385 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !15} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!386 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !88} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!387 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !88} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!388 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !369} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!389 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !15} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!390 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !88} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!391 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !95} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!392 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !369} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!393 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !15} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!394 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !369} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!395 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !15} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!396 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !15} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!397 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !32} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!398 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !32} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!399 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !32} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!400 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !15} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!401 = metadata !{metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424}
!402 = metadata !{i32 786689, metadata !327, metadata !"msa", metadata !24, i32 16779238, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 2022]
!403 = metadata !{i32 786689, metadata !327, metadata !"hmm", metadata !24, i32 33556454, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 2022]
!404 = metadata !{i32 786688, metadata !327, metadata !"mx", metadata !24, i32 2024, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 2024]
!405 = metadata !{i32 786688, metadata !327, metadata !"tb", metadata !24, i32 2025, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 2025]
!406 = metadata !{i32 786688, metadata !327, metadata !"tr", metadata !24, i32 2026, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 2026]
!407 = metadata !{i32 786688, metadata !327, metadata !"xmx", metadata !24, i32 2027, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 2027]
!408 = metadata !{i32 786688, metadata !327, metadata !"mmx", metadata !24, i32 2027, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 2027]
!409 = metadata !{i32 786688, metadata !327, metadata !"imx", metadata !24, i32 2027, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 2027]
!410 = metadata !{i32 786688, metadata !327, metadata !"dmx", metadata !24, i32 2027, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 2027]
!411 = metadata !{i32 786688, metadata !327, metadata !"xtb", metadata !24, i32 2028, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xtb] [line 2028]
!412 = metadata !{i32 786688, metadata !327, metadata !"mtb", metadata !24, i32 2028, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtb] [line 2028]
!413 = metadata !{i32 786688, metadata !327, metadata !"itb", metadata !24, i32 2028, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itb] [line 2028]
!414 = metadata !{i32 786688, metadata !327, metadata !"dtb", metadata !24, i32 2028, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtb] [line 2028]
!415 = metadata !{i32 786688, metadata !327, metadata !"con", metadata !24, i32 2029, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [con] [line 2029]
!416 = metadata !{i32 786688, metadata !327, metadata !"mocc", metadata !24, i32 2030, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mocc] [line 2030]
!417 = metadata !{i32 786688, metadata !327, metadata !"i", metadata !24, i32 2031, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2031]
!418 = metadata !{i32 786688, metadata !327, metadata !"k", metadata !24, i32 2032, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2032]
!419 = metadata !{i32 786688, metadata !327, metadata !"idx", metadata !24, i32 2033, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 2033]
!420 = metadata !{i32 786688, metadata !327, metadata !"sym", metadata !24, i32 2034, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 2034]
!421 = metadata !{i32 786688, metadata !327, metadata !"sc", metadata !24, i32 2035, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 2035]
!422 = metadata !{i32 786688, metadata !327, metadata !"denom", metadata !24, i32 2036, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 2036]
!423 = metadata !{i32 786688, metadata !327, metadata !"cur", metadata !24, i32 2037, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 2037]
!424 = metadata !{i32 786688, metadata !327, metadata !"prv", metadata !24, i32 2037, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prv] [line 2037]
!425 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"ShadowTrace", metadata !"ShadowTrace", metadata !"", i32 2213, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7trace_s* (%struct.dpshadow_s*, %struct.plan7_s*, i32)* @ShadowTrace, null, null, metadata !428, i32 2214} ; [ DW_TAG_subprogram ] [line 2213] [def] [scope 2214] [ShadowTrace]
!426 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!427 = metadata !{metadata !207, metadata !84, metadata !128, metadata !15}
!428 = metadata !{metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438}
!429 = metadata !{i32 786689, metadata !425, metadata !"tb", metadata !24, i32 16779429, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tb] [line 2213]
!430 = metadata !{i32 786689, metadata !425, metadata !"hmm", metadata !24, i32 33556645, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 2213]
!431 = metadata !{i32 786689, metadata !425, metadata !"L", metadata !24, i32 50333861, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 2213]
!432 = metadata !{i32 786688, metadata !425, metadata !"tr", metadata !24, i32 2215, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 2215]
!433 = metadata !{i32 786688, metadata !425, metadata !"curralloc", metadata !24, i32 2216, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curralloc] [line 2216]
!434 = metadata !{i32 786688, metadata !425, metadata !"tpos", metadata !24, i32 2217, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 2217]
!435 = metadata !{i32 786688, metadata !425, metadata !"i", metadata !24, i32 2218, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2218]
!436 = metadata !{i32 786688, metadata !425, metadata !"k", metadata !24, i32 2219, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2219]
!437 = metadata !{i32 786688, metadata !425, metadata !"nxtstate", metadata !24, i32 2220, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxtstate] [line 2220]
!438 = metadata !{i32 786688, metadata !439, metadata !"dk", metadata !24, i32 2317, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dk] [line 2317]
!439 = metadata !{i32 786443, metadata !1, metadata !440, i32 2316, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!440 = metadata !{i32 786443, metadata !1, metadata !441, i32 2243, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!441 = metadata !{i32 786443, metadata !1, metadata !425, i32 2242, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!442 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PostprocessSignificantHit", metadata !"PostprocessSignificantHit", metadata !"", i32 2436, metadata !443, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.tophit_s*, %struct.tophit_s*, %struct.p7trace_s*, %struct.plan7_s*, i8*, i32, i8*, i8*, i8*, i32, float, i32, %struct.threshold_s*, i32)* @PostprocessSignificantHit, null, null, metadata !488, i32 2450} ; [ DW_TAG_subprogram ] [line 2436] [def] [scope 2450] [PostprocessSignificantHit]
!443 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!444 = metadata !{metadata !8, metadata !445, metadata !445, metadata !207, metadata !128, metadata !89, metadata !15, metadata !89, metadata !89, metadata !89, metadata !15, metadata !8, metadata !15, metadata !487, metadata !15}
!445 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tophit_s]
!446 = metadata !{i32 786451, metadata !4, null, metadata !"tophit_s", i32 497, i64 256, i64 64, i32 0, i32 0, null, metadata !447, i32 0, null, null} ; [ DW_TAG_structure_type ] [tophit_s] [line 497, size 256, align 64, offset 0] [from ]
!447 = metadata !{metadata !448, metadata !483, metadata !484, metadata !485, metadata !486}
!448 = metadata !{i32 786445, metadata !4, metadata !446, metadata !"hit", i32 498, i64 64, i64 64, i64 0, i32 0, metadata !449} ; [ DW_TAG_member ] [hit] [line 498, size 64, align 64, offset 0] [from ]
!449 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !450} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!450 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !451} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hit_s]
!451 = metadata !{i32 786451, metadata !4, null, metadata !"hit_s", i32 470, i64 832, i64 64, i32 0, i32 0, null, metadata !452, i32 0, null, null} ; [ DW_TAG_structure_type ] [hit_s] [line 470, size 832, align 64, offset 0] [from ]
!452 = metadata !{metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469}
!453 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"sortkey", i32 471, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [sortkey] [line 471, size 64, align 64, offset 0] [from double]
!454 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"score", i32 472, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [score] [line 472, size 32, align 32, offset 64] [from float]
!455 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"pvalue", i32 473, i64 64, i64 64, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [pvalue] [line 473, size 64, align 64, offset 128] [from double]
!456 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"mothersc", i32 474, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [mothersc] [line 474, size 32, align 32, offset 192] [from float]
!457 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"motherp", i32 475, i64 64, i64 64, i64 256, i32 0, metadata !10} ; [ DW_TAG_member ] [motherp] [line 475, size 64, align 64, offset 256] [from double]
!458 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"name", i32 476, i64 64, i64 64, i64 320, i32 0, metadata !89} ; [ DW_TAG_member ] [name] [line 476, size 64, align 64, offset 320] [from ]
!459 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"acc", i32 477, i64 64, i64 64, i64 384, i32 0, metadata !89} ; [ DW_TAG_member ] [acc] [line 477, size 64, align 64, offset 384] [from ]
!460 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"desc", i32 478, i64 64, i64 64, i64 448, i32 0, metadata !89} ; [ DW_TAG_member ] [desc] [line 478, size 64, align 64, offset 448] [from ]
!461 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"sqfrom", i32 479, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [sqfrom] [line 479, size 32, align 32, offset 512] [from int]
!462 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"sqto", i32 480, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [sqto] [line 480, size 32, align 32, offset 544] [from int]
!463 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"sqlen", i32 481, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [sqlen] [line 481, size 32, align 32, offset 576] [from int]
!464 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"hmmfrom", i32 482, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmfrom] [line 482, size 32, align 32, offset 608] [from int]
!465 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"hmmto", i32 483, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmto] [line 483, size 32, align 32, offset 640] [from int]
!466 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"hmmlen", i32 484, i64 32, i64 32, i64 672, i32 0, metadata !15} ; [ DW_TAG_member ] [hmmlen] [line 484, size 32, align 32, offset 672] [from int]
!467 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"domidx", i32 485, i64 32, i64 32, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [domidx] [line 485, size 32, align 32, offset 704] [from int]
!468 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"ndom", i32 486, i64 32, i64 32, i64 736, i32 0, metadata !15} ; [ DW_TAG_member ] [ndom] [line 486, size 32, align 32, offset 736] [from int]
!469 = metadata !{i32 786445, metadata !4, metadata !451, metadata !"ali", i32 487, i64 64, i64 64, i64 768, i32 0, metadata !470} ; [ DW_TAG_member ] [ali] [line 487, size 64, align 64, offset 768] [from ]
!470 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fancyali_s]
!471 = metadata !{i32 786451, metadata !4, null, metadata !"fancyali_s", i32 447, i64 576, i64 64, i32 0, i32 0, null, metadata !472, i32 0, null, null} ; [ DW_TAG_structure_type ] [fancyali_s] [line 447, size 576, align 64, offset 0] [from ]
!472 = metadata !{metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482}
!473 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"rfline", i32 448, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [rfline] [line 448, size 64, align 64, offset 0] [from ]
!474 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"csline", i32 449, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [csline] [line 449, size 64, align 64, offset 64] [from ]
!475 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"model", i32 450, i64 64, i64 64, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [model] [line 450, size 64, align 64, offset 128] [from ]
!476 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"mline", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !89} ; [ DW_TAG_member ] [mline] [line 451, size 64, align 64, offset 192] [from ]
!477 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"aseq", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [aseq] [line 452, size 64, align 64, offset 256] [from ]
!478 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"len", i32 453, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [len] [line 453, size 32, align 32, offset 320] [from int]
!479 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"query", i32 454, i64 64, i64 64, i64 384, i32 0, metadata !89} ; [ DW_TAG_member ] [query] [line 454, size 64, align 64, offset 384] [from ]
!480 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"target", i32 455, i64 64, i64 64, i64 448, i32 0, metadata !89} ; [ DW_TAG_member ] [target] [line 455, size 64, align 64, offset 448] [from ]
!481 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"sqfrom", i32 456, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [sqfrom] [line 456, size 32, align 32, offset 512] [from int]
!482 = metadata !{i32 786445, metadata !4, metadata !471, metadata !"sqto", i32 457, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [sqto] [line 457, size 32, align 32, offset 544] [from int]
!483 = metadata !{i32 786445, metadata !4, metadata !446, metadata !"unsrt", i32 499, i64 64, i64 64, i64 64, i32 0, metadata !450} ; [ DW_TAG_member ] [unsrt] [line 499, size 64, align 64, offset 64] [from ]
!484 = metadata !{i32 786445, metadata !4, metadata !446, metadata !"alloc", i32 500, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc] [line 500, size 32, align 32, offset 128] [from int]
!485 = metadata !{i32 786445, metadata !4, metadata !446, metadata !"num", i32 501, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [num] [line 501, size 32, align 32, offset 160] [from int]
!486 = metadata !{i32 786445, metadata !4, metadata !446, metadata !"lump", i32 502, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [lump] [line 502, size 32, align 32, offset 192] [from int]
!487 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !5} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from threshold_s]
!488 = metadata !{metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518}
!489 = metadata !{i32 786689, metadata !442, metadata !"ghit", metadata !24, i32 16779652, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghit] [line 2436]
!490 = metadata !{i32 786689, metadata !442, metadata !"dhit", metadata !24, i32 33556869, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dhit] [line 2437]
!491 = metadata !{i32 786689, metadata !442, metadata !"tr", metadata !24, i32 50334086, metadata !207, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 2438]
!492 = metadata !{i32 786689, metadata !442, metadata !"hmm", metadata !24, i32 67111303, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 2439]
!493 = metadata !{i32 786689, metadata !442, metadata !"dsq", metadata !24, i32 83888520, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 2440]
!494 = metadata !{i32 786689, metadata !442, metadata !"L", metadata !24, i32 100665737, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 2441]
!495 = metadata !{i32 786689, metadata !442, metadata !"seqname", metadata !24, i32 117442954, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqname] [line 2442]
!496 = metadata !{i32 786689, metadata !442, metadata !"seqacc", metadata !24, i32 134220171, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqacc] [line 2443]
!497 = metadata !{i32 786689, metadata !442, metadata !"seqdesc", metadata !24, i32 150997388, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqdesc] [line 2444]
!498 = metadata !{i32 786689, metadata !442, metadata !"do_forward", metadata !24, i32 167774605, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_forward] [line 2445]
!499 = metadata !{i32 786689, metadata !442, metadata !"sc_override", metadata !24, i32 184551822, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc_override] [line 2446]
!500 = metadata !{i32 786689, metadata !442, metadata !"do_null2", metadata !24, i32 201329039, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_null2] [line 2447]
!501 = metadata !{i32 786689, metadata !442, metadata !"thresh", metadata !24, i32 218106256, metadata !487, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thresh] [line 2448]
!502 = metadata !{i32 786689, metadata !442, metadata !"hmmpfam_mode", metadata !24, i32 234883473, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmpfam_mode] [line 2449]
!503 = metadata !{i32 786688, metadata !442, metadata !"tarr", metadata !24, i32 2451, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tarr] [line 2451]
!504 = metadata !{i32 786688, metadata !442, metadata !"ali", metadata !24, i32 2452, metadata !470, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ali] [line 2452]
!505 = metadata !{i32 786688, metadata !442, metadata !"ntr", metadata !24, i32 2453, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntr] [line 2453]
!506 = metadata !{i32 786688, metadata !442, metadata !"tidx", metadata !24, i32 2454, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tidx] [line 2454]
!507 = metadata !{i32 786688, metadata !442, metadata !"ndom", metadata !24, i32 2455, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 2455]
!508 = metadata !{i32 786688, metadata !442, metadata !"didx", metadata !24, i32 2456, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [didx] [line 2456]
!509 = metadata !{i32 786688, metadata !442, metadata !"k1", metadata !24, i32 2457, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 2457]
!510 = metadata !{i32 786688, metadata !442, metadata !"k2", metadata !24, i32 2457, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 2457]
!511 = metadata !{i32 786688, metadata !442, metadata !"i1", metadata !24, i32 2458, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 2458]
!512 = metadata !{i32 786688, metadata !442, metadata !"i2", metadata !24, i32 2458, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 2458]
!513 = metadata !{i32 786688, metadata !442, metadata !"whole_sc", metadata !24, i32 2459, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [whole_sc] [line 2459]
!514 = metadata !{i32 786688, metadata !442, metadata !"score", metadata !24, i32 2460, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 2460]
!515 = metadata !{i32 786688, metadata !442, metadata !"usedomain", metadata !24, i32 2461, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usedomain] [line 2461]
!516 = metadata !{i32 786688, metadata !442, metadata !"whole_pval", metadata !24, i32 2462, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [whole_pval] [line 2462]
!517 = metadata !{i32 786688, metadata !442, metadata !"pvalue", metadata !24, i32 2463, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvalue] [line 2463]
!518 = metadata !{i32 786688, metadata !442, metadata !"sortkey", metadata !24, i32 2464, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sortkey] [line 2464]
!519 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"get_wee_midpt", metadata !"get_wee_midpt", metadata !"", i32 1653, metadata !520, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !522, i32 1657} ; [ DW_TAG_subprogram ] [line 1653] [local] [def] [scope 1657] [get_wee_midpt]
!520 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!521 = metadata !{metadata !8, metadata !128, metadata !89, metadata !15, metadata !15, metadata !90, metadata !15, metadata !15, metadata !90, metadata !15, metadata !32, metadata !89, metadata !32}
!522 = metadata !{metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!523 = metadata !{i32 786689, metadata !519, metadata !"hmm", metadata !24, i32 16778869, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1653]
!524 = metadata !{i32 786689, metadata !519, metadata !"dsq", metadata !24, i32 33556085, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 1653]
!525 = metadata !{i32 786689, metadata !519, metadata !"L", metadata !24, i32 50333301, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1653]
!526 = metadata !{i32 786689, metadata !519, metadata !"k1", metadata !24, i32 67110518, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 1654]
!527 = metadata !{i32 786689, metadata !519, metadata !"t1", metadata !24, i32 83887734, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t1] [line 1654]
!528 = metadata !{i32 786689, metadata !519, metadata !"s1", metadata !24, i32 100664950, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 1654]
!529 = metadata !{i32 786689, metadata !519, metadata !"k3", metadata !24, i32 117442167, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k3] [line 1655]
!530 = metadata !{i32 786689, metadata !519, metadata !"t3", metadata !24, i32 134219383, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t3] [line 1655]
!531 = metadata !{i32 786689, metadata !519, metadata !"s3", metadata !24, i32 150996599, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s3] [line 1655]
!532 = metadata !{i32 786689, metadata !519, metadata !"ret_k2", metadata !24, i32 167773816, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_k2] [line 1656]
!533 = metadata !{i32 786689, metadata !519, metadata !"ret_t2", metadata !24, i32 184551032, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_t2] [line 1656]
!534 = metadata !{i32 786689, metadata !519, metadata !"ret_s2", metadata !24, i32 201328248, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s2] [line 1656]
!535 = metadata !{i32 786688, metadata !519, metadata !"fwd", metadata !24, i32 1658, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwd] [line 1658]
!536 = metadata !{i32 786688, metadata !519, metadata !"bck", metadata !24, i32 1659, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bck] [line 1659]
!537 = metadata !{i32 786688, metadata !519, metadata !"xmx", metadata !24, i32 1660, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 1660]
!538 = metadata !{i32 786688, metadata !519, metadata !"mmx", metadata !24, i32 1661, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 1661]
!539 = metadata !{i32 786688, metadata !519, metadata !"imx", metadata !24, i32 1662, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 1662]
!540 = metadata !{i32 786688, metadata !519, metadata !"dmx", metadata !24, i32 1663, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 1663]
!541 = metadata !{i32 786688, metadata !519, metadata !"k2", metadata !24, i32 1664, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 1664]
!542 = metadata !{i32 786688, metadata !519, metadata !"t2", metadata !24, i32 1665, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 1665]
!543 = metadata !{i32 786688, metadata !519, metadata !"s2", metadata !24, i32 1666, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 1666]
!544 = metadata !{i32 786688, metadata !519, metadata !"cur", metadata !24, i32 1667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 1667]
!545 = metadata !{i32 786688, metadata !519, metadata !"prv", metadata !24, i32 1667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prv] [line 1667]
!546 = metadata !{i32 786688, metadata !519, metadata !"nxt", metadata !24, i32 1667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxt] [line 1667]
!547 = metadata !{i32 786688, metadata !519, metadata !"i", metadata !24, i32 1668, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1668]
!548 = metadata !{i32 786688, metadata !519, metadata !"k", metadata !24, i32 1668, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1668]
!549 = metadata !{i32 786688, metadata !519, metadata !"sc", metadata !24, i32 1669, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1669]
!550 = metadata !{i32 786688, metadata !519, metadata !"max", metadata !24, i32 1670, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 1670]
!551 = metadata !{i32 786688, metadata !519, metadata !"start", metadata !24, i32 1671, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 1671]
!552 = metadata !{i32 61, i32 0, metadata !23, null}
!553 = metadata !{i32 66, i32 0, metadata !23, null}
!554 = metadata !{i32 67, i32 0, metadata !23, null}
!555 = metadata !{metadata !"any pointer", metadata !556}
!556 = metadata !{metadata !"omnipotent char", metadata !557}
!557 = metadata !{metadata !"Simple C/C++ TBAA"}
!558 = metadata !{i32 68, i32 0, metadata !23, null}
!559 = metadata !{i32 69, i32 0, metadata !23, null}
!560 = metadata !{i32 70, i32 0, metadata !23, null}
!561 = metadata !{i32 71, i32 0, metadata !23, null}
!562 = metadata !{i32 72, i32 0, metadata !23, null}
!563 = metadata !{i32 73, i32 0, metadata !23, null}
!564 = metadata !{i32 74, i32 0, metadata !23, null}
!565 = metadata !{i32 80, i32 0, metadata !23, null}
!566 = metadata !{i32 81, i32 0, metadata !23, null}
!567 = metadata !{i32 82, i32 0, metadata !23, null}
!568 = metadata !{i32 83, i32 0, metadata !23, null}
!569 = metadata !{i32 1}
!570 = metadata !{i32 84, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !23, i32 84, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!572 = metadata !{i32 86, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !571, i32 85, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!574 = metadata !{i32 87, i32 0, metadata !573, null}
!575 = metadata !{i32 88, i32 0, metadata !573, null}
!576 = metadata !{i32 89, i32 0, metadata !573, null}
!577 = metadata !{i32 92, i32 0, metadata !23, null}
!578 = metadata !{i32 93, i32 0, metadata !23, null}
!579 = metadata !{metadata !"int", metadata !556}
!580 = metadata !{i32 94, i32 0, metadata !23, null}
!581 = metadata !{i32 95, i32 0, metadata !23, null}
!582 = metadata !{i32 96, i32 0, metadata !23, null}
!583 = metadata !{i32 98, i32 0, metadata !23, null}
!584 = metadata !{i32 123, i32 0, metadata !52, null}
!585 = metadata !{i32 124, i32 0, metadata !52, null}
!586 = metadata !{i32 128, i32 0, metadata !52, null}
!587 = metadata !{i32 131, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !52, i32 130, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!589 = metadata !{i32 132, i32 0, metadata !588, null}
!590 = metadata !{i32 133, i32 0, metadata !588, null}
!591 = metadata !{i32 134, i32 0, metadata !588, null}
!592 = metadata !{i32 135, i32 0, metadata !588, null}
!593 = metadata !{i32 136, i32 0, metadata !588, null}
!594 = metadata !{i32 137, i32 0, metadata !588, null}
!595 = metadata !{i32 139, i32 0, metadata !52, null}
!596 = metadata !{i32 140, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !52, i32 139, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!598 = metadata !{i32 141, i32 0, metadata !597, null}
!599 = metadata !{i32 142, i32 0, metadata !597, null}
!600 = metadata !{i32 144, i32 0, metadata !52, null}
!601 = metadata !{i32 145, i32 0, metadata !52, null}
!602 = metadata !{i32 146, i32 0, metadata !52, null}
!603 = metadata !{i32 147, i32 0, metadata !52, null}
!604 = metadata !{i32 149, i32 0, metadata !52, null}
!605 = metadata !{i32 150, i32 0, metadata !52, null}
!606 = metadata !{i32 151, i32 0, metadata !52, null}
!607 = metadata !{i32 152, i32 0, metadata !52, null}
!608 = metadata !{i32 154, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !52, i32 154, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!610 = metadata !{i32 156, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !609, i32 155, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!612 = metadata !{i32 157, i32 0, metadata !611, null}
!613 = metadata !{i32 158, i32 0, metadata !611, null}
!614 = metadata !{i32 159, i32 0, metadata !611, null}
!615 = metadata !{i32 163, i32 0, metadata !52, null}
!616 = metadata !{i32 164, i32 0, metadata !52, null}
!617 = metadata !{i32 165, i32 0, metadata !52, null}
!618 = metadata !{i32 166, i32 0, metadata !52, null}
!619 = metadata !{i32 167, i32 0, metadata !52, null}
!620 = metadata !{i32 192, i32 0, metadata !65, null}
!621 = metadata !{i32 195, i32 0, metadata !65, null}
!622 = metadata !{i32 196, i32 0, metadata !65, null}
!623 = metadata !{i32 197, i32 0, metadata !65, null}
!624 = metadata !{i32 198, i32 0, metadata !65, null}
!625 = metadata !{i32 199, i32 0, metadata !65, null}
!626 = metadata !{i32 200, i32 0, metadata !65, null}
!627 = metadata !{i32 211, i32 0, metadata !76, null}
!628 = metadata !{i32 213, i32 0, metadata !76, null}
!629 = metadata !{i32 214, i32 0, metadata !76, null}
!630 = metadata !{i32 215, i32 0, metadata !76, null}
!631 = metadata !{i32 216, i32 0, metadata !76, null}
!632 = metadata !{i32 217, i32 0, metadata !76, null}
!633 = metadata !{i32 218, i32 0, metadata !76, null}
!634 = metadata !{i32 219, i32 0, metadata !76, null}
!635 = metadata !{i32 220, i32 0, metadata !76, null}
!636 = metadata !{i32 221, i32 0, metadata !76, null}
!637 = metadata !{i32 222, i32 0, metadata !76, null}
!638 = metadata !{i32 239, i32 0, metadata !81, null}
!639 = metadata !{i32 244, i32 0, metadata !81, null}
!640 = metadata !{i32 245, i32 0, metadata !81, null}
!641 = metadata !{i32 246, i32 0, metadata !81, null}
!642 = metadata !{i32 247, i32 0, metadata !81, null}
!643 = metadata !{i32 248, i32 0, metadata !81, null}
!644 = metadata !{i32 249, i32 0, metadata !81, null}
!645 = metadata !{i32 250, i32 0, metadata !81, null}
!646 = metadata !{i32 251, i32 0, metadata !81, null}
!647 = metadata !{i32 252, i32 0, metadata !81, null}
!648 = metadata !{i32 253, i32 0, metadata !81, null}
!649 = metadata !{i32 254, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !81, i32 254, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!651 = metadata !{i32 256, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !650, i32 255, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!653 = metadata !{i32 257, i32 0, metadata !652, null}
!654 = metadata !{i32 258, i32 0, metadata !652, null}
!655 = metadata !{i32 259, i32 0, metadata !652, null}
!656 = metadata !{i32 262, i32 0, metadata !81, null}
!657 = metadata !{i32 263, i32 0, metadata !81, null}
!658 = metadata !{i32 264, i32 0, metadata !81, null}
!659 = metadata !{i32 265, i32 0, metadata !81, null}
!660 = metadata !{i32 266, i32 0, metadata !81, null}
!661 = metadata !{i32 276, i32 0, metadata !105, null}
!662 = metadata !{i32 278, i32 0, metadata !105, null}
!663 = metadata !{i32 279, i32 0, metadata !105, null}
!664 = metadata !{i32 280, i32 0, metadata !105, null}
!665 = metadata !{i32 281, i32 0, metadata !105, null}
!666 = metadata !{i32 282, i32 0, metadata !105, null}
!667 = metadata !{i32 283, i32 0, metadata !105, null}
!668 = metadata !{i32 284, i32 0, metadata !105, null}
!669 = metadata !{i32 285, i32 0, metadata !105, null}
!670 = metadata !{i32 286, i32 0, metadata !105, null}
!671 = metadata !{i32 287, i32 0, metadata !105, null}
!672 = metadata !{i32 288, i32 0, metadata !105, null}
!673 = metadata !{i32 307, i32 0, metadata !110, null}
!674 = metadata !{float 8.000000e+01}
!675 = metadata !{i32 318, i32 0, metadata !110, null}
!676 = metadata !{i32 319, i32 0, metadata !110, null}
!677 = metadata !{i32 320, i32 0, metadata !110, null}
!678 = metadata !{i32 321, i32 0, metadata !110, null}
!679 = metadata !{i32 322, i32 0, metadata !110, null}
!680 = metadata !{i32 323, i32 0, metadata !110, null}
!681 = metadata !{i32 347, i32 0, metadata !117, null}
!682 = metadata !{i32 349, i32 0, metadata !117, null}
!683 = metadata !{i32 370, i32 0, metadata !121, null}
!684 = metadata !{i32 372, i32 0, metadata !121, null}
!685 = metadata !{i32 397, i32 0, metadata !125, null}
!686 = metadata !{i32 409, i32 0, metadata !125, null}
!687 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [M] [line 192]
!688 = metadata !{i32 192, i32 0, metadata !65, metadata !686}
!689 = metadata !{i32 195, i32 0, metadata !65, metadata !686}
!690 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !686} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!691 = metadata !{i32 196, i32 0, metadata !65, metadata !686}
!692 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!693 = metadata !{i32 416, i32 0, metadata !125, null}
!694 = metadata !{i32 417, i32 0, metadata !125, null}
!695 = metadata !{i32 418, i32 0, metadata !125, null}
!696 = metadata !{i32 434, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !698, i32 431, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!698 = metadata !{i32 786443, metadata !1, metadata !699, i32 430, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!699 = metadata !{i32 786443, metadata !1, metadata !700, i32 428, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!700 = metadata !{i32 786443, metadata !1, metadata !125, i32 427, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!701 = metadata !{i32 446, i32 0, metadata !699, null}
!702 = metadata !{i32 453, i32 0, metadata !699, null}
!703 = metadata !{i32 455, i32 0, metadata !699, null}
!704 = metadata !{i32 457, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !699, i32 456, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!706 = metadata !{i32 459, i32 0, metadata !699, null}
!707 = metadata !{i32 462, i32 0, metadata !699, null}
!708 = metadata !{i32 465, i32 0, metadata !699, null}
!709 = metadata !{i32 469, i32 0, metadata !125, null}
!710 = metadata !{i32 197, i32 0, metadata !65, metadata !686}
!711 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!712 = metadata !{i32 420, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !125, i32 419, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!714 = metadata !{i32 429, i32 0, metadata !699, null}
!715 = metadata !{i32 432, i32 0, metadata !697, null}
!716 = metadata !{i32 436, i32 0, metadata !697, null}
!717 = metadata !{i32 438, i32 0, metadata !697, null}
!718 = metadata !{i32 440, i32 0, metadata !697, null}
!719 = metadata !{i32 444, i32 0, metadata !699, null}
!720 = metadata !{i32 448, i32 0, metadata !699, null}
!721 = metadata !{i32 198, i32 0, metadata !65, metadata !686}
!722 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!723 = metadata !{i32 442, i32 0, metadata !697, null}
!724 = metadata !{i32 199, i32 0, metadata !65, metadata !686}
!725 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!726 = metadata !{i32 419, i32 0, metadata !713, null}
!727 = metadata !{i32 427, i32 0, metadata !700, null}
!728 = metadata !{i32 430, i32 0, metadata !698, null}
!729 = metadata !{i32 456, i32 0, metadata !705, null}
!730 = metadata !{i32 471, i32 0, metadata !125, null}
!731 = metadata !{i32 472, i32 0, metadata !125, null}
!732 = metadata !{i32 474, i32 0, metadata !125, null}
!733 = metadata !{i32 628, i32 0, metadata !203, null}
!734 = metadata !{i32 629, i32 0, metadata !203, null}
!735 = metadata !{i32 631, i32 0, metadata !203, null}
!736 = metadata !{i32 643, i32 0, metadata !203, null}
!737 = metadata !{i32 644, i32 0, metadata !203, null}
!738 = metadata !{i32 646, i32 0, metadata !203, null}
!739 = metadata !{i32 647, i32 0, metadata !203, null}
!740 = metadata !{i32 648, i32 0, metadata !203, null}
!741 = metadata !{i32 649, i32 0, metadata !203, null}
!742 = metadata !{i32 654, i32 0, metadata !203, null}
!743 = metadata !{i32 655, i32 0, metadata !203, null}
!744 = metadata !{i32 656, i32 0, metadata !203, null}
!745 = metadata !{i32 657, i32 0, metadata !203, null}
!746 = metadata !{i32 658, i32 0, metadata !203, null}
!747 = metadata !{i32 659, i32 0, metadata !203, null}
!748 = metadata !{i32 2}
!749 = metadata !{i32 660, i32 0, metadata !203, null}
!750 = metadata !{i32 661, i32 0, metadata !203, null}
!751 = metadata !{i32 665, i32 0, metadata !203, null}
!752 = metadata !{i32 668, i32 0, metadata !234, null}
!753 = metadata !{i32 670, i32 0, metadata !234, null}
!754 = metadata !{i32 673, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !234, i32 671, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!756 = metadata !{i32 691, i32 0, metadata !234, null}
!757 = metadata !{i32 731, i32 0, metadata !234, null}
!758 = metadata !{i32 755, i32 0, metadata !234, null}
!759 = metadata !{i32 767, i32 0, metadata !234, null}
!760 = metadata !{i32 773, i32 0, metadata !234, null}
!761 = metadata !{i32 785, i32 0, metadata !233, null}
!762 = metadata !{i32 786, i32 0, metadata !233, null}
!763 = metadata !{i32 789, i32 0, metadata !232, null}
!764 = metadata !{i32 816, i32 0, metadata !234, null}
!765 = metadata !{i32 823, i32 0, metadata !234, null}
!766 = metadata !{i32 835, i32 0, metadata !234, null}
!767 = metadata !{i32 842, i32 0, metadata !234, null}
!768 = metadata !{i32 666, i32 0, metadata !235, null}
!769 = metadata !{i32 669, i32 0, metadata !234, null}
!770 = metadata !{i32 669, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !234, i32 669, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!772 = metadata !{metadata !"float", metadata !556}
!773 = metadata !{i32 674, i32 0, metadata !755, null}
!774 = metadata !{i32 676, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !755, i32 675, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!776 = metadata !{i32 677, i32 0, metadata !775, null}
!777 = metadata !{i32 678, i32 0, metadata !775, null}
!778 = metadata !{i32 680, i32 0, metadata !775, null}
!779 = metadata !{i32 679, i32 0, metadata !775, null}
!780 = metadata !{i32 682, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !775, i32 681, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!782 = metadata !{i32 683, i32 0, metadata !781, null}
!783 = metadata !{i32 684, i32 0, metadata !781, null}
!784 = metadata !{i32 687, i32 0, metadata !755, null}
!785 = metadata !{i32 688, i32 0, metadata !755, null}
!786 = metadata !{i32 689, i32 0, metadata !755, null}
!787 = metadata !{i32 690, i32 0, metadata !755, null}
!788 = metadata !{i32 693, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !234, i32 692, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!790 = metadata !{i32 694, i32 0, metadata !789, null}
!791 = metadata !{i32 695, i32 0, metadata !789, null}
!792 = metadata !{i32 696, i32 0, metadata !789, null}
!793 = metadata !{i32 697, i32 0, metadata !234, null}
!794 = metadata !{i32 699, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !234, i32 698, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!796 = metadata !{i32 700, i32 0, metadata !795, null}
!797 = metadata !{i32 701, i32 0, metadata !795, null}
!798 = metadata !{i32 702, i32 0, metadata !795, null}
!799 = metadata !{i32 703, i32 0, metadata !234, null}
!800 = metadata !{i32 705, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !234, i32 704, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!802 = metadata !{i32 706, i32 0, metadata !801, null}
!803 = metadata !{i32 707, i32 0, metadata !801, null}
!804 = metadata !{i32 708, i32 0, metadata !801, null}
!805 = metadata !{i32 710, i32 0, metadata !234, null}
!806 = metadata !{i32 714, i32 0, metadata !234, null}
!807 = metadata !{i32 714, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !234, i32 714, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!809 = metadata !{i32 715, i32 0, metadata !234, null}
!810 = metadata !{i32 717, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !234, i32 716, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!812 = metadata !{i32 718, i32 0, metadata !811, null}
!813 = metadata !{i32 719, i32 0, metadata !811, null}
!814 = metadata !{i32 720, i32 0, metadata !811, null}
!815 = metadata !{i32 721, i32 0, metadata !234, null}
!816 = metadata !{i32 723, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !234, i32 722, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!818 = metadata !{i32 724, i32 0, metadata !817, null}
!819 = metadata !{i32 725, i32 0, metadata !817, null}
!820 = metadata !{i32 726, i32 0, metadata !817, null}
!821 = metadata !{i32 727, i32 0, metadata !234, null}
!822 = metadata !{i32 732, i32 0, metadata !234, null}
!823 = metadata !{i32 732, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !234, i32 732, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!825 = metadata !{i32 733, i32 0, metadata !234, null}
!826 = metadata !{i32 735, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !234, i32 734, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!828 = metadata !{i32 736, i32 0, metadata !827, null}
!829 = metadata !{i32 737, i32 0, metadata !827, null}
!830 = metadata !{i32 738, i32 0, metadata !827, null}
!831 = metadata !{i32 739, i32 0, metadata !234, null}
!832 = metadata !{i32 741, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !234, i32 740, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!834 = metadata !{i32 742, i32 0, metadata !833, null}
!835 = metadata !{i32 743, i32 0, metadata !833, null}
!836 = metadata !{i32 744, i32 0, metadata !833, null}
!837 = metadata !{i32 745, i32 0, metadata !234, null}
!838 = metadata !{i32 749, i32 0, metadata !234, null}
!839 = metadata !{i32 751, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !234, i32 750, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!841 = metadata !{i32 752, i32 0, metadata !840, null}
!842 = metadata !{i32 753, i32 0, metadata !840, null}
!843 = metadata !{i32 754, i32 0, metadata !840, null}
!844 = metadata !{i32 757, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !234, i32 756, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!846 = metadata !{i32 758, i32 0, metadata !845, null}
!847 = metadata !{i32 759, i32 0, metadata !845, null}
!848 = metadata !{i32 760, i32 0, metadata !845, null}
!849 = metadata !{i32 761, i32 0, metadata !845, null}
!850 = metadata !{i32 762, i32 0, metadata !234, null}
!851 = metadata !{i32 766, i32 0, metadata !234, null}
!852 = metadata !{i32 766, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !234, i32 766, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!854 = metadata !{i32 769, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !234, i32 768, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!856 = metadata !{i32 770, i32 0, metadata !855, null}
!857 = metadata !{i32 771, i32 0, metadata !855, null}
!858 = metadata !{i32 772, i32 0, metadata !855, null}
!859 = metadata !{i32 775, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !234, i32 774, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!861 = metadata !{i32 776, i32 0, metadata !860, null}
!862 = metadata !{i32 777, i32 0, metadata !860, null}
!863 = metadata !{i32 778, i32 0, metadata !860, null}
!864 = metadata !{i32 780, i32 0, metadata !234, null}
!865 = metadata !{i32 784, i32 0, metadata !234, null}
!866 = metadata !{i32 784, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !234, i32 784, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!868 = metadata !{i32 792, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !231, i32 792, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!870 = metadata !{i32 794, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !869, i32 793, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!872 = metadata !{i32 795, i32 0, metadata !871, null}
!873 = metadata !{i32 796, i32 0, metadata !871, null}
!874 = metadata !{i32 797, i32 0, metadata !871, null}
!875 = metadata !{i32 798, i32 0, metadata !871, null}
!876 = metadata !{i32 800, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !871, i32 799, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!878 = metadata !{i32 801, i32 0, metadata !877, null}
!879 = metadata !{i32 802, i32 0, metadata !877, null}
!880 = metadata !{i32 806, i32 0, metadata !232, null}
!881 = metadata !{i32 807, i32 0, metadata !232, null}
!882 = metadata !{i32 808, i32 0, metadata !232, null}
!883 = metadata !{i32 809, i32 0, metadata !232, null}
!884 = metadata !{i32 811, i32 0, metadata !234, null}
!885 = metadata !{i32 815, i32 0, metadata !234, null}
!886 = metadata !{i32 815, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !234, i32 815, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!888 = metadata !{i32 818, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !234, i32 817, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!890 = metadata !{i32 819, i32 0, metadata !889, null}
!891 = metadata !{i32 820, i32 0, metadata !889, null}
!892 = metadata !{i32 821, i32 0, metadata !889, null}
!893 = metadata !{i32 822, i32 0, metadata !889, null}
!894 = metadata !{i32 825, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !234, i32 824, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!896 = metadata !{i32 826, i32 0, metadata !895, null}
!897 = metadata !{i32 827, i32 0, metadata !895, null}
!898 = metadata !{i32 828, i32 0, metadata !895, null}
!899 = metadata !{i32 830, i32 0, metadata !234, null}
!900 = metadata !{i32 834, i32 0, metadata !234, null}
!901 = metadata !{i32 834, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !234, i32 834, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!903 = metadata !{i32 837, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !234, i32 836, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!905 = metadata !{i32 838, i32 0, metadata !904, null}
!906 = metadata !{i32 839, i32 0, metadata !904, null}
!907 = metadata !{i32 840, i32 0, metadata !904, null}
!908 = metadata !{i32 841, i32 0, metadata !904, null}
!909 = metadata !{i32 844, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !234, i32 843, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!911 = metadata !{i32 845, i32 0, metadata !910, null}
!912 = metadata !{i32 846, i32 0, metadata !910, null}
!913 = metadata !{i32 847, i32 0, metadata !910, null}
!914 = metadata !{i32 849, i32 0, metadata !234, null}
!915 = metadata !{i32 853, i32 0, metadata !234, null}
!916 = metadata !{i32 855, i32 0, metadata !234, null}
!917 = metadata !{i32 857, i32 0, metadata !235, null}
!918 = metadata !{i32 858, i32 0, metadata !235, null}
!919 = metadata !{i32 860, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !235, i32 859, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!921 = metadata !{i32 861, i32 0, metadata !920, null}
!922 = metadata !{i32 862, i32 0, metadata !920, null}
!923 = metadata !{i32 865, i32 0, metadata !203, null}
!924 = metadata !{i32 866, i32 0, metadata !203, null}
!925 = metadata !{i32 867, i32 0, metadata !203, null}
!926 = metadata !{i32 896, i32 0, metadata !236, null}
!927 = metadata !{i32 898, i32 0, metadata !236, null}
!928 = metadata !{i32 899, i32 0, metadata !236, null}
!929 = metadata !{i32 915, i32 0, metadata !236, null}
!930 = metadata !{i32 919, i32 0, metadata !236, null}
!931 = metadata !{i32 921, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !236, i32 920, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!933 = metadata !{i32 922, i32 0, metadata !932, null}
!934 = metadata !{i32 929, i32 0, metadata !236, null}
!935 = metadata !{i32 930, i32 0, metadata !236, null}
!936 = metadata !{i32 931, i32 0, metadata !236, null}
!937 = metadata !{i32 932, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !236, i32 932, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!939 = metadata !{i32 934, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !938, i32 933, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!941 = metadata !{i32 936, i32 0, metadata !940, null}
!942 = metadata !{i32 786689, metadata !110, metadata !"L", metadata !24, i32 16777523, metadata !15, i32 0, metadata !941} ; [ DW_TAG_arg_variable ] [L] [line 307]
!943 = metadata !{i32 307, i32 0, metadata !110, metadata !941}
!944 = metadata !{i32 786689, metadata !110, metadata !"M", metadata !24, i32 33554739, metadata !15, i32 0, metadata !941} ; [ DW_TAG_arg_variable ] [M] [line 307]
!945 = metadata !{i32 786688, metadata !110, metadata !"Mbytes", metadata !24, i32 309, metadata !8, i32 0, metadata !941} ; [ DW_TAG_auto_variable ] [Mbytes] [line 309]
!946 = metadata !{i32 318, i32 0, metadata !110, metadata !941}
!947 = metadata !{i32 319, i32 0, metadata !110, metadata !941}
!948 = metadata !{i32 320, i32 0, metadata !110, metadata !941}
!949 = metadata !{i32 321, i32 0, metadata !110, metadata !941}
!950 = metadata !{i32 322, i32 0, metadata !110, metadata !941}
!951 = metadata !{i32 323, i32 0, metadata !110, metadata !941}
!952 = metadata !{i32 937, i32 0, metadata !940, null}
!953 = metadata !{i32 939, i32 0, metadata !940, null}
!954 = metadata !{i32 941, i32 0, metadata !940, null}
!955 = metadata !{i32 942, i32 0, metadata !940, null}
!956 = metadata !{i32 957, i32 0, metadata !236, null}
!957 = metadata !{i32 958, i32 0, metadata !236, null}
!958 = metadata !{i32 959, i32 0, metadata !236, null}
!959 = metadata !{i32 963, i32 0, metadata !236, null}
!960 = metadata !{i32 964, i32 0, metadata !236, null}
!961 = metadata !{i32 965, i32 0, metadata !236, null}
!962 = metadata !{i32 966, i32 0, metadata !236, null}
!963 = metadata !{i32 967, i32 0, metadata !236, null}
!964 = metadata !{i32 968, i32 0, metadata !236, null}
!965 = metadata !{i32 969, i32 0, metadata !236, null}
!966 = metadata !{i32 971, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !236, i32 971, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!968 = metadata !{i32 982, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !236, i32 982, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!970 = metadata !{i32 973, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !967, i32 972, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!972 = metadata !{i32 974, i32 0, metadata !971, null}
!973 = metadata !{i32 975, i32 0, metadata !971, null}
!974 = metadata !{i32 976, i32 0, metadata !971, null}
!975 = metadata !{i32 984, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !977, i32 984, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!977 = metadata !{i32 786443, metadata !1, metadata !969, i32 983, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!978 = metadata !{i32 989, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !976, i32 985, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!980 = metadata !{i32 986, i32 0, metadata !979, null}
!981 = metadata !{i32 987, i32 0, metadata !979, null}
!982 = metadata !{i32 988, i32 0, metadata !979, null}
!983 = metadata !{i32 991, i32 0, metadata !979, null}
!984 = metadata !{i32 992, i32 0, metadata !979, null}
!985 = metadata !{i32 995, i32 0, metadata !977, null}
!986 = metadata !{i32 996, i32 0, metadata !977, null}
!987 = metadata !{i32 997, i32 0, metadata !977, null}
!988 = metadata !{i32 998, i32 0, metadata !977, null}
!989 = metadata !{i32 1000, i32 0, metadata !977, null}
!990 = metadata !{i32 1001, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !977, i32 1001, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!992 = metadata !{i32 1003, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !991, i32 1002, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!994 = metadata !{i32 1004, i32 0, metadata !993, null}
!995 = metadata !{i32 1005, i32 0, metadata !993, null}
!996 = metadata !{i32 1006, i32 0, metadata !993, null}
!997 = metadata !{i32 1011, i32 0, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !236, i32 1011, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!999 = metadata !{i32 1013, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !998, i32 1012, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1001 = metadata !{i32 1014, i32 0, metadata !1000, null}
!1002 = metadata !{i32 1015, i32 0, metadata !1000, null}
!1003 = metadata !{i32 1019, i32 0, metadata !236, null}
!1004 = metadata !{i32 1020, i32 0, metadata !236, null}
!1005 = metadata !{i32 1021, i32 0, metadata !236, null}
!1006 = metadata !{i32 1024, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !236, i32 1024, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1008 = metadata !{i32 1025, i32 0, metadata !236, null}
!1009 = metadata !{i32 1026, i32 0, metadata !236, null}
!1010 = metadata !{i32 1028, i32 0, metadata !236, null}
!1011 = metadata !{i32 1029, i32 0, metadata !236, null}
!1012 = metadata !{i32 1030, i32 0, metadata !236, null}
!1013 = metadata !{i32 1064, i32 0, metadata !257, null}
!1014 = metadata !{i32 1068, i32 0, metadata !257, null}
!1015 = metadata !{i32 1081, i32 0, metadata !257, null}
!1016 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!1017 = metadata !{i32 192, i32 0, metadata !65, metadata !1015}
!1018 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1019 = metadata !{i32 195, i32 0, metadata !65, metadata !1015}
!1020 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1015} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1021 = metadata !{i32 196, i32 0, metadata !65, metadata !1015}
!1022 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1023 = metadata !{i32 1088, i32 0, metadata !257, null}
!1024 = metadata !{i32 1089, i32 0, metadata !257, null}
!1025 = metadata !{i32 1091, i32 0, metadata !257, null}
!1026 = metadata !{i32 1124, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1028, i32 1117, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1028 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1117, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1029 = metadata !{i32 786443, metadata !1, metadata !1030, i32 1111, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1030 = metadata !{i32 786443, metadata !1, metadata !257, i32 1111, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1031 = metadata !{i32 1158, i32 0, metadata !1029, null}
!1032 = metadata !{i32 1159, i32 0, metadata !1029, null}
!1033 = metadata !{i32 1162, i32 0, metadata !1029, null}
!1034 = metadata !{i32 1164, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1163, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1036 = metadata !{i32 1167, i32 0, metadata !1029, null}
!1037 = metadata !{i32 1168, i32 0, metadata !1029, null}
!1038 = metadata !{i32 1170, i32 0, metadata !1029, null}
!1039 = metadata !{i32 1173, i32 0, metadata !1029, null}
!1040 = metadata !{i32 1174, i32 0, metadata !1029, null}
!1041 = metadata !{i32 1176, i32 0, metadata !1029, null}
!1042 = metadata !{i32 1179, i32 0, metadata !1029, null}
!1043 = metadata !{i32 1180, i32 0, metadata !1029, null}
!1044 = metadata !{i32 1182, i32 0, metadata !1029, null}
!1045 = metadata !{i32 1186, i32 0, metadata !257, null}
!1046 = metadata !{i32 197, i32 0, metadata !65, metadata !1015}
!1047 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1048 = metadata !{i32 1094, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !257, i32 1093, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1050 = metadata !{i32 1115, i32 0, metadata !1029, null}
!1051 = metadata !{i32 1119, i32 0, metadata !1027, null}
!1052 = metadata !{i32 1120, i32 0, metadata !1027, null}
!1053 = metadata !{i32 1122, i32 0, metadata !1027, null}
!1054 = metadata !{i32 1126, i32 0, metadata !1027, null}
!1055 = metadata !{i32 1131, i32 0, metadata !1027, null}
!1056 = metadata !{i32 1135, i32 0, metadata !1027, null}
!1057 = metadata !{i32 1143, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1141, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1059 = metadata !{i32 198, i32 0, metadata !65, metadata !1015}
!1060 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1061 = metadata !{i32 1142, i32 0, metadata !1058, null}
!1062 = metadata !{i32 1144, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1058, i32 1144, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1064 = metadata !{i32 1145, i32 0, metadata !1058, null}
!1065 = metadata !{i32 1150, i32 0, metadata !1058, null}
!1066 = metadata !{i32 199, i32 0, metadata !65, metadata !1015}
!1067 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1015} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1068 = metadata !{i32 1134, i32 0, metadata !1027, null}
!1069 = metadata !{i32 1136, i32 0, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1136, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1071 = metadata !{i32 1137, i32 0, metadata !1027, null}
!1072 = metadata !{i32 1082, i32 0, metadata !257, null}
!1073 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!1074 = metadata !{i32 192, i32 0, metadata !65, metadata !1072}
!1075 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1076 = metadata !{i32 195, i32 0, metadata !65, metadata !1072}
!1077 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1072} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1078 = metadata !{i32 196, i32 0, metadata !65, metadata !1072}
!1079 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1080 = metadata !{i32 1169, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1169, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1082 = metadata !{i32 1171, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1171, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1084 = metadata !{i32 1177, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1177, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1086 = metadata !{i32 1181, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1181, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1088 = metadata !{i32 1183, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1183, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1090 = metadata !{i32 1204, i32 0, metadata !257, null}
!1091 = metadata !{i32 197, i32 0, metadata !65, metadata !1072}
!1092 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1093 = metadata !{i32 1121, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1121, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1095 = metadata !{i32 1123, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1123, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1097 = metadata !{i32 1125, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1125, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1099 = metadata !{i32 1127, i32 0, metadata !1100, null}
!1100 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1127, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1101 = metadata !{i32 1165, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1035, i32 1165, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1103 = metadata !{i32 198, i32 0, metadata !65, metadata !1072}
!1104 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1105 = metadata !{i32 1146, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !1058, i32 1146, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1107 = metadata !{i32 199, i32 0, metadata !65, metadata !1072}
!1108 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1072} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1109 = metadata !{i32 1138, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1138, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1111 = metadata !{i32 1083, i32 0, metadata !257, null}
!1112 = metadata !{i32 1084, i32 0, metadata !257, null}
!1113 = metadata !{i32 1090, i32 0, metadata !257, null}
!1114 = metadata !{i32 1092, i32 0, metadata !257, null}
!1115 = metadata !{i32 1093, i32 0, metadata !1049, null}
!1116 = metadata !{i32 1111, i32 0, metadata !1030, null}
!1117 = metadata !{i32 1128, i32 0, metadata !1027, null}
!1118 = metadata !{i32 1147, i32 0, metadata !1058, null}
!1119 = metadata !{i32 1112, i32 0, metadata !1029, null}
!1120 = metadata !{i32 1113, i32 0, metadata !1029, null}
!1121 = metadata !{i32 1117, i32 0, metadata !1028, null}
!1122 = metadata !{i32 1129, i32 0, metadata !1027, null}
!1123 = metadata !{i32 1141, i32 0, metadata !1027, null}
!1124 = metadata !{i32 1148, i32 0, metadata !1058, null}
!1125 = metadata !{i32 1160, i32 0, metadata !1029, null}
!1126 = metadata !{i32 1163, i32 0, metadata !1035, null}
!1127 = metadata !{i32 1175, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1175, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1129 = metadata !{i32 1196, i32 0, metadata !257, null}
!1130 = metadata !{i32 1197, i32 0, metadata !257, null}
!1131 = metadata !{i32 1201, i32 0, metadata !257, null}
!1132 = metadata !{i32 1202, i32 0, metadata !257, null}
!1133 = metadata !{i32 1203, i32 0, metadata !257, null}
!1134 = metadata !{i32 1205, i32 0, metadata !257, null}
!1135 = metadata !{i32 1207, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1, metadata !257, i32 1206, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1137 = metadata !{i32 1208, i32 0, metadata !1136, null}
!1138 = metadata !{i32 1210, i32 0, metadata !1136, null}
!1139 = metadata !{i32 1211, i32 0, metadata !1136, null}
!1140 = metadata !{i32 1212, i32 0, metadata !1136, null}
!1141 = metadata !{i32 1213, i32 0, metadata !1136, null}
!1142 = metadata !{i32 1215, i32 0, metadata !1136, null}
!1143 = metadata !{i32 1216, i32 0, metadata !1136, null}
!1144 = metadata !{i32 1217, i32 0, metadata !1136, null}
!1145 = metadata !{i32 1218, i32 0, metadata !1136, null}
!1146 = metadata !{i32 1219, i32 0, metadata !1136, null}
!1147 = metadata !{i32 1221, i32 0, metadata !257, null}
!1148 = metadata !{i32 1222, i32 0, metadata !257, null}
!1149 = metadata !{i32 1223, i32 0, metadata !257, null}
!1150 = metadata !{i32 1224, i32 0, metadata !257, null}
!1151 = metadata !{i32 1225, i32 0, metadata !257, null}
!1152 = metadata !{i32 1227, i32 0, metadata !257, null}
!1153 = metadata !{i32 1228, i32 0, metadata !257, null}
!1154 = metadata !{i32 1229, i32 0, metadata !257, null}
!1155 = metadata !{i32 1230, i32 0, metadata !257, null}
!1156 = metadata !{i32 1232, i32 0, metadata !257, null}
!1157 = metadata !{i32 1233, i32 0, metadata !257, null}
!1158 = metadata !{i32 1263, i32 0, metadata !285, null}
!1159 = metadata !{i32 1265, i32 0, metadata !285, null}
!1160 = metadata !{i32 1282, i32 0, metadata !285, null}
!1161 = metadata !{i32 1283, i32 0, metadata !285, null}
!1162 = metadata !{i32 1284, i32 0, metadata !285, null}
!1163 = metadata !{i32 1285, i32 0, metadata !285, null}
!1164 = metadata !{i32 1287, i32 0, metadata !285, null}
!1165 = metadata !{i32 1288, i32 0, metadata !285, null}
!1166 = metadata !{i32 1289, i32 0, metadata !285, null}
!1167 = metadata !{i32 1290, i32 0, metadata !285, null}
!1168 = metadata !{i32 1291, i32 0, metadata !285, null}
!1169 = metadata !{i32 1292, i32 0, metadata !285, null}
!1170 = metadata !{i32 1293, i32 0, metadata !285, null}
!1171 = metadata !{i32 1727, i32 0, metadata !1172, metadata !1175}
!1172 = metadata !{i32 786443, metadata !1, metadata !1173, i32 1725, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1173 = metadata !{i32 786443, metadata !1, metadata !1174, i32 1724, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1174 = metadata !{i32 786443, metadata !1, metadata !519, i32 1723, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1175 = metadata !{i32 1308, i32 0, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !1, metadata !285, i32 1298, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1177 = metadata !{i32 1734, i32 0, metadata !1174, metadata !1175}
!1178 = metadata !{i32 1739, i32 0, metadata !519, metadata !1175}
!1179 = metadata !{i32 1743, i32 0, metadata !519, metadata !1175}
!1180 = metadata !{i32 1763, i32 0, metadata !1181, metadata !1175}
!1181 = metadata !{i32 786443, metadata !1, metadata !1182, i32 1757, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1182 = metadata !{i32 786443, metadata !1, metadata !1183, i32 1749, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1183 = metadata !{i32 786443, metadata !1, metadata !519, i32 1749, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1184 = metadata !{i32 1768, i32 0, metadata !1182, metadata !1175}
!1185 = metadata !{i32 1770, i32 0, metadata !1182, metadata !1175}
!1186 = metadata !{i32 1817, i32 0, metadata !1182, metadata !1175}
!1187 = metadata !{i32 1830, i32 0, metadata !1182, metadata !1175}
!1188 = metadata !{i32 1862, i32 0, metadata !1189, metadata !1175}
!1189 = metadata !{i32 786443, metadata !1, metadata !519, i32 1857, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1190 = metadata !{i32 1297, i32 0, metadata !285, null}
!1191 = metadata !{i32 1300, i32 0, metadata !1176, null}
!1192 = metadata !{i32 1301, i32 0, metadata !1176, null}
!1193 = metadata !{i32 1302, i32 0, metadata !1176, null}
!1194 = metadata !{i32 1303, i32 0, metadata !1176, null}
!1195 = metadata !{i32 1304, i32 0, metadata !1176, null}
!1196 = metadata !{i32 1305, i32 0, metadata !1176, null}
!1197 = metadata !{i32 1306, i32 0, metadata !1176, null}
!1198 = metadata !{i32 786689, metadata !519, metadata !"L", metadata !24, i32 50333301, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_arg_variable ] [L] [line 1653]
!1199 = metadata !{i32 1653, i32 0, metadata !519, metadata !1175}
!1200 = metadata !{i32 1679, i32 0, metadata !519, metadata !1175}
!1201 = metadata !{i32 1680, i32 0, metadata !519, metadata !1175}
!1202 = metadata !{i32 1681, i32 0, metadata !519, metadata !1175}
!1203 = metadata !{i32 1687, i32 0, metadata !519, metadata !1175}
!1204 = metadata !{i32 786688, metadata !519, metadata !"start", metadata !24, i32 1671, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [start] [line 1671]
!1205 = metadata !{i32 1692, i32 0, metadata !519, metadata !1175}
!1206 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!1207 = metadata !{i32 192, i32 0, metadata !65, metadata !1205}
!1208 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1209 = metadata !{i32 195, i32 0, metadata !65, metadata !1205}
!1210 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1211 = metadata !{i32 196, i32 0, metadata !65, metadata !1205}
!1212 = metadata !{i32 786688, metadata !519, metadata !"xmx", metadata !24, i32 1660, metadata !31, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [xmx] [line 1660]
!1213 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1214 = metadata !{i32 1846, i32 0, metadata !519, metadata !1175}
!1215 = metadata !{i32 192, i32 0, metadata !65, metadata !1214}
!1216 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1217 = metadata !{i32 786688, metadata !519, metadata !"xmx", metadata !24, i32 1660, metadata !31, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [xmx] [line 1660]
!1218 = metadata !{i32 1694, i32 0, metadata !519, metadata !1175}
!1219 = metadata !{i32 1695, i32 0, metadata !519, metadata !1175}
!1220 = metadata !{i32 1705, i32 0, metadata !1221, metadata !1175}
!1221 = metadata !{i32 786443, metadata !1, metadata !519, i32 1702, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1222 = metadata !{i32 1706, i32 0, metadata !1221, metadata !1175}
!1223 = metadata !{i32 1707, i32 0, metadata !1221, metadata !1175}
!1224 = metadata !{i32 1733, i32 0, metadata !1174, metadata !1175}
!1225 = metadata !{i32 1735, i32 0, metadata !1174, metadata !1175}
!1226 = metadata !{i32 1738, i32 0, metadata !519, metadata !1175}
!1227 = metadata !{i32 1742, i32 0, metadata !519, metadata !1175}
!1228 = metadata !{i32 1784, i32 0, metadata !1229, metadata !1175}
!1229 = metadata !{i32 786443, metadata !1, metadata !1230, i32 1777, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1230 = metadata !{i32 786443, metadata !1, metadata !1182, i32 1777, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1231 = metadata !{i32 1816, i32 0, metadata !1182, metadata !1175}
!1232 = metadata !{i32 1820, i32 0, metadata !1182, metadata !1175}
!1233 = metadata !{i32 1822, i32 0, metadata !1234, metadata !1175}
!1234 = metadata !{i32 786443, metadata !1, metadata !1182, i32 1821, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1235 = metadata !{i32 1825, i32 0, metadata !1182, metadata !1175}
!1236 = metadata !{i32 1826, i32 0, metadata !1182, metadata !1175}
!1237 = metadata !{i32 1829, i32 0, metadata !1182, metadata !1175}
!1238 = metadata !{i32 1832, i32 0, metadata !1182, metadata !1175}
!1239 = metadata !{i32 1848, i32 0, metadata !519, metadata !1175}
!1240 = metadata !{i32 1849, i32 0, metadata !519, metadata !1175}
!1241 = metadata !{i32 1860, i32 0, metadata !1189, metadata !1175}
!1242 = metadata !{i32 1861, i32 0, metadata !1189, metadata !1175}
!1243 = metadata !{i32 1873, i32 0, metadata !1244, metadata !1175}
!1244 = metadata !{i32 786443, metadata !1, metadata !519, i32 1872, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1245 = metadata !{i32 1876, i32 0, metadata !1246, metadata !1175}
!1246 = metadata !{i32 786443, metadata !1, metadata !1247, i32 1875, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1247 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1875, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1248 = metadata !{i32 1891, i32 0, metadata !1249, metadata !1175}
!1249 = metadata !{i32 786443, metadata !1, metadata !1250, i32 1886, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1250 = metadata !{i32 786443, metadata !1, metadata !519, i32 1886, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1251 = metadata !{i32 1892, i32 0, metadata !1249, metadata !1175}
!1252 = metadata !{i32 1895, i32 0, metadata !1249, metadata !1175}
!1253 = metadata !{i32 1897, i32 0, metadata !1254, metadata !1175}
!1254 = metadata !{i32 786443, metadata !1, metadata !1249, i32 1896, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1255 = metadata !{i32 1900, i32 0, metadata !1249, metadata !1175}
!1256 = metadata !{i32 1901, i32 0, metadata !1249, metadata !1175}
!1257 = metadata !{i32 1904, i32 0, metadata !1249, metadata !1175}
!1258 = metadata !{i32 1905, i32 0, metadata !1249, metadata !1175}
!1259 = metadata !{i32 1907, i32 0, metadata !1249, metadata !1175}
!1260 = metadata !{i32 1915, i32 0, metadata !1261, metadata !1175}
!1261 = metadata !{i32 786443, metadata !1, metadata !1262, i32 1914, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1262 = metadata !{i32 786443, metadata !1, metadata !1263, i32 1912, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1263 = metadata !{i32 786443, metadata !1, metadata !1249, i32 1912, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1264 = metadata !{i32 1925, i32 0, metadata !1262, metadata !1175}
!1265 = metadata !{i32 197, i32 0, metadata !65, metadata !1205}
!1266 = metadata !{i32 786688, metadata !519, metadata !"mmx", metadata !24, i32 1661, metadata !31, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [mmx] [line 1661]
!1267 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1268 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1269 = metadata !{i32 786688, metadata !519, metadata !"mmx", metadata !24, i32 1661, metadata !31, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [mmx] [line 1661]
!1270 = metadata !{i32 1697, i32 0, metadata !1271, metadata !1175}
!1271 = metadata !{i32 786443, metadata !1, metadata !519, i32 1696, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1272 = metadata !{i32 1703, i32 0, metadata !1221, metadata !1175}
!1273 = metadata !{i32 1753, i32 0, metadata !1182, metadata !1175}
!1274 = metadata !{i32 1759, i32 0, metadata !1181, metadata !1175}
!1275 = metadata !{i32 1769, i32 0, metadata !1182, metadata !1175}
!1276 = metadata !{i32 1773, i32 0, metadata !1182, metadata !1175}
!1277 = metadata !{i32 1779, i32 0, metadata !1229, metadata !1175}
!1278 = metadata !{i32 1780, i32 0, metadata !1229, metadata !1175}
!1279 = metadata !{i32 1782, i32 0, metadata !1229, metadata !1175}
!1280 = metadata !{i32 1786, i32 0, metadata !1229, metadata !1175}
!1281 = metadata !{i32 1791, i32 0, metadata !1229, metadata !1175}
!1282 = metadata !{i32 1796, i32 0, metadata !1283, metadata !1175}
!1283 = metadata !{i32 786443, metadata !1, metadata !1229, i32 1795, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1284 = metadata !{i32 1805, i32 0, metadata !1285, metadata !1175}
!1285 = metadata !{i32 786443, metadata !1, metadata !1229, i32 1804, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1286 = metadata !{i32 1851, i32 0, metadata !1287, metadata !1175}
!1287 = metadata !{i32 786443, metadata !1, metadata !519, i32 1850, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1288 = metadata !{i32 1853, i32 0, metadata !519, metadata !1175}
!1289 = metadata !{i32 1858, i32 0, metadata !1189, metadata !1175}
!1290 = metadata !{i32 1878, i32 0, metadata !1246, metadata !1175}
!1291 = metadata !{i32 1919, i32 0, metadata !1261, metadata !1175}
!1292 = metadata !{i32 1924, i32 0, metadata !1262, metadata !1175}
!1293 = metadata !{i32 1926, i32 0, metadata !1262, metadata !1175}
!1294 = metadata !{i32 1927, i32 0, metadata !1262, metadata !1175}
!1295 = metadata !{i32 1929, i32 0, metadata !1262, metadata !1175}
!1296 = metadata !{i32 1931, i32 0, metadata !1262, metadata !1175}
!1297 = metadata !{i32 1934, i32 0, metadata !1262, metadata !1175}
!1298 = metadata !{i32 1938, i32 0, metadata !1262, metadata !1175}
!1299 = metadata !{i32 1944, i32 0, metadata !1262, metadata !1175}
!1300 = metadata !{i32 198, i32 0, metadata !65, metadata !1205}
!1301 = metadata !{i32 786688, metadata !519, metadata !"imx", metadata !24, i32 1662, metadata !31, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [imx] [line 1662]
!1302 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1303 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1304 = metadata !{i32 786688, metadata !519, metadata !"imx", metadata !24, i32 1662, metadata !31, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [imx] [line 1662]
!1305 = metadata !{i32 1704, i32 0, metadata !1221, metadata !1175}
!1306 = metadata !{i32 1758, i32 0, metadata !1181, metadata !1175}
!1307 = metadata !{i32 1760, i32 0, metadata !1181, metadata !1175}
!1308 = metadata !{i32 1761, i32 0, metadata !1181, metadata !1175}
!1309 = metadata !{i32 1766, i32 0, metadata !1181, metadata !1175}
!1310 = metadata !{i32 1803, i32 0, metadata !1229, metadata !1175}
!1311 = metadata !{i32 1806, i32 0, metadata !1285, metadata !1175}
!1312 = metadata !{i32 1807, i32 0, metadata !1285, metadata !1175}
!1313 = metadata !{i32 1812, i32 0, metadata !1285, metadata !1175}
!1314 = metadata !{i32 1859, i32 0, metadata !1189, metadata !1175}
!1315 = metadata !{i32 1917, i32 0, metadata !1261, metadata !1175}
!1316 = metadata !{i32 1943, i32 0, metadata !1262, metadata !1175}
!1317 = metadata !{i32 1945, i32 0, metadata !1262, metadata !1175}
!1318 = metadata !{i32 1946, i32 0, metadata !1262, metadata !1175}
!1319 = metadata !{i32 1949, i32 0, metadata !1262, metadata !1175}
!1320 = metadata !{i32 199, i32 0, metadata !65, metadata !1205}
!1321 = metadata !{i32 786688, metadata !519, metadata !"dmx", metadata !24, i32 1663, metadata !31, i32 0, metadata !1205} ; [ DW_TAG_auto_variable ] [dmx] [line 1663]
!1322 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1323 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1205} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1324 = metadata !{i32 786688, metadata !519, metadata !"dmx", metadata !24, i32 1663, metadata !31, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [dmx] [line 1663]
!1325 = metadata !{i32 1726, i32 0, metadata !1172, metadata !1175}
!1326 = metadata !{i32 1728, i32 0, metadata !1172, metadata !1175}
!1327 = metadata !{i32 1729, i32 0, metadata !1172, metadata !1175}
!1328 = metadata !{i32 1794, i32 0, metadata !1229, metadata !1175}
!1329 = metadata !{i32 1797, i32 0, metadata !1283, metadata !1175}
!1330 = metadata !{i32 1798, i32 0, metadata !1283, metadata !1175}
!1331 = metadata !{i32 1916, i32 0, metadata !1261, metadata !1175}
!1332 = metadata !{i32 1937, i32 0, metadata !1262, metadata !1175}
!1333 = metadata !{i32 1939, i32 0, metadata !1262, metadata !1175}
!1334 = metadata !{i32 1940, i32 0, metadata !1262, metadata !1175}
!1335 = metadata !{i32 786688, metadata !519, metadata !"fwd", metadata !24, i32 1658, metadata !27, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [fwd] [line 1658]
!1336 = metadata !{i32 1693, i32 0, metadata !519, metadata !1175}
!1337 = metadata !{i32 786688, metadata !519, metadata !"cur", metadata !24, i32 1667, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [cur] [line 1667]
!1338 = metadata !{i32 1696, i32 0, metadata !1271, metadata !1175}
!1339 = metadata !{i32 1702, i32 0, metadata !519, metadata !1175}
!1340 = metadata !{i32 1708, i32 0, metadata !1221, metadata !1175}
!1341 = metadata !{i32 1709, i32 0, metadata !1221, metadata !1175}
!1342 = metadata !{i32 1722, i32 0, metadata !519, metadata !1175}
!1343 = metadata !{i32 1724, i32 0, metadata !1173, metadata !1175}
!1344 = metadata !{i32 786688, metadata !519, metadata !"sc", metadata !24, i32 1669, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [sc] [line 1669]
!1345 = metadata !{i32 1730, i32 0, metadata !1172, metadata !1175}
!1346 = metadata !{i32 1740, i32 0, metadata !519, metadata !1175}
!1347 = metadata !{i32 1744, i32 0, metadata !519, metadata !1175}
!1348 = metadata !{i32 1749, i32 0, metadata !1183, metadata !1175}
!1349 = metadata !{i32 1777, i32 0, metadata !1230, metadata !1175}
!1350 = metadata !{i32 1750, i32 0, metadata !1182, metadata !1175}
!1351 = metadata !{i32 1751, i32 0, metadata !1182, metadata !1175}
!1352 = metadata !{i32 1757, i32 0, metadata !1182, metadata !1175}
!1353 = metadata !{i32 1762, i32 0, metadata !1181, metadata !1175}
!1354 = metadata !{i32 1764, i32 0, metadata !1181, metadata !1175}
!1355 = metadata !{i32 1771, i32 0, metadata !1182, metadata !1175}
!1356 = metadata !{i32 1781, i32 0, metadata !1229, metadata !1175}
!1357 = metadata !{i32 1783, i32 0, metadata !1229, metadata !1175}
!1358 = metadata !{i32 1785, i32 0, metadata !1229, metadata !1175}
!1359 = metadata !{i32 1787, i32 0, metadata !1229, metadata !1175}
!1360 = metadata !{i32 1788, i32 0, metadata !1229, metadata !1175}
!1361 = metadata !{i32 1789, i32 0, metadata !1229, metadata !1175}
!1362 = metadata !{i32 1795, i32 0, metadata !1229, metadata !1175}
!1363 = metadata !{i32 1799, i32 0, metadata !1283, metadata !1175}
!1364 = metadata !{i32 1804, i32 0, metadata !1229, metadata !1175}
!1365 = metadata !{i32 1808, i32 0, metadata !1285, metadata !1175}
!1366 = metadata !{i32 1809, i32 0, metadata !1285, metadata !1175}
!1367 = metadata !{i32 1810, i32 0, metadata !1285, metadata !1175}
!1368 = metadata !{i32 1818, i32 0, metadata !1182, metadata !1175}
!1369 = metadata !{i32 1821, i32 0, metadata !1234, metadata !1175}
!1370 = metadata !{i32 1823, i32 0, metadata !1234, metadata !1175}
!1371 = metadata !{i32 1827, i32 0, metadata !1182, metadata !1175}
!1372 = metadata !{i32 1831, i32 0, metadata !1182, metadata !1175}
!1373 = metadata !{i32 1833, i32 0, metadata !1182, metadata !1175}
!1374 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!1375 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1376 = metadata !{i32 195, i32 0, metadata !65, metadata !1214}
!1377 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1214} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1378 = metadata !{i32 196, i32 0, metadata !65, metadata !1214}
!1379 = metadata !{i32 786688, metadata !519, metadata !"xmx", metadata !24, i32 1660, metadata !31, i32 0, metadata !1214} ; [ DW_TAG_auto_variable ] [xmx] [line 1660]
!1380 = metadata !{i32 197, i32 0, metadata !65, metadata !1214}
!1381 = metadata !{i32 786688, metadata !519, metadata !"mmx", metadata !24, i32 1661, metadata !31, i32 0, metadata !1214} ; [ DW_TAG_auto_variable ] [mmx] [line 1661]
!1382 = metadata !{i32 198, i32 0, metadata !65, metadata !1214}
!1383 = metadata !{i32 786688, metadata !519, metadata !"imx", metadata !24, i32 1662, metadata !31, i32 0, metadata !1214} ; [ DW_TAG_auto_variable ] [imx] [line 1662]
!1384 = metadata !{i32 199, i32 0, metadata !65, metadata !1214}
!1385 = metadata !{i32 786688, metadata !519, metadata !"dmx", metadata !24, i32 1663, metadata !31, i32 0, metadata !1214} ; [ DW_TAG_auto_variable ] [dmx] [line 1663]
!1386 = metadata !{i32 786688, metadata !519, metadata !"bck", metadata !24, i32 1659, metadata !27, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [bck] [line 1659]
!1387 = metadata !{i32 1847, i32 0, metadata !519, metadata !1175}
!1388 = metadata !{i32 786688, metadata !519, metadata !"nxt", metadata !24, i32 1667, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [nxt] [line 1667]
!1389 = metadata !{i32 1850, i32 0, metadata !1287, metadata !1175}
!1390 = metadata !{i32 1852, i32 0, metadata !519, metadata !1175}
!1391 = metadata !{i32 1857, i32 0, metadata !519, metadata !1175}
!1392 = metadata !{i32 1863, i32 0, metadata !1189, metadata !1175}
!1393 = metadata !{i32 1864, i32 0, metadata !1189, metadata !1175}
!1394 = metadata !{i32 1871, i32 0, metadata !519, metadata !1175}
!1395 = metadata !{i32 1886, i32 0, metadata !1250, metadata !1175}
!1396 = metadata !{i32 1875, i32 0, metadata !1247, metadata !1175}
!1397 = metadata !{i32 1877, i32 0, metadata !1246, metadata !1175}
!1398 = metadata !{i32 1888, i32 0, metadata !1249, metadata !1175}
!1399 = metadata !{i32 1889, i32 0, metadata !1249, metadata !1175}
!1400 = metadata !{i32 1893, i32 0, metadata !1249, metadata !1175}
!1401 = metadata !{i32 1896, i32 0, metadata !1254, metadata !1175}
!1402 = metadata !{i32 1898, i32 0, metadata !1254, metadata !1175}
!1403 = metadata !{i32 1902, i32 0, metadata !1249, metadata !1175}
!1404 = metadata !{i32 1906, i32 0, metadata !1249, metadata !1175}
!1405 = metadata !{i32 1908, i32 0, metadata !1249, metadata !1175}
!1406 = metadata !{i32 1912, i32 0, metadata !1263, metadata !1175}
!1407 = metadata !{i32 1918, i32 0, metadata !1261, metadata !1175}
!1408 = metadata !{i32 1933, i32 0, metadata !1262, metadata !1175}
!1409 = metadata !{i32 1914, i32 0, metadata !1262, metadata !1175}
!1410 = metadata !{i32 1928, i32 0, metadata !1262, metadata !1175}
!1411 = metadata !{i32 1930, i32 0, metadata !1262, metadata !1175}
!1412 = metadata !{i32 1932, i32 0, metadata !1262, metadata !1175}
!1413 = metadata !{i32 1941, i32 0, metadata !1262, metadata !1175}
!1414 = metadata !{i32 1947, i32 0, metadata !1262, metadata !1175}
!1415 = metadata !{i32 1948, i32 0, metadata !1262, metadata !1175}
!1416 = metadata !{i32 1959, i32 0, metadata !519, metadata !1175}
!1417 = metadata !{i32 -987654321}
!1418 = metadata !{i32 786688, metadata !519, metadata !"max", metadata !24, i32 1670, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [max] [line 1670]
!1419 = metadata !{i32 1960, i32 0, metadata !519, metadata !1175}
!1420 = metadata !{i32 1968, i32 0, metadata !519, metadata !1175}
!1421 = metadata !{i32 1961, i32 0, metadata !1422, metadata !1175}
!1422 = metadata !{i32 786443, metadata !1, metadata !519, i32 1961, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1423 = metadata !{i32 1963, i32 0, metadata !1424, metadata !1175}
!1424 = metadata !{i32 786443, metadata !1, metadata !1422, i32 1962, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1425 = metadata !{i32 1965, i32 0, metadata !1424, metadata !1175}
!1426 = metadata !{i32 undef}
!1427 = metadata !{i32 786688, metadata !519, metadata !"k2", metadata !24, i32 1664, metadata !15, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [k2] [line 1664]
!1428 = metadata !{i32 1964, i32 0, metadata !1429, metadata !1175}
!1429 = metadata !{i32 786443, metadata !1, metadata !1424, i32 1964, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1430 = metadata !{i8 1}
!1431 = metadata !{i32 786688, metadata !519, metadata !"t2", metadata !24, i32 1665, metadata !90, i32 0, metadata !1175} ; [ DW_TAG_auto_variable ] [t2] [line 1665]
!1432 = metadata !{i32 1966, i32 0, metadata !1433, metadata !1175}
!1433 = metadata !{i32 786443, metadata !1, metadata !1424, i32 1966, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1434 = metadata !{i8 3}
!1435 = metadata !{i32 1969, i32 0, metadata !1436, metadata !1175}
!1436 = metadata !{i32 786443, metadata !1, metadata !519, i32 1969, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1437 = metadata !{i8 5}
!1438 = metadata !{i32 1970, i32 0, metadata !519, metadata !1175}
!1439 = metadata !{i32 1971, i32 0, metadata !1440, metadata !1175}
!1440 = metadata !{i32 786443, metadata !1, metadata !519, i32 1971, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1441 = metadata !{i8 8}
!1442 = metadata !{i32 1977, i32 0, metadata !519, metadata !1175}
!1443 = metadata !{i32 1978, i32 0, metadata !519, metadata !1175}
!1444 = metadata !{i32 1979, i32 0, metadata !519, metadata !1175}
!1445 = metadata !{i32 1309, i32 0, metadata !1176, null}
!1446 = metadata !{i32 1980, i32 0, metadata !519, metadata !1175}
!1447 = metadata !{i32 1310, i32 0, metadata !1176, null}
!1448 = metadata !{i32 1315, i32 0, metadata !1176, null}
!1449 = metadata !{i32 1322, i32 0, metadata !1176, null}
!1450 = metadata !{i32 1329, i32 0, metadata !1176, null}
!1451 = metadata !{i32 1336, i32 0, metadata !1176, null}
!1452 = metadata !{i32 1981, i32 0, metadata !519, metadata !1175}
!1453 = metadata !{i32 1319, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1176, i32 1316, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1455 = metadata !{i32 1325, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !1176, i32 1323, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1457 = metadata !{i32 1331, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !1459, i32 1331, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1459 = metadata !{i32 786443, metadata !1, metadata !1176, i32 1330, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1460 = metadata !{i32 1333, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1331, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1462 = metadata !{i32 1338, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1, metadata !1464, i32 1338, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1464 = metadata !{i32 786443, metadata !1, metadata !1176, i32 1337, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1465 = metadata !{i32 1340, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !1, metadata !1463, i32 1338, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1467 = metadata !{i32 1982, i32 0, metadata !519, metadata !1175}
!1468 = metadata !{i32 1312, i32 0, metadata !1176, null}
!1469 = metadata !{i32 1317, i32 0, metadata !1454, null}
!1470 = metadata !{i32 1318, i32 0, metadata !1454, null}
!1471 = metadata !{i32 1320, i32 0, metadata !1454, null}
!1472 = metadata !{i32 1324, i32 0, metadata !1456, null}
!1473 = metadata !{i32 1326, i32 0, metadata !1456, null}
!1474 = metadata !{i32 1327, i32 0, metadata !1456, null}
!1475 = metadata !{i32 1332, i32 0, metadata !1461, null}
!1476 = metadata !{i32 1339, i32 0, metadata !1466, null}
!1477 = metadata !{i32 1357, i32 0, metadata !285, null}
!1478 = metadata !{i32 1358, i32 0, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !1, metadata !285, i32 1358, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1480 = metadata !{i32 1360, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !1479, i32 1359, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1482 = metadata !{i32 1361, i32 0, metadata !1481, null}
!1483 = metadata !{i32 1362, i32 0, metadata !1481, null}
!1484 = metadata !{i32 1363, i32 0, metadata !1481, null}
!1485 = metadata !{i32 1364, i32 0, metadata !1481, null}
!1486 = metadata !{i32 1365, i32 0, metadata !1481, null}
!1487 = metadata !{i32 1367, i32 0, metadata !285, null}
!1488 = metadata !{i32 1368, i32 0, metadata !285, null}
!1489 = metadata !{i32 1369, i32 0, metadata !285, null}
!1490 = metadata !{i32 1371, i32 0, metadata !285, null}
!1491 = metadata !{i32 1372, i32 0, metadata !285, null}
!1492 = metadata !{i32 1373, i32 0, metadata !285, null}
!1493 = metadata !{i32 1374, i32 0, metadata !285, null}
!1494 = metadata !{i32 1375, i32 0, metadata !285, null}
!1495 = metadata !{i32 1376, i32 0, metadata !285, null}
!1496 = metadata !{i32 1377, i32 0, metadata !285, null}
!1497 = metadata !{i32 1379, i32 0, metadata !1498, null}
!1498 = metadata !{i32 786443, metadata !1, metadata !285, i32 1379, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1499 = metadata !{i32 1390, i32 0, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !1, metadata !1501, i32 1384, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1501 = metadata !{i32 786443, metadata !1, metadata !1502, i32 1381, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1502 = metadata !{i32 786443, metadata !1, metadata !1498, i32 1380, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1503 = metadata !{i32 1415, i32 0, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !1, metadata !1501, i32 1413, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1505 = metadata !{i32 1381, i32 0, metadata !1502, null}
!1506 = metadata !{i32 1384, i32 0, metadata !1501, null}
!1507 = metadata !{i32 1400, i32 0, metadata !1501, null}
!1508 = metadata !{i32 1385, i32 0, metadata !1500, null}
!1509 = metadata !{i32 1386, i32 0, metadata !1500, null}
!1510 = metadata !{i32 1387, i32 0, metadata !1500, null}
!1511 = metadata !{i32 1388, i32 0, metadata !1500, null}
!1512 = metadata !{i32 1391, i32 0, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !1, metadata !1500, i32 1391, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1514 = metadata !{i32 1392, i32 0, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !1, metadata !1513, i32 1391, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1516 = metadata !{i32 1393, i32 0, metadata !1515, null}
!1517 = metadata !{i32 1394, i32 0, metadata !1515, null}
!1518 = metadata !{i32 1395, i32 0, metadata !1515, null}
!1519 = metadata !{i32 1399, i32 0, metadata !1501, null}
!1520 = metadata !{i32 1401, i32 0, metadata !1501, null}
!1521 = metadata !{i32 1402, i32 0, metadata !1501, null}
!1522 = metadata !{i32 1404, i32 0, metadata !1501, null}
!1523 = metadata !{i32 1405, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !1, metadata !1501, i32 1405, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1525 = metadata !{i32 1407, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !1, metadata !1524, i32 1406, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1527 = metadata !{i32 1408, i32 0, metadata !1526, null}
!1528 = metadata !{i32 1409, i32 0, metadata !1526, null}
!1529 = metadata !{i32 1410, i32 0, metadata !1526, null}
!1530 = metadata !{i32 1413, i32 0, metadata !1501, null}
!1531 = metadata !{i32 1416, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !1, metadata !1504, i32 1416, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1533 = metadata !{i32 1418, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1, metadata !1532, i32 1417, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1535 = metadata !{i32 1419, i32 0, metadata !1534, null}
!1536 = metadata !{i32 1420, i32 0, metadata !1534, null}
!1537 = metadata !{i32 1421, i32 0, metadata !1534, null}
!1538 = metadata !{i32 1424, i32 0, metadata !1504, null}
!1539 = metadata !{i32 1425, i32 0, metadata !1504, null}
!1540 = metadata !{i32 1426, i32 0, metadata !1504, null}
!1541 = metadata !{i32 1427, i32 0, metadata !1504, null}
!1542 = metadata !{i32 1429, i32 0, metadata !1504, null}
!1543 = metadata !{i32 1430, i32 0, metadata !1504, null}
!1544 = metadata !{i32 1431, i32 0, metadata !1504, null}
!1545 = metadata !{i32 1432, i32 0, metadata !1504, null}
!1546 = metadata !{i32 1433, i32 0, metadata !1504, null}
!1547 = metadata !{i32 1437, i32 0, metadata !1501, null}
!1548 = metadata !{i32 1438, i32 0, metadata !1501, null}
!1549 = metadata !{i32 1439, i32 0, metadata !1501, null}
!1550 = metadata !{i32 1440, i32 0, metadata !1501, null}
!1551 = metadata !{i32 1441, i32 0, metadata !1501, null}
!1552 = metadata !{i32 1444, i32 0, metadata !1501, null}
!1553 = metadata !{i32 1445, i32 0, metadata !1501, null}
!1554 = metadata !{i32 1446, i32 0, metadata !1501, null}
!1555 = metadata !{i32 1447, i32 0, metadata !1501, null}
!1556 = metadata !{i32 1448, i32 0, metadata !1501, null}
!1557 = metadata !{i32 1451, i32 0, metadata !1501, null}
!1558 = metadata !{i32 1452, i32 0, metadata !1501, null}
!1559 = metadata !{i32 1453, i32 0, metadata !1501, null}
!1560 = metadata !{i32 1454, i32 0, metadata !1501, null}
!1561 = metadata !{i32 1455, i32 0, metadata !1501, null}
!1562 = metadata !{i32 1457, i32 0, metadata !1501, null}
!1563 = metadata !{i32 1458, i32 0, metadata !1501, null}
!1564 = metadata !{i32 1461, i32 0, metadata !285, null}
!1565 = metadata !{i32 1462, i32 0, metadata !285, null}
!1566 = metadata !{i32 1463, i32 0, metadata !285, null}
!1567 = metadata !{i32 1464, i32 0, metadata !285, null}
!1568 = metadata !{i32 1466, i32 0, metadata !285, null}
!1569 = metadata !{i32 1468, i32 0, metadata !285, null}
!1570 = metadata !{i32 1469, i32 0, metadata !285, null}
!1571 = metadata !{i32 1470, i32 0, metadata !285, null}
!1572 = metadata !{i32 1471, i32 0, metadata !285, null}
!1573 = metadata !{i32 1472, i32 0, metadata !285, null}
!1574 = metadata !{i32 1483, i32 0, metadata !312, null}
!1575 = metadata !{i32 1496, i32 0, metadata !312, null}
!1576 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1575} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1577 = metadata !{i32 192, i32 0, metadata !65, metadata !1575}
!1578 = metadata !{i32 195, i32 0, metadata !65, metadata !1575}
!1579 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1575} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1580 = metadata !{i32 196, i32 0, metadata !65, metadata !1575}
!1581 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1575} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1582 = metadata !{i32 1503, i32 0, metadata !312, null}
!1583 = metadata !{i32 1504, i32 0, metadata !312, null}
!1584 = metadata !{i32 1505, i32 0, metadata !312, null}
!1585 = metadata !{i32 1512, i32 0, metadata !312, null}
!1586 = metadata !{i32 1513, i32 0, metadata !312, null}
!1587 = metadata !{i32 1514, i32 0, metadata !312, null}
!1588 = metadata !{i32 1540, i32 0, metadata !1589, null}
!1589 = metadata !{i32 786443, metadata !1, metadata !1590, i32 1536, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1590 = metadata !{i32 786443, metadata !1, metadata !1591, i32 1534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1591 = metadata !{i32 786443, metadata !1, metadata !1592, i32 1534, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1592 = metadata !{i32 786443, metadata !1, metadata !1593, i32 1523, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1593 = metadata !{i32 786443, metadata !1, metadata !312, i32 1523, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1594 = metadata !{i32 1551, i32 0, metadata !1590, null}
!1595 = metadata !{i32 1562, i32 0, metadata !1596, null}
!1596 = metadata !{i32 786443, metadata !1, metadata !1590, i32 1557, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1597 = metadata !{i32 1598, i32 0, metadata !1592, null}
!1598 = metadata !{i32 1600, i32 0, metadata !1592, null}
!1599 = metadata !{i32 1602, i32 0, metadata !1600, null}
!1600 = metadata !{i32 786443, metadata !1, metadata !1592, i32 1601, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1601 = metadata !{i32 1605, i32 0, metadata !1592, null}
!1602 = metadata !{i32 1606, i32 0, metadata !1592, null}
!1603 = metadata !{i32 1609, i32 0, metadata !1592, null}
!1604 = metadata !{i32 1610, i32 0, metadata !1592, null}
!1605 = metadata !{i32 1613, i32 0, metadata !1592, null}
!1606 = metadata !{i32 1614, i32 0, metadata !1592, null}
!1607 = metadata !{i32 1618, i32 0, metadata !312, null}
!1608 = metadata !{i32 197, i32 0, metadata !65, metadata !1575}
!1609 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1575} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1610 = metadata !{i32 1507, i32 0, metadata !1611, null}
!1611 = metadata !{i32 786443, metadata !1, metadata !312, i32 1506, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1612 = metadata !{i32 1516, i32 0, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !1, metadata !312, i32 1515, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1614 = metadata !{i32 1524, i32 0, metadata !1592, null}
!1615 = metadata !{i32 1537, i32 0, metadata !1589, null}
!1616 = metadata !{i32 1538, i32 0, metadata !1589, null}
!1617 = metadata !{i32 1542, i32 0, metadata !1589, null}
!1618 = metadata !{i32 1544, i32 0, metadata !1589, null}
!1619 = metadata !{i32 1547, i32 0, metadata !1590, null}
!1620 = metadata !{i32 1549, i32 0, metadata !1590, null}
!1621 = metadata !{i32 1553, i32 0, metadata !1590, null}
!1622 = metadata !{i32 1558, i32 0, metadata !1596, null}
!1623 = metadata !{i32 1560, i32 0, metadata !1596, null}
!1624 = metadata !{i32 1564, i32 0, metadata !1596, null}
!1625 = metadata !{i32 1568, i32 0, metadata !1590, null}
!1626 = metadata !{i32 1574, i32 0, metadata !1627, null}
!1627 = metadata !{i32 786443, metadata !1, metadata !1590, i32 1573, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1628 = metadata !{i32 1581, i32 0, metadata !1590, null}
!1629 = metadata !{i32 1588, i32 0, metadata !1630, null}
!1630 = metadata !{i32 786443, metadata !1, metadata !1590, i32 1587, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1631 = metadata !{i32 198, i32 0, metadata !65, metadata !1575}
!1632 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1575} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1633 = metadata !{i32 1575, i32 0, metadata !1627, null}
!1634 = metadata !{i32 1577, i32 0, metadata !1627, null}
!1635 = metadata !{i32 1583, i32 0, metadata !1590, null}
!1636 = metadata !{i32 1590, i32 0, metadata !1630, null}
!1637 = metadata !{i32 199, i32 0, metadata !65, metadata !1575}
!1638 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1575} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1639 = metadata !{i32 1569, i32 0, metadata !1590, null}
!1640 = metadata !{i32 1506, i32 0, metadata !1611, null}
!1641 = metadata !{i32 1515, i32 0, metadata !1613, null}
!1642 = metadata !{i32 1523, i32 0, metadata !1593, null}
!1643 = metadata !{i32 1527, i32 0, metadata !1592, null}
!1644 = metadata !{i32 1528, i32 0, metadata !1645, null}
!1645 = metadata !{i32 786443, metadata !1, metadata !1592, i32 1527, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1646 = metadata !{i32 1529, i32 0, metadata !1645, null}
!1647 = metadata !{i32 1534, i32 0, metadata !1591, null}
!1648 = metadata !{i32 1557, i32 0, metadata !1590, null}
!1649 = metadata !{i32 1587, i32 0, metadata !1590, null}
!1650 = metadata !{i32 1536, i32 0, metadata !1590, null}
!1651 = metadata !{i32 1539, i32 0, metadata !1589, null}
!1652 = metadata !{i32 1541, i32 0, metadata !1589, null}
!1653 = metadata !{i32 1543, i32 0, metadata !1589, null}
!1654 = metadata !{i32 1545, i32 0, metadata !1589, null}
!1655 = metadata !{i32 1548, i32 0, metadata !1590, null}
!1656 = metadata !{i32 1550, i32 0, metadata !1590, null}
!1657 = metadata !{i32 1552, i32 0, metadata !1590, null}
!1658 = metadata !{i32 1554, i32 0, metadata !1590, null}
!1659 = metadata !{i32 1559, i32 0, metadata !1596, null}
!1660 = metadata !{i32 1561, i32 0, metadata !1596, null}
!1661 = metadata !{i32 1563, i32 0, metadata !1596, null}
!1662 = metadata !{i32 1565, i32 0, metadata !1596, null}
!1663 = metadata !{i32 1570, i32 0, metadata !1590, null}
!1664 = metadata !{i32 1573, i32 0, metadata !1590, null}
!1665 = metadata !{i32 1576, i32 0, metadata !1627, null}
!1666 = metadata !{i32 1578, i32 0, metadata !1627, null}
!1667 = metadata !{i32 1582, i32 0, metadata !1590, null}
!1668 = metadata !{i32 1584, i32 0, metadata !1590, null}
!1669 = metadata !{i32 1589, i32 0, metadata !1630, null}
!1670 = metadata !{i32 1591, i32 0, metadata !1630, null}
!1671 = metadata !{i32 1601, i32 0, metadata !1600, null}
!1672 = metadata !{i32 1603, i32 0, metadata !1600, null}
!1673 = metadata !{i32 1607, i32 0, metadata !1592, null}
!1674 = metadata !{i32 1611, i32 0, metadata !1592, null}
!1675 = metadata !{i32 1615, i32 0, metadata !1592, null}
!1676 = metadata !{i32 1620, i32 0, metadata !312, null}
!1677 = metadata !{i32 1621, i32 0, metadata !312, null}
!1678 = metadata !{i32 1623, i32 0, metadata !312, null}
!1679 = metadata !{i32 2022, i32 0, metadata !327, null}
!1680 = metadata !{i32 2028, i32 0, metadata !327, null}
!1681 = metadata !{i32 2044, i32 0, metadata !327, null}
!1682 = metadata !{i32 2045, i32 0, metadata !327, null}
!1683 = metadata !{i32 2046, i32 0, metadata !1684, null}
!1684 = metadata !{i32 786443, metadata !1, metadata !327, i32 2046, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1685 = metadata !{i32 2047, i32 0, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !1, metadata !1684, i32 2046, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1687 = metadata !{i32 2048, i32 0, metadata !1686, null}
!1688 = metadata !{i32 2050, i32 0, metadata !327, null}
!1689 = metadata !{i32 2054, i32 0, metadata !327, null}
!1690 = metadata !{i32 2055, i32 0, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !1, metadata !327, i32 2055, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1692 = metadata !{i32 2060, i32 0, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !1, metadata !1691, i32 2056, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1694 = metadata !{i32 2058, i32 0, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !1, metadata !1693, i32 2057, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1696 = metadata !{i32 2057, i32 0, metadata !1695, null}
!1697 = metadata !{i32 2059, i32 0, metadata !1695, null}
!1698 = metadata !{i32 2061, i32 0, metadata !1693, null}
!1699 = metadata !{i32 2067, i32 0, metadata !327, null}
!1700 = metadata !{i32 786689, metadata !65, metadata !"rows", metadata !24, i32 16777408, metadata !15, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [rows] [line 192]
!1701 = metadata !{i32 192, i32 0, metadata !65, metadata !1699}
!1702 = metadata !{i32 786689, metadata !65, metadata !"M", metadata !24, i32 33554624, metadata !15, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [M] [line 192]
!1703 = metadata !{i32 195, i32 0, metadata !65, metadata !1699}
!1704 = metadata !{i32 786688, metadata !65, metadata !"mx", metadata !24, i32 194, metadata !27, i32 0, metadata !1699} ; [ DW_TAG_auto_variable ] [mx] [line 194]
!1705 = metadata !{i32 196, i32 0, metadata !65, metadata !1699}
!1706 = metadata !{i32 786689, metadata !65, metadata !"xmx", metadata !24, i32 50331840, metadata !55, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [xmx] [line 192]
!1707 = metadata !{i32 2072, i32 0, metadata !327, null}
!1708 = metadata !{i32 2074, i32 0, metadata !327, null}
!1709 = metadata !{i32 2076, i32 0, metadata !327, null}
!1710 = metadata !{i32 2106, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !1, metadata !1712, i32 2096, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1712 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2096, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1713 = metadata !{i32 786443, metadata !1, metadata !1714, i32 2089, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1714 = metadata !{i32 786443, metadata !1, metadata !327, i32 2089, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1715 = metadata !{i32 2151, i32 0, metadata !1713, null}
!1716 = metadata !{i32 2153, i32 0, metadata !1713, null}
!1717 = metadata !{i32 2157, i32 0, metadata !1713, null}
!1718 = metadata !{i32 2160, i32 0, metadata !1719, null}
!1719 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2159, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1720 = metadata !{i32 2166, i32 0, metadata !1713, null}
!1721 = metadata !{i32 2168, i32 0, metadata !1713, null}
!1722 = metadata !{i32 2173, i32 0, metadata !1713, null}
!1723 = metadata !{i32 2175, i32 0, metadata !1713, null}
!1724 = metadata !{i32 2178, i32 0, metadata !1713, null}
!1725 = metadata !{i32 2183, i32 0, metadata !327, null}
!1726 = metadata !{i32 197, i32 0, metadata !65, metadata !1699}
!1727 = metadata !{i32 786689, metadata !65, metadata !"mmx", metadata !24, i32 67109056, metadata !55, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [mmx] [line 192]
!1728 = metadata !{i32 2080, i32 0, metadata !1729, null}
!1729 = metadata !{i32 786443, metadata !1, metadata !1730, i32 2079, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1730 = metadata !{i32 786443, metadata !1, metadata !327, i32 2079, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1731 = metadata !{i32 2093, i32 0, metadata !1713, null}
!1732 = metadata !{i32 2098, i32 0, metadata !1711, null}
!1733 = metadata !{i32 2100, i32 0, metadata !1711, null}
!1734 = metadata !{i32 2103, i32 0, metadata !1711, null}
!1735 = metadata !{i32 2108, i32 0, metadata !1711, null}
!1736 = metadata !{i32 2114, i32 0, metadata !1737, null}
!1737 = metadata !{i32 786443, metadata !1, metadata !1738, i32 2114, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1738 = metadata !{i32 786443, metadata !1, metadata !1739, i32 2113, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1739 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2112, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1740 = metadata !{i32 2115, i32 0, metadata !1738, null}
!1741 = metadata !{i32 2121, i32 0, metadata !1711, null}
!1742 = metadata !{i32 2132, i32 0, metadata !1743, null}
!1743 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2129, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1744 = metadata !{i32 198, i32 0, metadata !65, metadata !1699}
!1745 = metadata !{i32 786689, metadata !65, metadata !"imx", metadata !24, i32 83886272, metadata !55, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [imx] [line 192]
!1746 = metadata !{i32 2130, i32 0, metadata !1743, null}
!1747 = metadata !{i32 2135, i32 0, metadata !1743, null}
!1748 = metadata !{i32 2141, i32 0, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !1, metadata !1750, i32 2141, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1750 = metadata !{i32 786443, metadata !1, metadata !1751, i32 2140, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1751 = metadata !{i32 786443, metadata !1, metadata !1743, i32 2139, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1752 = metadata !{i32 2142, i32 0, metadata !1750, null}
!1753 = metadata !{i32 199, i32 0, metadata !65, metadata !1699}
!1754 = metadata !{i32 786689, metadata !65, metadata !"dmx", metadata !24, i32 100663488, metadata !55, i32 0, metadata !1699} ; [ DW_TAG_arg_variable ] [dmx] [line 192]
!1755 = metadata !{i32 2119, i32 0, metadata !1711, null}
!1756 = metadata !{i32 2124, i32 0, metadata !1711, null}
!1757 = metadata !{i32 2068, i32 0, metadata !327, null}
!1758 = metadata !{i32 2073, i32 0, metadata !327, null}
!1759 = metadata !{i32 2075, i32 0, metadata !327, null}
!1760 = metadata !{i32 2077, i32 0, metadata !327, null}
!1761 = metadata !{i32 2078, i32 0, metadata !327, null}
!1762 = metadata !{i32 2079, i32 0, metadata !1730, null}
!1763 = metadata !{i32 2089, i32 0, metadata !1714, null}
!1764 = metadata !{i32 2141, i32 0, metadata !1750, null}
!1765 = metadata !{i32 2114, i32 0, metadata !1738, null}
!1766 = metadata !{i32 2081, i32 0, metadata !1729, null}
!1767 = metadata !{i32 2090, i32 0, metadata !1713, null}
!1768 = metadata !{i32 2091, i32 0, metadata !1713, null}
!1769 = metadata !{i32 2094, i32 0, metadata !1713, null}
!1770 = metadata !{i32 2096, i32 0, metadata !1712, null}
!1771 = metadata !{i32 2099, i32 0, metadata !1711, null}
!1772 = metadata !{i32 2102, i32 0, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2102, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1774 = metadata !{i32 2105, i32 0, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2105, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1776 = metadata !{i32 2107, i32 0, metadata !1777, null}
!1777 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2107, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1778 = metadata !{i32 2110, i32 0, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2110, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1780 = metadata !{i32 2112, i32 0, metadata !1739, null}
!1781 = metadata !{i32 2120, i32 0, metadata !1711, null}
!1782 = metadata !{i32 2123, i32 0, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2123, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1784 = metadata !{i32 2126, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !1, metadata !1711, i32 2126, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1786 = metadata !{i32 2129, i32 0, metadata !1711, null}
!1787 = metadata !{i32 2131, i32 0, metadata !1743, null}
!1788 = metadata !{i32 2134, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1, metadata !1743, i32 2134, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1790 = metadata !{i32 2137, i32 0, metadata !1791, null}
!1791 = metadata !{i32 786443, metadata !1, metadata !1743, i32 2137, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1792 = metadata !{i32 2139, i32 0, metadata !1751, null}
!1793 = metadata !{i32 2152, i32 0, metadata !1713, null}
!1794 = metadata !{i32 2155, i32 0, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2155, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1796 = metadata !{i32 2158, i32 0, metadata !1713, null}
!1797 = metadata !{i32 2159, i32 0, metadata !1719, null}
!1798 = metadata !{i32 2162, i32 0, metadata !1799, null}
!1799 = metadata !{i32 786443, metadata !1, metadata !1719, i32 2162, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1800 = metadata !{i32 2167, i32 0, metadata !1713, null}
!1801 = metadata !{i32 2170, i32 0, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2170, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1803 = metadata !{i32 2174, i32 0, metadata !1713, null}
!1804 = metadata !{i32 2177, i32 0, metadata !1805, null}
!1805 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2177, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1806 = metadata !{i32 2180, i32 0, metadata !1807, null}
!1807 = metadata !{i32 786443, metadata !1, metadata !1713, i32 2180, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1808 = metadata !{i32 2186, i32 0, metadata !327, null}
!1809 = metadata !{i32 2188, i32 0, metadata !327, null}
!1810 = metadata !{i32 2189, i32 0, metadata !327, null}
!1811 = metadata !{i32 2190, i32 0, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !1, metadata !327, i32 2190, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1813 = metadata !{i32 2191, i32 0, metadata !1812, null}
!1814 = metadata !{i32 2192, i32 0, metadata !327, null}
!1815 = metadata !{i32 2193, i32 0, metadata !327, null}
!1816 = metadata !{i32 2195, i32 0, metadata !327, null}
!1817 = metadata !{i32 2213, i32 0, metadata !425, null}
!1818 = metadata !{i32 2215, i32 0, metadata !425, null}
!1819 = metadata !{i32 2226, i32 0, metadata !425, null}
!1820 = metadata !{i32 2227, i32 0, metadata !425, null}
!1821 = metadata !{i32 2232, i32 0, metadata !425, null}
!1822 = metadata !{i32 2233, i32 0, metadata !425, null}
!1823 = metadata !{i32 2234, i32 0, metadata !425, null}
!1824 = metadata !{i32 2235, i32 0, metadata !425, null}
!1825 = metadata !{i32 2236, i32 0, metadata !425, null}
!1826 = metadata !{i32 2237, i32 0, metadata !425, null}
!1827 = metadata !{i32 2238, i32 0, metadata !425, null}
!1828 = metadata !{i32 2246, i32 0, metadata !440, null}
!1829 = metadata !{i32 2254, i32 0, metadata !440, null}
!1830 = metadata !{i32 2262, i32 0, metadata !440, null}
!1831 = metadata !{i32 2270, i32 0, metadata !440, null}
!1832 = metadata !{i32 2278, i32 0, metadata !440, null}
!1833 = metadata !{i32 2311, i32 0, metadata !440, null}
!1834 = metadata !{i32 2315, i32 0, metadata !440, null}
!1835 = metadata !{i32 2318, i32 0, metadata !1836, null}
!1836 = metadata !{i32 786443, metadata !1, metadata !439, i32 2318, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1837 = metadata !{i32 2242, i32 0, metadata !425, null}
!1838 = metadata !{i32 2243, i32 0, metadata !441, null}
!1839 = metadata !{i32 2245, i32 0, metadata !440, null}
!1840 = metadata !{i32 2247, i32 0, metadata !440, null}
!1841 = metadata !{i32 2248, i32 0, metadata !440, null}
!1842 = metadata !{i32 2249, i32 0, metadata !440, null}
!1843 = metadata !{i32 2250, i32 0, metadata !440, null}
!1844 = metadata !{i32 2253, i32 0, metadata !440, null}
!1845 = metadata !{i32 2255, i32 0, metadata !440, null}
!1846 = metadata !{i32 2256, i32 0, metadata !440, null}
!1847 = metadata !{i32 2257, i32 0, metadata !440, null}
!1848 = metadata !{i32 2258, i32 0, metadata !440, null}
!1849 = metadata !{i32 2261, i32 0, metadata !440, null}
!1850 = metadata !{i32 2263, i32 0, metadata !440, null}
!1851 = metadata !{i32 2264, i32 0, metadata !440, null}
!1852 = metadata !{i32 2265, i32 0, metadata !440, null}
!1853 = metadata !{i32 2266, i32 0, metadata !440, null}
!1854 = metadata !{i32 2269, i32 0, metadata !440, null}
!1855 = metadata !{i32 2271, i32 0, metadata !440, null}
!1856 = metadata !{i32 2272, i32 0, metadata !440, null}
!1857 = metadata !{i32 2273, i32 0, metadata !440, null}
!1858 = metadata !{i32 2274, i32 0, metadata !440, null}
!1859 = metadata !{i32 2279, i32 0, metadata !440, null}
!1860 = metadata !{i32 2281, i32 0, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !1, metadata !440, i32 2280, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1862 = metadata !{i32 2282, i32 0, metadata !1861, null}
!1863 = metadata !{i32 2283, i32 0, metadata !1861, null}
!1864 = metadata !{i32 2285, i32 0, metadata !1861, null}
!1865 = metadata !{i32 2284, i32 0, metadata !1861, null}
!1866 = metadata !{i32 2287, i32 0, metadata !1867, null}
!1867 = metadata !{i32 786443, metadata !1, metadata !1861, i32 2286, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1868 = metadata !{i32 2288, i32 0, metadata !1867, null}
!1869 = metadata !{i32 2289, i32 0, metadata !1867, null}
!1870 = metadata !{i32 2292, i32 0, metadata !440, null}
!1871 = metadata !{i32 2293, i32 0, metadata !440, null}
!1872 = metadata !{i32 2294, i32 0, metadata !440, null}
!1873 = metadata !{i32 2295, i32 0, metadata !440, null}
!1874 = metadata !{i32 2296, i32 0, metadata !440, null}
!1875 = metadata !{i32 2297, i32 0, metadata !440, null}
!1876 = metadata !{i32 2300, i32 0, metadata !440, null}
!1877 = metadata !{i32 2301, i32 0, metadata !440, null}
!1878 = metadata !{i32 2302, i32 0, metadata !440, null}
!1879 = metadata !{i32 2303, i32 0, metadata !440, null}
!1880 = metadata !{i32 2304, i32 0, metadata !440, null}
!1881 = metadata !{i32 2305, i32 0, metadata !440, null}
!1882 = metadata !{i32 2308, i32 0, metadata !440, null}
!1883 = metadata !{i32 2309, i32 0, metadata !440, null}
!1884 = metadata !{i32 2310, i32 0, metadata !440, null}
!1885 = metadata !{i32 2312, i32 0, metadata !440, null}
!1886 = metadata !{i32 2313, i32 0, metadata !440, null}
!1887 = metadata !{i32 2320, i32 0, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1, metadata !1836, i32 2319, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1889 = metadata !{i32 2321, i32 0, metadata !1888, null}
!1890 = metadata !{i32 2322, i32 0, metadata !1888, null}
!1891 = metadata !{i32 2323, i32 0, metadata !1888, null}
!1892 = metadata !{i32 2324, i32 0, metadata !1888, null}
!1893 = metadata !{i32 2326, i32 0, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !1, metadata !1888, i32 2325, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1895 = metadata !{i32 2327, i32 0, metadata !1894, null}
!1896 = metadata !{i32 2328, i32 0, metadata !1894, null}
!1897 = metadata !{i32 2334, i32 0, metadata !440, null}
!1898 = metadata !{i32 2335, i32 0, metadata !440, null}
!1899 = metadata !{i32 2336, i32 0, metadata !440, null}
!1900 = metadata !{i32 2337, i32 0, metadata !440, null}
!1901 = metadata !{i32 2338, i32 0, metadata !440, null}
!1902 = metadata !{i32 2339, i32 0, metadata !440, null}
!1903 = metadata !{i32 2342, i32 0, metadata !440, null}
!1904 = metadata !{i32 2344, i32 0, metadata !440, null}
!1905 = metadata !{i32 2346, i32 0, metadata !441, null}
!1906 = metadata !{i32 2348, i32 0, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !1, metadata !441, i32 2347, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1908 = metadata !{i32 2349, i32 0, metadata !1907, null}
!1909 = metadata !{i32 2350, i32 0, metadata !1907, null}
!1910 = metadata !{i32 2354, i32 0, metadata !425, null}
!1911 = metadata !{i32 2355, i32 0, metadata !425, null}
!1912 = metadata !{i32 2356, i32 0, metadata !425, null}
!1913 = metadata !{i32 2357, i32 0, metadata !425, null}
!1914 = metadata !{i32 2359, i32 0, metadata !425, null}
!1915 = metadata !{i32 2360, i32 0, metadata !425, null}
!1916 = metadata !{i32 2436, i32 0, metadata !442, null}
!1917 = metadata !{i32 2437, i32 0, metadata !442, null}
!1918 = metadata !{i32 2438, i32 0, metadata !442, null}
!1919 = metadata !{i32 2439, i32 0, metadata !442, null}
!1920 = metadata !{i32 2440, i32 0, metadata !442, null}
!1921 = metadata !{i32 2441, i32 0, metadata !442, null}
!1922 = metadata !{i32 2442, i32 0, metadata !442, null}
!1923 = metadata !{i32 2443, i32 0, metadata !442, null}
!1924 = metadata !{i32 2444, i32 0, metadata !442, null}
!1925 = metadata !{i32 2445, i32 0, metadata !442, null}
!1926 = metadata !{i32 2446, i32 0, metadata !442, null}
!1927 = metadata !{i32 2447, i32 0, metadata !442, null}
!1928 = metadata !{i32 2448, i32 0, metadata !442, null}
!1929 = metadata !{i32 2449, i32 0, metadata !442, null}
!1930 = metadata !{i32 2451, i32 0, metadata !442, null}
!1931 = metadata !{i32 2453, i32 0, metadata !442, null}
!1932 = metadata !{i32 2457, i32 0, metadata !442, null}
!1933 = metadata !{i32 2458, i32 0, metadata !442, null}
!1934 = metadata !{i32 2469, i32 0, metadata !442, null}
!1935 = metadata !{i32 2473, i32 0, metadata !442, null}
!1936 = metadata !{i32 2474, i32 0, metadata !442, null}
!1937 = metadata !{i32 2480, i32 0, metadata !442, null}
!1938 = metadata !{i32 2481, i32 0, metadata !442, null}
!1939 = metadata !{i32 2482, i32 0, metadata !442, null}
!1940 = metadata !{float 0.000000e+00}
!1941 = metadata !{i32 2483, i32 0, metadata !442, null}
!1942 = metadata !{i32 2484, i32 0, metadata !1943, null}
!1943 = metadata !{i32 786443, metadata !1, metadata !442, i32 2484, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1944 = metadata !{i32 2487, i32 0, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !1, metadata !1943, i32 2485, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1946 = metadata !{i32 2486, i32 0, metadata !1945, null}
!1947 = metadata !{i32 2488, i32 0, metadata !1945, null}
!1948 = metadata !{i32 2489, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1, metadata !1945, i32 2488, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1950 = metadata !{i32 2490, i32 0, metadata !1949, null}
!1951 = metadata !{i32 2491, i32 0, metadata !1949, null}
!1952 = metadata !{i32 2492, i32 0, metadata !1949, null}
!1953 = metadata !{i32 2493, i32 0, metadata !1945, null}
!1954 = metadata !{i32 2502, i32 0, metadata !442, null}
!1955 = metadata !{i32 2503, i32 0, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !1, metadata !442, i32 2502, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1957 = metadata !{i32 2504, i32 0, metadata !1956, null}
!1958 = metadata !{i32 2505, i32 0, metadata !1956, null}
!1959 = metadata !{i32 2506, i32 0, metadata !1956, null}
!1960 = metadata !{i32 2507, i32 0, metadata !1956, null}
!1961 = metadata !{i32 2514, i32 0, metadata !442, null}
!1962 = metadata !{i32 2518, i32 0, metadata !442, null}
!1963 = metadata !{i32 2519, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !1, metadata !442, i32 2519, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1965 = metadata !{i32 2525, i32 0, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !1, metadata !1964, i32 2519, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1967 = metadata !{i32 2528, i32 0, metadata !1968, null}
!1968 = metadata !{i32 786443, metadata !1, metadata !1966, i32 2525, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1969 = metadata !{i32 2533, i32 0, metadata !1968, null}
!1970 = metadata !{i32 2520, i32 0, metadata !1966, null}
!1971 = metadata !{i32 2522, i32 0, metadata !1966, null}
!1972 = metadata !{i32 2523, i32 0, metadata !1966, null}
!1973 = metadata !{metadata !"double", metadata !556}
!1974 = metadata !{i32 2526, i32 0, metadata !1968, null}
!1975 = metadata !{i32 2531, i32 0, metadata !1968, null}
!1976 = metadata !{i32 2529, i32 0, metadata !1968, null}
!1977 = metadata !{i32 2542, i32 0, metadata !1968, null}
!1978 = metadata !{i32 2543, i32 0, metadata !1966, null}
!1979 = metadata !{i32 2544, i32 0, metadata !1966, null}
!1980 = metadata !{i32 2559, i32 0, metadata !442, null}
!1981 = metadata !{i32 2560, i32 0, metadata !442, null}
!1982 = metadata !{i32 2562, i32 0, metadata !442, null}
!1983 = metadata !{i32 2576, i32 0, metadata !442, null}
!1984 = metadata !{i32 2577, i32 0, metadata !1985, null}
!1985 = metadata !{i32 786443, metadata !1, metadata !442, i32 2576, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1986 = metadata !{i32 2587, i32 0, metadata !1985, null}
!1987 = metadata !{i32 2591, i32 0, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !1, metadata !442, i32 2591, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/core_algorithms.c]
!1989 = metadata !{i32 2592, i32 0, metadata !1988, null}
!1990 = metadata !{i32 2593, i32 0, metadata !442, null}
!1991 = metadata !{i32 2594, i32 0, metadata !442, null}
!1992 = metadata !{i32 2595, i32 0, metadata !442, null}
!1993 = metadata !{i32 2596, i32 0, metadata !442, null}
!1994 = metadata !{i32 2597, i32 0, metadata !442, null}
