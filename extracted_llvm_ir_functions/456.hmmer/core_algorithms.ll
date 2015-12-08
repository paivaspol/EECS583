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
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 66, i64 80) #5
  %0 = bitcast i8* %call to %struct.dpmatrix_s*
  %add = add i32 %N, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 67, i64 %mul) #5
  %1 = bitcast i8* %call1 to i32**
  %xmx = bitcast i8* %call to i32***
  store i32** %1, i32*** %xmx, align 8, !tbaa !0
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 68, i64 %mul) #5
  %2 = bitcast i8* %call5 to i32**
  %mmx = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %mmx to i32***
  store i32** %2, i32*** %3, align 8, !tbaa !0
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 69, i64 %mul) #5
  %4 = bitcast i8* %call9 to i32**
  %imx = getelementptr inbounds i8* %call, i64 16
  %5 = bitcast i8* %imx to i32***
  store i32** %4, i32*** %5, align 8, !tbaa !0
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 70, i64 %mul) #5
  %6 = bitcast i8* %call13 to i32**
  %dmx = getelementptr inbounds i8* %call, i64 24
  %7 = bitcast i8* %dmx to i32***
  store i32** %6, i32*** %7, align 8, !tbaa !0
  %mul15 = mul nsw i32 %add, 5
  %conv16 = sext i32 %mul15 to i64
  %mul17 = shl nsw i64 %conv16, 2
  %call18 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 71, i64 %mul17) #5
  %xmx_mem = getelementptr inbounds i8* %call, i64 32
  %8 = bitcast i8* %xmx_mem to i8**
  store i8* %call18, i8** %8, align 8, !tbaa !0
  %add20 = add nsw i32 %M, 2
  %mul21 = mul nsw i32 %add20, %add
  %conv22 = sext i32 %mul21 to i64
  %mul23 = shl nsw i64 %conv22, 2
  %call24 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 72, i64 %mul23) #5
  %mmx_mem = getelementptr inbounds i8* %call, i64 40
  %9 = bitcast i8* %mmx_mem to i8**
  store i8* %call24, i8** %9, align 8, !tbaa !0
  %call30 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 73, i64 %mul23) #5
  %imx_mem = getelementptr inbounds i8* %call, i64 48
  %10 = bitcast i8* %imx_mem to i8**
  store i8* %call30, i8** %10, align 8, !tbaa !0
  %call36 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 74, i64 %mul23) #5
  %dmx_mem = getelementptr inbounds i8* %call, i64 56
  %11 = bitcast i8* %dmx_mem to i8**
  store i8* %call36, i8** %11, align 8, !tbaa !0
  %12 = load i8** %8, align 8, !tbaa !0
  %13 = bitcast i8* %12 to i32*
  %14 = load i32*** %xmx, align 8, !tbaa !0
  store i32* %13, i32** %14, align 8, !tbaa !0
  %15 = load i8** %9, align 8, !tbaa !0
  %16 = bitcast i8* %15 to i32*
  %17 = load i32*** %3, align 8, !tbaa !0
  store i32* %16, i32** %17, align 8, !tbaa !0
  %18 = load i8** %10, align 8, !tbaa !0
  %19 = bitcast i8* %18 to i32*
  %20 = load i32*** %5, align 8, !tbaa !0
  store i32* %19, i32** %20, align 8, !tbaa !0
  %21 = load i8** %11, align 8, !tbaa !0
  %22 = bitcast i8* %21 to i32*
  %23 = load i32*** %7, align 8, !tbaa !0
  store i32* %22, i32** %23, align 8, !tbaa !0
  %cmp141 = icmp slt i32 %N, 1
  br i1 %cmp141, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %24 = load i32*** %xmx, align 8, !tbaa !0
  %25 = load i32** %24, align 8, !tbaa !0
  %26 = trunc i64 %indvars.iv to i32
  %sext = mul i64 %indvars.iv, 21474836480
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i32* %25, i64 %idx.ext
  %arrayidx53 = getelementptr inbounds i32** %24, i64 %indvars.iv
  store i32* %add.ptr, i32** %arrayidx53, align 8, !tbaa !0
  %27 = load i32*** %3, align 8, !tbaa !0
  %28 = load i32** %27, align 8, !tbaa !0
  %mul57 = mul nsw i32 %26, %add20
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds i32* %28, i64 %idx.ext58
  %arrayidx62 = getelementptr inbounds i32** %27, i64 %indvars.iv
  store i32* %add.ptr59, i32** %arrayidx62, align 8, !tbaa !0
  %29 = load i32*** %5, align 8, !tbaa !0
  %30 = load i32** %29, align 8, !tbaa !0
  %add.ptr68 = getelementptr inbounds i32* %30, i64 %idx.ext58
  %arrayidx71 = getelementptr inbounds i32** %29, i64 %indvars.iv
  store i32* %add.ptr68, i32** %arrayidx71, align 8, !tbaa !0
  %31 = load i32*** %7, align 8, !tbaa !0
  %32 = load i32** %31, align 8, !tbaa !0
  %add.ptr77 = getelementptr inbounds i32* %32, i64 %idx.ext58
  %arrayidx80 = getelementptr inbounds i32** %31, i64 %indvars.iv
  store i32* %add.ptr77, i32** %arrayidx80, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %cmp81 = icmp sgt i32 %padM, 0
  %cmp83 = icmp sgt i32 %padN, 0
  %or.cond = and i1 %cmp81, %cmp83
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %maxN = getelementptr inbounds i8* %call, i64 64
  %33 = bitcast i8* %maxN to i32*
  store i32 %N, i32* %33, align 4, !tbaa !3
  %maxM = getelementptr inbounds i8* %call, i64 68
  %34 = bitcast i8* %maxM to i32*
  store i32 %M, i32* %34, align 4, !tbaa !3
  %padN85 = getelementptr inbounds i8* %call, i64 72
  %35 = bitcast i8* %padN85 to i32*
  store i32 %padN, i32* %35, align 4, !tbaa !3
  %padM86 = getelementptr inbounds i8* %call, i64 76
  %36 = bitcast i8* %padM86 to i32*
  store i32 %padM, i32* %36, align 4, !tbaa !3
  ret %struct.dpmatrix_s* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @ResizePlan7Matrix(%struct.dpmatrix_s* %mx, i32 %N, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  %maxN = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 8
  %0 = load i32* %maxN, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %N
  br i1 %cmp, label %if.then4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %maxM = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 9
  %1 = load i32* %maxM, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, %M
  br i1 %cmp1, label %if.end27, label %DONE

if.then4:                                         ; preds = %entry
  %padN = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 10
  %2 = load i32* %padN, align 4, !tbaa !3
  %add = add nsw i32 %2, %N
  store i32 %add, i32* %maxN, align 4, !tbaa !3
  %xmx6 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %3 = load i32*** %xmx6, align 8, !tbaa !0
  %4 = bitcast i32** %3 to i8*
  %add7 = add nsw i32 %add, 1
  %conv = sext i32 %add7 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 133, i8* %4, i64 %mul) #5
  %5 = bitcast i8* %call to i32**
  store i32** %5, i32*** %xmx6, align 8, !tbaa !0
  %mmx9 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %6 = load i32*** %mmx9, align 8, !tbaa !0
  %7 = bitcast i32** %6 to i8*
  %call13 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 134, i8* %7, i64 %mul) #5
  %8 = bitcast i8* %call13 to i32**
  store i32** %8, i32*** %mmx9, align 8, !tbaa !0
  %imx15 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %9 = load i32*** %imx15, align 8, !tbaa !0
  %10 = bitcast i32** %9 to i8*
  %call19 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 135, i8* %10, i64 %mul) #5
  %11 = bitcast i8* %call19 to i32**
  store i32** %11, i32*** %imx15, align 8, !tbaa !0
  %dmx21 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %12 = load i32*** %dmx21, align 8, !tbaa !0
  %13 = bitcast i32** %12 to i8*
  %call25 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 136, i8* %13, i64 %mul) #5
  %14 = bitcast i8* %call25 to i32**
  store i32** %14, i32*** %dmx21, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.then4
  %N.addr.0 = phi i32 [ %add, %if.then4 ], [ %N, %land.lhs.true ]
  %maxM28 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 9
  %15 = load i32* %maxM28, align 4, !tbaa !3
  %cmp29 = icmp slt i32 %15, %M
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  %padM = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 11
  %16 = load i32* %padM, align 4, !tbaa !3
  %add32 = add nsw i32 %16, %M
  store i32 %add32, i32* %maxM28, align 4, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27
  %M.addr.0 = phi i32 [ %add32, %if.then31 ], [ %M, %if.end27 ]
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 4
  %17 = load i8** %xmx_mem, align 8, !tbaa !0
  %add35 = add i32 %N.addr.0, 1
  %mul36 = mul nsw i32 %add35, 5
  %conv37 = sext i32 %mul36 to i64
  %mul38 = shl nsw i64 %conv37, 2
  %call39 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 144, i8* %17, i64 %mul38) #5
  store i8* %call39, i8** %xmx_mem, align 8, !tbaa !0
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 5
  %18 = load i8** %mmx_mem, align 8, !tbaa !0
  %add42 = add nsw i32 %M.addr.0, 2
  %mul43 = mul nsw i32 %add42, %add35
  %conv44 = sext i32 %mul43 to i64
  %mul45 = shl nsw i64 %conv44, 2
  %call46 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 145, i8* %18, i64 %mul45) #5
  store i8* %call46, i8** %mmx_mem, align 8, !tbaa !0
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 6
  %19 = load i8** %imx_mem, align 8, !tbaa !0
  %call53 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 146, i8* %19, i64 %mul45) #5
  store i8* %call53, i8** %imx_mem, align 8, !tbaa !0
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 7
  %20 = load i8** %dmx_mem, align 8, !tbaa !0
  %call60 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 147, i8* %20, i64 %mul45) #5
  store i8* %call60, i8** %dmx_mem, align 8, !tbaa !0
  %21 = load i8** %xmx_mem, align 8, !tbaa !0
  %22 = bitcast i8* %21 to i32*
  %xmx63 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %23 = load i32*** %xmx63, align 8, !tbaa !0
  store i32* %22, i32** %23, align 8, !tbaa !0
  %24 = load i8** %mmx_mem, align 8, !tbaa !0
  %25 = bitcast i8* %24 to i32*
  %mmx65 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %26 = load i32*** %mmx65, align 8, !tbaa !0
  store i32* %25, i32** %26, align 8, !tbaa !0
  %27 = load i8** %imx_mem, align 8, !tbaa !0
  %28 = bitcast i8* %27 to i32*
  %imx68 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %29 = load i32*** %imx68, align 8, !tbaa !0
  store i32* %28, i32** %29, align 8, !tbaa !0
  %30 = load i8** %dmx_mem, align 8, !tbaa !0
  %31 = bitcast i8* %30 to i32*
  %dmx71 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %32 = load i32*** %dmx71, align 8, !tbaa !0
  store i32* %31, i32** %32, align 8, !tbaa !0
  %cmp73204 = icmp slt i32 %N.addr.0, 1
  br i1 %cmp73204, label %DONE, label %for.body

for.body:                                         ; preds = %if.end34, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.end34 ]
  %33 = load i32*** %xmx63, align 8, !tbaa !0
  %34 = load i32** %33, align 8, !tbaa !0
  %35 = trunc i64 %indvars.iv to i32
  %sext = mul i64 %indvars.iv, 21474836480
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i32* %34, i64 %idx.ext
  %arrayidx79 = getelementptr inbounds i32** %33, i64 %indvars.iv
  store i32* %add.ptr, i32** %arrayidx79, align 8, !tbaa !0
  %36 = load i32*** %mmx65, align 8, !tbaa !0
  %37 = load i32** %36, align 8, !tbaa !0
  %mul83 = mul nsw i32 %35, %add42
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i32* %37, i64 %idx.ext84
  %arrayidx88 = getelementptr inbounds i32** %36, i64 %indvars.iv
  store i32* %add.ptr85, i32** %arrayidx88, align 8, !tbaa !0
  %38 = load i32*** %imx68, align 8, !tbaa !0
  %39 = load i32** %38, align 8, !tbaa !0
  %add.ptr94 = getelementptr inbounds i32* %39, i64 %idx.ext84
  %arrayidx97 = getelementptr inbounds i32** %38, i64 %indvars.iv
  store i32* %add.ptr94, i32** %arrayidx97, align 8, !tbaa !0
  %40 = load i32*** %dmx71, align 8, !tbaa !0
  %41 = load i32** %40, align 8, !tbaa !0
  %add.ptr103 = getelementptr inbounds i32* %41, i64 %idx.ext84
  %arrayidx106 = getelementptr inbounds i32** %40, i64 %indvars.iv
  store i32* %add.ptr103, i32** %arrayidx106, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add35
  br i1 %exitcond, label %DONE, label %for.body

DONE:                                             ; preds = %if.end34, %for.body, %land.lhs.true
  %cmp107 = icmp eq i32*** %xmx, null
  br i1 %cmp107, label %if.end111, label %if.then109

if.then109:                                       ; preds = %DONE
  %xmx110 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %42 = load i32*** %xmx110, align 8, !tbaa !0
  store i32** %42, i32*** %xmx, align 8, !tbaa !0
  br label %if.end111

if.end111:                                        ; preds = %DONE, %if.then109
  %cmp112 = icmp eq i32*** %mmx, null
  br i1 %cmp112, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end111
  %mmx115 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %43 = load i32*** %mmx115, align 8, !tbaa !0
  store i32** %43, i32*** %mmx, align 8, !tbaa !0
  br label %if.end116

if.end116:                                        ; preds = %if.end111, %if.then114
  %cmp117 = icmp eq i32*** %imx, null
  br i1 %cmp117, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end116
  %imx120 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %44 = load i32*** %imx120, align 8, !tbaa !0
  store i32** %44, i32*** %imx, align 8, !tbaa !0
  br label %if.end121

if.end121:                                        ; preds = %if.end116, %if.then119
  %cmp122 = icmp eq i32*** %dmx, null
  br i1 %cmp122, label %if.end126, label %if.then124

if.then124:                                       ; preds = %if.end121
  %dmx125 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %45 = load i32*** %dmx125, align 8, !tbaa !0
  store i32** %45, i32*** %dmx, align 8, !tbaa !0
  br label %if.end126

if.end126:                                        ; preds = %if.end121, %if.then124
  ret void
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %rows, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  %sub = add nsw i32 %rows, -1
  %call = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %sub, i32 %M, i32 0, i32 0) #6
  %cmp = icmp eq i32*** %xmx, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 0
  %0 = load i32*** %xmx1, align 8, !tbaa !0
  store i32** %0, i32*** %xmx, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp2 = icmp eq i32*** %mmx, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %mmx4 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 1
  %1 = load i32*** %mmx4, align 8, !tbaa !0
  store i32** %1, i32*** %mmx, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %cmp6 = icmp eq i32*** %imx, null
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %imx8 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 2
  %2 = load i32*** %imx8, align 8, !tbaa !0
  store i32** %2, i32*** %imx, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %cmp10 = icmp eq i32*** %dmx, null
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %dmx12 = getelementptr inbounds %struct.dpmatrix_s* %call, i64 0, i32 3
  %3 = load i32*** %dmx12, align 8, !tbaa !0
  store i32** %3, i32*** %dmx, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then11
  ret %struct.dpmatrix_s* %call
}

; Function Attrs: nounwind optsize uwtable
define void @FreePlan7Matrix(%struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 4
  %0 = load i8** %xmx_mem, align 8, !tbaa !0
  tail call void @free(i8* %0) #5
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 5
  %1 = load i8** %mmx_mem, align 8, !tbaa !0
  tail call void @free(i8* %1) #5
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 6
  %2 = load i8** %imx_mem, align 8, !tbaa !0
  tail call void @free(i8* %2) #5
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 7
  %3 = load i8** %dmx_mem, align 8, !tbaa !0
  tail call void @free(i8* %3) #5
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %4 = load i32*** %xmx, align 8, !tbaa !0
  %5 = bitcast i32** %4 to i8*
  tail call void @free(i8* %5) #5
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %6 = load i32*** %mmx, align 8, !tbaa !0
  %7 = bitcast i32** %6 to i8*
  tail call void @free(i8* %7) #5
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %8 = load i32*** %imx, align 8, !tbaa !0
  %9 = bitcast i32** %8 to i8*
  tail call void @free(i8* %9) #5
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %10 = load i32*** %dmx, align 8, !tbaa !0
  %11 = bitcast i32** %10 to i8*
  tail call void @free(i8* %11) #5
  %12 = bitcast %struct.dpmatrix_s* %mx to i8*
  tail call void @free(i8* %12) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.dpshadow_s* @AllocShadowMatrix(i32 %rows, i32 %M, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 244, i64 40) #5
  %0 = bitcast i8* %call to %struct.dpshadow_s*
  %conv = sext i32 %rows to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 245, i64 %mul) #5
  %1 = bitcast i8* %call1 to i8**
  %xtb2 = bitcast i8* %call to i8***
  store i8** %1, i8*** %xtb2, align 8, !tbaa !0
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 246, i64 %mul) #5
  %2 = bitcast i8* %call5 to i8**
  %mtb6 = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %mtb6 to i8***
  store i8** %2, i8*** %3, align 8, !tbaa !0
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 247, i64 %mul) #5
  %4 = bitcast i8* %call9 to i8**
  %itb10 = getelementptr inbounds i8* %call, i64 16
  %5 = bitcast i8* %itb10 to i8***
  store i8** %4, i8*** %5, align 8, !tbaa !0
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 248, i64 %mul) #5
  %6 = bitcast i8* %call13 to i8**
  %dtb14 = getelementptr inbounds i8* %call, i64 24
  %7 = bitcast i8* %dtb14 to i8***
  store i8** %6, i8*** %7, align 8, !tbaa !0
  %mul16 = shl nsw i64 %conv, 2
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 249, i64 %mul16) #5
  %8 = bitcast i8* %call17 to i32*
  %esrc = getelementptr inbounds i8* %call, i64 32
  %9 = bitcast i8* %esrc to i32**
  store i32* %8, i32** %9, align 8, !tbaa !0
  %mul18 = mul nsw i32 %rows, 5
  %conv19 = sext i32 %mul18 to i64
  %call21 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 250, i64 %conv19) #5
  %10 = load i8*** %xtb2, align 8, !tbaa !0
  store i8* %call21, i8** %10, align 8, !tbaa !0
  %add = add nsw i32 %M, 2
  %mul23 = mul nsw i32 %add, %rows
  %conv24 = sext i32 %mul23 to i64
  %call26 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 251, i64 %conv24) #5
  %11 = load i8*** %3, align 8, !tbaa !0
  store i8* %call26, i8** %11, align 8, !tbaa !0
  %call33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 252, i64 %conv24) #5
  %12 = load i8*** %5, align 8, !tbaa !0
  store i8* %call33, i8** %12, align 8, !tbaa !0
  %call40 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 253, i64 %conv24) #5
  %13 = load i8*** %7, align 8, !tbaa !0
  store i8* %call40, i8** %13, align 8, !tbaa !0
  %cmp142 = icmp sgt i32 %rows, 1
  br i1 %cmp142, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %14 = load i8*** %xtb2, align 8, !tbaa !0
  %15 = load i8** %14, align 8, !tbaa !0
  %16 = trunc i64 %indvars.iv to i32
  %sext = mul i64 %indvars.iv, 21474836480
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8* %15, i64 %idx.ext
  %arrayidx48 = getelementptr inbounds i8** %14, i64 %indvars.iv
  store i8* %add.ptr, i8** %arrayidx48, align 8, !tbaa !0
  %17 = load i8*** %3, align 8, !tbaa !0
  %18 = load i8** %17, align 8, !tbaa !0
  %mul52 = mul nsw i32 %16, %add
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds i8* %18, i64 %idx.ext53
  %arrayidx57 = getelementptr inbounds i8** %17, i64 %indvars.iv
  store i8* %add.ptr54, i8** %arrayidx57, align 8, !tbaa !0
  %19 = load i8*** %5, align 8, !tbaa !0
  %20 = load i8** %19, align 8, !tbaa !0
  %add.ptr63 = getelementptr inbounds i8* %20, i64 %idx.ext53
  %arrayidx66 = getelementptr inbounds i8** %19, i64 %indvars.iv
  store i8* %add.ptr63, i8** %arrayidx66, align 8, !tbaa !0
  %21 = load i8*** %7, align 8, !tbaa !0
  %22 = load i8** %21, align 8, !tbaa !0
  %add.ptr72 = getelementptr inbounds i8* %22, i64 %idx.ext53
  %arrayidx75 = getelementptr inbounds i8** %21, i64 %indvars.iv
  store i8* %add.ptr72, i8** %arrayidx75, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %cmp76 = icmp eq i8*** %xtb, null
  br i1 %cmp76, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %23 = load i8*** %xtb2, align 8, !tbaa !0
  store i8** %23, i8*** %xtb, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %cmp79 = icmp eq i8*** %mtb, null
  br i1 %cmp79, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.end
  %24 = load i8*** %3, align 8, !tbaa !0
  store i8** %24, i8*** %mtb, align 8, !tbaa !0
  br label %if.end83

if.end83:                                         ; preds = %if.end, %if.then81
  %cmp84 = icmp eq i8*** %itb, null
  br i1 %cmp84, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end83
  %25 = load i8*** %5, align 8, !tbaa !0
  store i8** %25, i8*** %itb, align 8, !tbaa !0
  br label %if.end88

if.end88:                                         ; preds = %if.end83, %if.then86
  %cmp89 = icmp eq i8*** %dtb, null
  br i1 %cmp89, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.end88
  %26 = load i8*** %7, align 8, !tbaa !0
  store i8** %26, i8*** %dtb, align 8, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %if.end88, %if.then91
  ret %struct.dpshadow_s* %0
}

; Function Attrs: nounwind optsize uwtable
define void @FreeShadowMatrix(%struct.dpshadow_s* nocapture %tb) #0 {
entry:
  %xtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 0
  %0 = load i8*** %xtb, align 8, !tbaa !0
  %1 = load i8** %0, align 8, !tbaa !0
  tail call void @free(i8* %1) #5
  %mtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 1
  %2 = load i8*** %mtb, align 8, !tbaa !0
  %3 = load i8** %2, align 8, !tbaa !0
  tail call void @free(i8* %3) #5
  %itb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 2
  %4 = load i8*** %itb, align 8, !tbaa !0
  %5 = load i8** %4, align 8, !tbaa !0
  tail call void @free(i8* %5) #5
  %dtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 3
  %6 = load i8*** %dtb, align 8, !tbaa !0
  %7 = load i8** %6, align 8, !tbaa !0
  tail call void @free(i8* %7) #5
  %esrc = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 4
  %8 = load i32** %esrc, align 8, !tbaa !0
  %9 = bitcast i32* %8 to i8*
  tail call void @free(i8* %9) #5
  %10 = load i8*** %xtb, align 8, !tbaa !0
  %11 = bitcast i8** %10 to i8*
  tail call void @free(i8* %11) #5
  %12 = load i8*** %mtb, align 8, !tbaa !0
  %13 = bitcast i8** %12 to i8*
  tail call void @free(i8* %13) #5
  %14 = load i8*** %itb, align 8, !tbaa !0
  %15 = bitcast i8** %14 to i8*
  tail call void @free(i8* %15) #5
  %16 = load i8*** %dtb, align 8, !tbaa !0
  %17 = bitcast i8** %16 to i8*
  tail call void @free(i8* %17) #5
  %18 = bitcast %struct.dpshadow_s* %tb to i8*
  tail call void @free(i8* %18) #5
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7ViterbiSize(i32 %L, i32 %M) #3 {
entry:
  %add = add nsw i32 %L, 1
  %conv = sitofp i32 %add to float
  %conv1 = fpext float %conv to double
  %mul = fmul double %conv1, 3.000000e+00
  %add2 = add nsw i32 %M, 2
  %conv3 = sitofp i32 %add2 to float
  %conv4 = fpext float %conv3 to double
  %mul5 = fmul double %mul, %conv4
  %mul6 = fmul double %mul5, 4.000000e+00
  %add8 = fadd double %mul6, 8.000000e+01
  %conv9 = fptrunc double %add8 to float
  %mul13 = fmul double %conv1, 4.000000e+00
  %mul14 = fmul double %mul13, 8.000000e+00
  %conv15 = fpext float %conv9 to double
  %add16 = fadd double %mul14, %conv15
  %conv17 = fptrunc double %add16 to float
  %mul21 = fmul double %conv1, 5.000000e+00
  %mul22 = fmul double %mul21, 4.000000e+00
  %conv23 = fpext float %conv17 to double
  %add24 = fadd double %mul22, %conv23
  %conv25 = fptrunc double %add24 to float
  %conv27 = fmul float %conv25, 0x3EB0000000000000
  %conv28 = fptosi float %conv27 to i32
  ret i32 %conv28
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7SmallViterbiSize(i32 %L, i32 %M) #3 {
entry:
  %0 = mul i32 %M, 12
  %mul = add i32 %0, 24
  %conv = sext i32 %mul to i64
  %add5 = shl i32 %L, 1
  %mul6 = add i32 %add5, 2
  %conv7 = sext i32 %mul6 to i64
  %tmp = add i64 %conv, %conv7
  %tmp11 = shl nsw i64 %tmp, 2
  %add9 = add i64 %tmp11, 368
  %div = udiv i64 %add9, 1000000
  %conv10 = trunc i64 %div to i32
  ret i32 %conv10
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @P7WeeViterbiSize(i32 %L, i32 %M) #3 {
entry:
  %0 = mul i32 %M, 12
  %mul = add i32 %0, 24
  %conv = sext i32 %mul to i64
  %add5 = add nsw i32 %L, 2
  %mul6 = shl nsw i32 %add5, 1
  %conv7 = sext i32 %mul6 to i64
  %conv11 = sext i32 %add5 to i64
  %tmp = add i64 %conv7, %conv11
  %tmp21 = add i64 %tmp, %conv
  %tmp22 = shl nsw i64 %tmp21, 2
  %add13 = add i64 %conv11, 368
  %add17 = add i64 %add13, %tmp22
  %div = udiv i64 %add17, 1000000
  %conv18 = trunc i64 %div to i32
  ret i32 %conv18
}

; Function Attrs: nounwind optsize uwtable
define float @P7Forward(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !3
  %call.i = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %L, i32 %0, i32 0, i32 0) #5
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0
  %1 = load i32*** %xmx1.i, align 8, !tbaa !0
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1
  %2 = load i32*** %mmx4.i, align 8, !tbaa !0
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2
  %3 = load i32*** %imx8.i, align 8, !tbaa !0
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3
  %4 = load i32*** %dmx12.i, align 8, !tbaa !0
  %5 = load i32** %1, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %5, i64 4
  store i32 0, i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %6 = load i32* %arrayidx3, align 4, !tbaa !3
  store i32 %6, i32* %5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %5, i64 3
  store i32 -987654321, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %5, i64 2
  store i32 -987654321, i32* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %5, i64 1
  store i32 -987654321, i32* %arrayidx11, align 4, !tbaa !3
  %7 = load i32* %M, align 4, !tbaa !3
  %cmp501 = icmp slt i32 %7, 0
  br i1 %cmp501, label %for.cond21.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %8 = load i32** %4, align 8, !tbaa !0
  %9 = load i32** %3, align 8, !tbaa !0
  %10 = load i32** %2, align 8, !tbaa !0
  br label %for.body

for.cond21.preheader:                             ; preds = %for.body, %entry
  %cmp22499 = icmp slt i32 %L, 1
  br i1 %cmp22499, label %for.end332, label %for.body23.lr.ph

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %tsc173 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %bsc199 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %msc229 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %arrayidx244 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx280 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx287 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %arrayidx305 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx317 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx324 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %11 = add i32 %L, 1
  br label %for.body23

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv511
  store i32 -987654321, i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv511
  store i32 -987654321, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv511
  store i32 -987654321, i32* %arrayidx20, align 4, !tbaa !3
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %12 = load i32* %M, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv511 to i32
  %cmp = icmp slt i32 %13, %12
  br i1 %cmp, label %for.body, label %for.cond21.preheader

for.body23:                                       ; preds = %for.end273, %for.body23.lr.ph
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %for.end273 ], [ 1, %for.body23.lr.ph ]
  %arrayidx25 = getelementptr inbounds i32** %4, i64 %indvars.iv507
  %14 = load i32** %arrayidx25, align 8, !tbaa !0
  store i32 -987654321, i32* %14, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32** %3, i64 %indvars.iv507
  %15 = load i32** %arrayidx28, align 8, !tbaa !0
  store i32 -987654321, i32* %15, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32** %2, i64 %indvars.iv507
  %16 = load i32** %arrayidx31, align 8, !tbaa !0
  store i32 -987654321, i32* %16, align 4, !tbaa !3
  %17 = load i32* %M, align 4, !tbaa !3
  %cmp35495 = icmp sgt i32 %17, 1
  %18 = add nsw i64 %indvars.iv507, -1
  %arrayidx40 = getelementptr inbounds i32** %2, i64 %18
  %arrayidx51 = getelementptr inbounds i32** %3, i64 %18
  %arrayidx62 = getelementptr inbounds i32** %1, i64 %18
  %arrayidx71 = getelementptr inbounds i32** %4, i64 %18
  %arrayidx87 = getelementptr inbounds i8* %dsq, i64 %indvars.iv507
  br i1 %cmp35495, label %for.body36, label %for.end162

for.body36:                                       ; preds = %for.body23, %for.body36
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body36 ], [ 1, %for.body23 ]
  %19 = add nsw i64 %indvars.iv, -1
  %20 = load i32** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i32* %20, i64 %19
  %21 = load i32* %arrayidx41, align 4, !tbaa !3
  %22 = load i32*** %tsc173, align 8, !tbaa !0
  %23 = load i32** %22, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %23, i64 %19
  %24 = load i32* %arrayidx45, align 4, !tbaa !3
  %add46 = add nsw i32 %24, %21
  %25 = load i32** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i32* %25, i64 %19
  %26 = load i32* %arrayidx52, align 4, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32** %22, i64 3
  %27 = load i32** %arrayidx56, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %27, i64 %19
  %28 = load i32* %arrayidx57, align 4, !tbaa !3
  %add58 = add nsw i32 %28, %26
  %call59 = tail call i32 @ILogsum(i32 %add46, i32 %add58) #5
  %29 = load i32** %arrayidx62, align 8, !tbaa !0
  %30 = load i32* %29, align 4, !tbaa !3
  %31 = load i32** %bsc199, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i32* %31, i64 %indvars.iv
  %32 = load i32* %arrayidx65, align 4, !tbaa !3
  %add66 = add nsw i32 %32, %30
  %33 = load i32** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i32* %33, i64 %19
  %34 = load i32* %arrayidx72, align 4, !tbaa !3
  %35 = load i32*** %tsc173, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32** %35, i64 5
  %36 = load i32** %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %36, i64 %19
  %37 = load i32* %arrayidx77, align 4, !tbaa !3
  %add78 = add nsw i32 %37, %34
  %call79 = tail call i32 @ILogsum(i32 %add66, i32 %add78) #5
  %call80 = tail call i32 @ILogsum(i32 %call59, i32 %call79) #5
  %38 = load i32** %arrayidx31, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i32* %38, i64 %indvars.iv
  store i32 %call80, i32* %arrayidx84, align 4, !tbaa !3
  %39 = load i8* %arrayidx87, align 1, !tbaa !1
  %idxprom88 = sext i8 %39 to i64
  %40 = load i32*** %msc229, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32** %40, i64 %idxprom88
  %41 = load i32** %arrayidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %41, i64 %indvars.iv
  %42 = load i32* %arrayidx90, align 4, !tbaa !3
  %add95 = add nsw i32 %call80, %42
  store i32 %add95, i32* %arrayidx84, align 4, !tbaa !3
  %arrayidx100 = getelementptr inbounds i32* %38, i64 %19
  %43 = load i32* %arrayidx100, align 4, !tbaa !3
  %44 = load i32*** %tsc173, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32** %44, i64 2
  %45 = load i32** %arrayidx104, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i32* %45, i64 %19
  %46 = load i32* %arrayidx105, align 4, !tbaa !3
  %add106 = add nsw i32 %46, %43
  %47 = load i32** %arrayidx25, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %47, i64 %19
  %48 = load i32* %arrayidx111, align 4, !tbaa !3
  %arrayidx115 = getelementptr inbounds i32** %44, i64 6
  %49 = load i32** %arrayidx115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %49, i64 %19
  %50 = load i32* %arrayidx116, align 4, !tbaa !3
  %add117 = add nsw i32 %50, %48
  %call118 = tail call i32 @ILogsum(i32 %add106, i32 %add117) #5
  %51 = load i32** %arrayidx25, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i32* %51, i64 %indvars.iv
  store i32 %call118, i32* %arrayidx122, align 4, !tbaa !3
  %52 = load i32** %arrayidx40, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %52, i64 %indvars.iv
  %53 = load i32* %arrayidx127, align 4, !tbaa !3
  %54 = load i32*** %tsc173, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32** %54, i64 1
  %55 = load i32** %arrayidx130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i32* %55, i64 %indvars.iv
  %56 = load i32* %arrayidx131, align 4, !tbaa !3
  %add132 = add nsw i32 %56, %53
  %57 = load i32** %arrayidx51, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv
  %58 = load i32* %arrayidx137, align 4, !tbaa !3
  %arrayidx140 = getelementptr inbounds i32** %54, i64 4
  %59 = load i32** %arrayidx140, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %59, i64 %indvars.iv
  %60 = load i32* %arrayidx141, align 4, !tbaa !3
  %add142 = add nsw i32 %60, %58
  %call143 = tail call i32 @ILogsum(i32 %add132, i32 %add142) #5
  %61 = load i32** %arrayidx28, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32* %61, i64 %indvars.iv
  store i32 %call143, i32* %arrayidx147, align 4, !tbaa !3
  %62 = load i8* %arrayidx87, align 1, !tbaa !1
  %idxprom152 = sext i8 %62 to i64
  %63 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds i32** %63, i64 %idxprom152
  %64 = load i32** %arrayidx153, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32* %64, i64 %indvars.iv
  %65 = load i32* %arrayidx154, align 4, !tbaa !3
  %add159 = add nsw i32 %call143, %65
  store i32 %add159, i32* %arrayidx147, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %66 = load i32* %M, align 4, !tbaa !3
  %67 = trunc i64 %indvars.iv.next to i32
  %cmp35 = icmp slt i32 %67, %66
  br i1 %cmp35, label %for.body36, label %for.end162

for.end162:                                       ; preds = %for.body23, %for.body36
  %.lcssa = phi i32 [ %66, %for.body36 ], [ %17, %for.body23 ]
  %sub164 = add nsw i32 %.lcssa, -1
  %idxprom165 = sext i32 %sub164 to i64
  %68 = load i32** %arrayidx40, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32* %68, i64 %idxprom165
  %69 = load i32* %arrayidx169, align 4, !tbaa !3
  %70 = load i32*** %tsc173, align 8, !tbaa !0
  %71 = load i32** %70, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %71, i64 %idxprom165
  %72 = load i32* %arrayidx175, align 4, !tbaa !3
  %add176 = add nsw i32 %72, %69
  %73 = load i32** %arrayidx51, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i32* %73, i64 %idxprom165
  %74 = load i32* %arrayidx183, align 4, !tbaa !3
  %arrayidx188 = getelementptr inbounds i32** %70, i64 3
  %75 = load i32** %arrayidx188, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i32* %75, i64 %idxprom165
  %76 = load i32* %arrayidx189, align 4, !tbaa !3
  %add190 = add nsw i32 %76, %74
  %call191 = tail call i32 @ILogsum(i32 %add176, i32 %add190) #5
  %77 = load i32** %arrayidx62, align 8, !tbaa !0
  %78 = load i32* %77, align 4, !tbaa !3
  %79 = load i32* %M, align 4, !tbaa !3
  %sub197 = add nsw i32 %79, -1
  %idxprom198 = sext i32 %sub197 to i64
  %80 = load i32** %bsc199, align 8, !tbaa !0
  %arrayidx200 = getelementptr inbounds i32* %80, i64 %idxprom198
  %81 = load i32* %arrayidx200, align 4, !tbaa !3
  %add201 = add nsw i32 %81, %78
  %82 = load i32** %arrayidx71, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32* %82, i64 %idxprom198
  %83 = load i32* %arrayidx208, align 4, !tbaa !3
  %84 = load i32*** %tsc173, align 8, !tbaa !0
  %arrayidx213 = getelementptr inbounds i32** %84, i64 5
  %85 = load i32** %arrayidx213, align 8, !tbaa !0
  %arrayidx214 = getelementptr inbounds i32* %85, i64 %idxprom198
  %86 = load i32* %arrayidx214, align 4, !tbaa !3
  %add215 = add nsw i32 %86, %83
  %call216 = tail call i32 @ILogsum(i32 %add201, i32 %add215) #5
  %call217 = tail call i32 @ILogsum(i32 %call191, i32 %call216) #5
  %87 = load i32* %M, align 4, !tbaa !3
  %idxprom219 = sext i32 %87 to i64
  %88 = load i32** %arrayidx31, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i32* %88, i64 %idxprom219
  store i32 %call217, i32* %arrayidx222, align 4, !tbaa !3
  %89 = load i32* %M, align 4, !tbaa !3
  %idxprom224 = sext i32 %89 to i64
  %90 = load i8* %arrayidx87, align 1, !tbaa !1
  %idxprom228 = sext i8 %90 to i64
  %91 = load i32*** %msc229, align 8, !tbaa !0
  %arrayidx230 = getelementptr inbounds i32** %91, i64 %idxprom228
  %92 = load i32** %arrayidx230, align 8, !tbaa !0
  %arrayidx231 = getelementptr inbounds i32* %92, i64 %idxprom224
  %93 = load i32* %arrayidx231, align 4, !tbaa !3
  %arrayidx236 = getelementptr inbounds i32* %88, i64 %idxprom224
  %94 = load i32* %arrayidx236, align 4, !tbaa !3
  %add237 = add nsw i32 %94, %93
  store i32 %add237, i32* %arrayidx236, align 4, !tbaa !3
  %95 = load i32** %arrayidx62, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i32* %95, i64 4
  %96 = load i32* %arrayidx241, align 4, !tbaa !3
  %97 = load i32* %arrayidx244, align 4, !tbaa !3
  %add245 = add nsw i32 %97, %96
  %arrayidx247 = getelementptr inbounds i32** %1, i64 %indvars.iv507
  %98 = load i32** %arrayidx247, align 8, !tbaa !0
  %arrayidx248 = getelementptr inbounds i32* %98, i64 4
  store i32 %add245, i32* %arrayidx248, align 4, !tbaa !3
  %arrayidx251 = getelementptr inbounds i32* %98, i64 1
  store i32 -987654321, i32* %arrayidx251, align 4, !tbaa !3
  %99 = load i32* %M, align 4, !tbaa !3
  %cmp254497 = icmp slt i32 %99, 1
  br i1 %cmp254497, label %for.end273, label %for.body256

for.body256:                                      ; preds = %for.end162, %for.body256.for.body256_crit_edge
  %100 = phi i32* [ %.pre513, %for.body256.for.body256_crit_edge ], [ %88, %for.end162 ]
  %101 = phi i32 [ %call267, %for.body256.for.body256_crit_edge ], [ -987654321, %for.end162 ]
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %for.body256.for.body256_crit_edge ], [ 1, %for.end162 ]
  %arrayidx263 = getelementptr inbounds i32* %100, i64 %indvars.iv505
  %102 = load i32* %arrayidx263, align 4, !tbaa !3
  %103 = load i32** %esc, align 8, !tbaa !0
  %arrayidx265 = getelementptr inbounds i32* %103, i64 %indvars.iv505
  %104 = load i32* %arrayidx265, align 4, !tbaa !3
  %add266 = add nsw i32 %104, %102
  %call267 = tail call i32 @ILogsum(i32 %101, i32 %add266) #5
  %105 = load i32** %arrayidx247, align 8, !tbaa !0
  %arrayidx270 = getelementptr inbounds i32* %105, i64 1
  store i32 %call267, i32* %arrayidx270, align 4, !tbaa !3
  %106 = load i32* %M, align 4, !tbaa !3
  %107 = trunc i64 %indvars.iv505 to i32
  %cmp254 = icmp slt i32 %107, %106
  br i1 %cmp254, label %for.body256.for.body256_crit_edge, label %for.cond252.for.end273_crit_edge

for.body256.for.body256_crit_edge:                ; preds = %for.body256
  %indvars.iv.next506 = add i64 %indvars.iv505, 1
  %.pre513 = load i32** %arrayidx31, align 8, !tbaa !0
  br label %for.body256

for.cond252.for.end273_crit_edge:                 ; preds = %for.body256
  %.pre = load i32** %arrayidx62, align 8, !tbaa !0
  br label %for.end273

for.end273:                                       ; preds = %for.cond252.for.end273_crit_edge, %for.end162
  %108 = phi i32 [ %call267, %for.cond252.for.end273_crit_edge ], [ -987654321, %for.end162 ]
  %109 = phi i32* [ %.pre, %for.cond252.for.end273_crit_edge ], [ %95, %for.end162 ]
  %arrayidx277 = getelementptr inbounds i32* %109, i64 3
  %110 = load i32* %arrayidx277, align 4, !tbaa !3
  %111 = load i32* %arrayidx280, align 4, !tbaa !3
  %add281 = add nsw i32 %111, %110
  %112 = load i32* %arrayidx287, align 4, !tbaa !3
  %add288 = add nsw i32 %112, %108
  %call289 = tail call i32 @ILogsum(i32 %add281, i32 %add288) #5
  %113 = load i32** %arrayidx247, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds i32* %113, i64 3
  store i32 %call289, i32* %arrayidx292, align 4, !tbaa !3
  %arrayidx295 = getelementptr inbounds i32* %113, i64 4
  %114 = load i32* %arrayidx295, align 4, !tbaa !3
  %115 = load i32* %arrayidx3, align 4, !tbaa !3
  %add299 = add nsw i32 %115, %114
  %116 = load i32* %arrayidx305, align 4, !tbaa !3
  %add306 = add nsw i32 %116, %call289
  %call307 = tail call i32 @ILogsum(i32 %add299, i32 %add306) #5
  %117 = load i32** %arrayidx247, align 8, !tbaa !0
  store i32 %call307, i32* %117, align 4, !tbaa !3
  %118 = load i32** %arrayidx62, align 8, !tbaa !0
  %arrayidx314 = getelementptr inbounds i32* %118, i64 2
  %119 = load i32* %arrayidx314, align 4, !tbaa !3
  %120 = load i32* %arrayidx317, align 4, !tbaa !3
  %add318 = add nsw i32 %120, %119
  %arrayidx321 = getelementptr inbounds i32* %117, i64 1
  %121 = load i32* %arrayidx321, align 4, !tbaa !3
  %122 = load i32* %arrayidx324, align 4, !tbaa !3
  %add325 = add nsw i32 %122, %121
  %call326 = tail call i32 @ILogsum(i32 %add318, i32 %add325) #5
  %123 = load i32** %arrayidx247, align 8, !tbaa !0
  %arrayidx329 = getelementptr inbounds i32* %123, i64 2
  store i32 %call326, i32* %arrayidx329, align 4, !tbaa !3
  %indvars.iv.next508 = add i64 %indvars.iv507, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next508 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %11
  br i1 %exitcond, label %for.end332, label %for.body23

for.end332:                                       ; preds = %for.end273, %for.cond21.preheader
  %idxprom333 = sext i32 %L to i64
  %arrayidx334 = getelementptr inbounds i32** %1, i64 %idxprom333
  %124 = load i32** %arrayidx334, align 8, !tbaa !0
  %arrayidx335 = getelementptr inbounds i32* %124, i64 2
  %125 = load i32* %arrayidx335, align 4, !tbaa !3
  %arrayidx338 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %126 = load i32* %arrayidx338, align 4, !tbaa !3
  %add339 = add nsw i32 %126, %125
  %cmp340 = icmp eq %struct.dpmatrix_s** %ret_mx, null
  br i1 %cmp340, label %if.else, label %if.then

if.then:                                          ; preds = %for.end332
  store %struct.dpmatrix_s* %call.i, %struct.dpmatrix_s** %ret_mx, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.end332
  tail call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call342 = tail call float @Scorify(i32 %add339) #5
  ret float %call342
}

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #1

; Function Attrs: optsize
declare float @Scorify(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7ViterbiTrace(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, i32 %N, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %mul = shl nsw i32 %N, 1
  %add = add nsw i32 %mul, 6
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #5
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %0 = load i32*** %xmx1, align 8, !tbaa !0
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %1 = load i32*** %mmx2, align 8, !tbaa !0
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %2 = load i32*** %imx3, align 8, !tbaa !0
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %3 = load i32*** %dmx4, align 8, !tbaa !0
  %4 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 1
  %5 = load i8** %statetype, align 8, !tbaa !0
  store i8 9, i8* %5, align 1, !tbaa !1
  %6 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2
  %7 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %7, align 4, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 3
  %8 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %8, align 4, !tbaa !3
  %statetype7 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1
  %9 = load i8** %statetype7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %9, i64 1
  store i8 8, i8* %arrayidx8, align 1, !tbaa !1
  %10 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2
  %11 = load i32** %nodeidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %11, i64 1
  store i32 0, i32* %arrayidx10, align 4, !tbaa !3
  %pos11 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3
  %12 = load i32** %pos11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %12, i64 1
  store i32 0, i32* %arrayidx12, align 4, !tbaa !3
  %statetype13887 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 1
  %13 = load i8** %statetype13887, align 8, !tbaa !0
  %arrayidx14888 = getelementptr inbounds i8* %13, i64 1
  %14 = load i8* %arrayidx14888, align 1, !tbaa !1
  %cmp889 = icmp eq i8 %14, 4
  br i1 %cmp889, label %while.end620, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %arrayidx333 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx371 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %arrayidx394 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %arrayidx505 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx533 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %arrayidx568 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx596 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %15 = phi i8 [ %14, %while.body.lr.ph ], [ %186, %while.cond.backedge ]
  %16 = phi i8* [ %13, %while.body.lr.ph ], [ %185, %while.cond.backedge ]
  %17 = phi %struct.p7trace_s* [ %10, %while.body.lr.ph ], [ %184, %while.cond.backedge ]
  %idxprom896 = phi i64 [ 1, %while.body.lr.ph ], [ %idxprom, %while.cond.backedge ]
  %curralloc.0894 = phi i32 [ %add, %while.body.lr.ph ], [ %curralloc.0.be, %while.cond.backedge ]
  %tpos.0892 = phi i32 [ 2, %while.body.lr.ph ], [ %inc614, %while.cond.backedge ]
  %i.0891 = phi i32 [ %N, %while.body.lr.ph ], [ %i.2, %while.cond.backedge ]
  %k.0890 = phi i32 [ undef, %while.body.lr.ph ], [ %k.5, %while.cond.backedge ]
  %conv = sext i8 %15 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb164
    i32 3, label %sw.bb234
    i32 5, label %sw.bb303
    i32 6, label %sw.bb355
    i32 7, label %sw.bb412
    i32 8, label %sw.bb488
    i32 10, label %sw.bb551
  ]

sw.bb:                                            ; preds = %while.body
  %add21 = add nsw i32 %k.0890, 1
  %idxprom22 = sext i32 %add21 to i64
  %add23 = add nsw i32 %i.0891, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32** %1, i64 %idxprom24
  %18 = load i32** %arrayidx25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32* %18, i64 %idxprom22
  %19 = load i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds i8* %dsq, i64 %idxprom24
  %20 = load i8* %arrayidx31, align 1, !tbaa !1
  %idxprom33 = sext i8 %20 to i64
  %21 = load i32*** %msc, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32** %21, i64 %idxprom33
  %22 = load i32** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32* %22, i64 %idxprom22
  %23 = load i32* %arrayidx35, align 4, !tbaa !3
  %sub36 = sub nsw i32 %19, %23
  %cmp37 = icmp slt i32 %sub36, -987654320
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %sw.bb
  %idxprom39 = sext i32 %i.0891 to i64
  %arrayidx40 = getelementptr inbounds i32** %0, i64 %idxprom39
  %24 = load i32** %arrayidx40, align 8, !tbaa !0
  %25 = load i32* %24, align 4, !tbaa !3
  %26 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i32* %26, i64 %idxprom22
  %27 = load i32* %arrayidx44, align 4, !tbaa !3
  %add45 = add nsw i32 %27, %25
  %cmp46 = icmp eq i32 %sub36, %add45
  br i1 %cmp46, label %if.then48, label %if.else89

if.then48:                                        ; preds = %if.else
  %28 = load float** %begin, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds float* %28, i64 %idxprom22
  %29 = load float* %arrayidx51, align 4, !tbaa !4
  %30 = load float* %p1, align 4, !tbaa !4
  %call = call i32 @Prob2Score(float %29, float %30) #5
  %conv52 = sitofp i32 %call to double
  %add53 = fadd double %conv52, 1.000000e+03
  %31 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %31, i64 %idxprom22
  %32 = load i32* %arrayidx57, align 4, !tbaa !3
  %conv58 = sitofp i32 %32 to double
  %cmp59 = fcmp ugt double %add53, %conv58
  br i1 %cmp59, label %if.end79, label %while.cond62.outer

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
  %cmp63 = icmp sgt i32 %k.1, 0
  br i1 %cmp63, label %while.body65, label %if.end79

while.body65:                                     ; preds = %while.cond62
  %34 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype67 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 1
  %35 = load i8** %statetype67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i8* %35, i64 %indvars.iv906
  store i8 2, i8* %arrayidx68, align 1, !tbaa !1
  %dec = add nsw i32 %k.1, -1
  %36 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx70 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 2
  %37 = load i32** %nodeidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32* %37, i64 %indvars.iv906
  store i32 %k.1, i32* %arrayidx71, align 4, !tbaa !3
  %pos73 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 3
  %38 = load i32** %pos73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i32* %38, i64 %indvars.iv906
  store i32 0, i32* %arrayidx74, align 4, !tbaa !3
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %inc = add nsw i32 %tpos.1, 1
  %39 = trunc i64 %indvars.iv.next907 to i32
  %cmp75 = icmp eq i32 %39, %curralloc.1.ph
  br i1 %cmp75, label %if.then77, label %while.cond62

if.then77:                                        ; preds = %while.body65
  %add78 = add nsw i32 %curralloc.1.ph, %N
  call void @P7ReallocTrace(%struct.p7trace_s* %36, i32 %add78) #5
  br label %while.cond62.outer

if.end79:                                         ; preds = %while.cond62, %if.then48
  %k.2 = phi i32 [ %k.0890, %if.then48 ], [ %k.1, %while.cond62 ]
  %tpos.2 = phi i32 [ %tpos.0892, %if.then48 ], [ %tpos.1, %while.cond62 ]
  %curralloc.2 = phi i32 [ %curralloc.0894, %if.then48 ], [ %curralloc.1.ph, %while.cond62 ]
  %idxprom80 = sext i32 %tpos.2 to i64
  %40 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype81 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 1
  %41 = load i8** %statetype81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i8* %41, i64 %idxprom80
  store i8 6, i8* %arrayidx82, align 1, !tbaa !1
  %42 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx84 = getelementptr inbounds %struct.p7trace_s* %42, i64 0, i32 2
  %43 = load i32** %nodeidx84, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %43, i64 %idxprom80
  store i32 0, i32* %arrayidx85, align 4, !tbaa !3
  %pos87 = getelementptr inbounds %struct.p7trace_s* %42, i64 0, i32 3
  %44 = load i32** %pos87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32* %44, i64 %idxprom80
  store i32 0, i32* %arrayidx88, align 4, !tbaa !3
  br label %sw.epilog

if.else89:                                        ; preds = %if.else
  %idxprom90 = sext i32 %k.0890 to i64
  %arrayidx92 = getelementptr inbounds i32** %1, i64 %idxprom39
  %45 = load i32** %arrayidx92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %45, i64 %idxprom90
  %46 = load i32* %arrayidx93, align 4, !tbaa !3
  %47 = load i32*** %tsc, align 8, !tbaa !0
  %48 = load i32** %47, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32* %48, i64 %idxprom90
  %49 = load i32* %arrayidx96, align 4, !tbaa !3
  %add97 = add nsw i32 %49, %46
  %cmp98 = icmp eq i32 %sub36, %add97
  br i1 %cmp98, label %if.then100, label %if.else112

if.then100:                                       ; preds = %if.else89
  %idxprom101 = sext i32 %tpos.0892 to i64
  %arrayidx103 = getelementptr inbounds i8* %16, i64 %idxprom101
  store i8 1, i8* %arrayidx103, align 1, !tbaa !1
  %dec104 = add nsw i32 %k.0890, -1
  %50 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx106 = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 2
  %51 = load i32** %nodeidx106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i32* %51, i64 %idxprom101
  store i32 %k.0890, i32* %arrayidx107, align 4, !tbaa !3
  %dec108 = add nsw i32 %i.0891, -1
  %pos110 = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 3
  %52 = load i32** %pos110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %52, i64 %idxprom101
  store i32 %i.0891, i32* %arrayidx111, align 4, !tbaa !3
  br label %sw.epilog

if.else112:                                       ; preds = %if.else89
  %arrayidx115 = getelementptr inbounds i32** %2, i64 %idxprom39
  %53 = load i32** %arrayidx115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %53, i64 %idxprom90
  %54 = load i32* %arrayidx116, align 4, !tbaa !3
  %arrayidx119 = getelementptr inbounds i32** %47, i64 3
  %55 = load i32** %arrayidx119, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %55, i64 %idxprom90
  %56 = load i32* %arrayidx120, align 4, !tbaa !3
  %add121 = add nsw i32 %56, %54
  %cmp122 = icmp eq i32 %sub36, %add121
  br i1 %cmp122, label %if.then124, label %if.else135

if.then124:                                       ; preds = %if.else112
  %idxprom125 = sext i32 %tpos.0892 to i64
  %arrayidx127 = getelementptr inbounds i8* %16, i64 %idxprom125
  store i8 3, i8* %arrayidx127, align 1, !tbaa !1
  %57 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx129 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 2
  %58 = load i32** %nodeidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32* %58, i64 %idxprom125
  store i32 %k.0890, i32* %arrayidx130, align 4, !tbaa !3
  %dec131 = add nsw i32 %i.0891, -1
  %pos133 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 3
  %59 = load i32** %pos133, align 8, !tbaa !0
  %arrayidx134 = getelementptr inbounds i32* %59, i64 %idxprom125
  store i32 %i.0891, i32* %arrayidx134, align 4, !tbaa !3
  br label %sw.epilog

if.else135:                                       ; preds = %if.else112
  %arrayidx138 = getelementptr inbounds i32** %3, i64 %idxprom39
  %60 = load i32** %arrayidx138, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i32* %60, i64 %idxprom90
  %61 = load i32* %arrayidx139, align 4, !tbaa !3
  %arrayidx142 = getelementptr inbounds i32** %47, i64 5
  %62 = load i32** %arrayidx142, align 8, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %62, i64 %idxprom90
  %63 = load i32* %arrayidx143, align 4, !tbaa !3
  %add144 = add nsw i32 %63, %61
  %cmp145 = icmp eq i32 %sub36, %add144
  br i1 %cmp145, label %if.then147, label %if.else158

if.then147:                                       ; preds = %if.else135
  %idxprom148 = sext i32 %tpos.0892 to i64
  %arrayidx150 = getelementptr inbounds i8* %16, i64 %idxprom148
  store i8 2, i8* %arrayidx150, align 1, !tbaa !1
  %dec151 = add nsw i32 %k.0890, -1
  %64 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx153 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 2
  %65 = load i32** %nodeidx153, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32* %65, i64 %idxprom148
  store i32 %k.0890, i32* %arrayidx154, align 4, !tbaa !3
  %pos156 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 3
  %66 = load i32** %pos156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i32* %66, i64 %idxprom148
  store i32 0, i32* %arrayidx157, align 4, !tbaa !3
  br label %sw.epilog

if.else158:                                       ; preds = %if.else135
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb164:                                         ; preds = %while.body
  %add165 = add nsw i32 %k.0890, 1
  %idxprom166 = sext i32 %add165 to i64
  %idxprom167 = sext i32 %i.0891 to i64
  %arrayidx168 = getelementptr inbounds i32** %3, i64 %idxprom167
  %67 = load i32** %arrayidx168, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32* %67, i64 %idxprom166
  %68 = load i32* %arrayidx169, align 4, !tbaa !3
  %cmp170 = icmp slt i32 %68, -987654320
  br i1 %cmp170, label %if.then172, label %if.else173

if.then172:                                       ; preds = %sw.bb164
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else173:                                       ; preds = %sw.bb164
  %idxprom179 = sext i32 %k.0890 to i64
  %arrayidx181 = getelementptr inbounds i32** %1, i64 %idxprom167
  %69 = load i32** %arrayidx181, align 8, !tbaa !0
  %arrayidx182 = getelementptr inbounds i32* %69, i64 %idxprom179
  %70 = load i32* %arrayidx182, align 4, !tbaa !3
  %71 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds i32** %71, i64 2
  %72 = load i32** %arrayidx185, align 8, !tbaa !0
  %arrayidx186 = getelementptr inbounds i32* %72, i64 %idxprom179
  %73 = load i32* %arrayidx186, align 4, !tbaa !3
  %add187 = add nsw i32 %73, %70
  %cmp188 = icmp eq i32 %68, %add187
  br i1 %cmp188, label %if.then190, label %if.else202

if.then190:                                       ; preds = %if.else173
  %idxprom191 = sext i32 %tpos.0892 to i64
  %arrayidx193 = getelementptr inbounds i8* %16, i64 %idxprom191
  store i8 1, i8* %arrayidx193, align 1, !tbaa !1
  %dec194 = add nsw i32 %k.0890, -1
  %74 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx196 = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 2
  %75 = load i32** %nodeidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i32* %75, i64 %idxprom191
  store i32 %k.0890, i32* %arrayidx197, align 4, !tbaa !3
  %dec198 = add nsw i32 %i.0891, -1
  %pos200 = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 3
  %76 = load i32** %pos200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %76, i64 %idxprom191
  store i32 %i.0891, i32* %arrayidx201, align 4, !tbaa !3
  br label %sw.epilog

if.else202:                                       ; preds = %if.else173
  %arrayidx211 = getelementptr inbounds i32* %67, i64 %idxprom179
  %77 = load i32* %arrayidx211, align 4, !tbaa !3
  %arrayidx214 = getelementptr inbounds i32** %71, i64 6
  %78 = load i32** %arrayidx214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i32* %78, i64 %idxprom179
  %79 = load i32* %arrayidx215, align 4, !tbaa !3
  %add216 = add nsw i32 %79, %77
  %cmp217 = icmp eq i32 %68, %add216
  br i1 %cmp217, label %if.then219, label %if.else230

if.then219:                                       ; preds = %if.else202
  %idxprom220 = sext i32 %tpos.0892 to i64
  %arrayidx222 = getelementptr inbounds i8* %16, i64 %idxprom220
  store i8 2, i8* %arrayidx222, align 1, !tbaa !1
  %dec223 = add nsw i32 %k.0890, -1
  %80 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx225 = getelementptr inbounds %struct.p7trace_s* %80, i64 0, i32 2
  %81 = load i32** %nodeidx225, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i32* %81, i64 %idxprom220
  store i32 %k.0890, i32* %arrayidx226, align 4, !tbaa !3
  %pos228 = getelementptr inbounds %struct.p7trace_s* %80, i64 0, i32 3
  %82 = load i32** %pos228, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds i32* %82, i64 %idxprom220
  store i32 0, i32* %arrayidx229, align 4, !tbaa !3
  br label %sw.epilog

if.else230:                                       ; preds = %if.else202
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb234:                                         ; preds = %while.body
  %idxprom235 = sext i32 %k.0890 to i64
  %add236 = add nsw i32 %i.0891, 1
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds i32** %2, i64 %idxprom237
  %83 = load i32** %arrayidx238, align 8, !tbaa !0
  %arrayidx239 = getelementptr inbounds i32* %83, i64 %idxprom235
  %84 = load i32* %arrayidx239, align 4, !tbaa !3
  %arrayidx243 = getelementptr inbounds i8* %dsq, i64 %idxprom237
  %85 = load i8* %arrayidx243, align 1, !tbaa !1
  %idxprom245 = sext i8 %85 to i64
  %86 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds i32** %86, i64 %idxprom245
  %87 = load i32** %arrayidx246, align 8, !tbaa !0
  %arrayidx247 = getelementptr inbounds i32* %87, i64 %idxprom235
  %88 = load i32* %arrayidx247, align 4, !tbaa !3
  %sub248 = sub nsw i32 %84, %88
  %cmp249 = icmp slt i32 %sub248, -987654320
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %sw.bb234
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else252:                                       ; preds = %sw.bb234
  %idxprom254 = sext i32 %i.0891 to i64
  %arrayidx255 = getelementptr inbounds i32** %1, i64 %idxprom254
  %89 = load i32** %arrayidx255, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i32* %89, i64 %idxprom235
  %90 = load i32* %arrayidx256, align 4, !tbaa !3
  %91 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i32** %91, i64 1
  %92 = load i32** %arrayidx259, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds i32* %92, i64 %idxprom235
  %93 = load i32* %arrayidx260, align 4, !tbaa !3
  %add261 = add nsw i32 %93, %90
  %cmp262 = icmp eq i32 %sub248, %add261
  br i1 %cmp262, label %if.then264, label %if.else276

if.then264:                                       ; preds = %if.else252
  %idxprom265 = sext i32 %tpos.0892 to i64
  %arrayidx267 = getelementptr inbounds i8* %16, i64 %idxprom265
  store i8 1, i8* %arrayidx267, align 1, !tbaa !1
  %dec268 = add nsw i32 %k.0890, -1
  %94 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx270 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 2
  %95 = load i32** %nodeidx270, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i32* %95, i64 %idxprom265
  store i32 %k.0890, i32* %arrayidx271, align 4, !tbaa !3
  %dec272 = add nsw i32 %i.0891, -1
  %pos274 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 3
  %96 = load i32** %pos274, align 8, !tbaa !0
  %arrayidx275 = getelementptr inbounds i32* %96, i64 %idxprom265
  store i32 %i.0891, i32* %arrayidx275, align 4, !tbaa !3
  br label %sw.epilog

if.else276:                                       ; preds = %if.else252
  %arrayidx279 = getelementptr inbounds i32** %2, i64 %idxprom254
  %97 = load i32** %arrayidx279, align 8, !tbaa !0
  %arrayidx280 = getelementptr inbounds i32* %97, i64 %idxprom235
  %98 = load i32* %arrayidx280, align 4, !tbaa !3
  %arrayidx283 = getelementptr inbounds i32** %91, i64 4
  %99 = load i32** %arrayidx283, align 8, !tbaa !0
  %arrayidx284 = getelementptr inbounds i32* %99, i64 %idxprom235
  %100 = load i32* %arrayidx284, align 4, !tbaa !3
  %add285 = add nsw i32 %100, %98
  %cmp286 = icmp eq i32 %sub248, %add285
  br i1 %cmp286, label %if.then288, label %if.else299

if.then288:                                       ; preds = %if.else276
  %idxprom289 = sext i32 %tpos.0892 to i64
  %arrayidx291 = getelementptr inbounds i8* %16, i64 %idxprom289
  store i8 3, i8* %arrayidx291, align 1, !tbaa !1
  %101 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx293 = getelementptr inbounds %struct.p7trace_s* %101, i64 0, i32 2
  %102 = load i32** %nodeidx293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i32* %102, i64 %idxprom289
  store i32 %k.0890, i32* %arrayidx294, align 4, !tbaa !3
  %dec295 = add nsw i32 %i.0891, -1
  %pos297 = getelementptr inbounds %struct.p7trace_s* %101, i64 0, i32 3
  %103 = load i32** %pos297, align 8, !tbaa !0
  %arrayidx298 = getelementptr inbounds i32* %103, i64 %idxprom289
  store i32 %i.0891, i32* %arrayidx298, align 4, !tbaa !3
  br label %sw.epilog

if.else299:                                       ; preds = %if.else276
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb303:                                         ; preds = %while.body
  %cmp304 = icmp eq i32 %i.0891, 0
  br i1 %cmp304, label %land.lhs.true, label %if.else321

land.lhs.true:                                    ; preds = %sw.bb303
  %104 = load i32** %0, align 8, !tbaa !0
  %arrayidx308 = getelementptr inbounds i32* %104, i64 4
  %105 = load i32* %arrayidx308, align 4, !tbaa !3
  %cmp309 = icmp eq i32 %105, 0
  br i1 %cmp309, label %if.then311, label %if.else352

if.then311:                                       ; preds = %land.lhs.true
  %idxprom312 = sext i32 %tpos.0892 to i64
  %arrayidx314 = getelementptr inbounds i8* %16, i64 %idxprom312
  store i8 4, i8* %arrayidx314, align 1, !tbaa !1
  %106 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx316 = getelementptr inbounds %struct.p7trace_s* %106, i64 0, i32 2
  %107 = load i32** %nodeidx316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i32* %107, i64 %idxprom312
  store i32 0, i32* %arrayidx317, align 4, !tbaa !3
  %pos319 = getelementptr inbounds %struct.p7trace_s* %106, i64 0, i32 3
  %108 = load i32** %pos319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %108, i64 %idxprom312
  store i32 0, i32* %arrayidx320, align 4, !tbaa !3
  br label %sw.epilog

if.else321:                                       ; preds = %sw.bb303
  %cmp322 = icmp sgt i32 %i.0891, 0
  br i1 %cmp322, label %land.lhs.true324, label %if.else352

land.lhs.true324:                                 ; preds = %if.else321
  %add325 = add nsw i32 %i.0891, 1
  %idxprom326 = sext i32 %add325 to i64
  %arrayidx327 = getelementptr inbounds i32** %0, i64 %idxprom326
  %109 = load i32** %arrayidx327, align 8, !tbaa !0
  %arrayidx328 = getelementptr inbounds i32* %109, i64 4
  %110 = load i32* %arrayidx328, align 4, !tbaa !3
  %idxprom329 = sext i32 %i.0891 to i64
  %arrayidx330 = getelementptr inbounds i32** %0, i64 %idxprom329
  %111 = load i32** %arrayidx330, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds i32* %111, i64 4
  %112 = load i32* %arrayidx331, align 4, !tbaa !3
  %113 = load i32* %arrayidx333, align 4, !tbaa !3
  %add334 = add nsw i32 %113, %112
  %cmp335 = icmp eq i32 %110, %add334
  br i1 %cmp335, label %if.then337, label %if.else352

if.then337:                                       ; preds = %land.lhs.true324
  %idxprom338 = sext i32 %tpos.0892 to i64
  %arrayidx340 = getelementptr inbounds i8* %16, i64 %idxprom338
  store i8 5, i8* %arrayidx340, align 1, !tbaa !1
  %114 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx342 = getelementptr inbounds %struct.p7trace_s* %114, i64 0, i32 2
  %115 = load i32** %nodeidx342, align 8, !tbaa !0
  %arrayidx343 = getelementptr inbounds i32* %115, i64 %idxprom338
  store i32 0, i32* %arrayidx343, align 4, !tbaa !3
  %pos345 = getelementptr inbounds %struct.p7trace_s* %114, i64 0, i32 3
  %116 = load i32** %pos345, align 8, !tbaa !0
  %arrayidx346 = getelementptr inbounds i32* %116, i64 %idxprom338
  store i32 0, i32* %arrayidx346, align 4, !tbaa !3
  %dec347 = add nsw i32 %i.0891, -1
  %arrayidx351 = getelementptr inbounds i32* %116, i64 %idxprom896
  store i32 %i.0891, i32* %arrayidx351, align 4, !tbaa !3
  br label %sw.epilog

if.else352:                                       ; preds = %land.lhs.true, %land.lhs.true324, %if.else321
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb355:                                         ; preds = %while.body
  %idxprom356 = sext i32 %i.0891 to i64
  %arrayidx357 = getelementptr inbounds i32** %0, i64 %idxprom356
  %117 = load i32** %arrayidx357, align 8, !tbaa !0
  %118 = load i32* %117, align 4, !tbaa !3
  %cmp359 = icmp slt i32 %118, -987654320
  br i1 %cmp359, label %if.then361, label %if.else362

if.then361:                                       ; preds = %sw.bb355
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else362:                                       ; preds = %sw.bb355
  %arrayidx368 = getelementptr inbounds i32* %117, i64 4
  %119 = load i32* %arrayidx368, align 4, !tbaa !3
  %120 = load i32* %arrayidx371, align 4, !tbaa !3
  %add372 = add nsw i32 %120, %119
  %cmp373 = icmp eq i32 %118, %add372
  br i1 %cmp373, label %if.then375, label %if.else385

if.then375:                                       ; preds = %if.else362
  %idxprom376 = sext i32 %tpos.0892 to i64
  %arrayidx378 = getelementptr inbounds i8* %16, i64 %idxprom376
  store i8 5, i8* %arrayidx378, align 1, !tbaa !1
  %121 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx380 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 2
  %122 = load i32** %nodeidx380, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i32* %122, i64 %idxprom376
  store i32 0, i32* %arrayidx381, align 4, !tbaa !3
  %pos383 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 3
  %123 = load i32** %pos383, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i32* %123, i64 %idxprom376
  store i32 0, i32* %arrayidx384, align 4, !tbaa !3
  br label %sw.epilog

if.else385:                                       ; preds = %if.else362
  %arrayidx391 = getelementptr inbounds i32* %117, i64 3
  %124 = load i32* %arrayidx391, align 4, !tbaa !3
  %125 = load i32* %arrayidx394, align 4, !tbaa !3
  %add395 = add nsw i32 %125, %124
  %cmp396 = icmp eq i32 %118, %add395
  br i1 %cmp396, label %if.then398, label %if.else408

if.then398:                                       ; preds = %if.else385
  %idxprom399 = sext i32 %tpos.0892 to i64
  %arrayidx401 = getelementptr inbounds i8* %16, i64 %idxprom399
  store i8 10, i8* %arrayidx401, align 1, !tbaa !1
  %126 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx403 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 2
  %127 = load i32** %nodeidx403, align 8, !tbaa !0
  %arrayidx404 = getelementptr inbounds i32* %127, i64 %idxprom399
  store i32 0, i32* %arrayidx404, align 4, !tbaa !3
  %pos406 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 3
  %128 = load i32** %pos406, align 8, !tbaa !0
  %arrayidx407 = getelementptr inbounds i32* %128, i64 %idxprom399
  store i32 0, i32* %arrayidx407, align 4, !tbaa !3
  br label %sw.epilog

if.else408:                                       ; preds = %if.else385
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb412:                                         ; preds = %while.body
  %idxprom413 = sext i32 %i.0891 to i64
  %arrayidx414 = getelementptr inbounds i32** %0, i64 %idxprom413
  %129 = load i32** %arrayidx414, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i32* %129, i64 1
  %130 = load i32* %arrayidx415, align 4, !tbaa !3
  %cmp416 = icmp slt i32 %130, -987654320
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %sw.bb412
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.end419:                                        ; preds = %sw.bb412
  %131 = load i32* %M, align 4, !tbaa !3
  %cmp420863 = icmp sgt i32 %131, 0
  br i1 %cmp420863, label %for.body.lr.ph, label %for.end483

for.body.lr.ph:                                   ; preds = %if.end419
  %arrayidx427 = getelementptr inbounds i32** %1, i64 %idxprom413
  %132 = load i32** %arrayidx427, align 8, !tbaa !0
  %133 = load i32** %esc, align 8, !tbaa !0
  %134 = sext i32 %131 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %135 = trunc i64 %indvars.iv.next to i32
  %cmp420 = icmp sgt i32 %135, 0
  br i1 %cmp420, label %for.body, label %for.end483

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %134, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %k.3864 = phi i32 [ %131, %for.body.lr.ph ], [ %dec482, %for.cond ]
  %arrayidx428 = getelementptr inbounds i32* %132, i64 %indvars.iv
  %136 = load i32* %arrayidx428, align 4, !tbaa !3
  %arrayidx430 = getelementptr inbounds i32* %133, i64 %indvars.iv
  %137 = load i32* %arrayidx430, align 4, !tbaa !3
  %add431 = add nsw i32 %137, %136
  %cmp432 = icmp eq i32 %130, %add431
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec482 = add nsw i32 %k.3864, -1
  br i1 %cmp432, label %if.then434, label %for.cond

if.then434:                                       ; preds = %for.body
  %138 = load float** %end, align 8, !tbaa !0
  %arrayidx436 = getelementptr inbounds float* %138, i64 %indvars.iv
  %139 = load float* %arrayidx436, align 4, !tbaa !4
  %call437 = call i32 @Prob2Score(float %139, float 1.000000e+00) #5
  %conv438 = sitofp i32 %call437 to double
  %add439 = fadd double %conv438, 1.000000e+03
  %140 = load i32** %esc, align 8, !tbaa !0
  %arrayidx442 = getelementptr inbounds i32* %140, i64 %indvars.iv
  %141 = load i32* %arrayidx442, align 4, !tbaa !3
  %conv443 = sitofp i32 %141 to double
  %cmp444 = fcmp ugt double %add439, %conv443
  br i1 %cmp444, label %if.end468, label %if.then446

if.then446:                                       ; preds = %if.then434
  %142 = load i32* %M, align 4, !tbaa !3
  %cmp449865 = icmp sgt i32 %142, %k.3864
  br i1 %cmp449865, label %for.body451.lr.ph, label %if.end468

for.body451.lr.ph:                                ; preds = %if.then446
  %143 = sext i32 %tpos.0892 to i64
  %144 = add i32 %tpos.0892, %142
  br label %for.body451

for.body451:                                      ; preds = %for.inc, %for.body451.lr.ph
  %indvars.iv902 = phi i64 [ %143, %for.body451.lr.ph ], [ %indvars.iv.next903, %for.inc ]
  %dk.0868 = phi i32 [ %142, %for.body451.lr.ph ], [ %dec467, %for.inc ]
  %curralloc.3867 = phi i32 [ %curralloc.0894, %for.body451.lr.ph ], [ %curralloc.4, %for.inc ]
  %145 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype453 = getelementptr inbounds %struct.p7trace_s* %145, i64 0, i32 1
  %146 = load i8** %statetype453, align 8, !tbaa !0
  %arrayidx454 = getelementptr inbounds i8* %146, i64 %indvars.iv902
  store i8 2, i8* %arrayidx454, align 1, !tbaa !1
  %147 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 2
  %148 = load i32** %nodeidx456, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds i32* %148, i64 %indvars.iv902
  store i32 %dk.0868, i32* %arrayidx457, align 4, !tbaa !3
  %pos459 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 3
  %149 = load i32** %pos459, align 8, !tbaa !0
  %arrayidx460 = getelementptr inbounds i32* %149, i64 %indvars.iv902
  store i32 0, i32* %arrayidx460, align 4, !tbaa !3
  %indvars.iv.next903 = add i64 %indvars.iv902, 1
  %150 = trunc i64 %indvars.iv.next903 to i32
  %cmp462 = icmp eq i32 %150, %curralloc.3867
  br i1 %cmp462, label %if.then464, label %for.inc

if.then464:                                       ; preds = %for.body451
  %add465 = add nsw i32 %curralloc.3867, %N
  call void @P7ReallocTrace(%struct.p7trace_s* %147, i32 %add465) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body451, %if.then464
  %curralloc.4 = phi i32 [ %add465, %if.then464 ], [ %curralloc.3867, %for.body451 ]
  %dec467 = add nsw i32 %dk.0868, -1
  %cmp449 = icmp sgt i32 %dec467, %k.3864
  br i1 %cmp449, label %for.body451, label %for.cond448.if.end468.loopexit_crit_edge

for.cond448.if.end468.loopexit_crit_edge:         ; preds = %for.inc
  %151 = sub i32 %144, %k.3864
  br label %if.end468

if.end468:                                        ; preds = %if.then446, %for.cond448.if.end468.loopexit_crit_edge, %if.then434
  %tpos.4 = phi i32 [ %tpos.0892, %if.then434 ], [ %151, %for.cond448.if.end468.loopexit_crit_edge ], [ %tpos.0892, %if.then446 ]
  %curralloc.5 = phi i32 [ %curralloc.0894, %if.then434 ], [ %curralloc.4, %for.cond448.if.end468.loopexit_crit_edge ], [ %curralloc.0894, %if.then446 ]
  %idxprom469 = sext i32 %tpos.4 to i64
  %152 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype470 = getelementptr inbounds %struct.p7trace_s* %152, i64 0, i32 1
  %153 = load i8** %statetype470, align 8, !tbaa !0
  %arrayidx471 = getelementptr inbounds i8* %153, i64 %idxprom469
  store i8 1, i8* %arrayidx471, align 1, !tbaa !1
  %154 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx474 = getelementptr inbounds %struct.p7trace_s* %154, i64 0, i32 2
  %155 = load i32** %nodeidx474, align 8, !tbaa !0
  %arrayidx475 = getelementptr inbounds i32* %155, i64 %idxprom469
  store i32 %k.3864, i32* %arrayidx475, align 4, !tbaa !3
  %dec476 = add nsw i32 %i.0891, -1
  %pos478 = getelementptr inbounds %struct.p7trace_s* %154, i64 0, i32 3
  %156 = load i32** %pos478, align 8, !tbaa !0
  %arrayidx479 = getelementptr inbounds i32* %156, i64 %idxprom469
  store i32 %i.0891, i32* %arrayidx479, align 4, !tbaa !3
  br label %for.end483

for.end483:                                       ; preds = %if.end419, %for.cond, %if.end468
  %k.4 = phi i32 [ %dec482, %if.end468 ], [ %131, %if.end419 ], [ %dec482, %for.cond ]
  %i.1 = phi i32 [ %dec476, %if.end468 ], [ %i.0891, %if.end419 ], [ %i.0891, %for.cond ]
  %tpos.5 = phi i32 [ %tpos.4, %if.end468 ], [ %tpos.0892, %if.end419 ], [ %tpos.0892, %for.cond ]
  %curralloc.6 = phi i32 [ %curralloc.5, %if.end468 ], [ %curralloc.0894, %if.end419 ], [ %curralloc.0894, %for.cond ]
  %cmp484 = icmp slt i32 %k.4, 0
  br i1 %cmp484, label %if.then486, label %sw.epilog

if.then486:                                       ; preds = %for.end483
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb488:                                         ; preds = %while.body
  %idxprom489 = sext i32 %i.0891 to i64
  %arrayidx490 = getelementptr inbounds i32** %0, i64 %idxprom489
  %157 = load i32** %arrayidx490, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i32* %157, i64 2
  %158 = load i32* %arrayidx491, align 4, !tbaa !3
  %cmp492 = icmp slt i32 %158, -987654320
  br i1 %cmp492, label %if.then494, label %if.else495

if.then494:                                       ; preds = %sw.bb488
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else495:                                       ; preds = %sw.bb488
  %sub499 = add nsw i32 %i.0891, -1
  %idxprom500 = sext i32 %sub499 to i64
  %arrayidx501 = getelementptr inbounds i32** %0, i64 %idxprom500
  %159 = load i32** %arrayidx501, align 8, !tbaa !0
  %arrayidx502 = getelementptr inbounds i32* %159, i64 2
  %160 = load i32* %arrayidx502, align 4, !tbaa !3
  %161 = load i32* %arrayidx505, align 4, !tbaa !3
  %add506 = add nsw i32 %161, %160
  %cmp507 = icmp eq i32 %158, %add506
  br i1 %cmp507, label %if.then509, label %if.else524

if.then509:                                       ; preds = %if.else495
  %idxprom510 = sext i32 %tpos.0892 to i64
  %arrayidx512 = getelementptr inbounds i8* %16, i64 %idxprom510
  store i8 8, i8* %arrayidx512, align 1, !tbaa !1
  %162 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx514 = getelementptr inbounds %struct.p7trace_s* %162, i64 0, i32 2
  %163 = load i32** %nodeidx514, align 8, !tbaa !0
  %arrayidx515 = getelementptr inbounds i32* %163, i64 %idxprom510
  store i32 0, i32* %arrayidx515, align 4, !tbaa !3
  %pos517 = getelementptr inbounds %struct.p7trace_s* %162, i64 0, i32 3
  %164 = load i32** %pos517, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i32* %164, i64 %idxprom510
  store i32 0, i32* %arrayidx518, align 4, !tbaa !3
  %arrayidx523 = getelementptr inbounds i32* %164, i64 %idxprom896
  store i32 %i.0891, i32* %arrayidx523, align 4, !tbaa !3
  br label %sw.epilog

if.else524:                                       ; preds = %if.else495
  %arrayidx530 = getelementptr inbounds i32* %157, i64 1
  %165 = load i32* %arrayidx530, align 4, !tbaa !3
  %166 = load i32* %arrayidx533, align 4, !tbaa !3
  %add534 = add nsw i32 %166, %165
  %cmp535 = icmp eq i32 %158, %add534
  br i1 %cmp535, label %if.then537, label %if.else547

if.then537:                                       ; preds = %if.else524
  %idxprom538 = sext i32 %tpos.0892 to i64
  %arrayidx540 = getelementptr inbounds i8* %16, i64 %idxprom538
  store i8 7, i8* %arrayidx540, align 1, !tbaa !1
  %167 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx542 = getelementptr inbounds %struct.p7trace_s* %167, i64 0, i32 2
  %168 = load i32** %nodeidx542, align 8, !tbaa !0
  %arrayidx543 = getelementptr inbounds i32* %168, i64 %idxprom538
  store i32 0, i32* %arrayidx543, align 4, !tbaa !3
  %pos545 = getelementptr inbounds %struct.p7trace_s* %167, i64 0, i32 3
  %169 = load i32** %pos545, align 8, !tbaa !0
  %arrayidx546 = getelementptr inbounds i32* %169, i64 %idxprom538
  store i32 0, i32* %arrayidx546, align 4, !tbaa !3
  br label %sw.epilog

if.else547:                                       ; preds = %if.else524
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb551:                                         ; preds = %while.body
  %idxprom552 = sext i32 %i.0891 to i64
  %arrayidx553 = getelementptr inbounds i32** %0, i64 %idxprom552
  %170 = load i32** %arrayidx553, align 8, !tbaa !0
  %arrayidx554 = getelementptr inbounds i32* %170, i64 3
  %171 = load i32* %arrayidx554, align 4, !tbaa !3
  %cmp555 = icmp slt i32 %171, -987654320
  br i1 %cmp555, label %if.then557, label %if.else558

if.then557:                                       ; preds = %sw.bb551
  call void @P7FreeTrace(%struct.p7trace_s* %17) #5
  store %struct.p7trace_s* null, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

if.else558:                                       ; preds = %sw.bb551
  %sub562 = add nsw i32 %i.0891, -1
  %idxprom563 = sext i32 %sub562 to i64
  %arrayidx564 = getelementptr inbounds i32** %0, i64 %idxprom563
  %172 = load i32** %arrayidx564, align 8, !tbaa !0
  %arrayidx565 = getelementptr inbounds i32* %172, i64 3
  %173 = load i32* %arrayidx565, align 4, !tbaa !3
  %174 = load i32* %arrayidx568, align 4, !tbaa !3
  %add569 = add nsw i32 %174, %173
  %cmp570 = icmp eq i32 %171, %add569
  br i1 %cmp570, label %if.then572, label %if.else587

if.then572:                                       ; preds = %if.else558
  %idxprom573 = sext i32 %tpos.0892 to i64
  %arrayidx575 = getelementptr inbounds i8* %16, i64 %idxprom573
  store i8 10, i8* %arrayidx575, align 1, !tbaa !1
  %175 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx577 = getelementptr inbounds %struct.p7trace_s* %175, i64 0, i32 2
  %176 = load i32** %nodeidx577, align 8, !tbaa !0
  %arrayidx578 = getelementptr inbounds i32* %176, i64 %idxprom573
  store i32 0, i32* %arrayidx578, align 4, !tbaa !3
  %pos580 = getelementptr inbounds %struct.p7trace_s* %175, i64 0, i32 3
  %177 = load i32** %pos580, align 8, !tbaa !0
  %arrayidx581 = getelementptr inbounds i32* %177, i64 %idxprom573
  store i32 0, i32* %arrayidx581, align 4, !tbaa !3
  %arrayidx586 = getelementptr inbounds i32* %177, i64 %idxprom896
  store i32 %i.0891, i32* %arrayidx586, align 4, !tbaa !3
  br label %sw.epilog

if.else587:                                       ; preds = %if.else558
  %arrayidx593 = getelementptr inbounds i32* %170, i64 1
  %178 = load i32* %arrayidx593, align 4, !tbaa !3
  %179 = load i32* %arrayidx596, align 4, !tbaa !3
  %add597 = add nsw i32 %179, %178
  %cmp598 = icmp eq i32 %171, %add597
  br i1 %cmp598, label %if.then600, label %if.else610

if.then600:                                       ; preds = %if.else587
  %idxprom601 = sext i32 %tpos.0892 to i64
  %arrayidx603 = getelementptr inbounds i8* %16, i64 %idxprom601
  store i8 7, i8* %arrayidx603, align 1, !tbaa !1
  %180 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx605 = getelementptr inbounds %struct.p7trace_s* %180, i64 0, i32 2
  %181 = load i32** %nodeidx605, align 8, !tbaa !0
  %arrayidx606 = getelementptr inbounds i32* %181, i64 %idxprom601
  store i32 0, i32* %arrayidx606, align 4, !tbaa !3
  %pos608 = getelementptr inbounds %struct.p7trace_s* %180, i64 0, i32 3
  %182 = load i32** %pos608, align 8, !tbaa !0
  %arrayidx609 = getelementptr inbounds i32* %182, i64 %idxprom601
  store i32 0, i32* %arrayidx609, align 4, !tbaa !3
  br label %sw.epilog

if.else610:                                       ; preds = %if.else587
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #5
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then600, %if.else610, %if.then572, %if.then537, %if.else547, %if.then509, %for.end483, %if.then486, %if.then398, %if.else408, %if.then375, %if.then311, %if.else352, %if.then337, %if.then288, %if.else299, %if.then264, %if.then219, %if.else230, %if.then190, %if.then100, %if.then147, %if.else158, %if.then124, %if.end79, %sw.default
  %k.5 = phi i32 [ %k.0890, %sw.default ], [ %k.0890, %if.then572 ], [ %k.0890, %if.then600 ], [ %k.0890, %if.else610 ], [ %k.0890, %if.then509 ], [ %k.0890, %if.then537 ], [ %k.0890, %if.else547 ], [ %k.4, %if.then486 ], [ %k.4, %for.end483 ], [ %k.0890, %if.then375 ], [ %k.0890, %if.then398 ], [ %k.0890, %if.else408 ], [ %k.0890, %if.then311 ], [ %k.0890, %if.then337 ], [ %k.0890, %if.else352 ], [ %dec268, %if.then264 ], [ %k.0890, %if.then288 ], [ %k.0890, %if.else299 ], [ %dec194, %if.then190 ], [ %dec223, %if.then219 ], [ %k.0890, %if.else230 ], [ %k.2, %if.end79 ], [ %dec104, %if.then100 ], [ %k.0890, %if.then124 ], [ %dec151, %if.then147 ], [ %k.0890, %if.else158 ]
  %i.2 = phi i32 [ %i.0891, %sw.default ], [ %sub562, %if.then572 ], [ %i.0891, %if.then600 ], [ %i.0891, %if.else610 ], [ %sub499, %if.then509 ], [ %i.0891, %if.then537 ], [ %i.0891, %if.else547 ], [ %i.1, %if.then486 ], [ %i.1, %for.end483 ], [ %i.0891, %if.then375 ], [ %i.0891, %if.then398 ], [ %i.0891, %if.else408 ], [ 0, %if.then311 ], [ %dec347, %if.then337 ], [ %i.0891, %if.else352 ], [ %dec272, %if.then264 ], [ %dec295, %if.then288 ], [ %i.0891, %if.else299 ], [ %dec198, %if.then190 ], [ %i.0891, %if.then219 ], [ %i.0891, %if.else230 ], [ %i.0891, %if.end79 ], [ %dec108, %if.then100 ], [ %dec131, %if.then124 ], [ %i.0891, %if.then147 ], [ %i.0891, %if.else158 ]
  %tpos.6 = phi i32 [ %tpos.0892, %sw.default ], [ %tpos.0892, %if.then572 ], [ %tpos.0892, %if.then600 ], [ %tpos.0892, %if.else610 ], [ %tpos.0892, %if.then509 ], [ %tpos.0892, %if.then537 ], [ %tpos.0892, %if.else547 ], [ %tpos.5, %if.then486 ], [ %tpos.5, %for.end483 ], [ %tpos.0892, %if.then375 ], [ %tpos.0892, %if.then398 ], [ %tpos.0892, %if.else408 ], [ %tpos.0892, %if.then311 ], [ %tpos.0892, %if.then337 ], [ %tpos.0892, %if.else352 ], [ %tpos.0892, %if.then264 ], [ %tpos.0892, %if.then288 ], [ %tpos.0892, %if.else299 ], [ %tpos.0892, %if.then190 ], [ %tpos.0892, %if.then219 ], [ %tpos.0892, %if.else230 ], [ %tpos.2, %if.end79 ], [ %tpos.0892, %if.then100 ], [ %tpos.0892, %if.then124 ], [ %tpos.0892, %if.then147 ], [ %tpos.0892, %if.else158 ]
  %curralloc.7 = phi i32 [ %curralloc.0894, %sw.default ], [ %curralloc.0894, %if.then572 ], [ %curralloc.0894, %if.then600 ], [ %curralloc.0894, %if.else610 ], [ %curralloc.0894, %if.then509 ], [ %curralloc.0894, %if.then537 ], [ %curralloc.0894, %if.else547 ], [ %curralloc.6, %if.then486 ], [ %curralloc.6, %for.end483 ], [ %curralloc.0894, %if.then375 ], [ %curralloc.0894, %if.then398 ], [ %curralloc.0894, %if.else408 ], [ %curralloc.0894, %if.then311 ], [ %curralloc.0894, %if.then337 ], [ %curralloc.0894, %if.else352 ], [ %curralloc.0894, %if.then264 ], [ %curralloc.0894, %if.then288 ], [ %curralloc.0894, %if.else299 ], [ %curralloc.0894, %if.then190 ], [ %curralloc.0894, %if.then219 ], [ %curralloc.0894, %if.else230 ], [ %curralloc.2, %if.end79 ], [ %curralloc.0894, %if.then100 ], [ %curralloc.0894, %if.then124 ], [ %curralloc.0894, %if.then147 ], [ %curralloc.0894, %if.else158 ]
  %inc614 = add nsw i32 %tpos.6, 1
  %cmp615 = icmp eq i32 %inc614, %curralloc.7
  br i1 %cmp615, label %if.then617, label %while.cond.backedge

if.then617:                                       ; preds = %sw.epilog
  %add618 = add nsw i32 %curralloc.7, %N
  %183 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @P7ReallocTrace(%struct.p7trace_s* %183, i32 %add618) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog, %if.then617
  %curralloc.0.be = phi i32 [ %add618, %if.then617 ], [ %curralloc.7, %sw.epilog ]
  %idxprom = sext i32 %tpos.6 to i64
  %184 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype13 = getelementptr inbounds %struct.p7trace_s* %184, i64 0, i32 1
  %185 = load i8** %statetype13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i8* %185, i64 %idxprom
  %186 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp = icmp eq i8 %186, 4
  br i1 %cmp, label %while.end620, label %while.body

while.end620:                                     ; preds = %while.cond.backedge, %entry
  %187 = phi %struct.p7trace_s* [ %10, %entry ], [ %184, %while.cond.backedge ]
  %tpos.0.lcssa = phi i32 [ 2, %entry ], [ %inc614, %while.cond.backedge ]
  %tlen = getelementptr inbounds %struct.p7trace_s* %187, i64 0, i32 0
  store i32 %tpos.0.lcssa, i32* %tlen, align 4, !tbaa !3
  call void @P7ReverseTrace(%struct.p7trace_s* %187) #5
  %188 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  store %struct.p7trace_s* %188, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.end620, %if.then557, %if.then494, %if.then418, %if.then361, %if.then251, %if.then172, %if.then
  ret void
}

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #1

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

; Function Attrs: optsize
declare void @P7ReverseTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind optsize uwtable
define float @P7SmallViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %ctr = alloca %struct.p7trace_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %call = call float @P7ParsingViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ctr) #6
  %0 = load %struct.p7trace_s** %ctr, align 8, !tbaa !0
  %cmp = icmp eq %struct.p7trace_s* %0, null
  %cmp1 = icmp eq %struct.p7trace_s** %ret_tr, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @P7FreeTrace(%struct.p7trace_s* %0) #5
  br label %return

if.end:                                           ; preds = %entry
  %tlen2 = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 0
  %1 = load i32* %tlen2, align 4, !tbaa !3
  %div = sdiv i32 %1, 2
  %sub = add i32 %div, -1
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 3
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 930, i64 %mul) #5
  %2 = bitcast i8* %call3 to %struct.p7trace_s**
  %cmp4353 = icmp sgt i32 %sub, 0
  %pos7 = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 3
  br i1 %cmp4353, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end36, %for.body.lr.ph
  %indvars.iv377 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next378, %if.end36 ]
  %totlen.0356 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %if.end36 ]
  %tlen.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %add41, %if.end36 ]
  %3 = trunc i64 %indvars.iv377 to i32
  %mul6 = shl nsw i32 %3, 1
  %add = add nsw i32 %mul6, 2
  %idxprom = sext i32 %add to i64
  %4 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %add9317 = or i32 %mul6, 1
  %idxprom10 = sext i32 %add9317 to i64
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %idxprom10
  %6 = load i32* %arrayidx12, align 4, !tbaa !3
  %sub13 = sub nsw i32 %5, %6
  %7 = load i32* %M, align 4, !tbaa !3
  %add.i = add nsw i32 %sub13, 1
  %conv.i = sitofp i32 %add.i to float
  %conv1.i = fpext float %conv.i to double
  %mul.i = fmul double %conv1.i, 3.000000e+00
  %add2.i = add nsw i32 %7, 2
  %conv3.i = sitofp i32 %add2.i to float
  %conv4.i = fpext float %conv3.i to double
  %mul5.i = fmul double %conv4.i, %mul.i
  %mul6.i = fmul double %mul5.i, 4.000000e+00
  %add8.i = fadd double %mul6.i, 8.000000e+01
  %conv9.i = fptrunc double %add8.i to float
  %mul13.i = fmul double %conv1.i, 4.000000e+00
  %mul14.i = fmul double %mul13.i, 8.000000e+00
  %conv15.i = fpext float %conv9.i to double
  %add16.i = fadd double %mul14.i, %conv15.i
  %conv17.i = fptrunc double %add16.i to float
  %mul21.i = fmul double %conv1.i, 5.000000e+00
  %mul22.i = fmul double %mul21.i, 4.000000e+00
  %conv23.i = fpext float %conv17.i to double
  %add24.i = fadd double %mul22.i, %conv23.i
  %conv25.i = fptrunc double %add24.i to float
  %conv27.i = fmul float %conv25.i, 0x3EB0000000000000
  %conv28.i = fptosi float %conv27.i to i32
  %cmp15 = icmp sgt i32 %conv28.i, 1000
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8* %dsq, i64 %idx.ext
  %arrayidx24 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv377
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %call25 = call float @P7WeeViterbi(i8* %add.ptr, i32 %sub13, %struct.plan7_s* %hmm, %struct.p7trace_s** %arrayidx24) #6
  br label %if.end36

if.else:                                          ; preds = %for.body
  %call35 = call float @P7Viterbi(i8* %add.ptr, i32 %sub13, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %arrayidx24) #5
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then17
  %8 = load %struct.p7trace_s** %arrayidx24, align 8, !tbaa !0
  %tlen39 = getelementptr inbounds %struct.p7trace_s* %8, i64 0, i32 0
  %9 = load i32* %tlen39, align 4, !tbaa !3
  %sub40 = add i32 %tlen.0354, -4
  %add41 = add i32 %sub40, %9
  %add42 = add nsw i32 %sub13, %totlen.0356
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32
  %exitcond380 = icmp eq i32 %lftr.wideiv379, %sub
  br i1 %exitcond380, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %if.end36
  %totlen.0.lcssa = phi i32 [ %add42, %if.end36 ], [ 0, %if.end ]
  %tlen.0.lcssa = phi i32 [ %add41, %if.end36 ], [ 0, %if.end ]
  %sub43 = add nsw i32 %div, -2
  %sub45 = add i32 %L, 2
  %add44 = add i32 %sub45, %div
  %add46 = add i32 %add44, %tlen.0.lcssa
  %add47 = sub i32 %add46, %totlen.0.lcssa
  call void @P7AllocTrace(i32 %add47, %struct.p7trace_s** %tr) #5
  %10 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %tlen48 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 0
  store i32 %add47, i32* %tlen48, align 4, !tbaa !3
  %statetype = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 1
  %11 = load i8** %statetype, align 8, !tbaa !0
  store i8 4, i8* %11, align 1, !tbaa !1
  %12 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 2
  %13 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %13, align 4, !tbaa !3
  %pos51 = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 3
  %14 = load i32** %pos51, align 8, !tbaa !0
  store i32 0, i32* %14, align 4, !tbaa !3
  %statetype53 = getelementptr inbounds %struct.p7trace_s* %12, i64 0, i32 1
  %15 = load i8** %statetype53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i8* %15, i64 1
  store i8 5, i8* %arrayidx54, align 1, !tbaa !1
  %16 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx55 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 2
  %17 = load i32** %nodeidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i32* %17, i64 1
  store i32 0, i32* %arrayidx56, align 4, !tbaa !3
  %pos57 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 3
  %18 = load i32** %pos57, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i32* %18, i64 1
  store i32 0, i32* %arrayidx58, align 4, !tbaa !3
  %19 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx61348 = getelementptr inbounds i32* %19, i64 1
  %20 = load i32* %arrayidx61348, align 4, !tbaa !3
  %cmp62349 = icmp slt i32 %20, 1
  br i1 %cmp62349, label %for.cond78.preheader, label %for.body64

for.cond78.preheader:                             ; preds = %for.body64, %for.end
  %21 = phi i32* [ %19, %for.end ], [ %28, %for.body64 ]
  %22 = phi %struct.p7trace_s* [ %16, %for.end ], [ %25, %for.body64 ]
  %tpos.0.lcssa = phi i32 [ 2, %for.end ], [ %inc74, %for.body64 ]
  br i1 %cmp4353, label %for.cond82.preheader, label %for.end187

for.body64:                                       ; preds = %for.end, %for.body64
  %23 = phi %struct.p7trace_s* [ %25, %for.body64 ], [ %16, %for.end ]
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %for.body64 ], [ 2, %for.end ]
  %tpos.0351 = phi i32 [ %inc74, %for.body64 ], [ 2, %for.end ]
  %pos.0350 = phi i32 [ %inc76, %for.body64 ], [ 1, %for.end ]
  %statetype66 = getelementptr inbounds %struct.p7trace_s* %23, i64 0, i32 1
  %24 = load i8** %statetype66, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i8* %24, i64 %indvars.iv375
  store i8 5, i8* %arrayidx67, align 1, !tbaa !1
  %25 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx69 = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 2
  %26 = load i32** %nodeidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i32* %26, i64 %indvars.iv375
  store i32 0, i32* %arrayidx70, align 4, !tbaa !3
  %pos72 = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 3
  %27 = load i32** %pos72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32* %27, i64 %indvars.iv375
  store i32 %pos.0350, i32* %arrayidx73, align 4, !tbaa !3
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %inc74 = add nsw i32 %tpos.0351, 1
  %inc76 = add nsw i32 %pos.0350, 1
  %28 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %28, i64 1
  %29 = load i32* %arrayidx61, align 4, !tbaa !3
  %cmp62 = icmp slt i32 %pos.0350, %29
  br i1 %cmp62, label %for.body64, label %for.cond78.preheader

for.cond82.preheader:                             ; preds = %for.cond78.preheader, %for.inc185
  %30 = phi %struct.p7trace_s* [ %69, %for.inc185 ], [ %22, %for.cond78.preheader ]
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.inc185 ], [ 0, %for.cond78.preheader ]
  %tpos.1344 = phi i32 [ %tpos.4, %for.inc185 ], [ %tpos.0.lcssa, %for.cond78.preheader ]
  %arrayidx84 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv371
  %31 = load %struct.p7trace_s** %arrayidx84, align 8, !tbaa !0
  %tlen85330 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 0
  %32 = load i32* %tlen85330, align 4, !tbaa !3
  %sub86331 = add nsw i32 %32, -2
  %cmp87332 = icmp sgt i32 %sub86331, 2
  %33 = trunc i64 %indvars.iv371 to i32
  br i1 %cmp87332, label %for.body89.lr.ph, label %for.end136

for.body89.lr.ph:                                 ; preds = %for.cond82.preheader
  %mul119 = shl nsw i32 %33, 1
  %add120316 = or i32 %mul119, 1
  %idxprom121 = sext i32 %add120316 to i64
  %34 = sext i32 %tpos.1344 to i64
  br label %for.body89

for.body89:                                       ; preds = %for.body89.lr.ph, %if.end132
  %35 = phi %struct.p7trace_s* [ %30, %for.body89.lr.ph ], [ %43, %if.end132 ]
  %indvars.iv366 = phi i64 [ %34, %for.body89.lr.ph ], [ %indvars.iv.next367, %if.end132 ]
  %indvars.iv364 = phi i64 [ 2, %for.body89.lr.ph ], [ %indvars.iv.next365, %if.end132 ]
  %36 = phi %struct.p7trace_s* [ %31, %for.body89.lr.ph ], [ %40, %if.end132 ]
  %tpos.2333 = phi i32 [ %tpos.1344, %for.body89.lr.ph ], [ %inc133, %if.end132 ]
  %statetype93 = getelementptr inbounds %struct.p7trace_s* %36, i64 0, i32 1
  %37 = load i8** %statetype93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i8* %37, i64 %indvars.iv364
  %38 = load i8* %arrayidx94, align 1, !tbaa !1
  %statetype96 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 1
  %39 = load i8** %statetype96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i8* %39, i64 %indvars.iv366
  store i8 %38, i8* %arrayidx97, align 1, !tbaa !1
  %40 = load %struct.p7trace_s** %arrayidx84, align 8, !tbaa !0
  %nodeidx101 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 2
  %41 = load i32** %nodeidx101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i32* %41, i64 %indvars.iv364
  %42 = load i32* %arrayidx102, align 4, !tbaa !3
  %43 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx104 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 2
  %44 = load i32** %nodeidx104, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i32* %44, i64 %indvars.iv366
  store i32 %42, i32* %arrayidx105, align 4, !tbaa !3
  %pos109 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 3
  %45 = load i32** %pos109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32* %45, i64 %indvars.iv364
  %46 = load i32* %arrayidx110, align 4, !tbaa !3
  %cmp111 = icmp sgt i32 %46, 0
  br i1 %cmp111, label %if.then113, label %if.else128

if.then113:                                       ; preds = %for.body89
  %47 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32* %47, i64 %idxprom121
  %48 = load i32* %arrayidx123, align 4, !tbaa !3
  %add124 = add nsw i32 %48, %46
  %pos126 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 3
  %49 = load i32** %pos126, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %49, i64 %indvars.iv366
  store i32 %add124, i32* %arrayidx127, align 4, !tbaa !3
  br label %if.end132

if.else128:                                       ; preds = %for.body89
  %pos130 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 3
  %50 = load i32** %pos130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i32* %50, i64 %indvars.iv366
  store i32 0, i32* %arrayidx131, align 4, !tbaa !3
  br label %if.end132

if.end132:                                        ; preds = %if.else128, %if.then113
  %indvars.iv.next367 = add i64 %indvars.iv366, 1
  %inc133 = add nsw i32 %tpos.2333, 1
  %indvars.iv.next365 = add i64 %indvars.iv364, 1
  %tlen85 = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 0
  %51 = load i32* %tlen85, align 4, !tbaa !3
  %sub86 = add nsw i32 %51, -2
  %52 = trunc i64 %indvars.iv.next365 to i32
  %cmp87 = icmp slt i32 %52, %sub86
  br i1 %cmp87, label %for.body89, label %for.end136

for.end136:                                       ; preds = %for.cond82.preheader, %if.end132
  %53 = phi %struct.p7trace_s* [ %43, %if.end132 ], [ %30, %for.cond82.preheader ]
  %tpos.2.lcssa = phi i32 [ %inc133, %if.end132 ], [ %tpos.1344, %for.cond82.preheader ]
  %cmp138 = icmp eq i32 %33, %sub43
  %conv140 = select i1 %cmp138, i8 8, i8 10
  %idxprom141 = sext i32 %tpos.2.lcssa to i64
  %statetype142 = getelementptr inbounds %struct.p7trace_s* %53, i64 0, i32 1
  %54 = load i8** %statetype142, align 8, !tbaa !0
  %arrayidx143 = getelementptr inbounds i8* %54, i64 %idxprom141
  store i8 %conv140, i8* %arrayidx143, align 1, !tbaa !1
  %55 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx145 = getelementptr inbounds %struct.p7trace_s* %55, i64 0, i32 2
  %56 = load i32** %nodeidx145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %56, i64 %idxprom141
  store i32 0, i32* %arrayidx146, align 4, !tbaa !3
  %pos148 = getelementptr inbounds %struct.p7trace_s* %55, i64 0, i32 3
  %57 = load i32** %pos148, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32* %57, i64 %idxprom141
  store i32 0, i32* %arrayidx149, align 4, !tbaa !3
  %inc150 = add i32 %tpos.2.lcssa, 1
  br i1 %cmp138, label %for.inc185, label %if.then154

if.then154:                                       ; preds = %for.end136
  %mul155 = shl i32 %33, 1
  %add156 = add nsw i32 %mul155, 2
  %idxprom157 = sext i32 %add156 to i64
  %58 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32* %58, i64 %idxprom157
  %59 = load i32* %arrayidx159, align 4, !tbaa !3
  %add164 = add i32 %mul155, 3
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx167338 = getelementptr inbounds i32* %58, i64 %idxprom165
  %60 = load i32* %arrayidx167338, align 4, !tbaa !3
  %cmp168339 = icmp slt i32 %59, %60
  br i1 %cmp168339, label %for.body170.lr.ph, label %for.inc185

for.body170.lr.ph:                                ; preds = %if.then154
  %61 = sext i32 %inc150 to i64
  br label %for.body170

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %62 = phi %struct.p7trace_s* [ %55, %for.body170.lr.ph ], [ %64, %for.body170 ]
  %indvars.iv368 = phi i64 [ %61, %for.body170.lr.ph ], [ %indvars.iv.next369, %for.body170 ]
  %pos.1341.in = phi i32 [ %59, %for.body170.lr.ph ], [ %pos.1341, %for.body170 ]
  %tpos.3340 = phi i32 [ %inc150, %for.body170.lr.ph ], [ %inc180, %for.body170 ]
  %pos.1341 = add nsw i32 %pos.1341.in, 1
  %statetype172 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 1
  %63 = load i8** %statetype172, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i8* %63, i64 %indvars.iv368
  store i8 10, i8* %arrayidx173, align 1, !tbaa !1
  %64 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx175 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 2
  %65 = load i32** %nodeidx175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %65, i64 %indvars.iv368
  store i32 0, i32* %arrayidx176, align 4, !tbaa !3
  %pos178 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 3
  %66 = load i32** %pos178, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i32* %66, i64 %indvars.iv368
  store i32 %pos.1341, i32* %arrayidx179, align 4, !tbaa !3
  %inc180 = add nsw i32 %tpos.3340, 1
  %67 = load i32** %pos7, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i32* %67, i64 %idxprom165
  %68 = load i32* %arrayidx167, align 4, !tbaa !3
  %cmp168 = icmp slt i32 %pos.1341, %68
  %indvars.iv.next369 = add i64 %indvars.iv368, 1
  br i1 %cmp168, label %for.body170, label %for.inc185

for.inc185:                                       ; preds = %if.then154, %for.body170, %for.end136
  %69 = phi %struct.p7trace_s* [ %55, %for.end136 ], [ %55, %if.then154 ], [ %64, %for.body170 ]
  %tpos.4 = phi i32 [ %inc150, %for.end136 ], [ %inc150, %if.then154 ], [ %inc180, %for.body170 ]
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %sub
  br i1 %exitcond374, label %for.cond78.for.end187_crit_edge, label %for.cond82.preheader

for.cond78.for.end187_crit_edge:                  ; preds = %for.inc185
  %.pre = load i32** %pos7, align 8, !tbaa !0
  br label %for.end187

for.end187:                                       ; preds = %for.cond78.preheader, %for.cond78.for.end187_crit_edge
  %70 = phi i32* [ %.pre, %for.cond78.for.end187_crit_edge ], [ %21, %for.cond78.preheader ]
  %71 = phi %struct.p7trace_s* [ %69, %for.cond78.for.end187_crit_edge ], [ %22, %for.cond78.preheader ]
  %tpos.1.lcssa = phi i32 [ %tpos.4, %for.cond78.for.end187_crit_edge ], [ %tpos.0.lcssa, %for.cond78.preheader ]
  %mul188 = shl nsw i32 %sub, 1
  %idxprom189 = sext i32 %mul188 to i64
  %arrayidx191 = getelementptr inbounds i32* %70, i64 %idxprom189
  %72 = load i32* %arrayidx191, align 4, !tbaa !3
  %cmp194321 = icmp slt i32 %72, %L
  %idxprom197322 = sext i32 %tpos.1.lcssa to i64
  %statetype198323 = getelementptr inbounds %struct.p7trace_s* %71, i64 0, i32 1
  %73 = load i8** %statetype198323, align 8, !tbaa !0
  %arrayidx199324 = getelementptr inbounds i8* %73, i64 %idxprom197322
  br i1 %cmp194321, label %for.body196.lr.ph, label %for.end209

for.body196.lr.ph:                                ; preds = %for.end187
  %74 = add i32 %L, -1
  %75 = sub i32 %74, %72
  %76 = zext i32 %75 to i64
  %77 = add i64 %idxprom197322, %76
  br label %for.body196

for.body196:                                      ; preds = %for.body196, %for.body196.lr.ph
  %indvars.iv361 = phi i64 [ %idxprom197322, %for.body196.lr.ph ], [ %indvars.iv.next362, %for.body196 ]
  %arrayidx199328 = phi i8* [ %arrayidx199324, %for.body196.lr.ph ], [ %arrayidx199, %for.body196 ]
  %pos.2326.in = phi i32 [ %72, %for.body196.lr.ph ], [ %pos.2326, %for.body196 ]
  %pos.2326 = add nsw i32 %pos.2326.in, 1
  store i8 8, i8* %arrayidx199328, align 1, !tbaa !1
  %78 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx201 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 2
  %79 = load i32** %nodeidx201, align 8, !tbaa !0
  %arrayidx202 = getelementptr inbounds i32* %79, i64 %indvars.iv361
  store i32 0, i32* %arrayidx202, align 4, !tbaa !3
  %pos204 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 3
  %80 = load i32** %pos204, align 8, !tbaa !0
  %arrayidx205 = getelementptr inbounds i32* %80, i64 %indvars.iv361
  store i32 %pos.2326, i32* %arrayidx205, align 4, !tbaa !3
  %indvars.iv.next362 = add i64 %indvars.iv361, 1
  %statetype198 = getelementptr inbounds %struct.p7trace_s* %78, i64 0, i32 1
  %81 = load i8** %statetype198, align 8, !tbaa !0
  %arrayidx199 = getelementptr inbounds i8* %81, i64 %indvars.iv.next362
  %exitcond363 = icmp eq i32 %pos.2326, %L
  br i1 %exitcond363, label %for.cond193.for.end209_crit_edge, label %for.body196

for.cond193.for.end209_crit_edge:                 ; preds = %for.body196
  %82 = add i64 %77, 1
  br label %for.end209

for.end209:                                       ; preds = %for.cond193.for.end209_crit_edge, %for.end187
  %arrayidx199.lcssa = phi i8* [ %arrayidx199, %for.cond193.for.end209_crit_edge ], [ %arrayidx199324, %for.end187 ]
  %idxprom197.lcssa = phi i64 [ %82, %for.cond193.for.end209_crit_edge ], [ %idxprom197322, %for.end187 ]
  store i8 9, i8* %arrayidx199.lcssa, align 1, !tbaa !1
  %83 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s* %83, i64 0, i32 2
  %84 = load i32** %nodeidx214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i32* %84, i64 %idxprom197.lcssa
  store i32 0, i32* %arrayidx215, align 4, !tbaa !3
  %pos217 = getelementptr inbounds %struct.p7trace_s* %83, i64 0, i32 3
  %85 = load i32** %pos217, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i32* %85, i64 %idxprom197.lcssa
  store i32 0, i32* %arrayidx218, align 4, !tbaa !3
  br i1 %cmp4353, label %for.body223, label %for.end228

for.body223:                                      ; preds = %for.end209, %for.body223
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body223 ], [ 0, %for.end209 ]
  %arrayidx225 = getelementptr inbounds %struct.p7trace_s** %2, i64 %indvars.iv
  %86 = load %struct.p7trace_s** %arrayidx225, align 8, !tbaa !0
  call void @P7FreeTrace(%struct.p7trace_s* %86) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub
  br i1 %exitcond, label %for.end228, label %for.body223

for.end228:                                       ; preds = %for.body223, %for.end209
  call void @free(i8* %call3) #5
  %87 = load %struct.p7trace_s** %ctr, align 8, !tbaa !0
  call void @P7FreeTrace(%struct.p7trace_s* %87) #5
  %88 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  store %struct.p7trace_s* %88, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.end228, %if.then
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define float @P7ParsingViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !3
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %0, i32 0, i32 0) #5
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0
  %1 = load i32*** %xmx1.i, align 8, !tbaa !0
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1
  %2 = load i32*** %mmx4.i, align 8, !tbaa !0
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2
  %3 = load i32*** %imx8.i, align 8, !tbaa !0
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3
  %4 = load i32*** %dmx12.i, align 8, !tbaa !0
  %5 = load i32* %M, align 4, !tbaa !3
  %call.i807 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %5, i32 0, i32 0) #5
  %xmx1.i808 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 0
  %6 = load i32*** %xmx1.i808, align 8, !tbaa !0
  %mmx4.i809 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 1
  %7 = load i32*** %mmx4.i809, align 8, !tbaa !0
  %imx8.i810 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 2
  %8 = load i32*** %imx8.i810, align 8, !tbaa !0
  %dmx12.i811 = getelementptr inbounds %struct.dpmatrix_s* %call.i807, i64 0, i32 3
  %9 = load i32*** %dmx12.i811, align 8, !tbaa !0
  %add = add i32 %L, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1083, i64 %mul) #5
  %10 = bitcast i8* %call3 to i32*
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1084, i64 %mul) #5
  %11 = bitcast i8* %call7 to i32*
  %12 = load i32** %1, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %12, i64 4
  store i32 0, i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %13 = load i32* %arrayidx10, align 4, !tbaa !3
  store i32 %13, i32* %12, align 4, !tbaa !3
  store i32 0, i32* %10, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %12, i64 3
  store i32 -987654321, i32* %arrayidx15, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %12, i64 2
  store i32 -987654321, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %12, i64 1
  store i32 -987654321, i32* %arrayidx19, align 4, !tbaa !3
  store i32 -1, i32* %11, align 4, !tbaa !3
  %14 = load i32* %M, align 4, !tbaa !3
  %cmp879 = icmp slt i32 %14, 0
  br i1 %cmp879, label %for.cond31.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %15 = load i32** %4, align 8, !tbaa !0
  %16 = load i32** %3, align 8, !tbaa !0
  %17 = load i32** %2, align 8, !tbaa !0
  br label %for.body

for.cond31.preheader:                             ; preds = %for.body, %entry
  %cmp32876 = icmp slt i32 %L, 1
  br i1 %cmp32876, label %for.end531, label %for.body34.lr.ph

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %arrayidx359 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx410 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx430 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %arrayidx469 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx494 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx514 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.body34

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx24 = getelementptr inbounds i32* %15, i64 %indvars.iv887
  store i32 -987654321, i32* %arrayidx24, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32* %16, i64 %indvars.iv887
  store i32 -987654321, i32* %arrayidx27, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds i32* %17, i64 %indvars.iv887
  store i32 -987654321, i32* %arrayidx30, align 4, !tbaa !3
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  %18 = load i32* %M, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv887 to i32
  %cmp = icmp slt i32 %19, %18
  br i1 %cmp, label %for.body, label %for.cond31.preheader

for.body34:                                       ; preds = %for.inc529, %for.body34.lr.ph
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %for.inc529 ], [ 1, %for.body34.lr.ph ]
  %20 = trunc i64 %indvars.iv884 to i32
  %rem = srem i32 %20, 2
  %lnot = icmp eq i32 %rem, 0
  %idxprom35 = sext i32 %rem to i64
  %arrayidx36 = getelementptr inbounds i32** %4, i64 %idxprom35
  %21 = load i32** %arrayidx36, align 8, !tbaa !0
  store i32 -987654321, i32* %21, align 4, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32** %3, i64 %idxprom35
  %22 = load i32** %arrayidx39, align 8, !tbaa !0
  store i32 -987654321, i32* %22, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds i32** %2, i64 %idxprom35
  %23 = load i32** %arrayidx42, align 8, !tbaa !0
  store i32 -987654321, i32* %23, align 4, !tbaa !3
  %24 = load i32* %M, align 4, !tbaa !3
  %cmp46872 = icmp slt i32 %24, 1
  %idxprom354.phi.trans.insert = zext i1 %lnot to i64
  br i1 %cmp46872, label %for.body34.for.end350_crit_edge, label %for.body48.lr.ph

for.body34.for.end350_crit_edge:                  ; preds = %for.body34
  %arrayidx355.phi.trans.insert = getelementptr inbounds i32** %1, i64 %idxprom354.phi.trans.insert
  %.pre900 = load i32** %arrayidx355.phi.trans.insert, align 8, !tbaa !0
  br label %for.end350

for.body48.lr.ph:                                 ; preds = %for.body34
  %arrayidx55 = getelementptr inbounds i32** %2, i64 %idxprom354.phi.trans.insert
  %arrayidx71 = getelementptr inbounds i32** %7, i64 %idxprom354.phi.trans.insert
  %arrayidx75 = getelementptr inbounds i32** %7, i64 %idxprom35
  %arrayidx80 = getelementptr inbounds i32** %3, i64 %idxprom354.phi.trans.insert
  %arrayidx102 = getelementptr inbounds i32** %8, i64 %idxprom354.phi.trans.insert
  %arrayidx110 = getelementptr inbounds i32** %1, i64 %idxprom354.phi.trans.insert
  %25 = add nsw i64 %indvars.iv884, 4294967295
  %arrayidx135 = getelementptr inbounds i32** %4, i64 %idxprom354.phi.trans.insert
  %arrayidx157 = getelementptr inbounds i32** %9, i64 %idxprom354.phi.trans.insert
  %arrayidx166 = getelementptr inbounds i8* %dsq, i64 %indvars.iv884
  %arrayidx221 = getelementptr inbounds i32** %9, i64 %idxprom35
  %arrayidx286 = getelementptr inbounds i32** %8, i64 %idxprom35
  %.pre893 = load i32** %arrayidx55, align 8, !tbaa !0
  %.pre894 = load i32*** %tsc, align 8, !tbaa !0
  %.pre901 = load i32** %.pre894, align 8, !tbaa !0
  br label %for.body48

for.body48:                                       ; preds = %for.inc348, %for.body48.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc348 ], [ 1, %for.body48.lr.ph ]
  %arrayidx52 = getelementptr inbounds i32* %23, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx52, align 4, !tbaa !3
  %26 = add nsw i64 %indvars.iv, -1
  %arrayidx56 = getelementptr inbounds i32* %.pre893, i64 %26
  %27 = load i32* %arrayidx56, align 4, !tbaa !3
  %arrayidx60 = getelementptr inbounds i32* %.pre901, i64 %26
  %28 = load i32* %arrayidx60, align 4, !tbaa !3
  %add61 = add nsw i32 %28, %27
  %cmp62 = icmp sgt i32 %add61, -987654321
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body48
  store i32 %add61, i32* %arrayidx52, align 4, !tbaa !3
  %29 = load i32** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i32* %29, i64 %26
  %30 = load i32* %arrayidx72, align 4, !tbaa !3
  %31 = load i32** %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32* %31, i64 %indvars.iv
  store i32 %30, i32* %arrayidx76, align 4, !tbaa !3
  %.pre895 = load i32* %arrayidx52, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body48, %if.then
  %32 = phi i32 [ %.pre895, %if.then ], [ -987654321, %for.body48 ]
  %33 = load i32** %arrayidx80, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i32* %33, i64 %26
  %34 = load i32* %arrayidx81, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds i32** %.pre894, i64 3
  %35 = load i32** %arrayidx85, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32* %35, i64 %26
  %36 = load i32* %arrayidx86, align 4, !tbaa !3
  %add87 = add nsw i32 %36, %34
  %cmp92 = icmp sgt i32 %add87, %32
  br i1 %cmp92, label %if.then94, label %if.end108

if.then94:                                        ; preds = %if.end
  store i32 %add87, i32* %arrayidx52, align 4, !tbaa !3
  %37 = load i32** %arrayidx102, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i32* %37, i64 %26
  %38 = load i32* %arrayidx103, align 4, !tbaa !3
  %39 = load i32** %arrayidx75, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i32* %39, i64 %indvars.iv
  store i32 %38, i32* %arrayidx107, align 4, !tbaa !3
  %.pre896 = load i32* %arrayidx52, align 4, !tbaa !3
  br label %if.end108

if.end108:                                        ; preds = %if.end, %if.then94
  %40 = phi i32 [ %.pre896, %if.then94 ], [ %32, %if.end ]
  %41 = load i32** %arrayidx110, align 8, !tbaa !0
  %42 = load i32* %41, align 4, !tbaa !3
  %43 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i32* %43, i64 %indvars.iv
  %44 = load i32* %arrayidx113, align 4, !tbaa !3
  %add114 = add nsw i32 %44, %42
  %cmp119 = icmp sgt i32 %add114, %40
  br i1 %cmp119, label %if.then121, label %if.end131

if.then121:                                       ; preds = %if.end108
  store i32 %add114, i32* %arrayidx52, align 4, !tbaa !3
  %45 = load i32** %arrayidx75, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32* %45, i64 %indvars.iv
  %46 = trunc i64 %25 to i32
  store i32 %46, i32* %arrayidx130, align 4, !tbaa !3
  %.pre897 = load i32* %arrayidx52, align 4, !tbaa !3
  br label %if.end131

if.end131:                                        ; preds = %if.end108, %if.then121
  %47 = phi i32 [ %.pre897, %if.then121 ], [ %40, %if.end108 ]
  %48 = load i32** %arrayidx135, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i32* %48, i64 %26
  %49 = load i32* %arrayidx136, align 4, !tbaa !3
  %arrayidx140 = getelementptr inbounds i32** %.pre894, i64 5
  %50 = load i32** %arrayidx140, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %50, i64 %26
  %51 = load i32* %arrayidx141, align 4, !tbaa !3
  %add142 = add nsw i32 %51, %49
  %cmp147 = icmp sgt i32 %add142, %47
  br i1 %cmp147, label %if.then149, label %if.end163

if.then149:                                       ; preds = %if.end131
  store i32 %add142, i32* %arrayidx52, align 4, !tbaa !3
  %52 = load i32** %arrayidx157, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %52, i64 %26
  %53 = load i32* %arrayidx158, align 4, !tbaa !3
  %54 = load i32** %arrayidx75, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds i32* %54, i64 %indvars.iv
  store i32 %53, i32* %arrayidx162, align 4, !tbaa !3
  br label %if.end163

if.end163:                                        ; preds = %if.end131, %if.then149
  %55 = load i8* %arrayidx166, align 1, !tbaa !1
  %idxprom168 = sext i8 %55 to i64
  %56 = load i32*** %msc, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32** %56, i64 %idxprom168
  %57 = load i32** %arrayidx169, align 8, !tbaa !0
  %arrayidx170 = getelementptr inbounds i32* %57, i64 %indvars.iv
  %58 = load i32* %arrayidx170, align 4, !tbaa !3
  %cmp171 = icmp eq i32 %58, -987654321
  br i1 %cmp171, label %if.end191, label %if.then173

if.then173:                                       ; preds = %if.end163
  %59 = load i32* %arrayidx52, align 4, !tbaa !3
  %add186 = add nsw i32 %59, %58
  br label %if.end191

if.end191:                                        ; preds = %if.end163, %if.then173
  %storemerge = phi i32 [ %add186, %if.then173 ], [ -987654321, %if.end163 ]
  store i32 %storemerge, i32* %arrayidx52, align 4, !tbaa !3
  %arrayidx195 = getelementptr inbounds i32* %21, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx195, align 4, !tbaa !3
  %arrayidx200 = getelementptr inbounds i32* %23, i64 %26
  %60 = load i32* %arrayidx200, align 4, !tbaa !3
  %arrayidx204 = getelementptr inbounds i32** %.pre894, i64 2
  %61 = load i32** %arrayidx204, align 8, !tbaa !0
  %arrayidx205 = getelementptr inbounds i32* %61, i64 %26
  %62 = load i32* %arrayidx205, align 4, !tbaa !3
  %add206 = add nsw i32 %62, %60
  %cmp207 = icmp sgt i32 %add206, -987654321
  br i1 %cmp207, label %if.then209, label %if.end223

if.then209:                                       ; preds = %if.end191
  store i32 %add206, i32* %arrayidx195, align 4, !tbaa !3
  %63 = load i32** %arrayidx75, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i32* %63, i64 %26
  %64 = load i32* %arrayidx218, align 4, !tbaa !3
  %65 = load i32** %arrayidx221, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i32* %65, i64 %indvars.iv
  store i32 %64, i32* %arrayidx222, align 4, !tbaa !3
  %.pre898 = load i32* %arrayidx195, align 4, !tbaa !3
  br label %if.end223

if.end223:                                        ; preds = %if.end191, %if.then209
  %66 = phi i32 [ %.pre898, %if.then209 ], [ -987654321, %if.end191 ]
  %arrayidx228 = getelementptr inbounds i32* %21, i64 %26
  %67 = load i32* %arrayidx228, align 4, !tbaa !3
  %arrayidx232 = getelementptr inbounds i32** %.pre894, i64 6
  %68 = load i32** %arrayidx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %68, i64 %26
  %69 = load i32* %arrayidx233, align 4, !tbaa !3
  %add234 = add nsw i32 %69, %67
  %cmp239 = icmp sgt i32 %add234, %66
  br i1 %cmp239, label %if.then241, label %if.end255

if.then241:                                       ; preds = %if.end223
  store i32 %add234, i32* %arrayidx195, align 4, !tbaa !3
  %70 = load i32** %arrayidx221, align 8, !tbaa !0
  %arrayidx250 = getelementptr inbounds i32* %70, i64 %26
  %71 = load i32* %arrayidx250, align 4, !tbaa !3
  %arrayidx254 = getelementptr inbounds i32* %70, i64 %indvars.iv
  store i32 %71, i32* %arrayidx254, align 4, !tbaa !3
  br label %if.end255

if.end255:                                        ; preds = %if.then241, %if.end223
  %72 = load i32* %M, align 4, !tbaa !3
  %73 = trunc i64 %indvars.iv to i32
  %cmp257 = icmp slt i32 %73, %72
  br i1 %cmp257, label %if.then259, label %for.inc348

if.then259:                                       ; preds = %if.end255
  %arrayidx263 = getelementptr inbounds i32* %22, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx263, align 4, !tbaa !3
  %arrayidx267 = getelementptr inbounds i32* %.pre893, i64 %indvars.iv
  %74 = load i32* %arrayidx267, align 4, !tbaa !3
  %arrayidx270 = getelementptr inbounds i32** %.pre894, i64 1
  %75 = load i32** %arrayidx270, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i32* %75, i64 %indvars.iv
  %76 = load i32* %arrayidx271, align 4, !tbaa !3
  %add272 = add nsw i32 %76, %74
  %cmp273 = icmp sgt i32 %add272, -987654321
  br i1 %cmp273, label %if.then275, label %if.end288

if.then275:                                       ; preds = %if.then259
  store i32 %add272, i32* %arrayidx263, align 4, !tbaa !3
  %77 = load i32** %arrayidx71, align 8, !tbaa !0
  %arrayidx283 = getelementptr inbounds i32* %77, i64 %indvars.iv
  %78 = load i32* %arrayidx283, align 4, !tbaa !3
  %79 = load i32** %arrayidx286, align 8, !tbaa !0
  %arrayidx287 = getelementptr inbounds i32* %79, i64 %indvars.iv
  store i32 %78, i32* %arrayidx287, align 4, !tbaa !3
  %.pre899 = load i32* %arrayidx263, align 4, !tbaa !3
  br label %if.end288

if.end288:                                        ; preds = %if.then259, %if.then275
  %80 = phi i32 [ %.pre899, %if.then275 ], [ -987654321, %if.then259 ]
  %arrayidx292 = getelementptr inbounds i32* %33, i64 %indvars.iv
  %81 = load i32* %arrayidx292, align 4, !tbaa !3
  %arrayidx295 = getelementptr inbounds i32** %.pre894, i64 4
  %82 = load i32** %arrayidx295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i32* %82, i64 %indvars.iv
  %83 = load i32* %arrayidx296, align 4, !tbaa !3
  %add297 = add nsw i32 %83, %81
  %cmp302 = icmp sgt i32 %add297, %80
  br i1 %cmp302, label %if.then304, label %if.end317

if.then304:                                       ; preds = %if.end288
  store i32 %add297, i32* %arrayidx263, align 4, !tbaa !3
  %84 = load i32** %arrayidx102, align 8, !tbaa !0
  %arrayidx312 = getelementptr inbounds i32* %84, i64 %indvars.iv
  %85 = load i32* %arrayidx312, align 4, !tbaa !3
  %86 = load i32** %arrayidx286, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i32* %86, i64 %indvars.iv
  store i32 %85, i32* %arrayidx316, align 4, !tbaa !3
  br label %if.end317

if.end317:                                        ; preds = %if.end288, %if.then304
  %87 = load i8* %arrayidx166, align 1, !tbaa !1
  %idxprom322 = sext i8 %87 to i64
  %88 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds i32** %88, i64 %idxprom322
  %89 = load i32** %arrayidx323, align 8, !tbaa !0
  %arrayidx324 = getelementptr inbounds i32* %89, i64 %indvars.iv
  %90 = load i32* %arrayidx324, align 4, !tbaa !3
  %cmp325 = icmp eq i32 %90, -987654321
  br i1 %cmp325, label %if.else341, label %if.then327

if.then327:                                       ; preds = %if.end317
  %91 = load i32* %arrayidx263, align 4, !tbaa !3
  %add340 = add nsw i32 %91, %90
  store i32 %add340, i32* %arrayidx263, align 4, !tbaa !3
  br label %for.inc348

if.else341:                                       ; preds = %if.end317
  store i32 -987654321, i32* %arrayidx263, align 4, !tbaa !3
  br label %for.inc348

for.inc348:                                       ; preds = %if.end255, %if.else341, %if.then327
  %indvars.iv.next = add i64 %indvars.iv, 1
  %92 = load i32* %M, align 4, !tbaa !3
  %cmp46 = icmp slt i32 %73, %92
  br i1 %cmp46, label %for.body48, label %for.end350

for.end350:                                       ; preds = %for.inc348, %for.body34.for.end350_crit_edge
  %93 = phi i32* [ %.pre900, %for.body34.for.end350_crit_edge ], [ %41, %for.inc348 ]
  %arrayidx352 = getelementptr inbounds i32** %1, i64 %idxprom35
  %94 = load i32** %arrayidx352, align 8, !tbaa !0
  %arrayidx353 = getelementptr inbounds i32* %94, i64 4
  store i32 -987654321, i32* %arrayidx353, align 4, !tbaa !3
  %idxprom354 = zext i1 %lnot to i64
  %arrayidx356 = getelementptr inbounds i32* %93, i64 4
  %95 = load i32* %arrayidx356, align 4, !tbaa !3
  %96 = load i32* %arrayidx359, align 4, !tbaa !3
  %add360 = add nsw i32 %96, %95
  %cmp361 = icmp sgt i32 %add360, -987654321
  %add360. = select i1 %cmp361, i32 %add360, i32 -987654321
  store i32 %add360., i32* %arrayidx353, align 4, !tbaa !3
  %arrayidx370 = getelementptr inbounds i32* %94, i64 1
  store i32 -987654321, i32* %arrayidx370, align 4, !tbaa !3
  %97 = load i32* %M, align 4, !tbaa !3
  %cmp373874 = icmp slt i32 %97, 1
  br i1 %cmp373874, label %for.end401, label %for.body375.lr.ph

for.body375.lr.ph:                                ; preds = %for.end350
  %98 = load i32** %esc, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i32** %7, i64 %idxprom35
  %arrayidx397 = getelementptr inbounds i32* %11, i64 %indvars.iv884
  br label %for.body375

for.body375:                                      ; preds = %for.inc399.for.body375_crit_edge, %for.body375.lr.ph
  %99 = phi i32 [ %.pre, %for.inc399.for.body375_crit_edge ], [ -987654321, %for.body375.lr.ph ]
  %100 = phi i32 [ %105, %for.inc399.for.body375_crit_edge ], [ %97, %for.body375.lr.ph ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %for.inc399.for.body375_crit_edge ], [ 1, %for.body375.lr.ph ]
  %arrayidx379 = getelementptr inbounds i32* %23, i64 %indvars.iv882
  %101 = load i32* %arrayidx379, align 4, !tbaa !3
  %arrayidx381 = getelementptr inbounds i32* %98, i64 %indvars.iv882
  %102 = load i32* %arrayidx381, align 4, !tbaa !3
  %add382 = add nsw i32 %102, %101
  %cmp386 = icmp sgt i32 %add382, %99
  br i1 %cmp386, label %if.then388, label %for.inc399

if.then388:                                       ; preds = %for.body375
  store i32 %add382, i32* %arrayidx370, align 4, !tbaa !3
  %103 = load i32** %arrayidx394, align 8, !tbaa !0
  %arrayidx395 = getelementptr inbounds i32* %103, i64 %indvars.iv882
  %104 = load i32* %arrayidx395, align 4, !tbaa !3
  store i32 %104, i32* %arrayidx397, align 4, !tbaa !3
  %.pre892 = load i32* %M, align 4, !tbaa !3
  br label %for.inc399

for.inc399:                                       ; preds = %for.body375, %if.then388
  %105 = phi i32 [ %100, %for.body375 ], [ %.pre892, %if.then388 ]
  %106 = trunc i64 %indvars.iv882 to i32
  %cmp373 = icmp slt i32 %106, %105
  br i1 %cmp373, label %for.inc399.for.body375_crit_edge, label %for.end401

for.inc399.for.body375_crit_edge:                 ; preds = %for.inc399
  %indvars.iv.next883 = add i64 %indvars.iv882, 1
  %.pre = load i32* %arrayidx370, align 4, !tbaa !3
  br label %for.body375

for.end401:                                       ; preds = %for.inc399, %for.end350
  %arrayidx404 = getelementptr inbounds i32* %94, i64 3
  store i32 -987654321, i32* %arrayidx404, align 4, !tbaa !3
  %arrayidx407 = getelementptr inbounds i32* %93, i64 3
  %107 = load i32* %arrayidx407, align 4, !tbaa !3
  %108 = load i32* %arrayidx410, align 4, !tbaa !3
  %add411 = add nsw i32 %108, %107
  %cmp412 = icmp sgt i32 %add411, -987654321
  br i1 %cmp412, label %if.then414, label %if.end424

if.then414:                                       ; preds = %for.end401
  store i32 %add411, i32* %arrayidx404, align 4, !tbaa !3
  %arrayidx419 = getelementptr inbounds i32** %6, i64 %idxprom354
  %109 = load i32** %arrayidx419, align 8, !tbaa !0
  %arrayidx420 = getelementptr inbounds i32* %109, i64 3
  %110 = load i32* %arrayidx420, align 4, !tbaa !3
  %arrayidx422 = getelementptr inbounds i32** %6, i64 %idxprom35
  %111 = load i32** %arrayidx422, align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds i32* %111, i64 3
  store i32 %110, i32* %arrayidx423, align 4, !tbaa !3
  %.pre889 = load i32* %arrayidx404, align 4, !tbaa !3
  br label %if.end424

if.end424:                                        ; preds = %for.end401, %if.then414
  %112 = phi i32 [ %.pre889, %if.then414 ], [ -987654321, %for.end401 ]
  %113 = load i32* %arrayidx370, align 4, !tbaa !3
  %114 = load i32* %arrayidx430, align 4, !tbaa !3
  %add431 = add nsw i32 %114, %113
  %cmp435 = icmp sgt i32 %add431, %112
  br i1 %cmp435, label %if.then437, label %if.end444

if.then437:                                       ; preds = %if.end424
  store i32 %add431, i32* %arrayidx404, align 4, !tbaa !3
  %arrayidx442 = getelementptr inbounds i32** %6, i64 %idxprom35
  %115 = load i32** %arrayidx442, align 8, !tbaa !0
  %arrayidx443 = getelementptr inbounds i32* %115, i64 3
  store i32 %20, i32* %arrayidx443, align 4, !tbaa !3
  br label %if.end444

if.end444:                                        ; preds = %if.end424, %if.then437
  store i32 -987654321, i32* %94, align 4, !tbaa !3
  %116 = load i32* %arrayidx353, align 4, !tbaa !3
  %117 = load i32* %arrayidx10, align 4, !tbaa !3
  %add454 = add nsw i32 %117, %116
  %cmp455 = icmp sgt i32 %add454, -987654321
  br i1 %cmp455, label %if.then457, label %if.end463

if.then457:                                       ; preds = %if.end444
  store i32 %add454, i32* %94, align 4, !tbaa !3
  %arrayidx462 = getelementptr inbounds i32* %10, i64 %indvars.iv884
  store i32 0, i32* %arrayidx462, align 4, !tbaa !3
  %.pre890 = load i32* %94, align 4, !tbaa !3
  br label %if.end463

if.end463:                                        ; preds = %if.end444, %if.then457
  %118 = phi i32 [ %.pre890, %if.then457 ], [ -987654321, %if.end444 ]
  %119 = load i32* %arrayidx404, align 4, !tbaa !3
  %120 = load i32* %arrayidx469, align 4, !tbaa !3
  %add470 = add nsw i32 %120, %119
  %cmp474 = icmp sgt i32 %add470, %118
  br i1 %cmp474, label %if.then476, label %if.end485

if.then476:                                       ; preds = %if.end463
  store i32 %add470, i32* %94, align 4, !tbaa !3
  %arrayidx481 = getelementptr inbounds i32** %6, i64 %idxprom35
  %121 = load i32** %arrayidx481, align 8, !tbaa !0
  %arrayidx482 = getelementptr inbounds i32* %121, i64 3
  %122 = load i32* %arrayidx482, align 4, !tbaa !3
  %arrayidx484 = getelementptr inbounds i32* %10, i64 %indvars.iv884
  store i32 %122, i32* %arrayidx484, align 4, !tbaa !3
  br label %if.end485

if.end485:                                        ; preds = %if.then476, %if.end463
  %arrayidx488 = getelementptr inbounds i32* %94, i64 2
  store i32 -987654321, i32* %arrayidx488, align 4, !tbaa !3
  %arrayidx491 = getelementptr inbounds i32* %93, i64 2
  %123 = load i32* %arrayidx491, align 4, !tbaa !3
  %124 = load i32* %arrayidx494, align 4, !tbaa !3
  %add495 = add nsw i32 %124, %123
  %cmp496 = icmp sgt i32 %add495, -987654321
  br i1 %cmp496, label %if.then498, label %if.end508

if.then498:                                       ; preds = %if.end485
  store i32 %add495, i32* %arrayidx488, align 4, !tbaa !3
  %arrayidx503 = getelementptr inbounds i32** %6, i64 %idxprom354
  %125 = load i32** %arrayidx503, align 8, !tbaa !0
  %arrayidx504 = getelementptr inbounds i32* %125, i64 2
  %126 = load i32* %arrayidx504, align 4, !tbaa !3
  %arrayidx506 = getelementptr inbounds i32** %6, i64 %idxprom35
  %127 = load i32** %arrayidx506, align 8, !tbaa !0
  %arrayidx507 = getelementptr inbounds i32* %127, i64 2
  store i32 %126, i32* %arrayidx507, align 4, !tbaa !3
  %.pre891 = load i32* %arrayidx488, align 4, !tbaa !3
  br label %if.end508

if.end508:                                        ; preds = %if.end485, %if.then498
  %128 = phi i32 [ %.pre891, %if.then498 ], [ -987654321, %if.end485 ]
  %129 = load i32* %arrayidx370, align 4, !tbaa !3
  %130 = load i32* %arrayidx514, align 4, !tbaa !3
  %add515 = add nsw i32 %130, %129
  %cmp519 = icmp sgt i32 %add515, %128
  br i1 %cmp519, label %if.then521, label %for.inc529

if.then521:                                       ; preds = %if.end508
  store i32 %add515, i32* %arrayidx488, align 4, !tbaa !3
  %arrayidx526 = getelementptr inbounds i32** %6, i64 %idxprom35
  %131 = load i32** %arrayidx526, align 8, !tbaa !0
  %arrayidx527 = getelementptr inbounds i32* %131, i64 2
  store i32 %20, i32* %arrayidx527, align 4, !tbaa !3
  br label %for.inc529

for.inc529:                                       ; preds = %if.end508, %if.then521
  %indvars.iv.next885 = add i64 %indvars.iv884, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next885 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.end531, label %for.body34

for.end531:                                       ; preds = %for.inc529, %for.cond31.preheader
  %132 = phi i32* [ %12, %for.cond31.preheader ], [ %94, %for.inc529 ]
  %arrayidx534 = getelementptr inbounds i32* %132, i64 2
  %133 = load i32* %arrayidx534, align 4, !tbaa !3
  %arrayidx537 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %134 = load i32* %arrayidx537, align 4, !tbaa !3
  %add538 = add nsw i32 %134, %133
  call void @P7AllocTrace(i32 2, %struct.p7trace_s** %tr) #5
  %135 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %135, i64 0, i32 1
  %136 = load i8** %statetype, align 8, !tbaa !0
  store i8 9, i8* %136, align 1, !tbaa !1
  %137 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %pos = getelementptr inbounds %struct.p7trace_s* %137, i64 0, i32 3
  %138 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %138, align 4, !tbaa !3
  %rem543 = srem i32 %L, 2
  %idxprom544 = sext i32 %rem543 to i64
  %arrayidx545 = getelementptr inbounds i32** %6, i64 %idxprom544
  %139 = load i32** %arrayidx545, align 8, !tbaa !0
  %arrayidx546 = getelementptr inbounds i32* %139, i64 2
  %i.1867 = load i32* %arrayidx546, align 4
  %cmp547868 = icmp sgt i32 %i.1867, 0
  br i1 %cmp547868, label %while.body, label %while.end

while.body:                                       ; preds = %for.end531, %while.body
  %140 = phi %struct.p7trace_s* [ %147, %while.body ], [ %137, %for.end531 ]
  %i.1871 = phi i32 [ %i.1, %while.body ], [ %i.1867, %for.end531 ]
  %curralloc.0870 = phi i32 [ %add549, %while.body ], [ 2, %for.end531 ]
  %tpos.0869 = phi i32 [ %phitmp806, %while.body ], [ 1, %for.end531 ]
  %add549 = add nsw i32 %curralloc.0870, 2
  call void @P7ReallocTrace(%struct.p7trace_s* %140, i32 %add549) #5
  %idxprom551 = sext i32 %tpos.0869 to i64
  %141 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype552 = getelementptr inbounds %struct.p7trace_s* %141, i64 0, i32 1
  %142 = load i8** %statetype552, align 8, !tbaa !0
  %arrayidx553 = getelementptr inbounds i8* %142, i64 %idxprom551
  store i8 7, i8* %arrayidx553, align 1, !tbaa !1
  %143 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %pos555 = getelementptr inbounds %struct.p7trace_s* %143, i64 0, i32 3
  %144 = load i32** %pos555, align 8, !tbaa !0
  %arrayidx556 = getelementptr inbounds i32* %144, i64 %idxprom551
  store i32 %i.1871, i32* %arrayidx556, align 4, !tbaa !3
  %idxprom557 = sext i32 %i.1871 to i64
  %arrayidx558 = getelementptr inbounds i32* %11, i64 %idxprom557
  %145 = load i32* %arrayidx558, align 4, !tbaa !3
  %inc559 = add nsw i32 %tpos.0869, 1
  %idxprom560 = sext i32 %inc559 to i64
  %statetype561 = getelementptr inbounds %struct.p7trace_s* %143, i64 0, i32 1
  %146 = load i8** %statetype561, align 8, !tbaa !0
  %arrayidx562 = getelementptr inbounds i8* %146, i64 %idxprom560
  store i8 6, i8* %arrayidx562, align 1, !tbaa !1
  %147 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %pos564 = getelementptr inbounds %struct.p7trace_s* %147, i64 0, i32 3
  %148 = load i32** %pos564, align 8, !tbaa !0
  %arrayidx565 = getelementptr inbounds i32* %148, i64 %idxprom560
  store i32 %145, i32* %arrayidx565, align 4, !tbaa !3
  %idxprom566 = sext i32 %145 to i64
  %arrayidx567 = getelementptr inbounds i32* %10, i64 %idxprom566
  %phitmp806 = add i32 %tpos.0869, 2
  %i.1 = load i32* %arrayidx567, align 4
  %cmp547 = icmp sgt i32 %i.1, 0
  br i1 %cmp547, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end531
  %149 = phi %struct.p7trace_s* [ %137, %for.end531 ], [ %147, %while.body ]
  %tpos.0.lcssa = phi i32 [ 1, %for.end531 ], [ %phitmp806, %while.body ]
  %idxprom569 = sext i32 %tpos.0.lcssa to i64
  %statetype570 = getelementptr inbounds %struct.p7trace_s* %149, i64 0, i32 1
  %150 = load i8** %statetype570, align 8, !tbaa !0
  %arrayidx571 = getelementptr inbounds i8* %150, i64 %idxprom569
  store i8 4, i8* %arrayidx571, align 1, !tbaa !1
  %151 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %pos573 = getelementptr inbounds %struct.p7trace_s* %151, i64 0, i32 3
  %152 = load i32** %pos573, align 8, !tbaa !0
  %arrayidx574 = getelementptr inbounds i32* %152, i64 %idxprom569
  store i32 0, i32* %arrayidx574, align 4, !tbaa !3
  %add575 = add nsw i32 %tpos.0.lcssa, 1
  %tlen = getelementptr inbounds %struct.p7trace_s* %151, i64 0, i32 0
  store i32 %add575, i32* %tlen, align 4, !tbaa !3
  call void @P7ReverseTrace(%struct.p7trace_s* %151) #5
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #6
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i807) #6
  call void @free(i8* %call3) #5
  call void @free(i8* %call7) #5
  %153 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  store %struct.p7trace_s* %153, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  %call576 = call float @Scorify(i32 %add538) #5
  ret float %call576
}

; Function Attrs: nounwind optsize uwtable
define float @P7WeeViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %add = add i32 %L, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1282, i64 %mul) #5
  %0 = bitcast i8* %call to i32*
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1283, i64 %conv) #5
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1284, i64 %mul) #5
  %1 = bitcast i8* %call8 to i32*
  %call12 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 1285, i64 %mul) #5
  %2 = bitcast i8* %call12 to i32*
  store i32 1, i32* %2, align 4, !tbaa !3
  store i32 %L, i32* %1, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %arrayidx15 to i32*
  store i32 1, i32* %3, align 4, !tbaa !3
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %4 = load i32* %M, align 4, !tbaa !3
  %idxprom16 = sext i32 %L to i64
  %arrayidx17 = getelementptr inbounds i32* %0, i64 %idxprom16
  store i32 %4, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i8* %call4, i64 1
  store i8 4, i8* %arrayidx18, align 1, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8* %call4, i64 %idxprom16
  store i8 9, i8* %arrayidx20, align 1, !tbaa !1
  %tsc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %esc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %arrayidx145.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %arrayidx162.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %isc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %bsc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %msc.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %arrayidx569.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx634.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx738.i = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  br label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %ret_sc.0704 = phi float [ undef, %entry ], [ %ret_sc.1, %while.cond.backedge ]
  %lpos.0703 = phi i32 [ 0, %entry ], [ %lpos.2, %while.cond.backedge ]
  %idxprom22 = sext i32 %lpos.0703 to i64
  %arrayidx23 = getelementptr inbounds i32* %2, i64 %idxprom22
  %5 = load i32* %arrayidx23, align 4, !tbaa !3
  %idxprom24 = sext i32 %5 to i64
  %arrayidx25 = getelementptr inbounds i32* %0, i64 %idxprom24
  %6 = load i32* %arrayidx25, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i8* %call4, i64 %idxprom24
  %7 = load i8* %arrayidx27, align 1, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32* %1, i64 %idxprom22
  %8 = load i32* %arrayidx29, align 4, !tbaa !3
  %idxprom30 = sext i32 %8 to i64
  %arrayidx31 = getelementptr inbounds i32* %0, i64 %idxprom30
  %9 = load i32* %arrayidx31, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds i8* %call4, i64 %idxprom30
  %10 = load i8* %arrayidx33, align 1, !tbaa !1
  %dec = add nsw i32 %lpos.0703, -1
  %sub.i = sub nsw i32 %8, %5
  %div.i = sdiv i32 %sub.i, 2
  %cmp.i = icmp eq i32 %sub.i, 1
  %cmp2.i = icmp eq i8 %7, 4
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  %add.i = select i1 %or.cond.i, i32 0, i32 %div.i
  %s2.0.i = add nsw i32 %add.i, %5
  %cmp9.i = icmp eq i8 %10, 9
  %or.cond1.i = and i1 %cmp.i, %cmp9.i
  %s2.1.i = select i1 %or.cond1.i, i32 %8, i32 %s2.0.i
  %conv13.i = sext i8 %7 to i32
  %cond.i = select i1 %cmp2.i, i32 0, i32 %5
  %11 = load i32* %M, align 4, !tbaa !3
  %call.i.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %11, i32 0, i32 0) #5
  %xmx1.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 0
  %12 = load i32*** %xmx1.i.i, align 8, !tbaa !0
  %mmx4.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 1
  %13 = load i32*** %mmx4.i.i, align 8, !tbaa !0
  %imx8.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 2
  %14 = load i32*** %imx8.i.i, align 8, !tbaa !0
  %dmx12.i.i = getelementptr inbounds %struct.dpmatrix_s* %call.i.i, i64 0, i32 3
  %15 = load i32*** %dmx12.i.i, align 8, !tbaa !0
  %rem.i = srem i32 %cond.i, 2
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i = getelementptr inbounds i32** %12, i64 %idxprom.i
  %16 = load i32** %arrayidx.i, align 8, !tbaa !0
  store i32 -987654321, i32* %16, align 4, !tbaa !3
  %arrayidx19.i = getelementptr inbounds i32* %16, i64 4
  store i32 -987654321, i32* %arrayidx19.i, align 4, !tbaa !3
  %arrayidx22.i = getelementptr inbounds i32* %16, i64 2
  store i32 -987654321, i32* %arrayidx22.i, align 4, !tbaa !3
  %arrayidx25.i = getelementptr inbounds i32* %16, i64 1
  store i32 -987654321, i32* %arrayidx25.i, align 4, !tbaa !3
  %cmp26151.i = icmp sgt i32 %6, %9
  br i1 %cmp26151.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %while.body
  %arrayidx30.i = getelementptr inbounds i32** %15, i64 %idxprom.i
  %17 = load i32** %arrayidx30.i, align 8, !tbaa !0
  %arrayidx34.i = getelementptr inbounds i32** %14, i64 %idxprom.i
  %18 = load i32** %arrayidx34.i, align 8, !tbaa !0
  %arrayidx38.i = getelementptr inbounds i32** %13, i64 %idxprom.i
  %19 = load i32** %arrayidx38.i, align 8, !tbaa !0
  %20 = sext i32 %6 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv173.i = phi i64 [ %indvars.iv.next174.i, %for.body.i ], [ %20, %for.body.lr.ph.i ]
  %arrayidx31.i = getelementptr inbounds i32* %17, i64 %indvars.iv173.i
  store i32 -987654321, i32* %arrayidx31.i, align 4, !tbaa !3
  %arrayidx35.i = getelementptr inbounds i32* %18, i64 %indvars.iv173.i
  store i32 -987654321, i32* %arrayidx35.i, align 4, !tbaa !3
  %arrayidx39.i = getelementptr inbounds i32* %19, i64 %indvars.iv173.i
  store i32 -987654321, i32* %arrayidx39.i, align 4, !tbaa !3
  %indvars.iv.next174.i = add i64 %indvars.iv173.i, 1
  %21 = trunc i64 %indvars.iv173.i to i32
  %cmp26.i = icmp slt i32 %21, %9
  br i1 %cmp26.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %while.body
  switch i32 %conv13.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb45.i
    i32 5, label %sw.bb50.i
    i32 8, label %sw.bb54.i
    i32 4, label %sw.bb58.i
  ]

sw.bb.i:                                          ; preds = %for.end.i
  %idxprom41.i = sext i32 %6 to i64
  %arrayidx43.i = getelementptr inbounds i32** %13, i64 %idxprom.i
  %22 = load i32** %arrayidx43.i, align 8, !tbaa !0
  %arrayidx44.i = getelementptr inbounds i32* %22, i64 %idxprom41.i
  store i32 0, i32* %arrayidx44.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %for.end.i
  %idxprom46.i = sext i32 %6 to i64
  %arrayidx48.i = getelementptr inbounds i32** %14, i64 %idxprom.i
  %23 = load i32** %arrayidx48.i, align 8, !tbaa !0
  %arrayidx49.i = getelementptr inbounds i32* %23, i64 %idxprom46.i
  store i32 0, i32* %arrayidx49.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx19.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx22.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.bb58.i:                                        ; preds = %for.end.i
  store i32 0, i32* %arrayidx19.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.end.i
  %call62.i = call i8* @Statetype(i8 signext %7) #5
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i8* %call62.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb58.i, %sw.bb54.i, %sw.bb50.i, %sw.bb45.i, %sw.bb.i
  %cmp64.i = icmp eq i8 %7, 1
  br i1 %cmp64.i, label %for.cond68.preheader.i, label %sw.epilog.if.end137_crit_edge.i

sw.epilog.if.end137_crit_edge.i:                  ; preds = %sw.epilog.i
  %.pre179.i = load i32** %arrayidx.i, align 8, !tbaa !0
  %arrayidx159.i.phi.trans.insert = getelementptr inbounds i32* %.pre179.i, i64 1
  %.pre729 = load i32* %arrayidx159.i.phi.trans.insert, align 4, !tbaa !3
  br label %if.end137.i

for.cond68.preheader.i:                           ; preds = %sw.epilog.i
  %cmp69148.i = icmp slt i32 %6, %9
  br i1 %cmp69148.i, label %for.body71.lr.ph.i, label %for.cond68.preheader.for.end119_crit_edge.i

for.cond68.preheader.for.end119_crit_edge.i:      ; preds = %for.cond68.preheader.i
  %arrayidx125.phi.trans.insert.i = getelementptr inbounds i32** %13, i64 %idxprom.i
  %.pre182.i = load i32** %arrayidx125.phi.trans.insert.i, align 8, !tbaa !0
  %idxprom123.pre.i = sext i32 %6 to i64
  br label %for.end119.i

for.body71.lr.ph.i:                               ; preds = %for.cond68.preheader.i
  %arrayidx74.i = getelementptr inbounds i32** %15, i64 %idxprom.i
  %24 = load i32** %arrayidx74.i, align 8, !tbaa !0
  %arrayidx79.i = getelementptr inbounds i32** %13, i64 %idxprom.i
  %25 = load i32** %arrayidx79.i, align 8, !tbaa !0
  %26 = load i32*** %tsc.i, align 8, !tbaa !0
  %arrayidx83.i = getelementptr inbounds i32** %26, i64 2
  %27 = load i32** %arrayidx83.i, align 8, !tbaa !0
  %arrayidx102.i = getelementptr inbounds i32** %26, i64 6
  %28 = load i32** %arrayidx102.i, align 8, !tbaa !0
  %29 = sext i32 %6 to i64
  %arrayidx98.i.phi.trans.insert = getelementptr inbounds i32* %24, i64 %29
  %.pre = load i32* %arrayidx98.i.phi.trans.insert, align 4, !tbaa !3
  br label %for.body71.i

for.body71.i:                                     ; preds = %for.body71.i, %for.body71.lr.ph.i
  %30 = phi i32 [ %.pre, %for.body71.lr.ph.i ], [ %add104.add85..i, %for.body71.i ]
  %indvars.iv171.i = phi i64 [ %29, %for.body71.lr.ph.i ], [ %indvars.iv.next172.i, %for.body71.i ]
  %indvars.iv.next172.i = add i64 %indvars.iv171.i, 1
  %arrayidx75.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next172.i
  store i32 -987654321, i32* %arrayidx75.i, align 4, !tbaa !3
  %arrayidx80.i = getelementptr inbounds i32* %25, i64 %indvars.iv171.i
  %31 = load i32* %arrayidx80.i, align 4, !tbaa !3
  %arrayidx84.i = getelementptr inbounds i32* %27, i64 %indvars.iv171.i
  %32 = load i32* %arrayidx84.i, align 4, !tbaa !3
  %add85.i = add nsw i32 %32, %31
  %cmp86.i = icmp sgt i32 %add85.i, -987654321
  %add85..i = select i1 %cmp86.i, i32 %add85.i, i32 -987654321
  store i32 %add85..i, i32* %arrayidx75.i, align 4, !tbaa !3
  %arrayidx103.i = getelementptr inbounds i32* %28, i64 %indvars.iv171.i
  %33 = load i32* %arrayidx103.i, align 4, !tbaa !3
  %add104.i = add nsw i32 %33, %30
  %cmp109.i = icmp sgt i32 %add104.i, %add85..i
  %add104.add85..i = select i1 %cmp109.i, i32 %add104.i, i32 %add85..i
  store i32 %add104.add85..i, i32* %arrayidx75.i, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv.next172.i to i32
  %cmp69.i = icmp slt i32 %34, %9
  br i1 %cmp69.i, label %for.body71.i, label %for.end119.i

for.end119.i:                                     ; preds = %for.body71.i, %for.cond68.preheader.for.end119_crit_edge.i
  %idxprom123.pre-phi.i = phi i64 [ %idxprom123.pre.i, %for.cond68.preheader.for.end119_crit_edge.i ], [ %29, %for.body71.i ]
  %35 = phi i32* [ %.pre182.i, %for.cond68.preheader.for.end119_crit_edge.i ], [ %25, %for.body71.i ]
  %36 = load i32** %arrayidx.i, align 8, !tbaa !0
  %arrayidx122.i = getelementptr inbounds i32* %36, i64 1
  store i32 -987654321, i32* %arrayidx122.i, align 4, !tbaa !3
  %arrayidx126.i = getelementptr inbounds i32* %35, i64 %idxprom123.pre-phi.i
  %37 = load i32* %arrayidx126.i, align 4, !tbaa !3
  %38 = load i32** %esc.i, align 8, !tbaa !0
  %arrayidx128.i = getelementptr inbounds i32* %38, i64 %idxprom123.pre-phi.i
  %39 = load i32* %arrayidx128.i, align 4, !tbaa !3
  %add129.i = add nsw i32 %39, %37
  %cmp130.i = icmp sgt i32 %add129.i, -987654321
  %add129.i. = select i1 %cmp130.i, i32 %add129.i, i32 -987654321
  store i32 %add129.i., i32* %arrayidx122.i, align 4, !tbaa !3
  %add129.i.737 = select i1 %cmp130.i, i32 %add129.i, i32 -987654321
  br label %if.end137.i

if.end137.i:                                      ; preds = %for.end119.i, %sw.epilog.if.end137_crit_edge.i
  %40 = phi i32 [ %.pre729, %sw.epilog.if.end137_crit_edge.i ], [ %add129.i.737, %for.end119.i ]
  %41 = phi i32* [ %.pre179.i, %sw.epilog.if.end137_crit_edge.i ], [ %36, %for.end119.i ]
  store i32 -987654321, i32* %41, align 4, !tbaa !3
  %arrayidx143.i = getelementptr inbounds i32* %41, i64 4
  %42 = load i32* %arrayidx143.i, align 4, !tbaa !3
  %43 = load i32* %arrayidx145.i, align 4, !tbaa !3
  %add146.i = add nsw i32 %43, %42
  %cmp147.i = icmp sgt i32 %add146.i, -987654321
  %add146..i = select i1 %cmp147.i, i32 %add146.i, i32 -987654321
  store i32 %add146..i, i32* %41, align 4, !tbaa !3
  %arrayidx156.i = getelementptr inbounds i32* %41, i64 2
  store i32 -987654321, i32* %arrayidx156.i, align 4, !tbaa !3
  %44 = load i32* %arrayidx162.i, align 4, !tbaa !3
  %add163.i = add nsw i32 %44, %40
  %cmp164.i = icmp sgt i32 %add163.i, -987654321
  %add163..i = select i1 %cmp164.i, i32 %add163.i, i32 -987654321
  store i32 %add163..i, i32* %arrayidx156.i, align 4, !tbaa !3
  %cmp173145.i = icmp slt i32 %cond.i, %s2.1.i
  br i1 %cmp173145.i, label %for.body175.lr.ph.i, label %for.end662.i

for.body175.lr.ph.i:                              ; preds = %if.end137.i
  %idxprom177.i = sext i32 %6 to i64
  %cmp309139.i = icmp slt i32 %6, %9
  %45 = sext i32 %cond.i to i64
  br label %for.body175.i

for.body175.i:                                    ; preds = %for.end608.i, %for.body175.lr.ph.i
  %indvars.iv169.i = phi i64 [ %45, %for.body175.lr.ph.i ], [ %indvars.iv.next170.i, %for.end608.i ]
  %indvars.iv.next170.i = add i64 %indvars.iv169.i, 1
  %46 = trunc i64 %indvars.iv.next170.i to i32
  %rem176.i = srem i32 %46, 2
  %lnot.i = icmp eq i32 %rem176.i, 0
  %idxprom178.i = sext i32 %rem176.i to i64
  %arrayidx179.i = getelementptr inbounds i32** %15, i64 %idxprom178.i
  %47 = load i32** %arrayidx179.i, align 8, !tbaa !0
  %arrayidx180.i = getelementptr inbounds i32* %47, i64 %idxprom177.i
  store i32 -987654321, i32* %arrayidx180.i, align 4, !tbaa !3
  %arrayidx183.i = getelementptr inbounds i32** %14, i64 %idxprom178.i
  %48 = load i32** %arrayidx183.i, align 8, !tbaa !0
  %arrayidx184.i = getelementptr inbounds i32* %48, i64 %idxprom177.i
  store i32 -987654321, i32* %arrayidx184.i, align 4, !tbaa !3
  %arrayidx187.i = getelementptr inbounds i32** %13, i64 %idxprom178.i
  %49 = load i32** %arrayidx187.i, align 8, !tbaa !0
  %arrayidx188.i = getelementptr inbounds i32* %49, i64 %idxprom177.i
  store i32 -987654321, i32* %arrayidx188.i, align 4, !tbaa !3
  %50 = load i32* %M, align 4, !tbaa !3
  %cmp190.i = icmp sgt i32 %50, %6
  br i1 %cmp190.i, label %if.then192.i, label %for.body175.if.end263_crit_edge.i

for.body175.if.end263_crit_edge.i:                ; preds = %for.body175.i
  %idxprom264.pre.i = zext i1 %lnot.i to i64
  br label %if.end263.i

if.then192.i:                                     ; preds = %for.body175.i
  store i32 -987654321, i32* %arrayidx184.i, align 4, !tbaa !3
  %idxprom198.i = zext i1 %lnot.i to i64
  %arrayidx199.i = getelementptr inbounds i32** %13, i64 %idxprom198.i
  %51 = load i32** %arrayidx199.i, align 8, !tbaa !0
  %arrayidx200.i = getelementptr inbounds i32* %51, i64 %idxprom177.i
  %52 = load i32* %arrayidx200.i, align 4, !tbaa !3
  %53 = load i32*** %tsc.i, align 8, !tbaa !0
  %arrayidx203.i = getelementptr inbounds i32** %53, i64 1
  %54 = load i32** %arrayidx203.i, align 8, !tbaa !0
  %arrayidx204.i = getelementptr inbounds i32* %54, i64 %idxprom177.i
  %55 = load i32* %arrayidx204.i, align 4, !tbaa !3
  %add205.i = add nsw i32 %55, %52
  %cmp206.i = icmp sgt i32 %add205.i, -987654321
  br i1 %cmp206.i, label %if.then208.i, label %if.end213.i

if.then208.i:                                     ; preds = %if.then192.i
  store i32 %add205.i, i32* %arrayidx184.i, align 4, !tbaa !3
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then208.i, %if.then192.i
  %56 = phi i32 [ %add205.i, %if.then208.i ], [ -987654321, %if.then192.i ]
  %arrayidx216.i = getelementptr inbounds i32** %14, i64 %idxprom198.i
  %57 = load i32** %arrayidx216.i, align 8, !tbaa !0
  %arrayidx217.i = getelementptr inbounds i32* %57, i64 %idxprom177.i
  %58 = load i32* %arrayidx217.i, align 4, !tbaa !3
  %arrayidx220.i = getelementptr inbounds i32** %53, i64 4
  %59 = load i32** %arrayidx220.i, align 8, !tbaa !0
  %arrayidx221.i = getelementptr inbounds i32* %59, i64 %idxprom177.i
  %60 = load i32* %arrayidx221.i, align 4, !tbaa !3
  %add222.i = add nsw i32 %60, %58
  %cmp227.i = icmp sgt i32 %add222.i, %56
  br i1 %cmp227.i, label %if.then229.i, label %if.end234.i

if.then229.i:                                     ; preds = %if.end213.i
  store i32 %add222.i, i32* %arrayidx184.i, align 4, !tbaa !3
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.end213.i, %if.then229.i
  %61 = phi i32 [ %add222.i, %if.then229.i ], [ %56, %if.end213.i ]
  %arrayidx237.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next170.i
  %62 = load i8* %arrayidx237.i, align 1, !tbaa !1
  %idxprom239.i = sext i8 %62 to i64
  %63 = load i32*** %isc.i, align 8, !tbaa !0
  %arrayidx240.i = getelementptr inbounds i32** %63, i64 %idxprom239.i
  %64 = load i32** %arrayidx240.i, align 8, !tbaa !0
  %arrayidx241.i = getelementptr inbounds i32* %64, i64 %idxprom177.i
  %65 = load i32* %arrayidx241.i, align 4, !tbaa !3
  %cmp242.i = icmp eq i32 %65, -987654321
  br i1 %cmp242.i, label %if.else.i, label %if.then244.i

if.then244.i:                                     ; preds = %if.end234.i
  %add257.i = add nsw i32 %65, %61
  store i32 %add257.i, i32* %arrayidx184.i, align 4, !tbaa !3
  br label %if.end263.i

if.else.i:                                        ; preds = %if.end234.i
  store i32 -987654321, i32* %arrayidx184.i, align 4, !tbaa !3
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else.i, %if.then244.i, %for.body175.if.end263_crit_edge.i
  %idxprom264.pre-phi.i = phi i64 [ %idxprom264.pre.i, %for.body175.if.end263_crit_edge.i ], [ %idxprom198.i, %if.then244.i ], [ %idxprom198.i, %if.else.i ]
  %arrayidx265.i = getelementptr inbounds i32** %12, i64 %idxprom264.pre-phi.i
  %66 = load i32** %arrayidx265.i, align 8, !tbaa !0
  %67 = load i32* %66, align 4, !tbaa !3
  %68 = load i32** %bsc.i, align 8, !tbaa !0
  %arrayidx268.i = getelementptr inbounds i32* %68, i64 %idxprom177.i
  %69 = load i32* %arrayidx268.i, align 4, !tbaa !3
  %add269.i = add nsw i32 %69, %67
  %cmp270.i = icmp sgt i32 %add269.i, -987654321
  br i1 %cmp270.i, label %if.then272.i, label %if.end277.i

if.then272.i:                                     ; preds = %if.end263.i
  store i32 %add269.i, i32* %arrayidx188.i, align 4, !tbaa !3
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.end263.i, %if.then272.i
  %arrayidx280.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next170.i
  %70 = load i8* %arrayidx280.i, align 1, !tbaa !1
  %idxprom282.i = sext i8 %70 to i64
  %71 = load i32*** %msc.i, align 8, !tbaa !0
  %arrayidx283.i = getelementptr inbounds i32** %71, i64 %idxprom282.i
  %72 = load i32** %arrayidx283.i, align 8, !tbaa !0
  %arrayidx284.i = getelementptr inbounds i32* %72, i64 %idxprom177.i
  %73 = load i32* %arrayidx284.i, align 4, !tbaa !3
  %cmp285.i = icmp eq i32 %73, -987654321
  br i1 %cmp285.i, label %for.cond308.preheader.i, label %if.then287.i

if.then287.i:                                     ; preds = %if.end277.i
  %74 = load i32* %arrayidx188.i, align 4, !tbaa !3
  %add300.i = add nsw i32 %74, %73
  br label %for.cond308.preheader.i

for.cond308.preheader.i:                          ; preds = %if.then287.i, %if.end277.i
  %storemerge153.i = phi i32 [ %add300.i, %if.then287.i ], [ -987654321, %if.end277.i ]
  store i32 %storemerge153.i, i32* %arrayidx188.i, align 4, !tbaa !3
  br i1 %cmp309139.i, label %for.body311.lr.ph.i, label %for.end560.i

for.body311.lr.ph.i:                              ; preds = %for.cond308.preheader.i
  %arrayidx319.i = getelementptr inbounds i32** %13, i64 %idxprom264.pre-phi.i
  %arrayidx338.i = getelementptr inbounds i32** %14, i64 %idxprom264.pre-phi.i
  %arrayidx380.i = getelementptr inbounds i32** %15, i64 %idxprom264.pre-phi.i
  %.pre177.i = load i32** %arrayidx319.i, align 8, !tbaa !0
  %.pre178.i = load i32*** %tsc.i, align 8, !tbaa !0
  %.pre181.i = load i32** %.pre178.i, align 8, !tbaa !0
  %arrayidx343.i = getelementptr inbounds i32** %.pre178.i, i64 3
  %arrayidx385.i = getelementptr inbounds i32** %.pre178.i, i64 5
  %arrayidx446.i = getelementptr inbounds i32** %.pre178.i, i64 2
  %arrayidx465.i = getelementptr inbounds i32** %.pre178.i, i64 6
  %arrayidx495.i = getelementptr inbounds i32** %.pre178.i, i64 1
  %arrayidx512.i = getelementptr inbounds i32** %.pre178.i, i64 4
  %.pre730 = load i32** %arrayidx338.i, align 8, !tbaa !0
  %.pre731 = load i32** %arrayidx343.i, align 8, !tbaa !0
  br label %for.body311.i

for.body311.i:                                    ; preds = %for.cond308.backedge.i, %for.body311.lr.ph.i
  %indvars.iv165.i = phi i64 [ %idxprom177.i, %for.body311.lr.ph.i ], [ %indvars.iv.next166.i, %for.cond308.backedge.i ]
  %indvars.iv.next166.i = add i64 %indvars.iv165.i, 1
  %arrayidx315.i = getelementptr inbounds i32* %49, i64 %indvars.iv.next166.i
  store i32 -987654321, i32* %arrayidx315.i, align 4, !tbaa !3
  %arrayidx320.i = getelementptr inbounds i32* %.pre177.i, i64 %indvars.iv165.i
  %75 = load i32* %arrayidx320.i, align 4, !tbaa !3
  %arrayidx325.i = getelementptr inbounds i32* %.pre181.i, i64 %indvars.iv165.i
  %76 = load i32* %arrayidx325.i, align 4, !tbaa !3
  %add326.i = add nsw i32 %76, %75
  %cmp327.i = icmp sgt i32 %add326.i, -987654321
  %add326..i = select i1 %cmp327.i, i32 %add326.i, i32 -987654321
  store i32 %add326..i, i32* %arrayidx315.i, align 4, !tbaa !3
  %arrayidx339.i = getelementptr inbounds i32* %.pre730, i64 %indvars.iv165.i
  %77 = load i32* %arrayidx339.i, align 4, !tbaa !3
  %arrayidx344.i = getelementptr inbounds i32* %.pre731, i64 %indvars.iv165.i
  %78 = load i32* %arrayidx344.i, align 4, !tbaa !3
  %add345.i = add nsw i32 %78, %77
  %cmp350.i = icmp sgt i32 %add345.i, %add326..i
  %add345.i.add326..i = select i1 %cmp350.i, i32 %add345.i, i32 %add326..i
  store i32 %add345.i.add326..i, i32* %arrayidx315.i, align 4, !tbaa !3
  %add345.i.add326..i738 = select i1 %cmp350.i, i32 %add345.i, i32 %add326..i
  %79 = load i32* %66, align 4, !tbaa !3
  %arrayidx363.i = getelementptr inbounds i32* %68, i64 %indvars.iv.next166.i
  %80 = load i32* %arrayidx363.i, align 4, !tbaa !3
  %add364.i = add nsw i32 %80, %79
  %cmp369.i = icmp sgt i32 %add364.i, %add345.i.add326..i738
  %add364.i.add345.i.add326..i = select i1 %cmp369.i, i32 %add364.i, i32 %add345.i.add326..i
  store i32 %add364.i.add345.i.add326..i, i32* %arrayidx315.i, align 4, !tbaa !3
  %add364.i.add345.i.add326..i738 = select i1 %cmp369.i, i32 %add364.i, i32 %add345.i.add326..i738
  %81 = load i32** %arrayidx380.i, align 8, !tbaa !0
  %arrayidx381.i = getelementptr inbounds i32* %81, i64 %indvars.iv165.i
  %82 = load i32* %arrayidx381.i, align 4, !tbaa !3
  %83 = load i32** %arrayidx385.i, align 8, !tbaa !0
  %arrayidx386.i = getelementptr inbounds i32* %83, i64 %indvars.iv165.i
  %84 = load i32* %arrayidx386.i, align 4, !tbaa !3
  %add387.i = add nsw i32 %84, %82
  %cmp392.i = icmp sgt i32 %add387.i, %add364.i.add345.i.add326..i738
  br i1 %cmp392.i, label %if.then394.i, label %if.end399.i

if.then394.i:                                     ; preds = %for.body311.i
  store i32 %add387.i, i32* %arrayidx315.i, align 4, !tbaa !3
  br label %if.end399.i

if.end399.i:                                      ; preds = %if.then394.i, %for.body311.i
  %85 = phi i32 [ %add387.i, %if.then394.i ], [ %add364.i.add345.i.add326..i738, %for.body311.i ]
  %86 = load i8* %arrayidx280.i, align 1, !tbaa !1
  %idxprom404.i = sext i8 %86 to i64
  %arrayidx406.i = getelementptr inbounds i32** %71, i64 %idxprom404.i
  %87 = load i32** %arrayidx406.i, align 8, !tbaa !0
  %arrayidx407.i = getelementptr inbounds i32* %87, i64 %indvars.iv.next166.i
  %88 = load i32* %arrayidx407.i, align 4, !tbaa !3
  %cmp408.i = icmp eq i32 %88, -987654321
  %add423.i = add nsw i32 %88, %85
  %storemerge.i = select i1 %cmp408.i, i32 -987654321, i32 %add423.i
  store i32 %storemerge.i, i32* %arrayidx315.i, align 4, !tbaa !3
  %arrayidx433.i = getelementptr inbounds i32* %47, i64 %indvars.iv.next166.i
  store i32 -987654321, i32* %arrayidx433.i, align 4, !tbaa !3
  %89 = load i32* %M, align 4, !tbaa !3
  %90 = trunc i64 %indvars.iv.next166.i to i32
  %cmp435.i = icmp slt i32 %90, %89
  br i1 %cmp435.i, label %if.then437.i, label %if.end480.i

if.then437.i:                                     ; preds = %if.end399.i
  %arrayidx442.i = getelementptr inbounds i32* %49, i64 %indvars.iv165.i
  %91 = load i32* %arrayidx442.i, align 4, !tbaa !3
  %92 = load i32** %arrayidx446.i, align 8, !tbaa !0
  %arrayidx447.i = getelementptr inbounds i32* %92, i64 %indvars.iv165.i
  %93 = load i32* %arrayidx447.i, align 4, !tbaa !3
  %add448.i = add nsw i32 %93, %91
  %cmp449.i = icmp sgt i32 %add448.i, -987654321
  br i1 %cmp449.i, label %if.then451.i, label %if.end456.i

if.then451.i:                                     ; preds = %if.then437.i
  store i32 %add448.i, i32* %arrayidx433.i, align 4, !tbaa !3
  br label %if.end456.i

if.end456.i:                                      ; preds = %if.then437.i, %if.then451.i
  %94 = phi i32 [ %add448.i, %if.then451.i ], [ -987654321, %if.then437.i ]
  %arrayidx461.i = getelementptr inbounds i32* %47, i64 %indvars.iv165.i
  %95 = load i32* %arrayidx461.i, align 4, !tbaa !3
  %96 = load i32** %arrayidx465.i, align 8, !tbaa !0
  %arrayidx466.i = getelementptr inbounds i32* %96, i64 %indvars.iv165.i
  %97 = load i32* %arrayidx466.i, align 4, !tbaa !3
  %add467.i = add nsw i32 %97, %95
  %cmp472.i = icmp sgt i32 %add467.i, %94
  br i1 %cmp472.i, label %if.then474.i, label %if.end480.i

if.then474.i:                                     ; preds = %if.end456.i
  store i32 %add467.i, i32* %arrayidx433.i, align 4, !tbaa !3
  br label %if.end480.i

if.end480.i:                                      ; preds = %if.then474.i, %if.end456.i, %if.end399.i
  %arrayidx484.i = getelementptr inbounds i32* %48, i64 %indvars.iv.next166.i
  store i32 -987654321, i32* %arrayidx484.i, align 4, !tbaa !3
  %98 = load i32* %M, align 4, !tbaa !3
  %cmp486.i = icmp slt i32 %90, %98
  br i1 %cmp486.i, label %if.then488.i, label %for.cond308.backedge.i

for.cond308.backedge.i:                           ; preds = %if.else551.i, %if.then537.i, %if.end480.i
  %cmp309.i = icmp slt i32 %90, %9
  br i1 %cmp309.i, label %for.body311.i, label %for.end560.i

if.then488.i:                                     ; preds = %if.end480.i
  %arrayidx492.i = getelementptr inbounds i32* %.pre177.i, i64 %indvars.iv.next166.i
  %99 = load i32* %arrayidx492.i, align 4, !tbaa !3
  %100 = load i32** %arrayidx495.i, align 8, !tbaa !0
  %arrayidx496.i = getelementptr inbounds i32* %100, i64 %indvars.iv.next166.i
  %101 = load i32* %arrayidx496.i, align 4, !tbaa !3
  %add497.i = add nsw i32 %101, %99
  %cmp498.i = icmp sgt i32 %add497.i, -987654321
  br i1 %cmp498.i, label %if.then500.i, label %if.end505.i

if.then500.i:                                     ; preds = %if.then488.i
  store i32 %add497.i, i32* %arrayidx484.i, align 4, !tbaa !3
  br label %if.end505.i

if.end505.i:                                      ; preds = %if.then488.i, %if.then500.i
  %102 = phi i32 [ %add497.i, %if.then500.i ], [ -987654321, %if.then488.i ]
  %arrayidx509.i = getelementptr inbounds i32* %.pre730, i64 %indvars.iv.next166.i
  %103 = load i32* %arrayidx509.i, align 4, !tbaa !3
  %104 = load i32** %arrayidx512.i, align 8, !tbaa !0
  %arrayidx513.i = getelementptr inbounds i32* %104, i64 %indvars.iv.next166.i
  %105 = load i32* %arrayidx513.i, align 4, !tbaa !3
  %add514.i = add nsw i32 %105, %103
  %cmp519.i = icmp sgt i32 %add514.i, %102
  br i1 %cmp519.i, label %if.then521.i, label %if.end526.i

if.then521.i:                                     ; preds = %if.end505.i
  store i32 %add514.i, i32* %arrayidx484.i, align 4, !tbaa !3
  br label %if.end526.i

if.end526.i:                                      ; preds = %if.end505.i, %if.then521.i
  %106 = phi i32 [ %add514.i, %if.then521.i ], [ %102, %if.end505.i ]
  %107 = load i8* %arrayidx280.i, align 1, !tbaa !1
  %idxprom531.i = sext i8 %107 to i64
  %108 = load i32*** %isc.i, align 8, !tbaa !0
  %arrayidx533.i = getelementptr inbounds i32** %108, i64 %idxprom531.i
  %109 = load i32** %arrayidx533.i, align 8, !tbaa !0
  %arrayidx534.i = getelementptr inbounds i32* %109, i64 %indvars.iv.next166.i
  %110 = load i32* %arrayidx534.i, align 4, !tbaa !3
  %cmp535.i = icmp eq i32 %110, -987654321
  br i1 %cmp535.i, label %if.else551.i, label %if.then537.i

if.then537.i:                                     ; preds = %if.end526.i
  %add550.i = add nsw i32 %110, %106
  store i32 %add550.i, i32* %arrayidx484.i, align 4, !tbaa !3
  br label %for.cond308.backedge.i

if.else551.i:                                     ; preds = %if.end526.i
  store i32 -987654321, i32* %arrayidx484.i, align 4, !tbaa !3
  br label %for.cond308.backedge.i

for.end560.i:                                     ; preds = %for.cond308.backedge.i, %for.cond308.preheader.i
  %arrayidx562.i = getelementptr inbounds i32** %12, i64 %idxprom178.i
  %111 = load i32** %arrayidx562.i, align 8, !tbaa !0
  %arrayidx563.i = getelementptr inbounds i32* %111, i64 4
  store i32 -987654321, i32* %arrayidx563.i, align 4, !tbaa !3
  %arrayidx566.i = getelementptr inbounds i32* %66, i64 4
  %112 = load i32* %arrayidx566.i, align 4, !tbaa !3
  %113 = load i32* %arrayidx569.i, align 4, !tbaa !3
  %add570.i = add nsw i32 %113, %112
  %cmp571.i = icmp sgt i32 %add570.i, -987654321
  %add570..i = select i1 %cmp571.i, i32 %add570.i, i32 -987654321
  store i32 %add570..i, i32* %arrayidx563.i, align 4, !tbaa !3
  %arrayidx580.i = getelementptr inbounds i32* %111, i64 1
  store i32 -987654321, i32* %arrayidx580.i, align 4, !tbaa !3
  br i1 %cmp26151.i, label %for.end608.i, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %for.end560.i
  %114 = load i32* %M, align 4, !tbaa !3
  %cmp585.i695 = icmp sgt i32 %6, %114
  br i1 %cmp585.i695, label %for.end608.i, label %for.body587.i.lr.ph

for.body587.i.lr.ph:                              ; preds = %land.rhs.i.preheader
  %115 = load i32** %esc.i, align 8, !tbaa !0
  br label %for.body587.i

land.rhs.i:                                       ; preds = %for.inc606.i
  %116 = load i32* %M, align 4, !tbaa !3
  %117 = trunc i64 %indvars.iv.next168.i to i32
  %cmp585.i = icmp sgt i32 %117, %116
  br i1 %cmp585.i, label %for.end608.i, label %for.body587.i

for.body587.i:                                    ; preds = %for.body587.i.lr.ph, %land.rhs.i
  %118 = phi i32 [ %6, %for.body587.i.lr.ph ], [ %117, %land.rhs.i ]
  %indvars.iv167.i696 = phi i64 [ %idxprom177.i, %for.body587.i.lr.ph ], [ %indvars.iv.next168.i, %land.rhs.i ]
  %119 = phi i32 [ -987654321, %for.body587.i.lr.ph ], [ %122, %land.rhs.i ]
  %arrayidx591.i = getelementptr inbounds i32* %49, i64 %indvars.iv167.i696
  %120 = load i32* %arrayidx591.i, align 4, !tbaa !3
  %arrayidx594.i = getelementptr inbounds i32* %115, i64 %indvars.iv167.i696
  %121 = load i32* %arrayidx594.i, align 4, !tbaa !3
  %add595.i = add nsw i32 %121, %120
  %cmp599.i = icmp sgt i32 %add595.i, %119
  br i1 %cmp599.i, label %if.then601.i, label %for.inc606.i

if.then601.i:                                     ; preds = %for.body587.i
  store i32 %add595.i, i32* %arrayidx580.i, align 4, !tbaa !3
  br label %for.inc606.i

for.inc606.i:                                     ; preds = %if.then601.i, %for.body587.i
  %122 = phi i32 [ %119, %for.body587.i ], [ %add595.i, %if.then601.i ]
  %cmp582.i = icmp slt i32 %118, %9
  %indvars.iv.next168.i = add i64 %indvars.iv167.i696, 1
  br i1 %cmp582.i, label %land.rhs.i, label %for.end608.i

for.end608.i:                                     ; preds = %land.rhs.i.preheader, %for.inc606.i, %land.rhs.i, %for.end560.i
  %123 = phi i32 [ -987654321, %for.end560.i ], [ -987654321, %land.rhs.i.preheader ], [ %122, %for.inc606.i ], [ %122, %land.rhs.i ]
  store i32 -987654321, i32* %111, align 4, !tbaa !3
  %124 = load i32* %arrayidx145.i, align 4, !tbaa !3
  %add618.i = add nsw i32 %124, %add570..i
  %cmp619.i = icmp sgt i32 %add618.i, -987654321
  %add618..i = select i1 %cmp619.i, i32 %add618.i, i32 -987654321
  store i32 %add618..i, i32* %111, align 4, !tbaa !3
  %arrayidx628.i = getelementptr inbounds i32* %111, i64 2
  store i32 -987654321, i32* %arrayidx628.i, align 4, !tbaa !3
  %arrayidx631.i = getelementptr inbounds i32* %66, i64 2
  %125 = load i32* %arrayidx631.i, align 4, !tbaa !3
  %126 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %add635.i = add nsw i32 %126, %125
  %cmp636.i = icmp sgt i32 %add635.i, -987654321
  %add635..i = select i1 %cmp636.i, i32 %add635.i, i32 -987654321
  store i32 %add635..i, i32* %arrayidx628.i, align 4, !tbaa !3
  %127 = load i32* %arrayidx162.i, align 4, !tbaa !3
  %add649.i = add nsw i32 %127, %123
  %cmp653.i = icmp sgt i32 %add649.i, %add635..i
  %add649.add635..i = select i1 %cmp653.i, i32 %add649.i, i32 %add635..i
  store i32 %add649.add635..i, i32* %arrayidx628.i, align 4, !tbaa !3
  %cmp173.i = icmp slt i32 %46, %s2.1.i
  br i1 %cmp173.i, label %for.body175.i, label %for.end662.i

for.end662.i:                                     ; preds = %for.end608.i, %if.end137.i
  %128 = load i32* %M, align 4, !tbaa !3
  %call.i3.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %128, i32 0, i32 0) #5
  %xmx1.i4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 0
  %129 = load i32*** %xmx1.i4.i, align 8, !tbaa !0
  %mmx4.i5.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 1
  %130 = load i32*** %mmx4.i5.i, align 8, !tbaa !0
  %imx8.i6.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 2
  %131 = load i32*** %imx8.i6.i, align 8, !tbaa !0
  %dmx12.i7.i = getelementptr inbounds %struct.dpmatrix_s* %call.i3.i, i64 0, i32 3
  %132 = load i32*** %dmx12.i7.i, align 8, !tbaa !0
  %rem665.i = srem i32 %8, 2
  %idxprom666.i = sext i32 %rem665.i to i64
  %arrayidx667.i = getelementptr inbounds i32** %129, i64 %idxprom666.i
  %133 = load i32** %arrayidx667.i, align 8, !tbaa !0
  store i32 -987654321, i32* %133, align 4, !tbaa !3
  %arrayidx671.i = getelementptr inbounds i32* %133, i64 4
  store i32 -987654321, i32* %arrayidx671.i, align 4, !tbaa !3
  %arrayidx674.i = getelementptr inbounds i32* %133, i64 2
  store i32 -987654321, i32* %arrayidx674.i, align 4, !tbaa !3
  %arrayidx677.i = getelementptr inbounds i32* %133, i64 1
  store i32 -987654321, i32* %arrayidx677.i, align 4, !tbaa !3
  %add679.i = add nsw i32 %9, 1
  %cmp680135.i = icmp slt i32 %add679.i, %6
  br i1 %cmp680135.i, label %for.end697.i, label %for.body682.lr.ph.i

for.body682.lr.ph.i:                              ; preds = %for.end662.i
  %arrayidx685.i = getelementptr inbounds i32** %132, i64 %idxprom666.i
  %134 = load i32** %arrayidx685.i, align 8, !tbaa !0
  %arrayidx689.i = getelementptr inbounds i32** %131, i64 %idxprom666.i
  %135 = load i32** %arrayidx689.i, align 8, !tbaa !0
  %arrayidx693.i = getelementptr inbounds i32** %130, i64 %idxprom666.i
  %136 = load i32** %arrayidx693.i, align 8, !tbaa !0
  %137 = sext i32 %6 to i64
  br label %for.body682.i

for.body682.i:                                    ; preds = %for.body682.i, %for.body682.lr.ph.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %for.body682.i ], [ %137, %for.body682.lr.ph.i ]
  %arrayidx686.i = getelementptr inbounds i32* %134, i64 %indvars.iv163.i
  store i32 -987654321, i32* %arrayidx686.i, align 4, !tbaa !3
  %arrayidx690.i = getelementptr inbounds i32* %135, i64 %indvars.iv163.i
  store i32 -987654321, i32* %arrayidx690.i, align 4, !tbaa !3
  %arrayidx694.i = getelementptr inbounds i32* %136, i64 %indvars.iv163.i
  store i32 -987654321, i32* %arrayidx694.i, align 4, !tbaa !3
  %indvars.iv.next164.i = add i64 %indvars.iv163.i, 1
  %138 = trunc i64 %indvars.iv163.i to i32
  %cmp680.i = icmp slt i32 %138, %add679.i
  br i1 %cmp680.i, label %for.body682.i, label %for.end697.i

for.end697.i:                                     ; preds = %for.body682.i, %for.end662.i
  %lnot699.i = icmp eq i32 %rem665.i, 0
  %idxprom702.i = sext i32 %add679.i to i64
  %idxprom703.i = zext i1 %lnot699.i to i64
  %arrayidx704.i = getelementptr inbounds i32** %132, i64 %idxprom703.i
  %139 = load i32** %arrayidx704.i, align 8, !tbaa !0
  %arrayidx705.i = getelementptr inbounds i32* %139, i64 %idxprom702.i
  store i32 -987654321, i32* %arrayidx705.i, align 4, !tbaa !3
  %arrayidx709.i = getelementptr inbounds i32** %131, i64 %idxprom703.i
  %140 = load i32** %arrayidx709.i, align 8, !tbaa !0
  %arrayidx710.i = getelementptr inbounds i32* %140, i64 %idxprom702.i
  store i32 -987654321, i32* %arrayidx710.i, align 4, !tbaa !3
  %arrayidx714.i = getelementptr inbounds i32** %130, i64 %idxprom703.i
  %141 = load i32** %arrayidx714.i, align 8, !tbaa !0
  %arrayidx715.i = getelementptr inbounds i32* %141, i64 %idxprom702.i
  store i32 -987654321, i32* %arrayidx715.i, align 4, !tbaa !3
  %conv716.i = sext i8 %10 to i32
  switch i32 %conv716.i, label %sw.default742.i [
    i32 1, label %sw.bb717.i
    i32 3, label %sw.bb722.i
    i32 5, label %sw.bb727.i
    i32 8, label %sw.bb731.i
    i32 9, label %sw.bb735.i
  ]

sw.bb717.i:                                       ; preds = %for.end697.i
  %idxprom718.i = sext i32 %9 to i64
  %arrayidx720.i = getelementptr inbounds i32** %130, i64 %idxprom666.i
  %142 = load i32** %arrayidx720.i, align 8, !tbaa !0
  %arrayidx721.i = getelementptr inbounds i32* %142, i64 %idxprom718.i
  store i32 0, i32* %arrayidx721.i, align 4, !tbaa !3
  br label %sw.epilog744.i

sw.bb722.i:                                       ; preds = %for.end697.i
  %idxprom723.i = sext i32 %9 to i64
  %arrayidx725.i = getelementptr inbounds i32** %131, i64 %idxprom666.i
  %143 = load i32** %arrayidx725.i, align 8, !tbaa !0
  %arrayidx726.i = getelementptr inbounds i32* %143, i64 %idxprom723.i
  store i32 0, i32* %arrayidx726.i, align 4, !tbaa !3
  br label %sw.epilog744.i

sw.bb727.i:                                       ; preds = %for.end697.i
  store i32 0, i32* %arrayidx671.i, align 4, !tbaa !3
  br label %sw.epilog744.i

sw.bb731.i:                                       ; preds = %for.end697.i
  store i32 0, i32* %arrayidx674.i, align 4, !tbaa !3
  br label %sw.epilog744.i

sw.bb735.i:                                       ; preds = %for.end697.i
  %144 = load i32* %arrayidx738.i, align 4, !tbaa !3
  store i32 %144, i32* %arrayidx674.i, align 4, !tbaa !3
  br label %sw.epilog744.i

sw.default742.i:                                  ; preds = %for.end697.i
  %call743.i = call i8* @Statetype(i8 signext %10) #5
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i8* %call743.i) #5
  br label %sw.epilog744.i

sw.epilog744.i:                                   ; preds = %sw.default742.i, %sw.bb735.i, %sw.bb731.i, %sw.bb727.i, %sw.bb722.i, %sw.bb717.i
  br i1 %cmp9.i, label %if.then748.i, label %for.cond795.preheader.i

for.cond795.preheader.i:                          ; preds = %for.inc791.i, %if.then748.i, %sw.epilog744.i
  %cmp796131.i = icmp slt i32 %s2.1.i, %8
  br i1 %cmp796131.i, label %for.body798.lr.ph.i, label %for.end1150.i

for.body798.lr.ph.i:                              ; preds = %for.cond795.preheader.i
  %145 = sext i32 %6 to i64
  %146 = sext i32 %9 to i64
  br label %for.body798.i

if.then748.i:                                     ; preds = %sw.epilog744.i
  %147 = load i32** %arrayidx667.i, align 8, !tbaa !0
  %arrayidx751.i = getelementptr inbounds i32* %147, i64 2
  %148 = load i32* %arrayidx751.i, align 4, !tbaa !3
  %149 = load i32* %arrayidx162.i, align 4, !tbaa !3
  %add755.i = add nsw i32 %149, %148
  %arrayidx758.i = getelementptr inbounds i32* %147, i64 1
  store i32 %add755.i, i32* %arrayidx758.i, align 4, !tbaa !3
  br i1 %cmp26151.i, label %for.cond795.preheader.i, label %for.body762.lr.ph.i

for.body762.lr.ph.i:                              ; preds = %if.then748.i
  %arrayidx772.i = getelementptr inbounds i32** %130, i64 %idxprom666.i
  %cmp774.i = icmp eq i32 %s2.1.i, %8
  %arrayidx779.i = getelementptr inbounds i8* %dsq, i64 %idxprom30
  %150 = sext i32 %9 to i64
  %.pre.i = load i32** %esc.i, align 8, !tbaa !0
  %.pre175.i = load i32** %arrayidx772.i, align 8, !tbaa !0
  br label %for.body762.i

for.body762.i:                                    ; preds = %for.inc791.for.body762_crit_edge.i, %for.body762.lr.ph.i
  %151 = phi i32 [ %.pre180.i, %for.inc791.for.body762_crit_edge.i ], [ %add755.i, %for.body762.lr.ph.i ]
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %for.inc791.for.body762_crit_edge.i ], [ %150, %for.body762.lr.ph.i ]
  %arrayidx768.i = getelementptr inbounds i32* %.pre.i, i64 %indvars.iv161.i
  %152 = load i32* %arrayidx768.i, align 4, !tbaa !3
  %add769.i = add nsw i32 %152, %151
  %arrayidx773.i = getelementptr inbounds i32* %.pre175.i, i64 %indvars.iv161.i
  store i32 %add769.i, i32* %arrayidx773.i, align 4, !tbaa !3
  br i1 %cmp774.i, label %for.inc791.i, label %if.then776.i

if.then776.i:                                     ; preds = %for.body762.i
  %153 = load i8* %arrayidx779.i, align 1, !tbaa !1
  %idxprom781.i = sext i8 %153 to i64
  %154 = load i32*** %msc.i, align 8, !tbaa !0
  %arrayidx783.i = getelementptr inbounds i32** %154, i64 %idxprom781.i
  %155 = load i32** %arrayidx783.i, align 8, !tbaa !0
  %arrayidx784.i = getelementptr inbounds i32* %155, i64 %indvars.iv161.i
  %156 = load i32* %arrayidx784.i, align 4, !tbaa !3
  %add789.i = add nsw i32 %156, %add769.i
  store i32 %add789.i, i32* %arrayidx773.i, align 4, !tbaa !3
  br label %for.inc791.i

for.inc791.i:                                     ; preds = %if.then776.i, %for.body762.i
  %157 = trunc i64 %indvars.iv161.i to i32
  %cmp760.i = icmp sgt i32 %157, %6
  br i1 %cmp760.i, label %for.inc791.for.body762_crit_edge.i, label %for.cond795.preheader.i

for.inc791.for.body762_crit_edge.i:               ; preds = %for.inc791.i
  %indvars.iv.next162.i = add i64 %indvars.iv161.i, -1
  %.pre180.i = load i32* %arrayidx758.i, align 4, !tbaa !3
  br label %for.body762.i

for.cond795.loopexit.i:                           ; preds = %for.inc1145.i, %for.end847.i
  %cmp796.i = icmp sgt i32 %158, %s2.1.i
  br i1 %cmp796.i, label %for.body798.i, label %for.end1150.i

for.body798.i:                                    ; preds = %for.cond795.loopexit.i, %for.body798.lr.ph.i
  %indvars.iv159.i = phi i64 [ %idxprom30, %for.body798.lr.ph.i ], [ %indvars.iv.next160.i, %for.cond795.loopexit.i ]
  %indvars.iv.next160.i = add i64 %indvars.iv159.i, -1
  %158 = trunc i64 %indvars.iv.next160.i to i32
  %rem799.i = srem i32 %158, 2
  %lnot801.i = icmp eq i32 %rem799.i, 0
  %idxprom803.i = sext i32 %rem799.i to i64
  %arrayidx804.i = getelementptr inbounds i32** %129, i64 %idxprom803.i
  %159 = load i32** %arrayidx804.i, align 8, !tbaa !0
  %arrayidx805.i = getelementptr inbounds i32* %159, i64 2
  store i32 -987654321, i32* %arrayidx805.i, align 4, !tbaa !3
  %idxprom806.i = zext i1 %lnot801.i to i64
  %arrayidx807.i = getelementptr inbounds i32** %129, i64 %idxprom806.i
  %160 = load i32** %arrayidx807.i, align 8, !tbaa !0
  %arrayidx808.i = getelementptr inbounds i32* %160, i64 2
  %161 = load i32* %arrayidx808.i, align 4, !tbaa !3
  %162 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %add812.i = add nsw i32 %162, %161
  %cmp813.i = icmp sgt i32 %add812.i, -987654321
  br i1 %cmp813.i, label %if.then815.i, label %if.end819.i

if.then815.i:                                     ; preds = %for.body798.i
  store i32 %add812.i, i32* %arrayidx805.i, align 4, !tbaa !3
  br label %if.end819.i

if.end819.i:                                      ; preds = %if.then815.i, %for.body798.i
  %.pre176.i = phi i32 [ %add812.i, %if.then815.i ], [ -987654321, %for.body798.i ]
  store i32 -987654321, i32* %159, align 4, !tbaa !3
  br i1 %cmp26151.i, label %for.end847.i, label %for.body826.lr.ph.i

for.body826.lr.ph.i:                              ; preds = %if.end819.i
  %arrayidx829.i = getelementptr inbounds i32** %130, i64 %idxprom806.i
  %163 = load i32** %arrayidx829.i, align 8, !tbaa !0
  %164 = load i32** %bsc.i, align 8, !tbaa !0
  br label %for.body826.i

for.body826.i:                                    ; preds = %for.inc845.i, %for.body826.lr.ph.i
  %165 = phi i32 [ %168, %for.inc845.i ], [ -987654321, %for.body826.lr.ph.i ]
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %for.inc845.i ], [ %145, %for.body826.lr.ph.i ]
  %arrayidx830.i = getelementptr inbounds i32* %163, i64 %indvars.iv154.i
  %166 = load i32* %arrayidx830.i, align 4, !tbaa !3
  %arrayidx833.i = getelementptr inbounds i32* %164, i64 %indvars.iv154.i
  %167 = load i32* %arrayidx833.i, align 4, !tbaa !3
  %add834.i = add nsw i32 %167, %166
  %cmp838.i = icmp sgt i32 %add834.i, %165
  br i1 %cmp838.i, label %if.then840.i, label %for.inc845.i

if.then840.i:                                     ; preds = %for.body826.i
  store i32 %add834.i, i32* %159, align 4, !tbaa !3
  br label %for.inc845.i

for.inc845.i:                                     ; preds = %if.then840.i, %for.body826.i
  %168 = phi i32 [ %165, %for.body826.i ], [ %add834.i, %if.then840.i ]
  %indvars.iv.next155.i = add i64 %indvars.iv154.i, 1
  %169 = trunc i64 %indvars.iv154.i to i32
  %cmp824.i = icmp slt i32 %169, %9
  br i1 %cmp824.i, label %for.body826.i, label %for.end847.i

for.end847.i:                                     ; preds = %for.inc845.i, %if.end819.i
  %170 = phi i32 [ -987654321, %if.end819.i ], [ %168, %for.inc845.i ]
  %arrayidx850.i = getelementptr inbounds i32* %159, i64 1
  store i32 -987654321, i32* %arrayidx850.i, align 4, !tbaa !3
  %171 = load i32* %arrayidx162.i, align 4, !tbaa !3
  %add857.i = add nsw i32 %171, %.pre176.i
  %cmp858.i = icmp sgt i32 %add857.i, -987654321
  %add857..i = select i1 %cmp858.i, i32 %add857.i, i32 -987654321
  store i32 %add857..i, i32* %arrayidx850.i, align 4, !tbaa !3
  %arrayidx867.i = getelementptr inbounds i32* %159, i64 4
  store i32 -987654321, i32* %arrayidx867.i, align 4, !tbaa !3
  %172 = load i32* %arrayidx145.i, align 4, !tbaa !3
  %add874.i = add nsw i32 %172, %170
  %cmp875.i = icmp sgt i32 %add874.i, -987654321
  %add874..i = select i1 %cmp875.i, i32 %add874.i, i32 -987654321
  store i32 %add874..i, i32* %arrayidx867.i, align 4, !tbaa !3
  %arrayidx884.i = getelementptr inbounds i32* %160, i64 4
  %173 = load i32* %arrayidx884.i, align 4, !tbaa !3
  %174 = load i32* %arrayidx569.i, align 4, !tbaa !3
  %add888.i = add nsw i32 %174, %173
  %cmp892.i = icmp sgt i32 %add888.i, %add874..i
  %add888.add874..i = select i1 %cmp892.i, i32 %add888.i, i32 %add874..i
  store i32 %add888.add874..i, i32* %arrayidx867.i, align 4, !tbaa !3
  br i1 %cmp26151.i, label %for.cond795.loopexit.i, label %for.body902.lr.ph.i

for.body902.lr.ph.i:                              ; preds = %for.end847.i
  %arrayidx912.i = getelementptr inbounds i32** %130, i64 %idxprom803.i
  %arrayidx916.i = getelementptr inbounds i32** %132, i64 %idxprom803.i
  %arrayidx920.i = getelementptr inbounds i32** %131, i64 %idxprom803.i
  %cmp922.i = icmp eq i32 %158, %s2.1.i
  %arrayidx927.i = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next160.i
  %arrayidx962.i = getelementptr inbounds i32** %130, i64 %idxprom806.i
  %arrayidx983.i = getelementptr inbounds i32** %131, i64 %idxprom806.i
  %cmp1024.i = icmp ne i32 %158, %s2.1.i
  br label %for.body902.i

for.body902.i:                                    ; preds = %for.inc1145.i, %for.body902.lr.ph.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %for.inc1145.i ], [ %146, %for.body902.lr.ph.i ]
  %175 = load i32* %M, align 4, !tbaa !3
  %176 = trunc i64 %indvars.iv156.i to i32
  %cmp904.i = icmp eq i32 %176, %175
  br i1 %cmp904.i, label %if.then906.i, label %if.end939.i

if.then906.i:                                     ; preds = %for.body902.i
  %177 = load i32* %arrayidx850.i, align 4, !tbaa !3
  %178 = load i32** %arrayidx912.i, align 8, !tbaa !0
  %arrayidx913.i = getelementptr inbounds i32* %178, i64 %indvars.iv156.i
  store i32 %177, i32* %arrayidx913.i, align 4, !tbaa !3
  %179 = load i32** %arrayidx916.i, align 8, !tbaa !0
  %arrayidx917.i = getelementptr inbounds i32* %179, i64 %indvars.iv156.i
  store i32 -987654321, i32* %arrayidx917.i, align 4, !tbaa !3
  %180 = load i32** %arrayidx920.i, align 8, !tbaa !0
  %arrayidx921.i = getelementptr inbounds i32* %180, i64 %indvars.iv156.i
  store i32 -987654321, i32* %arrayidx921.i, align 4, !tbaa !3
  br i1 %cmp922.i, label %for.inc1145.i, label %if.then924.i

if.then924.i:                                     ; preds = %if.then906.i
  %181 = load i8* %arrayidx927.i, align 1, !tbaa !1
  %idxprom929.i = sext i8 %181 to i64
  %182 = load i32*** %msc.i, align 8, !tbaa !0
  %arrayidx931.i = getelementptr inbounds i32** %182, i64 %idxprom929.i
  %183 = load i32** %arrayidx931.i, align 8, !tbaa !0
  %arrayidx932.i = getelementptr inbounds i32* %183, i64 %indvars.iv156.i
  %184 = load i32* %arrayidx932.i, align 4, !tbaa !3
  %185 = load i32* %arrayidx913.i, align 4, !tbaa !3
  %add937.i = add nsw i32 %185, %184
  store i32 %add937.i, i32* %arrayidx913.i, align 4, !tbaa !3
  br label %for.inc1145.i

if.end939.i:                                      ; preds = %for.body902.i
  %186 = load i32** %arrayidx912.i, align 8, !tbaa !0
  %arrayidx943.i = getelementptr inbounds i32* %186, i64 %indvars.iv156.i
  store i32 -987654321, i32* %arrayidx943.i, align 4, !tbaa !3
  %187 = load i32* %arrayidx850.i, align 4, !tbaa !3
  %188 = load i32** %esc.i, align 8, !tbaa !0
  %arrayidx949.i = getelementptr inbounds i32* %188, i64 %indvars.iv156.i
  %189 = load i32* %arrayidx949.i, align 4, !tbaa !3
  %add950.i = add nsw i32 %189, %187
  %cmp951.i = icmp sgt i32 %add950.i, -987654321
  %add950..i = select i1 %cmp951.i, i32 %add950.i, i32 -987654321
  store i32 %add950..i, i32* %arrayidx943.i, align 4, !tbaa !3
  %190 = add nsw i64 %indvars.iv156.i, 1
  %191 = load i32** %arrayidx962.i, align 8, !tbaa !0
  %arrayidx963.i = getelementptr inbounds i32* %191, i64 %190
  %192 = load i32* %arrayidx963.i, align 4, !tbaa !3
  %193 = load i32*** %tsc.i, align 8, !tbaa !0
  %194 = load i32** %193, align 8, !tbaa !0
  %arrayidx967.i = getelementptr inbounds i32* %194, i64 %indvars.iv156.i
  %195 = load i32* %arrayidx967.i, align 4, !tbaa !3
  %add968.i = add nsw i32 %195, %192
  %cmp973.i = icmp sgt i32 %add968.i, %add950..i
  br i1 %cmp973.i, label %if.then975.i, label %if.end980.i

if.then975.i:                                     ; preds = %if.end939.i
  store i32 %add968.i, i32* %arrayidx943.i, align 4, !tbaa !3
  br label %if.end980.i

if.end980.i:                                      ; preds = %if.end939.i, %if.then975.i
  %196 = phi i32 [ %add968.i, %if.then975.i ], [ %add950..i, %if.end939.i ]
  %197 = load i32** %arrayidx983.i, align 8, !tbaa !0
  %arrayidx984.i = getelementptr inbounds i32* %197, i64 %indvars.iv156.i
  %198 = load i32* %arrayidx984.i, align 4, !tbaa !3
  %arrayidx987.i = getelementptr inbounds i32** %193, i64 1
  %199 = load i32** %arrayidx987.i, align 8, !tbaa !0
  %arrayidx988.i = getelementptr inbounds i32* %199, i64 %indvars.iv156.i
  %200 = load i32* %arrayidx988.i, align 4, !tbaa !3
  %add989.i = add nsw i32 %200, %198
  %cmp994.i = icmp sgt i32 %add989.i, %196
  br i1 %cmp994.i, label %if.then996.i, label %if.end1001.i

if.then996.i:                                     ; preds = %if.end980.i
  store i32 %add989.i, i32* %arrayidx943.i, align 4, !tbaa !3
  br label %if.end1001.i

if.end1001.i:                                     ; preds = %if.end980.i, %if.then996.i
  %201 = phi i32 [ %add989.i, %if.then996.i ], [ %196, %if.end980.i ]
  %202 = load i32** %arrayidx916.i, align 8, !tbaa !0
  %arrayidx1006.i = getelementptr inbounds i32* %202, i64 %190
  %203 = load i32* %arrayidx1006.i, align 4, !tbaa !3
  %arrayidx1009.i = getelementptr inbounds i32** %193, i64 2
  %204 = load i32** %arrayidx1009.i, align 8, !tbaa !0
  %arrayidx1010.i = getelementptr inbounds i32* %204, i64 %indvars.iv156.i
  %205 = load i32* %arrayidx1010.i, align 4, !tbaa !3
  %add1011.i = add nsw i32 %205, %203
  %cmp1016.i = icmp sgt i32 %add1011.i, %201
  br i1 %cmp1016.i, label %if.then1018.i, label %if.end1023.i

if.then1018.i:                                    ; preds = %if.end1001.i
  store i32 %add1011.i, i32* %arrayidx943.i, align 4, !tbaa !3
  br label %if.end1023.i

if.end1023.i:                                     ; preds = %if.then1018.i, %if.end1001.i
  %206 = phi i32 [ %add1011.i, %if.then1018.i ], [ %201, %if.end1001.i ]
  br i1 %cmp1024.i, label %if.then1026.i, label %if.end1040.i

if.then1026.i:                                    ; preds = %if.end1023.i
  %207 = load i8* %arrayidx927.i, align 1, !tbaa !1
  %idxprom1031.i = sext i8 %207 to i64
  %208 = load i32*** %msc.i, align 8, !tbaa !0
  %arrayidx1033.i = getelementptr inbounds i32** %208, i64 %idxprom1031.i
  %209 = load i32** %arrayidx1033.i, align 8, !tbaa !0
  %arrayidx1034.i = getelementptr inbounds i32* %209, i64 %indvars.iv156.i
  %210 = load i32* %arrayidx1034.i, align 4, !tbaa !3
  %add1039.i = add nsw i32 %210, %206
  store i32 %add1039.i, i32* %arrayidx943.i, align 4, !tbaa !3
  br label %if.end1040.i

if.end1040.i:                                     ; preds = %if.end1023.i, %if.then1026.i
  %arrayidx1044.i = getelementptr inbounds i32* %202, i64 %indvars.iv156.i
  store i32 -987654321, i32* %arrayidx1044.i, align 4, !tbaa !3
  %211 = load i32* %arrayidx963.i, align 4, !tbaa !3
  %arrayidx1052.i = getelementptr inbounds i32** %193, i64 5
  %212 = load i32** %arrayidx1052.i, align 8, !tbaa !0
  %arrayidx1053.i = getelementptr inbounds i32* %212, i64 %indvars.iv156.i
  %213 = load i32* %arrayidx1053.i, align 4, !tbaa !3
  %add1054.i = add nsw i32 %213, %211
  %cmp1055.i = icmp sgt i32 %add1054.i, -987654321
  %add1054..i = select i1 %cmp1055.i, i32 %add1054.i, i32 -987654321
  store i32 %add1054..i, i32* %arrayidx1044.i, align 4, !tbaa !3
  %214 = load i32* %arrayidx1006.i, align 4, !tbaa !3
  %arrayidx1070.i = getelementptr inbounds i32** %193, i64 6
  %215 = load i32** %arrayidx1070.i, align 8, !tbaa !0
  %arrayidx1071.i = getelementptr inbounds i32* %215, i64 %indvars.iv156.i
  %216 = load i32* %arrayidx1071.i, align 4, !tbaa !3
  %add1072.i = add nsw i32 %216, %214
  %cmp1077.i = icmp sgt i32 %add1072.i, %add1054..i
  %add1072.i.add1054..i = select i1 %cmp1077.i, i32 %add1072.i, i32 %add1054..i
  store i32 %add1072.i.add1054..i, i32* %arrayidx1044.i, align 4, !tbaa !3
  %217 = load i32** %arrayidx920.i, align 8, !tbaa !0
  %arrayidx1088.i = getelementptr inbounds i32* %217, i64 %indvars.iv156.i
  store i32 -987654321, i32* %arrayidx1088.i, align 4, !tbaa !3
  %218 = load i32* %arrayidx963.i, align 4, !tbaa !3
  %arrayidx1096.i = getelementptr inbounds i32** %193, i64 3
  %219 = load i32** %arrayidx1096.i, align 8, !tbaa !0
  %arrayidx1097.i = getelementptr inbounds i32* %219, i64 %indvars.iv156.i
  %220 = load i32* %arrayidx1097.i, align 4, !tbaa !3
  %add1098.i = add nsw i32 %220, %218
  %cmp1099.i = icmp sgt i32 %add1098.i, -987654321
  %add1098..i = select i1 %cmp1099.i, i32 %add1098.i, i32 -987654321
  store i32 %add1098..i, i32* %arrayidx1088.i, align 4, !tbaa !3
  %221 = load i32* %arrayidx984.i, align 4, !tbaa !3
  %arrayidx1113.i = getelementptr inbounds i32** %193, i64 4
  %222 = load i32** %arrayidx1113.i, align 8, !tbaa !0
  %arrayidx1114.i = getelementptr inbounds i32* %222, i64 %indvars.iv156.i
  %223 = load i32* %arrayidx1114.i, align 4, !tbaa !3
  %add1115.i = add nsw i32 %223, %221
  %cmp1120.i = icmp sgt i32 %add1115.i, %add1098..i
  %add1115.i.add1098..i = select i1 %cmp1120.i, i32 %add1115.i, i32 %add1098..i
  store i32 %add1115.i.add1098..i, i32* %arrayidx1088.i, align 4, !tbaa !3
  br i1 %cmp1024.i, label %if.then1130.i, label %for.inc1145.i

if.then1130.i:                                    ; preds = %if.end1040.i
  %224 = load i8* %arrayidx927.i, align 1, !tbaa !1
  %idxprom1135.i = sext i8 %224 to i64
  %225 = load i32*** %isc.i, align 8, !tbaa !0
  %arrayidx1137.i = getelementptr inbounds i32** %225, i64 %idxprom1135.i
  %226 = load i32** %arrayidx1137.i, align 8, !tbaa !0
  %arrayidx1138.i = getelementptr inbounds i32* %226, i64 %indvars.iv156.i
  %227 = load i32* %arrayidx1138.i, align 4, !tbaa !3
  %add1143.i = add nsw i32 %227, %add1115.i.add1098..i
  store i32 %add1143.i, i32* %arrayidx1088.i, align 4, !tbaa !3
  br label %for.inc1145.i

for.inc1145.i:                                    ; preds = %if.then1130.i, %if.end1040.i, %if.then924.i, %if.then906.i
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, -1
  %cmp900.i = icmp sgt i32 %176, %6
  br i1 %cmp900.i, label %for.body902.i, label %for.cond795.loopexit.i

for.end1150.i:                                    ; preds = %for.cond795.loopexit.i, %for.cond795.preheader.i
  %rem1151.i = srem i32 %s2.1.i, 2
  %idxprom1189.pre.i = sext i32 %rem1151.i to i64
  br i1 %cmp26151.i, label %for.end1188.i, label %for.body1155.lr.ph.i

for.body1155.lr.ph.i:                             ; preds = %for.end1150.i
  %228 = load i32*** %mmx4.i.i, align 8, !tbaa !0
  %arrayidx1159.i = getelementptr inbounds i32** %228, i64 %idxprom1189.pre.i
  %229 = load i32** %arrayidx1159.i, align 8, !tbaa !0
  %230 = load i32*** %mmx4.i5.i, align 8, !tbaa !0
  %arrayidx1164.i = getelementptr inbounds i32** %230, i64 %idxprom1189.pre.i
  %231 = load i32** %arrayidx1164.i, align 8, !tbaa !0
  %232 = load i32*** %imx8.i.i, align 8, !tbaa !0
  %arrayidx1174.i = getelementptr inbounds i32** %232, i64 %idxprom1189.pre.i
  %233 = load i32** %arrayidx1174.i, align 8, !tbaa !0
  %234 = load i32*** %imx8.i6.i, align 8, !tbaa !0
  %arrayidx1179.i = getelementptr inbounds i32** %234, i64 %idxprom1189.pre.i
  %235 = load i32** %arrayidx1179.i, align 8, !tbaa !0
  %236 = sext i32 %6 to i64
  br label %for.body1155.i

for.body1155.i:                                   ; preds = %for.body1155.i, %for.body1155.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body1155.i ], [ %236, %for.body1155.lr.ph.i ]
  %k2.0122.i = phi i32 [ %k2.2.i, %for.body1155.i ], [ undef, %for.body1155.lr.ph.i ]
  %max.0121.i = phi i32 [ %max.2.i, %for.body1155.i ], [ -987654321, %for.body1155.lr.ph.i ]
  %t2.0119.i = phi i8 [ %t2.2.i, %for.body1155.i ], [ undef, %for.body1155.lr.ph.i ]
  %arrayidx1160.i = getelementptr inbounds i32* %229, i64 %indvars.iv.i
  %237 = load i32* %arrayidx1160.i, align 4, !tbaa !3
  %arrayidx1165.i = getelementptr inbounds i32* %231, i64 %indvars.iv.i
  %238 = load i32* %arrayidx1165.i, align 4, !tbaa !3
  %add1166.i = add nsw i32 %238, %237
  %cmp1167.i = icmp sgt i32 %add1166.i, %max.0121.i
  %.t2.0.i = select i1 %cmp1167.i, i8 1, i8 %t2.0119.i
  %add1166.max.0.i = select i1 %cmp1167.i, i32 %add1166.i, i32 %max.0121.i
  %239 = trunc i64 %indvars.iv.i to i32
  %k.8.k2.0.i = select i1 %cmp1167.i, i32 %239, i32 %k2.0122.i
  %arrayidx1175.i = getelementptr inbounds i32* %233, i64 %indvars.iv.i
  %240 = load i32* %arrayidx1175.i, align 4, !tbaa !3
  %arrayidx1180.i = getelementptr inbounds i32* %235, i64 %indvars.iv.i
  %241 = load i32* %arrayidx1180.i, align 4, !tbaa !3
  %add1181.i = add nsw i32 %241, %240
  %cmp1182.i = icmp sgt i32 %add1181.i, %add1166.max.0.i
  %t2.2.i = select i1 %cmp1182.i, i8 3, i8 %.t2.0.i
  %max.2.i = select i1 %cmp1182.i, i32 %add1181.i, i32 %add1166.max.0.i
  %k2.2.i = select i1 %cmp1182.i, i32 %239, i32 %k.8.k2.0.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %cmp1153.i = icmp slt i32 %239, %9
  br i1 %cmp1153.i, label %for.body1155.i, label %for.end1188.i

for.end1188.i:                                    ; preds = %for.body1155.i, %for.end1150.i
  %k2.0.lcssa.i = phi i32 [ undef, %for.end1150.i ], [ %k2.2.i, %for.body1155.i ]
  %max.0.lcssa.i = phi i32 [ -987654321, %for.end1150.i ], [ %max.2.i, %for.body1155.i ]
  %t2.0.lcssa.i = phi i8 [ undef, %for.end1150.i ], [ %t2.2.i, %for.body1155.i ]
  %242 = load i32*** %xmx1.i.i, align 8, !tbaa !0
  %arrayidx1191.i = getelementptr inbounds i32** %242, i64 %idxprom1189.pre.i
  %243 = load i32** %arrayidx1191.i, align 8, !tbaa !0
  %arrayidx1192.i = getelementptr inbounds i32* %243, i64 4
  %244 = load i32* %arrayidx1192.i, align 4, !tbaa !3
  %245 = load i32*** %xmx1.i4.i, align 8, !tbaa !0
  %arrayidx1195.i = getelementptr inbounds i32** %245, i64 %idxprom1189.pre.i
  %246 = load i32** %arrayidx1195.i, align 8, !tbaa !0
  %arrayidx1196.i = getelementptr inbounds i32* %246, i64 4
  %247 = load i32* %arrayidx1196.i, align 4, !tbaa !3
  %add1197.i = add nsw i32 %247, %244
  %cmp1198.i = icmp sgt i32 %add1197.i, %max.0.lcssa.i
  %.t2.02.i = select i1 %cmp1198.i, i8 5, i8 %t2.0.lcssa.i
  %add1197.max.0.i = select i1 %cmp1198.i, i32 %add1197.i, i32 %max.0.lcssa.i
  %.k2.0.i = select i1 %cmp1198.i, i32 1, i32 %k2.0.lcssa.i
  %arrayidx1205.i = getelementptr inbounds i32* %243, i64 2
  %248 = load i32* %arrayidx1205.i, align 4, !tbaa !3
  %arrayidx1209.i = getelementptr inbounds i32* %246, i64 2
  %249 = load i32* %arrayidx1209.i, align 4, !tbaa !3
  %add1210.i = add nsw i32 %249, %248
  %cmp1211.i = icmp sgt i32 %add1210.i, %add1197.max.0.i
  br i1 %cmp1211.i, label %if.then1213.i, label %get_wee_midpt.exit

if.then1213.i:                                    ; preds = %for.end1188.i
  %250 = load i32* %M, align 4, !tbaa !3
  br label %get_wee_midpt.exit

get_wee_midpt.exit:                               ; preds = %for.end1188.i, %if.then1213.i
  %t2.4.i = phi i8 [ 8, %if.then1213.i ], [ %.t2.02.i, %for.end1188.i ]
  %max.4.i = phi i32 [ %add1210.i, %if.then1213.i ], [ %add1197.max.0.i, %for.end1188.i ]
  %k2.4.i = phi i32 [ %250, %if.then1213.i ], [ %.k2.0.i, %for.end1188.i ]
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i.i) #5
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i3.i) #5
  %call1216.i = call float @Scorify(i32 %max.4.i) #5
  %idxprom35 = sext i32 %s2.1.i to i64
  %arrayidx36 = getelementptr inbounds i32* %0, i64 %idxprom35
  store i32 %k2.4.i, i32* %arrayidx36, align 4, !tbaa !3
  %arrayidx38 = getelementptr inbounds i8* %call4, i64 %idxprom35
  store i8 %t2.4.i, i8* %arrayidx38, align 1, !tbaa !1
  %or.cond = and i1 %cmp2.i, %cmp9.i
  %ret_sc.1 = select i1 %or.cond, float %call1216.i, float %ret_sc.0704
  %cmp46 = icmp eq i8 %t2.4.i, 5
  br i1 %cmp46, label %land.lhs.true67, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %get_wee_midpt.exit
  %sub = sub nsw i32 %s2.1.i, %5
  %cmp49 = icmp sgt i32 %sub, 1
  br i1 %cmp49, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true48
  %cmp52.not = icmp ne i32 %sub, 1
  %cmp40.not = xor i1 %cmp2.i, true
  %brmerge = or i1 %cmp52.not, %cmp40.not
  br i1 %brmerge, label %if.end63, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false, %land.lhs.true48
  store i32 %5, i32* %arrayidx23, align 4, !tbaa !3
  store i32 %s2.1.i, i32* %arrayidx29, align 4, !tbaa !3
  br label %if.end63

if.end63:                                         ; preds = %lor.lhs.false, %if.then58
  %lpos.1 = phi i32 [ %lpos.0703, %if.then58 ], [ %dec, %lor.lhs.false ]
  %cmp65 = icmp eq i8 %t2.4.i, 8
  br i1 %cmp65, label %if.end85, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %get_wee_midpt.exit, %if.end63
  %lpos.1666 = phi i32 [ %lpos.1, %if.end63 ], [ %dec, %get_wee_midpt.exit ]
  %sub68 = sub nsw i32 %8, %s2.1.i
  %cmp69 = icmp sgt i32 %sub68, 1
  %cmp73 = icmp eq i32 %sub68, 1
  %or.cond646 = and i1 %cmp73, %cmp9.i
  %or.cond669 = or i1 %cmp69, %or.cond646
  br i1 %or.cond669, label %if.then79, label %if.end85

if.then79:                                        ; preds = %land.lhs.true67
  %inc80 = add nsw i32 %lpos.1666, 1
  %idxprom81 = sext i32 %inc80 to i64
  %arrayidx82 = getelementptr inbounds i32* %2, i64 %idxprom81
  store i32 %s2.1.i, i32* %arrayidx82, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds i32* %1, i64 %idxprom81
  store i32 %8, i32* %arrayidx84, align 4, !tbaa !3
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true67, %if.end63, %if.then79
  %cmp65668 = phi i1 [ true, %if.then79 ], [ false, %if.end63 ], [ true, %land.lhs.true67 ]
  %lpos.2 = phi i32 [ %inc80, %if.then79 ], [ %lpos.1, %if.end63 ], [ %lpos.1666, %land.lhs.true67 ]
  %cmp46.not = xor i1 %cmp46, true
  %cmp90698 = icmp slt i32 %s2.1.i, %5
  %or.cond739 = or i1 %cmp90698, %cmp46.not
  br i1 %or.cond739, label %if.end97, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end85
  %251 = xor i32 %s2.1.i, -1
  %252 = xor i32 %5, -1
  %253 = icmp sgt i32 %251, %252
  %smax = select i1 %253, i32 %251, i32 %252
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %for.body ], [ %idxprom35, %for.body.lr.ph ]
  %arrayidx93 = getelementptr inbounds i32* %0, i64 %indvars.iv725
  store i32 1, i32* %arrayidx93, align 4, !tbaa !3
  %arrayidx95 = getelementptr inbounds i8* %call4, i64 %indvars.iv725
  store i8 5, i8* %arrayidx95, align 1, !tbaa !1
  %indvars.iv.next726 = add i64 %indvars.iv725, -1
  %254 = trunc i64 %indvars.iv725 to i32
  %cmp90 = icmp sgt i32 %254, %5
  br i1 %cmp90, label %for.body, label %for.cond.if.end97.loopexit_crit_edge

for.cond.if.end97.loopexit_crit_edge:             ; preds = %for.body
  %255 = sub i32 -2, %smax
  br label %if.end97

if.end97:                                         ; preds = %if.end85, %for.cond.if.end97.loopexit_crit_edge
  %s2.1.i663 = phi i32 [ %s2.1.i, %if.end85 ], [ %255, %for.cond.if.end97.loopexit_crit_edge ]
  %cmp103701 = icmp sgt i32 %s2.1.i663, %8
  %or.cond740 = or i1 %cmp65668, %cmp103701
  br i1 %or.cond740, label %while.cond.backedge, label %for.body105.lr.ph

while.cond.backedge:                              ; preds = %if.end97, %for.body105
  %cmp = icmp sgt i32 %lpos.2, -1
  br i1 %cmp, label %while.body, label %while.end

for.body105.lr.ph:                                ; preds = %if.end97
  %256 = sext i32 %s2.1.i663 to i64
  br label %for.body105

for.body105:                                      ; preds = %for.body105, %for.body105.lr.ph
  %indvars.iv727 = phi i64 [ %indvars.iv.next728, %for.body105 ], [ %256, %for.body105.lr.ph ]
  %257 = load i32* %M, align 4, !tbaa !3
  %arrayidx108 = getelementptr inbounds i32* %0, i64 %indvars.iv727
  store i32 %257, i32* %arrayidx108, align 4, !tbaa !3
  %arrayidx110 = getelementptr inbounds i8* %call4, i64 %indvars.iv727
  store i8 8, i8* %arrayidx110, align 1, !tbaa !1
  %indvars.iv.next728 = add i64 %indvars.iv727, 1
  %258 = trunc i64 %indvars.iv727 to i32
  %cmp103 = icmp slt i32 %258, %8
  br i1 %cmp103, label %for.body105, label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  %add115 = add nsw i32 %L, 6
  %cmp117691 = icmp sgt i32 %L, 1
  br i1 %cmp117691, label %for.body119, label %for.end182

for.body119:                                      ; preds = %while.end, %for.inc180
  %indvars.iv716 = phi i64 [ %indvars.iv.next717.pre-phi, %for.inc180 ], [ 1, %while.end ]
  %tlen.0692 = phi i32 [ %tlen.3, %for.inc180 ], [ %add115, %while.end ]
  %arrayidx121 = getelementptr inbounds i8* %call4, i64 %indvars.iv716
  %259 = load i8* %arrayidx121, align 1, !tbaa !1
  %cmp123 = icmp eq i8 %259, 1
  br i1 %cmp123, label %land.lhs.true125, label %if.end141

land.lhs.true125:                                 ; preds = %for.body119
  %260 = add nsw i64 %indvars.iv716, 1
  %arrayidx128 = getelementptr inbounds i8* %call4, i64 %260
  %261 = load i8* %arrayidx128, align 1, !tbaa !1
  %cmp130 = icmp eq i8 %261, 1
  br i1 %cmp130, label %if.then132, label %land.lhs.true166

if.then132:                                       ; preds = %land.lhs.true125
  %arrayidx135 = getelementptr inbounds i32* %0, i64 %260
  %262 = load i32* %arrayidx135, align 4, !tbaa !3
  %arrayidx137 = getelementptr inbounds i32* %0, i64 %indvars.iv716
  %263 = load i32* %arrayidx137, align 4, !tbaa !3
  %sub138 = add i32 %tlen.0692, -1
  %sub139 = add i32 %sub138, %262
  %add140 = sub i32 %sub139, %263
  br label %if.end141

if.end141:                                        ; preds = %if.then132, %for.body119
  %tlen.1 = phi i32 [ %tlen.0692, %for.body119 ], [ %add140, %if.then132 ]
  %cmp145 = icmp eq i8 %259, 5
  br i1 %cmp145, label %land.lhs.true147, label %if.end160

land.lhs.true147:                                 ; preds = %if.end141
  %264 = add nsw i64 %indvars.iv716, 1
  %arrayidx150 = getelementptr inbounds i8* %call4, i64 %264
  %265 = load i8* %arrayidx150, align 1, !tbaa !1
  %cmp152 = icmp eq i8 %265, 1
  br i1 %cmp152, label %if.then154, label %if.end160

if.then154:                                       ; preds = %land.lhs.true147
  %arrayidx157 = getelementptr inbounds i32* %0, i64 %264
  %266 = load i32* %arrayidx157, align 4, !tbaa !3
  %sub158 = add i32 %tlen.1, -1
  %add159 = add i32 %sub158, %266
  br label %if.end160

if.end160:                                        ; preds = %if.then154, %land.lhs.true147, %if.end141
  %tlen.2 = phi i32 [ %add159, %if.then154 ], [ %tlen.1, %land.lhs.true147 ], [ %tlen.1, %if.end141 ]
  br i1 %cmp123, label %land.lhs.true166, label %if.end160.for.inc180_crit_edge

if.end160.for.inc180_crit_edge:                   ; preds = %if.end160
  %indvars.iv.next717.pre = add i64 %indvars.iv716, 1
  br label %for.inc180

land.lhs.true166:                                 ; preds = %land.lhs.true125, %if.end160
  %tlen.2736 = phi i32 [ %tlen.2, %if.end160 ], [ %tlen.0692, %land.lhs.true125 ]
  %267 = add nsw i64 %indvars.iv716, 1
  %arrayidx169 = getelementptr inbounds i8* %call4, i64 %267
  %268 = load i8* %arrayidx169, align 1, !tbaa !1
  %cmp171 = icmp eq i8 %268, 8
  br i1 %cmp171, label %if.then173, label %for.inc180

if.then173:                                       ; preds = %land.lhs.true166
  %269 = load i32* %M, align 4, !tbaa !3
  %arrayidx176 = getelementptr inbounds i32* %0, i64 %indvars.iv716
  %270 = load i32* %arrayidx176, align 4, !tbaa !3
  %sub177 = add i32 %269, %tlen.2736
  %add178 = sub i32 %sub177, %270
  br label %for.inc180

for.inc180:                                       ; preds = %if.end160.for.inc180_crit_edge, %land.lhs.true166, %if.then173
  %indvars.iv.next717.pre-phi = phi i64 [ %indvars.iv.next717.pre, %if.end160.for.inc180_crit_edge ], [ %267, %land.lhs.true166 ], [ %267, %if.then173 ]
  %tlen.3 = phi i32 [ %tlen.2, %if.end160.for.inc180_crit_edge ], [ %tlen.2736, %land.lhs.true166 ], [ %add178, %if.then173 ]
  %lftr.wideiv721 = trunc i64 %indvars.iv.next717.pre-phi to i32
  %exitcond722 = icmp eq i32 %lftr.wideiv721, %L
  br i1 %exitcond722, label %for.end182, label %for.body119

for.end182:                                       ; preds = %for.inc180, %while.end
  %tlen.0.lcssa = phi i32 [ %add115, %while.end ], [ %tlen.3, %for.inc180 ]
  %271 = load i8* %arrayidx18, align 1, !tbaa !1
  %cmp185 = icmp eq i8 %271, 1
  br i1 %cmp185, label %if.then187, label %if.end191

if.then187:                                       ; preds = %for.end182
  %272 = load i32* %3, align 4, !tbaa !3
  %sub189 = add i32 %tlen.0.lcssa, -1
  %add190 = add i32 %sub189, %272
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %for.end182
  %tlen.4 = phi i32 [ %add190, %if.then187 ], [ %tlen.0.lcssa, %for.end182 ]
  %273 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp195 = icmp eq i8 %273, 1
  br i1 %cmp195, label %if.then197, label %if.end203

if.then197:                                       ; preds = %if.end191
  %274 = load i32* %M, align 4, !tbaa !3
  %275 = load i32* %arrayidx17, align 4, !tbaa !3
  %sub201 = add i32 %274, %tlen.4
  %add202 = sub i32 %sub201, %275
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %if.end191
  %tlen.5 = phi i32 [ %add202, %if.then197 ], [ %tlen.4, %if.end191 ]
  call void @P7AllocTrace(i32 %tlen.5, %struct.p7trace_s** %tr) #5
  %276 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %276, i64 0, i32 1
  %277 = load i8** %statetype, align 8, !tbaa !0
  store i8 4, i8* %277, align 1, !tbaa !1
  %278 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %278, i64 0, i32 2
  %279 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %279, align 4, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %278, i64 0, i32 3
  %280 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %280, align 4, !tbaa !3
  %statetype207 = getelementptr inbounds %struct.p7trace_s* %278, i64 0, i32 1
  %281 = load i8** %statetype207, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i8* %281, i64 1
  store i8 5, i8* %arrayidx208, align 1, !tbaa !1
  %282 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx209 = getelementptr inbounds %struct.p7trace_s* %282, i64 0, i32 2
  %283 = load i32** %nodeidx209, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds i32* %283, i64 1
  store i32 0, i32* %arrayidx210, align 4, !tbaa !3
  %pos211 = getelementptr inbounds %struct.p7trace_s* %282, i64 0, i32 3
  %284 = load i32** %pos211, align 8, !tbaa !0
  %arrayidx212 = getelementptr inbounds i32* %284, i64 1
  store i32 0, i32* %arrayidx212, align 4, !tbaa !3
  %cmp214686 = icmp slt i32 %L, 1
  br i1 %cmp214686, label %for.end439, label %for.body216.lr.ph

for.body216.lr.ph:                                ; preds = %if.end203
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  br label %for.body216

for.body216:                                      ; preds = %for.inc437, %for.body216.lr.ph
  %indvars.iv711 = phi i64 [ %indvars.iv.next712, %for.inc437 ], [ 1, %for.body216.lr.ph ]
  %tpos.0689 = phi i32 [ %tpos.7, %for.inc437 ], [ 2, %for.body216.lr.ph ]
  %arrayidx218 = getelementptr inbounds i8* %call4, i64 %indvars.iv711
  %285 = load i8* %arrayidx218, align 1, !tbaa !1
  %conv219 = sext i8 %285 to i32
  switch i32 %conv219, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb399
    i32 5, label %sw.bb412
    i32 8, label %sw.bb423
  ]

sw.bb:                                            ; preds = %for.body216
  %sub220 = add nsw i32 %tpos.0689, -1
  %idxprom221 = sext i32 %sub220 to i64
  %286 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype222 = getelementptr inbounds %struct.p7trace_s* %286, i64 0, i32 1
  %287 = load i8** %statetype222, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds i8* %287, i64 %idxprom221
  %288 = load i8* %arrayidx223, align 1, !tbaa !1
  %cmp225 = icmp eq i8 %288, 5
  br i1 %cmp225, label %if.then227, label %sw.bb.if.end273_crit_edge

sw.bb.if.end273_crit_edge:                        ; preds = %sw.bb
  %arrayidx278.pre = getelementptr inbounds i32* %0, i64 %indvars.iv711
  br label %if.end273

if.then227:                                       ; preds = %sw.bb
  %idxprom228 = sext i32 %tpos.0689 to i64
  %arrayidx230 = getelementptr inbounds i8* %287, i64 %idxprom228
  store i8 6, i8* %arrayidx230, align 1, !tbaa !1
  %289 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx232 = getelementptr inbounds %struct.p7trace_s* %289, i64 0, i32 2
  %290 = load i32** %nodeidx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %290, i64 %idxprom228
  store i32 0, i32* %arrayidx233, align 4, !tbaa !3
  %pos235 = getelementptr inbounds %struct.p7trace_s* %289, i64 0, i32 3
  %291 = load i32** %pos235, align 8, !tbaa !0
  %arrayidx236 = getelementptr inbounds i32* %291, i64 %idxprom228
  store i32 0, i32* %arrayidx236, align 4, !tbaa !3
  %inc237 = add i32 %tpos.0689, 1
  %arrayidx239 = getelementptr inbounds i32* %0, i64 %indvars.iv711
  %292 = load i32* %arrayidx239, align 4, !tbaa !3
  %idxprom240 = sext i32 %292 to i64
  %293 = load float** %begin, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds float* %293, i64 %idxprom240
  %294 = load float* %arrayidx241, align 4, !tbaa !4
  %295 = load float* %p1, align 4, !tbaa !4
  %call242 = call i32 @Prob2Score(float %294, float %295) #5
  %conv243 = sitofp i32 %call242 to double
  %add244 = fadd double %conv243, 1.000000e+03
  %296 = load i32* %arrayidx239, align 4, !tbaa !3
  %idxprom247 = sext i32 %296 to i64
  %297 = load i32** %bsc.i, align 8, !tbaa !0
  %arrayidx248 = getelementptr inbounds i32* %297, i64 %idxprom247
  %298 = load i32* %arrayidx248, align 4, !tbaa !3
  %conv249 = sitofp i32 %298 to double
  %cmp250 = fcmp ole double %add244, %conv249
  %cmp256673 = icmp sgt i32 %296, 1
  %or.cond741 = and i1 %cmp250, %cmp256673
  br i1 %or.cond741, label %for.body258.lr.ph, label %if.end273

for.body258.lr.ph:                                ; preds = %if.then227
  %299 = sext i32 %inc237 to i64
  %.pre733 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %300 = phi %struct.p7trace_s* [ %.pre733, %for.body258.lr.ph ], [ %302, %for.body258 ]
  %indvars.iv = phi i64 [ %299, %for.body258.lr.ph ], [ %indvars.iv.next, %for.body258 ]
  %tpos.1675 = phi i32 [ %inc237, %for.body258.lr.ph ], [ %inc268, %for.body258 ]
  %k.0674 = phi i32 [ 1, %for.body258.lr.ph ], [ %inc270, %for.body258 ]
  %statetype260 = getelementptr inbounds %struct.p7trace_s* %300, i64 0, i32 1
  %301 = load i8** %statetype260, align 8, !tbaa !0
  %arrayidx261 = getelementptr inbounds i8* %301, i64 %indvars.iv
  store i8 2, i8* %arrayidx261, align 1, !tbaa !1
  %302 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx263 = getelementptr inbounds %struct.p7trace_s* %302, i64 0, i32 2
  %303 = load i32** %nodeidx263, align 8, !tbaa !0
  %arrayidx264 = getelementptr inbounds i32* %303, i64 %indvars.iv
  store i32 %k.0674, i32* %arrayidx264, align 4, !tbaa !3
  %pos266 = getelementptr inbounds %struct.p7trace_s* %302, i64 0, i32 3
  %304 = load i32** %pos266, align 8, !tbaa !0
  %arrayidx267 = getelementptr inbounds i32* %304, i64 %indvars.iv
  store i32 0, i32* %arrayidx267, align 4, !tbaa !3
  %inc268 = add nsw i32 %tpos.1675, 1
  %inc270 = add nsw i32 %k.0674, 1
  %305 = load i32* %arrayidx239, align 4, !tbaa !3
  %cmp256 = icmp slt i32 %inc270, %305
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp256, label %for.body258, label %if.end273

if.end273:                                        ; preds = %if.then227, %for.body258, %sw.bb.if.end273_crit_edge
  %arrayidx278.pre-phi = phi i32* [ %arrayidx278.pre, %sw.bb.if.end273_crit_edge ], [ %arrayidx239, %if.then227 ], [ %arrayidx239, %for.body258 ]
  %tpos.2 = phi i32 [ %tpos.0689, %sw.bb.if.end273_crit_edge ], [ %inc237, %if.then227 ], [ %inc268, %for.body258 ]
  %idxprom274 = sext i32 %tpos.2 to i64
  %306 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype275 = getelementptr inbounds %struct.p7trace_s* %306, i64 0, i32 1
  %307 = load i8** %statetype275, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i8* %307, i64 %idxprom274
  store i8 1, i8* %arrayidx276, align 1, !tbaa !1
  %308 = load i32* %arrayidx278.pre-phi, align 4, !tbaa !3
  %309 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx280 = getelementptr inbounds %struct.p7trace_s* %309, i64 0, i32 2
  %310 = load i32** %nodeidx280, align 8, !tbaa !0
  %arrayidx281 = getelementptr inbounds i32* %310, i64 %idxprom274
  store i32 %308, i32* %arrayidx281, align 4, !tbaa !3
  %pos283 = getelementptr inbounds %struct.p7trace_s* %309, i64 0, i32 3
  %311 = load i32** %pos283, align 8, !tbaa !0
  %arrayidx284 = getelementptr inbounds i32* %311, i64 %idxprom274
  %312 = trunc i64 %indvars.iv711 to i32
  store i32 %312, i32* %arrayidx284, align 4, !tbaa !3
  %inc285 = add i32 %tpos.2, 1
  %cmp286 = icmp slt i32 %312, %L
  br i1 %cmp286, label %land.lhs.true288, label %if.end328

land.lhs.true288:                                 ; preds = %if.end273
  %313 = add nsw i64 %indvars.iv711, 1
  %arrayidx291 = getelementptr inbounds i8* %call4, i64 %313
  %314 = load i8* %arrayidx291, align 1, !tbaa !1
  %cmp293 = icmp eq i8 %314, 1
  br i1 %cmp293, label %land.lhs.true295, label %if.end328

land.lhs.true295:                                 ; preds = %land.lhs.true288
  %arrayidx298 = getelementptr inbounds i32* %0, i64 %313
  %315 = load i32* %arrayidx298, align 4, !tbaa !3
  %316 = load i32* %arrayidx278.pre-phi, align 4, !tbaa !3
  %sub301 = sub nsw i32 %315, %316
  %cmp302 = icmp sgt i32 %sub301, 1
  br i1 %cmp302, label %for.cond308.preheader, label %if.end328

for.cond308.preheader:                            ; preds = %land.lhs.true295
  %k.1676 = add nsw i32 %316, 1
  %cmp312677 = icmp slt i32 %k.1676, %315
  br i1 %cmp312677, label %for.body314.lr.ph, label %if.end328

for.body314.lr.ph:                                ; preds = %for.cond308.preheader
  %317 = sext i32 %inc285 to i64
  br label %for.body314

for.body314:                                      ; preds = %for.body314.lr.ph, %for.body314
  %318 = phi %struct.p7trace_s* [ %309, %for.body314.lr.ph ], [ %320, %for.body314 ]
  %indvars.iv706 = phi i64 [ %317, %for.body314.lr.ph ], [ %indvars.iv.next707, %for.body314 ]
  %k.1679 = phi i32 [ %k.1676, %for.body314.lr.ph ], [ %k.1, %for.body314 ]
  %tpos.3678 = phi i32 [ %inc285, %for.body314.lr.ph ], [ %inc324, %for.body314 ]
  %statetype316 = getelementptr inbounds %struct.p7trace_s* %318, i64 0, i32 1
  %319 = load i8** %statetype316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i8* %319, i64 %indvars.iv706
  store i8 2, i8* %arrayidx317, align 1, !tbaa !1
  %320 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx319 = getelementptr inbounds %struct.p7trace_s* %320, i64 0, i32 2
  %321 = load i32** %nodeidx319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %321, i64 %indvars.iv706
  store i32 %k.1679, i32* %arrayidx320, align 4, !tbaa !3
  %pos322 = getelementptr inbounds %struct.p7trace_s* %320, i64 0, i32 3
  %322 = load i32** %pos322, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds i32* %322, i64 %indvars.iv706
  store i32 0, i32* %arrayidx323, align 4, !tbaa !3
  %inc324 = add nsw i32 %tpos.3678, 1
  %k.1 = add nsw i32 %k.1679, 1
  %323 = load i32* %arrayidx298, align 4, !tbaa !3
  %cmp312 = icmp slt i32 %k.1, %323
  %indvars.iv.next707 = add i64 %indvars.iv706, 1
  br i1 %cmp312, label %for.body314, label %if.end328

if.end328:                                        ; preds = %for.cond308.preheader, %for.body314, %land.lhs.true295, %land.lhs.true288, %if.end273
  %tpos.4 = phi i32 [ %inc285, %land.lhs.true295 ], [ %inc285, %land.lhs.true288 ], [ %inc285, %if.end273 ], [ %inc285, %for.cond308.preheader ], [ %inc324, %for.body314 ]
  %cmp329 = icmp eq i32 %312, %L
  br i1 %cmp329, label %if.then338, label %lor.lhs.false331

lor.lhs.false331:                                 ; preds = %if.end328
  %324 = add nsw i64 %indvars.iv711, 1
  %arrayidx334 = getelementptr inbounds i8* %call4, i64 %324
  %325 = load i8* %arrayidx334, align 1, !tbaa !1
  %cmp336 = icmp eq i8 %325, 8
  br i1 %cmp336, label %if.then338, label %for.inc437

if.then338:                                       ; preds = %lor.lhs.false331, %if.end328
  %326 = add nsw i64 %indvars.iv711, -1
  %arrayidx341 = getelementptr inbounds i32* %0, i64 %326
  %327 = load i32* %arrayidx341, align 4, !tbaa !3
  %idxprom342 = sext i32 %327 to i64
  %328 = load float** %end, align 8, !tbaa !0
  %arrayidx343 = getelementptr inbounds float* %328, i64 %idxprom342
  %329 = load float* %arrayidx343, align 4, !tbaa !4
  %call344 = call i32 @Prob2Score(float %329, float 1.000000e+00) #5
  %conv345 = sitofp i32 %call344 to double
  %add346 = fadd double %conv345, 1.000000e+03
  %330 = load i32* %arrayidx341, align 4, !tbaa !3
  %idxprom350 = sext i32 %330 to i64
  %331 = load i32** %esc.i, align 8, !tbaa !0
  %arrayidx351 = getelementptr inbounds i32* %331, i64 %idxprom350
  %332 = load i32* %arrayidx351, align 4, !tbaa !3
  %conv352 = sitofp i32 %332 to double
  %cmp353 = fcmp ugt double %add346, %conv352
  br i1 %cmp353, label %if.end377, label %if.then355

if.then355:                                       ; preds = %if.then338
  %333 = load i32* %arrayidx278.pre-phi, align 4, !tbaa !3
  %334 = load i32* %M, align 4, !tbaa !3
  %cmp361682 = icmp slt i32 %333, %334
  br i1 %cmp361682, label %for.body363.lr.ph, label %if.end377

for.body363.lr.ph:                                ; preds = %if.then355
  %335 = sext i32 %tpos.4 to i64
  %.pre734 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  br label %for.body363

for.body363:                                      ; preds = %for.body363.lr.ph, %for.body363
  %336 = phi %struct.p7trace_s* [ %.pre734, %for.body363.lr.ph ], [ %338, %for.body363 ]
  %indvars.iv709 = phi i64 [ %335, %for.body363.lr.ph ], [ %indvars.iv.next710, %for.body363 ]
  %k.2684.in = phi i32 [ %333, %for.body363.lr.ph ], [ %k.2684, %for.body363 ]
  %tpos.5683 = phi i32 [ %tpos.4, %for.body363.lr.ph ], [ %inc373, %for.body363 ]
  %k.2684 = add nsw i32 %k.2684.in, 1
  %statetype365 = getelementptr inbounds %struct.p7trace_s* %336, i64 0, i32 1
  %337 = load i8** %statetype365, align 8, !tbaa !0
  %arrayidx366 = getelementptr inbounds i8* %337, i64 %indvars.iv709
  store i8 2, i8* %arrayidx366, align 1, !tbaa !1
  %338 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s* %338, i64 0, i32 2
  %339 = load i32** %nodeidx368, align 8, !tbaa !0
  %arrayidx369 = getelementptr inbounds i32* %339, i64 %indvars.iv709
  store i32 %k.2684, i32* %arrayidx369, align 4, !tbaa !3
  %pos371 = getelementptr inbounds %struct.p7trace_s* %338, i64 0, i32 3
  %340 = load i32** %pos371, align 8, !tbaa !0
  %arrayidx372 = getelementptr inbounds i32* %340, i64 %indvars.iv709
  store i32 0, i32* %arrayidx372, align 4, !tbaa !3
  %indvars.iv.next710 = add i64 %indvars.iv709, 1
  %inc373 = add nsw i32 %tpos.5683, 1
  %341 = load i32* %M, align 4, !tbaa !3
  %cmp361 = icmp slt i32 %k.2684, %341
  br i1 %cmp361, label %for.body363, label %if.end377

if.end377:                                        ; preds = %if.then355, %for.body363, %if.then338
  %tpos.6 = phi i32 [ %tpos.4, %if.then338 ], [ %tpos.4, %if.then355 ], [ %inc373, %for.body363 ]
  %idxprom378 = sext i32 %tpos.6 to i64
  %342 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype379 = getelementptr inbounds %struct.p7trace_s* %342, i64 0, i32 1
  %343 = load i8** %statetype379, align 8, !tbaa !0
  %arrayidx380 = getelementptr inbounds i8* %343, i64 %idxprom378
  store i8 7, i8* %arrayidx380, align 1, !tbaa !1
  %344 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx382 = getelementptr inbounds %struct.p7trace_s* %344, i64 0, i32 2
  %345 = load i32** %nodeidx382, align 8, !tbaa !0
  %arrayidx383 = getelementptr inbounds i32* %345, i64 %idxprom378
  store i32 0, i32* %arrayidx383, align 4, !tbaa !3
  %pos385 = getelementptr inbounds %struct.p7trace_s* %344, i64 0, i32 3
  %346 = load i32** %pos385, align 8, !tbaa !0
  %arrayidx386 = getelementptr inbounds i32* %346, i64 %idxprom378
  store i32 0, i32* %arrayidx386, align 4, !tbaa !3
  %inc387 = add nsw i32 %tpos.6, 1
  %idxprom388 = sext i32 %inc387 to i64
  %statetype389 = getelementptr inbounds %struct.p7trace_s* %344, i64 0, i32 1
  %347 = load i8** %statetype389, align 8, !tbaa !0
  %arrayidx390 = getelementptr inbounds i8* %347, i64 %idxprom388
  store i8 8, i8* %arrayidx390, align 1, !tbaa !1
  %348 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx392 = getelementptr inbounds %struct.p7trace_s* %348, i64 0, i32 2
  %349 = load i32** %nodeidx392, align 8, !tbaa !0
  %arrayidx393 = getelementptr inbounds i32* %349, i64 %idxprom388
  store i32 0, i32* %arrayidx393, align 4, !tbaa !3
  %pos395 = getelementptr inbounds %struct.p7trace_s* %348, i64 0, i32 3
  %350 = load i32** %pos395, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i32* %350, i64 %idxprom388
  store i32 0, i32* %arrayidx396, align 4, !tbaa !3
  %inc397 = add nsw i32 %tpos.6, 2
  br label %for.inc437

sw.bb399:                                         ; preds = %for.body216
  %idxprom400 = sext i32 %tpos.0689 to i64
  %351 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype401 = getelementptr inbounds %struct.p7trace_s* %351, i64 0, i32 1
  %352 = load i8** %statetype401, align 8, !tbaa !0
  %arrayidx402 = getelementptr inbounds i8* %352, i64 %idxprom400
  store i8 3, i8* %arrayidx402, align 1, !tbaa !1
  %arrayidx404 = getelementptr inbounds i32* %0, i64 %indvars.iv711
  %353 = load i32* %arrayidx404, align 4, !tbaa !3
  %354 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx406 = getelementptr inbounds %struct.p7trace_s* %354, i64 0, i32 2
  %355 = load i32** %nodeidx406, align 8, !tbaa !0
  %arrayidx407 = getelementptr inbounds i32* %355, i64 %idxprom400
  store i32 %353, i32* %arrayidx407, align 4, !tbaa !3
  %pos409 = getelementptr inbounds %struct.p7trace_s* %354, i64 0, i32 3
  %356 = load i32** %pos409, align 8, !tbaa !0
  %arrayidx410 = getelementptr inbounds i32* %356, i64 %idxprom400
  %357 = trunc i64 %indvars.iv711 to i32
  store i32 %357, i32* %arrayidx410, align 4, !tbaa !3
  %inc411 = add nsw i32 %tpos.0689, 1
  br label %for.inc437

sw.bb412:                                         ; preds = %for.body216
  %idxprom413 = sext i32 %tpos.0689 to i64
  %358 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype414 = getelementptr inbounds %struct.p7trace_s* %358, i64 0, i32 1
  %359 = load i8** %statetype414, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i8* %359, i64 %idxprom413
  store i8 5, i8* %arrayidx415, align 1, !tbaa !1
  %360 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx417 = getelementptr inbounds %struct.p7trace_s* %360, i64 0, i32 2
  %361 = load i32** %nodeidx417, align 8, !tbaa !0
  %arrayidx418 = getelementptr inbounds i32* %361, i64 %idxprom413
  store i32 0, i32* %arrayidx418, align 4, !tbaa !3
  %pos420 = getelementptr inbounds %struct.p7trace_s* %360, i64 0, i32 3
  %362 = load i32** %pos420, align 8, !tbaa !0
  %arrayidx421 = getelementptr inbounds i32* %362, i64 %idxprom413
  %363 = trunc i64 %indvars.iv711 to i32
  store i32 %363, i32* %arrayidx421, align 4, !tbaa !3
  %inc422 = add nsw i32 %tpos.0689, 1
  br label %for.inc437

sw.bb423:                                         ; preds = %for.body216
  %idxprom424 = sext i32 %tpos.0689 to i64
  %364 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype425 = getelementptr inbounds %struct.p7trace_s* %364, i64 0, i32 1
  %365 = load i8** %statetype425, align 8, !tbaa !0
  %arrayidx426 = getelementptr inbounds i8* %365, i64 %idxprom424
  store i8 8, i8* %arrayidx426, align 1, !tbaa !1
  %366 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx428 = getelementptr inbounds %struct.p7trace_s* %366, i64 0, i32 2
  %367 = load i32** %nodeidx428, align 8, !tbaa !0
  %arrayidx429 = getelementptr inbounds i32* %367, i64 %idxprom424
  store i32 0, i32* %arrayidx429, align 4, !tbaa !3
  %pos431 = getelementptr inbounds %struct.p7trace_s* %366, i64 0, i32 3
  %368 = load i32** %pos431, align 8, !tbaa !0
  %arrayidx432 = getelementptr inbounds i32* %368, i64 %idxprom424
  %369 = trunc i64 %indvars.iv711 to i32
  store i32 %369, i32* %arrayidx432, align 4, !tbaa !3
  %inc433 = add nsw i32 %tpos.0689, 1
  br label %for.inc437

sw.default:                                       ; preds = %for.body216
  %call436 = call i8* @Statetype(i8 signext %285) #5
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* %call436) #5
  br label %for.inc437

for.inc437:                                       ; preds = %sw.bb399, %sw.bb412, %sw.bb423, %sw.default, %if.end377, %lor.lhs.false331
  %tpos.7 = phi i32 [ %tpos.0689, %sw.default ], [ %inc433, %sw.bb423 ], [ %inc422, %sw.bb412 ], [ %inc411, %sw.bb399 ], [ %inc397, %if.end377 ], [ %tpos.4, %lor.lhs.false331 ]
  %indvars.iv.next712 = add i64 %indvars.iv711, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next712 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.cond213.for.end439_crit_edge, label %for.body216

for.cond213.for.end439_crit_edge:                 ; preds = %for.inc437
  %.pre732 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  br label %for.end439

for.end439:                                       ; preds = %for.cond213.for.end439_crit_edge, %if.end203
  %370 = phi %struct.p7trace_s* [ %.pre732, %for.cond213.for.end439_crit_edge ], [ %282, %if.end203 ]
  %tpos.0.lcssa = phi i32 [ %tpos.7, %for.cond213.for.end439_crit_edge ], [ 2, %if.end203 ]
  %idxprom440 = sext i32 %tpos.0.lcssa to i64
  %statetype441 = getelementptr inbounds %struct.p7trace_s* %370, i64 0, i32 1
  %371 = load i8** %statetype441, align 8, !tbaa !0
  %arrayidx442 = getelementptr inbounds i8* %371, i64 %idxprom440
  store i8 9, i8* %arrayidx442, align 1, !tbaa !1
  %372 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx444 = getelementptr inbounds %struct.p7trace_s* %372, i64 0, i32 2
  %373 = load i32** %nodeidx444, align 8, !tbaa !0
  %arrayidx445 = getelementptr inbounds i32* %373, i64 %idxprom440
  store i32 0, i32* %arrayidx445, align 4, !tbaa !3
  %pos447 = getelementptr inbounds %struct.p7trace_s* %372, i64 0, i32 3
  %374 = load i32** %pos447, align 8, !tbaa !0
  %arrayidx448 = getelementptr inbounds i32* %374, i64 %idxprom440
  store i32 0, i32* %arrayidx448, align 4, !tbaa !3
  %add449 = add nsw i32 %tpos.0.lcssa, 1
  %tlen450 = getelementptr inbounds %struct.p7trace_s* %372, i64 0, i32 0
  store i32 %add449, i32* %tlen450, align 4, !tbaa !3
  store %struct.p7trace_s* %372, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  call void @free(i8* %call) #5
  call void @free(i8* %call4) #5
  call void @free(i8* %call12) #5
  call void @free(i8* %call8) #5
  ret float %ret_sc.1
}

; Function Attrs: optsize
declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare i8* @Statetype(i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define float @Plan7ESTViterbi(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !3
  %call.i = tail call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %L, i32 %0, i32 0, i32 0) #5
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0
  %1 = load i32*** %xmx1.i, align 8, !tbaa !0
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1
  %2 = load i32*** %mmx4.i, align 8, !tbaa !0
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2
  %3 = load i32*** %imx8.i, align 8, !tbaa !0
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3
  %4 = load i32*** %dmx12.i, align 8, !tbaa !0
  %5 = load i32** %1, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %5, i64 4
  store i32 0, i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %6 = load i32* %arrayidx3, align 4, !tbaa !3
  store i32 %6, i32* %5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %5, i64 3
  store i32 -987654321, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %5, i64 2
  store i32 -987654321, i32* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %5, i64 1
  store i32 -987654321, i32* %arrayidx11, align 4, !tbaa !3
  %7 = load i32* %M, align 4, !tbaa !3
  %cmp1079 = icmp slt i32 %7, 0
  br i1 %cmp1079, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %8 = load i32** %4, align 8, !tbaa !0
  %9 = load i32** %3, align 8, !tbaa !0
  %10 = load i32** %2, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv1097
  store i32 -987654321, i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv1097
  store i32 -987654321, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv1097
  store i32 -987654321, i32* %arrayidx20, align 4, !tbaa !3
  %indvars.iv.next1098 = add i64 %indvars.iv1097, 1
  %11 = load i32* %M, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv1097 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %arrayidx1, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %13 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx25 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %14 = load i32* %arrayidx25, align 4, !tbaa !3
  %add26 = add nsw i32 %14, %13
  %arrayidx27 = getelementptr inbounds i32** %1, i64 1
  %15 = load i32** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %15, i64 4
  store i32 %add26, i32* %arrayidx28, align 4, !tbaa !3
  %16 = load i32* %arrayidx3, align 4, !tbaa !3
  %add34 = add nsw i32 %16, %add26
  store i32 %add34, i32* %15, align 4, !tbaa !3
  store i32 -987654321, i32* %arrayidx7, align 4, !tbaa !3
  store i32 -987654321, i32* %arrayidx9, align 4, !tbaa !3
  store i32 -987654321, i32* %arrayidx11, align 4, !tbaa !3
  %17 = load i32* %M, align 4, !tbaa !3
  %cmp451077 = icmp slt i32 %17, 0
  br i1 %cmp451077, label %for.cond59.preheader, label %for.body46.lr.ph

for.body46.lr.ph:                                 ; preds = %for.end
  %18 = load i32** %4, align 8, !tbaa !0
  %19 = load i32** %3, align 8, !tbaa !0
  %20 = load i32** %2, align 8, !tbaa !0
  br label %for.body46

for.cond59.preheader:                             ; preds = %for.body46, %for.end
  %cmp601074 = icmp slt i32 %L, 2
  br i1 %cmp601074, label %for.end725, label %for.body61.lr.ph

for.body61.lr.ph:                                 ; preds = %for.cond59.preheader
  %arrayidx646 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx656 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %arrayidx683 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx701 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx711 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %dnam = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 41
  %dna2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 43
  %dna4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 44
  %dnai = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 42
  %21 = add i32 %L, 1
  br label %for.body61

for.body46:                                       ; preds = %for.body46, %for.body46.lr.ph
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %for.body46 ], [ 0, %for.body46.lr.ph ]
  %arrayidx49 = getelementptr inbounds i32* %18, i64 %indvars.iv1095
  store i32 -987654321, i32* %arrayidx49, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds i32* %19, i64 %indvars.iv1095
  store i32 -987654321, i32* %arrayidx52, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32* %20, i64 %indvars.iv1095
  store i32 -987654321, i32* %arrayidx55, align 4, !tbaa !3
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1
  %22 = load i32* %M, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv1095 to i32
  %cmp45 = icmp slt i32 %23, %22
  br i1 %cmp45, label %for.body46, label %for.cond59.preheader

for.body61:                                       ; preds = %for.end639, %for.body61.lr.ph
  %24 = phi i32* [ %139, %for.end639 ], [ %15, %for.body61.lr.ph ]
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %for.end639 ], [ 2, %for.body61.lr.ph ]
  %codon.01076 = phi i32 [ %codon.1, %for.end639 ], [ undef, %for.body61.lr.ph ]
  %arrayidx63 = getelementptr inbounds i32** %4, i64 %indvars.iv1085
  %25 = load i32** %arrayidx63, align 8, !tbaa !0
  store i32 -987654321, i32* %25, align 4, !tbaa !3
  %arrayidx66 = getelementptr inbounds i32** %3, i64 %indvars.iv1085
  %26 = load i32** %arrayidx66, align 8, !tbaa !0
  store i32 -987654321, i32* %26, align 4, !tbaa !3
  %arrayidx69 = getelementptr inbounds i32** %2, i64 %indvars.iv1085
  %27 = load i32** %arrayidx69, align 8, !tbaa !0
  store i32 -987654321, i32* %27, align 4, !tbaa !3
  %28 = trunc i64 %indvars.iv1085 to i32
  %cmp71 = icmp sgt i32 %28, 2
  br i1 %cmp71, label %if.then, label %if.end103

if.then:                                          ; preds = %for.body61
  %29 = add nsw i64 %indvars.iv1085, -2
  %arrayidx73 = getelementptr inbounds i8* %dsq, i64 %29
  %30 = load i8* %arrayidx73, align 1, !tbaa !1
  %conv = sext i8 %30 to i32
  %cmp74 = icmp slt i8 %30, 4
  br i1 %cmp74, label %land.lhs.true, label %if.end103

land.lhs.true:                                    ; preds = %if.then
  %31 = add nsw i64 %indvars.iv1085, -1
  %arrayidx78 = getelementptr inbounds i8* %dsq, i64 %31
  %32 = load i8* %arrayidx78, align 1, !tbaa !1
  %conv79 = sext i8 %32 to i32
  %cmp80 = icmp slt i8 %32, 4
  br i1 %cmp80, label %land.lhs.true82, label %if.end103

land.lhs.true82:                                  ; preds = %land.lhs.true
  %arrayidx84 = getelementptr inbounds i8* %dsq, i64 %indvars.iv1085
  %33 = load i8* %arrayidx84, align 1, !tbaa !1
  %cmp86 = icmp slt i8 %33, 4
  br i1 %cmp86, label %if.then88, label %if.end103

if.then88:                                        ; preds = %land.lhs.true82
  %conv85 = sext i8 %33 to i32
  %mul = shl nsw i32 %conv, 4
  %mul97 = shl nsw i32 %conv79, 2
  %add98 = add nsw i32 %mul97, %mul
  %add102 = add nsw i32 %add98, %conv85
  br label %if.end103

if.end103:                                        ; preds = %if.then, %land.lhs.true, %land.lhs.true82, %if.then88, %for.body61
  %codon.1 = phi i32 [ %add102, %if.then88 ], [ %codon.01076, %for.body61 ], [ 64, %land.lhs.true82 ], [ 64, %land.lhs.true ], [ 64, %if.then ]
  %34 = load i32* %M, align 4, !tbaa !3
  %cmp1061070 = icmp slt i32 %34, 1
  br i1 %cmp1061070, label %for.end595, label %for.body108.lr.ph

for.body108.lr.ph:                                ; preds = %if.end103
  %35 = add nsw i64 %indvars.iv1085, -3
  %arrayidx116 = getelementptr inbounds i32** %2, i64 %35
  %arrayidx131 = getelementptr inbounds i32** %3, i64 %35
  %arrayidx153 = getelementptr inbounds i32** %1, i64 %35
  %arrayidx174 = getelementptr inbounds i32** %4, i64 %35
  %idxprom195 = sext i32 %codon.1 to i64
  %36 = add nsw i64 %indvars.iv1085, -2
  %arrayidx208 = getelementptr inbounds i32** %2, i64 %36
  %37 = load i32** %arrayidx208, align 8, !tbaa !0
  %38 = load i32*** %tsc, align 8, !tbaa !0
  %39 = load i32** %38, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32** %3, i64 %36
  %40 = load i32** %arrayidx233, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds i32** %38, i64 3
  %41 = load i32** %arrayidx238, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i32** %1, i64 %36
  %42 = load i32** %arrayidx257, align 8, !tbaa !0
  %43 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx281 = getelementptr inbounds i32** %4, i64 %36
  %44 = load i32** %arrayidx281, align 8, !tbaa !0
  %arrayidx286 = getelementptr inbounds i32** %38, i64 5
  %45 = load i32** %arrayidx286, align 8, !tbaa !0
  %cmp303 = icmp sgt i32 %28, 3
  %46 = add nsw i64 %indvars.iv1085, -4
  %arrayidx310 = getelementptr inbounds i32** %2, i64 %46
  %arrayidx335 = getelementptr inbounds i32** %3, i64 %46
  %arrayidx359 = getelementptr inbounds i32** %1, i64 %46
  %arrayidx383 = getelementptr inbounds i32** %4, i64 %46
  %arrayidx414 = getelementptr inbounds i32** %38, i64 2
  %47 = load i32** %arrayidx414, align 8, !tbaa !0
  %arrayidx429 = getelementptr inbounds i32** %38, i64 6
  %48 = load i32** %arrayidx429, align 8, !tbaa !0
  %arrayidx500 = getelementptr inbounds i32** %38, i64 1
  %49 = load i32** %arrayidx500, align 8, !tbaa !0
  %arrayidx524 = getelementptr inbounds i32** %38, i64 4
  %50 = load i32** %arrayidx524, align 8, !tbaa !0
  %cmp541 = icmp sgt i32 %28, 4
  br label %for.body108

for.body108:                                      ; preds = %for.inc593, %for.body108.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc593 ], [ 1, %for.body108.lr.ph ]
  br i1 %cmp71, label %if.then111, label %for.body108.if.end203_crit_edge

for.body108.if.end203_crit_edge:                  ; preds = %for.body108
  %arrayidx220.phi.trans.insert = getelementptr inbounds i32* %27, i64 %indvars.iv
  %.pre1108 = load i32* %arrayidx220.phi.trans.insert, align 4, !tbaa !3
  %.pre1110 = add nsw i64 %indvars.iv, -1
  %arrayidx214.pre = getelementptr inbounds i32* %39, i64 %.pre1110
  br label %if.end203

if.then111:                                       ; preds = %for.body108
  %51 = add nsw i64 %indvars.iv, -1
  %52 = load i32** %arrayidx116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32* %52, i64 %51
  %53 = load i32* %arrayidx117, align 4, !tbaa !3
  %arrayidx121 = getelementptr inbounds i32* %39, i64 %51
  %54 = load i32* %arrayidx121, align 4, !tbaa !3
  %add122 = add nsw i32 %54, %53
  %arrayidx126 = getelementptr inbounds i32* %27, i64 %indvars.iv
  store i32 %add122, i32* %arrayidx126, align 4, !tbaa !3
  %55 = load i32** %arrayidx131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i32* %55, i64 %51
  %56 = load i32* %arrayidx132, align 4, !tbaa !3
  %arrayidx137 = getelementptr inbounds i32* %41, i64 %51
  %57 = load i32* %arrayidx137, align 4, !tbaa !3
  %add138 = add nsw i32 %57, %56
  %cmp143 = icmp sgt i32 %add138, %add122
  %add138.add122 = select i1 %cmp143, i32 %add138, i32 %add122
  store i32 %add138.add122, i32* %arrayidx126, align 4, !tbaa !3
  %add138.add1221111 = select i1 %cmp143, i32 %add138, i32 %add122
  %58 = load i32** %arrayidx153, align 8, !tbaa !0
  %59 = load i32* %58, align 4, !tbaa !3
  %arrayidx156 = getelementptr inbounds i32* %43, i64 %indvars.iv
  %60 = load i32* %arrayidx156, align 4, !tbaa !3
  %add157 = add nsw i32 %60, %59
  %cmp162 = icmp sgt i32 %add157, %add138.add1221111
  %add157.add138.add122 = select i1 %cmp162, i32 %add157, i32 %add138.add122
  store i32 %add157.add138.add122, i32* %arrayidx126, align 4, !tbaa !3
  %add157.add138.add1221111 = select i1 %cmp162, i32 %add157, i32 %add138.add1221111
  %61 = load i32** %arrayidx174, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %61, i64 %51
  %62 = load i32* %arrayidx175, align 4, !tbaa !3
  %arrayidx180 = getelementptr inbounds i32* %45, i64 %51
  %63 = load i32* %arrayidx180, align 4, !tbaa !3
  %add181 = add nsw i32 %63, %62
  %cmp186 = icmp sgt i32 %add181, %add157.add138.add1221111
  br i1 %cmp186, label %if.then188, label %if.end193

if.then188:                                       ; preds = %if.then111
  store i32 %add181, i32* %arrayidx126, align 4, !tbaa !3
  br label %if.end193

if.end193:                                        ; preds = %if.then111, %if.then188
  %64 = phi i32 [ %add181, %if.then188 ], [ %add157.add138.add1221111, %if.then111 ]
  %65 = load i32*** %dnam, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i32** %65, i64 %idxprom195
  %66 = load i32** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i32* %66, i64 %indvars.iv
  %67 = load i32* %arrayidx197, align 4, !tbaa !3
  %add202 = add nsw i32 %64, %67
  store i32 %add202, i32* %arrayidx126, align 4, !tbaa !3
  br label %if.end203

if.end203:                                        ; preds = %for.body108.if.end203_crit_edge, %if.end193
  %arrayidx214.pre-phi = phi i32* [ %arrayidx214.pre, %for.body108.if.end203_crit_edge ], [ %arrayidx121, %if.end193 ]
  %.pre-phi = phi i64 [ %.pre1110, %for.body108.if.end203_crit_edge ], [ %51, %if.end193 ]
  %68 = phi i32 [ %.pre1108, %for.body108.if.end203_crit_edge ], [ %add202, %if.end193 ]
  %arrayidx209 = getelementptr inbounds i32* %37, i64 %.pre-phi
  %69 = load i32* %arrayidx209, align 4, !tbaa !3
  %70 = load i32* %arrayidx214.pre-phi, align 4, !tbaa !3
  %add215 = add nsw i32 %70, %69
  %71 = load i32* %dna2, align 4, !tbaa !3
  %add216 = add nsw i32 %add215, %71
  %arrayidx220 = getelementptr inbounds i32* %27, i64 %indvars.iv
  %cmp221 = icmp sgt i32 %add216, %68
  br i1 %cmp221, label %if.then223, label %if.end228

if.then223:                                       ; preds = %if.end203
  store i32 %add216, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1100 = load i32* %dna2, align 4, !tbaa !3
  br label %if.end228

if.end228:                                        ; preds = %if.end203, %if.then223
  %72 = phi i32 [ %add216, %if.then223 ], [ %68, %if.end203 ]
  %73 = phi i32 [ %.pre1100, %if.then223 ], [ %71, %if.end203 ]
  %arrayidx234 = getelementptr inbounds i32* %40, i64 %.pre-phi
  %74 = load i32* %arrayidx234, align 4, !tbaa !3
  %arrayidx239 = getelementptr inbounds i32* %41, i64 %.pre-phi
  %75 = load i32* %arrayidx239, align 4, !tbaa !3
  %add240 = add nsw i32 %75, %74
  %add242 = add nsw i32 %add240, %73
  %cmp247 = icmp sgt i32 %add242, %72
  br i1 %cmp247, label %if.then249, label %if.end254

if.then249:                                       ; preds = %if.end228
  store i32 %add242, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1101 = load i32* %dna2, align 4, !tbaa !3
  br label %if.end254

if.end254:                                        ; preds = %if.then249, %if.end228
  %76 = phi i32 [ %add242, %if.then249 ], [ %72, %if.end228 ]
  %77 = phi i32 [ %.pre1101, %if.then249 ], [ %73, %if.end228 ]
  %78 = load i32* %42, align 4, !tbaa !3
  %arrayidx261 = getelementptr inbounds i32* %43, i64 %indvars.iv
  %79 = load i32* %arrayidx261, align 4, !tbaa !3
  %add262 = add nsw i32 %79, %78
  %add264 = add nsw i32 %add262, %77
  %cmp269 = icmp sgt i32 %add264, %76
  br i1 %cmp269, label %if.then271, label %if.end276

if.then271:                                       ; preds = %if.end254
  store i32 %add264, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1102 = load i32* %dna2, align 4, !tbaa !3
  br label %if.end276

if.end276:                                        ; preds = %if.then271, %if.end254
  %80 = phi i32 [ %add264, %if.then271 ], [ %76, %if.end254 ]
  %81 = phi i32 [ %.pre1102, %if.then271 ], [ %77, %if.end254 ]
  %arrayidx282 = getelementptr inbounds i32* %44, i64 %.pre-phi
  %82 = load i32* %arrayidx282, align 4, !tbaa !3
  %arrayidx287 = getelementptr inbounds i32* %45, i64 %.pre-phi
  %83 = load i32* %arrayidx287, align 4, !tbaa !3
  %add288 = add nsw i32 %83, %82
  %add290 = add nsw i32 %add288, %81
  %cmp295 = icmp sgt i32 %add290, %80
  br i1 %cmp295, label %if.then297, label %if.end302

if.then297:                                       ; preds = %if.end276
  store i32 %add290, i32* %arrayidx220, align 4, !tbaa !3
  br label %if.end302

if.end302:                                        ; preds = %if.then297, %if.end276
  %84 = phi i32 [ %add290, %if.then297 ], [ %80, %if.end276 ]
  br i1 %cmp303, label %if.then305, label %if.end405

if.then305:                                       ; preds = %if.end302
  %85 = load i32** %arrayidx310, align 8, !tbaa !0
  %arrayidx311 = getelementptr inbounds i32* %85, i64 %.pre-phi
  %86 = load i32* %arrayidx311, align 4, !tbaa !3
  %87 = load i32* %arrayidx214.pre-phi, align 4, !tbaa !3
  %add317 = add nsw i32 %87, %86
  %88 = load i32* %dna4, align 4, !tbaa !3
  %add318 = add nsw i32 %add317, %88
  %cmp323 = icmp sgt i32 %add318, %84
  br i1 %cmp323, label %if.then325, label %if.end330

if.then325:                                       ; preds = %if.then305
  store i32 %add318, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1103 = load i32* %dna4, align 4, !tbaa !3
  br label %if.end330

if.end330:                                        ; preds = %if.then305, %if.then325
  %89 = phi i32 [ %add318, %if.then325 ], [ %84, %if.then305 ]
  %90 = phi i32 [ %.pre1103, %if.then325 ], [ %88, %if.then305 ]
  %91 = load i32** %arrayidx335, align 8, !tbaa !0
  %arrayidx336 = getelementptr inbounds i32* %91, i64 %.pre-phi
  %92 = load i32* %arrayidx336, align 4, !tbaa !3
  %93 = load i32* %arrayidx239, align 4, !tbaa !3
  %add342 = add nsw i32 %93, %92
  %add344 = add nsw i32 %add342, %90
  %cmp349 = icmp sgt i32 %add344, %89
  br i1 %cmp349, label %if.then351, label %if.end356

if.then351:                                       ; preds = %if.end330
  store i32 %add344, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1104 = load i32* %dna4, align 4, !tbaa !3
  br label %if.end356

if.end356:                                        ; preds = %if.end330, %if.then351
  %94 = phi i32 [ %add344, %if.then351 ], [ %89, %if.end330 ]
  %95 = phi i32 [ %.pre1104, %if.then351 ], [ %90, %if.end330 ]
  %96 = load i32** %arrayidx359, align 8, !tbaa !0
  %97 = load i32* %96, align 4, !tbaa !3
  %98 = load i32* %arrayidx261, align 4, !tbaa !3
  %add364 = add nsw i32 %98, %97
  %add366 = add nsw i32 %add364, %95
  %cmp371 = icmp sgt i32 %add366, %94
  br i1 %cmp371, label %if.then373, label %if.end378

if.then373:                                       ; preds = %if.end356
  store i32 %add366, i32* %arrayidx220, align 4, !tbaa !3
  %.pre1105 = load i32* %dna4, align 4, !tbaa !3
  br label %if.end378

if.end378:                                        ; preds = %if.end356, %if.then373
  %99 = phi i32 [ %add366, %if.then373 ], [ %94, %if.end356 ]
  %100 = phi i32 [ %.pre1105, %if.then373 ], [ %95, %if.end356 ]
  %101 = load i32** %arrayidx383, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i32* %101, i64 %.pre-phi
  %102 = load i32* %arrayidx384, align 4, !tbaa !3
  %103 = load i32* %arrayidx287, align 4, !tbaa !3
  %add390 = add nsw i32 %103, %102
  %add392 = add nsw i32 %add390, %100
  %cmp397 = icmp sgt i32 %add392, %99
  br i1 %cmp397, label %if.then399, label %if.end405

if.then399:                                       ; preds = %if.end378
  store i32 %add392, i32* %arrayidx220, align 4, !tbaa !3
  br label %if.end405

if.end405:                                        ; preds = %if.end378, %if.end302, %if.then399
  %arrayidx410 = getelementptr inbounds i32* %27, i64 %.pre-phi
  %104 = load i32* %arrayidx410, align 4, !tbaa !3
  %arrayidx415 = getelementptr inbounds i32* %47, i64 %.pre-phi
  %105 = load i32* %arrayidx415, align 4, !tbaa !3
  %add416 = add nsw i32 %105, %104
  %arrayidx420 = getelementptr inbounds i32* %25, i64 %indvars.iv
  store i32 %add416, i32* %arrayidx420, align 4, !tbaa !3
  %arrayidx425 = getelementptr inbounds i32* %25, i64 %.pre-phi
  %106 = load i32* %arrayidx425, align 4, !tbaa !3
  %arrayidx430 = getelementptr inbounds i32* %48, i64 %.pre-phi
  %107 = load i32* %arrayidx430, align 4, !tbaa !3
  %add431 = add nsw i32 %107, %106
  %cmp436 = icmp sgt i32 %add431, %add416
  %add431.add416 = select i1 %cmp436, i32 %add431, i32 %add416
  store i32 %add431.add416, i32* %arrayidx420, align 4, !tbaa !3
  br i1 %cmp71, label %if.then446, label %if.end443.if.end492_crit_edge

if.end443.if.end492_crit_edge:                    ; preds = %if.end405
  %arrayidx508.phi.trans.insert = getelementptr inbounds i32* %26, i64 %indvars.iv
  %.pre1109 = load i32* %arrayidx508.phi.trans.insert, align 4, !tbaa !3
  %arrayidx501.pre = getelementptr inbounds i32* %49, i64 %indvars.iv
  br label %if.end492

if.then446:                                       ; preds = %if.end405
  %108 = load i32** %arrayidx116, align 8, !tbaa !0
  %arrayidx451 = getelementptr inbounds i32* %108, i64 %indvars.iv
  %109 = load i32* %arrayidx451, align 4, !tbaa !3
  %arrayidx455 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %110 = load i32* %arrayidx455, align 4, !tbaa !3
  %add456 = add nsw i32 %110, %109
  %arrayidx460 = getelementptr inbounds i32* %26, i64 %indvars.iv
  store i32 %add456, i32* %arrayidx460, align 4, !tbaa !3
  %111 = load i32** %arrayidx131, align 8, !tbaa !0
  %arrayidx465 = getelementptr inbounds i32* %111, i64 %indvars.iv
  %112 = load i32* %arrayidx465, align 4, !tbaa !3
  %arrayidx469 = getelementptr inbounds i32* %50, i64 %indvars.iv
  %113 = load i32* %arrayidx469, align 4, !tbaa !3
  %add470 = add nsw i32 %113, %112
  %cmp475 = icmp sgt i32 %add470, %add456
  %add470.add456 = select i1 %cmp475, i32 %add470, i32 %add456
  store i32 %add470.add456, i32* %arrayidx460, align 4, !tbaa !3
  %add470.add4561112 = select i1 %cmp475, i32 %add470, i32 %add456
  %114 = load i32*** %dnai, align 8, !tbaa !0
  %arrayidx485 = getelementptr inbounds i32** %114, i64 %idxprom195
  %115 = load i32** %arrayidx485, align 8, !tbaa !0
  %arrayidx486 = getelementptr inbounds i32* %115, i64 %indvars.iv
  %116 = load i32* %arrayidx486, align 4, !tbaa !3
  %add491 = add nsw i32 %add470.add4561112, %116
  store i32 %add491, i32* %arrayidx460, align 4, !tbaa !3
  br label %if.end492

if.end492:                                        ; preds = %if.end443.if.end492_crit_edge, %if.then446
  %arrayidx501.pre-phi = phi i32* [ %arrayidx501.pre, %if.end443.if.end492_crit_edge ], [ %arrayidx455, %if.then446 ]
  %117 = phi i32 [ %.pre1109, %if.end443.if.end492_crit_edge ], [ %add491, %if.then446 ]
  %arrayidx497 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %118 = load i32* %arrayidx497, align 4, !tbaa !3
  %119 = load i32* %arrayidx501.pre-phi, align 4, !tbaa !3
  %add502 = add nsw i32 %119, %118
  %120 = load i32* %dna2, align 4, !tbaa !3
  %add504 = add nsw i32 %add502, %120
  %arrayidx508 = getelementptr inbounds i32* %26, i64 %indvars.iv
  %cmp509 = icmp sgt i32 %add504, %117
  br i1 %cmp509, label %if.then511, label %if.end516

if.then511:                                       ; preds = %if.end492
  store i32 %add504, i32* %arrayidx508, align 4, !tbaa !3
  %.pre1106 = load i32* %dna2, align 4, !tbaa !3
  br label %if.end516

if.end516:                                        ; preds = %if.then511, %if.end492
  %121 = phi i32 [ %add504, %if.then511 ], [ %117, %if.end492 ]
  %122 = phi i32 [ %.pre1106, %if.then511 ], [ %120, %if.end492 ]
  %arrayidx521 = getelementptr inbounds i32* %40, i64 %indvars.iv
  %123 = load i32* %arrayidx521, align 4, !tbaa !3
  %arrayidx525 = getelementptr inbounds i32* %50, i64 %indvars.iv
  %124 = load i32* %arrayidx525, align 4, !tbaa !3
  %add526 = add nsw i32 %124, %123
  %add528 = add nsw i32 %add526, %122
  %cmp533 = icmp sgt i32 %add528, %121
  br i1 %cmp533, label %if.then535, label %if.end540

if.then535:                                       ; preds = %if.end516
  store i32 %add528, i32* %arrayidx508, align 4, !tbaa !3
  br label %if.end540

if.end540:                                        ; preds = %if.then535, %if.end516
  %125 = phi i32 [ %add528, %if.then535 ], [ %121, %if.end516 ]
  br i1 %cmp541, label %if.then543, label %for.inc593

if.then543:                                       ; preds = %if.end540
  %126 = load i32** %arrayidx310, align 8, !tbaa !0
  %arrayidx548 = getelementptr inbounds i32* %126, i64 %indvars.iv
  %127 = load i32* %arrayidx548, align 4, !tbaa !3
  %128 = load i32* %arrayidx501.pre-phi, align 4, !tbaa !3
  %add553 = add nsw i32 %128, %127
  %129 = load i32* %dna4, align 4, !tbaa !3
  %add555 = add nsw i32 %add553, %129
  %cmp560 = icmp sgt i32 %add555, %125
  br i1 %cmp560, label %if.then562, label %if.end567

if.then562:                                       ; preds = %if.then543
  store i32 %add555, i32* %arrayidx508, align 4, !tbaa !3
  %.pre1107 = load i32* %dna4, align 4, !tbaa !3
  br label %if.end567

if.end567:                                        ; preds = %if.then543, %if.then562
  %130 = phi i32 [ %add555, %if.then562 ], [ %125, %if.then543 ]
  %131 = phi i32 [ %.pre1107, %if.then562 ], [ %129, %if.then543 ]
  %132 = load i32** %arrayidx335, align 8, !tbaa !0
  %arrayidx572 = getelementptr inbounds i32* %132, i64 %indvars.iv
  %133 = load i32* %arrayidx572, align 4, !tbaa !3
  %134 = load i32* %arrayidx525, align 4, !tbaa !3
  %add577 = add nsw i32 %134, %133
  %add579 = add nsw i32 %add577, %131
  %cmp584 = icmp sgt i32 %add579, %130
  br i1 %cmp584, label %if.then586, label %for.inc593

if.then586:                                       ; preds = %if.end567
  store i32 %add579, i32* %arrayidx508, align 4, !tbaa !3
  br label %for.inc593

for.inc593:                                       ; preds = %if.end540, %if.then586, %if.end567
  %indvars.iv.next = add i64 %indvars.iv, 1
  %135 = load i32* %M, align 4, !tbaa !3
  %136 = trunc i64 %indvars.iv to i32
  %cmp106 = icmp slt i32 %136, %135
  br i1 %cmp106, label %for.body108, label %for.end595

for.end595:                                       ; preds = %for.inc593, %if.end103
  %arrayidx599 = getelementptr inbounds i32* %24, i64 4
  %137 = load i32* %arrayidx599, align 4, !tbaa !3
  %138 = load i32* %arrayidx25, align 4, !tbaa !3
  %add603 = add nsw i32 %138, %137
  %arrayidx605 = getelementptr inbounds i32** %1, i64 %indvars.iv1085
  %139 = load i32** %arrayidx605, align 8, !tbaa !0
  %arrayidx606 = getelementptr inbounds i32* %139, i64 4
  store i32 %add603, i32* %arrayidx606, align 4, !tbaa !3
  %140 = load i32* %M, align 4, !tbaa !3
  %idxprom608 = sext i32 %140 to i64
  %arrayidx611 = getelementptr inbounds i32* %25, i64 %idxprom608
  %141 = load i32* %arrayidx611, align 4, !tbaa !3
  %arrayidx614 = getelementptr inbounds i32* %139, i64 1
  store i32 %141, i32* %arrayidx614, align 4, !tbaa !3
  %142 = load i32* %M, align 4, !tbaa !3
  %cmp6171072 = icmp slt i32 %142, 1
  br i1 %cmp6171072, label %for.end639, label %for.body619.lr.ph

for.body619.lr.ph:                                ; preds = %for.end595
  %143 = load i32** %esc, align 8, !tbaa !0
  br label %for.body619

for.body619:                                      ; preds = %for.inc637, %for.body619.lr.ph
  %144 = phi i32 [ %148, %for.inc637 ], [ %142, %for.body619.lr.ph ]
  %145 = phi i32 [ %149, %for.inc637 ], [ %141, %for.body619.lr.ph ]
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %for.inc637 ], [ 1, %for.body619.lr.ph ]
  %arrayidx623 = getelementptr inbounds i32* %27, i64 %indvars.iv1083
  %146 = load i32* %arrayidx623, align 4, !tbaa !3
  %arrayidx625 = getelementptr inbounds i32* %143, i64 %indvars.iv1083
  %147 = load i32* %arrayidx625, align 4, !tbaa !3
  %add626 = add nsw i32 %147, %146
  %cmp630 = icmp sgt i32 %add626, %145
  br i1 %cmp630, label %if.then632, label %for.inc637

if.then632:                                       ; preds = %for.body619
  store i32 %add626, i32* %arrayidx614, align 4, !tbaa !3
  %.pre1099 = load i32* %M, align 4, !tbaa !3
  br label %for.inc637

for.inc637:                                       ; preds = %for.body619, %if.then632
  %148 = phi i32 [ %144, %for.body619 ], [ %.pre1099, %if.then632 ]
  %149 = phi i32 [ %145, %for.body619 ], [ %add626, %if.then632 ]
  %indvars.iv.next1084 = add i64 %indvars.iv1083, 1
  %150 = trunc i64 %indvars.iv1083 to i32
  %cmp617 = icmp slt i32 %150, %148
  br i1 %cmp617, label %for.body619, label %for.end639

for.end639:                                       ; preds = %for.inc637, %for.end595
  %151 = phi i32 [ %141, %for.end595 ], [ %149, %for.inc637 ]
  %arrayidx643 = getelementptr inbounds i32* %24, i64 3
  %152 = load i32* %arrayidx643, align 4, !tbaa !3
  %153 = load i32* %arrayidx646, align 4, !tbaa !3
  %add647 = add nsw i32 %153, %152
  %arrayidx650 = getelementptr inbounds i32* %139, i64 3
  store i32 %add647, i32* %arrayidx650, align 4, !tbaa !3
  %154 = load i32* %arrayidx656, align 4, !tbaa !3
  %add657 = add nsw i32 %154, %151
  %cmp661 = icmp sgt i32 %add657, %add647
  %add657.add647 = select i1 %cmp661, i32 %add657, i32 %add647
  store i32 %add657.add647, i32* %arrayidx650, align 4, !tbaa !3
  %add657.add6471113 = select i1 %cmp661, i32 %add657, i32 %add647
  %155 = load i32* %arrayidx3, align 4, !tbaa !3
  %add674 = add nsw i32 %155, %add603
  store i32 %add674, i32* %139, align 4, !tbaa !3
  %156 = load i32* %arrayidx683, align 4, !tbaa !3
  %add684 = add nsw i32 %156, %add657.add6471113
  %cmp688 = icmp sgt i32 %add684, %add674
  %add684.add674 = select i1 %cmp688, i32 %add684, i32 %add674
  store i32 %add684.add674, i32* %139, align 4, !tbaa !3
  %arrayidx698 = getelementptr inbounds i32* %24, i64 2
  %157 = load i32* %arrayidx698, align 4, !tbaa !3
  %158 = load i32* %arrayidx701, align 4, !tbaa !3
  %add702 = add nsw i32 %158, %157
  %arrayidx705 = getelementptr inbounds i32* %139, i64 2
  store i32 %add702, i32* %arrayidx705, align 4, !tbaa !3
  %159 = load i32* %arrayidx711, align 4, !tbaa !3
  %add712 = add nsw i32 %159, %151
  %cmp716 = icmp sgt i32 %add712, %add702
  %add712.add702 = select i1 %cmp716, i32 %add712, i32 %add702
  store i32 %add712.add702, i32* %arrayidx705, align 4, !tbaa !3
  %indvars.iv.next1086 = add i64 %indvars.iv1085, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1086 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %21
  br i1 %exitcond, label %for.end725, label %for.body61

for.end725:                                       ; preds = %for.end639, %for.cond59.preheader
  %idxprom726 = sext i32 %L to i64
  %arrayidx727 = getelementptr inbounds i32** %1, i64 %idxprom726
  %160 = load i32** %arrayidx727, align 8, !tbaa !0
  %arrayidx728 = getelementptr inbounds i32* %160, i64 2
  %161 = load i32* %arrayidx728, align 4, !tbaa !3
  %arrayidx731 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %162 = load i32* %arrayidx731, align 4, !tbaa !3
  %add732 = add nsw i32 %162, %161
  %cmp733 = icmp eq %struct.dpmatrix_s** %ret_mx, null
  br i1 %cmp733, label %if.else736, label %if.then735

if.then735:                                       ; preds = %for.end725
  store %struct.dpmatrix_s* %call.i, %struct.dpmatrix_s** %ret_mx, align 8, !tbaa !0
  br label %if.end737

if.else736:                                       ; preds = %for.end725
  tail call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #6
  br label %if.end737

if.end737:                                        ; preds = %if.else736, %if.then735
  %call738 = tail call float @Scorify(i32 %add732) #5
  ret float %call738
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @P7ViterbiAlignAlignment(%struct.msa_struct* nocapture %msa, %struct.plan7_s* nocapture %hmm) #0 {
entry:
  %xtb = alloca i8**, align 8
  %mtb = alloca i8**, align 8
  %itb = alloca i8**, align 8
  %dtb = alloca i8**, align 8
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2044, i64 %mul) #5
  %1 = bitcast i8* %call to float**
  %2 = load i32* %alen, align 4, !tbaa !3
  %add2 = add nsw i32 %2, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = shl nsw i64 %conv3, 2
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2045, i64 %mul4) #5
  %3 = bitcast i8* %call5 to float*
  %4 = load i32* %alen, align 4, !tbaa !3
  %cmp1220 = icmp slt i32 %4, 1
  br i1 %cmp1220, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1243 = phi i64 [ %indvars.iv.next1244, %for.body ], [ 1, %entry ]
  %5 = load i32* @Alphabet_size, align 4, !tbaa !3
  %conv8 = sext i32 %5 to i64
  %mul9 = shl nsw i64 %conv8, 2
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2047, i64 %mul9) #5
  %6 = bitcast i8* %call10 to float*
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv1243
  store float* %6, float** %arrayidx, align 8, !tbaa !0
  %7 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FSet(float* %6, i32 %7, float 0.000000e+00) #5
  %indvars.iv.next1244 = add i64 %indvars.iv1243, 1
  %8 = load i32* %alen, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv1243 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  store float -9.999000e+03, float* %3, align 4, !tbaa !4
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %10 = load float** %wgt, align 8, !tbaa !0
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %11 = load i32* %nseq, align 4, !tbaa !3
  %call14 = call float @FSum(float* %10, i32 %11) #5
  %12 = load i32* %alen, align 4, !tbaa !3
  %cmp171218 = icmp slt i32 %12, 1
  br i1 %cmp171218, label %for.end99, label %for.cond20.preheader.lr.ph

for.cond20.preheader.lr.ph:                       ; preds = %for.end
  %conv91 = fdiv float 1.000000e+00, %call14
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end87, %for.cond20.preheader.lr.ph
  %indvars.iv1240 = phi i64 [ %indvars.iv.next1241, %for.end87 ], [ 1, %for.cond20.preheader.lr.ph ]
  %13 = load i32* %nseq, align 4, !tbaa !3
  %cmp221216 = icmp sgt i32 %13, 0
  br i1 %cmp221216, label %for.body24.lr.ph, label %for.cond20.preheader.for.end87_crit_edge

for.cond20.preheader.for.end87_crit_edge:         ; preds = %for.cond20.preheader
  %arrayidx89.pre = getelementptr inbounds float** %1, i64 %indvars.iv1240
  br label %for.end87

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %14 = add nsw i64 %indvars.iv1240, -1
  %arrayidx72 = getelementptr inbounds float** %1, i64 %indvars.iv1240
  br label %for.body24

for.body24:                                       ; preds = %for.inc85, %for.body24.lr.ph
  %15 = phi i32 [ %13, %for.body24.lr.ph ], [ %22, %for.inc85 ]
  %indvars.iv1238 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next1239, %for.inc85 ]
  %16 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i8** %16, i64 %indvars.iv1238
  %17 = load i8** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i8* %17, i64 %14
  %18 = load i8* %arrayidx28, align 1, !tbaa !1
  switch i8 %18, label %if.then [
    i8 32, label %for.inc85
    i8 46, label %for.inc85
    i8 95, label %for.inc85
    i8 45, label %for.inc85
    i8 126, label %for.inc85
  ]

if.then:                                          ; preds = %for.body24
  %conv29 = sext i8 %18 to i32
  %19 = load float** %arrayidx72, align 8, !tbaa !0
  %call80 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv29) #7
  %sub.ptr.lhs.cast = ptrtoint i8* %call80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %conv81 = trunc i64 %sub.ptr.sub to i8
  %20 = load float** %wgt, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds float* %20, i64 %indvars.iv1238
  %21 = load float* %arrayidx84, align 4, !tbaa !4
  call void @P7CountSymbol(float* %19, i8 signext %conv81, float %21) #5
  %.pre1246 = load i32* %nseq, align 4, !tbaa !3
  br label %for.inc85

for.inc85:                                        ; preds = %for.body24, %for.body24, %for.body24, %for.body24, %for.body24, %if.then
  %22 = phi i32 [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %15, %for.body24 ], [ %.pre1246, %if.then ]
  %indvars.iv.next1239 = add i64 %indvars.iv1238, 1
  %23 = trunc i64 %indvars.iv.next1239 to i32
  %cmp22 = icmp slt i32 %23, %22
  br i1 %cmp22, label %for.body24, label %for.end87

for.end87:                                        ; preds = %for.inc85, %for.cond20.preheader.for.end87_crit_edge
  %arrayidx89.pre-phi = phi float** [ %arrayidx89.pre, %for.cond20.preheader.for.end87_crit_edge ], [ %arrayidx72, %for.inc85 ]
  %24 = load float** %arrayidx89.pre-phi, align 8, !tbaa !0
  %25 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FScale(float* %24, i32 %25, float %conv91) #5
  %26 = load float** %arrayidx89.pre-phi, align 8, !tbaa !0
  %27 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call94 = call float @FSum(float* %26, i32 %27) #5
  %arrayidx96 = getelementptr inbounds float* %3, i64 %indvars.iv1240
  store float %call94, float* %arrayidx96, align 4, !tbaa !4
  %indvars.iv.next1241 = add i64 %indvars.iv1240, 1
  %28 = load i32* %alen, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv1240 to i32
  %cmp17 = icmp slt i32 %29, %28
  br i1 %cmp17, label %for.cond20.preheader, label %for.end99

for.end99:                                        ; preds = %for.end87, %for.end
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %30 = load i32* %M, align 4, !tbaa !3
  %call.i = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %30, i32 0, i32 0) #5
  %xmx1.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 0
  %31 = load i32*** %xmx1.i, align 8, !tbaa !0
  %mmx4.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 1
  %32 = load i32*** %mmx4.i, align 8, !tbaa !0
  %imx8.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 2
  %33 = load i32*** %imx8.i, align 8, !tbaa !0
  %dmx12.i = getelementptr inbounds %struct.dpmatrix_s* %call.i, i64 0, i32 3
  %34 = load i32*** %dmx12.i, align 8, !tbaa !0
  %35 = load i32* %alen, align 4, !tbaa !3
  %add102 = add nsw i32 %35, 1
  %36 = load i32* %M, align 4, !tbaa !3
  %call104 = call %struct.dpshadow_s* @AllocShadowMatrix(i32 %add102, i32 %36, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb) #6
  %37 = load i32** %31, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i32* %37, i64 4
  store i32 0, i32* %arrayidx106, align 4, !tbaa !3
  %38 = load i8*** %xtb, align 8, !tbaa !0
  %39 = load i8** %38, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds i8* %39, i64 4
  store i8 4, i8* %arrayidx108, align 1, !tbaa !1
  %arrayidx110 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %40 = load i32* %arrayidx110, align 4, !tbaa !3
  %41 = load i32** %31, align 8, !tbaa !0
  store i32 %40, i32* %41, align 4, !tbaa !3
  %42 = load i8*** %xtb, align 8, !tbaa !0
  %43 = load i8** %42, align 8, !tbaa !0
  store i8 5, i8* %43, align 1, !tbaa !1
  %44 = load i32** %31, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %44, i64 3
  store i32 -987654321, i32* %arrayidx116, align 4, !tbaa !3
  %arrayidx118 = getelementptr inbounds i32* %44, i64 2
  store i32 -987654321, i32* %arrayidx118, align 4, !tbaa !3
  %arrayidx120 = getelementptr inbounds i32* %44, i64 1
  store i32 -987654321, i32* %arrayidx120, align 4, !tbaa !3
  %esrc = getelementptr inbounds %struct.dpshadow_s* %call104, i64 0, i32 4
  %45 = load i32** %esrc, align 8, !tbaa !0
  store i32 0, i32* %45, align 4, !tbaa !3
  %46 = load i8*** %xtb, align 8, !tbaa !0
  %47 = load i8** %46, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i8* %47, i64 3
  store i8 0, i8* %arrayidx123, align 1, !tbaa !1
  %48 = load i8*** %xtb, align 8, !tbaa !0
  %49 = load i8** %48, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i8* %49, i64 2
  store i8 0, i8* %arrayidx125, align 1, !tbaa !1
  %50 = load i32* %M, align 4, !tbaa !3
  %cmp1281214 = icmp slt i32 %50, 0
  br i1 %cmp1281214, label %for.cond152.preheader, label %for.body130

for.cond152.preheader:                            ; preds = %for.body130, %for.end99
  %51 = load i32* %alen, align 4, !tbaa !3
  %cmp1541212 = icmp slt i32 %51, 1
  br i1 %cmp1541212, label %for.end837, label %for.body156.lr.ph

for.body156.lr.ph:                                ; preds = %for.cond152.preheader
  %arrayidx650 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx776 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx811 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  br label %for.body156

for.body130:                                      ; preds = %for.end99, %for.body130
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %for.body130 ], [ 0, %for.end99 ]
  %52 = load i32** %34, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i32* %52, i64 %indvars.iv1236
  store i32 -987654321, i32* %arrayidx133, align 4, !tbaa !3
  %53 = load i32** %33, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i32* %53, i64 %indvars.iv1236
  store i32 -987654321, i32* %arrayidx136, align 4, !tbaa !3
  %54 = load i32** %32, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i32* %54, i64 %indvars.iv1236
  store i32 -987654321, i32* %arrayidx139, align 4, !tbaa !3
  %55 = load i8*** %dtb, align 8, !tbaa !0
  %56 = load i8** %55, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds i8* %56, i64 %indvars.iv1236
  store i8 0, i8* %arrayidx142, align 1, !tbaa !1
  %57 = load i8*** %itb, align 8, !tbaa !0
  %58 = load i8** %57, align 8, !tbaa !0
  %arrayidx145 = getelementptr inbounds i8* %58, i64 %indvars.iv1236
  store i8 0, i8* %arrayidx145, align 1, !tbaa !1
  %59 = load i8*** %mtb, align 8, !tbaa !0
  %60 = load i8** %59, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i8* %60, i64 %indvars.iv1236
  store i8 0, i8* %arrayidx148, align 1, !tbaa !1
  %indvars.iv.next1237 = add i64 %indvars.iv1236, 1
  %61 = load i32* %M, align 4, !tbaa !3
  %62 = trunc i64 %indvars.iv1236 to i32
  %cmp128 = icmp slt i32 %62, %61
  br i1 %cmp128, label %for.body130, label %for.cond152.preheader

for.body156:                                      ; preds = %for.inc835, %for.body156.lr.ph
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %for.inc835 ], [ 1, %for.body156.lr.ph ]
  %63 = trunc i64 %indvars.iv1232 to i32
  %rem = srem i32 %63, 2
  %lnot = icmp eq i32 %rem, 0
  %idxprom157 = sext i32 %rem to i64
  %arrayidx158 = getelementptr inbounds i32** %34, i64 %idxprom157
  %64 = load i32** %arrayidx158, align 8, !tbaa !0
  store i32 -987654321, i32* %64, align 4, !tbaa !3
  %arrayidx161 = getelementptr inbounds i32** %33, i64 %idxprom157
  %65 = load i32** %arrayidx161, align 8, !tbaa !0
  store i32 -987654321, i32* %65, align 4, !tbaa !3
  %arrayidx164 = getelementptr inbounds i32** %32, i64 %idxprom157
  %66 = load i32** %arrayidx164, align 8, !tbaa !0
  store i32 -987654321, i32* %66, align 4, !tbaa !3
  %67 = load i8*** %dtb, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i8** %67, i64 %indvars.iv1232
  %68 = load i8** %arrayidx167, align 8, !tbaa !0
  store i8 0, i8* %68, align 1, !tbaa !1
  %69 = load i8*** %itb, align 8, !tbaa !0
  %arrayidx170 = getelementptr inbounds i8** %69, i64 %indvars.iv1232
  %70 = load i8** %arrayidx170, align 8, !tbaa !0
  store i8 0, i8* %70, align 1, !tbaa !1
  %71 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i8** %71, i64 %indvars.iv1232
  %72 = load i8** %arrayidx173, align 8, !tbaa !0
  store i8 0, i8* %72, align 1, !tbaa !1
  %73 = load i32* %M, align 4, !tbaa !3
  %cmp1771208 = icmp slt i32 %73, 1
  %idxprom642.pre = zext i1 %lnot to i64
  br i1 %cmp1771208, label %for.body156.for.end635_crit_edge, label %for.body179.lr.ph

for.body156.for.end635_crit_edge:                 ; preds = %for.body156
  %arrayidx643.pre = getelementptr inbounds i32** %31, i64 %idxprom642.pre
  br label %for.end635

for.body179.lr.ph:                                ; preds = %for.body156
  %arrayidx191 = getelementptr inbounds i32** %32, i64 %idxprom642.pre
  %arrayidx232 = getelementptr inbounds i32** %33, i64 %idxprom642.pre
  %74 = add nsw i64 %indvars.iv1232, -1
  %arrayidx259 = getelementptr inbounds float* %3, i64 %74
  %arrayidx280 = getelementptr inbounds i32** %31, i64 %idxprom642.pre
  %arrayidx304 = getelementptr inbounds i32** %34, i64 %idxprom642.pre
  %arrayidx519 = getelementptr inbounds float* %3, i64 %indvars.iv1232
  %arrayidx594 = getelementptr inbounds float** %1, i64 %indvars.iv1232
  br label %for.body179

for.body179:                                      ; preds = %for.inc633.for.body179_crit_edge, %for.body179.lr.ph
  %indvars.iv1226 = phi i64 [ %indvars.iv.next1227, %for.inc633.for.body179_crit_edge ], [ 1, %for.body179.lr.ph ]
  %75 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i32* %75, i64 %indvars.iv1226
  store i32 -987654321, i32* %arrayidx183, align 4, !tbaa !3
  %76 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx186 = getelementptr inbounds i8** %76, i64 %indvars.iv1232
  %77 = load i8** %arrayidx186, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i8* %77, i64 %indvars.iv1226
  store i8 0, i8* %arrayidx187, align 1, !tbaa !1
  %78 = add nsw i64 %indvars.iv1226, -1
  %79 = load i32** %arrayidx191, align 8, !tbaa !0
  %arrayidx192 = getelementptr inbounds i32* %79, i64 %78
  %80 = load i32* %arrayidx192, align 4, !tbaa !3
  %cmp193 = icmp sgt i32 %80, -987654321
  br i1 %cmp193, label %land.lhs.true, label %if.end228

land.lhs.true:                                    ; preds = %for.body179
  %81 = load i32*** %tsc, align 8, !tbaa !0
  %82 = load i32** %81, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i32* %82, i64 %78
  %83 = load i32* %arrayidx198, align 4, !tbaa !3
  %cmp199 = icmp sgt i32 %83, -987654321
  br i1 %cmp199, label %land.lhs.true201, label %if.end228

land.lhs.true201:                                 ; preds = %land.lhs.true
  %add212 = add nsw i32 %83, %80
  %84 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i32* %84, i64 %indvars.iv1226
  %85 = load i32* %arrayidx216, align 4, !tbaa !3
  %cmp217 = icmp sgt i32 %add212, %85
  br i1 %cmp217, label %if.then219, label %if.end228

if.then219:                                       ; preds = %land.lhs.true201
  store i32 %add212, i32* %arrayidx216, align 4, !tbaa !3
  %86 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i8** %86, i64 %indvars.iv1232
  %87 = load i8** %arrayidx226, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds i8* %87, i64 %indvars.iv1226
  store i8 1, i8* %arrayidx227, align 1, !tbaa !1
  br label %if.end228

if.end228:                                        ; preds = %if.then219, %land.lhs.true201, %land.lhs.true, %for.body179
  %88 = load i32** %arrayidx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %88, i64 %78
  %89 = load i32* %arrayidx233, align 4, !tbaa !3
  %cmp234 = icmp sgt i32 %89, -987654321
  br i1 %cmp234, label %land.lhs.true236, label %if.end278

land.lhs.true236:                                 ; preds = %if.end228
  %90 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i32** %90, i64 3
  %91 = load i32** %arrayidx240, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i32* %91, i64 %78
  %92 = load i32* %arrayidx241, align 4, !tbaa !3
  %cmp242 = icmp sgt i32 %92, -987654321
  br i1 %cmp242, label %land.lhs.true244, label %if.end278

land.lhs.true244:                                 ; preds = %land.lhs.true236
  %conv250 = sitofp i32 %89 to float
  %conv256 = sitofp i32 %92 to float
  %93 = load float* %arrayidx259, align 4, !tbaa !4
  %mul260 = fmul float %conv256, %93
  %add261 = fadd float %conv250, %mul260
  %conv262 = fptosi float %add261 to i32
  %94 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx266 = getelementptr inbounds i32* %94, i64 %indvars.iv1226
  %95 = load i32* %arrayidx266, align 4, !tbaa !3
  %cmp267 = icmp sgt i32 %conv262, %95
  br i1 %cmp267, label %if.then269, label %if.end278

if.then269:                                       ; preds = %land.lhs.true244
  store i32 %conv262, i32* %arrayidx266, align 4, !tbaa !3
  %96 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i8** %96, i64 %indvars.iv1232
  %97 = load i8** %arrayidx276, align 8, !tbaa !0
  %arrayidx277 = getelementptr inbounds i8* %97, i64 %indvars.iv1226
  store i8 3, i8* %arrayidx277, align 1, !tbaa !1
  br label %if.end278

if.end278:                                        ; preds = %land.lhs.true236, %if.end228, %if.then269, %land.lhs.true244
  %98 = load i32** %arrayidx280, align 8, !tbaa !0
  %99 = load i32* %98, align 4, !tbaa !3
  %100 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx283 = getelementptr inbounds i32* %100, i64 %indvars.iv1226
  %101 = load i32* %arrayidx283, align 4, !tbaa !3
  %add284 = add nsw i32 %101, %99
  %102 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx288 = getelementptr inbounds i32* %102, i64 %indvars.iv1226
  %103 = load i32* %arrayidx288, align 4, !tbaa !3
  %cmp289 = icmp sgt i32 %add284, %103
  br i1 %cmp289, label %if.then291, label %if.end300

if.then291:                                       ; preds = %if.end278
  store i32 %add284, i32* %arrayidx288, align 4, !tbaa !3
  %104 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx298 = getelementptr inbounds i8** %104, i64 %indvars.iv1232
  %105 = load i8** %arrayidx298, align 8, !tbaa !0
  %arrayidx299 = getelementptr inbounds i8* %105, i64 %indvars.iv1226
  store i8 6, i8* %arrayidx299, align 1, !tbaa !1
  br label %if.end300

if.end300:                                        ; preds = %if.then291, %if.end278
  %106 = load i32** %arrayidx304, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i32* %106, i64 %78
  %107 = load i32* %arrayidx305, align 4, !tbaa !3
  %cmp306 = icmp sgt i32 %107, -987654321
  br i1 %cmp306, label %land.lhs.true308, label %for.cond344.preheader

land.lhs.true308:                                 ; preds = %if.end300
  %108 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx312 = getelementptr inbounds i32** %108, i64 5
  %109 = load i32** %arrayidx312, align 8, !tbaa !0
  %arrayidx313 = getelementptr inbounds i32* %109, i64 %78
  %110 = load i32* %arrayidx313, align 4, !tbaa !3
  %cmp314 = icmp sgt i32 %110, -987654321
  br i1 %cmp314, label %land.lhs.true316, label %for.cond344.preheader

land.lhs.true316:                                 ; preds = %land.lhs.true308
  %add327 = add nsw i32 %110, %107
  %111 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds i32* %111, i64 %indvars.iv1226
  %112 = load i32* %arrayidx331, align 4, !tbaa !3
  %cmp332 = icmp sgt i32 %add327, %112
  br i1 %cmp332, label %if.then334, label %for.cond344.preheader

if.then334:                                       ; preds = %land.lhs.true316
  store i32 %add327, i32* %arrayidx331, align 4, !tbaa !3
  %113 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx341 = getelementptr inbounds i8** %113, i64 %indvars.iv1232
  %114 = load i8** %arrayidx341, align 8, !tbaa !0
  %arrayidx342 = getelementptr inbounds i8* %114, i64 %indvars.iv1226
  store i8 2, i8* %arrayidx342, align 1, !tbaa !1
  br label %for.cond344.preheader

for.cond344.preheader:                            ; preds = %if.then334, %land.lhs.true316, %land.lhs.true308, %if.end300
  %115 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp3451204 = icmp sgt i32 %115, 0
  br i1 %cmp3451204, label %for.body347.lr.ph, label %for.end387

for.body347.lr.ph:                                ; preds = %for.cond344.preheader
  %116 = load float** %arrayidx594, align 8, !tbaa !0
  br label %for.body347

for.body347:                                      ; preds = %for.body347.lr.ph, %if.end366
  %indvars.iv1222 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next1223, %if.end366 ]
  %arrayidx351 = getelementptr inbounds float* %116, i64 %indvars.iv1222
  %117 = load float* %arrayidx351, align 4, !tbaa !4
  %cmp352 = fcmp ogt float %117, 0.000000e+00
  %118 = load i32*** %msc, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds i32** %118, i64 %indvars.iv1222
  %119 = load i32** %arrayidx357, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds i32* %119, i64 %indvars.iv1226
  %120 = load i32* %arrayidx358, align 4, !tbaa !3
  %cmp359 = icmp eq i32 %120, -987654321
  %or.cond = and i1 %cmp352, %cmp359
  br i1 %or.cond, label %if.then361, label %if.end366

if.then361:                                       ; preds = %for.body347
  %121 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i32* %121, i64 %indvars.iv1226
  store i32 -987654321, i32* %arrayidx365, align 4, !tbaa !3
  br label %for.end387

if.end366:                                        ; preds = %for.body347
  %conv372 = sitofp i32 %120 to float
  %mul377 = fmul float %conv372, %117
  %122 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i32* %122, i64 %indvars.iv1226
  %123 = load i32* %arrayidx381, align 4, !tbaa !3
  %conv382 = sitofp i32 %123 to float
  %add383 = fadd float %mul377, %conv382
  %conv384 = fptosi float %add383 to i32
  store i32 %conv384, i32* %arrayidx381, align 4, !tbaa !3
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 1
  %124 = load i32* @Alphabet_size, align 4, !tbaa !3
  %125 = trunc i64 %indvars.iv.next1223 to i32
  %cmp345 = icmp slt i32 %125, %124
  br i1 %cmp345, label %for.body347, label %for.end387

for.end387:                                       ; preds = %for.cond344.preheader, %if.end366, %if.then361
  %126 = load i32** %arrayidx158, align 8, !tbaa !0
  %arrayidx391 = getelementptr inbounds i32* %126, i64 %indvars.iv1226
  store i32 -987654321, i32* %arrayidx391, align 4, !tbaa !3
  %127 = load i8*** %dtb, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i8** %127, i64 %indvars.iv1232
  %128 = load i8** %arrayidx394, align 8, !tbaa !0
  %arrayidx395 = getelementptr inbounds i8* %128, i64 %indvars.iv1226
  store i8 0, i8* %arrayidx395, align 1, !tbaa !1
  %129 = load i32** %arrayidx164, align 8, !tbaa !0
  %arrayidx400 = getelementptr inbounds i32* %129, i64 %78
  %130 = load i32* %arrayidx400, align 4, !tbaa !3
  %cmp401 = icmp sgt i32 %130, -987654321
  br i1 %cmp401, label %land.lhs.true403, label %if.end438

land.lhs.true403:                                 ; preds = %for.end387
  %131 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx407 = getelementptr inbounds i32** %131, i64 2
  %132 = load i32** %arrayidx407, align 8, !tbaa !0
  %arrayidx408 = getelementptr inbounds i32* %132, i64 %78
  %133 = load i32* %arrayidx408, align 4, !tbaa !3
  %cmp409 = icmp sgt i32 %133, -987654321
  br i1 %cmp409, label %land.lhs.true411, label %if.end438

land.lhs.true411:                                 ; preds = %land.lhs.true403
  %add422 = add nsw i32 %133, %130
  %134 = load i32** %arrayidx158, align 8, !tbaa !0
  %arrayidx426 = getelementptr inbounds i32* %134, i64 %indvars.iv1226
  %135 = load i32* %arrayidx426, align 4, !tbaa !3
  %cmp427 = icmp sgt i32 %add422, %135
  br i1 %cmp427, label %if.then429, label %if.end438

if.then429:                                       ; preds = %land.lhs.true411
  store i32 %add422, i32* %arrayidx426, align 4, !tbaa !3
  %136 = load i8*** %dtb, align 8, !tbaa !0
  %arrayidx436 = getelementptr inbounds i8** %136, i64 %indvars.iv1232
  %137 = load i8** %arrayidx436, align 8, !tbaa !0
  %arrayidx437 = getelementptr inbounds i8* %137, i64 %indvars.iv1226
  store i8 1, i8* %arrayidx437, align 1, !tbaa !1
  br label %if.end438

if.end438:                                        ; preds = %land.lhs.true403, %for.end387, %if.then429, %land.lhs.true411
  %138 = load i32** %arrayidx158, align 8, !tbaa !0
  %arrayidx443 = getelementptr inbounds i32* %138, i64 %78
  %139 = load i32* %arrayidx443, align 4, !tbaa !3
  %cmp444 = icmp sgt i32 %139, -987654321
  br i1 %cmp444, label %land.lhs.true446, label %if.end481

land.lhs.true446:                                 ; preds = %if.end438
  %140 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx450 = getelementptr inbounds i32** %140, i64 6
  %141 = load i32** %arrayidx450, align 8, !tbaa !0
  %arrayidx451 = getelementptr inbounds i32* %141, i64 %78
  %142 = load i32* %arrayidx451, align 4, !tbaa !3
  %cmp452 = icmp sgt i32 %142, -987654321
  br i1 %cmp452, label %land.lhs.true454, label %if.end481

land.lhs.true454:                                 ; preds = %land.lhs.true446
  %add465 = add nsw i32 %142, %139
  %arrayidx469 = getelementptr inbounds i32* %138, i64 %indvars.iv1226
  %143 = load i32* %arrayidx469, align 4, !tbaa !3
  %cmp470 = icmp sgt i32 %add465, %143
  br i1 %cmp470, label %if.then472, label %if.end481

if.then472:                                       ; preds = %land.lhs.true454
  store i32 %add465, i32* %arrayidx469, align 4, !tbaa !3
  %144 = load i8*** %dtb, align 8, !tbaa !0
  %arrayidx479 = getelementptr inbounds i8** %144, i64 %indvars.iv1232
  %145 = load i8** %arrayidx479, align 8, !tbaa !0
  %arrayidx480 = getelementptr inbounds i8* %145, i64 %indvars.iv1226
  store i8 2, i8* %arrayidx480, align 1, !tbaa !1
  br label %if.end481

if.end481:                                        ; preds = %if.then472, %land.lhs.true454, %land.lhs.true446, %if.end438
  %146 = load i32* %M, align 4, !tbaa !3
  %147 = trunc i64 %indvars.iv1226 to i32
  %cmp483 = icmp slt i32 %147, %146
  br i1 %cmp483, label %if.then485, label %for.inc633

if.then485:                                       ; preds = %if.end481
  %148 = load i32** %arrayidx161, align 8, !tbaa !0
  %arrayidx489 = getelementptr inbounds i32* %148, i64 %indvars.iv1226
  store i32 -987654321, i32* %arrayidx489, align 4, !tbaa !3
  %149 = load i8*** %itb, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i8** %149, i64 %indvars.iv1232
  %150 = load i8** %arrayidx492, align 8, !tbaa !0
  %arrayidx493 = getelementptr inbounds i8* %150, i64 %indvars.iv1226
  store i8 0, i8* %arrayidx493, align 1, !tbaa !1
  %151 = load i32** %arrayidx191, align 8, !tbaa !0
  %arrayidx497 = getelementptr inbounds i32* %151, i64 %indvars.iv1226
  %152 = load i32* %arrayidx497, align 4, !tbaa !3
  %cmp498 = icmp sgt i32 %152, -987654321
  br i1 %cmp498, label %land.lhs.true500, label %if.end538

land.lhs.true500:                                 ; preds = %if.then485
  %153 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx503 = getelementptr inbounds i32** %153, i64 1
  %154 = load i32** %arrayidx503, align 8, !tbaa !0
  %arrayidx504 = getelementptr inbounds i32* %154, i64 %indvars.iv1226
  %155 = load i32* %arrayidx504, align 4, !tbaa !3
  %cmp505 = icmp sgt i32 %155, -987654321
  br i1 %cmp505, label %land.lhs.true507, label %if.end538

land.lhs.true507:                                 ; preds = %land.lhs.true500
  %conv512 = sitofp i32 %152 to float
  %conv517 = sitofp i32 %155 to float
  %156 = load float* %arrayidx519, align 4, !tbaa !4
  %mul520 = fmul float %conv517, %156
  %add521 = fadd float %conv512, %mul520
  %conv522 = fptosi float %add521 to i32
  %157 = load i32** %arrayidx161, align 8, !tbaa !0
  %arrayidx526 = getelementptr inbounds i32* %157, i64 %indvars.iv1226
  %158 = load i32* %arrayidx526, align 4, !tbaa !3
  %cmp527 = icmp sgt i32 %conv522, %158
  br i1 %cmp527, label %if.then529, label %if.end538

if.then529:                                       ; preds = %land.lhs.true507
  store i32 %conv522, i32* %arrayidx526, align 4, !tbaa !3
  %159 = load i8*** %itb, align 8, !tbaa !0
  %arrayidx536 = getelementptr inbounds i8** %159, i64 %indvars.iv1232
  %160 = load i8** %arrayidx536, align 8, !tbaa !0
  %arrayidx537 = getelementptr inbounds i8* %160, i64 %indvars.iv1226
  store i8 1, i8* %arrayidx537, align 1, !tbaa !1
  br label %if.end538

if.end538:                                        ; preds = %if.then529, %land.lhs.true507, %land.lhs.true500, %if.then485
  %161 = load i32** %arrayidx232, align 8, !tbaa !0
  %arrayidx542 = getelementptr inbounds i32* %161, i64 %indvars.iv1226
  %162 = load i32* %arrayidx542, align 4, !tbaa !3
  %cmp543 = icmp sgt i32 %162, -987654321
  br i1 %cmp543, label %land.lhs.true545, label %for.cond588.preheader

land.lhs.true545:                                 ; preds = %if.end538
  %163 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx548 = getelementptr inbounds i32** %163, i64 4
  %164 = load i32** %arrayidx548, align 8, !tbaa !0
  %arrayidx549 = getelementptr inbounds i32* %164, i64 %indvars.iv1226
  %165 = load i32* %arrayidx549, align 4, !tbaa !3
  %cmp550 = icmp sgt i32 %165, -987654321
  br i1 %cmp550, label %land.lhs.true552, label %for.cond588.preheader

land.lhs.true552:                                 ; preds = %land.lhs.true545
  %conv557 = sitofp i32 %162 to float
  %conv562 = sitofp i32 %165 to float
  %166 = load float* %arrayidx259, align 4, !tbaa !4
  %mul566 = fmul float %conv562, %166
  %167 = load float* %arrayidx519, align 4, !tbaa !4
  %mul569 = fmul float %mul566, %167
  %add570 = fadd float %conv557, %mul569
  %conv571 = fptosi float %add570 to i32
  %168 = load i32** %arrayidx161, align 8, !tbaa !0
  %arrayidx575 = getelementptr inbounds i32* %168, i64 %indvars.iv1226
  %169 = load i32* %arrayidx575, align 4, !tbaa !3
  %cmp576 = icmp sgt i32 %conv571, %169
  br i1 %cmp576, label %if.then578, label %for.cond588.preheader

if.then578:                                       ; preds = %land.lhs.true552
  store i32 %conv571, i32* %arrayidx575, align 4, !tbaa !3
  %170 = load i8*** %itb, align 8, !tbaa !0
  %arrayidx585 = getelementptr inbounds i8** %170, i64 %indvars.iv1232
  %171 = load i8** %arrayidx585, align 8, !tbaa !0
  %arrayidx586 = getelementptr inbounds i8* %171, i64 %indvars.iv1226
  store i8 3, i8* %arrayidx586, align 1, !tbaa !1
  br label %for.cond588.preheader

for.cond588.preheader:                            ; preds = %if.then578, %land.lhs.true552, %land.lhs.true545, %if.end538
  %172 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp5891206 = icmp sgt i32 %172, 0
  br i1 %cmp5891206, label %for.body591.lr.ph, label %for.inc633

for.body591.lr.ph:                                ; preds = %for.cond588.preheader
  %173 = load float** %arrayidx594, align 8, !tbaa !0
  br label %for.body591

for.body591:                                      ; preds = %for.body591.lr.ph, %if.end610
  %indvars.iv1224 = phi i64 [ 0, %for.body591.lr.ph ], [ %indvars.iv.next1225, %if.end610 ]
  %arrayidx595 = getelementptr inbounds float* %173, i64 %indvars.iv1224
  %174 = load float* %arrayidx595, align 4, !tbaa !4
  %cmp596 = fcmp ogt float %174, 0.000000e+00
  %175 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx601 = getelementptr inbounds i32** %175, i64 %indvars.iv1224
  %176 = load i32** %arrayidx601, align 8, !tbaa !0
  %arrayidx602 = getelementptr inbounds i32* %176, i64 %indvars.iv1226
  %177 = load i32* %arrayidx602, align 4, !tbaa !3
  %cmp603 = icmp eq i32 %177, -987654321
  %or.cond1253 = and i1 %cmp596, %cmp603
  br i1 %or.cond1253, label %if.then605, label %if.end610

if.then605:                                       ; preds = %for.body591
  %178 = load i32** %arrayidx161, align 8, !tbaa !0
  %arrayidx609 = getelementptr inbounds i32* %178, i64 %indvars.iv1226
  store i32 -987654321, i32* %arrayidx609, align 4, !tbaa !3
  br label %for.inc633

if.end610:                                        ; preds = %for.body591
  %conv616 = sitofp i32 %177 to float
  %mul621 = fmul float %conv616, %174
  %179 = load i32** %arrayidx161, align 8, !tbaa !0
  %arrayidx625 = getelementptr inbounds i32* %179, i64 %indvars.iv1226
  %180 = load i32* %arrayidx625, align 4, !tbaa !3
  %conv626 = sitofp i32 %180 to float
  %add627 = fadd float %mul621, %conv626
  %conv628 = fptosi float %add627 to i32
  store i32 %conv628, i32* %arrayidx625, align 4, !tbaa !3
  %indvars.iv.next1225 = add i64 %indvars.iv1224, 1
  %181 = load i32* @Alphabet_size, align 4, !tbaa !3
  %182 = trunc i64 %indvars.iv.next1225 to i32
  %cmp589 = icmp slt i32 %182, %181
  br i1 %cmp589, label %for.body591, label %for.inc633

for.inc633:                                       ; preds = %for.cond588.preheader, %if.end610, %if.end481, %if.then605
  %183 = load i32* %M, align 4, !tbaa !3
  %cmp177 = icmp slt i32 %147, %183
  br i1 %cmp177, label %for.inc633.for.body179_crit_edge, label %for.end635

for.inc633.for.body179_crit_edge:                 ; preds = %for.inc633
  %indvars.iv.next1227 = add i64 %indvars.iv1226, 1
  br label %for.body179

for.end635:                                       ; preds = %for.inc633, %for.body156.for.end635_crit_edge
  %arrayidx643.pre-phi = phi i32** [ %arrayidx643.pre, %for.body156.for.end635_crit_edge ], [ %arrayidx280, %for.inc633 ]
  %arrayidx637 = getelementptr inbounds i32** %31, i64 %idxprom157
  %184 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx638 = getelementptr inbounds i32* %184, i64 4
  store i32 -987654321, i32* %arrayidx638, align 4, !tbaa !3
  %185 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx640 = getelementptr inbounds i8** %185, i64 %indvars.iv1232
  %186 = load i8** %arrayidx640, align 8, !tbaa !0
  %arrayidx641 = getelementptr inbounds i8* %186, i64 4
  store i8 0, i8* %arrayidx641, align 1, !tbaa !1
  %187 = load i32** %arrayidx643.pre-phi, align 8, !tbaa !0
  %arrayidx644 = getelementptr inbounds i32* %187, i64 4
  %188 = load i32* %arrayidx644, align 4, !tbaa !3
  %cmp645 = icmp sgt i32 %188, -987654321
  br i1 %cmp645, label %land.lhs.true647, label %if.end676

land.lhs.true647:                                 ; preds = %for.end635
  %189 = load i32* %arrayidx650, align 4, !tbaa !3
  %cmp651 = icmp sgt i32 %189, -987654321
  br i1 %cmp651, label %land.lhs.true653, label %if.end676

land.lhs.true653:                                 ; preds = %land.lhs.true647
  %conv657 = sitofp i32 %188 to float
  %conv661 = sitofp i32 %189 to float
  %arrayidx663 = getelementptr inbounds float* %3, i64 %indvars.iv1232
  %190 = load float* %arrayidx663, align 4, !tbaa !4
  %mul664 = fmul float %conv661, %190
  %add665 = fadd float %conv657, %mul664
  %conv666 = fptosi float %add665 to i32
  %cmp667 = icmp sgt i32 %conv666, -987654321
  br i1 %cmp667, label %if.then669, label %if.end676

if.then669:                                       ; preds = %land.lhs.true653
  %191 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx672 = getelementptr inbounds i32* %191, i64 4
  store i32 %conv666, i32* %arrayidx672, align 4, !tbaa !3
  %192 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx674 = getelementptr inbounds i8** %192, i64 %indvars.iv1232
  %193 = load i8** %arrayidx674, align 8, !tbaa !0
  %arrayidx675 = getelementptr inbounds i8* %193, i64 4
  store i8 5, i8* %arrayidx675, align 1, !tbaa !1
  br label %if.end676

if.end676:                                        ; preds = %if.then669, %land.lhs.true653, %land.lhs.true647, %for.end635
  %194 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx679 = getelementptr inbounds i32* %194, i64 1
  store i32 -987654321, i32* %arrayidx679, align 4, !tbaa !3
  %195 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx681 = getelementptr inbounds i8** %195, i64 %indvars.iv1232
  %196 = load i8** %arrayidx681, align 8, !tbaa !0
  %arrayidx682 = getelementptr inbounds i8* %196, i64 1
  store i8 0, i8* %arrayidx682, align 1, !tbaa !1
  %197 = load i32* %M, align 4, !tbaa !3
  %cmp6851210 = icmp slt i32 %197, 1
  br i1 %cmp6851210, label %for.end723, label %for.body687.lr.ph

for.body687.lr.ph:                                ; preds = %if.end676
  %198 = load i32** %arrayidx164, align 8, !tbaa !0
  br label %for.body687

for.body687:                                      ; preds = %for.inc721, %for.body687.lr.ph
  %199 = phi i32 [ %207, %for.inc721 ], [ %197, %for.body687.lr.ph ]
  %indvars.iv1229 = phi i64 [ %indvars.iv.next1230, %for.inc721 ], [ 1, %for.body687.lr.ph ]
  %arrayidx691 = getelementptr inbounds i32* %198, i64 %indvars.iv1229
  %200 = load i32* %arrayidx691, align 4, !tbaa !3
  %cmp692 = icmp sgt i32 %200, -987654321
  br i1 %cmp692, label %land.lhs.true694, label %for.inc721

land.lhs.true694:                                 ; preds = %for.body687
  %201 = load i32** %esc, align 8, !tbaa !0
  %arrayidx696 = getelementptr inbounds i32* %201, i64 %indvars.iv1229
  %202 = load i32* %arrayidx696, align 4, !tbaa !3
  %cmp697 = icmp sgt i32 %202, -987654321
  br i1 %cmp697, label %land.lhs.true699, label %for.inc721

land.lhs.true699:                                 ; preds = %land.lhs.true694
  %add707 = add nsw i32 %202, %200
  %203 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx710 = getelementptr inbounds i32* %203, i64 1
  %204 = load i32* %arrayidx710, align 4, !tbaa !3
  %cmp711 = icmp sgt i32 %add707, %204
  br i1 %cmp711, label %if.then713, label %for.inc721

if.then713:                                       ; preds = %land.lhs.true699
  store i32 %add707, i32* %arrayidx710, align 4, !tbaa !3
  %205 = load i32** %esrc, align 8, !tbaa !0
  %arrayidx719 = getelementptr inbounds i32* %205, i64 %indvars.iv1232
  %206 = trunc i64 %indvars.iv1229 to i32
  store i32 %206, i32* %arrayidx719, align 4, !tbaa !3
  %.pre1245 = load i32* %M, align 4, !tbaa !3
  br label %for.inc721

for.inc721:                                       ; preds = %for.body687, %land.lhs.true694, %land.lhs.true699, %if.then713
  %207 = phi i32 [ %199, %for.body687 ], [ %199, %land.lhs.true694 ], [ %199, %land.lhs.true699 ], [ %.pre1245, %if.then713 ]
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1
  %208 = trunc i64 %indvars.iv1229 to i32
  %cmp685 = icmp slt i32 %208, %207
  br i1 %cmp685, label %for.body687, label %for.end723

for.end723:                                       ; preds = %for.inc721, %if.end676
  %209 = load i32** %arrayidx637, align 8, !tbaa !0
  store i32 -987654321, i32* %209, align 4, !tbaa !3
  %210 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx728 = getelementptr inbounds i8** %210, i64 %indvars.iv1232
  %211 = load i8** %arrayidx728, align 8, !tbaa !0
  store i8 0, i8* %211, align 1, !tbaa !1
  %212 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx732 = getelementptr inbounds i32* %212, i64 4
  %213 = load i32* %arrayidx732, align 4, !tbaa !3
  %cmp733 = icmp sgt i32 %213, -987654321
  br i1 %cmp733, label %land.lhs.true735, label %if.end761

land.lhs.true735:                                 ; preds = %for.end723
  %214 = load i32* %arrayidx110, align 4, !tbaa !3
  %cmp739 = icmp sgt i32 %214, -987654321
  br i1 %cmp739, label %land.lhs.true741, label %if.end761

land.lhs.true741:                                 ; preds = %land.lhs.true735
  %add748 = add nsw i32 %214, %213
  %215 = load i32* %212, align 4, !tbaa !3
  %cmp752 = icmp sgt i32 %add748, %215
  br i1 %cmp752, label %if.then754, label %if.end761

if.then754:                                       ; preds = %land.lhs.true741
  store i32 %add748, i32* %212, align 4, !tbaa !3
  %216 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx759 = getelementptr inbounds i8** %216, i64 %indvars.iv1232
  %217 = load i8** %arrayidx759, align 8, !tbaa !0
  store i8 5, i8* %217, align 1, !tbaa !1
  %.pre = load i32** %arrayidx637, align 8, !tbaa !0
  br label %if.end761

if.end761:                                        ; preds = %if.then754, %land.lhs.true741, %land.lhs.true735, %for.end723
  %218 = phi i32* [ %.pre, %if.then754 ], [ %212, %land.lhs.true741 ], [ %212, %land.lhs.true735 ], [ %212, %for.end723 ]
  %arrayidx764 = getelementptr inbounds i32* %218, i64 2
  store i32 -987654321, i32* %arrayidx764, align 4, !tbaa !3
  %219 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx766 = getelementptr inbounds i8** %219, i64 %indvars.iv1232
  %220 = load i8** %arrayidx766, align 8, !tbaa !0
  %arrayidx767 = getelementptr inbounds i8* %220, i64 2
  store i8 0, i8* %arrayidx767, align 1, !tbaa !1
  %221 = load i32** %arrayidx643.pre-phi, align 8, !tbaa !0
  %arrayidx770 = getelementptr inbounds i32* %221, i64 2
  %222 = load i32* %arrayidx770, align 4, !tbaa !3
  %cmp771 = icmp sgt i32 %222, -987654321
  br i1 %cmp771, label %land.lhs.true773, label %if.end802

land.lhs.true773:                                 ; preds = %if.end761
  %223 = load i32* %arrayidx776, align 4, !tbaa !3
  %cmp777 = icmp sgt i32 %223, -987654321
  br i1 %cmp777, label %land.lhs.true779, label %if.end802

land.lhs.true779:                                 ; preds = %land.lhs.true773
  %conv783 = sitofp i32 %222 to float
  %conv787 = sitofp i32 %223 to float
  %arrayidx789 = getelementptr inbounds float* %3, i64 %indvars.iv1232
  %224 = load float* %arrayidx789, align 4, !tbaa !4
  %mul790 = fmul float %conv787, %224
  %add791 = fadd float %conv783, %mul790
  %conv792 = fptosi float %add791 to i32
  %cmp793 = icmp sgt i32 %conv792, -987654321
  br i1 %cmp793, label %if.then795, label %if.end802

if.then795:                                       ; preds = %land.lhs.true779
  %225 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx798 = getelementptr inbounds i32* %225, i64 2
  store i32 %conv792, i32* %arrayidx798, align 4, !tbaa !3
  %226 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx800 = getelementptr inbounds i8** %226, i64 %indvars.iv1232
  %227 = load i8** %arrayidx800, align 8, !tbaa !0
  %arrayidx801 = getelementptr inbounds i8* %227, i64 2
  store i8 8, i8* %arrayidx801, align 1, !tbaa !1
  br label %if.end802

if.end802:                                        ; preds = %if.then795, %land.lhs.true779, %land.lhs.true773, %if.end761
  %228 = load i32** %arrayidx637, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds i32* %228, i64 1
  %229 = load i32* %arrayidx805, align 4, !tbaa !3
  %cmp806 = icmp sgt i32 %229, -987654321
  br i1 %cmp806, label %land.lhs.true808, label %for.inc835

land.lhs.true808:                                 ; preds = %if.end802
  %230 = load i32* %arrayidx811, align 4, !tbaa !3
  %cmp812 = icmp sgt i32 %230, -987654321
  br i1 %cmp812, label %land.lhs.true814, label %for.inc835

land.lhs.true814:                                 ; preds = %land.lhs.true808
  %add821 = add nsw i32 %230, %229
  %arrayidx824 = getelementptr inbounds i32* %228, i64 2
  %231 = load i32* %arrayidx824, align 4, !tbaa !3
  %cmp825 = icmp sgt i32 %add821, %231
  br i1 %cmp825, label %if.then827, label %for.inc835

if.then827:                                       ; preds = %land.lhs.true814
  store i32 %add821, i32* %arrayidx824, align 4, !tbaa !3
  %232 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx832 = getelementptr inbounds i8** %232, i64 %indvars.iv1232
  %233 = load i8** %arrayidx832, align 8, !tbaa !0
  %arrayidx833 = getelementptr inbounds i8* %233, i64 2
  store i8 7, i8* %arrayidx833, align 1, !tbaa !1
  br label %for.inc835

for.inc835:                                       ; preds = %if.end802, %land.lhs.true808, %land.lhs.true814, %if.then827
  %indvars.iv.next1233 = add i64 %indvars.iv1232, 1
  %234 = load i32* %alen, align 4, !tbaa !3
  %cmp154 = icmp slt i32 %63, %234
  br i1 %cmp154, label %for.body156, label %for.end837

for.end837:                                       ; preds = %for.inc835, %for.cond152.preheader
  %.lcssa = phi i32 [ %51, %for.cond152.preheader ], [ %234, %for.inc835 ]
  %call848 = call %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* %call104, %struct.plan7_s* %hmm, i32 %.lcssa) #6
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call.i) #6
  call void @FreeShadowMatrix(%struct.dpshadow_s* %call104) #6
  %235 = load i32* %alen, align 4, !tbaa !3
  %cmp8511202 = icmp slt i32 %235, 1
  br i1 %cmp8511202, label %for.end858, label %for.body853

for.body853:                                      ; preds = %for.end837, %for.body853
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body853 ], [ 1, %for.end837 ]
  %arrayidx855 = getelementptr inbounds float** %1, i64 %indvars.iv
  %236 = load float** %arrayidx855, align 8, !tbaa !0
  %237 = bitcast float* %236 to i8*
  call void @free(i8* %237) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %238 = load i32* %alen, align 4, !tbaa !3
  %239 = trunc i64 %indvars.iv to i32
  %cmp851 = icmp slt i32 %239, %238
  br i1 %cmp851, label %for.body853, label %for.end858

for.end858:                                       ; preds = %for.body853, %for.end837
  call void @free(i8* %call) #5
  call void @free(i8* %call5) #5
  ret %struct.p7trace_s* %call848
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* nocapture %tb, %struct.plan7_s* nocapture %hmm, i32 %L) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %mul = shl nsw i32 %L, 1
  %add = add nsw i32 %mul, 6
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #5
  %0 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 1
  %1 = load i8** %statetype, align 8, !tbaa !0
  store i8 9, i8* %1, align 1, !tbaa !1
  %2 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %2, i64 0, i32 2
  %3 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %3, align 4, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %2, i64 0, i32 3
  %4 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %4, align 4, !tbaa !3
  %mtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 1
  %itb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 2
  %dtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 3
  %xtb = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 0
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %esrc = getelementptr inbounds %struct.dpshadow_s* %tb, i64 0, i32 4
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  br label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %nxtstate.0335 = phi i8 [ 8, %entry ], [ %nxtstate.1, %while.cond.backedge ]
  %k.0334 = phi i32 [ 0, %entry ], [ %k.3, %while.cond.backedge ]
  %i.0333 = phi i32 [ %L, %entry ], [ %i.4, %while.cond.backedge ]
  %tpos.0332 = phi i32 [ 1, %entry ], [ %tpos.4, %while.cond.backedge ]
  %curralloc.0331 = phi i32 [ %add, %entry ], [ %curralloc.0.be, %while.cond.backedge ]
  %conv = sext i8 %nxtstate.0335 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
    i32 2, label %sw.bb34
    i32 5, label %sw.bb50
    i32 6, label %sw.bb68
    i32 10, label %sw.bb114
    i32 7, label %sw.bb137
    i32 8, label %sw.bb180
  ]

sw.bb:                                            ; preds = %while.body
  %idxprom = sext i32 %tpos.0332 to i64
  %5 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype5 = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 1
  %6 = load i8** %statetype5, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i8* %6, i64 %idxprom
  store i8 1, i8* %arrayidx6, align 1, !tbaa !1
  %idxprom7 = sext i32 %k.0334 to i64
  %idxprom8 = sext i32 %i.0333 to i64
  %7 = load i8*** %mtb, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %7, i64 %idxprom8
  %8 = load i8** %arrayidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8* %8, i64 %idxprom7
  %9 = load i8* %arrayidx10, align 1, !tbaa !1
  %dec = add nsw i32 %k.0334, -1
  %10 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx12 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2
  %11 = load i32** %nodeidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %11, i64 %idxprom
  store i32 %k.0334, i32* %arrayidx13, align 4, !tbaa !3
  %dec14 = add nsw i32 %i.0333, -1
  %pos16 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3
  %12 = load i32** %pos16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %12, i64 %idxprom
  store i32 %i.0333, i32* %arrayidx17, align 4, !tbaa !3
  %inc = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  %idxprom19 = sext i32 %tpos.0332 to i64
  %13 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype20 = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 1
  %14 = load i8** %statetype20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i8* %14, i64 %idxprom19
  store i8 3, i8* %arrayidx21, align 1, !tbaa !1
  %idxprom22 = sext i32 %k.0334 to i64
  %idxprom23 = sext i32 %i.0333 to i64
  %15 = load i8*** %itb, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i8** %15, i64 %idxprom23
  %16 = load i8** %arrayidx24, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i8* %16, i64 %idxprom22
  %17 = load i8* %arrayidx25, align 1, !tbaa !1
  %18 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx27 = getelementptr inbounds %struct.p7trace_s* %18, i64 0, i32 2
  %19 = load i32** %nodeidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %19, i64 %idxprom19
  store i32 %k.0334, i32* %arrayidx28, align 4, !tbaa !3
  %dec29 = add nsw i32 %i.0333, -1
  %pos31 = getelementptr inbounds %struct.p7trace_s* %18, i64 0, i32 3
  %20 = load i32** %pos31, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32* %20, i64 %idxprom19
  store i32 %i.0333, i32* %arrayidx32, align 4, !tbaa !3
  %inc33 = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  %idxprom35 = sext i32 %tpos.0332 to i64
  %21 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype36 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1
  %22 = load i8** %statetype36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i8* %22, i64 %idxprom35
  store i8 2, i8* %arrayidx37, align 1, !tbaa !1
  %idxprom38 = sext i32 %k.0334 to i64
  %idxprom39 = sext i32 %i.0333 to i64
  %23 = load i8*** %dtb, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i8** %23, i64 %idxprom39
  %24 = load i8** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i8* %24, i64 %idxprom38
  %25 = load i8* %arrayidx41, align 1, !tbaa !1
  %dec42 = add nsw i32 %k.0334, -1
  %26 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx44 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 2
  %27 = load i32** %nodeidx44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %27, i64 %idxprom35
  store i32 %k.0334, i32* %arrayidx45, align 4, !tbaa !3
  %pos47 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 3
  %28 = load i32** %pos47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i32* %28, i64 %idxprom35
  store i32 0, i32* %arrayidx48, align 4, !tbaa !3
  %inc49 = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.bb50:                                          ; preds = %while.body
  %idxprom51 = sext i32 %tpos.0332 to i64
  %29 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype52 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1
  %30 = load i8** %statetype52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i8* %30, i64 %idxprom51
  store i8 5, i8* %arrayidx53, align 1, !tbaa !1
  %idxprom54 = sext i32 %i.0333 to i64
  %31 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i8** %31, i64 %idxprom54
  %32 = load i8** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i8* %32, i64 4
  %33 = load i8* %arrayidx56, align 1, !tbaa !1
  %34 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx58 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 2
  %35 = load i32** %nodeidx58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i32* %35, i64 %idxprom51
  store i32 0, i32* %arrayidx59, align 4, !tbaa !3
  %cmp61 = icmp eq i8 %33, 5
  %dec63 = sext i1 %cmp61 to i32
  %dec63.i.0 = add nsw i32 %dec63, %i.0333
  %i.0. = select i1 %cmp61, i32 %i.0333, i32 0
  %pos65 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 3
  %36 = load i32** %pos65, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %36, i64 %idxprom51
  store i32 %i.0., i32* %arrayidx66, align 4, !tbaa !3
  %inc67 = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.bb68:                                          ; preds = %while.body
  %add69 = add nsw i32 %k.0334, 1
  %idxprom70 = sext i32 %add69 to i64
  %37 = load float** %begin, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds float* %37, i64 %idxprom70
  %38 = load float* %arrayidx71, align 4, !tbaa !4
  %39 = load float* %p1, align 4, !tbaa !4
  %call = call i32 @Prob2Score(float %38, float %39) #5
  %conv72 = sitofp i32 %call to double
  %add73 = fadd double %conv72, 1.000000e+03
  %40 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32* %40, i64 %idxprom70
  %41 = load i32* %arrayidx76, align 4, !tbaa !3
  %conv77 = sitofp i32 %41 to double
  %cmp78 = fcmp ugt double %add73, %conv77
  br i1 %cmp78, label %if.end99, label %while.cond80.outer

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
  %cmp81 = icmp sgt i32 %k.1, 0
  br i1 %cmp81, label %while.body83, label %if.end99

while.body83:                                     ; preds = %while.cond80
  %43 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype85 = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 1
  %44 = load i8** %statetype85, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i8* %44, i64 %indvars.iv339
  store i8 2, i8* %arrayidx86, align 1, !tbaa !1
  %dec87 = add nsw i32 %k.1, -1
  %45 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx89 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 2
  %46 = load i32** %nodeidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %46, i64 %indvars.iv339
  store i32 %k.1, i32* %arrayidx90, align 4, !tbaa !3
  %pos92 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 3
  %47 = load i32** %pos92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %47, i64 %indvars.iv339
  store i32 0, i32* %arrayidx93, align 4, !tbaa !3
  %indvars.iv.next340 = add i64 %indvars.iv339, 1
  %inc94 = add nsw i32 %tpos.1, 1
  %48 = trunc i64 %indvars.iv.next340 to i32
  %cmp95 = icmp eq i32 %48, %curralloc.1.ph
  br i1 %cmp95, label %if.then97, label %while.cond80

if.then97:                                        ; preds = %while.body83
  %add98 = add nsw i32 %curralloc.1.ph, %L
  call void @P7ReallocTrace(%struct.p7trace_s* %45, i32 %add98) #5
  br label %while.cond80.outer

if.end99:                                         ; preds = %while.cond80, %sw.bb68
  %curralloc.2 = phi i32 [ %curralloc.0331, %sw.bb68 ], [ %curralloc.1.ph, %while.cond80 ]
  %tpos.2 = phi i32 [ %tpos.0332, %sw.bb68 ], [ %tpos.1, %while.cond80 ]
  %k.2 = phi i32 [ %k.0334, %sw.bb68 ], [ %k.1, %while.cond80 ]
  %idxprom100 = sext i32 %tpos.2 to i64
  %49 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype101 = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1
  %50 = load i8** %statetype101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i8* %50, i64 %idxprom100
  store i8 6, i8* %arrayidx102, align 1, !tbaa !1
  %idxprom103 = sext i32 %i.0333 to i64
  %51 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i8** %51, i64 %idxprom103
  %52 = load i8** %arrayidx105, align 8, !tbaa !0
  %53 = load i8* %52, align 1, !tbaa !1
  %54 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx108 = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 2
  %55 = load i32** %nodeidx108, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32* %55, i64 %idxprom100
  store i32 0, i32* %arrayidx109, align 4, !tbaa !3
  %pos111 = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 3
  %56 = load i32** %pos111, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %56, i64 %idxprom100
  store i32 0, i32* %arrayidx112, align 4, !tbaa !3
  %inc113 = add nsw i32 %tpos.2, 1
  br label %sw.epilog

sw.bb114:                                         ; preds = %while.body
  %idxprom115 = sext i32 %tpos.0332 to i64
  %57 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype116 = getelementptr inbounds %struct.p7trace_s* %57, i64 0, i32 1
  %58 = load i8** %statetype116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i8* %58, i64 %idxprom115
  store i8 10, i8* %arrayidx117, align 1, !tbaa !1
  %idxprom118 = sext i32 %i.0333 to i64
  %59 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i8** %59, i64 %idxprom118
  %60 = load i8** %arrayidx120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i8* %60, i64 3
  %61 = load i8* %arrayidx121, align 1, !tbaa !1
  %62 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx123 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 2
  %63 = load i32** %nodeidx123, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %63, i64 %idxprom115
  store i32 0, i32* %arrayidx124, align 4, !tbaa !3
  %cmp126 = icmp eq i8 %61, 10
  %dec129 = sext i1 %cmp126 to i32
  %dec129.i.0 = add nsw i32 %dec129, %i.0333
  %i.0.322 = select i1 %cmp126, i32 %i.0333, i32 0
  %pos134 = getelementptr inbounds %struct.p7trace_s* %62, i64 0, i32 3
  %64 = load i32** %pos134, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %64, i64 %idxprom115
  store i32 %i.0.322, i32* %arrayidx135, align 4, !tbaa !3
  %inc136 = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.bb137:                                         ; preds = %while.body
  %idxprom138 = sext i32 %tpos.0332 to i64
  %65 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype139 = getelementptr inbounds %struct.p7trace_s* %65, i64 0, i32 1
  %66 = load i8** %statetype139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i8* %66, i64 %idxprom138
  store i8 7, i8* %arrayidx140, align 1, !tbaa !1
  %67 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx142 = getelementptr inbounds %struct.p7trace_s* %67, i64 0, i32 2
  %68 = load i32** %nodeidx142, align 8, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %68, i64 %idxprom138
  store i32 0, i32* %arrayidx143, align 4, !tbaa !3
  %pos145 = getelementptr inbounds %struct.p7trace_s* %67, i64 0, i32 3
  %69 = load i32** %pos145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %69, i64 %idxprom138
  store i32 0, i32* %arrayidx146, align 4, !tbaa !3
  %idxprom147 = sext i32 %i.0333 to i64
  %70 = load i32** %esrc, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %70, i64 %idxprom147
  %71 = load i32* %arrayidx148, align 4, !tbaa !3
  %inc149 = add i32 %tpos.0332, 1
  %idxprom150 = sext i32 %71 to i64
  %72 = load float** %end, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds float* %72, i64 %idxprom150
  %73 = load float* %arrayidx151, align 4, !tbaa !4
  %call152 = call i32 @Prob2Score(float %73, float 1.000000e+00) #5
  %conv153 = sitofp i32 %call152 to double
  %add154 = fadd double %conv153, 1.000000e+03
  %74 = load i32** %esc, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i32* %74, i64 %idxprom150
  %75 = load i32* %arrayidx156, align 4, !tbaa !3
  %conv157 = sitofp i32 %75 to double
  %cmp158 = fcmp ugt double %add154, %conv157
  br i1 %cmp158, label %sw.epilog, label %if.then160

if.then160:                                       ; preds = %sw.bb137
  %76 = load i32* %M, align 4, !tbaa !3
  %cmp161324 = icmp sgt i32 %76, %71
  br i1 %cmp161324, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %if.then160
  %77 = sext i32 %inc149 to i64
  %78 = add i32 %inc149, %76
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i64 [ %77, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %dk.0327 = phi i32 [ %76, %for.body.lr.ph ], [ %dec178, %for.inc.for.body_crit_edge ]
  %tpos.3326 = phi i32 [ %inc149, %for.body.lr.ph ], [ %inc172, %for.inc.for.body_crit_edge ]
  %curralloc.3325 = phi i32 [ %curralloc.0331, %for.body.lr.ph ], [ %curralloc.4, %for.inc.for.body_crit_edge ]
  %79 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype164 = getelementptr inbounds %struct.p7trace_s* %79, i64 0, i32 1
  %80 = load i8** %statetype164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i8* %80, i64 %indvars.iv
  store i8 2, i8* %arrayidx165, align 1, !tbaa !1
  %81 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx167 = getelementptr inbounds %struct.p7trace_s* %81, i64 0, i32 2
  %82 = load i32** %nodeidx167, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds i32* %82, i64 %indvars.iv
  store i32 %dk.0327, i32* %arrayidx168, align 4, !tbaa !3
  %pos170 = getelementptr inbounds %struct.p7trace_s* %81, i64 0, i32 3
  %83 = load i32** %pos170, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds i32* %83, i64 %indvars.iv
  store i32 0, i32* %arrayidx171, align 4, !tbaa !3
  %inc172 = add nsw i32 %tpos.3326, 1
  %cmp173 = icmp eq i32 %inc172, %curralloc.3325
  br i1 %cmp173, label %if.then175, label %for.inc

if.then175:                                       ; preds = %for.body
  %add176 = add nsw i32 %curralloc.3325, %L
  call void @P7ReallocTrace(%struct.p7trace_s* %81, i32 %add176) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then175
  %curralloc.4 = phi i32 [ %add176, %if.then175 ], [ %curralloc.3325, %for.body ]
  %dec178 = add nsw i32 %dk.0327, -1
  %cmp161 = icmp sgt i32 %dec178, %71
  br i1 %cmp161, label %for.inc.for.body_crit_edge, label %for.cond.sw.epilog.loopexit_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.body

sw.bb180:                                         ; preds = %while.body
  %idxprom181 = sext i32 %tpos.0332 to i64
  %84 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype182 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 1
  %85 = load i8** %statetype182, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i8* %85, i64 %idxprom181
  store i8 8, i8* %arrayidx183, align 1, !tbaa !1
  %idxprom184 = sext i32 %i.0333 to i64
  %86 = load i8*** %xtb, align 8, !tbaa !0
  %arrayidx186 = getelementptr inbounds i8** %86, i64 %idxprom184
  %87 = load i8** %arrayidx186, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i8* %87, i64 2
  %88 = load i8* %arrayidx187, align 1, !tbaa !1
  %89 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx189 = getelementptr inbounds %struct.p7trace_s* %89, i64 0, i32 2
  %90 = load i32** %nodeidx189, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i32* %90, i64 %idxprom181
  store i32 0, i32* %arrayidx190, align 4, !tbaa !3
  %cmp192 = icmp eq i8 %88, 8
  %dec195 = sext i1 %cmp192 to i32
  %dec195.i.0 = add nsw i32 %dec195, %i.0333
  %i.0.323 = select i1 %cmp192, i32 %i.0333, i32 0
  %pos200 = getelementptr inbounds %struct.p7trace_s* %89, i64 0, i32 3
  %91 = load i32** %pos200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %91, i64 %idxprom181
  store i32 %i.0.323, i32* %arrayidx201, align 4, !tbaa !3
  %inc202 = add nsw i32 %tpos.0332, 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call203 = call i8* @Statetype(i8 signext %nxtstate.0335) #5
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), i8* %call203) #5
  br label %sw.epilog

for.cond.sw.epilog.loopexit_crit_edge:            ; preds = %for.inc
  %92 = sub i32 %78, %71
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then160, %for.cond.sw.epilog.loopexit_crit_edge, %sw.bb137, %sw.default, %sw.bb180, %sw.bb114, %if.end99, %sw.bb50, %sw.bb34, %sw.bb18, %sw.bb
  %curralloc.5 = phi i32 [ %curralloc.0331, %sw.default ], [ %curralloc.0331, %sw.bb180 ], [ %curralloc.0331, %sw.bb137 ], [ %curralloc.0331, %sw.bb114 ], [ %curralloc.2, %if.end99 ], [ %curralloc.0331, %sw.bb50 ], [ %curralloc.0331, %sw.bb34 ], [ %curralloc.0331, %sw.bb18 ], [ %curralloc.0331, %sw.bb ], [ %curralloc.4, %for.cond.sw.epilog.loopexit_crit_edge ], [ %curralloc.0331, %if.then160 ]
  %tpos.4 = phi i32 [ %tpos.0332, %sw.default ], [ %inc202, %sw.bb180 ], [ %inc149, %sw.bb137 ], [ %inc136, %sw.bb114 ], [ %inc113, %if.end99 ], [ %inc67, %sw.bb50 ], [ %inc49, %sw.bb34 ], [ %inc33, %sw.bb18 ], [ %inc, %sw.bb ], [ %92, %for.cond.sw.epilog.loopexit_crit_edge ], [ %inc149, %if.then160 ]
  %i.4 = phi i32 [ %i.0333, %sw.default ], [ %dec195.i.0, %sw.bb180 ], [ %i.0333, %sw.bb137 ], [ %dec129.i.0, %sw.bb114 ], [ %i.0333, %if.end99 ], [ %dec63.i.0, %sw.bb50 ], [ %i.0333, %sw.bb34 ], [ %dec29, %sw.bb18 ], [ %dec14, %sw.bb ], [ %i.0333, %for.cond.sw.epilog.loopexit_crit_edge ], [ %i.0333, %if.then160 ]
  %k.3 = phi i32 [ %k.0334, %sw.default ], [ %k.0334, %sw.bb180 ], [ %71, %sw.bb137 ], [ %k.0334, %sw.bb114 ], [ %k.2, %if.end99 ], [ %k.0334, %sw.bb50 ], [ %dec42, %sw.bb34 ], [ %k.0334, %sw.bb18 ], [ %dec, %sw.bb ], [ %71, %for.cond.sw.epilog.loopexit_crit_edge ], [ %71, %if.then160 ]
  %nxtstate.1 = phi i8 [ %nxtstate.0335, %sw.default ], [ %88, %sw.bb180 ], [ 1, %sw.bb137 ], [ %61, %sw.bb114 ], [ %53, %if.end99 ], [ %33, %sw.bb50 ], [ %25, %sw.bb34 ], [ %17, %sw.bb18 ], [ %9, %sw.bb ], [ 1, %for.cond.sw.epilog.loopexit_crit_edge ], [ 1, %if.then160 ]
  %cmp204 = icmp eq i32 %tpos.4, %curralloc.5
  br i1 %cmp204, label %if.then206, label %while.cond.backedge

if.then206:                                       ; preds = %sw.epilog
  %add207 = add nsw i32 %curralloc.5, %L
  %93 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @P7ReallocTrace(%struct.p7trace_s* %93, i32 %add207) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then206, %sw.epilog
  %curralloc.0.be = phi i32 [ %add207, %if.then206 ], [ %curralloc.5, %sw.epilog ]
  %cmp = icmp eq i8 %nxtstate.1, 4
  br i1 %cmp, label %while.end209, label %while.body

while.end209:                                     ; preds = %while.cond.backedge
  %idxprom210 = sext i32 %tpos.4 to i64
  %94 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype211 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 1
  %95 = load i8** %statetype211, align 8, !tbaa !0
  %arrayidx212 = getelementptr inbounds i8* %95, i64 %idxprom210
  store i8 4, i8* %arrayidx212, align 1, !tbaa !1
  %96 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 2
  %97 = load i32** %nodeidx214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i32* %97, i64 %idxprom210
  store i32 0, i32* %arrayidx215, align 4, !tbaa !3
  %pos217 = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 3
  %98 = load i32** %pos217, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i32* %98, i64 %idxprom210
  store i32 0, i32* %arrayidx218, align 4, !tbaa !3
  %add219 = add nsw i32 %tpos.4, 1
  %tlen = getelementptr inbounds %struct.p7trace_s* %96, i64 0, i32 0
  store i32 %add219, i32* %tlen, align 4, !tbaa !3
  call void @P7ReverseTrace(%struct.p7trace_s* %96) #5
  %99 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  ret %struct.p7trace_s* %99
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
  %cmp = icmp eq %struct.p7trace_s* %tr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @TraceDecompose(%struct.p7trace_s* %tr, %struct.p7trace_s*** %tarr, i32* %ntr) #5
  %0 = load i32* %ntr, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str6, i64 0, i64 0)) #5
  %.pre = load i32* %ntr, align 4, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %1 = phi i32 [ %.pre, %if.then2 ], [ %0, %if.end ]
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2480, i64 %mul) #5
  %2 = bitcast i8* %call to float*
  %3 = load i32* %ntr, align 4, !tbaa !3
  %conv4 = sext i32 %3 to i64
  %mul5 = shl nsw i64 %conv4, 2
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 2481, i64 %mul5) #5
  %4 = bitcast i8* %call6 to i32*
  %5 = load i32* %ntr, align 4, !tbaa !3
  %cmp7245 = icmp sgt i32 %5, 0
  br i1 %cmp7245, label %for.body.lr.ph, label %if.then35

for.body.lr.ph:                                   ; preds = %if.end3
  %tobool = icmp eq i32 %do_null2, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv254 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next255, %for.inc ]
  %ndom.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %ndom.1, %for.inc ]
  %whole_sc.0246 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %whole_sc.1, %for.inc ]
  %6 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %6, i64 %indvars.iv254
  %7 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %call9 = call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %dsq, %struct.p7trace_s* %7) #5
  %arrayidx11 = getelementptr inbounds float* %2, i64 %indvars.iv254
  store float %call9, float* %arrayidx11, align 4, !tbaa !4
  br i1 %tobool, label %if.end18, label %if.then12

if.then12:                                        ; preds = %for.body
  %8 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.p7trace_s** %8, i64 %indvars.iv254
  %9 = load %struct.p7trace_s** %arrayidx14, align 8, !tbaa !0
  %call15 = call float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %9, i8* %dsq) #5
  %10 = load float* %arrayidx11, align 4, !tbaa !4
  %sub = fsub float %10, %call15
  store float %sub, float* %arrayidx11, align 4, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %for.body, %if.then12
  %11 = phi float [ %call9, %for.body ], [ %sub, %if.then12 ]
  %cmp22 = fcmp ogt float %11, 0.000000e+00
  %arrayidx26 = getelementptr inbounds i32* %4, i64 %indvars.iv254
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end18
  store i32 1, i32* %arrayidx26, align 4, !tbaa !3
  %inc = add nsw i32 %ndom.0247, 1
  %add = fadd float %whole_sc.0246, %11
  br label %for.inc

if.else:                                          ; preds = %if.end18
  store i32 0, i32* %arrayidx26, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.else
  %whole_sc.1 = phi float [ %add, %if.then24 ], [ %whole_sc.0246, %if.else ]
  %ndom.1 = phi i32 [ %inc, %if.then24 ], [ %ndom.0247, %if.else ]
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %12 = load i32* %ntr, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next255 to i32
  %cmp7 = icmp slt i32 %13, %12
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp33 = icmp eq i32 %ndom.1, 0
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end3, %for.end
  %.lcssa259 = phi i32 [ %12, %for.end ], [ %5, %if.end3 ]
  %call36 = call i32 @FArgMax(float* %2, i32 %.lcssa259) #5
  %idxprom37 = sext i32 %call36 to i64
  %arrayidx38 = getelementptr inbounds i32* %4, i64 %idxprom37
  store i32 1, i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds float* %2, i64 %idxprom37
  %14 = load float* %arrayidx40, align 4, !tbaa !4
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %for.end
  %whole_sc.2 = phi float [ %14, %if.then35 ], [ %whole_sc.1, %for.end ]
  %ndom.2 = phi i32 [ 1, %if.then35 ], [ %ndom.1, %for.end ]
  %tobool42 = icmp eq i32 %do_forward, 0
  %whole_sc.2.sc_override = select i1 %tobool42, float %whole_sc.2, float %sc_override
  %call45 = call double @PValue(%struct.plan7_s* %hmm, float %whole_sc.2.sc_override) #5
  %15 = load i32* %ntr, align 4, !tbaa !3
  %cmp47242 = icmp sgt i32 %15, 0
  br i1 %cmp47242, label %for.body49.lr.ph, label %for.end96

for.body49.lr.ph:                                 ; preds = %if.end41
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2
  %tobool70 = icmp eq i32 %hmmpfam_mode, 0
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc94
  %16 = phi i32 [ %15, %for.body49.lr.ph ], [ %38, %for.inc94 ]
  %indvars.iv251 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next252, %for.inc94 ]
  %didx.0243 = phi i32 [ 1, %for.body49.lr.ph ], [ %didx.1, %for.inc94 ]
  %arrayidx51 = getelementptr inbounds i32* %4, i64 %indvars.iv251
  %17 = load i32* %arrayidx51, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %17, 0
  br i1 %tobool52, label %for.inc94, label %if.end54

if.end54:                                         ; preds = %for.body49
  %18 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv251
  %19 = load %struct.p7trace_s** %arrayidx56, align 8, !tbaa !0
  call void @TraceSimpleBounds(%struct.p7trace_s* %19, i32* %i1, i32* %i2, i32* %k1, i32* %k2) #5
  %arrayidx58 = getelementptr inbounds float* %2, i64 %indvars.iv251
  %20 = load float* %arrayidx58, align 4, !tbaa !4
  %call59 = call double @PValue(%struct.plan7_s* %hmm, float %20) #5
  %21 = load double* %domE, align 8, !tbaa !5
  %cmp60 = fcmp ugt double %call59, %21
  br i1 %cmp60, label %if.end92, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end54
  %22 = load float* %arrayidx58, align 4, !tbaa !4
  %23 = load float* %domT, align 4, !tbaa !4
  %cmp64 = fcmp ult float %22, %23
  br i1 %cmp64, label %if.end92, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  %24 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds %struct.p7trace_s** %24, i64 %indvars.iv251
  %25 = load %struct.p7trace_s** %arrayidx68, align 8, !tbaa !0
  %call69 = call %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* %25, %struct.plan7_s* %hmm, i8* %dsq, i8* %seqname) #5
  br i1 %tobool70, label %cond.end85, label %cond.true88

cond.end85:                                       ; preds = %if.then66
  %26 = load float* %arrayidx58, align 4, !tbaa !4
  %conv77 = fpext float %26 to double
  %.pre257 = load i32* %i1, align 4, !tbaa !3
  br label %cond.end90

cond.true88:                                      ; preds = %if.then66
  %27 = load i32* %i1, align 4, !tbaa !3
  %conv72 = sitofp i32 %27 to double
  %mul73 = fmul double %conv72, -1.000000e+00
  %28 = load float* %arrayidx58, align 4, !tbaa !4
  %29 = load i8** %name, align 8, !tbaa !0
  %30 = load i8** %acc, align 8, !tbaa !0
  %31 = load i8** %desc, align 8, !tbaa !0
  br label %cond.end90

cond.end90:                                       ; preds = %cond.end85, %cond.true88
  %32 = phi i32 [ %27, %cond.true88 ], [ %.pre257, %cond.end85 ]
  %cond86232 = phi i8* [ %30, %cond.true88 ], [ %seqacc, %cond.end85 ]
  %33 = phi float [ %28, %cond.true88 ], [ %26, %cond.end85 ]
  %sortkey.0222224230 = phi double [ %mul73, %cond.true88 ], [ %conv77, %cond.end85 ]
  %cond226228 = phi i8* [ %29, %cond.true88 ], [ %seqname, %cond.end85 ]
  %cond91 = phi i8* [ %31, %cond.true88 ], [ %seqdesc, %cond.end85 ]
  %34 = load i32* %i2, align 4, !tbaa !3
  %35 = load i32* %k1, align 4, !tbaa !3
  %36 = load i32* %k2, align 4, !tbaa !3
  %37 = load i32* %M, align 4, !tbaa !3
  call void @RegisterHit(%struct.tophit_s* %dhit, double %sortkey.0222224230, double %call59, float %33, double %call45, float %whole_sc.2.sc_override, i8* %cond226228, i8* %cond86232, i8* %cond91, i32 %32, i32 %34, i32 %L, i32 %35, i32 %36, i32 %37, i32 %didx.0243, i32 %ndom.2, %struct.fancyali_s* %call69) #5
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true, %if.end54, %cond.end90
  %inc93 = add nsw i32 %didx.0243, 1
  %.pre256 = load i32* %ntr, align 4, !tbaa !3
  br label %for.inc94

for.inc94:                                        ; preds = %for.body49, %if.end92
  %38 = phi i32 [ %.pre256, %if.end92 ], [ %16, %for.body49 ]
  %didx.1 = phi i32 [ %inc93, %if.end92 ], [ %didx.0243, %for.body49 ]
  %indvars.iv.next252 = add i64 %indvars.iv251, 1
  %39 = trunc i64 %indvars.iv.next252 to i32
  %cmp47 = icmp slt i32 %39, %38
  br i1 %cmp47, label %for.body49, label %for.end96

for.end96:                                        ; preds = %for.inc94, %if.end41
  %tobool97 = icmp ne i32 %hmmpfam_mode, 0
  br i1 %tobool97, label %if.then98, label %if.else109

if.then98:                                        ; preds = %for.end96
  %cmp99 = fcmp ogt double %call45, 0.000000e+00
  br i1 %cmp99, label %cond.true101, label %cond.false104

cond.true101:                                     ; preds = %if.then98
  %call102 = call double @log(double %call45) #5
  %mul103 = fmul double %call102, -1.000000e+00
  br label %if.end111

cond.false104:                                    ; preds = %if.then98
  %conv105 = fpext float %whole_sc.2.sc_override to double
  %add106 = fadd double %conv105, 1.000000e+05
  br label %if.end111

if.else109:                                       ; preds = %for.end96
  %conv110 = fpext float %whole_sc.2.sc_override to double
  br label %if.end111

if.end111:                                        ; preds = %cond.true101, %cond.false104, %if.else109
  %sortkey.1 = phi double [ %conv110, %if.else109 ], [ %mul103, %cond.true101 ], [ %add106, %cond.false104 ]
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0
  %40 = load float* %globT, align 4, !tbaa !4
  %cmp112 = fcmp ult float %whole_sc.2.sc_override, %40
  br i1 %cmp112, label %for.cond134.preheader, label %if.then114

if.then114:                                       ; preds = %if.end111
  br i1 %tobool97, label %cond.true128, label %cond.end131

cond.true128:                                     ; preds = %if.then114
  %name117 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %41 = load i8** %name117, align 8, !tbaa !0
  %acc123 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %42 = load i8** %acc123, align 8, !tbaa !0
  %desc129 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %43 = load i8** %desc129, align 8, !tbaa !0
  br label %cond.end131

cond.end131:                                      ; preds = %if.then114, %cond.true128
  %cond126238 = phi i8* [ %42, %cond.true128 ], [ %seqacc, %if.then114 ]
  %cond120234236 = phi i8* [ %41, %cond.true128 ], [ %seqname, %if.then114 ]
  %cond132 = phi i8* [ %43, %cond.true128 ], [ %seqdesc, %if.then114 ]
  call void @RegisterHit(%struct.tophit_s* %ghit, double %sortkey.1, double %call45, float %whole_sc.2.sc_override, double 0.000000e+00, float 0.000000e+00, i8* %cond120234236, i8* %cond126238, i8* %cond132, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %ndom.2, %struct.fancyali_s* null) #5
  br label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %if.end111, %cond.end131
  %44 = load i32* %ntr, align 4, !tbaa !3
  %cmp135240 = icmp sgt i32 %44, 0
  br i1 %cmp135240, label %for.body137, label %for.end142

for.body137:                                      ; preds = %for.cond134.preheader, %for.body137
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body137 ], [ 0, %for.cond134.preheader ]
  %45 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds %struct.p7trace_s** %45, i64 %indvars.iv
  %46 = load %struct.p7trace_s** %arrayidx139, align 8, !tbaa !0
  call void @P7FreeTrace(%struct.p7trace_s* %46) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* %ntr, align 4, !tbaa !3
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp135 = icmp slt i32 %48, %47
  br i1 %cmp135, label %for.body137, label %for.end142

for.end142:                                       ; preds = %for.body137, %for.cond134.preheader
  %49 = load %struct.p7trace_s*** %tarr, align 8, !tbaa !0
  %50 = bitcast %struct.p7trace_s** %49 to i8*
  call void @free(i8* %50) #5
  call void @free(i8* %call) #5
  call void @free(i8* %call6) #5
  br label %return

return:                                           ; preds = %entry, %for.end142
  %retval.0 = phi float [ %whole_sc.2.sc_override, %for.end142 ], [ %sc_override, %entry ]
  ret float %retval.0
}

; Function Attrs: optsize
declare void @TraceDecompose(%struct.p7trace_s*, %struct.p7trace_s***, i32*) #1

; Function Attrs: optsize
declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

; Function Attrs: optsize
declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #1

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #1

; Function Attrs: optsize
declare double @PValue(%struct.plan7_s*, float) #1

; Function Attrs: optsize
declare void @TraceSimpleBounds(%struct.p7trace_s*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s*, %struct.plan7_s*, i8*, i8*) #1

; Function Attrs: optsize
declare void @RegisterHit(%struct.tophit_s*, double, double, float, double, float, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s*) #1

; Function Attrs: nounwind optsize
declare double @log(double) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
