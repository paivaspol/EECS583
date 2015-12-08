; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/loopFilter.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@ALPHA_TABLE = global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = global [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
@chroma_edge = global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\FF\FF\03"], [4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\FF\01\02\02", [4 x i8] c"\FF\FF\03\03"]], align 16
@DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@mixedModeEdgeFlag = common global i8 0, align 1
@ININT_STRENGTH = global [4 x i32] [i32 67372036, i32 50529027, i32 50529027, i32 50529027], align 16
@BLK_NUM = global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\04\08\0C", [4 x i8] c"\01\05\09\0D", [4 x i8] c"\02\06\0A\0E", [4 x i8] c"\03\07\0B\0F"], [4 x [4 x i8]] [[4 x i8] c"\00\01\02\03", [4 x i8] c"\04\05\06\07", [4 x i8] c"\08\09\0A\0B", [4 x i8] c"\0C\0D\0E\0F"]], align 16
@BLK_4_TO_8 = global [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@enc_picture = external global %struct.storable_picture*
@EdgeLoop.pelnum_cr = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@fieldModeFilteringFlag = common global i8 0, align 1
@QP_SCALE_CR = external constant [52 x i8]

; Function Attrs: nounwind optsize uwtable
define void @DeblockFrame(%struct.ImageParameters* nocapture %img, i16** nocapture %imgY, i16*** %imgUV) #0 {
entry:
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 110
  %0 = load i32* %PicSizeInMbs, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %0, 0
  br i1 %cmp4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call void @DeblockMb(%struct.ImageParameters* %img, i16** %imgY, i16*** %imgUV, i32 %i.05) #3
  %inc = add i32 %i.05, 1
  %1 = load i32* %PicSizeInMbs, align 4, !tbaa !0
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DeblockMb(%struct.ImageParameters* nocapture %img, i16** nocapture %imgY, i16*** %imgUV, i32 %MbQAddr) #0 {
entry:
  %Strength = alloca [16 x i8], align 16
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %filterNon8x8LumaEdgesFlag = alloca [4 x i32], align 16
  %0 = bitcast [4 x i32]* %filterNon8x8LumaEdgesFlag to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @DeblockMb.filterNon8x8LumaEdgesFlag to i8*), i64 16, i32 16, i1 false)
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 143
  store i32 1, i32* %DeblockCall, align 4, !tbaa !0
  call void @get_mb_pos(i32 %MbQAddr, i32* %mb_x, i32* %mb_y) #4
  %1 = load i32* %mb_x, align 4, !tbaa !0
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %2 = load i32* %mb_y, align 4, !tbaa !0
  %cmp1 = icmp ne i32 %2, 0
  %conv2 = zext i1 %cmp1 to i32
  %idxprom = sext i32 %MbQAddr to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 32
  %4 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !0
  %lnot = icmp eq i32 %4, 0
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx5 = getelementptr inbounds [4 x i32]* %filterNon8x8LumaEdgesFlag, i64 0, i64 3
  store i32 %lnot.ext, i32* %arrayidx5, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [4 x i32]* %filterNon8x8LumaEdgesFlag, i64 0, i64 1
  store i32 %lnot.ext, i32* %arrayidx6, align 4, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 90
  %5 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool7 = icmp eq i32 %5, 0
  %tobool7.not = xor i1 %tobool7, true
  %cmp8 = icmp eq i32 %2, 16
  %or.cond263 = and i1 %cmp8, %tobool7.not
  br i1 %or.cond263, label %land.lhs.true10, label %if.end13

land.lhs.true10:                                  ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %6 = load i32* %mb_field, align 4, !tbaa !0
  %tobool11 = icmp eq i32 %6, 0
  %conv2. = select i1 %tobool11, i32 %conv2, i32 0
  br label %if.end13

if.end13:                                         ; preds = %entry, %land.lhs.true10
  %filterTopMbEdgeFlag.0 = phi i32 [ %conv2, %entry ], [ %conv2., %land.lhs.true10 ]
  %structure = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 7
  %7 = load i32* %structure, align 4, !tbaa !0
  %cmp14.not = icmp ne i32 %7, 0
  %brmerge264 = or i1 %cmp14.not, %tobool7
  %.mux = select i1 %cmp14.not, i32 2, i32 4
  br i1 %brmerge264, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %if.end13
  %mb_field18 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %8 = load i32* %mb_field18, align 4, !tbaa !0
  %tobool19 = icmp ne i32 %8, 0
  %phitmp = select i1 %tobool19, i32 2, i32 4
  br label %lor.end

lor.end:                                          ; preds = %if.end13, %land.rhs
  %9 = phi i32 [ %.mux, %if.end13 ], [ %phitmp, %land.rhs ]
  %LFDisableIdc = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 41
  %10 = load i32* %LFDisableIdc, align 4, !tbaa !0
  switch i32 %10, label %if.end41 [
    i32 1, label %return
    i32 2, label %if.then31
  ]

if.then31:                                        ; preds = %lor.end
  %mbAvailA = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 27
  %11 = load i32* %mbAvailA, align 4, !tbaa !0
  br i1 %tobool7, label %if.else, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.then31
  %mb_field35 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %12 = load i32* %mb_field35, align 4, !tbaa !0
  %tobool36 = icmp eq i32 %12, 0
  br i1 %tobool36, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %rem245 = and i32 %MbQAddr, 1
  %tobool38 = icmp eq i32 %rem245, 0
  br i1 %tobool38, label %if.else, label %if.end41

if.else:                                          ; preds = %land.lhs.true37, %land.lhs.true34, %if.then31
  %mbAvailB = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 28
  %13 = load i32* %mbAvailB, align 4, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true37, %lor.end, %if.else
  %filterTopMbEdgeFlag.1 = phi i32 [ %13, %if.else ], [ %filterTopMbEdgeFlag.0, %lor.end ], [ 1, %land.lhs.true37 ]
  %filterLeftMbEdgeFlag.0 = phi i32 [ %11, %if.else ], [ %conv, %lor.end ], [ %11, %land.lhs.true37 ]
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 3
  store i32 %MbQAddr, i32* %current_mb_nr, align 4, !tbaa !0
  call void (...)* @CheckAvailabilityOfNeighbors() #4
  %tobool46 = icmp eq i32 %filterTopMbEdgeFlag.1, 0
  %tobool50 = icmp ne i32 %filterLeftMbEdgeFlag.0, 0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 159
  %arraydecay = getelementptr inbounds [16 x i8]* %Strength, i64 0, i64 0
  %mb_field106 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %14 = bitcast [16 x i8]* %Strength to i32*
  %cmp126 = icmp ne i16*** %imgUV, null
  %LFAlphaC0Offset134 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 42
  %LFBetaOffset135 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 43
  %width_cr136 = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 14
  %arrayidx137 = getelementptr inbounds i16*** %imgUV, i64 1
  %width124 = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc150, %if.end41
  %indvars.iv259 = phi i64 [ 0, %if.end41 ], [ %indvars.iv.next260, %for.inc150 ]
  %15 = trunc i64 %indvars.iv259 to i32
  %tobool44.not = icmp eq i32 %15, 0
  %or.cond = or i1 %tobool46, %tobool44.not
  %.tobool50 = and i1 %tobool50, %tobool44.not
  %not.or.cond = xor i1 %or.cond, true
  %.tobool50. = or i1 %.tobool50, %not.or.cond
  br label %for.body57

for.body57:                                       ; preds = %for.inc147, %for.body
  %indvars.iv255 = phi i64 [ 0, %for.body ], [ %indvars.iv.next256, %for.inc147 ]
  %16 = trunc i64 %indvars.iv255 to i32
  %tobool58 = icmp ne i32 %16, 0
  %brmerge = or i1 %tobool58, %.tobool50.
  br i1 %brmerge, label %if.then60, label %for.inc147

if.then60:                                        ; preds = %for.body57
  %17 = load i32* %yuv_format, align 4, !tbaa !0
  %idxprom61 = sext i32 %17 to i64
  %arrayidx66 = getelementptr inbounds [2 x [4 x [4 x i8]]]* @chroma_edge, i64 0, i64 %indvars.iv259, i64 %indvars.iv255, i64 %idxprom61
  %18 = load i8* %arrayidx66, align 1, !tbaa !1
  call void @GetStrength(i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %15, i32 %16, i32 %9) #3
  %19 = load i8* %arraydecay, align 16, !tbaa !1
  %conv69 = zext i8 %19 to i32
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %if.then60
  %indvars.iv = phi i64 [ 1, %if.then60 ], [ %indvars.iv.next, %for.body73 ]
  %StrengthSum.0252 = phi i32 [ %conv69, %if.then60 ], [ %add, %for.body73 ]
  %arrayidx75 = getelementptr inbounds [16 x i8]* %Strength, i64 0, i64 %indvars.iv
  %20 = load i8* %arrayidx75, align 1, !tbaa !1
  %conv76 = zext i8 %20 to i32
  %add = add nsw i32 %conv76, %StrengthSum.0252
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.end, label %for.body73

for.end:                                          ; preds = %for.body73
  %conv67 = sext i8 %18 to i32
  %tobool77 = icmp eq i32 %add, 0
  br i1 %tobool77, label %if.end101, label %if.then78

if.then78:                                        ; preds = %for.end
  %arrayidx80 = getelementptr inbounds [4 x i32]* %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv255
  %21 = load i32* %arrayidx80, align 4, !tbaa !0
  %tobool81 = icmp eq i32 %21, 0
  br i1 %tobool81, label %if.end84, label %if.then82

if.then82:                                        ; preds = %if.then78
  %22 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %23 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %24 = load i32* %width124, align 4, !tbaa !0
  call void @EdgeLoop(i16** %imgY, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %22, i32 %23, i32 %15, i32 %16, i32 %24, i32 0, i32 0) #3
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %if.then82
  %cmp88 = icmp sgt i8 %18, -1
  %or.cond246 = and i1 %cmp126, %cmp88
  br i1 %or.cond246, label %if.then90, label %if.end101

if.then90:                                        ; preds = %if.end84
  %25 = load i16*** %imgUV, align 8, !tbaa !3
  %26 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %27 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %28 = load i32* %width_cr136, align 4, !tbaa !0
  call void @EdgeLoop(i16** %25, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %26, i32 %27, i32 %15, i32 %conv67, i32 %28, i32 1, i32 0) #3
  %29 = load i16*** %arrayidx137, align 8, !tbaa !3
  %30 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %31 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %32 = load i32* %width_cr136, align 4, !tbaa !0
  call void @EdgeLoop(i16** %29, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %30, i32 %31, i32 %15, i32 %conv67, i32 %32, i32 1, i32 1) #3
  br label %if.end101

if.end101:                                        ; preds = %if.end84, %for.end, %if.then90
  %brmerge248 = or i1 %tobool58, %tobool44.not
  br i1 %brmerge248, label %for.inc147, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.end101
  %33 = load i32* %mb_field106, align 4, !tbaa !0
  %tobool107 = icmp ne i32 %33, 0
  %34 = load i8* @mixedModeEdgeFlag, align 1, !tbaa !1
  %tobool110 = icmp eq i8 %34, 0
  %or.cond249 = or i1 %tobool107, %tobool110
  br i1 %or.cond249, label %for.inc147, label %if.then111

if.then111:                                       ; preds = %land.lhs.true105
  store i32 2, i32* %DeblockCall, align 4, !tbaa !0
  call void @GetStrength(i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %15, i32 4, i32 %9) #3
  %35 = load i32* %14, align 16, !tbaa !0
  %tobool115 = icmp eq i32 %35, 0
  br i1 %tobool115, label %if.end143, label %if.then116

if.then116:                                       ; preds = %if.then111
  %arrayidx118 = getelementptr inbounds [4 x i32]* %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv255
  %36 = load i32* %arrayidx118, align 4, !tbaa !0
  %tobool119 = icmp eq i32 %36, 0
  br i1 %tobool119, label %if.end125, label %if.then120

if.then120:                                       ; preds = %if.then116
  %37 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %38 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %39 = load i32* %width124, align 4, !tbaa !0
  call void @EdgeLoop(i16** %imgY, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %37, i32 %38, i32 %15, i32 4, i32 %39, i32 0, i32 0) #3
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %if.then120
  %cmp129 = icmp sgt i8 %18, -1
  %or.cond250 = and i1 %cmp126, %cmp129
  br i1 %or.cond250, label %if.then131, label %if.end143

if.then131:                                       ; preds = %if.end125
  %40 = load i16*** %imgUV, align 8, !tbaa !3
  %41 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %42 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %43 = load i32* %width_cr136, align 4, !tbaa !0
  call void @EdgeLoop(i16** %40, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %41, i32 %42, i32 %15, i32 4, i32 %43, i32 1, i32 0) #3
  %44 = load i16*** %arrayidx137, align 8, !tbaa !3
  %45 = load i32* %LFAlphaC0Offset134, align 4, !tbaa !0
  %46 = load i32* %LFBetaOffset135, align 4, !tbaa !0
  %47 = load i32* %width_cr136, align 4, !tbaa !0
  call void @EdgeLoop(i16** %44, i8* %arraydecay, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %45, i32 %46, i32 %15, i32 4, i32 %47, i32 1, i32 1) #3
  br label %if.end143

if.end143:                                        ; preds = %if.end125, %if.then111, %if.then131
  store i32 1, i32* %DeblockCall, align 4, !tbaa !0
  br label %for.inc147

for.inc147:                                       ; preds = %land.lhs.true105, %if.end101, %for.body57, %if.end143
  %indvars.iv.next256 = add i64 %indvars.iv255, 1
  %lftr.wideiv257 = trunc i64 %indvars.iv.next256 to i32
  %exitcond258 = icmp eq i32 %lftr.wideiv257, 4
  br i1 %exitcond258, label %for.inc150, label %for.body57

for.inc150:                                       ; preds = %for.inc147
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, 2
  br i1 %exitcond262, label %return, label %for.body

return:                                           ; preds = %for.inc150, %lor.end
  store i32 0, i32* %DeblockCall, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare void @get_mb_pos(i32, i32*, i32*) #2

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighbors(...) #2

; Function Attrs: nounwind optsize uwtable
define void @GetStrength(i8* nocapture %Strength, %struct.ImageParameters* nocapture %img, i32 %MbQAddr, i32 %dir, i32 %edge, i32 %mvlimit) #0 {
entry:
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %pixP = alloca %struct.pix_pos, align 4
  %0 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %mv = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 35
  %1 = load i16***** %mv, align 8, !tbaa !3
  %2 = load i16**** %1, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i16**** %1, i64 1
  %3 = load i16**** %arrayidx2, align 8, !tbaa !3
  %ref_idx = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 32
  %4 = load i16**** %ref_idx, align 8, !tbaa !3
  %5 = load i16*** %4, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i16*** %4, i64 1
  %6 = load i16*** %arrayidx5, align 8, !tbaa !3
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 33
  %7 = load i64**** %ref_pic_id, align 8, !tbaa !3
  %8 = load i64*** %7, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i64*** %7, i64 1
  %9 = load i64*** %arrayidx8, align 8, !tbaa !3
  %idxprom = sext i32 %MbQAddr to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 51
  %10 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %tobool = icmp ne i32 %dir, 0
  %shl = shl i32 %edge, 2
  %cmp12 = icmp slt i32 %edge, 4
  %shl14. = select i1 %cmp12, i32 %shl, i32 1
  %sub713 = add i32 %dir, -1
  %x = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 2
  %y = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 3
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 1
  %mb_field = getelementptr inbounds %struct.macroblock* %10, i64 %idxprom, i32 22
  %type = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 6
  %cmp40 = icmp eq i32 %edge, 0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 90
  %structure = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 7
  %phitmp747 = select i1 %tobool, i8 3, i8 4
  %mb_type117 = getelementptr inbounds %struct.macroblock* %10, i64 %idxprom, i32 8
  %cbp_blk = getelementptr inbounds %struct.macroblock* %10, i64 %idxprom, i32 13
  %pos_y = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 5
  %pos_x = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %11 = trunc i64 %indvars.iv to i32
  %cond = select i1 %tobool, i32 %11, i32 %shl
  %shl14.. = select i1 %tobool, i32 %shl14., i32 %11
  %sub21 = add i32 %sub713, %cond
  %sub22 = sub nsw i32 %shl14.., %dir
  call void @getNeighbour(i32 %MbQAddr, i32 %sub21, i32 %sub22, i32 1, %struct.pix_pos* %pixP) #4
  %12 = load i32* %x, align 4, !tbaa !0
  %13 = load i32* %y, align 4, !tbaa !0
  %14 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom23 = sext i32 %14 to i64
  %15 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %16 = load i32* %mb_field, align 4, !tbaa !0
  %mb_field26 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom23, i32 22
  %17 = load i32* %mb_field26, align 4, !tbaa !0
  %cmp27 = icmp ne i32 %16, %17
  %conv28 = zext i1 %cmp27 to i8
  store i8 %conv28, i8* @mixedModeEdgeFlag, align 1, !tbaa !1
  %shr714 = and i32 %shl14.., -4
  %shr30 = ashr i32 %cond, 2
  %add = add nsw i32 %shr714, %shr30
  %shr31715 = and i32 %13, -4
  %shr33 = ashr i32 %12, 2
  %add34 = add nsw i32 %shr31715, %shr33
  %18 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %18, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br i1 %cmp40, label %land.rhs, label %land.end62

land.rhs:                                         ; preds = %if.then
  %19 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool42 = icmp eq i32 %19, 0
  br i1 %tobool42, label %land.lhs.true, label %land.lhs.true48

land.lhs.true:                                    ; preds = %land.rhs
  %20 = load i32* %structure, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %20, 0
  br i1 %cmp43, label %land.end62, label %land.rhs60

land.lhs.true48:                                  ; preds = %land.rhs
  %21 = load i32* %mb_field26, align 4, !tbaa !0
  %tobool50 = icmp eq i32 %21, 0
  br i1 %tobool50, label %land.lhs.true51, label %land.rhs60

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %22 = load i32* %mb_field, align 4, !tbaa !0
  %tobool53 = icmp eq i32 %22, 0
  br i1 %tobool53, label %land.end62, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true51
  br i1 %tobool42, label %lor.lhs.false56, label %land.rhs60

lor.lhs.false56:                                  ; preds = %lor.rhs
  %.pre = load i32* %structure, align 4, !tbaa !0
  %cmp58 = icmp eq i32 %.pre, 0
  br i1 %cmp58, label %land.end62, label %land.rhs60

land.rhs60:                                       ; preds = %land.lhs.true48, %land.lhs.true, %lor.lhs.false56, %lor.rhs
  br label %land.end62

land.end62:                                       ; preds = %land.lhs.true51, %lor.lhs.false56, %land.lhs.true, %land.rhs60, %if.then
  %23 = phi i8 [ 3, %if.then ], [ 4, %land.lhs.true51 ], [ 4, %land.lhs.true ], [ 3, %lor.lhs.false56 ], [ %phitmp747, %land.rhs60 ]
  %arrayidx66 = getelementptr inbounds i8* %Strength, i64 %indvars.iv
  store i8 %23, i8* %arrayidx66, align 1, !tbaa !1
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %cmp40, label %land.rhs69, label %land.end97

land.rhs69:                                       ; preds = %if.else
  %24 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool71 = icmp eq i32 %24, 0
  br i1 %tobool71, label %land.lhs.true72, label %land.lhs.true79

land.lhs.true72:                                  ; preds = %land.rhs69
  %25 = load i32* %structure, align 4, !tbaa !0
  %cmp74 = icmp eq i32 %25, 0
  br i1 %cmp74, label %land.end97, label %land.rhs92

land.lhs.true79:                                  ; preds = %land.rhs69
  %26 = load i32* %mb_field26, align 4, !tbaa !0
  %tobool81 = icmp eq i32 %26, 0
  br i1 %tobool81, label %land.lhs.true82, label %land.rhs92

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %27 = load i32* %mb_field, align 4, !tbaa !0
  %tobool84 = icmp eq i32 %27, 0
  br i1 %tobool84, label %land.end97, label %lor.rhs85

lor.rhs85:                                        ; preds = %land.lhs.true82
  br i1 %tobool71, label %lor.lhs.false88, label %land.rhs92

lor.lhs.false88:                                  ; preds = %lor.rhs85
  %.pre758 = load i32* %structure, align 4, !tbaa !0
  %cmp90 = icmp eq i32 %.pre758, 0
  br i1 %cmp90, label %land.end97, label %land.rhs92

land.rhs92:                                       ; preds = %land.lhs.true79, %land.lhs.true72, %lor.lhs.false88, %lor.rhs85
  br label %land.end97

land.end97:                                       ; preds = %land.lhs.true82, %lor.lhs.false88, %land.lhs.true72, %land.rhs92, %if.else
  %28 = phi i8 [ 3, %if.else ], [ 4, %land.lhs.true82 ], [ 4, %land.lhs.true72 ], [ 3, %lor.lhs.false88 ], [ %phitmp747, %land.rhs92 ]
  %arrayidx101 = getelementptr inbounds i8* %Strength, i64 %indvars.iv
  store i8 %28, i8* %arrayidx101, align 1, !tbaa !1
  %mb_type = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom23, i32 8
  %29 = load i32* %mb_type, align 4, !tbaa !0
  switch i32 %29, label %land.lhs.true116 [
    i32 9, label %for.inc
    i32 10, label %for.inc
    i32 14, label %for.inc
    i32 13, label %for.inc
  ]

land.lhs.true116:                                 ; preds = %land.end97
  %30 = load i32* %mb_type117, align 4, !tbaa !0
  switch i32 %30, label %if.then132 [
    i32 9, label %for.inc
    i32 10, label %for.inc
    i32 14, label %for.inc
    i32 13, label %for.inc
  ]

if.then132:                                       ; preds = %land.lhs.true116
  %31 = load i64* %cbp_blk, align 8, !tbaa !4
  %shl133 = shl i32 1, %add
  %conv134 = sext i32 %shl133 to i64
  %and = and i64 %31, %conv134
  %cmp135 = icmp eq i64 %and, 0
  br i1 %cmp135, label %lor.lhs.false137, label %if.then144

lor.lhs.false137:                                 ; preds = %if.then132
  %cbp_blk138 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom23, i32 13
  %32 = load i64* %cbp_blk138, align 8, !tbaa !4
  %shl139 = shl i32 1, %add34
  %conv140 = sext i32 %shl139 to i64
  %and141 = and i64 %32, %conv140
  %cmp142 = icmp eq i64 %and141, 0
  br i1 %cmp142, label %if.else147, label %if.then144

if.then144:                                       ; preds = %lor.lhs.false137, %if.then132
  store i8 2, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

if.else147:                                       ; preds = %lor.lhs.false137
  %33 = load i8* @mixedModeEdgeFlag, align 1, !tbaa !1
  %tobool148 = icmp eq i8 %33, 0
  br i1 %tobool148, label %if.else152, label %if.then149

if.then149:                                       ; preds = %if.else147
  store i8 1, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

if.else152:                                       ; preds = %if.else147
  call void @get_mb_block_pos(i32 %MbQAddr, i32* %mb_x, i32* %mb_y) #4
  %34 = load i32* %mb_y, align 4, !tbaa !0
  %shl153 = shl i32 %34, 2
  %shr154 = ashr i32 %add, 2
  %add155 = add nsw i32 %shl153, %shr154
  %35 = load i32* %mb_x, align 4, !tbaa !0
  %shl156 = shl i32 %35, 2
  %and157 = and i32 %add, 3
  %add158 = or i32 %shl156, %and157
  %36 = load i32* %pos_y, align 4, !tbaa !0
  %shr159 = ashr i32 %36, 2
  %37 = load i32* %pos_x, align 4, !tbaa !0
  %shr160 = ashr i32 %37, 2
  %idxprom161 = sext i32 %add155 to i64
  %idxprom162 = sext i32 %add158 to i64
  %arrayidx163 = getelementptr inbounds i16** %5, i64 %idxprom162
  %38 = load i16** %arrayidx163, align 8, !tbaa !3
  %arrayidx164 = getelementptr inbounds i16* %38, i64 %idxprom161
  %39 = load i16* %arrayidx164, align 2, !tbaa !5
  %cmp166 = icmp slt i16 %39, 0
  br i1 %cmp166, label %cond.end174, label %cond.false169

cond.false169:                                    ; preds = %if.else152
  %arrayidx172 = getelementptr inbounds i64** %8, i64 %idxprom162
  %40 = load i64** %arrayidx172, align 8, !tbaa !3
  %arrayidx173 = getelementptr inbounds i64* %40, i64 %idxprom161
  %41 = load i64* %arrayidx173, align 8, !tbaa !4
  br label %cond.end174

cond.end174:                                      ; preds = %if.else152, %cond.false169
  %cond175 = phi i64 [ %41, %cond.false169 ], [ -1, %if.else152 ]
  %idxprom176 = sext i32 %shr159 to i64
  %idxprom177 = sext i32 %shr160 to i64
  %arrayidx178 = getelementptr inbounds i16** %5, i64 %idxprom177
  %42 = load i16** %arrayidx178, align 8, !tbaa !3
  %arrayidx179 = getelementptr inbounds i16* %42, i64 %idxprom176
  %43 = load i16* %arrayidx179, align 2, !tbaa !5
  %cmp181 = icmp slt i16 %43, 0
  br i1 %cmp181, label %cond.end189, label %cond.false184

cond.false184:                                    ; preds = %cond.end174
  %arrayidx187 = getelementptr inbounds i64** %8, i64 %idxprom177
  %44 = load i64** %arrayidx187, align 8, !tbaa !3
  %arrayidx188 = getelementptr inbounds i64* %44, i64 %idxprom176
  %45 = load i64* %arrayidx188, align 8, !tbaa !4
  br label %cond.end189

cond.end189:                                      ; preds = %cond.end174, %cond.false184
  %cond190 = phi i64 [ %45, %cond.false184 ], [ -1, %cond.end174 ]
  %arrayidx193 = getelementptr inbounds i16** %6, i64 %idxprom162
  %46 = load i16** %arrayidx193, align 8, !tbaa !3
  %arrayidx194 = getelementptr inbounds i16* %46, i64 %idxprom161
  %47 = load i16* %arrayidx194, align 2, !tbaa !5
  %cmp196 = icmp slt i16 %47, 0
  br i1 %cmp196, label %cond.end204, label %cond.false199

cond.false199:                                    ; preds = %cond.end189
  %arrayidx202 = getelementptr inbounds i64** %9, i64 %idxprom162
  %48 = load i64** %arrayidx202, align 8, !tbaa !3
  %arrayidx203 = getelementptr inbounds i64* %48, i64 %idxprom161
  %49 = load i64* %arrayidx203, align 8, !tbaa !4
  br label %cond.end204

cond.end204:                                      ; preds = %cond.end189, %cond.false199
  %cond205 = phi i64 [ %49, %cond.false199 ], [ -1, %cond.end189 ]
  %arrayidx208 = getelementptr inbounds i16** %6, i64 %idxprom177
  %50 = load i16** %arrayidx208, align 8, !tbaa !3
  %arrayidx209 = getelementptr inbounds i16* %50, i64 %idxprom176
  %51 = load i16* %arrayidx209, align 2, !tbaa !5
  %cmp211 = icmp slt i16 %51, 0
  br i1 %cmp211, label %cond.end219, label %cond.false214

cond.false214:                                    ; preds = %cond.end204
  %arrayidx217 = getelementptr inbounds i64** %9, i64 %idxprom177
  %52 = load i64** %arrayidx217, align 8, !tbaa !3
  %arrayidx218 = getelementptr inbounds i64* %52, i64 %idxprom176
  %53 = load i64* %arrayidx218, align 8, !tbaa !4
  br label %cond.end219

cond.end219:                                      ; preds = %cond.end204, %cond.false214
  %cond220 = phi i64 [ %53, %cond.false214 ], [ -1, %cond.end204 ]
  %cmp221 = icmp eq i64 %cond175, %cond190
  %cmp224 = icmp eq i64 %cond205, %cond220
  %or.cond = and i1 %cmp221, %cmp224
  br i1 %or.cond, label %if.then232, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %cond.end219
  %cmp227 = icmp eq i64 %cond175, %cond220
  %cmp230 = icmp eq i64 %cond205, %cond190
  %or.cond748 = and i1 %cmp227, %cmp230
  br i1 %or.cond748, label %if.then232, label %if.else523

if.then232:                                       ; preds = %lor.lhs.false226, %cond.end219
  store i8 0, i8* %arrayidx101, align 1, !tbaa !1
  %cmp235 = icmp eq i64 %cond175, %cond205
  %arrayidx383 = getelementptr inbounds i16*** %2, i64 %idxprom162
  %54 = load i16*** %arrayidx383, align 8, !tbaa !3
  %arrayidx384 = getelementptr inbounds i16** %54, i64 %idxprom161
  %55 = load i16** %arrayidx384, align 8, !tbaa !3
  %56 = load i16* %55, align 2, !tbaa !5
  %conv386 = sext i16 %56 to i32
  br i1 %cmp235, label %if.else380, label %if.then237

if.then237:                                       ; preds = %if.then232
  br i1 %cmp221, label %if.then240, label %if.else309

if.then240:                                       ; preds = %if.then237
  %arrayidx249 = getelementptr inbounds i16*** %2, i64 %idxprom177
  %57 = load i16*** %arrayidx249, align 8, !tbaa !3
  %arrayidx250 = getelementptr inbounds i16** %57, i64 %idxprom176
  %58 = load i16** %arrayidx250, align 8, !tbaa !3
  %59 = load i16* %58, align 2, !tbaa !5
  %conv252 = sext i16 %59 to i32
  %sub253 = sub nsw i32 %conv386, %conv252
  %ispos739 = icmp sgt i32 %sub253, -1
  %neg740 = sub i32 0, %sub253
  %60 = select i1 %ispos739, i32 %sub253, i32 %neg740
  %cmp254 = icmp sgt i32 %60, 3
  %conv255 = zext i1 %cmp254 to i8
  %arrayidx260 = getelementptr inbounds i16* %55, i64 1
  %61 = load i16* %arrayidx260, align 2, !tbaa !5
  %conv261 = sext i16 %61 to i32
  %arrayidx266 = getelementptr inbounds i16* %58, i64 1
  %62 = load i16* %arrayidx266, align 2, !tbaa !5
  %conv267 = sext i16 %62 to i32
  %sub268 = sub nsw i32 %conv261, %conv267
  %ispos741 = icmp sgt i32 %sub268, -1
  %neg742 = sub i32 0, %sub268
  %63 = select i1 %ispos741, i32 %sub268, i32 %neg742
  %cmp270 = icmp sge i32 %63, %mvlimit
  %conv271 = zext i1 %cmp270 to i8
  %or = or i8 %conv271, %conv255
  %arrayidx274 = getelementptr inbounds i16*** %3, i64 %idxprom162
  %64 = load i16*** %arrayidx274, align 8, !tbaa !3
  %arrayidx275 = getelementptr inbounds i16** %64, i64 %idxprom161
  %65 = load i16** %arrayidx275, align 8, !tbaa !3
  %66 = load i16* %65, align 2, !tbaa !5
  %conv277 = sext i16 %66 to i32
  %arrayidx280 = getelementptr inbounds i16*** %3, i64 %idxprom177
  %67 = load i16*** %arrayidx280, align 8, !tbaa !3
  %arrayidx281 = getelementptr inbounds i16** %67, i64 %idxprom176
  %68 = load i16** %arrayidx281, align 8, !tbaa !3
  %69 = load i16* %68, align 2, !tbaa !5
  %conv283 = sext i16 %69 to i32
  %sub284 = sub nsw i32 %conv277, %conv283
  %ispos743 = icmp sgt i32 %sub284, -1
  %neg744 = sub i32 0, %sub284
  %70 = select i1 %ispos743, i32 %sub284, i32 %neg744
  %cmp286 = icmp sgt i32 %70, 3
  %conv287 = zext i1 %cmp286 to i8
  %or288 = or i8 %or, %conv287
  %arrayidx293 = getelementptr inbounds i16* %65, i64 1
  %71 = load i16* %arrayidx293, align 2, !tbaa !5
  %conv294 = sext i16 %71 to i32
  %arrayidx299 = getelementptr inbounds i16* %68, i64 1
  %72 = load i16* %arrayidx299, align 2, !tbaa !5
  %conv300 = sext i16 %72 to i32
  %sub301 = sub nsw i32 %conv294, %conv300
  %ispos745 = icmp sgt i32 %sub301, -1
  %neg746 = sub i32 0, %sub301
  %73 = select i1 %ispos745, i32 %sub301, i32 %neg746
  %cmp303 = icmp sge i32 %73, %mvlimit
  %conv304 = zext i1 %cmp303 to i8
  %or305 = or i8 %or288, %conv304
  store i8 %or305, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

if.else309:                                       ; preds = %if.then237
  %arrayidx318 = getelementptr inbounds i16*** %3, i64 %idxprom177
  %74 = load i16*** %arrayidx318, align 8, !tbaa !3
  %arrayidx319 = getelementptr inbounds i16** %74, i64 %idxprom176
  %75 = load i16** %arrayidx319, align 8, !tbaa !3
  %76 = load i16* %75, align 2, !tbaa !5
  %conv321 = sext i16 %76 to i32
  %sub322 = sub nsw i32 %conv386, %conv321
  %ispos731 = icmp sgt i32 %sub322, -1
  %neg732 = sub i32 0, %sub322
  %77 = select i1 %ispos731, i32 %sub322, i32 %neg732
  %cmp324 = icmp sgt i32 %77, 3
  %conv325 = zext i1 %cmp324 to i8
  %arrayidx330 = getelementptr inbounds i16* %55, i64 1
  %78 = load i16* %arrayidx330, align 2, !tbaa !5
  %conv331 = sext i16 %78 to i32
  %arrayidx336 = getelementptr inbounds i16* %75, i64 1
  %79 = load i16* %arrayidx336, align 2, !tbaa !5
  %conv337 = sext i16 %79 to i32
  %sub338 = sub nsw i32 %conv331, %conv337
  %ispos733 = icmp sgt i32 %sub338, -1
  %neg734 = sub i32 0, %sub338
  %80 = select i1 %ispos733, i32 %sub338, i32 %neg734
  %cmp340 = icmp sge i32 %80, %mvlimit
  %conv341 = zext i1 %cmp340 to i8
  %or342 = or i8 %conv341, %conv325
  %arrayidx345 = getelementptr inbounds i16*** %3, i64 %idxprom162
  %81 = load i16*** %arrayidx345, align 8, !tbaa !3
  %arrayidx346 = getelementptr inbounds i16** %81, i64 %idxprom161
  %82 = load i16** %arrayidx346, align 8, !tbaa !3
  %83 = load i16* %82, align 2, !tbaa !5
  %conv348 = sext i16 %83 to i32
  %arrayidx351 = getelementptr inbounds i16*** %2, i64 %idxprom177
  %84 = load i16*** %arrayidx351, align 8, !tbaa !3
  %arrayidx352 = getelementptr inbounds i16** %84, i64 %idxprom176
  %85 = load i16** %arrayidx352, align 8, !tbaa !3
  %86 = load i16* %85, align 2, !tbaa !5
  %conv354 = sext i16 %86 to i32
  %sub355 = sub nsw i32 %conv348, %conv354
  %ispos735 = icmp sgt i32 %sub355, -1
  %neg736 = sub i32 0, %sub355
  %87 = select i1 %ispos735, i32 %sub355, i32 %neg736
  %cmp357 = icmp sgt i32 %87, 3
  %conv358 = zext i1 %cmp357 to i8
  %or359 = or i8 %or342, %conv358
  %arrayidx364 = getelementptr inbounds i16* %82, i64 1
  %88 = load i16* %arrayidx364, align 2, !tbaa !5
  %conv365 = sext i16 %88 to i32
  %arrayidx370 = getelementptr inbounds i16* %85, i64 1
  %89 = load i16* %arrayidx370, align 2, !tbaa !5
  %conv371 = sext i16 %89 to i32
  %sub372 = sub nsw i32 %conv365, %conv371
  %ispos737 = icmp sgt i32 %sub372, -1
  %neg738 = sub i32 0, %sub372
  %90 = select i1 %ispos737, i32 %sub372, i32 %neg738
  %cmp374 = icmp sge i32 %90, %mvlimit
  %conv375 = zext i1 %cmp374 to i8
  %or376 = or i8 %or359, %conv375
  store i8 %or376, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

if.else380:                                       ; preds = %if.then232
  %arrayidx389 = getelementptr inbounds i16*** %2, i64 %idxprom177
  %91 = load i16*** %arrayidx389, align 8, !tbaa !3
  %arrayidx390 = getelementptr inbounds i16** %91, i64 %idxprom176
  %92 = load i16** %arrayidx390, align 8, !tbaa !3
  %93 = load i16* %92, align 2, !tbaa !5
  %conv392 = sext i16 %93 to i32
  %sub393 = sub nsw i32 %conv386, %conv392
  %ispos = icmp sgt i32 %sub393, -1
  %neg = sub i32 0, %sub393
  %94 = select i1 %ispos, i32 %sub393, i32 %neg
  %cmp395 = icmp sgt i32 %94, 3
  %conv396 = zext i1 %cmp395 to i32
  %arrayidx401 = getelementptr inbounds i16* %55, i64 1
  %95 = load i16* %arrayidx401, align 2, !tbaa !5
  %conv402 = sext i16 %95 to i32
  %arrayidx407 = getelementptr inbounds i16* %92, i64 1
  %96 = load i16* %arrayidx407, align 2, !tbaa !5
  %conv408 = sext i16 %96 to i32
  %sub409 = sub nsw i32 %conv402, %conv408
  %ispos717 = icmp sgt i32 %sub409, -1
  %neg718 = sub i32 0, %sub409
  %97 = select i1 %ispos717, i32 %sub409, i32 %neg718
  %cmp411 = icmp sge i32 %97, %mvlimit
  %conv412 = zext i1 %cmp411 to i32
  %or413 = or i32 %conv412, %conv396
  %arrayidx416 = getelementptr inbounds i16*** %3, i64 %idxprom162
  %98 = load i16*** %arrayidx416, align 8, !tbaa !3
  %arrayidx417 = getelementptr inbounds i16** %98, i64 %idxprom161
  %99 = load i16** %arrayidx417, align 8, !tbaa !3
  %100 = load i16* %99, align 2, !tbaa !5
  %conv419 = sext i16 %100 to i32
  %arrayidx422 = getelementptr inbounds i16*** %3, i64 %idxprom177
  %101 = load i16*** %arrayidx422, align 8, !tbaa !3
  %arrayidx423 = getelementptr inbounds i16** %101, i64 %idxprom176
  %102 = load i16** %arrayidx423, align 8, !tbaa !3
  %103 = load i16* %102, align 2, !tbaa !5
  %conv425 = sext i16 %103 to i32
  %sub426 = sub nsw i32 %conv419, %conv425
  %ispos719 = icmp sgt i32 %sub426, -1
  %neg720 = sub i32 0, %sub426
  %104 = select i1 %ispos719, i32 %sub426, i32 %neg720
  %cmp428 = icmp sgt i32 %104, 3
  %conv429 = zext i1 %cmp428 to i32
  %or430 = or i32 %or413, %conv429
  %arrayidx435 = getelementptr inbounds i16* %99, i64 1
  %105 = load i16* %arrayidx435, align 2, !tbaa !5
  %conv436 = sext i16 %105 to i32
  %arrayidx441 = getelementptr inbounds i16* %102, i64 1
  %106 = load i16* %arrayidx441, align 2, !tbaa !5
  %conv442 = sext i16 %106 to i32
  %sub443 = sub nsw i32 %conv436, %conv442
  %ispos721 = icmp sgt i32 %sub443, -1
  %neg722 = sub i32 0, %sub443
  %107 = select i1 %ispos721, i32 %sub443, i32 %neg722
  %cmp445 = icmp sge i32 %107, %mvlimit
  %conv446 = zext i1 %cmp445 to i32
  %or447 = or i32 %or430, %conv446
  %tobool448 = icmp eq i32 %or447, 0
  br i1 %tobool448, label %land.end518, label %land.rhs449

land.rhs449:                                      ; preds = %if.else380
  %sub462 = sub nsw i32 %conv386, %conv425
  %ispos723 = icmp sgt i32 %sub462, -1
  %neg724 = sub i32 0, %sub462
  %108 = select i1 %ispos723, i32 %sub462, i32 %neg724
  %cmp464 = icmp sgt i32 %108, 3
  %conv465 = zext i1 %cmp464 to i32
  %sub478 = sub nsw i32 %conv402, %conv442
  %ispos725 = icmp sgt i32 %sub478, -1
  %neg726 = sub i32 0, %sub478
  %109 = select i1 %ispos725, i32 %sub478, i32 %neg726
  %cmp480 = icmp sge i32 %109, %mvlimit
  %conv481 = zext i1 %cmp480 to i32
  %sub495 = sub nsw i32 %conv419, %conv392
  %ispos727 = icmp sgt i32 %sub495, -1
  %neg728 = sub i32 0, %sub495
  %110 = select i1 %ispos727, i32 %sub495, i32 %neg728
  %cmp497 = icmp sgt i32 %110, 3
  %conv498 = zext i1 %cmp497 to i32
  %sub512 = sub nsw i32 %conv436, %conv408
  %ispos729 = icmp sgt i32 %sub512, -1
  %neg730 = sub i32 0, %sub512
  %111 = select i1 %ispos729, i32 %sub512, i32 %neg730
  %cmp514 = icmp sge i32 %111, %mvlimit
  %conv515 = zext i1 %cmp514 to i32
  %or482 = or i32 %conv465, %conv498
  %or499 = or i32 %or482, %conv515
  %or516 = or i32 %or499, %conv481
  %tobool517 = icmp ne i32 %or516, 0
  br label %land.end518

land.end518:                                      ; preds = %if.else380, %land.rhs449
  %112 = phi i1 [ false, %if.else380 ], [ %tobool517, %land.rhs449 ]
  %conv519 = zext i1 %112 to i8
  store i8 %conv519, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

if.else523:                                       ; preds = %lor.lhs.false226
  store i8 1, i8* %arrayidx101, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true116, %land.lhs.true116, %land.lhs.true116, %land.lhs.true116, %land.end97, %land.end97, %land.end97, %land.end97, %land.end62, %if.then144, %if.else523, %if.then240, %if.else309, %land.end518, %if.then149
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @EdgeLoop(i16** nocapture %Img, i8* nocapture %Strength, %struct.ImageParameters* nocapture %img, i32 %MbQAddr, i32 %AlphaC0Offset, i32 %BetaOffset, i32 %dir, i32 %edge, i32 %width, i32 %yuv, i32 %uv) #0 {
entry:
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %tobool = icmp ne i32 %yuv, 0
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 150
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 149
  %sub1.pn.in.in = select i1 %tobool, i32* %bitdepth_chroma, i32* %bitdepth_luma
  %sub1.pn.in = load i32* %sub1.pn.in.in, align 4
  %sub1.pn = add nsw i32 %sub1.pn.in, -8
  br i1 %tobool, label %cond.end, label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 159
  %0 = load i32* %yuv_format, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %idxprom4 = sext i32 %dir to i64
  %arrayidx5 = getelementptr inbounds [2 x [4 x i32]]* @EdgeLoop.pelnum_cr, i64 0, i64 %idxprom4, i64 %idxprom
  %1 = load i32* %arrayidx5, align 4, !tbaa !0
  %cmp858 = icmp sgt i32 %1, 0
  br i1 %cmp858, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry, %cond.end
  %cond864 = phi i32 [ %1, %cond.end ], [ 16, %entry ]
  %tobool6 = icmp ne i32 %dir, 0
  %shl9 = shl i32 %edge, 2
  %cmp14 = icmp slt i32 %edge, 4
  %shl16. = select i1 %cmp14, i32 %shl9, i32 1
  %sub23 = sub nsw i32 1, %yuv
  %sub24830 = add i32 %dir, -1
  %idxprom28 = sext i32 %MbQAddr to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 51
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 1
  %cmp37 = icmp eq i32 %cond864, 8
  %or.cond = and i1 %tobool, %cmp37
  %available = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 0
  %pos_x = getelementptr inbounds %struct.pix_pos* %pixQ, i64 0, i32 4
  %pos_y = getelementptr inbounds %struct.pix_pos* %pixQ, i64 0, i32 5
  %pos_x91 = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 4
  %pos_y93 = getelementptr inbounds %struct.pix_pos* %pixP, i64 0, i32 5
  %idxprom99 = sext i32 %uv to i64
  %arrayidx100 = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 163, i64 %idxprom99
  %max_imgpel_value_uv498 = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 156
  %max_imgpel_value460 = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 155
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %pel.0861 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %ap.0860 = phi i32 [ 0, %for.body.lr.ph ], [ %ap.2, %for.inc ]
  %aq.0859 = phi i32 [ 0, %for.body.lr.ph ], [ %aq.2, %for.inc ]
  %cond11 = select i1 %tobool6, i32 %pel.0861, i32 %shl9
  %shl16..pel.0861 = select i1 %tobool6, i32 %shl16., i32 %pel.0861
  call void @getNeighbour(i32 %MbQAddr, i32 %cond11, i32 %shl16..pel.0861, i32 %sub23, %struct.pix_pos* %pixQ) #4
  %sub25 = add i32 %sub24830, %cond11
  %sub26 = sub nsw i32 %shl16..pel.0861, %dir
  call void @getNeighbour(i32 %MbQAddr, i32 %sub25, i32 %sub26, i32 %sub23, %struct.pix_pos* %pixP) #4
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %3 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom30 = sext i32 %3 to i64
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom28, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !0
  %tobool33 = icmp eq i32 %4, 0
  br i1 %tobool33, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %mb_field34 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom30, i32 22
  %5 = load i32* %mb_field34, align 4, !tbaa !0
  %tobool35 = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %for.body, %lor.rhs
  %6 = phi i1 [ true, %for.body ], [ %tobool35, %lor.rhs ]
  %conv = zext i1 %6 to i8
  store i8 %conv, i8* @fieldModeFilteringFlag, align 1, !tbaa !1
  br i1 %or.cond, label %cond.true39, label %cond.end52

cond.true39:                                      ; preds = %lor.end
  %7 = load i32* %mb_field, align 4, !tbaa !0
  %tobool41 = icmp eq i32 %7, 0
  br i1 %tobool41, label %cond.false47, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %cond.true39
  %mb_field43 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom30, i32 22
  %8 = load i32* %mb_field43, align 4, !tbaa !0
  %tobool44 = icmp eq i32 %8, 0
  br i1 %tobool44, label %cond.true45, label %cond.false47

cond.true45:                                      ; preds = %land.lhs.true42
  %shl46 = shl i32 %pel.0861, 1
  br label %cond.end52

cond.false47:                                     ; preds = %land.lhs.true42, %cond.true39
  %shr846 = lshr i32 %pel.0861, 1
  %shl48 = shl i32 %shr846, 2
  %rem = srem i32 %pel.0861, 2
  %add = add nsw i32 %rem, %shl48
  br label %cond.end52

cond.end52:                                       ; preds = %lor.end, %cond.true45, %cond.false47
  %cond53 = phi i32 [ %shl46, %cond.true45 ], [ %add, %cond.false47 ], [ %pel.0861, %lor.end ]
  %9 = load i32* %available, align 4, !tbaa !0
  %tobool54 = icmp eq i32 %9, 0
  br i1 %tobool54, label %lor.lhs.false, label %if.then57

lor.lhs.false:                                    ; preds = %cond.end52
  %LFDisableIdc = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom28, i32 41
  %10 = load i32* %LFDisableIdc, align 4, !tbaa !0
  %cmp55 = icmp eq i32 %10, 0
  br i1 %cmp55, label %if.then57, label %for.inc

if.then57:                                        ; preds = %cond.end52, %lor.lhs.false
  %brmerge.demorgan = and i1 %tobool6, %6
  %.mux = select i1 %tobool6, i32 %width, i32 1
  %.mux865 = select i1 %tobool6, i32 %width, i32 1
  br i1 %brmerge.demorgan, label %land.lhs.true76, label %cond.end85

land.lhs.true76:                                  ; preds = %if.then57
  %11 = load i32* %mb_field, align 4, !tbaa !0
  %tobool64852 = icmp eq i32 %11, 0
  %mul853 = zext i1 %tobool64852 to i32
  %mul.width854 = shl nsw i32 %width, %mul853
  %mb_field77 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom30, i32 22
  %12 = load i32* %mb_field77, align 4, !tbaa !0
  %tobool78 = icmp eq i32 %12, 0
  %mul80 = zext i1 %tobool78 to i32
  %mul80.width = shl nsw i32 %width, %mul80
  br label %cond.end85

cond.end85:                                       ; preds = %if.then57, %land.lhs.true76
  %cond71848 = phi i32 [ %mul.width854, %land.lhs.true76 ], [ %.mux, %if.then57 ]
  %cond86 = phi i32 [ %mul80.width, %land.lhs.true76 ], [ %.mux865, %if.then57 ]
  %13 = load i32* %pos_x, align 4, !tbaa !0
  %idxprom87 = sext i32 %13 to i64
  %14 = load i32* %pos_y, align 4, !tbaa !0
  %idxprom88 = sext i32 %14 to i64
  %arrayidx89 = getelementptr inbounds i16** %Img, i64 %idxprom88
  %15 = load i16** %arrayidx89, align 8, !tbaa !3
  %arrayidx90 = getelementptr inbounds i16* %15, i64 %idxprom87
  %16 = load i32* %pos_x91, align 4, !tbaa !0
  %idxprom92 = sext i32 %16 to i64
  %17 = load i32* %pos_y93, align 4, !tbaa !0
  %idxprom94 = sext i32 %17 to i64
  %arrayidx95 = getelementptr inbounds i16** %Img, i64 %idxprom94
  %18 = load i16** %arrayidx95, align 8, !tbaa !3
  %arrayidx96 = getelementptr inbounds i16* %18, i64 %idxprom92
  %qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom30, i32 3
  %19 = load i32* %qp, align 4, !tbaa !0
  br i1 %tobool, label %cond.true98, label %cond.false160

cond.true98:                                      ; preds = %cond.end85
  %20 = load i32* %arrayidx100, align 4, !tbaa !0
  %add101 = add nsw i32 %20, %19
  %cmp102 = icmp slt i32 %add101, 0
  br i1 %cmp102, label %cond.end122, label %cond.false105

cond.false105:                                    ; preds = %cond.true98
  %cmp111 = icmp sgt i32 %add101, 51
  %phitmp844 = sext i32 %add101 to i64
  %.phitmp844 = select i1 %cmp111, i64 51, i64 %phitmp844
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false105, %cond.true98
  %cond123 = phi i64 [ 0, %cond.true98 ], [ %.phitmp844, %cond.false105 ]
  %arrayidx125 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %cond123
  %21 = load i8* %arrayidx125, align 1, !tbaa !1
  %conv126 = zext i8 %21 to i32
  %qp127 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom28, i32 3
  %22 = load i32* %qp127, align 4, !tbaa !0
  %add131 = add nsw i32 %20, %22
  %cmp132 = icmp slt i32 %add131, 0
  br i1 %cmp132, label %cond.end152, label %cond.false135

cond.false135:                                    ; preds = %cond.end122
  %cmp141 = icmp sgt i32 %add131, 51
  %phitmp845 = sext i32 %add131 to i64
  %.phitmp845 = select i1 %cmp141, i64 51, i64 %phitmp845
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false135, %cond.end122
  %cond153 = phi i64 [ 0, %cond.end122 ], [ %.phitmp845, %cond.false135 ]
  %arrayidx155 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %cond153
  %23 = load i8* %arrayidx155, align 1, !tbaa !1
  %conv156 = zext i8 %23 to i32
  %add157 = add nsw i32 %conv156, %conv126
  br label %cond.end166

cond.false160:                                    ; preds = %cond.end85
  %qp162 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom28, i32 3
  %24 = load i32* %qp162, align 4, !tbaa !0
  %add163 = add nsw i32 %24, %19
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false160, %cond.end152
  %add157.sink = phi i32 [ %add157, %cond.end152 ], [ %add163, %cond.false160 ]
  %add158 = add nsw i32 %add157.sink, 1
  %shr159 = ashr i32 %add158, 1
  %add168 = add nsw i32 %shr159, %AlphaC0Offset
  %cmp169 = icmp slt i32 %add168, 0
  br i1 %cmp169, label %cond.end181, label %cond.false172

cond.false172:                                    ; preds = %cond.end166
  %cmp174 = icmp sgt i32 %add168, 51
  %phitmp = sext i32 %add168 to i64
  %.phitmp = select i1 %cmp174, i64 51, i64 %phitmp
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false172, %cond.end166
  %cond182 = phi i64 [ 0, %cond.end166 ], [ %.phitmp, %cond.false172 ]
  %add183 = add nsw i32 %shr159, %BetaOffset
  %cmp184 = icmp slt i32 %add183, 0
  br i1 %cmp184, label %cond.end196, label %cond.false187

cond.false187:                                    ; preds = %cond.end181
  %cmp189 = icmp sgt i32 %add183, 51
  %phitmp831 = sext i32 %add183 to i64
  %.phitmp831 = select i1 %cmp189, i64 51, i64 %phitmp831
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false187, %cond.end181
  %cond197 = phi i64 [ 0, %cond.end181 ], [ %.phitmp831, %cond.false187 ]
  %arrayidx199 = getelementptr inbounds [52 x i8]* @ALPHA_TABLE, i64 0, i64 %cond182
  %25 = load i8* %arrayidx199, align 1, !tbaa !1
  %conv200 = zext i8 %25 to i32
  %mul201 = shl i32 %conv200, %sub1.pn
  %arrayidx203 = getelementptr inbounds [52 x i8]* @BETA_TABLE, i64 0, i64 %cond197
  %26 = load i8* %arrayidx203, align 1, !tbaa !1
  %conv204 = zext i8 %26 to i32
  %mul205 = shl i32 %conv204, %sub1.pn
  %27 = load i16* %arrayidx96, align 2, !tbaa !5
  %conv209 = zext i16 %27 to i32
  %28 = load i16* %arrayidx90, align 2, !tbaa !5
  %conv211 = zext i16 %28 to i32
  %sub212 = sub nsw i32 0, %cond86
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx96.sum = add i64 %idxprom92, %idxprom213
  %arrayidx214 = getelementptr inbounds i16* %18, i64 %arrayidx96.sum
  %29 = load i16* %arrayidx214, align 2, !tbaa !5
  %conv215 = zext i16 %29 to i32
  %idxprom216 = sext i32 %cond71848 to i64
  %arrayidx90.sum = add i64 %idxprom87, %idxprom216
  %arrayidx217 = getelementptr inbounds i16* %15, i64 %arrayidx90.sum
  %30 = load i16* %arrayidx217, align 2, !tbaa !5
  %conv218 = zext i16 %30 to i32
  %mul220 = shl nsw i32 %sub212, 1
  %idxprom221 = sext i32 %mul220 to i64
  %arrayidx96.sum832 = add i64 %idxprom92, %idxprom221
  %arrayidx222 = getelementptr inbounds i16* %18, i64 %arrayidx96.sum832
  %31 = load i16* %arrayidx222, align 2, !tbaa !5
  %conv223 = zext i16 %31 to i32
  %mul224 = shl nsw i32 %cond71848, 1
  %idxprom225 = sext i32 %mul224 to i64
  %arrayidx90.sum833 = add i64 %idxprom87, %idxprom225
  %arrayidx226 = getelementptr inbounds i16* %15, i64 %arrayidx90.sum833
  %32 = load i16* %arrayidx226, align 2, !tbaa !5
  %conv227 = zext i16 %32 to i32
  %mul229 = mul i32 %cond86, -3
  %idxprom230 = sext i32 %mul229 to i64
  %arrayidx96.sum834 = add i64 %idxprom92, %idxprom230
  %arrayidx231 = getelementptr inbounds i16* %18, i64 %arrayidx96.sum834
  %33 = load i16* %arrayidx231, align 2, !tbaa !5
  %conv232 = zext i16 %33 to i32
  %mul233 = mul nsw i32 %cond71848, 3
  %idxprom234 = sext i32 %mul233 to i64
  %arrayidx90.sum835 = add i64 %idxprom87, %idxprom234
  %arrayidx235 = getelementptr inbounds i16* %15, i64 %arrayidx90.sum835
  %34 = load i16* %arrayidx235, align 2, !tbaa !5
  %conv236 = zext i16 %34 to i32
  %idxprom237 = sext i32 %cond53 to i64
  %arrayidx238 = getelementptr inbounds i8* %Strength, i64 %idxprom237
  %35 = load i8* %arrayidx238, align 1, !tbaa !1
  %tobool240 = icmp eq i8 %35, 0
  br i1 %tobool240, label %for.inc, label %if.then241

if.then241:                                       ; preds = %cond.end196
  %sub242 = sub nsw i32 %conv211, %conv209
  %ispos = icmp sgt i32 %sub242, -1
  %neg = sub i32 0, %sub242
  %36 = select i1 %ispos, i32 %sub242, i32 %neg
  %cmp243 = icmp slt i32 %36, %mul201
  br i1 %cmp243, label %if.then245, label %for.inc

if.then245:                                       ; preds = %if.then241
  %idxprom246 = zext i8 %35 to i64
  %arrayidx247 = getelementptr inbounds [52 x [5 x i8]]* @CLIP_TAB, i64 0, i64 %cond182, i64 %idxprom246
  %37 = load i8* %arrayidx247, align 1, !tbaa !1
  %conv248 = zext i8 %37 to i32
  %mul249 = shl i32 %conv248, %sub1.pn
  %sub250 = sub nsw i32 %conv211, %conv218
  %ispos836 = icmp sgt i32 %sub250, -1
  %neg837 = sub i32 0, %sub250
  %38 = select i1 %ispos836, i32 %sub250, i32 %neg837
  %sub252 = sub nsw i32 %38, %mul205
  %sub253 = sub nsw i32 %conv209, %conv215
  %ispos838 = icmp sgt i32 %sub253, -1
  %neg839 = sub i32 0, %sub253
  %39 = select i1 %ispos838, i32 %sub253, i32 %neg839
  %sub255 = sub nsw i32 %39, %mul205
  %and = and i32 %sub252, %sub255
  %cmp256 = icmp slt i32 %and, 0
  br i1 %cmp256, label %if.then258, label %for.inc

if.then258:                                       ; preds = %if.then245
  br i1 %tobool, label %if.end271, label %if.then260

if.then260:                                       ; preds = %if.then258
  %sub261 = sub nsw i32 %conv211, %conv227
  %ispos840 = icmp sgt i32 %sub261, -1
  %neg841 = sub i32 0, %sub261
  %40 = select i1 %ispos840, i32 %sub261, i32 %neg841
  %sub263 = sub nsw i32 %40, %mul205
  %sub263.lobit = lshr i32 %sub263, 31
  %sub266 = sub nsw i32 %conv209, %conv223
  %ispos842 = icmp sgt i32 %sub266, -1
  %neg843 = sub i32 0, %sub266
  %41 = select i1 %ispos842, i32 %sub266, i32 %neg843
  %sub268 = sub nsw i32 %41, %mul205
  %sub268.lobit = lshr i32 %sub268, 31
  br label %if.end271

if.end271:                                        ; preds = %if.then260, %if.then258
  %aq.1 = phi i32 [ %aq.0859, %if.then258 ], [ %sub263.lobit, %if.then260 ]
  %ap.1 = phi i32 [ %ap.0860, %if.then258 ], [ %sub268.lobit, %if.then260 ]
  %add272 = add nsw i32 %conv211, %conv209
  %cmp273 = icmp eq i8 %35, 4
  br i1 %cmp273, label %if.then275, label %if.else396

if.then275:                                       ; preds = %if.end271
  br i1 %tobool, label %if.then277, label %if.else292

if.then277:                                       ; preds = %if.then275
  %shl278 = shl nuw nsw i32 %conv218, 1
  %add279 = add i32 %conv211, 2
  %add280 = add i32 %add279, %conv215
  %add281 = add i32 %add280, %shl278
  %shr282 = lshr i32 %add281, 2
  %conv283 = trunc i32 %shr282 to i16
  store i16 %conv283, i16* %arrayidx90, align 2, !tbaa !5
  %shl285 = shl nuw nsw i32 %conv215, 1
  %add286 = add i32 %conv209, 2
  %add287 = add i32 %add286, %shl285
  %add288 = add i32 %add287, %conv218
  %shr289 = lshr i32 %add288, 2
  %conv290 = trunc i32 %shr289 to i16
  store i16 %conv290, i16* %arrayidx96, align 2, !tbaa !5
  br label %for.inc

if.else292:                                       ; preds = %if.then275
  %shr293 = ashr i32 %mul201, 2
  %add294 = add nsw i32 %shr293, 2
  %cmp295 = icmp slt i32 %36, %add294
  %conv296 = zext i1 %cmp295 to i32
  %and297 = and i32 %aq.1, %conv296
  %and298 = and i32 %ap.1, %conv296
  %tobool299 = icmp ne i32 %and297, 0
  br i1 %tobool299, label %cond.true300, label %cond.false307

cond.true300:                                     ; preds = %if.else292
  %add301 = add nsw i32 %conv218, %add272
  %shl302 = shl nuw nsw i32 %add301, 1
  %add303 = add i32 %conv215, 4
  %add304 = add i32 %add303, %shl302
  %add305 = add i32 %add304, %conv227
  %shr306 = ashr i32 %add305, 3
  br label %cond.end313

cond.false307:                                    ; preds = %if.else292
  %shl308 = shl nuw nsw i32 %conv218, 1
  %add309 = add i32 %conv211, 2
  %add310 = add i32 %add309, %conv215
  %add311 = add i32 %add310, %shl308
  %shr312 = lshr i32 %add311, 2
  br label %cond.end313

cond.end313:                                      ; preds = %cond.false307, %cond.true300
  %cond314 = phi i32 [ %shr306, %cond.true300 ], [ %shr312, %cond.false307 ]
  %conv315 = trunc i32 %cond314 to i16
  store i16 %conv315, i16* %arrayidx90, align 2, !tbaa !5
  %tobool317 = icmp ne i32 %and298, 0
  br i1 %tobool317, label %cond.true318, label %cond.false325

cond.true318:                                     ; preds = %cond.end313
  %add319 = add nsw i32 %conv215, %add272
  %shl320 = shl nuw nsw i32 %add319, 1
  %add321 = add i32 %conv218, 4
  %add322 = add i32 %add321, %shl320
  %add323 = add i32 %add322, %conv223
  %shr324 = ashr i32 %add323, 3
  br label %cond.end331

cond.false325:                                    ; preds = %cond.end313
  %shl326 = shl nuw nsw i32 %conv215, 1
  %add327 = add i32 %conv209, 2
  %add328 = add i32 %add327, %shl326
  %add329 = add i32 %add328, %conv218
  %shr330 = lshr i32 %add329, 2
  br label %cond.end331

cond.end331:                                      ; preds = %cond.false325, %cond.true318
  %cond332 = phi i32 [ %shr324, %cond.true318 ], [ %shr330, %cond.false325 ]
  %conv333 = trunc i32 %cond332 to i16
  store i16 %conv333, i16* %arrayidx96, align 2, !tbaa !5
  br i1 %tobool299, label %cond.true336, label %cond.end343

cond.true336:                                     ; preds = %cond.end331
  %add337 = add i32 %conv209, 2
  %add338 = add i32 %add337, %conv211
  %add339 = add i32 %add338, %conv218
  %add340 = add i32 %add339, %conv227
  %shr341 = lshr i32 %add340, 2
  br label %cond.end343

cond.end343:                                      ; preds = %cond.end331, %cond.true336
  %cond344 = phi i32 [ %shr341, %cond.true336 ], [ %conv218, %cond.end331 ]
  %conv345 = trunc i32 %cond344 to i16
  store i16 %conv345, i16* %arrayidx217, align 2, !tbaa !5
  br i1 %tobool317, label %cond.true349, label %cond.end356

cond.true349:                                     ; preds = %cond.end343
  %add350 = add i32 %conv209, 2
  %add351 = add i32 %add350, %conv211
  %add352 = add i32 %add351, %conv215
  %add353 = add i32 %add352, %conv223
  %shr354 = lshr i32 %add353, 2
  br label %cond.end356

cond.end356:                                      ; preds = %cond.end343, %cond.true349
  %cond357 = phi i32 [ %shr354, %cond.true349 ], [ %conv215, %cond.end343 ]
  %conv358 = trunc i32 %cond357 to i16
  store i16 %conv358, i16* %arrayidx214, align 2, !tbaa !5
  br i1 %tobool299, label %cond.true363, label %cond.end372

cond.true363:                                     ; preds = %cond.end356
  %add364 = add nsw i32 %conv236, %conv227
  %shl365 = shl nuw nsw i32 %add364, 1
  %add366 = add i32 %add272, 4
  %add367 = add i32 %add366, %conv218
  %add368 = add i32 %add367, %conv227
  %add369 = add i32 %add368, %shl365
  %shr370 = ashr i32 %add369, 3
  br label %cond.end372

cond.end372:                                      ; preds = %cond.end356, %cond.true363
  %cond373 = phi i32 [ %shr370, %cond.true363 ], [ %conv227, %cond.end356 ]
  %conv374 = trunc i32 %cond373 to i16
  store i16 %conv374, i16* %arrayidx226, align 2, !tbaa !5
  br i1 %tobool317, label %cond.true379, label %cond.end388

cond.true379:                                     ; preds = %cond.end372
  %add380 = add nsw i32 %conv232, %conv223
  %shl381 = shl nuw nsw i32 %add380, 1
  %add382 = add i32 %conv215, 4
  %add383 = add i32 %add382, %add272
  %add384 = add i32 %add383, %conv223
  %add385 = add i32 %add384, %shl381
  %shr386 = ashr i32 %add385, 3
  br label %cond.end388

cond.end388:                                      ; preds = %cond.end372, %cond.true379
  %cond389 = phi i32 [ %shr386, %cond.true379 ], [ %conv223, %cond.end372 ]
  %conv390 = trunc i32 %cond389 to i16
  store i16 %conv390, i16* %arrayidx222, align 2, !tbaa !5
  br label %for.inc

if.else396:                                       ; preds = %if.end271
  br i1 %tobool, label %cond.true398, label %cond.false400

cond.true398:                                     ; preds = %if.else396
  %add399 = add nsw i32 %mul249, 1
  br label %cond.end403

cond.false400:                                    ; preds = %if.else396
  %add401 = add i32 %aq.1, %mul249
  %add402 = add i32 %add401, %ap.1
  br label %cond.end403

cond.end403:                                      ; preds = %cond.false400, %cond.true398
  %cond404 = phi i32 [ %add399, %cond.true398 ], [ %add402, %cond.false400 ]
  %shl405 = shl nsw i32 %sub242, 2
  %sub406 = add i32 %conv215, 4
  %add407 = sub i32 %sub406, %conv218
  %add408 = add i32 %add407, %shl405
  %shr409 = ashr i32 %add408, 3
  %sub410 = sub nsw i32 0, %cond404
  %cmp411 = icmp slt i32 %shr409, %sub410
  br i1 %cmp411, label %cond.end432, label %cond.false415

cond.false415:                                    ; preds = %cond.end403
  %cmp421 = icmp sgt i32 %shr409, %cond404
  %cond404.shr409 = select i1 %cmp421, i32 %cond404, i32 %shr409
  br label %cond.end432

cond.end432:                                      ; preds = %cond.false415, %cond.end403
  %cond433 = phi i32 [ %sub410, %cond.end403 ], [ %cond404.shr409, %cond.false415 ]
  %add474 = add nsw i32 %cond433, %conv209
  %cmp475 = icmp slt i32 %add474, 0
  br i1 %tobool, label %if.else473, label %if.then435

if.then435:                                       ; preds = %cond.end432
  br i1 %cmp475, label %cond.end450, label %cond.false440

cond.false440:                                    ; preds = %if.then435
  %42 = load i32* %max_imgpel_value460, align 4, !tbaa !0
  %cmp442 = icmp sgt i32 %add474, %42
  %.add474 = select i1 %cmp442, i32 %42, i32 %add474
  %phitmp856 = trunc i32 %.add474 to i16
  br label %cond.end450

cond.end450:                                      ; preds = %cond.false440, %if.then435
  %cond451 = phi i16 [ 0, %if.then435 ], [ %phitmp856, %cond.false440 ]
  store i16 %cond451, i16* %arrayidx96, align 2, !tbaa !5
  %sub454 = sub nsw i32 %conv211, %cond433
  %cmp455 = icmp slt i32 %sub454, 0
  br i1 %cmp455, label %if.end511, label %cond.false458

cond.false458:                                    ; preds = %cond.end450
  %43 = load i32* %max_imgpel_value460, align 4, !tbaa !0
  %cmp461 = icmp sgt i32 %sub454, %43
  %.sub454 = select i1 %cmp461, i32 %43, i32 %sub454
  br label %if.end511

if.else473:                                       ; preds = %cond.end432
  br i1 %cmp475, label %cond.end488, label %cond.false478

cond.false478:                                    ; preds = %if.else473
  %44 = load i32* %max_imgpel_value_uv498, align 4, !tbaa !0
  %cmp480 = icmp sgt i32 %add474, %44
  %.add474847 = select i1 %cmp480, i32 %44, i32 %add474
  %phitmp857 = trunc i32 %.add474847 to i16
  br label %cond.end488

cond.end488:                                      ; preds = %cond.false478, %if.else473
  %cond489 = phi i16 [ 0, %if.else473 ], [ %phitmp857, %cond.false478 ]
  store i16 %cond489, i16* %arrayidx96, align 2, !tbaa !5
  %sub492 = sub nsw i32 %conv211, %cond433
  %cmp493 = icmp slt i32 %sub492, 0
  br i1 %cmp493, label %if.end511, label %cond.false496

cond.false496:                                    ; preds = %cond.end488
  %45 = load i32* %max_imgpel_value_uv498, align 4, !tbaa !0
  %cmp499 = icmp sgt i32 %sub492, %45
  %.sub492 = select i1 %cmp499, i32 %45, i32 %sub492
  br label %if.end511

if.end511:                                        ; preds = %cond.end488, %cond.false496, %cond.end450, %cond.false458
  %storemerge.in = phi i32 [ 0, %cond.end450 ], [ %.sub454, %cond.false458 ], [ 0, %cond.end488 ], [ %.sub492, %cond.false496 ]
  %storemerge = trunc i32 %storemerge.in to i16
  store i16 %storemerge, i16* %arrayidx90, align 2, !tbaa !5
  br i1 %tobool, label %for.inc, label %if.then513

if.then513:                                       ; preds = %if.end511
  %tobool514 = icmp eq i32 %ap.1, 0
  br i1 %tobool514, label %if.end554, label %if.then515

if.then515:                                       ; preds = %if.then513
  %add516 = add nsw i32 %add272, 1
  %shr517 = lshr i32 %add516, 1
  %shl519 = shl nuw nsw i32 %conv215, 1
  %add518 = sub i32 %shr517, %shl519
  %sub520 = add i32 %add518, %conv223
  %shr521 = ashr i32 %sub520, 1
  %sub522 = sub nsw i32 0, %mul249
  %cmp523 = icmp slt i32 %shr521, %sub522
  br i1 %cmp523, label %cond.end546, label %cond.false527

cond.false527:                                    ; preds = %if.then515
  %cmp534 = icmp sgt i32 %shr521, %mul249
  %mul249.shr521 = select i1 %cmp534, i32 %mul249, i32 %shr521
  br label %cond.end546

cond.end546:                                      ; preds = %cond.false527, %if.then515
  %cond547 = phi i32 [ %sub522, %if.then515 ], [ %mul249.shr521, %cond.false527 ]
  %46 = load i16* %arrayidx214, align 2, !tbaa !5
  %conv551 = zext i16 %46 to i32
  %add552 = add nsw i32 %conv551, %cond547
  %conv553 = trunc i32 %add552 to i16
  store i16 %conv553, i16* %arrayidx214, align 2, !tbaa !5
  br label %if.end554

if.end554:                                        ; preds = %if.then513, %cond.end546
  %tobool555 = icmp eq i32 %aq.1, 0
  br i1 %tobool555, label %for.inc, label %if.then556

if.then556:                                       ; preds = %if.end554
  %add557 = add nsw i32 %add272, 1
  %shr558 = lshr i32 %add557, 1
  %shl560 = shl nuw nsw i32 %conv218, 1
  %add559 = sub i32 %shr558, %shl560
  %sub561 = add i32 %add559, %conv227
  %shr562 = ashr i32 %sub561, 1
  %sub563 = sub nsw i32 0, %mul249
  %cmp564 = icmp slt i32 %shr562, %sub563
  br i1 %cmp564, label %cond.end587, label %cond.false568

cond.false568:                                    ; preds = %if.then556
  %cmp575 = icmp sgt i32 %shr562, %mul249
  %mul249.shr562 = select i1 %cmp575, i32 %mul249, i32 %shr562
  br label %cond.end587

cond.end587:                                      ; preds = %cond.false568, %if.then556
  %cond588 = phi i32 [ %sub563, %if.then556 ], [ %mul249.shr562, %cond.false568 ]
  %47 = load i16* %arrayidx217, align 2, !tbaa !5
  %conv591 = zext i16 %47 to i32
  %add592 = add nsw i32 %conv591, %cond588
  %conv593 = trunc i32 %add592 to i16
  store i16 %conv593, i16* %arrayidx217, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end554, %cond.end196, %lor.lhs.false, %if.then241, %cond.end388, %if.then277, %cond.end587, %if.end511, %if.then245
  %aq.2 = phi i32 [ %aq.1, %if.then277 ], [ %and297, %cond.end388 ], [ %aq.1, %if.end511 ], [ %aq.1, %cond.end587 ], [ 0, %if.end554 ], [ %aq.0859, %if.then245 ], [ %aq.0859, %if.then241 ], [ %aq.0859, %cond.end196 ], [ %aq.0859, %lor.lhs.false ]
  %ap.2 = phi i32 [ %ap.1, %if.then277 ], [ %and298, %cond.end388 ], [ %ap.1, %if.end511 ], [ %ap.1, %cond.end587 ], [ %ap.1, %if.end554 ], [ %ap.0860, %if.then245 ], [ %ap.0860, %if.then241 ], [ %ap.0860, %cond.end196 ], [ %ap.0860, %lor.lhs.false ]
  %inc = add nsw i32 %pel.0861, 1
  %exitcond = icmp eq i32 %inc, %cond864
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cond.end
  ret void
}

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: optsize
declare void @get_mb_block_pos(i32, i32*, i32*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
